-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lme LmeSelect NonElectronicRefData LmeSource 4.18 Protocol
local omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18 = Proto("Omi.Lme.LmeSelect.NonElectronicRefData.LmeSource.v4.18", "Lme LmeSelect NonElectronicRefData LmeSource 4.18")

-- Protocol table
local lme_lmeselect_nonelectronicrefdata_lmesource_v4_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lme LmeSelect NonElectronicRefData LmeSource 4.18 Fields
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.business_days_to_expiry = ProtoField.new("Business Days To Expiry", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.businessdaystoexpiry", ftypes.UINT32, nil, nil, nil, "Numeric indicator of the number of Business Days to Expiry used as a measure of how far the instrument is down the curve. Null if Contract Type is Option.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.cfi_code = ProtoField.new("Cfi Code", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.cficode", ftypes.STRING, nil, nil, nil, "The instrument classification according to ISO 10962.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.contract_code = ProtoField.new("Contract Code", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.contractcode", ftypes.STRING, nil, nil, nil, "Contract to which the instrument belongs.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.contract_type = ProtoField.new("Contract Type", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.contracttype", ftypes.STRING, nil, nil, nil, "Constant contract type.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.definition_legs = ProtoField.new("Definition Legs", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.definitionlegs", ftypes.STRING, nil, nil, nil, "One strategy leg record of a tradable instrument definition, counted by RecordCount rather than by StrategyLegCount: the specification's length formula gives the repeat as the value of Record Count, StrategyLegCount being the number of legs the whole strategy has")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.expiry_date = ProtoField.new("Expiry Date", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.expirydate", ftypes.UINT32, nil, nil, nil, "Expiry date, as YYYYMMDD.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.filler = ProtoField.new("Filler", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.filler", ftypes.STRING, nil, nil, nil, "Filler aligning the sequence number to a four byte boundary")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.instrument_id = ProtoField.new("Instrument Id", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.instrumentid", ftypes.UINT64, nil, nil, nil, "Unique Instrument Identifier.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.instrument_type = ProtoField.new("Instrument Type", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.instrumenttype", ftypes.STRING, nil, nil, nil, "Instrument Type.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.isin = ProtoField.new("Isin", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.isin", ftypes.STRING, nil, nil, nil, "ISIN Code. Not applicable if the Instrument belongs to an algorithmic test contract.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.last_trading_date = ProtoField.new("Last Trading Date", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.lasttradingdate", ftypes.UINT32, nil, nil, nil, "Last Trading Date, as YYYYMMDD.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.leg_buy_sell = ProtoField.new("Leg Buy Sell", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.legbuysell", ftypes.STRING, nil, nil, nil, "Leg direction.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.leg_delta_hedge_price = ProtoField.new("Leg Delta Hedge Price", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.legdeltahedgeprice", ftypes.DOUBLE, nil, nil, nil, "Underlying price for a futures leg in a delta hedge custom strategy, null otherwise. Implicit six decimal place format.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.leg_number = ProtoField.new("Leg Number", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.legnumber", ftypes.UINT32, nil, nil, nil, "An identifier for each leg in the strategy, starting from one and incrementing by one for each leg.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.leg_ratio = ProtoField.new("Leg Ratio", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.legratio", ftypes.DOUBLE, nil, nil, nil, "Leg ratio of the strategy leg, in implicit three decimal place format. Where the strategy type code is nine it represents the delta value for each delta hedge leg.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.leg_tradable_instrument_id = ProtoField.new("Leg Tradable Instrument Id", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.legtradableinstrumentid", ftypes.UINT64, nil, nil, nil, "TradableInstrumentID of the strategy leg.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.market_code = ProtoField.new("Market Code", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.marketcode", ftypes.STRING, nil, nil, nil, "Market Code.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.market_segment_code = ProtoField.new("Market Segment Code", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.marketsegmentcode", ftypes.STRING, nil, nil, nil, "A string identifier for the individual market segment to which the tradable instrument belongs.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.msg_count = ProtoField.new("Msg Count", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.msgcount", ftypes.UINT8, nil, nil, nil, "Number of messages included in the packet")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.msg_size = ProtoField.new("Msg Size", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.msgsize", ftypes.UINT16, nil, nil, nil, "Message length, including this field")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.msg_type = ProtoField.new("Msg Type", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.msgtype", ftypes.UINT16, nil, nil, nil, "Type of message, selecting the payload that follows the message header")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.name = ProtoField.new("Name", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.name", ftypes.STRING, nil, nil, nil, "Instrument name.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.new_seq_no = ProtoField.new("New Seq No", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.newseqno", ftypes.UINT32, nil, nil, nil, "New sequence number. Always set to 1.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.option_strike_relative_position = ProtoField.new("Option Strike Relative Position", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.optionstrikerelativeposition", ftypes.UINT32, nil, nil, nil, "ATM Strike is zero, ITM relative positions are positive and OTM positions are negative. Null if Contract Type is Future or Instrument Type is Strategy.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.option_type = ProtoField.new("Option Type", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.optiontype", ftypes.STRING, nil, nil, nil, "Call or Put. Space if Contract Type is Future.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.order_high = ProtoField.new("Order High", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.orderhigh", ftypes.DOUBLE, nil, nil, nil, "Highest 3M bid price for the current Ring session, in implicit six decimal place format.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.order_low = ProtoField.new("Order Low", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.orderlow", ftypes.DOUBLE, nil, nil, nil, "Lowest 3M ask price for the current Ring session, in implicit six decimal place format.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.pkt_size = ProtoField.new("Pkt Size", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.pktsize", ftypes.UINT16, nil, nil, nil, "Size of the packet, including this field")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.price_code = ProtoField.new("Price Code", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.pricecode", ftypes.STRING, nil, nil, nil, "The price code that specifies the type of TaS or TaR instrument. Not applicable for non Trade at Reference tradable instruments.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.product_code = ProtoField.new("Product Code", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.productcode", ftypes.STRING, nil, nil, nil, "Product code. This identifies the metal.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.prompt_date_label = ProtoField.new("Prompt Date Label", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.promptdatelabel", ftypes.STRING, nil, nil, nil, "Prompt Date Label. Not applicable for a strategy.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.prompt_type = ProtoField.new("Prompt Type", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.prompttype", ftypes.STRING, nil, nil, nil, "Identifies whether the prompt is a single or a rolling prompt. Not applicable for a strategy.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.record_count = ProtoField.new("Record Count", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.recordcount", ftypes.UINT16, nil, nil, nil, "The number of records in this message.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.remaining_records = ProtoField.new("Remaining Records", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.remainingrecords", ftypes.UINT16, nil, nil, nil, "Number of remaining records to be published. When the value of RemainingRecords equals RecordCount this is the last message.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.ring_session = ProtoField.new("Ring Session", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.ringsession", ftypes.STRING, nil, nil, nil, "This identifies the ring trading session.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.send_time = ProtoField.new("Send Time", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.send_time_utc = ProtoField.new("Send Time", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.seq_num = ProtoField.new("Seq Num", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.seqnum", ftypes.UINT32, nil, nil, nil, "Sequence number of the first message in the packet")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.settlement_date = ProtoField.new("Settlement Date", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.settlementdate", ftypes.UINT32, nil, nil, nil, "Settlement Date, as YYYYMMDD. Null for a rolling prompt or strategy.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.strategy_leg_count = ProtoField.new("Strategy Leg Count", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.strategylegcount", ftypes.UINT32, nil, nil, nil, "Number of strategy legs.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.strategy_type_code = ProtoField.new("Strategy Type Code", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.strategytypecode", ftypes.UINT32, nil, nil, nil, "Strategy Type. Null for an outright.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.strike_price = ProtoField.new("Strike Price", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.strikeprice", ftypes.DOUBLE, nil, nil, nil, "Option Exercise Price, in implicit six decimal place format. Null for futures.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.tick_size_id = ProtoField.new("Tick Size Id", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.ticksizeid", ftypes.UINT32, nil, nil, nil, "Tick Size ID.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.time_of_event = ProtoField.new("Time Of Event", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.timeofevent", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time at which the transaction occurred.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.time_of_event_utc = ProtoField.new("Time Of Event", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.timeofevent.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time at which the transaction occurred.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.tradable_instrument_id = ProtoField.new("Tradable Instrument Id", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.tradableinstrumentid", ftypes.UINT64, nil, nil, nil, "Tradable instrument ID.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.trade_at_reference = ProtoField.new("Trade At Reference", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.tradeatreference", ftypes.UINT8, nil, nil, nil, "A flag to indicate that the instrument is a TaS or TaR type.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.trading_currency = ProtoField.new("Trading Currency", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.tradingcurrency", ftypes.STRING, nil, nil, nil, "The currency code according to ISO 4217.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.trading_venue = ProtoField.new("Trading Venue", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.tradingvenue", ftypes.STRING, nil, nil, nil, "Trading venue.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.underlying_instrument_id = ProtoField.new("Underlying Instrument Id", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.underlyinginstrumentid", ftypes.UINT64, nil, nil, nil, "A reference to the underlying Instrument. Null otherwise.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.underlying_tradable_instrument_id = ProtoField.new("Underlying Tradable Instrument Id", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.underlyingtradableinstrumentid", ftypes.UINT64, nil, nil, nil, "Underlying Tradable Instrument ID. Null when no underlying Tradable Instrument exists or the Tradable Instrument is a strategy.")

-- Lme LmeSelect NonElectronicRefData LmeSource 4.18 Framing
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.message = ProtoField.new("Message", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.message", ftypes.STRING, nil, nil, nil, "LMEsource application messages carried by this packet; a message is never fragmented across packets")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.message_header = ProtoField.new("Message Header", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.messageheader", ftypes.STRING, nil, nil, nil, "LMEsource message header, giving the size of the message and its type")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.packet = ProtoField.new("Packet", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.packet", ftypes.STRING, nil, nil, nil, "LMEsource multicast packet, a packet header followed by Msg Count complete messages")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.packet_header = ProtoField.new("Packet Header", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.packetheader", ftypes.STRING, nil, nil, nil, "LMEsource packet header, giving the packet size, the number of messages it carries, the sequence number of the first of them and the time the packet was sent")

-- Lme LmeSelect NonElectronicRefData 4.18 Application Messages
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.instrument_definition_message = ProtoField.new("Instrument Definition Message", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.instrumentdefinitionmessage", ftypes.STRING, nil, nil, nil, "Describes a futures outright prompt date or option call or put strike.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.order_statistics_intraday_message = ProtoField.new("Order Statistics Intraday Message", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.orderstatisticsintradaymessage", ftypes.STRING, nil, nil, nil, "Generated at the end of each Ring trading session for instruments that have traded. Two messages are published, one for each high price and low price. If no price has been received the field is set to null.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "Sent on each multicast channel at start of day, and intraday in case of a disaster recovery. The client must ignore the sequence number of the Sequence Reset message itself and set the next expected sequence number to NewSeqNo, clear all cached data for all instruments and subscribe to the refresh channels to receive the current state of the market.")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.tradable_instrument_definition_message = ProtoField.new("Tradable Instrument Definition Message", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.tradableinstrumentdefinitionmessage", ftypes.STRING, nil, nil, nil, "Describes an individual outright, strategy or Trade at Reference tradable instrument on the Ring or Inter Office venue. An option tradable instrument is published only once on the day of creation and is published at the start of day on the next business day.")

-- Lme LmeSelect NonElectronicRefData LmeSource 4.18 Generated Fields
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.definition_legs_index = ProtoField.new("Definition Legs Index", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.definitionlegsindex", ftypes.UINT16)
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.message_index = ProtoField.new("Message Index", "lme.lmeselect.nonelectronicrefdata.lmesource.v4.18.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Lme LmeSelect NonElectronicRefData LmeSource 4.18 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lme LmeSelect NonElectronicRefData LmeSource 4.18 Element Dissection Options
show.repeating_groups = true
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Lme LmeSelect NonElectronicRefData LmeSource 4.18 Show Options
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_application_messages then
    show.application_messages = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_application_messages
  end
  if show.headers ~= omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_headers then
    show.headers = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_headers
  end
  if show.repeating_groups ~= omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_repeating_groups then
    show.repeating_groups = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_repeating_groups
  end
  if show.structs ~= omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_structs then
    show.structs = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_structs
  end
  if show.indexes ~= omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_indexes then
    show.indexes = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.show_indexes
  end
  if lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.absolute_time_base ~= omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.absolute_time_base then
    lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.absolute_time_base = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prefs.absolute_time_base
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
-- Lme LmeSelect NonElectronicRefData LmeSource 4.18 Fields
-----------------------------------------------------------------------

-- Business Days To Expiry
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.business_days_to_expiry = {}

-- Size: Business Days To Expiry
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.business_days_to_expiry.size = 4

-- Display: Business Days To Expiry
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.business_days_to_expiry.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Business Days To Expiry: No Value"
  end

  return "Business Days To Expiry: "..value
end

-- Dissect: Business Days To Expiry
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.business_days_to_expiry.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.business_days_to_expiry.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.business_days_to_expiry.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.business_days_to_expiry, range, value, display)

  return offset + length, value
end

-- Cfi Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.cfi_code = {}

-- Size: Cfi Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.cfi_code.size = 6

-- Display: Cfi Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.cfi_code.display = function(value)
  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.cfi_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Contract Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_code = {}

-- Size: Contract Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_code.size = 12

-- Display: Contract Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_code.display = function(value)
  return "Contract Code: "..value
end

-- Dissect: Contract Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.contract_code, range, value, display)

  return offset + length, value
end

-- Contract Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_type = {}

-- Size: Contract Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_type.size = 1

-- Display: Contract Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_type.labels = {
  ["F"] = "Contract Type: Future (F)",
  ["O"] = "Contract Type: Option (O)",
}

lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_type.display = function(value)
  return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_type.labels[value] or "Contract Type: Unknown("..value..")"
end

-- Dissect: Contract Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.contract_type, range, value, display)

  return offset + length, value
end

-- Expiry Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.expiry_date = {}

-- Size: Expiry Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.expiry_date.size = 4

-- Display: Expiry Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.expiry_date.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Expiry Date: No Value"
  end

  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Expiry Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Expiry Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.expiry_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Filler
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.filler = {}

-- Size: Filler
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.filler.size = 1

-- Display: Filler
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.filler.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.filler, range, value, display)

  return offset + length, value
end

-- Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_id = {}

-- Size: Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_id.size = 8

-- Display: Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Instrument Id: No Value"
  end

  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_type = {}

-- Size: Instrument Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_type.size = 1

-- Display: Instrument Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_type.labels = {
  ["O"] = "Instrument Type: Outright (O)",
  ["S"] = "Instrument Type: Strategy (S)",
}

lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_type.display = function(value)
  return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_type.labels[value] or "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Isin
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.isin = {}

-- Size: Isin
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.isin.size = 12

-- Display: Isin
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.isin.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.isin, range, value, display)

  return offset + length, value
end

-- Last Trading Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.last_trading_date = {}

-- Size: Last Trading Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.last_trading_date.size = 4

-- Display: Last Trading Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.last_trading_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Last Trading Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Last Trading Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.last_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Leg Buy Sell
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_buy_sell = {}

-- Size: Leg Buy Sell
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_buy_sell.size = 1

-- Display: Leg Buy Sell
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_buy_sell.labels = {
  ["B"] = "Leg Buy Sell: Buy (B)",
  ["S"] = "Leg Buy Sell: Sell (S)",
}

lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_buy_sell.display = function(value)
  return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_buy_sell.labels[value] or "Leg Buy Sell: Unknown("..value..")"
end

-- Dissect: Leg Buy Sell
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_buy_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.leg_buy_sell, range, value, display)

  return offset + length, value
end

-- Leg Delta Hedge Price
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_delta_hedge_price = {}

-- Size: Leg Delta Hedge Price
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_delta_hedge_price.size = 8

-- Display: Leg Delta Hedge Price
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_delta_hedge_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Leg Delta Hedge Price: No Value"
  end

  return "Leg Delta Hedge Price: "..value
end

-- Translate: Leg Delta Hedge Price
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_delta_hedge_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Leg Delta Hedge Price
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_delta_hedge_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_delta_hedge_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_delta_hedge_price.translate(raw)
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_delta_hedge_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.leg_delta_hedge_price, range, value, display)

  return offset + length, value
end

-- Leg Number
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_number = {}

-- Size: Leg Number
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_number.size = 4

-- Display: Leg Number
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_number.display = function(value)
  return "Leg Number: "..value
end

-- Dissect: Leg Number
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_number.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.leg_number, range, value, display)

  return offset + length, value
end

-- Leg Ratio
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_ratio = {}

-- Size: Leg Ratio
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_ratio.size = 8

-- Display: Leg Ratio
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Translate: Leg Ratio
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_ratio.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Leg Ratio
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_ratio.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_ratio.translate(raw)
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_tradable_instrument_id = {}

-- Size: Leg Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_tradable_instrument_id.size = 8

-- Display: Leg Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_tradable_instrument_id.display = function(value)
  return "Leg Tradable Instrument Id: "..value
end

-- Dissect: Leg Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.leg_tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Market Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_code = {}

-- Size: Market Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_code.size = 4

-- Display: Market Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_code.labels = {
  ["LME"] = "Market Code: The Base Metals Market (LME)",
}

lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_code.display = function(value)
  return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_code.labels[value] or "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.market_code, range, value, display)

  return offset + length, value
end

-- Market Segment Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_segment_code = {}

-- Size: Market Segment Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_segment_code.size = 12

-- Display: Market Segment Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_segment_code.display = function(value)
  return "Market Segment Code: "..value
end

-- Dissect: Market Segment Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_segment_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_segment_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_segment_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.market_segment_code, range, value, display)

  return offset + length, value
end

-- Msg Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_count = {}

-- Size: Msg Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_count.size = 1

-- Display: Msg Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_size = {}

-- Size: Msg Size
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_size.size = 2

-- Display: Msg Size
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_type = {}

-- Size: Msg Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_type.size = 2

-- Display: Msg Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_type.labels = {
  [100] = "Msg Type: Sequence Reset Message (100)",
  [303] = "Msg Type: Instrument Definition Message (303)",
  [304] = "Msg Type: Tradable Instrument Definition Message (304)",
  [350] = "Msg Type: Order Statistics Intraday Message (350)",
}

lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_type.display = function(value)
  return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Name
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.name = {}

-- Size: Name
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.name.size = 40

-- Display: Name
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.name.display = function(value)
  return "Name: "..value
end

-- Dissect: Name
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.name.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.name, range, value, display)

  return offset + length, value
end

-- New Seq No
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.new_seq_no = {}

-- Size: New Seq No
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.new_seq_no.size = 4

-- Display: New Seq No
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Option Strike Relative Position
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_strike_relative_position = {}

-- Size: Option Strike Relative Position
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_strike_relative_position.size = 4

-- Display: Option Strike Relative Position
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_strike_relative_position.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Option Strike Relative Position: No Value"
  end

  return "Option Strike Relative Position: "..value
end

-- Dissect: Option Strike Relative Position
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_strike_relative_position.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_strike_relative_position.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_strike_relative_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.option_strike_relative_position, range, value, display)

  return offset + length, value
end

-- Option Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type = {}

-- Size: Option Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type.size = 1

-- Display: Option Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type.labels = {
  ["C"] = "Option Type: Call (C)",
  ["P"] = "Option Type: Put (P)",
}

lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type.display = function(value)
  return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order High
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_high = {}

-- Size: Order High
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_high.size = 8

-- Display: Order High
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_high.display = function(value)
  return "Order High: "..value
end

-- Translate: Order High
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_high.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Order High
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_high.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_high.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_high.translate(raw)
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.order_high, range, value, display)

  return offset + length, value
end

-- Order Low
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_low = {}

-- Size: Order Low
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_low.size = 8

-- Display: Order Low
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_low.display = function(value)
  return "Order Low: "..value
end

-- Translate: Order Low
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_low.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Order Low
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_low.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_low.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_low.translate(raw)
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.order_low, range, value, display)

  return offset + length, value
end

-- Pkt Size
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.pkt_size = {}

-- Size: Pkt Size
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.pkt_size.size = 2

-- Display: Pkt Size
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Price Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.price_code = {}

-- Size: Price Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.price_code.size = 2

-- Display: Price Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.price_code.display = function(value)
  return "Price Code: "..value
end

-- Dissect: Price Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.price_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.price_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.price_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.price_code, range, value, display)

  return offset + length, value
end

-- Product Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.product_code = {}

-- Size: Product Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.product_code.size = 2

-- Display: Product Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.product_code.display = function(value)
  return "Product Code: "..value
end

-- Dissect: Product Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.product_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.product_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.product_code, range, value, display)

  return offset + length, value
end

-- Prompt Date Label
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_date_label = {}

-- Size: Prompt Date Label
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_date_label.size = 6

-- Display: Prompt Date Label
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_date_label.display = function(value)
  return "Prompt Date Label: "..value
end

-- Dissect: Prompt Date Label
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_date_label.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_date_label.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_date_label.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.prompt_date_label, range, value, display)

  return offset + length, value
end

-- Prompt Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_type = {}

-- Size: Prompt Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_type.size = 1

-- Display: Prompt Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_type.labels = {
  ["S"] = "Prompt Type: Single (S)",
  ["R"] = "Prompt Type: Rolling (R)",
}

lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_type.display = function(value)
  return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_type.labels[value] or "Prompt Type: Unknown("..value..")"
end

-- Dissect: Prompt Type
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.prompt_type, range, value, display)

  return offset + length, value
end

-- Record Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.record_count = {}

-- Size: Record Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.record_count.size = 2

-- Display: Record Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.record_count.display = function(value)
  return "Record Count: "..value
end

-- Dissect: Record Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.record_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.record_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.record_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.record_count, range, value, display)

  return offset + length, value
end

-- Remaining Records
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.remaining_records = {}

-- Size: Remaining Records
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.remaining_records.size = 2

-- Display: Remaining Records
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.remaining_records.display = function(value)
  return "Remaining Records: "..value
end

-- Dissect: Remaining Records
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.remaining_records.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.remaining_records.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.remaining_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.remaining_records, range, value, display)

  return offset + length, value
end

-- Ring Session
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.ring_session = {}

-- Size: Ring Session
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.ring_session.size = 2

-- Display: Ring Session
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.ring_session.labels = {
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

lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.ring_session.display = function(value)
  return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.ring_session.labels[value] or "Ring Session: Unknown("..value..")"
end

-- Dissect: Ring Session
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.ring_session.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.ring_session.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.ring_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.ring_session, range, value, display)

  return offset + length, value
end

-- Send Time
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.send_time = {}

-- Size: Send Time
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.send_time.size = 8

-- Dissect: Send Time
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.send_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.send_time
  if lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Seq Num
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.seq_num = {}

-- Size: Seq Num
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.seq_num.size = 4

-- Display: Seq Num
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Settlement Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.settlement_date = {}

-- Size: Settlement Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.settlement_date.size = 4

-- Display: Settlement Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.settlement_date.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Settlement Date: No Value"
  end

  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Settlement Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Settlement Date
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.settlement_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Strategy Leg Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_leg_count = {}

-- Size: Strategy Leg Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_leg_count.size = 4

-- Display: Strategy Leg Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_leg_count.display = function(value)
  return "Strategy Leg Count: "..value
end

-- Dissect: Strategy Leg Count
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_leg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.strategy_leg_count, range, value, display)

  return offset + length, value
end

-- Strategy Type Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_type_code = {}

-- Size: Strategy Type Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_type_code.size = 4

-- Display: Strategy Type Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_type_code.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Strategy Type Code: No Value"
  end

  return "Strategy Type Code: "..value
end

-- Dissect: Strategy Type Code
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_type_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_type_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.strategy_type_code, range, value, display)

  return offset + length, value
end

-- Strike Price
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price = {}

-- Size: Strike Price
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price.size = 8

-- Display: Strike Price
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Strike Price
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price.translate(raw)
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Tick Size Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tick_size_id = {}

-- Size: Tick Size Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tick_size_id.size = 4

-- Display: Tick Size Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tick_size_id.display = function(value)
  return "Tick Size Id: "..value
end

-- Dissect: Tick Size Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tick_size_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tick_size_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tick_size_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.tick_size_id, range, value, display)

  return offset + length, value
end

-- Time Of Event
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.time_of_event = {}

-- Size: Time Of Event
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.time_of_event.size = 8

-- Dissect: Time Of Event
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.time_of_event.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.time_of_event.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.time_of_event
  if lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.time_of_event_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_id = {}

-- Size: Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_id.size = 8

-- Display: Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_id.display = function(value)
  return "Tradable Instrument Id: "..value
end

-- Dissect: Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Trade At Reference
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trade_at_reference = {}

-- Size: Trade At Reference
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trade_at_reference.size = 1

-- Display: Trade At Reference
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trade_at_reference.labels = {
  [0] = "Trade At Reference: False (0)",
  [1] = "Trade At Reference: True (1)",
}

lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trade_at_reference.display = function(value)
  return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trade_at_reference.labels[value] or "Trade At Reference: Unknown("..value..")"
end

-- Dissect: Trade At Reference
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trade_at_reference.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trade_at_reference.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trade_at_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.trade_at_reference, range, value, display)

  return offset + length, value
end

-- Trading Currency
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_currency = {}

-- Size: Trading Currency
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_currency.size = 3

-- Display: Trading Currency
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Trading Venue
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue = {}

-- Size: Trading Venue
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue.size = 2

-- Display: Trading Venue
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue.labels = {
  ["EL"] = "Trading Venue: Electronic (EL)",
  ["RK"] = "Trading Venue: Ring (RK)",
  ["IO"] = "Trading Venue: Inter Office (IO)",
}

lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue.display = function(value)
  return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue.labels[value] or "Trading Venue: Unknown("..value..")"
end

-- Dissect: Trading Venue
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.trading_venue, range, value, display)

  return offset + length, value
end

-- Underlying Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_instrument_id = {}

-- Size: Underlying Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_instrument_id.size = 8

-- Display: Underlying Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_instrument_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Underlying Instrument Id: No Value"
  end

  return "Underlying Instrument Id: "..value
end

-- Dissect: Underlying Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.underlying_instrument_id, range, value, display)

  return offset + length, value
end

-- Underlying Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_tradable_instrument_id = {}

-- Size: Underlying Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_tradable_instrument_id.size = 8

-- Display: Underlying Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_tradable_instrument_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Underlying Tradable Instrument Id: No Value"
  end

  return "Underlying Tradable Instrument Id: "..value
end

-- Dissect: Underlying Tradable Instrument Id
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.underlying_tradable_instrument_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lme LmeSelect NonElectronicRefData LmeSource 4.18
-----------------------------------------------------------------------

-- Order Statistics Intraday Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_statistics_intraday_message = {}

-- Size: Order Statistics Intraday Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_statistics_intraday_message.size =
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.ring_session.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_high.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_low.size

-- Display: Order Statistics Intraday Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_statistics_intraday_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Statistics Intraday Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_statistics_intraday_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Ring Session: String
  index, ring_session = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.ring_session.dissect(buffer, index, packet, parent)

  -- Order High: Int64
  index, order_high = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_high.dissect(buffer, index, packet, parent)

  -- Order Low: Int64
  index, order_low = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_low.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Statistics Intraday Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_statistics_intraday_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.order_statistics_intraday_message, buffer(offset, 0))
    local index = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_statistics_intraday_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_statistics_intraday_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_statistics_intraday_message.fields(buffer, offset, packet, parent)
  end
end

-- Definition Legs
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.definition_legs = {}

-- Size: Definition Legs
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.definition_legs.size =
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_number.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_buy_sell.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_ratio.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_delta_hedge_price.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_tradable_instrument_id.size

-- Display: Definition Legs
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.definition_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Definition Legs
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.definition_legs.fields = function(buffer, offset, packet, parent, definition_legs_index)
  local index = offset

  -- Implicit Definition Legs Index
  if definition_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.definition_legs_index, definition_legs_index)
    iteration:set_generated()
  end

  -- Leg Number: Uint32
  index, leg_number = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_number.dissect(buffer, index, packet, parent)

  -- Leg Buy Sell: String
  index, leg_buy_sell = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_buy_sell.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Uint64
  index, leg_ratio = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Delta Hedge Price: Int64
  index, leg_delta_hedge_price = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_delta_hedge_price.dissect(buffer, index, packet, parent)

  -- Leg Tradable Instrument Id: Uint64
  index, leg_tradable_instrument_id = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.leg_tradable_instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Definition Legs
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.definition_legs.dissect = function(buffer, offset, packet, parent, definition_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.definition_legs, buffer(offset, 0))
    local index = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.definition_legs.fields(buffer, offset, packet, parent, definition_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.definition_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.definition_legs.fields(buffer, offset, packet, parent, definition_legs_index)
  end
end

-- Tradable Instrument Definition Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_definition_message = {}

-- Calculate size of: Tradable Instrument Definition Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_id.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_id.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.business_days_to_expiry.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.last_trading_date.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tick_size_id.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_code.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_type.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_type.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_currency.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_code.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_segment_code.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.product_code.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_tradable_instrument_id.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.settlement_date.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.expiry_date.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.cfi_code.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.isin.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trade_at_reference.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.price_code.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_date_label.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_type.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_strike_relative_position.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_type_code.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.remaining_records.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.record_count.size

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_leg_count.size

  -- Calculate field size from count
  local definition_legs_count = buffer(offset + index - 6, 2):le_uint()
  index = index + definition_legs_count * 29

  return index
end

-- Display: Tradable Instrument Definition Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tradable Instrument Definition Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: Uint64
  index, instrument_id = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_id.dissect(buffer, index, packet, parent)

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Business Days To Expiry: Uint32
  index, business_days_to_expiry = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.business_days_to_expiry.dissect(buffer, index, packet, parent)

  -- Last Trading Date: Uint32
  index, last_trading_date = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.last_trading_date.dissect(buffer, index, packet, parent)

  -- Tick Size Id: Uint32
  index, tick_size_id = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tick_size_id.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Contract Type: String
  index, contract_type = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_type.dissect(buffer, index, packet, parent)

  -- Instrument Type: String
  index, instrument_type = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_type.dissect(buffer, index, packet, parent)

  -- Trading Currency: String
  index, trading_currency = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trading_currency.dissect(buffer, index, packet, parent)

  -- Market Code: String
  index, market_code = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_code.dissect(buffer, index, packet, parent)

  -- Market Segment Code: String
  index, market_segment_code = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.market_segment_code.dissect(buffer, index, packet, parent)

  -- Product Code: String
  index, product_code = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Underlying Tradable Instrument Id: Uint64
  index, underlying_tradable_instrument_id = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Settlement Date: Uint32
  index, settlement_date = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.settlement_date.dissect(buffer, index, packet, parent)

  -- Expiry Date: Uint32
  index, expiry_date = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.expiry_date.dissect(buffer, index, packet, parent)

  -- Option Type: String
  index, option_type = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Int64
  index, strike_price = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price.dissect(buffer, index, packet, parent)

  -- Cfi Code: String
  index, cfi_code = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.cfi_code.dissect(buffer, index, packet, parent)

  -- Isin: String
  index, isin = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.isin.dissect(buffer, index, packet, parent)

  -- Trade At Reference: Uint8
  index, trade_at_reference = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.trade_at_reference.dissect(buffer, index, packet, parent)

  -- Price Code: String
  index, price_code = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.price_code.dissect(buffer, index, packet, parent)

  -- Prompt Date Label: String
  index, prompt_date_label = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_date_label.dissect(buffer, index, packet, parent)

  -- Prompt Type: String
  index, prompt_type = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.prompt_type.dissect(buffer, index, packet, parent)

  -- Option Strike Relative Position: Uint32
  index, option_strike_relative_position = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_strike_relative_position.dissect(buffer, index, packet, parent)

  -- Strategy Type Code: Uint32
  index, strategy_type_code = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_type_code.dissect(buffer, index, packet, parent)

  -- Remaining Records: Uint16
  index, remaining_records = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.remaining_records.dissect(buffer, index, packet, parent)

  -- Record Count: Uint16
  index, record_count = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.record_count.dissect(buffer, index, packet, parent)

  -- Strategy Leg Count: Uint32
  index, strategy_leg_count = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strategy_leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Definition Legs
  for definition_legs_index = 1, record_count do
    index, definition_legs = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.definition_legs.dissect(buffer, index, packet, parent, definition_legs_index)
  end

  return index
end

-- Dissect: Tradable Instrument Definition Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.tradable_instrument_definition_message, buffer(offset, 0))
    local index = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Definition Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_definition_message = {}

-- Size: Instrument Definition Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_definition_message.size =
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_id.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.name.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_code.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_instrument_id.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.expiry_date.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.cfi_code.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.isin.size

-- Display: Instrument Definition Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Definition Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id: Uint64
  index, instrument_id = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_id.dissect(buffer, index, packet, parent)

  -- Name: String
  index, name = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.name.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Underlying Instrument Id: Uint64
  index, underlying_instrument_id = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.underlying_instrument_id.dissect(buffer, index, packet, parent)

  -- Expiry Date: Uint32
  index, expiry_date = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: Int64
  index, strike_price = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: String
  index, option_type = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.option_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: String
  index, cfi_code = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.cfi_code.dissect(buffer, index, packet, parent)

  -- Isin: String
  index, isin = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.isin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Definition Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.instrument_definition_message, buffer(offset, 0))
    local index = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.sequence_reset_message = {}

-- Size: Sequence Reset Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.sequence_reset_message.size =
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.new_seq_no.size

-- Display: Sequence Reset Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.sequence_reset_message, buffer(offset, 0))
    local index = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.payload = {}

-- Dispatch: Payload
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.payload.dispatch = {
  [100] = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.sequence_reset_message.dissect,
  [303] = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.instrument_definition_message.dissect,
  [304] = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.tradable_instrument_definition_message.dissect,
  [350] = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.order_statistics_intraday_message.dissect,
}

-- Dissect: Payload
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message_header = {}

-- Size: Message Header
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message_header.size =
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_size.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_type.size

-- Display: Message Header
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.message_header, buffer(offset, 0))
    local index = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message = {}

-- Calculate size of: Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.message, buffer(offset, 0))
    local index = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet_header = {}

-- Size: Packet Header
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet_header.size =
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.pkt_size.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_count.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.filler.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.seq_num.size + 
  lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.send_time.size

-- Display: Packet Header
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: Uint16
  index, pkt_size = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: Uint8
  index, msg_count = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: Uint32
  index, seq_num = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Uint64
  index, send_time = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.fields.packet_header, buffer(offset, 0))
    local index = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet = {}

-- Verify required size of Udp packet
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet.requiredsize = function(buffer)
  return buffer:len() >= lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet_header.size
end

-- Dissect Packet
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do
    index, message = lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.init()
end

-- Dissector for Lme LmeSelect NonElectronicRefData LmeSource 4.18
function omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.name

  -- Dissect protocol
  local protocol = parent:add(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18, buffer(), omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.description, "("..buffer:len().." Bytes)")
  return lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local msg_type = buffer(18, 2):le_uint()

  -- Sequence Reset Message
  if msg_type == 100 then
    return true
  end

  -- Instrument Definition Message
  if msg_type == 303 then
    return true
  end

  -- Tradable Instrument Definition Message
  if msg_type == 304 then
    return true
  end

  -- Order Statistics Intraday Message
  if msg_type == 350 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lme LmeSelect NonElectronicRefData LmeSource 4.18 (Udp)
local function omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18
  omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lme LmeSelect NonElectronicRefData LmeSource 4.18
omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18:register_heuristic("udp", omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18_udp_heuristic)

-- Register Lme LmeSelect NonElectronicRefData LmeSource 4.18 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lme_lmeselect_nonelectronicrefdata_lmesource_v4_18)

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
