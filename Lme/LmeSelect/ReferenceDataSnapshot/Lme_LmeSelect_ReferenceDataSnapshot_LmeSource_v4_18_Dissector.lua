-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18 Protocol
local omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18 = Proto("Omi.Lme.LmeSelect.ReferenceDataSnapshot.LmeSource.v4.18", "Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18")

-- Protocol table
local lme_lmeselect_referencedatasnapshot_lmesource_v4_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18 Fields
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.cfi_code = ProtoField.new("Cfi Code", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.cficode", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.closing_price = ProtoField.new("Closing Price", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.closingprice", ftypes.DOUBLE)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.contract_code = ProtoField.new("Contract Code", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.contractcode", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.contract_price_type = ProtoField.new("Contract Price Type", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.contractpricetype", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.contract_type = ProtoField.new("Contract Type", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.contracttype", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.exercise_style = ProtoField.new("Exercise Style", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.exercisestyle", ftypes.INT8)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.expiry_date = ProtoField.new("Expiry Date", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.expirydate", ftypes.UINT32)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.filler = ProtoField.new("Filler", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.filler", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.first_trading_date = ProtoField.new("First Trading Date", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.firsttradingdate", ftypes.UINT32)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.isin = ProtoField.new("Isin", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.isin", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.last_seq_num = ProtoField.new("Last Seq Num", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.lastseqnum", ftypes.UINT32)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.last_trading_date = ProtoField.new("Last Trading Date", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.lasttradingdate", ftypes.UINT32)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.leg_buy_sell = ProtoField.new("Leg Buy Sell", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.legbuysell", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.leg_delta_hedge_price = ProtoField.new("Leg Delta Hedge Price", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.legdeltahedgeprice", ftypes.DOUBLE)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.leg_number = ProtoField.new("Leg Number", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.legnumber", ftypes.UINT32)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.leg_ratio = ProtoField.new("Leg Ratio", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.legratio", ftypes.DOUBLE)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.leg_tradable_instrument_id = ProtoField.new("Leg Tradable Instrument Id", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.legtradableinstrumentid", ftypes.UINT64)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.linked_tradable_instrument_id = ProtoField.new("Linked Tradable Instrument Id", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.linkedtradableinstrumentid", ftypes.UINT64)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.lot_size = ProtoField.new("Lot Size", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.lotsize", ftypes.UINT64)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.lot_size_type = ProtoField.new("Lot Size Type", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.lotsizetype", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.lot_unit = ProtoField.new("Lot Unit", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.lotunit", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.lower_price_limit = ProtoField.new("Lower Price Limit", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.lowerpricelimit", ftypes.DOUBLE)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.market_code = ProtoField.new("Market Code", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.marketcode", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.market_segment_code = ProtoField.new("Market Segment Code", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.marketsegmentcode", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.merged_tradable_instrument_id = ProtoField.new("Merged Tradable Instrument Id", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.mergedtradableinstrumentid", ftypes.UINT64)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.msg_count = ProtoField.new("Msg Count", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.msgcount", ftypes.UINT8)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.msg_size = ProtoField.new("Msg Size", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.msgsize", ftypes.UINT16)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.msg_type = ProtoField.new("Msg Type", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.msgtype", ftypes.UINT16)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.name = ProtoField.new("Name", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.name", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.new_seq_no = ProtoField.new("New Seq No", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.newseqno", ftypes.UINT32)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.open_price = ProtoField.new("Open Price", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.openprice", ftypes.DOUBLE)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.option_type = ProtoField.new("Option Type", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.optiontype", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.pkt_size = ProtoField.new("Pkt Size", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.pktsize", ftypes.UINT16)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.price_code = ProtoField.new("Price Code", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.pricecode", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.product_code = ProtoField.new("Product Code", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.productcode", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.prompt_date_label = ProtoField.new("Prompt Date Label", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.promptdatelabel", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.prompt_type = ProtoField.new("Prompt Type", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.prompttype", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.send_time = ProtoField.new("Send Time", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.sendtime", ftypes.UINT64)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.seq_num = ProtoField.new("Seq Num", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.seqnum", ftypes.UINT32)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.settlement_pricing_method = ProtoField.new("Settlement Pricing Method", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.settlementpricingmethod", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.settlement_type = ProtoField.new("Settlement Type", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.settlementtype", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strategy_leg_count = ProtoField.new("Strategy Leg Count", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.strategylegcount", ftypes.UINT32)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strategy_legs = ProtoField.new("Strategy Legs", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.strategylegs", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strategy_type_code = ProtoField.new("Strategy Type Code", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.strategytypecode", ftypes.UINT32)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strike_price = ProtoField.new("Strike Price", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.strikeprice", ftypes.DOUBLE)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.tick_size_id = ProtoField.new("Tick Size Id", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.ticksizeid", ftypes.UINT32)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.time_of_event = ProtoField.new("Time Of Event", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.timeofevent", ftypes.UINT64)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.tradable_instrument_id = ProtoField.new("Tradable Instrument Id", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.tradableinstrumentid", ftypes.UINT64)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.trade_high = ProtoField.new("Trade High", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.tradehigh", ftypes.DOUBLE)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.trade_low = ProtoField.new("Trade Low", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.tradelow", ftypes.DOUBLE)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.trading_currency = ProtoField.new("Trading Currency", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.tradingcurrency", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.trading_venue = ProtoField.new("Trading Venue", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.tradingvenue", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.transaction_time = ProtoField.new("Transaction Time", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.transactiontime", ftypes.UINT64)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.underlying_contract_code = ProtoField.new("Underlying Contract Code", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.underlyingcontractcode", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.underlying_type = ProtoField.new("Underlying Type", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.underlyingtype", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.upper_price_limit = ProtoField.new("Upper Price Limit", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.upperpricelimit", ftypes.DOUBLE)

-- Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18 Framing
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.message = ProtoField.new("Message", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.message", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.message_header = ProtoField.new("Message Header", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.messageheader", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.packet = ProtoField.new("Packet", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.packet", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.packet_header = ProtoField.new("Packet Header", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.packetheader", ftypes.STRING)

-- Lme LmeSelect ReferenceDataSnapshot 4.18 Application Messages
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.contract_definition_message = ProtoField.new("Contract Definition Message", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.contractdefinitionmessage", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.outright_definition_message = ProtoField.new("Outright Definition Message", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.outrightdefinitionmessage", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.price_limits_message = ProtoField.new("Price Limits Message", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.pricelimitsmessage", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.refresh_complete_message = ProtoField.new("Refresh Complete Message", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.refreshcompletemessage", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.sequenceresetmessage", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strategy_definition_message = ProtoField.new("Strategy Definition Message", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.strategydefinitionmessage", ftypes.STRING)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.trade_statistics_end_of_day_message = ProtoField.new("Trade Statistics End Of Day Message", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.tradestatisticsendofdaymessage", ftypes.STRING)

-- Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18 Generated Fields
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.message_index = ProtoField.new("Message Index", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.messageindex", ftypes.UINT16)
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strategy_legs_index = ProtoField.new("Strategy Legs Index", "lme.lmeselect.referencedatasnapshot.lmesource.v4.18.strategylegsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.repeating_groups = true
show.indexes = true

-- Register Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18 Show Options
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_application_messages then
    show.application_messages = omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_application_messages
  end
  if show.headers ~= omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_headers then
    show.headers = omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_headers
  end
  if show.repeating_groups ~= omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_repeating_groups then
    show.repeating_groups = omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_repeating_groups
  end
  if show.structs ~= omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_structs then
    show.structs = omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_structs
  end
  if show.indexes ~= omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_indexes then
    show.indexes = omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prefs.show_indexes
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
-- Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18 Fields
-----------------------------------------------------------------------

-- Cfi Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.cfi_code = {}

-- Size: Cfi Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.cfi_code.size = 6

-- Display: Cfi Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.cfi_code.display = function(value)
  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.cfi_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Closing Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.closing_price = {}

-- Size: Closing Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.closing_price.size = 8

-- Display: Closing Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Translate: Closing Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Closing Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.closing_price.translate(raw)
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Contract Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code = {}

-- Size: Contract Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code.size = 12

-- Display: Contract Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code.display = function(value)
  return "Contract Code: "..value
end

-- Dissect: Contract Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.contract_code, range, value, display)

  return offset + length, value
end

-- Contract Price Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_price_type = {}

-- Size: Contract Price Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_price_type.size = 1

-- Display: Contract Price Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_price_type.display = function(value)
  if value == "P" then
    return "Contract Price Type: Premium (P)"
  end
  if value == "V" then
    return "Contract Price Type: Volatility (V)"
  end
  if value == " " then
    return "Contract Price Type: Futures (<whitespace>)"
  end

  return "Contract Price Type: Unknown("..value..")"
end

-- Dissect: Contract Price Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_price_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.contract_price_type, range, value, display)

  return offset + length, value
end

-- Contract Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type = {}

-- Size: Contract Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type.size = 1

-- Display: Contract Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type.display = function(value)
  if value == "F" then
    return "Contract Type: Future (F)"
  end
  if value == "O" then
    return "Contract Type: Option (O)"
  end

  return "Contract Type: Unknown("..value..")"
end

-- Dissect: Contract Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.contract_type, range, value, display)

  return offset + length, value
end

-- Exercise Style
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style = {}

-- Size: Exercise Style
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style.size = 1

-- Display: Exercise Style
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style.display = function(value)
  if value == 0 then
    return "Exercise Style: European (0)"
  end
  if value == 1 then
    return "Exercise Style: American (1)"
  end
  if value == 2 then
    return "Exercise Style: Asian (2)"
  end
  if value == -128 then
    return "Exercise Style: No Value"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Expiry Date
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.expiry_date = {}

-- Size: Expiry Date
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.expiry_date.size = 4

-- Display: Expiry Date
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.expiry_date.display = function(value)
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
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.expiry_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Filler
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.filler = {}

-- Size: Filler
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.filler.size = 1

-- Display: Filler
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.filler.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.filler, range, value, display)

  return offset + length, value
end

-- First Trading Date
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.first_trading_date = {}

-- Size: First Trading Date
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.first_trading_date.size = 4

-- Display: First Trading Date
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.first_trading_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("First Trading Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: First Trading Date
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.first_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.first_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.first_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.first_trading_date, range, value, display)

  return offset + length, value
end

-- Isin
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.isin = {}

-- Size: Isin
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.isin.size = 12

-- Display: Isin
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.isin.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.isin, range, value, display)

  return offset + length, value
end

-- Last Seq Num
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_seq_num = {}

-- Size: Last Seq Num
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_seq_num.size = 4

-- Display: Last Seq Num
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Trading Date
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_trading_date = {}

-- Size: Last Trading Date
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_trading_date.size = 4

-- Display: Last Trading Date
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_trading_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Last Trading Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Last Trading Date
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_trading_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Leg Buy Sell
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_buy_sell = {}

-- Size: Leg Buy Sell
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_buy_sell.size = 1

-- Display: Leg Buy Sell
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_buy_sell.display = function(value)
  if value == "B" then
    return "Leg Buy Sell: Buy (B)"
  end
  if value == "S" then
    return "Leg Buy Sell: Sell (S)"
  end

  return "Leg Buy Sell: Unknown("..value..")"
end

-- Dissect: Leg Buy Sell
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_buy_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.leg_buy_sell, range, value, display)

  return offset + length, value
end

-- Leg Delta Hedge Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_delta_hedge_price = {}

-- Size: Leg Delta Hedge Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_delta_hedge_price.size = 8

-- Display: Leg Delta Hedge Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_delta_hedge_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Leg Delta Hedge Price: No Value"
  end

  return "Leg Delta Hedge Price: "..value
end

-- Translate: Leg Delta Hedge Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_delta_hedge_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Leg Delta Hedge Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_delta_hedge_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_delta_hedge_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_delta_hedge_price.translate(raw)
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_delta_hedge_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.leg_delta_hedge_price, range, value, display)

  return offset + length, value
end

-- Leg Number
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_number = {}

-- Size: Leg Number
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_number.size = 4

-- Display: Leg Number
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_number.display = function(value)
  return "Leg Number: "..value
end

-- Dissect: Leg Number
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_number.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.leg_number, range, value, display)

  return offset + length, value
end

-- Leg Ratio
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_ratio = {}

-- Size: Leg Ratio
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_ratio.size = 8

-- Display: Leg Ratio
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Translate: Leg Ratio
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_ratio.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Leg Ratio
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_ratio.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_ratio.translate(raw)
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_tradable_instrument_id = {}

-- Size: Leg Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_tradable_instrument_id.size = 8

-- Display: Leg Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_tradable_instrument_id.display = function(value)
  return "Leg Tradable Instrument Id: "..value
end

-- Dissect: Leg Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.leg_tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Linked Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.linked_tradable_instrument_id = {}

-- Size: Linked Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.linked_tradable_instrument_id.size = 8

-- Display: Linked Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.linked_tradable_instrument_id.display = function(value)
  return "Linked Tradable Instrument Id: "..value
end

-- Dissect: Linked Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.linked_tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.linked_tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.linked_tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.linked_tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Lot Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size = {}

-- Size: Lot Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size.size = 8

-- Display: Lot Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lot Size Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type = {}

-- Size: Lot Size Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type.size = 1

-- Display: Lot Size Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type.display = function(value)
  if value == "S" then
    return "Lot Size Type: Standard (S)"
  end
  if value == "M" then
    return "Lot Size Type: Mini (M)"
  end

  return "Lot Size Type: Unknown("..value..")"
end

-- Dissect: Lot Size Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.lot_size_type, range, value, display)

  return offset + length, value
end

-- Lot Unit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_unit = {}

-- Size: Lot Unit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_unit.size = 20

-- Display: Lot Unit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_unit.display = function(value)
  return "Lot Unit: "..value
end

-- Dissect: Lot Unit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_unit.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_unit.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.lot_unit, range, value, display)

  return offset + length, value
end

-- Lower Price Limit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lower_price_limit = {}

-- Size: Lower Price Limit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lower_price_limit.size = 8

-- Display: Lower Price Limit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lower_price_limit.display = function(value)
  return "Lower Price Limit: "..value
end

-- Translate: Lower Price Limit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lower_price_limit.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Lower Price Limit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lower_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lower_price_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lower_price_limit.translate(raw)
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lower_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.lower_price_limit, range, value, display)

  return offset + length, value
end

-- Market Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_code = {}

-- Size: Market Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_code.size = 4

-- Display: Market Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_code.display = function(value)
  if value == "LME" then
    return "Market Code: The Base Metals Market (LME)"
  end

  return "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.market_code, range, value, display)

  return offset + length, value
end

-- Market Segment Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_segment_code = {}

-- Size: Market Segment Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_segment_code.size = 12

-- Display: Market Segment Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_segment_code.display = function(value)
  return "Market Segment Code: "..value
end

-- Dissect: Market Segment Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_segment_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_segment_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_segment_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.market_segment_code, range, value, display)

  return offset + length, value
end

-- Merged Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.merged_tradable_instrument_id = {}

-- Size: Merged Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.merged_tradable_instrument_id.size = 8

-- Display: Merged Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.merged_tradable_instrument_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Merged Tradable Instrument Id: No Value"
  end

  return "Merged Tradable Instrument Id: "..value
end

-- Dissect: Merged Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.merged_tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.merged_tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.merged_tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.merged_tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Msg Count
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_count = {}

-- Size: Msg Count
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_count.size = 1

-- Display: Msg Count
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_size = {}

-- Size: Msg Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_size.size = 2

-- Display: Msg Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_type = {}

-- Size: Msg Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_type.size = 2

-- Display: Msg Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_type.display = function(value)
  if value == 100 then
    return "Msg Type: Sequence Reset Message (100)"
  end
  if value == 300 then
    return "Msg Type: Contract Definition Message (300)"
  end
  if value == 301 then
    return "Msg Type: Outright Definition Message (301)"
  end
  if value == 302 then
    return "Msg Type: Strategy Definition Message (302)"
  end
  if value == 305 then
    return "Msg Type: Price Limits Message (305)"
  end
  if value == 351 then
    return "Msg Type: Trade Statistics End Of Day Message (351)"
  end
  if value == 203 then
    return "Msg Type: Refresh Complete Message (203)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Name
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.name = {}

-- Size: Name
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.name.size = 64

-- Display: Name
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.name.display = function(value)
  return "Name: "..value
end

-- Dissect: Name
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.name.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.name, range, value, display)

  return offset + length, value
end

-- New Seq No
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.new_seq_no = {}

-- Size: New Seq No
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.new_seq_no.size = 4

-- Display: New Seq No
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Open Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.open_price = {}

-- Size: Open Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.open_price.size = 8

-- Display: Open Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.open_price.display = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.open_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Open Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.open_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.open_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.open_price.translate(raw)
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.open_price, range, value, display)

  return offset + length, value
end

-- Option Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.option_type = {}

-- Size: Option Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.option_type.size = 1

-- Display: Option Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.option_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.option_type, range, value, display)

  return offset + length, value
end

-- Pkt Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.pkt_size = {}

-- Size: Pkt Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.pkt_size.size = 2

-- Display: Pkt Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Price Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_code = {}

-- Size: Price Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_code.size = 2

-- Display: Price Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_code.display = function(value)
  return "Price Code: "..value
end

-- Dissect: Price Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.price_code, range, value, display)

  return offset + length, value
end

-- Product Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code = {}

-- Size: Product Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code.size = 2

-- Display: Product Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code.display = function(value)
  return "Product Code: "..value
end

-- Dissect: Product Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.product_code, range, value, display)

  return offset + length, value
end

-- Prompt Date Label
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_date_label = {}

-- Size: Prompt Date Label
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_date_label.size = 6

-- Display: Prompt Date Label
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_date_label.display = function(value)
  return "Prompt Date Label: "..value
end

-- Dissect: Prompt Date Label
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_date_label.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_date_label.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_date_label.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.prompt_date_label, range, value, display)

  return offset + length, value
end

-- Prompt Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_type = {}

-- Size: Prompt Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_type.size = 1

-- Display: Prompt Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_type.display = function(value)
  if value == "S" then
    return "Prompt Type: Single (S)"
  end
  if value == "R" then
    return "Prompt Type: Rolling (R)"
  end

  return "Prompt Type: Unknown("..value..")"
end

-- Dissect: Prompt Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.prompt_type, range, value, display)

  return offset + length, value
end

-- Send Time
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.send_time = {}

-- Size: Send Time
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.send_time.size = 8

-- Display: Send Time
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.send_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.seq_num = {}

-- Size: Seq Num
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.seq_num.size = 4

-- Display: Seq Num
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Settlement Pricing Method
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method = {}

-- Size: Settlement Pricing Method
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method.size = 1

-- Display: Settlement Pricing Method
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method.display = function(value)
  if value == "D" then
    return "Settlement Pricing Method: Daily (D)"
  end
  if value == "M" then
    return "Settlement Pricing Method: Monthly Average (M)"
  end

  return "Settlement Pricing Method: Unknown("..value..")"
end

-- Dissect: Settlement Pricing Method
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.settlement_pricing_method, range, value, display)

  return offset + length, value
end

-- Settlement Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type = {}

-- Size: Settlement Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type.size = 1

-- Display: Settlement Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type.display = function(value)
  if value == "C" then
    return "Settlement Type: Cash (C)"
  end
  if value == "P" then
    return "Settlement Type: Physical (P)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Strategy Leg Count
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_leg_count = {}

-- Size: Strategy Leg Count
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_leg_count.size = 4

-- Display: Strategy Leg Count
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_leg_count.display = function(value)
  return "Strategy Leg Count: "..value
end

-- Dissect: Strategy Leg Count
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_leg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strategy_leg_count, range, value, display)

  return offset + length, value
end

-- Strategy Type Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_type_code = {}

-- Size: Strategy Type Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_type_code.size = 4

-- Display: Strategy Type Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_type_code.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Strategy Type Code: No Value"
  end

  return "Strategy Type Code: "..value
end

-- Dissect: Strategy Type Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_type_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_type_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strategy_type_code, range, value, display)

  return offset + length, value
end

-- Strike Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strike_price = {}

-- Size: Strike Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strike_price.size = 8

-- Display: Strike Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Strike Price
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strike_price.translate(raw)
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Tick Size Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tick_size_id = {}

-- Size: Tick Size Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tick_size_id.size = 4

-- Display: Tick Size Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tick_size_id.display = function(value)
  return "Tick Size Id: "..value
end

-- Dissect: Tick Size Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tick_size_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tick_size_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tick_size_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.tick_size_id, range, value, display)

  return offset + length, value
end

-- Time Of Event
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.time_of_event = {}

-- Size: Time Of Event
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.time_of_event.size = 8

-- Display: Time Of Event
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.time_of_event.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Time Of Event: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Time Of Event
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.time_of_event.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.time_of_event.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.time_of_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.time_of_event, range, value, display)

  return offset + length, value
end

-- Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id = {}

-- Size: Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.size = 8

-- Display: Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.display = function(value)
  return "Tradable Instrument Id: "..value
end

-- Dissect: Tradable Instrument Id
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Trade High
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_high = {}

-- Size: Trade High
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_high.size = 8

-- Display: Trade High
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_high.display = function(value)
  return "Trade High: "..value
end

-- Translate: Trade High
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_high.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade High
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_high.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_high.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_high.translate(raw)
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.trade_high, range, value, display)

  return offset + length, value
end

-- Trade Low
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_low = {}

-- Size: Trade Low
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_low.size = 8

-- Display: Trade Low
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_low.display = function(value)
  return "Trade Low: "..value
end

-- Translate: Trade Low
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_low.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Low
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_low.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_low.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_low.translate(raw)
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.trade_low, range, value, display)

  return offset + length, value
end

-- Trading Currency
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency = {}

-- Size: Trading Currency
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency.size = 3

-- Display: Trading Currency
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Trading Venue
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue = {}

-- Size: Trading Venue
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.size = 2

-- Display: Trading Venue
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.display = function(value)
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
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.trading_venue, range, value, display)

  return offset + length, value
end

-- Transaction Time
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.transaction_time = {}

-- Size: Transaction Time
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.transaction_time.size = 8

-- Display: Transaction Time
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Underlying Contract Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_contract_code = {}

-- Size: Underlying Contract Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_contract_code.size = 12

-- Display: Underlying Contract Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_contract_code.display = function(value)
  return "Underlying Contract Code: "..value
end

-- Dissect: Underlying Contract Code
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_contract_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_contract_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_contract_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.underlying_contract_code, range, value, display)

  return offset + length, value
end

-- Underlying Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type = {}

-- Size: Underlying Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type.size = 1

-- Display: Underlying Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type.display = function(value)
  if value == "C" then
    return "Underlying Type: Commodity (C)"
  end
  if value == "F" then
    return "Underlying Type: Future (F)"
  end

  return "Underlying Type: Unknown("..value..")"
end

-- Dissect: Underlying Type
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.underlying_type, range, value, display)

  return offset + length, value
end

-- Upper Price Limit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.upper_price_limit = {}

-- Size: Upper Price Limit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.upper_price_limit.size = 8

-- Display: Upper Price Limit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.upper_price_limit.display = function(value)
  return "Upper Price Limit: "..value
end

-- Translate: Upper Price Limit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.upper_price_limit.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Upper Price Limit
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.upper_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.upper_price_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.upper_price_limit.translate(raw)
  local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.upper_price_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.upper_price_limit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18
-----------------------------------------------------------------------

-- Refresh Complete Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.refresh_complete_message = {}

-- Size: Refresh Complete Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.refresh_complete_message.size =
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_seq_num.size

-- Display: Refresh Complete Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.refresh_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complete Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.refresh_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Uint32
  index, last_seq_num = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complete Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.refresh_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.refresh_complete_message, buffer(offset, 0))
    local index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.refresh_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.refresh_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.refresh_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Statistics End Of Day Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_statistics_end_of_day_message = {}

-- Size: Trade Statistics End Of Day Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_statistics_end_of_day_message.size =
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.open_price.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_high.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_low.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.closing_price.size

-- Display: Trade Statistics End Of Day Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_statistics_end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Statistics End Of Day Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_statistics_end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Open Price: Int64
  index, open_price = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.open_price.dissect(buffer, index, packet, parent)

  -- Trade High: Int64
  index, trade_high = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_high.dissect(buffer, index, packet, parent)

  -- Trade Low: Int64
  index, trade_low = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_low.dissect(buffer, index, packet, parent)

  -- Closing Price: Int64
  index, closing_price = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.closing_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Statistics End Of Day Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_statistics_end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.trade_statistics_end_of_day_message, buffer(offset, 0))
    local index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_statistics_end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_statistics_end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_statistics_end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Limits Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_limits_message = {}

-- Size: Price Limits Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_limits_message.size =
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.upper_price_limit.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lower_price_limit.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.transaction_time.size

-- Display: Price Limits Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_limits_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Limits Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_limits_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Upper Price Limit: Int64
  index, upper_price_limit = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.upper_price_limit.dissect(buffer, index, packet, parent)

  -- Lower Price Limit: Int64
  index, lower_price_limit = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lower_price_limit.dissect(buffer, index, packet, parent)

  -- Transaction Time: Uint64
  index, transaction_time = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.transaction_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Limits Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_limits_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.price_limits_message, buffer(offset, 0))
    local index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_limits_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_limits_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_limits_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Legs
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_legs = {}

-- Size: Strategy Legs
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_legs.size =
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_number.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_buy_sell.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_ratio.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_delta_hedge_price.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_tradable_instrument_id.size

-- Display: Strategy Legs
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Legs
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_legs.fields = function(buffer, offset, packet, parent, strategy_legs_index)
  local index = offset

  -- Implicit Strategy Legs Index
  if strategy_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strategy_legs_index, strategy_legs_index)
    iteration:set_generated()
  end

  -- Leg Number: Uint32
  index, leg_number = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_number.dissect(buffer, index, packet, parent)

  -- Leg Buy Sell: String
  index, leg_buy_sell = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_buy_sell.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Uint64
  index, leg_ratio = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Delta Hedge Price: Int64
  index, leg_delta_hedge_price = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_delta_hedge_price.dissect(buffer, index, packet, parent)

  -- Leg Tradable Instrument Id: Uint64
  index, leg_tradable_instrument_id = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.leg_tradable_instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Legs
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_legs.dissect = function(buffer, offset, packet, parent, strategy_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strategy_legs, buffer(offset, 0))
    local index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_legs.fields(buffer, offset, packet, parent, strategy_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_legs.fields(buffer, offset, packet, parent, strategy_legs_index)
  end
end

-- Strategy Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_definition_message = {}

-- Calculate size of: Strategy Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.merged_tradable_instrument_id.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_type_code.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_code.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_code.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_segment_code.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tick_size_id.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_trading_date.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type.size

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_leg_count.size

  -- Calculate field size from count
  local strategy_legs_count = buffer(offset + index - 4, 4):le_uint()
  index = index + strategy_legs_count * 29

  return index
end

-- Display: Strategy Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Merged Tradable Instrument Id: Uint64
  index, merged_tradable_instrument_id = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.merged_tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Product Code: String
  index, product_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Contract Type: String
  index, contract_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type.dissect(buffer, index, packet, parent)

  -- Trading Currency: String
  index, trading_currency = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency.dissect(buffer, index, packet, parent)

  -- Strategy Type Code: Uint32
  index, strategy_type_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_type_code.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Exercise Style: Int8
  index, exercise_style = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style.dissect(buffer, index, packet, parent)

  -- Price Code: String
  index, price_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_code.dissect(buffer, index, packet, parent)

  -- Market Code: String
  index, market_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_code.dissect(buffer, index, packet, parent)

  -- Market Segment Code: String
  index, market_segment_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_segment_code.dissect(buffer, index, packet, parent)

  -- Tick Size Id: Uint32
  index, tick_size_id = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tick_size_id.dissect(buffer, index, packet, parent)

  -- Lot Size: Uint64
  index, lot_size = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size.dissect(buffer, index, packet, parent)

  -- Lot Size Type: String
  index, lot_size_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type.dissect(buffer, index, packet, parent)

  -- Last Trading Date: Uint32
  index, last_trading_date = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_trading_date.dissect(buffer, index, packet, parent)

  -- Settlement Type: String
  index, settlement_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlement Pricing Method: String
  index, settlement_pricing_method = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method.dissect(buffer, index, packet, parent)

  -- Underlying Type: String
  index, underlying_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type.dissect(buffer, index, packet, parent)

  -- Strategy Leg Count: Uint32
  index, strategy_leg_count = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Legs
  for strategy_legs_index = 1, strategy_leg_count do
    index, strategy_legs = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_legs.dissect(buffer, index, packet, parent, strategy_legs_index)
  end

  return index
end

-- Dissect: Strategy Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.strategy_definition_message, buffer(offset, 0))
    local index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Outright Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.outright_definition_message = {}

-- Size: Outright Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.outright_definition_message.size =
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.merged_tradable_instrument_id.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.linked_tradable_instrument_id.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.expiry_date.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_type.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strike_price.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.option_type.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_date_label.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_code.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.isin.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.cfi_code.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_code.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_segment_code.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tick_size_id.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_trading_date.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type.size

-- Display: Outright Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.outright_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.outright_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Merged Tradable Instrument Id: Uint64
  index, merged_tradable_instrument_id = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.merged_tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Linked Tradable Instrument Id: Uint64
  index, linked_tradable_instrument_id = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.linked_tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Product Code: String
  index, product_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Contract Type: String
  index, contract_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type.dissect(buffer, index, packet, parent)

  -- Trading Currency: String
  index, trading_currency = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Expiry Date: Uint32
  index, expiry_date = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.expiry_date.dissect(buffer, index, packet, parent)

  -- Prompt Type: String
  index, prompt_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Int64
  index, strike_price = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: String
  index, option_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.option_type.dissect(buffer, index, packet, parent)

  -- Exercise Style: Int8
  index, exercise_style = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style.dissect(buffer, index, packet, parent)

  -- Prompt Date Label: String
  index, prompt_date_label = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.prompt_date_label.dissect(buffer, index, packet, parent)

  -- Price Code: String
  index, price_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_code.dissect(buffer, index, packet, parent)

  -- Isin: String
  index, isin = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.isin.dissect(buffer, index, packet, parent)

  -- Cfi Code: String
  index, cfi_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.cfi_code.dissect(buffer, index, packet, parent)

  -- Market Code: String
  index, market_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_code.dissect(buffer, index, packet, parent)

  -- Market Segment Code: String
  index, market_segment_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.market_segment_code.dissect(buffer, index, packet, parent)

  -- Tick Size Id: Uint32
  index, tick_size_id = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.tick_size_id.dissect(buffer, index, packet, parent)

  -- Lot Size: Uint64
  index, lot_size = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size.dissect(buffer, index, packet, parent)

  -- Lot Size Type: String
  index, lot_size_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type.dissect(buffer, index, packet, parent)

  -- Last Trading Date: Uint32
  index, last_trading_date = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.last_trading_date.dissect(buffer, index, packet, parent)

  -- Settlement Type: String
  index, settlement_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlement Pricing Method: String
  index, settlement_pricing_method = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method.dissect(buffer, index, packet, parent)

  -- Underlying Type: String
  index, underlying_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.outright_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.outright_definition_message, buffer(offset, 0))
    local index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.outright_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.outright_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.outright_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Contract Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_definition_message = {}

-- Size: Contract Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_definition_message.size =
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.name.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_contract_code.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_unit.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_price_type.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.first_trading_date.size

-- Display: Contract Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Name: String
  index, name = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.name.dissect(buffer, index, packet, parent)

  -- Contract Type: String
  index, contract_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_type.dissect(buffer, index, packet, parent)

  -- Product Code: String
  index, product_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Underlying Type: String
  index, underlying_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_type.dissect(buffer, index, packet, parent)

  -- Underlying Contract Code: String
  index, underlying_contract_code = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.underlying_contract_code.dissect(buffer, index, packet, parent)

  -- Trading Currency: String
  index, trading_currency = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trading_currency.dissect(buffer, index, packet, parent)

  -- Settlement Type: String
  index, settlement_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_type.dissect(buffer, index, packet, parent)

  -- Settlement Pricing Method: String
  index, settlement_pricing_method = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.settlement_pricing_method.dissect(buffer, index, packet, parent)

  -- Exercise Style: Int8
  index, exercise_style = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.exercise_style.dissect(buffer, index, packet, parent)

  -- Lot Unit: String
  index, lot_unit = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_unit.dissect(buffer, index, packet, parent)

  -- Lot Size: Uint64
  index, lot_size = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size.dissect(buffer, index, packet, parent)

  -- Lot Size Type: String
  index, lot_size_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.lot_size_type.dissect(buffer, index, packet, parent)

  -- Contract Price Type: String
  index, contract_price_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_price_type.dissect(buffer, index, packet, parent)

  -- First Trading Date: Uint32
  index, first_trading_date = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.first_trading_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Definition Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.contract_definition_message, buffer(offset, 0))
    local index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.sequence_reset_message = {}

-- Size: Sequence Reset Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.sequence_reset_message.size =
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.new_seq_no.size

-- Display: Sequence Reset Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.sequence_reset_message, buffer(offset, 0))
    local index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.payload = {}

-- Dissect: Payload
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Sequence Reset Message
  if msg_type == 100 then
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.sequence_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Contract Definition Message
  if msg_type == 300 then
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.contract_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Outright Definition Message
  if msg_type == 301 then
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.outright_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Definition Message
  if msg_type == 302 then
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.strategy_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Limits Message
  if msg_type == 305 then
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.price_limits_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Statistics End Of Day Message
  if msg_type == 351 then
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.trade_statistics_end_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complete Message
  if msg_type == 203 then
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.refresh_complete_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message_header = {}

-- Size: Message Header
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message_header.size =
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_size.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_type.size

-- Display: Message Header
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.message_header, buffer(offset, 0))
    local index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message = {}

-- Calculate size of: Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.message, buffer(offset, 0))
    local index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet_header = {}

-- Size: Packet Header
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet_header.size =
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.pkt_size.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_count.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.filler.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.seq_num.size + 
  lme_lmeselect_referencedatasnapshot_lmesource_v4_18.send_time.size

-- Display: Packet Header
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: Uint16
  index, pkt_size = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: Uint8
  index, msg_count = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: Uint32
  index, seq_num = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Uint64
  index, send_time = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.fields.packet_header, buffer(offset, 0))
    local index = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet = {}

-- Verify required size of Udp packet
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet.requiredsize = function(buffer)
  return buffer:len() >= lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet_header.size
end

-- Dissect Packet
lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do
    index, message = lme_lmeselect_referencedatasnapshot_lmesource_v4_18.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.init()
end

-- Dissector for Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18
function omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.name

  -- Dissect protocol
  local protocol = parent:add(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18, buffer(), omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.description, "("..buffer:len().." Bytes)")
  return lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18 (Udp)
local function omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lme_lmeselect_referencedatasnapshot_lmesource_v4_18.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18
  omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18
omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18:register_heuristic("udp", omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18_udp_heuristic)

-- Register Lme LmeSelect ReferenceDataSnapshot LmeSource 4.18 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lme_lmeselect_referencedatasnapshot_lmesource_v4_18)

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
