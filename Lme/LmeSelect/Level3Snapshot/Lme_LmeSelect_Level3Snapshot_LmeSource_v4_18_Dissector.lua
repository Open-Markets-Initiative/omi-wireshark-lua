-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lme LmeSelect Level3Snapshot LmeSource 4.18 Protocol
local omi_lme_lmeselect_level3snapshot_lmesource_v4_18 = Proto("Omi.Lme.LmeSelect.Level3Snapshot.LmeSource.v4.18", "Lme LmeSelect Level3Snapshot LmeSource 4.18")

-- Protocol table
local lme_lmeselect_level3snapshot_lmesource_v4_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lme LmeSelect Level3Snapshot LmeSource 4.18 Fields
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.buy_sell = ProtoField.new("Buy Sell", "lme.lmeselect.level3snapshot.lmesource.v4.18.buysell", ftypes.STRING, nil, nil, nil, "Side of order. Null for a two sided quote.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.contract_code = ProtoField.new("Contract Code", "lme.lmeselect.level3snapshot.lmesource.v4.18.contractcode", ftypes.STRING, nil, nil, nil, "A string that combines the contract symbol, contract type and currency.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.end_time = ProtoField.new("End Time", "lme.lmeselect.level3snapshot.lmesource.v4.18.endtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Trading State End Time. Zero, meaning not applicable, for Technical Halt.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.end_time_utc = ProtoField.new("End Time", "lme.lmeselect.level3snapshot.lmesource.v4.18.endtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Trading State End Time. Zero, meaning not applicable, for Technical Halt.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.filler = ProtoField.new("Filler", "lme.lmeselect.level3snapshot.lmesource.v4.18.filler", ftypes.STRING, nil, nil, nil, "Filler aligning the sequence number to a four byte boundary")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.filler_string_1 = ProtoField.new("Filler String 1", "lme.lmeselect.level3snapshot.lmesource.v4.18.fillerstring1", ftypes.STRING, nil, nil, nil, "Filler.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.filler_string_2 = ProtoField.new("Filler String 2", "lme.lmeselect.level3snapshot.lmesource.v4.18.fillerstring2", ftypes.STRING, nil, nil, nil, "Filler.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.filler_string_3 = ProtoField.new("Filler String 3", "lme.lmeselect.level3snapshot.lmesource.v4.18.fillerstring3", ftypes.STRING, nil, nil, nil, "Filler.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.indicative_opening_mid_price = ProtoField.new("Indicative Opening Mid Price", "lme.lmeselect.level3snapshot.lmesource.v4.18.indicativeopeningmidprice", ftypes.DOUBLE, nil, nil, nil, "Indicative Opening Mid Price, in implicit six decimal place format. Defaults to null.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.indicative_opening_price = ProtoField.new("Indicative Opening Price", "lme.lmeselect.level3snapshot.lmesource.v4.18.indicativeopeningprice", ftypes.DOUBLE, nil, nil, nil, "Indicative Opening Price, in implicit six decimal place format. Defaults to null.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.indicative_opening_volume = ProtoField.new("Indicative Opening Volume", "lme.lmeselect.level3snapshot.lmesource.v4.18.indicativeopeningvolume", ftypes.UINT32, nil, nil, nil, "Indicative Opening Volume. Defaults to zero.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.last_seq_num = ProtoField.new("Last Seq Num", "lme.lmeselect.level3snapshot.lmesource.v4.18.lastseqnum", ftypes.UINT32, nil, nil, nil, "Sequence number in the real-time channel with which the refresh is synchronised.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.msg_count = ProtoField.new("Msg Count", "lme.lmeselect.level3snapshot.lmesource.v4.18.msgcount", ftypes.UINT8, nil, nil, nil, "Number of messages included in the packet")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.msg_size = ProtoField.new("Msg Size", "lme.lmeselect.level3snapshot.lmesource.v4.18.msgsize", ftypes.UINT16, nil, nil, nil, "Message length, including this field")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.msg_type = ProtoField.new("Msg Type", "lme.lmeselect.level3snapshot.lmesource.v4.18.msgtype", ftypes.UINT16, nil, nil, nil, "Type of message, selecting the payload that follows the message header")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.new_seq_no = ProtoField.new("New Seq No", "lme.lmeselect.level3snapshot.lmesource.v4.18.newseqno", ftypes.UINT32, nil, nil, nil, "New sequence number. Always set to 1.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.order_book_position = ProtoField.new("Order Book Position", "lme.lmeselect.level3snapshot.lmesource.v4.18.orderbookposition", ftypes.UINT32, nil, nil, nil, "Relative order position within this side of the order book based upon price and time priority.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.order_id = ProtoField.new("Order Id", "lme.lmeselect.level3snapshot.lmesource.v4.18.orderid", ftypes.UINT64, nil, nil, nil, "Order ID assigned by LMEselect.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.pkt_size = ProtoField.new("Pkt Size", "lme.lmeselect.level3snapshot.lmesource.v4.18.pktsize", ftypes.UINT16, nil, nil, nil, "Size of the packet, including this field")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.price = ProtoField.new("Price", "lme.lmeselect.level3snapshot.lmesource.v4.18.price", ftypes.DOUBLE, nil, nil, nil, "Price of order, in implicit six decimal place format.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.quote_request_type = ProtoField.new("Quote Request Type", "lme.lmeselect.level3snapshot.lmesource.v4.18.quoterequesttype", ftypes.UINT8, nil, nil, nil, "Type of Quote Request.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.send_time = ProtoField.new("Send Time", "lme.lmeselect.level3snapshot.lmesource.v4.18.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.send_time_utc = ProtoField.new("Send Time", "lme.lmeselect.level3snapshot.lmesource.v4.18.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.seq_num = ProtoField.new("Seq Num", "lme.lmeselect.level3snapshot.lmesource.v4.18.seqnum", ftypes.UINT32, nil, nil, nil, "Sequence number of the first message in the packet")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.start_time = ProtoField.new("Start Time", "lme.lmeselect.level3snapshot.lmesource.v4.18.starttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Trading State Start Time. Zero, meaning not applicable, for Technical Halt.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.start_time_utc = ProtoField.new("Start Time", "lme.lmeselect.level3snapshot.lmesource.v4.18.starttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Trading State Start Time. Zero, meaning not applicable, for Technical Halt.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_1 = ProtoField.new("T 1", "lme.lmeselect.level3snapshot.lmesource.v4.18.t1", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time of the order request from the LMEselect gateway. Null for reloaded GTC and GTD, stop loss and speedbump orders.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_1_utc = ProtoField.new("T 1", "lme.lmeselect.level3snapshot.lmesource.v4.18.t1.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time of the order request from the LMEselect gateway. Null for reloaded GTC and GTD, stop loss and speedbump orders.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_2 = ProtoField.new("T 2", "lme.lmeselect.level3snapshot.lmesource.v4.18.t2", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time when LMEselect captured the order request. Null for reloaded GTC and GTD, stop loss and speedbump orders.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_2_utc = ProtoField.new("T 2", "lme.lmeselect.level3snapshot.lmesource.v4.18.t2.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time when LMEselect captured the order request. Null for reloaded GTC and GTD, stop loss and speedbump orders.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_3 = ProtoField.new("T 3", "lme.lmeselect.level3snapshot.lmesource.v4.18.t3", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time when LMEselect published this order request to LMEsource. Null for reloaded GTC and GTD, stop loss and speedbump orders. The specification types this field Unit64, a typo for Uint64; the stated length of eight bytes agrees.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_3_utc = ProtoField.new("T 3", "lme.lmeselect.level3snapshot.lmesource.v4.18.t3.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time when LMEselect published this order request to LMEsource. Null for reloaded GTC and GTD, stop loss and speedbump orders. The specification types this field Unit64, a typo for Uint64; the stated length of eight bytes agrees.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.time_of_event = ProtoField.new("Time Of Event", "lme.lmeselect.level3snapshot.lmesource.v4.18.timeofevent", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of event.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.time_of_event_utc = ProtoField.new("Time Of Event", "lme.lmeselect.level3snapshot.lmesource.v4.18.timeofevent.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of event.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.timetable_control_type = ProtoField.new("Timetable Control Type", "lme.lmeselect.level3snapshot.lmesource.v4.18.timetablecontroltype", ftypes.STRING, nil, nil, nil, "Timetable Control Type.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.tradable_instrument_id = ProtoField.new("Tradable Instrument Id", "lme.lmeselect.level3snapshot.lmesource.v4.18.tradableinstrumentid", ftypes.UINT64, nil, nil, nil, "Tradable Instrument ID.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.trading_state = ProtoField.new("Trading State", "lme.lmeselect.level3snapshot.lmesource.v4.18.tradingstate", ftypes.UINT8, nil, nil, nil, "Trading State.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.trading_state_condition = ProtoField.new("Trading State Condition", "lme.lmeselect.level3snapshot.lmesource.v4.18.tradingstatecondition", ftypes.STRING, nil, nil, nil, "Current trading state condition.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.trading_venue = ProtoField.new("Trading Venue", "lme.lmeselect.level3snapshot.lmesource.v4.18.tradingvenue", ftypes.STRING, nil, nil, nil, "Trading venue.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.volume = ProtoField.new("Volume", "lme.lmeselect.level3snapshot.lmesource.v4.18.volume", ftypes.UINT32, nil, nil, nil, "Amended delta quantity.")

-- Lme LmeSelect Level3Snapshot LmeSource 4.18 Framing
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.message = ProtoField.new("Message", "lme.lmeselect.level3snapshot.lmesource.v4.18.message", ftypes.STRING, nil, nil, nil, "LMEsource application messages carried by this packet; a message is never fragmented across packets")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.message_header = ProtoField.new("Message Header", "lme.lmeselect.level3snapshot.lmesource.v4.18.messageheader", ftypes.STRING, nil, nil, nil, "LMEsource message header, giving the size of the message and its type")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.packet = ProtoField.new("Packet", "lme.lmeselect.level3snapshot.lmesource.v4.18.packet", ftypes.STRING, nil, nil, nil, "LMEsource multicast packet, a packet header followed by Msg Count complete messages")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.packet_header = ProtoField.new("Packet Header", "lme.lmeselect.level3snapshot.lmesource.v4.18.packetheader", ftypes.STRING, nil, nil, nil, "LMEsource packet header, giving the packet size, the number of messages it carries, the sequence number of the first of them and the time the packet was sent")

-- Lme LmeSelect Level3Snapshot 4.18 Application Messages
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.indicative_opening_price_message = ProtoField.new("Indicative Opening Price Message", "lme.lmeselect.level3snapshot.lmesource.v4.18.indicativeopeningpricemessage", ftypes.STRING, nil, nil, nil, "Carries the price at which a tradable instrument would open, computed by the uncrossing algorithm during Pre-Open. If there are no crossed prices no IOP is calculated or disseminated; where the book is not crossed but has both a bid and an offer, a mid price is calculated and published instead. At the transition from Pre-Open to Open an IOP message is published for every tradable instrument with both prices null and the volume zero, to indicate the prices are no longer valid.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.market_state_contract_message = ProtoField.new("Market State Contract Message", "lme.lmeselect.level3snapshot.lmesource.v4.18.marketstatecontractmessage", ftypes.STRING, nil, nil, nil, "Indicates the trading state of instruments at the contract level, for example Copper Futures or Aluminium Options. The ContractCode field is common across the Market State - Contract, Outright Definition and Strategy Definition messages and links the contract state to individual tradable instruments.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.market_state_instrument_message = ProtoField.new("Market State Instrument Message", "lme.lmeselect.level3snapshot.lmesource.v4.18.marketstateinstrumentmessage", ftypes.STRING, nil, nil, nil, "Indicates the trading state of an individual tradable instrument. Sent when the instrument state differs from that at contract level, for example when TOM goes into Post Trade before the contract.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.order_add_message = ProtoField.new("Order Add Message", "lme.lmeselect.level3snapshot.lmesource.v4.18.orderaddmessage", ftypes.STRING, nil, nil, nil, "Generated when an order is placed in the order book. An incoming, aggressing order that matches against one or more resting orders is not published as an Order Add unless it has residual volume after matching. For orders submitted during Pre-Open and reloaded GTC and GTD orders the TimeOfEvent reflects the uncrossing event time at market open.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.quote_request_message = ProtoField.new("Quote Request Message", "lme.lmeselect.level3snapshot.lmesource.v4.18.quoterequestmessage", ftypes.STRING, nil, nil, nil, "Generated when a request for quote is accepted by the Matching Engine.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.refresh_complete_message = ProtoField.new("Refresh Complete Message", "lme.lmeselect.level3snapshot.lmesource.v4.18.refreshcompletemessage", ftypes.STRING, nil, nil, nil, "Published to mark the end of a refresh cycle.")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "lme.lmeselect.level3snapshot.lmesource.v4.18.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "Sent on each multicast channel at start of day, and intraday in case of a disaster recovery. The client must ignore the sequence number of the Sequence Reset message itself and set the next expected sequence number to NewSeqNo, clear all cached data for all instruments and subscribe to the refresh channels to receive the current state of the market.")

-- Lme LmeSelect Level3Snapshot LmeSource 4.18 Generated Fields
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.message_index = ProtoField.new("Message Index", "lme.lmeselect.level3snapshot.lmesource.v4.18.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Lme LmeSelect Level3Snapshot LmeSource 4.18 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
lme_lmeselect_level3snapshot_lmesource_v4_18.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lme LmeSelect Level3Snapshot LmeSource 4.18 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Lme LmeSelect Level3Snapshot LmeSource 4.18 Show Options
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_application_messages then
    show.application_messages = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_application_messages
  end
  if show.headers ~= omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_headers then
    show.headers = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_headers
  end
  if show.structs ~= omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_structs then
    show.structs = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_structs
  end
  if show.indexes ~= omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_indexes then
    show.indexes = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.show_indexes
  end
  if lme_lmeselect_level3snapshot_lmesource_v4_18.absolute_time_base ~= omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.absolute_time_base then
    lme_lmeselect_level3snapshot_lmesource_v4_18.absolute_time_base = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.prefs.absolute_time_base
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
-- Lme LmeSelect Level3Snapshot LmeSource 4.18 Fields
-----------------------------------------------------------------------

-- Buy Sell
lme_lmeselect_level3snapshot_lmesource_v4_18.buy_sell = {}

-- Size: Buy Sell
lme_lmeselect_level3snapshot_lmesource_v4_18.buy_sell.size = 1

-- Display: Buy Sell
lme_lmeselect_level3snapshot_lmesource_v4_18.buy_sell.display = function(value)
  if value == "B" then
    return "Buy Sell: Buy (B)"
  end
  if value == "S" then
    return "Buy Sell: Sell (S)"
  end
  if value == " " then
    return "Buy Sell: Two Sided Quote (<whitespace>)"
  end

  return "Buy Sell: Unknown("..value..")"
end

-- Dissect: Buy Sell
lme_lmeselect_level3snapshot_lmesource_v4_18.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.buy_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Contract Code
lme_lmeselect_level3snapshot_lmesource_v4_18.contract_code = {}

-- Size: Contract Code
lme_lmeselect_level3snapshot_lmesource_v4_18.contract_code.size = 12

-- Display: Contract Code
lme_lmeselect_level3snapshot_lmesource_v4_18.contract_code.display = function(value)
  return "Contract Code: "..value
end

-- Dissect: Contract Code
lme_lmeselect_level3snapshot_lmesource_v4_18.contract_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.contract_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.contract_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.contract_code, range, value, display)

  return offset + length, value
end

-- End Time
lme_lmeselect_level3snapshot_lmesource_v4_18.end_time = {}

-- Size: End Time
lme_lmeselect_level3snapshot_lmesource_v4_18.end_time.size = 8

-- Dissect: End Time
lme_lmeselect_level3snapshot_lmesource_v4_18.end_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.end_time
  if lme_lmeselect_level3snapshot_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.end_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Filler
lme_lmeselect_level3snapshot_lmesource_v4_18.filler = {}

-- Size: Filler
lme_lmeselect_level3snapshot_lmesource_v4_18.filler.size = 1

-- Display: Filler
lme_lmeselect_level3snapshot_lmesource_v4_18.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
lme_lmeselect_level3snapshot_lmesource_v4_18.filler.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler String 1
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_1 = {}

-- Size: Filler String 1
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_1.size = 1

-- Display: Filler String 1
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_1.display = function(value)
  return "Filler String 1: "..value
end

-- Dissect: Filler String 1
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_1.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.filler_string_1, range, value, display)

  return offset + length, value
end

-- Filler String 2
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2 = {}

-- Size: Filler String 2
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2.size = 2

-- Display: Filler String 2
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2.display = function(value)
  return "Filler String 2: "..value
end

-- Dissect: Filler String 2
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.filler_string_2, range, value, display)

  return offset + length, value
end

-- Filler String 3
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_3 = {}

-- Size: Filler String 3
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_3.size = 3

-- Display: Filler String 3
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_3.display = function(value)
  return "Filler String 3: "..value
end

-- Dissect: Filler String 3
lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_3.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.filler_string_3, range, value, display)

  return offset + length, value
end

-- Indicative Opening Mid Price
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_mid_price = {}

-- Size: Indicative Opening Mid Price
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_mid_price.size = 8

-- Display: Indicative Opening Mid Price
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_mid_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Indicative Opening Mid Price: No Value"
  end

  return "Indicative Opening Mid Price: "..value
end

-- Translate: Indicative Opening Mid Price
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_mid_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Indicative Opening Mid Price
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_mid_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_mid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_mid_price.translate(raw)
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_mid_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.indicative_opening_mid_price, range, value, display)

  return offset + length, value
end

-- Indicative Opening Price
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price = {}

-- Size: Indicative Opening Price
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price.size = 8

-- Display: Indicative Opening Price
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Indicative Opening Price: No Value"
  end

  return "Indicative Opening Price: "..value
end

-- Translate: Indicative Opening Price
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Indicative Opening Price
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price.translate(raw)
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.indicative_opening_price, range, value, display)

  return offset + length, value
end

-- Indicative Opening Volume
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_volume = {}

-- Size: Indicative Opening Volume
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_volume.size = 4

-- Display: Indicative Opening Volume
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_volume.display = function(value)
  return "Indicative Opening Volume: "..value
end

-- Dissect: Indicative Opening Volume
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.indicative_opening_volume, range, value, display)

  return offset + length, value
end

-- Last Seq Num
lme_lmeselect_level3snapshot_lmesource_v4_18.last_seq_num = {}

-- Size: Last Seq Num
lme_lmeselect_level3snapshot_lmesource_v4_18.last_seq_num.size = 4

-- Display: Last Seq Num
lme_lmeselect_level3snapshot_lmesource_v4_18.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
lme_lmeselect_level3snapshot_lmesource_v4_18.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Msg Count
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_count = {}

-- Size: Msg Count
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_count.size = 1

-- Display: Msg Count
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_size = {}

-- Size: Msg Size
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_size.size = 2

-- Display: Msg Size
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_type = {}

-- Size: Msg Type
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_type.size = 2

-- Display: Msg Type
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_type.labels = {
  [100] = "Msg Type: Sequence Reset Message (100)",
  [311] = "Msg Type: Market State Contract Message (311)",
  [312] = "Msg Type: Market State Instrument Message (312)",
  [320] = "Msg Type: Indicative Opening Price Message (320)",
  [329] = "Msg Type: Quote Request Message (329)",
  [323] = "Msg Type: Order Add Message (323)",
  [203] = "Msg Type: Refresh Complete Message (203)",
}

lme_lmeselect_level3snapshot_lmesource_v4_18.msg_type.display = function(value)
  return lme_lmeselect_level3snapshot_lmesource_v4_18.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
lme_lmeselect_level3snapshot_lmesource_v4_18.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
lme_lmeselect_level3snapshot_lmesource_v4_18.new_seq_no = {}

-- Size: New Seq No
lme_lmeselect_level3snapshot_lmesource_v4_18.new_seq_no.size = 4

-- Display: New Seq No
lme_lmeselect_level3snapshot_lmesource_v4_18.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
lme_lmeselect_level3snapshot_lmesource_v4_18.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Order Book Position
lme_lmeselect_level3snapshot_lmesource_v4_18.order_book_position = {}

-- Size: Order Book Position
lme_lmeselect_level3snapshot_lmesource_v4_18.order_book_position.size = 4

-- Display: Order Book Position
lme_lmeselect_level3snapshot_lmesource_v4_18.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
lme_lmeselect_level3snapshot_lmesource_v4_18.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.order_book_position.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Order Id
lme_lmeselect_level3snapshot_lmesource_v4_18.order_id = {}

-- Size: Order Id
lme_lmeselect_level3snapshot_lmesource_v4_18.order_id.size = 8

-- Display: Order Id
lme_lmeselect_level3snapshot_lmesource_v4_18.order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id: No Value"
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
lme_lmeselect_level3snapshot_lmesource_v4_18.order_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.order_id, range, value, display)

  return offset + length, value
end

-- Pkt Size
lme_lmeselect_level3snapshot_lmesource_v4_18.pkt_size = {}

-- Size: Pkt Size
lme_lmeselect_level3snapshot_lmesource_v4_18.pkt_size.size = 2

-- Display: Pkt Size
lme_lmeselect_level3snapshot_lmesource_v4_18.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
lme_lmeselect_level3snapshot_lmesource_v4_18.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Price
lme_lmeselect_level3snapshot_lmesource_v4_18.price = {}

-- Size: Price
lme_lmeselect_level3snapshot_lmesource_v4_18.price.size = 8

-- Display: Price
lme_lmeselect_level3snapshot_lmesource_v4_18.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
lme_lmeselect_level3snapshot_lmesource_v4_18.price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Price
lme_lmeselect_level3snapshot_lmesource_v4_18.price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_level3snapshot_lmesource_v4_18.price.translate(raw)
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.price, range, value, display)

  return offset + length, value
end

-- Quote Request Type
lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_type = {}

-- Size: Quote Request Type
lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_type.size = 1

-- Display: Quote Request Type
lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_type.labels = {
  [1] = "Quote Request Type: Manual A Single Quote Request (1)",
  [2] = "Quote Request Type: Auto A Streaming Quote Request (2)",
}

lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_type.display = function(value)
  return lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_type.labels[value] or "Quote Request Type: Unknown("..value..")"
end

-- Dissect: Quote Request Type
lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.quote_request_type, range, value, display)

  return offset + length, value
end

-- Send Time
lme_lmeselect_level3snapshot_lmesource_v4_18.send_time = {}

-- Size: Send Time
lme_lmeselect_level3snapshot_lmesource_v4_18.send_time.size = 8

-- Dissect: Send Time
lme_lmeselect_level3snapshot_lmesource_v4_18.send_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.send_time
  if lme_lmeselect_level3snapshot_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Seq Num
lme_lmeselect_level3snapshot_lmesource_v4_18.seq_num = {}

-- Size: Seq Num
lme_lmeselect_level3snapshot_lmesource_v4_18.seq_num.size = 4

-- Display: Seq Num
lme_lmeselect_level3snapshot_lmesource_v4_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
lme_lmeselect_level3snapshot_lmesource_v4_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Start Time
lme_lmeselect_level3snapshot_lmesource_v4_18.start_time = {}

-- Size: Start Time
lme_lmeselect_level3snapshot_lmesource_v4_18.start_time.size = 8

-- Dissect: Start Time
lme_lmeselect_level3snapshot_lmesource_v4_18.start_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.start_time
  if lme_lmeselect_level3snapshot_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.start_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- T 1
lme_lmeselect_level3snapshot_lmesource_v4_18.t_1 = {}

-- Size: T 1
lme_lmeselect_level3snapshot_lmesource_v4_18.t_1.size = 8

-- Dissect: T 1
lme_lmeselect_level3snapshot_lmesource_v4_18.t_1.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.t_1.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_1
  if lme_lmeselect_level3snapshot_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_1_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("T 1: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- T 2
lme_lmeselect_level3snapshot_lmesource_v4_18.t_2 = {}

-- Size: T 2
lme_lmeselect_level3snapshot_lmesource_v4_18.t_2.size = 8

-- Dissect: T 2
lme_lmeselect_level3snapshot_lmesource_v4_18.t_2.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.t_2.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_2
  if lme_lmeselect_level3snapshot_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_2_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("T 2: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- T 3
lme_lmeselect_level3snapshot_lmesource_v4_18.t_3 = {}

-- Size: T 3
lme_lmeselect_level3snapshot_lmesource_v4_18.t_3.size = 8

-- Dissect: T 3
lme_lmeselect_level3snapshot_lmesource_v4_18.t_3.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.t_3.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_3
  if lme_lmeselect_level3snapshot_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.t_3_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("T 3: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Time Of Event
lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event = {}

-- Size: Time Of Event
lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.size = 8

-- Dissect: Time Of Event
lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.time_of_event
  if lme_lmeselect_level3snapshot_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.time_of_event_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Timetable Control Type
lme_lmeselect_level3snapshot_lmesource_v4_18.timetable_control_type = {}

-- Size: Timetable Control Type
lme_lmeselect_level3snapshot_lmesource_v4_18.timetable_control_type.size = 1

-- Display: Timetable Control Type
lme_lmeselect_level3snapshot_lmesource_v4_18.timetable_control_type.labels = {
  ["A"] = "Timetable Control Type: Automatic The Default Trading Schedule (A)",
  ["M"] = "Timetable Control Type: Manual A Temporary Trading Schedule (M)",
}

lme_lmeselect_level3snapshot_lmesource_v4_18.timetable_control_type.display = function(value)
  return lme_lmeselect_level3snapshot_lmesource_v4_18.timetable_control_type.labels[value] or "Timetable Control Type: Unknown("..value..")"
end

-- Dissect: Timetable Control Type
lme_lmeselect_level3snapshot_lmesource_v4_18.timetable_control_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.timetable_control_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.timetable_control_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.timetable_control_type, range, value, display)

  return offset + length, value
end

-- Tradable Instrument Id
lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id = {}

-- Size: Tradable Instrument Id
lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.size = 8

-- Display: Tradable Instrument Id
lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.display = function(value)
  return "Tradable Instrument Id: "..value
end

-- Dissect: Tradable Instrument Id
lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Trading State
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state = {}

-- Size: Trading State
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state.size = 1

-- Display: Trading State
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state.labels = {
  [1] = "Trading State: Pre Open (1)",
  [2] = "Trading State: Open (2)",
  [3] = "Trading State: Post Trade (3)",
  [4] = "Trading State: Close (4)",
  [6] = "Trading State: Technical Halt (6)",
}

lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state.display = function(value)
  return lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Trading State Condition
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state_condition = {}

-- Size: Trading State Condition
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state_condition.size = 1

-- Display: Trading State Condition
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state_condition.display = function(value)
  if value == "P" then
    return "Trading State Condition: Pause (P)"
  end
  if value == "H" then
    return "Trading State Condition: Halt (H)"
  end
  if value == " " then
    return "Trading State Condition: Active (<whitespace>)"
  end

  return "Trading State Condition: Unknown("..value..")"
end

-- Dissect: Trading State Condition
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state_condition.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.trading_state_condition, range, value, display)

  return offset + length, value
end

-- Trading Venue
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue = {}

-- Size: Trading Venue
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.size = 2

-- Display: Trading Venue
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.labels = {
  ["EL"] = "Trading Venue: Electronic (EL)",
  ["RK"] = "Trading Venue: Ring (RK)",
  ["IO"] = "Trading Venue: Inter Office (IO)",
}

lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.display = function(value)
  return lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.labels[value] or "Trading Venue: Unknown("..value..")"
end

-- Dissect: Trading Venue
lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.trading_venue, range, value, display)

  return offset + length, value
end

-- Volume
lme_lmeselect_level3snapshot_lmesource_v4_18.volume = {}

-- Size: Volume
lme_lmeselect_level3snapshot_lmesource_v4_18.volume.size = 4

-- Display: Volume
lme_lmeselect_level3snapshot_lmesource_v4_18.volume.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Volume: No Value"
  end

  return "Volume: "..value
end

-- Dissect: Volume
lme_lmeselect_level3snapshot_lmesource_v4_18.volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3snapshot_lmesource_v4_18.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3snapshot_lmesource_v4_18.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lme LmeSelect Level3Snapshot LmeSource 4.18
-----------------------------------------------------------------------

-- Refresh Complete Message
lme_lmeselect_level3snapshot_lmesource_v4_18.refresh_complete_message = {}

-- Size: Refresh Complete Message
lme_lmeselect_level3snapshot_lmesource_v4_18.refresh_complete_message.size =
  lme_lmeselect_level3snapshot_lmesource_v4_18.last_seq_num.size

-- Display: Refresh Complete Message
lme_lmeselect_level3snapshot_lmesource_v4_18.refresh_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complete Message
lme_lmeselect_level3snapshot_lmesource_v4_18.refresh_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Uint32
  index, last_seq_num = lme_lmeselect_level3snapshot_lmesource_v4_18.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complete Message
lme_lmeselect_level3snapshot_lmesource_v4_18.refresh_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.refresh_complete_message, buffer(offset, 0))
    local index = lme_lmeselect_level3snapshot_lmesource_v4_18.refresh_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3snapshot_lmesource_v4_18.refresh_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3snapshot_lmesource_v4_18.refresh_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
lme_lmeselect_level3snapshot_lmesource_v4_18.order_add_message = {}

-- Size: Order Add Message
lme_lmeselect_level3snapshot_lmesource_v4_18.order_add_message.size =
  lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.t_1.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.t_2.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.t_3.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.order_id.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.buy_sell.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.volume.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.price.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.order_book_position.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_1.size

-- Display: Order Add Message
lme_lmeselect_level3snapshot_lmesource_v4_18.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
lme_lmeselect_level3snapshot_lmesource_v4_18.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- T 1: Uint64
  index, t_1 = lme_lmeselect_level3snapshot_lmesource_v4_18.t_1.dissect(buffer, index, packet, parent)

  -- T 2: Uint64
  index, t_2 = lme_lmeselect_level3snapshot_lmesource_v4_18.t_2.dissect(buffer, index, packet, parent)

  -- T 3: Uint64
  index, t_3 = lme_lmeselect_level3snapshot_lmesource_v4_18.t_3.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = lme_lmeselect_level3snapshot_lmesource_v4_18.order_id.dissect(buffer, index, packet, parent)

  -- Buy Sell: String
  index, buy_sell = lme_lmeselect_level3snapshot_lmesource_v4_18.buy_sell.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_level3snapshot_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  -- Price: Int64
  index, price = lme_lmeselect_level3snapshot_lmesource_v4_18.price.dissect(buffer, index, packet, parent)

  -- Order Book Position: Uint32
  index, order_book_position = lme_lmeselect_level3snapshot_lmesource_v4_18.order_book_position.dissect(buffer, index, packet, parent)

  -- Filler String 1: String
  index, filler_string_1 = lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
lme_lmeselect_level3snapshot_lmesource_v4_18.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.order_add_message, buffer(offset, 0))
    local index = lme_lmeselect_level3snapshot_lmesource_v4_18.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3snapshot_lmesource_v4_18.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3snapshot_lmesource_v4_18.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request Message
lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_message = {}

-- Size: Quote Request Message
lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_message.size =
  lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_type.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.buy_sell.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.volume.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2.size

-- Display: Quote Request Message
lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Message
lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Request Type: Uint8
  index, quote_request_type = lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: String
  index, buy_sell = lme_lmeselect_level3snapshot_lmesource_v4_18.buy_sell.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_level3snapshot_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.quote_request_message, buffer(offset, 0))
    local index = lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Opening Price Message
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price_message = {}

-- Size: Indicative Opening Price Message
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price_message.size =
  lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_volume.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_mid_price.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2.size

-- Display: Indicative Opening Price Message
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Opening Price Message
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Indicative Opening Price: Int64
  index, indicative_opening_price = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price.dissect(buffer, index, packet, parent)

  -- Indicative Opening Volume: Uint32
  index, indicative_opening_volume = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_volume.dissect(buffer, index, packet, parent)

  -- Indicative Opening Mid Price: Int64
  index, indicative_opening_mid_price = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_mid_price.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Opening Price Message
lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.indicative_opening_price_message, buffer(offset, 0))
    local index = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State Instrument Message
lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_instrument_message = {}

-- Size: Market State Instrument Message
lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_instrument_message.size =
  lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.timetable_control_type.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.start_time.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.end_time.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state_condition.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_3.size

-- Display: Market State Instrument Message
lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_instrument_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market State Instrument Message
lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_instrument_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3snapshot_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Timetable Control Type: String
  index, timetable_control_type = lme_lmeselect_level3snapshot_lmesource_v4_18.timetable_control_type.dissect(buffer, index, packet, parent)

  -- Trading State: Uint8
  index, trading_state = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state.dissect(buffer, index, packet, parent)

  -- Start Time: Uint64
  index, start_time = lme_lmeselect_level3snapshot_lmesource_v4_18.start_time.dissect(buffer, index, packet, parent)

  -- End Time: Uint64
  index, end_time = lme_lmeselect_level3snapshot_lmesource_v4_18.end_time.dissect(buffer, index, packet, parent)

  -- Trading State Condition: String
  index, trading_state_condition = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state_condition.dissect(buffer, index, packet, parent)

  -- Filler String 3: String
  index, filler_string_3 = lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Instrument Message
lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_instrument_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.market_state_instrument_message, buffer(offset, 0))
    local index = lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_instrument_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_instrument_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_instrument_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State Contract Message
lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_contract_message = {}

-- Size: Market State Contract Message
lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_contract_message.size =
  lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.contract_code.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.start_time.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.end_time.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state_condition.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2.size

-- Display: Market State Contract Message
lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_contract_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market State Contract Message
lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_contract_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3snapshot_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_level3snapshot_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Trading State: Uint8
  index, trading_state = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state.dissect(buffer, index, packet, parent)

  -- Start Time: Uint64
  index, start_time = lme_lmeselect_level3snapshot_lmesource_v4_18.start_time.dissect(buffer, index, packet, parent)

  -- End Time: Uint64
  index, end_time = lme_lmeselect_level3snapshot_lmesource_v4_18.end_time.dissect(buffer, index, packet, parent)

  -- Trading State Condition: String
  index, trading_state_condition = lme_lmeselect_level3snapshot_lmesource_v4_18.trading_state_condition.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level3snapshot_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Contract Message
lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_contract_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.market_state_contract_message, buffer(offset, 0))
    local index = lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_contract_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_contract_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_contract_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
lme_lmeselect_level3snapshot_lmesource_v4_18.sequence_reset_message = {}

-- Size: Sequence Reset Message
lme_lmeselect_level3snapshot_lmesource_v4_18.sequence_reset_message.size =
  lme_lmeselect_level3snapshot_lmesource_v4_18.new_seq_no.size

-- Display: Sequence Reset Message
lme_lmeselect_level3snapshot_lmesource_v4_18.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
lme_lmeselect_level3snapshot_lmesource_v4_18.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = lme_lmeselect_level3snapshot_lmesource_v4_18.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
lme_lmeselect_level3snapshot_lmesource_v4_18.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.sequence_reset_message, buffer(offset, 0))
    local index = lme_lmeselect_level3snapshot_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3snapshot_lmesource_v4_18.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3snapshot_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lme_lmeselect_level3snapshot_lmesource_v4_18.payload = {}

-- Dispatch: Payload
lme_lmeselect_level3snapshot_lmesource_v4_18.payload.dispatch = {
  [100] = lme_lmeselect_level3snapshot_lmesource_v4_18.sequence_reset_message.dissect,
  [311] = lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_contract_message.dissect,
  [312] = lme_lmeselect_level3snapshot_lmesource_v4_18.market_state_instrument_message.dissect,
  [320] = lme_lmeselect_level3snapshot_lmesource_v4_18.indicative_opening_price_message.dissect,
  [329] = lme_lmeselect_level3snapshot_lmesource_v4_18.quote_request_message.dissect,
  [323] = lme_lmeselect_level3snapshot_lmesource_v4_18.order_add_message.dissect,
  [203] = lme_lmeselect_level3snapshot_lmesource_v4_18.refresh_complete_message.dissect,
}

-- Dissect: Payload
lme_lmeselect_level3snapshot_lmesource_v4_18.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = lme_lmeselect_level3snapshot_lmesource_v4_18.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lme_lmeselect_level3snapshot_lmesource_v4_18.message_header = {}

-- Size: Message Header
lme_lmeselect_level3snapshot_lmesource_v4_18.message_header.size =
  lme_lmeselect_level3snapshot_lmesource_v4_18.msg_size.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.msg_type.size

-- Display: Message Header
lme_lmeselect_level3snapshot_lmesource_v4_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lme_lmeselect_level3snapshot_lmesource_v4_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = lme_lmeselect_level3snapshot_lmesource_v4_18.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = lme_lmeselect_level3snapshot_lmesource_v4_18.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lme_lmeselect_level3snapshot_lmesource_v4_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.message_header, buffer(offset, 0))
    local index = lme_lmeselect_level3snapshot_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3snapshot_lmesource_v4_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3snapshot_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lme_lmeselect_level3snapshot_lmesource_v4_18.message = {}

-- Calculate size of: Message
lme_lmeselect_level3snapshot_lmesource_v4_18.message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_level3snapshot_lmesource_v4_18.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Message
lme_lmeselect_level3snapshot_lmesource_v4_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lme_lmeselect_level3snapshot_lmesource_v4_18.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lme_lmeselect_level3snapshot_lmesource_v4_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = lme_lmeselect_level3snapshot_lmesource_v4_18.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
lme_lmeselect_level3snapshot_lmesource_v4_18.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.message, buffer(offset, 0))
    local index = lme_lmeselect_level3snapshot_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3snapshot_lmesource_v4_18.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3snapshot_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
lme_lmeselect_level3snapshot_lmesource_v4_18.packet_header = {}

-- Size: Packet Header
lme_lmeselect_level3snapshot_lmesource_v4_18.packet_header.size =
  lme_lmeselect_level3snapshot_lmesource_v4_18.pkt_size.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.msg_count.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.filler.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.seq_num.size + 
  lme_lmeselect_level3snapshot_lmesource_v4_18.send_time.size

-- Display: Packet Header
lme_lmeselect_level3snapshot_lmesource_v4_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
lme_lmeselect_level3snapshot_lmesource_v4_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: Uint16
  index, pkt_size = lme_lmeselect_level3snapshot_lmesource_v4_18.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: Uint8
  index, msg_count = lme_lmeselect_level3snapshot_lmesource_v4_18.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = lme_lmeselect_level3snapshot_lmesource_v4_18.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: Uint32
  index, seq_num = lme_lmeselect_level3snapshot_lmesource_v4_18.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Uint64
  index, send_time = lme_lmeselect_level3snapshot_lmesource_v4_18.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
lme_lmeselect_level3snapshot_lmesource_v4_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18.fields.packet_header, buffer(offset, 0))
    local index = lme_lmeselect_level3snapshot_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3snapshot_lmesource_v4_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3snapshot_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lme_lmeselect_level3snapshot_lmesource_v4_18.packet = {}

-- Verify required size of Udp packet
lme_lmeselect_level3snapshot_lmesource_v4_18.packet.requiredsize = function(buffer)
  return buffer:len() >= lme_lmeselect_level3snapshot_lmesource_v4_18.packet_header.size
end

-- Dissect Packet
lme_lmeselect_level3snapshot_lmesource_v4_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = lme_lmeselect_level3snapshot_lmesource_v4_18.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do
    index, message = lme_lmeselect_level3snapshot_lmesource_v4_18.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lme_lmeselect_level3snapshot_lmesource_v4_18.init()
end

-- Dissector for Lme LmeSelect Level3Snapshot LmeSource 4.18
function omi_lme_lmeselect_level3snapshot_lmesource_v4_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lme_lmeselect_level3snapshot_lmesource_v4_18.name

  -- Dissect protocol
  local protocol = parent:add(omi_lme_lmeselect_level3snapshot_lmesource_v4_18, buffer(), omi_lme_lmeselect_level3snapshot_lmesource_v4_18.description, "("..buffer:len().." Bytes)")
  return lme_lmeselect_level3snapshot_lmesource_v4_18.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
lme_lmeselect_level3snapshot_lmesource_v4_18.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local msg_type = buffer(18, 2):le_uint()

  -- Sequence Reset Message
  if msg_type == 100 then
    return true
  end

  -- Market State Contract Message
  if msg_type == 311 then
    return true
  end

  -- Market State Instrument Message
  if msg_type == 312 then
    return true
  end

  -- Indicative Opening Price Message
  if msg_type == 320 then
    return true
  end

  -- Quote Request Message
  if msg_type == 329 then
    return true
  end

  -- Order Add Message
  if msg_type == 323 then
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

-- Dissector Heuristic for Lme LmeSelect Level3Snapshot LmeSource 4.18 (Udp)
local function omi_lme_lmeselect_level3snapshot_lmesource_v4_18_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lme_lmeselect_level3snapshot_lmesource_v4_18.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not lme_lmeselect_level3snapshot_lmesource_v4_18.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lme_lmeselect_level3snapshot_lmesource_v4_18
  omi_lme_lmeselect_level3snapshot_lmesource_v4_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lme LmeSelect Level3Snapshot LmeSource 4.18
omi_lme_lmeselect_level3snapshot_lmesource_v4_18:register_heuristic("udp", omi_lme_lmeselect_level3snapshot_lmesource_v4_18_udp_heuristic)

-- Register Lme LmeSelect Level3Snapshot LmeSource 4.18 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lme_lmeselect_level3snapshot_lmesource_v4_18)

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
