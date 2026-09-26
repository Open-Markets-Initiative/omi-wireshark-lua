-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NfxFutures MarketData GeniumAmd 2.30.7 Protocol
local omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7 = Proto("Omi.Nasdaq.NfxFutures.MarketData.GeniumAmd.v2.30.7", "Nasdaq NfxFutures MarketData GeniumAmd 2.30.7")

-- Protocol table
local nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NfxFutures MarketData GeniumAmd 2.30.7 Fields
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.block_lot_size = ProtoField.new("Block Lot Size", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.blocklotsize", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.combination_order_book_id = ProtoField.new("Combination Order Book Id", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.combinationorderbookid", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.combo_group_id = ProtoField.new("Combo Group Id", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.combogroupid", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.event_code = ProtoField.new("Event Code", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.eventcode", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.expirationdate", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.financial_product = ProtoField.new("Financial Product", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.financialproduct", ftypes.UINT8)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.isin = ProtoField.new("Isin", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.isin", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_delta = ProtoField.new("Leg Delta", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.legdelta", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_order_book_id = ProtoField.new("Leg Order Book Id", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.legorderbookid", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_price_future = ProtoField.new("Leg Price Future", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.legpricefuture", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_quantity_future = ProtoField.new("Leg Quantity Future", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.legquantityfuture", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.legratio", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_side = ProtoField.new("Leg Side", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.legside", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.long_name = ProtoField.new("Long Name", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.longname", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.market_id = ProtoField.new("Market Id", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.marketid", ftypes.UINT16)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.match_id = ProtoField.new("Match Id", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.matchid", ftypes.UINT64)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_count = ProtoField.new("Message Count", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.messagecount", ftypes.UINT16)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_length = ProtoField.new("Message Length", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.messagelength", ftypes.UINT16)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_type = ProtoField.new("Message Type", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.messagetype", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.minimum_quantity_and_multiple = ProtoField.new("Minimum Quantity And Multiple", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.minimumquantityandmultiple", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.nominal_value = ProtoField.new("Nominal Value", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.nominalvalue", ftypes.UINT64)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.numberofdecimalsinnominalvalue", ftypes.UINT16)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.numberofdecimalsinprice", ftypes.UINT16)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.number_of_decimals_in_strike_price = ProtoField.new("Number Of Decimals In Strike Price", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.numberofdecimalsinstrikeprice", ftypes.UINT16)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.numberoflegs", ftypes.UINT8)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.oddlotsize", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.open_interest = ProtoField.new("Open Interest", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.openinterest", ftypes.UINT64)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.order_book_id = ProtoField.new("Order Book Id", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.orderbookid", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.price = ProtoField.new("Price", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.price", ftypes.INT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.price_from = ProtoField.new("Price From", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.pricefrom", ftypes.INT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.price_to = ProtoField.new("Price To", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.priceto", ftypes.INT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.price_type = ProtoField.new("Price Type", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.pricetype", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.put_or_call = ProtoField.new("Put Or Call", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.putorcall", ftypes.UINT8)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.reserved = ProtoField.new("Reserved", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.reserved", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.roundlotsize", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.second = ProtoField.new("Second", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.second", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.second_reserved = ProtoField.new("Second Reserved", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.secondreserved", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.sequencenumber", ftypes.UINT64)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.session = ProtoField.new("Session", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.session", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.state_name = ProtoField.new("State Name", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.statename", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.strategy_subtype = ProtoField.new("Strategy Subtype", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.strategysubtype", ftypes.UINT8)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.strikeprice", ftypes.INT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.symbol = ProtoField.new("Symbol", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.symbol", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.tick_size = ProtoField.new("Tick Size", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.ticksize", ftypes.INT64)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.time_of_trade_agreement = ProtoField.new("Time Of Trade Agreement", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.timeoftradeagreement", ftypes.UINT64)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.time_of_trade_dissemination = ProtoField.new("Time Of Trade Dissemination", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.timeoftradedissemination", ftypes.UINT64)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.time_of_trade_execution = ProtoField.new("Time Of Trade Execution", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.timeoftradeexecution", ftypes.UINT64)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.timestampnanoseconds", ftypes.UINT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.tradeprice", ftypes.INT32)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.trade_type = ProtoField.new("Trade Type", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.tradetype", ftypes.UINT16)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.traded_quantity = ProtoField.new("Traded Quantity", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.tradedquantity", ftypes.UINT64)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.trading_currency = ProtoField.new("Trading Currency", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.tradingcurrency", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.underlying_order_book_id = ProtoField.new("Underlying Order Book Id", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.underlyingorderbookid", ftypes.UINT32)

-- Nasdaq NfxFutures MarketData GeniumAmd 2.30.7 Framing
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message = ProtoField.new("Message", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.message", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_header = ProtoField.new("Message Header", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.messageheader", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.packet = ProtoField.new("Packet", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.packet", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.packetheader", ftypes.STRING)

-- Nasdaq NfxFutures MarketData 2.30.7 Application Messages
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.brokentrademessage", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.combination_order_book_leg = ProtoField.new("Combination Order Book Leg", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.combinationorderbookleg", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.open_interest_message = ProtoField.new("Open Interest Message", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.openinterestmessage", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.order_book_directory = ProtoField.new("Order Book Directory", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.orderbookdirectory", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.order_book_state_message = ProtoField.new("Order Book State Message", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.orderbookstatemessage", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.price_message = ProtoField.new("Price Message", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.pricemessage", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.reported_trade = ProtoField.new("Reported Trade", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.reportedtrade", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.seconds_message = ProtoField.new("Seconds Message", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.secondsmessage", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.systemeventmessage", ftypes.STRING)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.tick_size_table_entry = ProtoField.new("Tick Size Table Entry", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.ticksizetableentry", ftypes.STRING)

-- Nasdaq NfxFutures MarketData 2.30.7 Session Messages
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.endofsession", ftypes.BYTES)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.heartbeat", ftypes.BYTES)

-- Nasdaq NfxFutures MarketData GeniumAmd 2.30.7 Generated Fields
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_index = ProtoField.new("Message Index", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.messageindex", ftypes.UINT16)
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nfxfutures.marketdata.geniumamd.v2.30.7.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NfxFutures MarketData GeniumAmd 2.30.7 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NfxFutures MarketData GeniumAmd 2.30.7 Show Options
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

-- Handle changed preferences
function omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_headers then
    show.headers = omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_structs then
    show.structs = omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_indexes then
    show.indexes = omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_sequences then
    show.sequences = omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.prefs.show_sequences
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
-- Nasdaq NfxFutures MarketData GeniumAmd 2.30.7 Fields
-----------------------------------------------------------------------

-- Block Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.block_lot_size = {}

-- Size: Block Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.block_lot_size.size = 4

-- Display: Block Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Combination Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_id = {}

-- Size: Combination Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_id.size = 4

-- Display: Combination Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_id.display = function(value)
  return "Combination Order Book Id: "..value
end

-- Dissect: Combination Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.combination_order_book_id, range, value, display)

  return offset + length, value
end

-- Combo Group Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combo_group_id = {}

-- Size: Combo Group Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combo_group_id.size = 4

-- Display: Combo Group Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combo_group_id.display = function(value)
  return "Combo Group Id: "..value
end

-- Dissect: Combo Group Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combo_group_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combo_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combo_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.combo_group_id, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.event_code = {}

-- Size: Event Code
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.event_code.size = 1

-- Display: Event Code
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.event_code.display = function(value)
  return "Event Code: "..value
end

-- Dissect: Event Code
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiration Date
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.expiration_date = {}

-- Size: Expiration Date
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.expiration_date.size = 4

-- Display: Expiration Date
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.expiration_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Expiration Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Expiration Date
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Financial Product
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.financial_product = {}

-- Size: Financial Product
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.financial_product.size = 1

-- Display: Financial Product
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.financial_product.display = function(value)
  if value == 0 then
    return "Financial Product: Not Applicable (0)"
  end
  if value == 1 then
    return "Financial Product: Option (1)"
  end
  if value == 2 then
    return "Financial Product: Forward (2)"
  end
  if value == 3 then
    return "Financial Product: Future (3)"
  end
  if value == 4 then
    return "Financial Product: Fra (4)"
  end
  if value == 5 then
    return "Financial Product: Cash (5)"
  end
  if value == 6 then
    return "Financial Product: Payment (6)"
  end
  if value == 7 then
    return "Financial Product: Exchange Rate (7)"
  end
  if value == 8 then
    return "Financial Product: Interest Rate Swap (8)"
  end
  if value == 9 then
    return "Financial Product: Repo (9)"
  end
  if value == 10 then
    return "Financial Product: Synthetic Box Leg Reference (10)"
  end
  if value == 11 then
    return "Financial Product: Standard Combination (11)"
  end
  if value == 12 then
    return "Financial Product: Guarantee (12)"
  end
  if value == 13 then
    return "Financial Product: Otc General (13)"
  end
  if value == 14 then
    return "Financial Product: Equity Warrant (14)"
  end
  if value == 15 then
    return "Financial Product: Security Lending (15)"
  end

  return "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Isin
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.isin = {}

-- Size: Isin
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.isin.size = 12

-- Display: Isin
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.isin.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.isin, range, value, display)

  return offset + length, value
end

-- Leg Delta
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_delta = {}

-- Size: Leg Delta
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_delta.size = 4

-- Display: Leg Delta
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_delta.display = function(value)
  return "Leg Delta: "..value
end

-- Dissect: Leg Delta
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_delta.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_delta.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_delta, range, value, display)

  return offset + length, value
end

-- Leg Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_order_book_id = {}

-- Size: Leg Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_order_book_id.size = 4

-- Display: Leg Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_order_book_id.display = function(value)
  return "Leg Order Book Id: "..value
end

-- Dissect: Leg Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_order_book_id, range, value, display)

  return offset + length, value
end

-- Leg Price Future
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_price_future = {}

-- Size: Leg Price Future
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_price_future.size = 4

-- Display: Leg Price Future
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_price_future.display = function(value)
  return "Leg Price Future: "..value
end

-- Dissect: Leg Price Future
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_price_future.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_price_future.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_price_future.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_price_future, range, value, display)

  return offset + length, value
end

-- Leg Quantity Future
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_quantity_future = {}

-- Size: Leg Quantity Future
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_quantity_future.size = 4

-- Display: Leg Quantity Future
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_quantity_future.display = function(value)
  return "Leg Quantity Future: "..value
end

-- Dissect: Leg Quantity Future
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_quantity_future.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_quantity_future.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_quantity_future.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_quantity_future, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_side = {}

-- Size: Leg Side
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_side.size = 1

-- Display: Leg Side
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg Side: Opposite (C)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Long Name
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.long_name = {}

-- Size: Long Name
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.long_name.size = 32

-- Display: Long Name
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.long_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.long_name, range, value, display)

  return offset + length, value
end

-- Market Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.market_id = {}

-- Size: Market Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.market_id.size = 2

-- Display: Market Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.market_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.market_id, range, value, display)

  return offset + length, value
end

-- Match Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.match_id = {}

-- Size: Match Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.match_id.size = 8

-- Display: Match Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.match_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.match_id, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_count = {}

-- Size: Message Count
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_count.size = 2

-- Display: Message Count
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_length = {}

-- Size: Message Length
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_length.size = 2

-- Display: Message Length
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_type = {}

-- Size: Message Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_type.size = 1

-- Display: Message Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Quantity And Multiple
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.minimum_quantity_and_multiple = {}

-- Size: Minimum Quantity And Multiple
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.minimum_quantity_and_multiple.size = 4

-- Display: Minimum Quantity And Multiple
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.minimum_quantity_and_multiple.display = function(value)
  return "Minimum Quantity And Multiple: "..value
end

-- Dissect: Minimum Quantity And Multiple
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.minimum_quantity_and_multiple.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.minimum_quantity_and_multiple.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.minimum_quantity_and_multiple.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.minimum_quantity_and_multiple, range, value, display)

  return offset + length, value
end

-- Nominal Value
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.nominal_value = {}

-- Size: Nominal Value
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.nominal_value.size = 8

-- Display: Nominal Value
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Nominal Value
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_nominal_value = {}

-- Size: Number Of Decimals In Nominal Value
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_nominal_value.size = 2

-- Display: Number Of Decimals In Nominal Value
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_nominal_value.display = function(value)
  return "Number Of Decimals In Nominal Value: "..value
end

-- Dissect: Number Of Decimals In Nominal Value
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_price = {}

-- Size: Number Of Decimals In Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_price.size = 2

-- Display: Number Of Decimals In Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_price.display = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Strike Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_strike_price = {}

-- Size: Number Of Decimals In Strike Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_strike_price.size = 2

-- Display: Number Of Decimals In Strike Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_strike_price.display = function(value)
  return "Number Of Decimals In Strike Price: "..value
end

-- Dissect: Number Of Decimals In Strike Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.number_of_decimals_in_strike_price, range, value, display)

  return offset + length, value
end

-- Number Of Legs
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Odd Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.odd_lot_size = {}

-- Size: Odd Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.odd_lot_size.size = 4

-- Display: Odd Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.odd_lot_size.display = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.odd_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.odd_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.odd_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Open Interest
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest = {}

-- Size: Open Interest
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest.size = 8

-- Display: Open Interest
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id = {}

-- Size: Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.size = 4

-- Display: Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price = {}

-- Size: Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price.size = 4

-- Display: Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.price, range, value, display)

  return offset + length, value
end

-- Price From
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_from = {}

-- Size: Price From
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_from.size = 4

-- Display: Price From
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_from.display = function(value)
  return "Price From: "..value
end

-- Dissect: Price From
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_from.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.price_from, range, value, display)

  return offset + length, value
end

-- Price To
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_to = {}

-- Size: Price To
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_to.size = 4

-- Display: Price To
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_to.display = function(value)
  return "Price To: "..value
end

-- Dissect: Price To
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_to.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.price_to, range, value, display)

  return offset + length, value
end

-- Price Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_type = {}

-- Size: Price Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_type.size = 1

-- Display: Price Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_type.display = function(value)
  return "Price Type: "..value
end

-- Dissect: Price Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.price_type, range, value, display)

  return offset + length, value
end

-- Put Or Call
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.put_or_call = {}

-- Size: Put Or Call
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.put_or_call.size = 1

-- Display: Put Or Call
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.put_or_call.display = function(value)
  if value == 1 then
    return "Put Or Call: Call (1)"
  end
  if value == 2 then
    return "Put Or Call: Put (2)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Reserved
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reserved = {}

-- Size: Reserved
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reserved.size = 7

-- Display: Reserved
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reserved.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.reserved, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Second
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second = {}

-- Size: Second
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second.size = 4

-- Display: Second
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.second, range, value, display)

  return offset + length, value
end

-- Second Reserved
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second_reserved = {}

-- Size: Second Reserved
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second_reserved.size = 7

-- Display: Second Reserved
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second_reserved.display = function(value)
  return "Second Reserved: "..value
end

-- Dissect: Second Reserved
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second_reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second_reserved.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second_reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.second_reserved, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.sequence_number = {}

-- Size: Sequence Number
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.session = {}

-- Size: Session
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.session.size = 10

-- Display: Session
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.session.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.session, range, value, display)

  return offset + length, value
end

-- State Name
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.state_name = {}

-- Size: State Name
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.state_name.size = 20

-- Display: State Name
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.state_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.state_name, range, value, display)

  return offset + length, value
end

-- Strategy Subtype
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strategy_subtype = {}

-- Size: Strategy Subtype
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strategy_subtype.size = 1

-- Display: Strategy Subtype
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strategy_subtype.display = function(value)
  if value == 0 then
    return "Strategy Subtype: Not Applicable (0)"
  end
  if value == 1 then
    return "Strategy Subtype: Covered Option (1)"
  end

  return "Strategy Subtype: Unknown("..value..")"
end

-- Dissect: Strategy Subtype
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strategy_subtype.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strategy_subtype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strategy_subtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.strategy_subtype, range, value, display)

  return offset + length, value
end

-- Strike Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strike_price = {}

-- Size: Strike Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strike_price.size = 4

-- Display: Strike Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.symbol = {}

-- Size: Symbol
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.symbol.size = 32

-- Display: Symbol
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size = {}

-- Size: Tick Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size.size = 8

-- Display: Tick Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Time Of Trade Agreement
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_agreement = {}

-- Size: Time Of Trade Agreement
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_agreement.size = 8

-- Display: Time Of Trade Agreement
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_agreement.display = function(value)
  local digits = tostring(value)

  while #digits < 17 do
    digits = "0"..digits
  end

  return string.format("Time Of Trade Agreement: %s-%s-%s %s:%s:%s.%s",
                       digits:sub(1, 4), digits:sub(5, 6), digits:sub(7, 8),
                       digits:sub(9, 10), digits:sub(11, 12), digits:sub(13, 14),
                       digits:sub(15, 17))
end

-- Dissect: Time Of Trade Agreement
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_agreement.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_agreement.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_agreement.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.time_of_trade_agreement, range, value, display)

  return offset + length, value
end

-- Time Of Trade Dissemination
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_dissemination = {}

-- Size: Time Of Trade Dissemination
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_dissemination.size = 8

-- Display: Time Of Trade Dissemination
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_dissemination.display = function(value)
  local digits = tostring(value)

  while #digits < 17 do
    digits = "0"..digits
  end

  return string.format("Time Of Trade Dissemination: %s-%s-%s %s:%s:%s.%s",
                       digits:sub(1, 4), digits:sub(5, 6), digits:sub(7, 8),
                       digits:sub(9, 10), digits:sub(11, 12), digits:sub(13, 14),
                       digits:sub(15, 17))
end

-- Dissect: Time Of Trade Dissemination
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_dissemination.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_dissemination.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_dissemination.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.time_of_trade_dissemination, range, value, display)

  return offset + length, value
end

-- Time Of Trade Execution
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_execution = {}

-- Size: Time Of Trade Execution
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_execution.size = 8

-- Display: Time Of Trade Execution
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_execution.display = function(value)
  local digits = tostring(value)

  while #digits < 17 do
    digits = "0"..digits
  end

  return string.format("Time Of Trade Execution: %s-%s-%s %s:%s:%s.%s",
                       digits:sub(1, 4), digits:sub(5, 6), digits:sub(7, 8),
                       digits:sub(9, 10), digits:sub(11, 12), digits:sub(13, 14),
                       digits:sub(15, 17))
end

-- Dissect: Time Of Trade Execution
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_execution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_execution.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.time_of_trade_execution, range, value, display)

  return offset + length, value
end

-- Timestamp Nanoseconds
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds = {}

-- Size: Timestamp Nanoseconds
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.size = 4

-- Display: Timestamp Nanoseconds
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.display = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_price = {}

-- Size: Trade Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_price.size = 4

-- Display: Trade Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_type = {}

-- Size: Trade Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_type.size = 2

-- Display: Trade Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_type.display = function(value)
  if value == 1 then
    return "Trade Type: Block Trade (1)"
  end
  if value == 2 then
    return "Trade Type: Exchange For Physical (2)"
  end
  if value == 11 then
    return "Trade Type: Exchange For Risk (11)"
  end
  if value == 14 then
    return "Trade Type: Exchange For Options (14)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Traded Quantity
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.traded_quantity = {}

-- Size: Traded Quantity
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.traded_quantity.size = 8

-- Display: Traded Quantity
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.traded_quantity.display = function(value)
  return "Traded Quantity: "..value
end

-- Dissect: Traded Quantity
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.traded_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.traded_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.traded_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.traded_quantity, range, value, display)

  return offset + length, value
end

-- Trading Currency
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trading_currency = {}

-- Size: Trading Currency
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trading_currency.size = 3

-- Display: Trading Currency
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Underlying Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.underlying_order_book_id = {}

-- Size: Underlying Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.underlying_order_book_id.size = 4

-- Display: Underlying Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.underlying_order_book_id.display = function(value)
  return "Underlying Order Book Id: "..value
end

-- Dissect: Underlying Order Book Id
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.underlying_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.underlying_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.underlying_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.underlying_order_book_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NfxFutures MarketData GeniumAmd 2.30.7
-----------------------------------------------------------------------

-- Price Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_message = {}

-- Size: Price Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_message.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_type.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price.size

-- Display: Price Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Price Type: Alpha
  index, price_type = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_type.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.price_message, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest_message = {}

-- Size: Open Interest Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest_message.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest.size

-- Display: Open Interest Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.dissect(buffer, index, packet, parent)

  -- Open Interest: Numeric
  index, open_interest = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.open_interest_message, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.broken_trade_message.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.match_id.size

-- Display: Broken Trade Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Reported Trade
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reported_trade = {}

-- Size: Reported Trade
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reported_trade.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.traded_quantity.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.match_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combo_group_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_execution.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_agreement.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_dissemination.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_price.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_type.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reserved.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second_reserved.size

-- Display: Reported Trade
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reported_trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reported Trade
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reported_trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.dissect(buffer, index, packet, parent)

  -- Traded Quantity: Numeric
  index, traded_quantity = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.traded_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combo_group_id.dissect(buffer, index, packet, parent)

  -- Time Of Trade Execution: Datetime
  index, time_of_trade_execution = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_execution.dissect(buffer, index, packet, parent)

  -- Time Of Trade Agreement: Datetime
  index, time_of_trade_agreement = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_agreement.dissect(buffer, index, packet, parent)

  -- Time Of Trade Dissemination: Datetime
  index, time_of_trade_dissemination = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.time_of_trade_dissemination.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Type: Numeric
  index, trade_type = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trade_type.dissect(buffer, index, packet, parent)

  -- Reserved: Alpha
  index, reserved = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reserved.dissect(buffer, index, packet, parent)

  -- Second Reserved: Alpha
  index, second_reserved = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second_reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reported Trade
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reported_trade.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.reported_trade, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reported_trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reported_trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reported_trade.fields(buffer, offset, packet, parent)
  end
end

-- Order Book State Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_state_message = {}

-- Size: Order Book State Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_state_message.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.state_name.size

-- Display: Order Book State Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.dissect(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.order_book_state_message, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.system_event_message = {}

-- Size: System Event Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.system_event_message.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.event_code.size

-- Display: System Event Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size Table Entry
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size_table_entry = {}

-- Size: Tick Size Table Entry
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size_table_entry.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_from.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_to.size

-- Display: Tick Size Table Entry
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size_table_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Table Entry
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size_table_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Price
  index, tick_size = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Table Entry
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size_table_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.tick_size_table_entry, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size_table_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size_table_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size_table_entry.fields(buffer, offset, packet, parent)
  end
end

-- Combination Order Book Leg
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_leg = {}

-- Size: Combination Order Book Leg
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_leg.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_order_book_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_side.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_ratio.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_price_future.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_delta.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_quantity_future.size

-- Display: Combination Order Book Leg
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Book Leg
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_leg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Combination Order Book Id: Numeric
  index, combination_order_book_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Order Book Id: Numeric
  index, leg_order_book_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Numeric
  index, leg_ratio = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Price Future: Numeric
  index, leg_price_future = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_price_future.dissect(buffer, index, packet, parent)

  -- Leg Delta: Numeric
  index, leg_delta = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_delta.dissect(buffer, index, packet, parent)

  -- Leg Quantity Future: Numeric
  index, leg_quantity_future = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.leg_quantity_future.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Leg
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_leg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.combination_order_book_leg, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_leg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_leg.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_directory = {}

-- Size: Order Book Directory
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_directory.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.symbol.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.long_name.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.isin.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.financial_product.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trading_currency.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_price.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_nominal_value.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.odd_lot_size.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.round_lot_size.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.block_lot_size.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.nominal_value.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_legs.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.underlying_order_book_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strike_price.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.expiration_date.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_strike_price.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.put_or_call.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.market_id.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strategy_subtype.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.minimum_quantity_and_multiple.size

-- Display: Order Book Directory
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: Numeric
  index, odd_lot_size = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.nominal_value.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric
  index, number_of_legs = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_legs.dissect(buffer, index, packet, parent)

  -- Underlying Order Book Id: Numeric
  index, underlying_order_book_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.underlying_order_book_id.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strike_price.dissect(buffer, index, packet, parent)

  -- Expiration Date: Date
  index, expiration_date = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.expiration_date.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Strike Price: Numeric
  index, number_of_decimals_in_strike_price = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.number_of_decimals_in_strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Numeric
  index, put_or_call = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.put_or_call.dissect(buffer, index, packet, parent)

  -- Market Id: Numeric
  index, market_id = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.market_id.dissect(buffer, index, packet, parent)

  -- Strategy Subtype: Numeric
  index, strategy_subtype = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.strategy_subtype.dissect(buffer, index, packet, parent)

  -- Minimum Quantity And Multiple: Numeric
  index, minimum_quantity_and_multiple = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.minimum_quantity_and_multiple.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.order_book_directory, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_directory.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.seconds_message = {}

-- Size: Seconds Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.seconds_message.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second.size

-- Display: Seconds Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.seconds_message, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.payload = {}

-- Dissect: Payload
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory
  if message_type == "R" then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Book Leg
  if message_type == "M" then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.combination_order_book_leg.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Table Entry
  if message_type == "L" then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.tick_size_table_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if message_type == "O" then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reported Trade
  if message_type == "r" then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.reported_trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if message_type == "o" then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Message
  if message_type == "p" then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.price_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_header = {}

-- Size: Message Header
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_header.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_length.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_type.size

-- Display: Message Header
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String
  index, message_type = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message = {}

-- Read runtime size of: Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message_sequence_number, UInt64.new(nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 10 branches
  index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.message, buffer(offset, 0))
    local current = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.end_of_session = {}

-- Display: End Of Session
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.heartbeat = {}

-- Display: Heartbeat
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.messages = {}

-- Dissect: Messages
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet_header = {}

-- Size: Packet Header
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet_header.size =
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.session.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.sequence_number.size + 
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_count.size

-- Display: Packet Header
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet = {}

-- Verify required size of Udp packet
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet_header.size
end

-- Dissect Packet
nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.init()
end

-- Dissector for Nasdaq NfxFutures MarketData GeniumAmd 2.30.7
function omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7, buffer(), omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.description, "("..buffer:len().." Bytes)")
  return nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NfxFutures MarketData GeniumAmd 2.30.7 (Udp)
local function omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7
  omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NfxFutures MarketData GeniumAmd 2.30.7
omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7:register_heuristic("udp", omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7_udp_heuristic)

-- Register Nasdaq NfxFutures MarketData GeniumAmd 2.30.7 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nfxfutures_marketdata_geniumamd_v2_30_7)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.30.7
--   Date: Friday, November 17, 2017
--   Specification: Nasdaq AMD Market Data (2017-11).pdf
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
