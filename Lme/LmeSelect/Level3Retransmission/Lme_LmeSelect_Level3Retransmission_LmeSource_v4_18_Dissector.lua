-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lme LmeSelect Level3Retransmission LmeSource 4.18 Protocol
local omi_lme_lmeselect_level3retransmission_lmesource_v4_18 = Proto("Omi.Lme.LmeSelect.Level3Retransmission.LmeSource.v4.18", "Lme LmeSelect Level3Retransmission LmeSource 4.18")

-- Protocol table
local lme_lmeselect_level3retransmission_lmesource_v4_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lme LmeSelect Level3Retransmission LmeSource 4.18 Fields
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "lme.lmeselect.level3retransmission.lmesource.v4.18.beginseqnum", ftypes.UINT32)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.buy_sell = ProtoField.new("Buy Sell", "lme.lmeselect.level3retransmission.lmesource.v4.18.buysell", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.channel_id = ProtoField.new("Channel Id", "lme.lmeselect.level3retransmission.lmesource.v4.18.channelid", ftypes.UINT16)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.contract_code = ProtoField.new("Contract Code", "lme.lmeselect.level3retransmission.lmesource.v4.18.contractcode", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.cross_id = ProtoField.new("Cross Id", "lme.lmeselect.level3retransmission.lmesource.v4.18.crossid", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.end_seq_num = ProtoField.new("End Seq Num", "lme.lmeselect.level3retransmission.lmesource.v4.18.endseqnum", ftypes.UINT32)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.end_time = ProtoField.new("End Time", "lme.lmeselect.level3retransmission.lmesource.v4.18.endtime", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.executed_legs = ProtoField.new("Executed Legs", "lme.lmeselect.level3retransmission.lmesource.v4.18.executedlegs", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.expire_time = ProtoField.new("Expire Time", "lme.lmeselect.level3retransmission.lmesource.v4.18.expiretime", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.filler = ProtoField.new("Filler", "lme.lmeselect.level3retransmission.lmesource.v4.18.filler", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.filler_string_1 = ProtoField.new("Filler String 1", "lme.lmeselect.level3retransmission.lmesource.v4.18.fillerstring1", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.filler_string_2 = ProtoField.new("Filler String 2", "lme.lmeselect.level3retransmission.lmesource.v4.18.fillerstring2", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.filler_string_3 = ProtoField.new("Filler String 3", "lme.lmeselect.level3retransmission.lmesource.v4.18.fillerstring3", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.indicative_opening_mid_price = ProtoField.new("Indicative Opening Mid Price", "lme.lmeselect.level3retransmission.lmesource.v4.18.indicativeopeningmidprice", ftypes.DOUBLE)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.indicative_opening_price = ProtoField.new("Indicative Opening Price", "lme.lmeselect.level3retransmission.lmesource.v4.18.indicativeopeningprice", ftypes.DOUBLE)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.indicative_opening_volume = ProtoField.new("Indicative Opening Volume", "lme.lmeselect.level3retransmission.lmesource.v4.18.indicativeopeningvolume", ftypes.UINT32)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.leg_buy_sell = ProtoField.new("Leg Buy Sell", "lme.lmeselect.level3retransmission.lmesource.v4.18.legbuysell", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.leg_match_id = ProtoField.new("Leg Match Id", "lme.lmeselect.level3retransmission.lmesource.v4.18.legmatchid", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.leg_price = ProtoField.new("Leg Price", "lme.lmeselect.level3retransmission.lmesource.v4.18.legprice", ftypes.DOUBLE)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.leg_tradable_instrument_id = ProtoField.new("Leg Tradable Instrument Id", "lme.lmeselect.level3retransmission.lmesource.v4.18.legtradableinstrumentid", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.leg_volume = ProtoField.new("Leg Volume", "lme.lmeselect.level3retransmission.lmesource.v4.18.legvolume", ftypes.UINT32)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.match_id = ProtoField.new("Match Id", "lme.lmeselect.level3retransmission.lmesource.v4.18.matchid", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.msg_count = ProtoField.new("Msg Count", "lme.lmeselect.level3retransmission.lmesource.v4.18.msgcount", ftypes.UINT8)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.msg_size = ProtoField.new("Msg Size", "lme.lmeselect.level3retransmission.lmesource.v4.18.msgsize", ftypes.UINT16)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.msg_type = ProtoField.new("Msg Type", "lme.lmeselect.level3retransmission.lmesource.v4.18.msgtype", ftypes.UINT16)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.new_seq_no = ProtoField.new("New Seq No", "lme.lmeselect.level3retransmission.lmesource.v4.18.newseqno", ftypes.UINT32)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_book_position = ProtoField.new("Order Book Position", "lme.lmeselect.level3retransmission.lmesource.v4.18.orderbookposition", ftypes.UINT32)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_id = ProtoField.new("Order Id", "lme.lmeselect.level3retransmission.lmesource.v4.18.orderid", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.pkt_size = ProtoField.new("Pkt Size", "lme.lmeselect.level3retransmission.lmesource.v4.18.pktsize", ftypes.UINT16)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.price = ProtoField.new("Price", "lme.lmeselect.level3retransmission.lmesource.v4.18.price", ftypes.DOUBLE)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.quote_request_type = ProtoField.new("Quote Request Type", "lme.lmeselect.level3retransmission.lmesource.v4.18.quoterequesttype", ftypes.UINT8)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.retrans_status = ProtoField.new("Retrans Status", "lme.lmeselect.level3retransmission.lmesource.v4.18.retransstatus", ftypes.UINT8)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.send_time = ProtoField.new("Send Time", "lme.lmeselect.level3retransmission.lmesource.v4.18.sendtime", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.seq_num = ProtoField.new("Seq Num", "lme.lmeselect.level3retransmission.lmesource.v4.18.seqnum", ftypes.UINT32)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.session_status = ProtoField.new("Session Status", "lme.lmeselect.level3retransmission.lmesource.v4.18.sessionstatus", ftypes.UINT8)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.start_time = ProtoField.new("Start Time", "lme.lmeselect.level3retransmission.lmesource.v4.18.starttime", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.strategy_leg_count = ProtoField.new("Strategy Leg Count", "lme.lmeselect.level3retransmission.lmesource.v4.18.strategylegcount", ftypes.UINT32)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.sub_type_of_trade = ProtoField.new("Sub Type Of Trade", "lme.lmeselect.level3retransmission.lmesource.v4.18.subtypeoftrade", ftypes.UINT8)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.t_1 = ProtoField.new("T 1", "lme.lmeselect.level3retransmission.lmesource.v4.18.t1", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.t_2 = ProtoField.new("T 2", "lme.lmeselect.level3retransmission.lmesource.v4.18.t2", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.t_3 = ProtoField.new("T 3", "lme.lmeselect.level3retransmission.lmesource.v4.18.t3", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.time_of_event = ProtoField.new("Time Of Event", "lme.lmeselect.level3retransmission.lmesource.v4.18.timeofevent", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.timetable_control_type = ProtoField.new("Timetable Control Type", "lme.lmeselect.level3retransmission.lmesource.v4.18.timetablecontroltype", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.tradable_instrument_id = ProtoField.new("Tradable Instrument Id", "lme.lmeselect.level3retransmission.lmesource.v4.18.tradableinstrumentid", ftypes.UINT64)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.trade_buy_sell = ProtoField.new("Trade Buy Sell", "lme.lmeselect.level3retransmission.lmesource.v4.18.tradebuysell", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.trade_cancel_flag = ProtoField.new("Trade Cancel Flag", "lme.lmeselect.level3retransmission.lmesource.v4.18.tradecancelflag", ftypes.UINT8)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.trading_state = ProtoField.new("Trading State", "lme.lmeselect.level3retransmission.lmesource.v4.18.tradingstate", ftypes.UINT8)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.trading_state_condition = ProtoField.new("Trading State Condition", "lme.lmeselect.level3retransmission.lmesource.v4.18.tradingstatecondition", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.trading_venue = ProtoField.new("Trading Venue", "lme.lmeselect.level3retransmission.lmesource.v4.18.tradingvenue", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.username = ProtoField.new("Username", "lme.lmeselect.level3retransmission.lmesource.v4.18.username", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.volume = ProtoField.new("Volume", "lme.lmeselect.level3retransmission.lmesource.v4.18.volume", ftypes.UINT32)

-- Lme LmeSelect Level3Retransmission LmeSource 4.18 Framing
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.message = ProtoField.new("Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.message", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.message_header = ProtoField.new("Message Header", "lme.lmeselect.level3retransmission.lmesource.v4.18.messageheader", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.packet = ProtoField.new("Packet", "lme.lmeselect.level3retransmission.lmesource.v4.18.packet", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.packet_header = ProtoField.new("Packet Header", "lme.lmeselect.level3retransmission.lmesource.v4.18.packetheader", ftypes.STRING)

-- Lme LmeSelect Level3Retransmission 4.18 Application Messages
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.cross_request_message = ProtoField.new("Cross Request Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.crossrequestmessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.indicative_opening_price_message = ProtoField.new("Indicative Opening Price Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.indicativeopeningpricemessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.logon_message = ProtoField.new("Logon Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.logonmessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.logon_response_message = ProtoField.new("Logon Response Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.logonresponsemessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.market_state_contract_message = ProtoField.new("Market State Contract Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.marketstatecontractmessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.market_state_instrument_message = ProtoField.new("Market State Instrument Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.marketstateinstrumentmessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_add_message = ProtoField.new("Order Add Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.orderaddmessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_amend_message = ProtoField.new("Order Amend Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.orderamendmessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.orderbookclearmessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.ordercancelmessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_executed_message = ProtoField.new("Order Executed Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.orderexecutedmessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.quote_request_message = ProtoField.new("Quote Request Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.quoterequestmessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.retransmissionrequestmessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.retransmission_response_message = ProtoField.new("Retransmission Response Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.retransmissionresponsemessage", ftypes.STRING)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "lme.lmeselect.level3retransmission.lmesource.v4.18.sequenceresetmessage", ftypes.STRING)

-- Lme LmeSelect Level3Retransmission LmeSource 4.18 Generated Fields
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.executed_legs_index = ProtoField.new("Executed Legs Index", "lme.lmeselect.level3retransmission.lmesource.v4.18.executedlegsindex", ftypes.UINT16)
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.message_index = ProtoField.new("Message Index", "lme.lmeselect.level3retransmission.lmesource.v4.18.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lme LmeSelect Level3Retransmission LmeSource 4.18 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Lme LmeSelect Level3Retransmission LmeSource 4.18 Show Options
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_application_messages then
    show.application_messages = omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_application_messages
  end
  if show.headers ~= omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_headers then
    show.headers = omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_headers
  end
  if show.repeating_groups ~= omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_repeating_groups then
    show.repeating_groups = omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_repeating_groups
  end
  if show.structs ~= omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_structs then
    show.structs = omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_structs
  end
  if show.indexes ~= omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_indexes then
    show.indexes = omi_lme_lmeselect_level3retransmission_lmesource_v4_18.prefs.show_indexes
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
-- Lme LmeSelect Level3Retransmission LmeSource 4.18 Fields
-----------------------------------------------------------------------

-- Begin Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.begin_seq_num = {}

-- Size: Begin Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.begin_seq_num.size = 4

-- Display: Begin Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Buy Sell
lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell = {}

-- Size: Buy Sell
lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.size = 1

-- Display: Buy Sell
lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.display = function(value)
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
lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Channel Id
lme_lmeselect_level3retransmission_lmesource_v4_18.channel_id = {}

-- Size: Channel Id
lme_lmeselect_level3retransmission_lmesource_v4_18.channel_id.size = 2

-- Display: Channel Id
lme_lmeselect_level3retransmission_lmesource_v4_18.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
lme_lmeselect_level3retransmission_lmesource_v4_18.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Contract Code
lme_lmeselect_level3retransmission_lmesource_v4_18.contract_code = {}

-- Size: Contract Code
lme_lmeselect_level3retransmission_lmesource_v4_18.contract_code.size = 12

-- Display: Contract Code
lme_lmeselect_level3retransmission_lmesource_v4_18.contract_code.display = function(value)
  return "Contract Code: "..value
end

-- Dissect: Contract Code
lme_lmeselect_level3retransmission_lmesource_v4_18.contract_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.contract_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.contract_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.contract_code, range, value, display)

  return offset + length, value
end

-- Cross Id
lme_lmeselect_level3retransmission_lmesource_v4_18.cross_id = {}

-- Size: Cross Id
lme_lmeselect_level3retransmission_lmesource_v4_18.cross_id.size = 8

-- Display: Cross Id
lme_lmeselect_level3retransmission_lmesource_v4_18.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
lme_lmeselect_level3retransmission_lmesource_v4_18.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.cross_id, range, value, display)

  return offset + length, value
end

-- End Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.end_seq_num = {}

-- Size: End Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.end_seq_num.size = 4

-- Display: End Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- End Time
lme_lmeselect_level3retransmission_lmesource_v4_18.end_time = {}

-- Size: End Time
lme_lmeselect_level3retransmission_lmesource_v4_18.end_time.size = 8

-- Display: End Time
lme_lmeselect_level3retransmission_lmesource_v4_18.end_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "End Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: End Time
lme_lmeselect_level3retransmission_lmesource_v4_18.end_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.end_time, range, value, display)

  return offset + length, value
end

-- Expire Time
lme_lmeselect_level3retransmission_lmesource_v4_18.expire_time = {}

-- Size: Expire Time
lme_lmeselect_level3retransmission_lmesource_v4_18.expire_time.size = 8

-- Display: Expire Time
lme_lmeselect_level3retransmission_lmesource_v4_18.expire_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Expire Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Expire Time
lme_lmeselect_level3retransmission_lmesource_v4_18.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Filler
lme_lmeselect_level3retransmission_lmesource_v4_18.filler = {}

-- Size: Filler
lme_lmeselect_level3retransmission_lmesource_v4_18.filler.size = 1

-- Display: Filler
lme_lmeselect_level3retransmission_lmesource_v4_18.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
lme_lmeselect_level3retransmission_lmesource_v4_18.filler.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler String 1
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1 = {}

-- Size: Filler String 1
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.size = 1

-- Display: Filler String 1
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.display = function(value)
  return "Filler String 1: "..value
end

-- Dissect: Filler String 1
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.filler_string_1, range, value, display)

  return offset + length, value
end

-- Filler String 2
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2 = {}

-- Size: Filler String 2
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.size = 2

-- Display: Filler String 2
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.display = function(value)
  return "Filler String 2: "..value
end

-- Dissect: Filler String 2
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.filler_string_2, range, value, display)

  return offset + length, value
end

-- Filler String 3
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_3 = {}

-- Size: Filler String 3
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_3.size = 3

-- Display: Filler String 3
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_3.display = function(value)
  return "Filler String 3: "..value
end

-- Dissect: Filler String 3
lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_3.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.filler_string_3, range, value, display)

  return offset + length, value
end

-- Indicative Opening Mid Price
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_mid_price = {}

-- Size: Indicative Opening Mid Price
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_mid_price.size = 8

-- Display: Indicative Opening Mid Price
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_mid_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Indicative Opening Mid Price: No Value"
  end

  return "Indicative Opening Mid Price: "..value
end

-- Translate: Indicative Opening Mid Price
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_mid_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Indicative Opening Mid Price
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_mid_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_mid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_mid_price.translate(raw)
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_mid_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.indicative_opening_mid_price, range, value, display)

  return offset + length, value
end

-- Indicative Opening Price
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price = {}

-- Size: Indicative Opening Price
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price.size = 8

-- Display: Indicative Opening Price
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Indicative Opening Price: No Value"
  end

  return "Indicative Opening Price: "..value
end

-- Translate: Indicative Opening Price
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Indicative Opening Price
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price.translate(raw)
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.indicative_opening_price, range, value, display)

  return offset + length, value
end

-- Indicative Opening Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_volume = {}

-- Size: Indicative Opening Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_volume.size = 4

-- Display: Indicative Opening Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_volume.display = function(value)
  return "Indicative Opening Volume: "..value
end

-- Dissect: Indicative Opening Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.indicative_opening_volume, range, value, display)

  return offset + length, value
end

-- Leg Buy Sell
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_buy_sell = {}

-- Size: Leg Buy Sell
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_buy_sell.size = 1

-- Display: Leg Buy Sell
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_buy_sell.display = function(value)
  if value == "B" then
    return "Leg Buy Sell: Buy (B)"
  end
  if value == "S" then
    return "Leg Buy Sell: Sell (S)"
  end

  return "Leg Buy Sell: Unknown("..value..")"
end

-- Dissect: Leg Buy Sell
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_buy_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.leg_buy_sell, range, value, display)

  return offset + length, value
end

-- Leg Match Id
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_match_id = {}

-- Size: Leg Match Id
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_match_id.size = 8

-- Display: Leg Match Id
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_match_id.display = function(value)
  return "Leg Match Id: "..value
end

-- Dissect: Leg Match Id
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_match_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.leg_match_id, range, value, display)

  return offset + length, value
end

-- Leg Price
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_price = {}

-- Size: Leg Price
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_price.size = 8

-- Display: Leg Price
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_price.display = function(value)
  return "Leg Price: "..value
end

-- Translate: Leg Price
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Leg Price
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_price.translate(raw)
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Leg Tradable Instrument Id
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_tradable_instrument_id = {}

-- Size: Leg Tradable Instrument Id
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_tradable_instrument_id.size = 8

-- Display: Leg Tradable Instrument Id
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_tradable_instrument_id.display = function(value)
  return "Leg Tradable Instrument Id: "..value
end

-- Dissect: Leg Tradable Instrument Id
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.leg_tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Leg Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_volume = {}

-- Size: Leg Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_volume.size = 4

-- Display: Leg Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_volume.display = function(value)
  return "Leg Volume: "..value
end

-- Dissect: Leg Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.leg_volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.leg_volume, range, value, display)

  return offset + length, value
end

-- Match Id
lme_lmeselect_level3retransmission_lmesource_v4_18.match_id = {}

-- Size: Match Id
lme_lmeselect_level3retransmission_lmesource_v4_18.match_id.size = 8

-- Display: Match Id
lme_lmeselect_level3retransmission_lmesource_v4_18.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
lme_lmeselect_level3retransmission_lmesource_v4_18.match_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.match_id, range, value, display)

  return offset + length, value
end

-- Msg Count
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_count = {}

-- Size: Msg Count
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_count.size = 1

-- Display: Msg Count
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_size = {}

-- Size: Msg Size
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_size.size = 2

-- Display: Msg Size
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_type = {}

-- Size: Msg Type
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_type.size = 2

-- Display: Msg Type
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_type.display = function(value)
  if value == 100 then
    return "Msg Type: Sequence Reset Message (100)"
  end
  if value == 311 then
    return "Msg Type: Market State Contract Message (311)"
  end
  if value == 312 then
    return "Msg Type: Market State Instrument Message (312)"
  end
  if value == 320 then
    return "Msg Type: Indicative Opening Price Message (320)"
  end
  if value == 329 then
    return "Msg Type: Quote Request Message (329)"
  end
  if value == 327 then
    return "Msg Type: Order Book Clear Message (327)"
  end
  if value == 330 then
    return "Msg Type: Cross Request Message (330)"
  end
  if value == 323 then
    return "Msg Type: Order Add Message (323)"
  end
  if value == 324 then
    return "Msg Type: Order Amend Message (324)"
  end
  if value == 325 then
    return "Msg Type: Order Cancel Message (325)"
  end
  if value == 326 then
    return "Msg Type: Order Executed Message (326)"
  end
  if value == 101 then
    return "Msg Type: Logon Message (101)"
  end
  if value == 102 then
    return "Msg Type: Logon Response Message (102)"
  end
  if value == 201 then
    return "Msg Type: Retransmission Request Message (201)"
  end
  if value == 202 then
    return "Msg Type: Retransmission Response Message (202)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
lme_lmeselect_level3retransmission_lmesource_v4_18.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
lme_lmeselect_level3retransmission_lmesource_v4_18.new_seq_no = {}

-- Size: New Seq No
lme_lmeselect_level3retransmission_lmesource_v4_18.new_seq_no.size = 4

-- Display: New Seq No
lme_lmeselect_level3retransmission_lmesource_v4_18.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
lme_lmeselect_level3retransmission_lmesource_v4_18.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Order Book Position
lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_position = {}

-- Size: Order Book Position
lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_position.size = 4

-- Display: Order Book Position
lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_position.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Order Id
lme_lmeselect_level3retransmission_lmesource_v4_18.order_id = {}

-- Size: Order Id
lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.size = 8

-- Display: Order Id
lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id: No Value"
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_id, range, value, display)

  return offset + length, value
end

-- Pkt Size
lme_lmeselect_level3retransmission_lmesource_v4_18.pkt_size = {}

-- Size: Pkt Size
lme_lmeselect_level3retransmission_lmesource_v4_18.pkt_size.size = 2

-- Display: Pkt Size
lme_lmeselect_level3retransmission_lmesource_v4_18.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
lme_lmeselect_level3retransmission_lmesource_v4_18.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Price
lme_lmeselect_level3retransmission_lmesource_v4_18.price = {}

-- Size: Price
lme_lmeselect_level3retransmission_lmesource_v4_18.price.size = 8

-- Display: Price
lme_lmeselect_level3retransmission_lmesource_v4_18.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
lme_lmeselect_level3retransmission_lmesource_v4_18.price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Price
lme_lmeselect_level3retransmission_lmesource_v4_18.price.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_level3retransmission_lmesource_v4_18.price.translate(raw)
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.price, range, value, display)

  return offset + length, value
end

-- Quote Request Type
lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_type = {}

-- Size: Quote Request Type
lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_type.size = 1

-- Display: Quote Request Type
lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_type.display = function(value)
  if value == 1 then
    return "Quote Request Type: Manual A Single Quote Request (1)"
  end
  if value == 2 then
    return "Quote Request Type: Auto A Streaming Quote Request (2)"
  end

  return "Quote Request Type: Unknown("..value..")"
end

-- Dissect: Quote Request Type
lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.quote_request_type, range, value, display)

  return offset + length, value
end

-- Retrans Status
lme_lmeselect_level3retransmission_lmesource_v4_18.retrans_status = {}

-- Size: Retrans Status
lme_lmeselect_level3retransmission_lmesource_v4_18.retrans_status.size = 1

-- Display: Retrans Status
lme_lmeselect_level3retransmission_lmesource_v4_18.retrans_status.display = function(value)
  if value == 0 then
    return "Retrans Status: Request Accepted (0)"
  end
  if value == 1 then
    return "Retrans Status: Unknown Or Unauthorized Channel Id (1)"
  end
  if value == 2 then
    return "Retrans Status: Messages Not Available (2)"
  end
  if value == 100 then
    return "Retrans Status: Exceeds Maximum Sequence Range (100)"
  end
  if value == 101 then
    return "Retrans Status: Exceeds Maximum Requests In A Day (101)"
  end

  return "Retrans Status: Unknown("..value..")"
end

-- Dissect: Retrans Status
lme_lmeselect_level3retransmission_lmesource_v4_18.retrans_status.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.retrans_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.retrans_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.retrans_status, range, value, display)

  return offset + length, value
end

-- Send Time
lme_lmeselect_level3retransmission_lmesource_v4_18.send_time = {}

-- Size: Send Time
lme_lmeselect_level3retransmission_lmesource_v4_18.send_time.size = 8

-- Display: Send Time
lme_lmeselect_level3retransmission_lmesource_v4_18.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
lme_lmeselect_level3retransmission_lmesource_v4_18.send_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.seq_num = {}

-- Size: Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.seq_num.size = 4

-- Display: Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
lme_lmeselect_level3retransmission_lmesource_v4_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session Status
lme_lmeselect_level3retransmission_lmesource_v4_18.session_status = {}

-- Size: Session Status
lme_lmeselect_level3retransmission_lmesource_v4_18.session_status.size = 1

-- Display: Session Status
lme_lmeselect_level3retransmission_lmesource_v4_18.session_status.display = function(value)
  if value == 0 then
    return "Session Status: Session Active (0)"
  end
  if value == 5 then
    return "Session Status: Invalid Username Or Ip Address (5)"
  end
  if value == 100 then
    return "Session Status: User Already Connected (100)"
  end

  return "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
lme_lmeselect_level3retransmission_lmesource_v4_18.session_status.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.session_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.session_status, range, value, display)

  return offset + length, value
end

-- Start Time
lme_lmeselect_level3retransmission_lmesource_v4_18.start_time = {}

-- Size: Start Time
lme_lmeselect_level3retransmission_lmesource_v4_18.start_time.size = 8

-- Display: Start Time
lme_lmeselect_level3retransmission_lmesource_v4_18.start_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Start Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Start Time
lme_lmeselect_level3retransmission_lmesource_v4_18.start_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.start_time, range, value, display)

  return offset + length, value
end

-- Strategy Leg Count
lme_lmeselect_level3retransmission_lmesource_v4_18.strategy_leg_count = {}

-- Size: Strategy Leg Count
lme_lmeselect_level3retransmission_lmesource_v4_18.strategy_leg_count.size = 4

-- Display: Strategy Leg Count
lme_lmeselect_level3retransmission_lmesource_v4_18.strategy_leg_count.display = function(value)
  return "Strategy Leg Count: "..value
end

-- Dissect: Strategy Leg Count
lme_lmeselect_level3retransmission_lmesource_v4_18.strategy_leg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.strategy_leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.strategy_leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.strategy_leg_count, range, value, display)

  return offset + length, value
end

-- Sub Type Of Trade
lme_lmeselect_level3retransmission_lmesource_v4_18.sub_type_of_trade = {}

-- Size: Sub Type Of Trade
lme_lmeselect_level3retransmission_lmesource_v4_18.sub_type_of_trade.size = 1

-- Display: Sub Type Of Trade
lme_lmeselect_level3retransmission_lmesource_v4_18.sub_type_of_trade.display = function(value)
  if value == 1 then
    return "Sub Type Of Trade: The Trade Resulted From An Explicit Order (1)"
  end
  if value == 2 then
    return "Sub Type Of Trade: The Trade Resulted From Uncrossing (2)"
  end
  if value == 7 then
    return "Sub Type Of Trade: The Trade Resulted From An Implied Order (7)"
  end
  if value == 8 then
    return "Sub Type Of Trade: The Trade Resulted From Two Implied Orders Matching (8)"
  end
  if value == 9 then
    return "Sub Type Of Trade: The Trade Resulted From An Off Book Cross Trade (9)"
  end

  return "Sub Type Of Trade: Unknown("..value..")"
end

-- Dissect: Sub Type Of Trade
lme_lmeselect_level3retransmission_lmesource_v4_18.sub_type_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.sub_type_of_trade.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.sub_type_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.sub_type_of_trade, range, value, display)

  return offset + length, value
end

-- T 1
lme_lmeselect_level3retransmission_lmesource_v4_18.t_1 = {}

-- Size: T 1
lme_lmeselect_level3retransmission_lmesource_v4_18.t_1.size = 8

-- Display: T 1
lme_lmeselect_level3retransmission_lmesource_v4_18.t_1.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "T 1: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "T 1: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: T 1
lme_lmeselect_level3retransmission_lmesource_v4_18.t_1.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.t_1.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.t_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.t_1, range, value, display)

  return offset + length, value
end

-- T 2
lme_lmeselect_level3retransmission_lmesource_v4_18.t_2 = {}

-- Size: T 2
lme_lmeselect_level3retransmission_lmesource_v4_18.t_2.size = 8

-- Display: T 2
lme_lmeselect_level3retransmission_lmesource_v4_18.t_2.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "T 2: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "T 2: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: T 2
lme_lmeselect_level3retransmission_lmesource_v4_18.t_2.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.t_2.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.t_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.t_2, range, value, display)

  return offset + length, value
end

-- T 3
lme_lmeselect_level3retransmission_lmesource_v4_18.t_3 = {}

-- Size: T 3
lme_lmeselect_level3retransmission_lmesource_v4_18.t_3.size = 8

-- Display: T 3
lme_lmeselect_level3retransmission_lmesource_v4_18.t_3.display = function(value)
  -- Check null value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "T 3: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "T 3: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: T 3
lme_lmeselect_level3retransmission_lmesource_v4_18.t_3.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.t_3.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.t_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.t_3, range, value, display)

  return offset + length, value
end

-- Time Of Event
lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event = {}

-- Size: Time Of Event
lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size = 8

-- Display: Time Of Event
lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Time Of Event: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Time Of Event
lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.time_of_event, range, value, display)

  return offset + length, value
end

-- Timetable Control Type
lme_lmeselect_level3retransmission_lmesource_v4_18.timetable_control_type = {}

-- Size: Timetable Control Type
lme_lmeselect_level3retransmission_lmesource_v4_18.timetable_control_type.size = 1

-- Display: Timetable Control Type
lme_lmeselect_level3retransmission_lmesource_v4_18.timetable_control_type.display = function(value)
  if value == "A" then
    return "Timetable Control Type: Automatic The Default Trading Schedule (A)"
  end
  if value == "M" then
    return "Timetable Control Type: Manual A Temporary Trading Schedule (M)"
  end

  return "Timetable Control Type: Unknown("..value..")"
end

-- Dissect: Timetable Control Type
lme_lmeselect_level3retransmission_lmesource_v4_18.timetable_control_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.timetable_control_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.timetable_control_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.timetable_control_type, range, value, display)

  return offset + length, value
end

-- Tradable Instrument Id
lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id = {}

-- Size: Tradable Instrument Id
lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.size = 8

-- Display: Tradable Instrument Id
lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.display = function(value)
  return "Tradable Instrument Id: "..value
end

-- Dissect: Tradable Instrument Id
lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.tradable_instrument_id, range, value, display)

  return offset + length, value
end

-- Trade Buy Sell
lme_lmeselect_level3retransmission_lmesource_v4_18.trade_buy_sell = {}

-- Size: Trade Buy Sell
lme_lmeselect_level3retransmission_lmesource_v4_18.trade_buy_sell.size = 1

-- Display: Trade Buy Sell
lme_lmeselect_level3retransmission_lmesource_v4_18.trade_buy_sell.display = function(value)
  if value == "B" then
    return "Trade Buy Sell: Buy (B)"
  end
  if value == "S" then
    return "Trade Buy Sell: Sell (S)"
  end

  return "Trade Buy Sell: Unknown("..value..")"
end

-- Dissect: Trade Buy Sell
lme_lmeselect_level3retransmission_lmesource_v4_18.trade_buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.trade_buy_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.trade_buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.trade_buy_sell, range, value, display)

  return offset + length, value
end

-- Trade Cancel Flag
lme_lmeselect_level3retransmission_lmesource_v4_18.trade_cancel_flag = {}

-- Size: Trade Cancel Flag
lme_lmeselect_level3retransmission_lmesource_v4_18.trade_cancel_flag.size = 1

-- Display: Trade Cancel Flag
lme_lmeselect_level3retransmission_lmesource_v4_18.trade_cancel_flag.display = function(value)
  if value == 0 then
    return "Trade Cancel Flag: False (0)"
  end
  if value == 1 then
    return "Trade Cancel Flag: True (1)"
  end

  return "Trade Cancel Flag: Unknown("..value..")"
end

-- Dissect: Trade Cancel Flag
lme_lmeselect_level3retransmission_lmesource_v4_18.trade_cancel_flag.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.trade_cancel_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.trade_cancel_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.trade_cancel_flag, range, value, display)

  return offset + length, value
end

-- Trading State
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state = {}

-- Size: Trading State
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state.size = 1

-- Display: Trading State
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state.display = function(value)
  if value == 1 then
    return "Trading State: Pre Open (1)"
  end
  if value == 2 then
    return "Trading State: Open (2)"
  end
  if value == 3 then
    return "Trading State: Post Trade (3)"
  end
  if value == 4 then
    return "Trading State: Close (4)"
  end
  if value == 6 then
    return "Trading State: Technical Halt (6)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Trading State Condition
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state_condition = {}

-- Size: Trading State Condition
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state_condition.size = 1

-- Display: Trading State Condition
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state_condition.display = function(value)
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
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state_condition.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.trading_state_condition, range, value, display)

  return offset + length, value
end

-- Trading Venue
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue = {}

-- Size: Trading Venue
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size = 2

-- Display: Trading Venue
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.display = function(value)
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
lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.trading_venue, range, value, display)

  return offset + length, value
end

-- Username
lme_lmeselect_level3retransmission_lmesource_v4_18.username = {}

-- Size: Username
lme_lmeselect_level3retransmission_lmesource_v4_18.username.size = 12

-- Display: Username
lme_lmeselect_level3retransmission_lmesource_v4_18.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
lme_lmeselect_level3retransmission_lmesource_v4_18.username.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.username.size
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

  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.username, range, value, display)

  return offset + length, value
end

-- Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.volume = {}

-- Size: Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.volume.size = 4

-- Display: Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.volume.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Volume: No Value"
  end

  return "Volume: "..value
end

-- Dissect: Volume
lme_lmeselect_level3retransmission_lmesource_v4_18.volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_level3retransmission_lmesource_v4_18.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_level3retransmission_lmesource_v4_18.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lme LmeSelect Level3Retransmission LmeSource 4.18
-----------------------------------------------------------------------

-- Retransmission Response Message
lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_response_message = {}

-- Size: Retransmission Response Message
lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_response_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.channel_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.retrans_status.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.begin_seq_num.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.end_seq_num.size

-- Display: Retransmission Response Message
lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Response Message
lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = lme_lmeselect_level3retransmission_lmesource_v4_18.channel_id.dissect(buffer, index, packet, parent)

  -- Retrans Status: Uint8
  index, retrans_status = lme_lmeselect_level3retransmission_lmesource_v4_18.retrans_status.dissect(buffer, index, packet, parent)

  -- Filler String 1: String
  index, filler_string_1 = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = lme_lmeselect_level3retransmission_lmesource_v4_18.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = lme_lmeselect_level3retransmission_lmesource_v4_18.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Response Message
lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.retransmission_response_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_request_message = {}

-- Size: Retransmission Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_request_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.channel_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.begin_seq_num.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.end_seq_num.size

-- Display: Retransmission Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = lme_lmeselect_level3retransmission_lmesource_v4_18.channel_id.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = lme_lmeselect_level3retransmission_lmesource_v4_18.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = lme_lmeselect_level3retransmission_lmesource_v4_18.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.retransmission_request_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
lme_lmeselect_level3retransmission_lmesource_v4_18.logon_response_message = {}

-- Size: Logon Response Message
lme_lmeselect_level3retransmission_lmesource_v4_18.logon_response_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.session_status.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_3.size

-- Display: Logon Response Message
lme_lmeselect_level3retransmission_lmesource_v4_18.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
lme_lmeselect_level3retransmission_lmesource_v4_18.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Status: Uint8
  index, session_status = lme_lmeselect_level3retransmission_lmesource_v4_18.session_status.dissect(buffer, index, packet, parent)

  -- Filler String 3: String
  index, filler_string_3 = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
lme_lmeselect_level3retransmission_lmesource_v4_18.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.logon_response_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
lme_lmeselect_level3retransmission_lmesource_v4_18.logon_message = {}

-- Size: Logon Message
lme_lmeselect_level3retransmission_lmesource_v4_18.logon_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.username.size

-- Display: Logon Message
lme_lmeselect_level3retransmission_lmesource_v4_18.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
lme_lmeselect_level3retransmission_lmesource_v4_18.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: String
  index, username = lme_lmeselect_level3retransmission_lmesource_v4_18.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
lme_lmeselect_level3retransmission_lmesource_v4_18.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.logon_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Executed Legs
lme_lmeselect_level3retransmission_lmesource_v4_18.executed_legs = {}

-- Size: Executed Legs
lme_lmeselect_level3retransmission_lmesource_v4_18.executed_legs.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.leg_tradable_instrument_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.leg_buy_sell.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.leg_price.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.leg_volume.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.leg_match_id.size

-- Display: Executed Legs
lme_lmeselect_level3retransmission_lmesource_v4_18.executed_legs.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Executed Legs
lme_lmeselect_level3retransmission_lmesource_v4_18.executed_legs.fields = function(buffer, offset, packet, parent, executed_legs_index)
  local index = offset

  -- Implicit Executed Legs Index
  if executed_legs_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.executed_legs_index, executed_legs_index)
    iteration:set_generated()
  end

  -- Leg Tradable Instrument Id: Uint64
  index, leg_tradable_instrument_id = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Buy Sell: String
  index, leg_buy_sell = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_buy_sell.dissect(buffer, index, packet, parent)

  -- Leg Price: Int64
  index, leg_price = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Volume: Uint32
  index, leg_volume = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_volume.dissect(buffer, index, packet, parent)

  -- Leg Match Id: Uint64
  index, leg_match_id = lme_lmeselect_level3retransmission_lmesource_v4_18.leg_match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Executed Legs
lme_lmeselect_level3retransmission_lmesource_v4_18.executed_legs.dissect = function(buffer, offset, packet, parent, executed_legs_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.executed_legs, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.executed_legs.fields(buffer, offset, packet, parent, executed_legs_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.executed_legs.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.executed_legs.fields(buffer, offset, packet, parent, executed_legs_index)
  end
end

-- Order Executed Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_executed_message = {}

-- Calculate size of: Order Executed Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.size

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.price.size

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.volume.size

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.size

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.match_id.size

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.trade_cancel_flag.size

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.sub_type_of_trade.size

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.trade_buy_sell.size

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.strategy_leg_count.size

  -- Calculate field size from count
  local executed_legs_count = buffer(offset + index - 4, 4):le_uint()
  index = index + executed_legs_count * 29

  return index
end

-- Display: Order Executed Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Price: Int64
  index, price = lme_lmeselect_level3retransmission_lmesource_v4_18.price.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_level3retransmission_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.dissect(buffer, index, packet, parent)

  -- Match Id: Uint64
  index, match_id = lme_lmeselect_level3retransmission_lmesource_v4_18.match_id.dissect(buffer, index, packet, parent)

  -- Trade Cancel Flag: Uint8
  index, trade_cancel_flag = lme_lmeselect_level3retransmission_lmesource_v4_18.trade_cancel_flag.dissect(buffer, index, packet, parent)

  -- Sub Type Of Trade: Uint8
  index, sub_type_of_trade = lme_lmeselect_level3retransmission_lmesource_v4_18.sub_type_of_trade.dissect(buffer, index, packet, parent)

  -- Trade Buy Sell: String
  index, trade_buy_sell = lme_lmeselect_level3retransmission_lmesource_v4_18.trade_buy_sell.dissect(buffer, index, packet, parent)

  -- Strategy Leg Count: Uint32
  index, strategy_leg_count = lme_lmeselect_level3retransmission_lmesource_v4_18.strategy_leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Executed Legs
  for executed_legs_index = 1, strategy_leg_count do
    index, executed_legs = lme_lmeselect_level3retransmission_lmesource_v4_18.executed_legs.dissect(buffer, index, packet, parent, executed_legs_index)
  end

  return index
end

-- Dissect: Order Executed Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_executed_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_cancel_message = {}

-- Size: Order Cancel Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_cancel_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.t_1.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.t_2.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.t_3.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.size

-- Display: Order Cancel Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- T 1: Uint64
  index, t_1 = lme_lmeselect_level3retransmission_lmesource_v4_18.t_1.dissect(buffer, index, packet, parent)

  -- T 2: Uint64
  index, t_2 = lme_lmeselect_level3retransmission_lmesource_v4_18.t_2.dissect(buffer, index, packet, parent)

  -- T 3: Uint64
  index, t_3 = lme_lmeselect_level3retransmission_lmesource_v4_18.t_3.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.dissect(buffer, index, packet, parent)

  -- Buy Sell: String
  index, buy_sell = lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.dissect(buffer, index, packet, parent)

  -- Filler String 1: String
  index, filler_string_1 = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_cancel_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Amend Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_amend_message = {}

-- Size: Order Amend Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_amend_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.t_1.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.t_2.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.t_3.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.volume.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.price.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_position.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.size

-- Display: Order Amend Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_amend_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Amend Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_amend_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- T 1: Uint64
  index, t_1 = lme_lmeselect_level3retransmission_lmesource_v4_18.t_1.dissect(buffer, index, packet, parent)

  -- T 2: Uint64
  index, t_2 = lme_lmeselect_level3retransmission_lmesource_v4_18.t_2.dissect(buffer, index, packet, parent)

  -- T 3: Uint64
  index, t_3 = lme_lmeselect_level3retransmission_lmesource_v4_18.t_3.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.dissect(buffer, index, packet, parent)

  -- Buy Sell: String
  index, buy_sell = lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_level3retransmission_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  -- Price: Int64
  index, price = lme_lmeselect_level3retransmission_lmesource_v4_18.price.dissect(buffer, index, packet, parent)

  -- Order Book Position: Uint32
  index, order_book_position = lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_position.dissect(buffer, index, packet, parent)

  -- Filler String 1: String
  index, filler_string_1 = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Amend Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_amend_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_amend_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.order_amend_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.order_amend_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.order_amend_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_add_message = {}

-- Size: Order Add Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_add_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.t_1.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.t_2.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.t_3.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.volume.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.price.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_position.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.size

-- Display: Order Add Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- T 1: Uint64
  index, t_1 = lme_lmeselect_level3retransmission_lmesource_v4_18.t_1.dissect(buffer, index, packet, parent)

  -- T 2: Uint64
  index, t_2 = lme_lmeselect_level3retransmission_lmesource_v4_18.t_2.dissect(buffer, index, packet, parent)

  -- T 3: Uint64
  index, t_3 = lme_lmeselect_level3retransmission_lmesource_v4_18.t_3.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Order Id: Uint64
  index, order_id = lme_lmeselect_level3retransmission_lmesource_v4_18.order_id.dissect(buffer, index, packet, parent)

  -- Buy Sell: String
  index, buy_sell = lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_level3retransmission_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  -- Price: Int64
  index, price = lme_lmeselect_level3retransmission_lmesource_v4_18.price.dissect(buffer, index, packet, parent)

  -- Order Book Position: Uint32
  index, order_book_position = lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_position.dissect(buffer, index, packet, parent)

  -- Filler String 1: String
  index, filler_string_1 = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_add_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.cross_request_message = {}

-- Size: Cross Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.cross_request_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.cross_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.volume.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.expire_time.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.size

-- Display: Cross Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.cross_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.cross_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Cross Id: Uint64
  index, cross_id = lme_lmeselect_level3retransmission_lmesource_v4_18.cross_id.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_level3retransmission_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  -- Expire Time: Uint64
  index, expire_time = lme_lmeselect_level3retransmission_lmesource_v4_18.expire_time.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.cross_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.cross_request_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.cross_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.cross_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.cross_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_clear_message = {}

-- Size: Order Book Clear Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_clear_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.size

-- Display: Order Book Clear Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.order_book_clear_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_message = {}

-- Size: Quote Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_type.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.volume.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.size

-- Display: Quote Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Request Type: Uint8
  index, quote_request_type = lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_type.dissect(buffer, index, packet, parent)

  -- Buy Sell: String
  index, buy_sell = lme_lmeselect_level3retransmission_lmesource_v4_18.buy_sell.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_level3retransmission_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.quote_request_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Opening Price Message
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price_message = {}

-- Size: Indicative Opening Price Message
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_volume.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_mid_price.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.size

-- Display: Indicative Opening Price Message
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Opening Price Message
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Indicative Opening Price: Int64
  index, indicative_opening_price = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price.dissect(buffer, index, packet, parent)

  -- Indicative Opening Volume: Uint32
  index, indicative_opening_volume = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_volume.dissect(buffer, index, packet, parent)

  -- Indicative Opening Mid Price: Int64
  index, indicative_opening_mid_price = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_mid_price.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Opening Price Message
lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.indicative_opening_price_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State Instrument Message
lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_instrument_message = {}

-- Size: Market State Instrument Message
lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_instrument_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.timetable_control_type.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.start_time.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.end_time.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state_condition.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_3.size

-- Display: Market State Instrument Message
lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_instrument_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market State Instrument Message
lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_instrument_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Tradable Instrument Id: Uint64
  index, tradable_instrument_id = lme_lmeselect_level3retransmission_lmesource_v4_18.tradable_instrument_id.dissect(buffer, index, packet, parent)

  -- Timetable Control Type: String
  index, timetable_control_type = lme_lmeselect_level3retransmission_lmesource_v4_18.timetable_control_type.dissect(buffer, index, packet, parent)

  -- Trading State: Uint8
  index, trading_state = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state.dissect(buffer, index, packet, parent)

  -- Start Time: Uint64
  index, start_time = lme_lmeselect_level3retransmission_lmesource_v4_18.start_time.dissect(buffer, index, packet, parent)

  -- End Time: Uint64
  index, end_time = lme_lmeselect_level3retransmission_lmesource_v4_18.end_time.dissect(buffer, index, packet, parent)

  -- Trading State Condition: String
  index, trading_state_condition = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state_condition.dissect(buffer, index, packet, parent)

  -- Filler String 3: String
  index, filler_string_3 = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Instrument Message
lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_instrument_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.market_state_instrument_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_instrument_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_instrument_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_instrument_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State Contract Message
lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_contract_message = {}

-- Size: Market State Contract Message
lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_contract_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.contract_code.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.start_time.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.end_time.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state_condition.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.size

-- Display: Market State Contract Message
lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_contract_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market State Contract Message
lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_contract_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Venue: String
  index, trading_venue = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_venue.dissect(buffer, index, packet, parent)

  -- Time Of Event: Uint64
  index, time_of_event = lme_lmeselect_level3retransmission_lmesource_v4_18.time_of_event.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_level3retransmission_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Trading State: Uint8
  index, trading_state = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state.dissect(buffer, index, packet, parent)

  -- Start Time: Uint64
  index, start_time = lme_lmeselect_level3retransmission_lmesource_v4_18.start_time.dissect(buffer, index, packet, parent)

  -- End Time: Uint64
  index, end_time = lme_lmeselect_level3retransmission_lmesource_v4_18.end_time.dissect(buffer, index, packet, parent)

  -- Trading State Condition: String
  index, trading_state_condition = lme_lmeselect_level3retransmission_lmesource_v4_18.trading_state_condition.dissect(buffer, index, packet, parent)

  -- Filler String 2: String
  index, filler_string_2 = lme_lmeselect_level3retransmission_lmesource_v4_18.filler_string_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Contract Message
lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_contract_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.market_state_contract_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_contract_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_contract_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_contract_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
lme_lmeselect_level3retransmission_lmesource_v4_18.sequence_reset_message = {}

-- Size: Sequence Reset Message
lme_lmeselect_level3retransmission_lmesource_v4_18.sequence_reset_message.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.new_seq_no.size

-- Display: Sequence Reset Message
lme_lmeselect_level3retransmission_lmesource_v4_18.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
lme_lmeselect_level3retransmission_lmesource_v4_18.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = lme_lmeselect_level3retransmission_lmesource_v4_18.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
lme_lmeselect_level3retransmission_lmesource_v4_18.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.sequence_reset_message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lme_lmeselect_level3retransmission_lmesource_v4_18.payload = {}

-- Dissect: Payload
lme_lmeselect_level3retransmission_lmesource_v4_18.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Sequence Reset Message
  if msg_type == 100 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.sequence_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market State Contract Message
  if msg_type == 311 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_contract_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market State Instrument Message
  if msg_type == 312 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.market_state_instrument_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Indicative Opening Price Message
  if msg_type == 320 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.indicative_opening_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Message
  if msg_type == 329 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.quote_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if msg_type == 327 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Request Message
  if msg_type == 330 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.cross_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Add Message
  if msg_type == 323 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.order_add_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Amend Message
  if msg_type == 324 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.order_amend_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if msg_type == 325 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if msg_type == 326 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Message
  if msg_type == 101 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Response Message
  if msg_type == 102 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.logon_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if msg_type == 201 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Response Message
  if msg_type == 202 then
    return lme_lmeselect_level3retransmission_lmesource_v4_18.retransmission_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lme_lmeselect_level3retransmission_lmesource_v4_18.message_header = {}

-- Size: Message Header
lme_lmeselect_level3retransmission_lmesource_v4_18.message_header.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.msg_size.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.msg_type.size

-- Display: Message Header
lme_lmeselect_level3retransmission_lmesource_v4_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lme_lmeselect_level3retransmission_lmesource_v4_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = lme_lmeselect_level3retransmission_lmesource_v4_18.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = lme_lmeselect_level3retransmission_lmesource_v4_18.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lme_lmeselect_level3retransmission_lmesource_v4_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.message_header, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lme_lmeselect_level3retransmission_lmesource_v4_18.message = {}

-- Calculate size of: Message
lme_lmeselect_level3retransmission_lmesource_v4_18.message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_level3retransmission_lmesource_v4_18.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Message
lme_lmeselect_level3retransmission_lmesource_v4_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lme_lmeselect_level3retransmission_lmesource_v4_18.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lme_lmeselect_level3retransmission_lmesource_v4_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 15 branches
  index = lme_lmeselect_level3retransmission_lmesource_v4_18.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
lme_lmeselect_level3retransmission_lmesource_v4_18.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.message, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
lme_lmeselect_level3retransmission_lmesource_v4_18.packet_header = {}

-- Size: Packet Header
lme_lmeselect_level3retransmission_lmesource_v4_18.packet_header.size =
  lme_lmeselect_level3retransmission_lmesource_v4_18.pkt_size.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.msg_count.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.filler.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.seq_num.size + 
  lme_lmeselect_level3retransmission_lmesource_v4_18.send_time.size

-- Display: Packet Header
lme_lmeselect_level3retransmission_lmesource_v4_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
lme_lmeselect_level3retransmission_lmesource_v4_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: Uint16
  index, pkt_size = lme_lmeselect_level3retransmission_lmesource_v4_18.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: Uint8
  index, msg_count = lme_lmeselect_level3retransmission_lmesource_v4_18.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = lme_lmeselect_level3retransmission_lmesource_v4_18.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: Uint32
  index, seq_num = lme_lmeselect_level3retransmission_lmesource_v4_18.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Uint64
  index, send_time = lme_lmeselect_level3retransmission_lmesource_v4_18.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
lme_lmeselect_level3retransmission_lmesource_v4_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18.fields.packet_header, buffer(offset, 0))
    local index = lme_lmeselect_level3retransmission_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_level3retransmission_lmesource_v4_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_level3retransmission_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lme_lmeselect_level3retransmission_lmesource_v4_18.packet = {}

-- Verify required size of Tcp packet
lme_lmeselect_level3retransmission_lmesource_v4_18.packet.requiredsize = function(buffer)
  return buffer:len() >= lme_lmeselect_level3retransmission_lmesource_v4_18.packet_header.size
end

-- Dissect Packet
lme_lmeselect_level3retransmission_lmesource_v4_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = lme_lmeselect_level3retransmission_lmesource_v4_18.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do
    index, message = lme_lmeselect_level3retransmission_lmesource_v4_18.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lme_lmeselect_level3retransmission_lmesource_v4_18.init()
end

-- Dissector for Lme LmeSelect Level3Retransmission LmeSource 4.18
function omi_lme_lmeselect_level3retransmission_lmesource_v4_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lme_lmeselect_level3retransmission_lmesource_v4_18.name

  local length = buffer:len()
  local offset = 0

  -- Dissect each message the segment carries
  while offset < length do
    local protocol = parent:add(omi_lme_lmeselect_level3retransmission_lmesource_v4_18, buffer(offset), omi_lme_lmeselect_level3retransmission_lmesource_v4_18.description, "("..(length - offset).." Bytes)")
    local consumed = lme_lmeselect_level3retransmission_lmesource_v4_18.packet.dissect(buffer(offset):tvb(), packet, protocol)

    if consumed == nil or consumed <= 0 then
      return offset
    end

    protocol:set_len(consumed)
    offset = offset + consumed
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lme LmeSelect Level3Retransmission LmeSource 4.18 (Tcp)
local function omi_lme_lmeselect_level3retransmission_lmesource_v4_18_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lme_lmeselect_level3retransmission_lmesource_v4_18.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lme_lmeselect_level3retransmission_lmesource_v4_18
  omi_lme_lmeselect_level3retransmission_lmesource_v4_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lme LmeSelect Level3Retransmission LmeSource 4.18
omi_lme_lmeselect_level3retransmission_lmesource_v4_18:register_heuristic("tcp", omi_lme_lmeselect_level3retransmission_lmesource_v4_18_tcp_heuristic)

-- Register Lme LmeSelect Level3Retransmission LmeSource 4.18 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_lme_lmeselect_level3retransmission_lmesource_v4_18)

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
