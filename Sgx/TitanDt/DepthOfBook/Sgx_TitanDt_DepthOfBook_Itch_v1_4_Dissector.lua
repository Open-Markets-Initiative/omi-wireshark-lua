-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Sgx TitanDt DepthOfBook Itch 1.4 Protocol
local omi_sgx_titandt_depthofbook_itch_v1_4 = Proto("Omi.Sgx.TitanDt.DepthOfBook.Itch.v1.4", "Sgx TitanDt DepthOfBook Itch 1.4")

-- Protocol table
local sgx_titandt_depthofbook_itch_v1_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Sgx TitanDt DepthOfBook Itch 1.4 Fields
omi_sgx_titandt_depthofbook_itch_v1_4.fields.available_ask_quantity_at_equilibrium_price = ProtoField.new("Available Ask Quantity At Equilibrium Price", "sgx.titandt.depthofbook.itch.v1.4.availableaskquantityatequilibriumprice", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.available_bid_quantity_at_equilibrium_price = ProtoField.new("Available Bid Quantity At Equilibrium Price", "sgx.titandt.depthofbook.itch.v1.4.availablebidquantityatequilibriumprice", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.bait_implied_order = ProtoField.new("Bait Implied Order", "sgx.titandt.depthofbook.itch.v1.4.baitimpliedorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.best_ask_price = ProtoField.new("Best Ask Price", "sgx.titandt.depthofbook.itch.v1.4.bestaskprice", ftypes.INT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "sgx.titandt.depthofbook.itch.v1.4.bestaskquantity", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.best_bid_price = ProtoField.new("Best Bid Price", "sgx.titandt.depthofbook.itch.v1.4.bestbidprice", ftypes.INT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "sgx.titandt.depthofbook.itch.v1.4.bestbidquantity", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.combo_group_id = ProtoField.new("Combo Group Id", "sgx.titandt.depthofbook.itch.v1.4.combogroupid", ftypes.UINT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "sgx.titandt.depthofbook.itch.v1.4.equilibriumprice", ftypes.INT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.event_code = ProtoField.new("Event Code", "sgx.titandt.depthofbook.itch.v1.4.eventcode", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.executed_quantity = ProtoField.new("Executed Quantity", "sgx.titandt.depthofbook.itch.v1.4.executedquantity", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.financial_product = ProtoField.new("Financial Product", "sgx.titandt.depthofbook.itch.v1.4.financialproduct", ftypes.UINT8)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_1_ratio = ProtoField.new("Leg 1 Ratio", "sgx.titandt.depthofbook.itch.v1.4.leg1ratio", ftypes.UINT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_1_side = ProtoField.new("Leg 1 Side", "sgx.titandt.depthofbook.itch.v1.4.leg1side", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_1_symbol = ProtoField.new("Leg 1 Symbol", "sgx.titandt.depthofbook.itch.v1.4.leg1symbol", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_2_ratio = ProtoField.new("Leg 2 Ratio", "sgx.titandt.depthofbook.itch.v1.4.leg2ratio", ftypes.UINT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_2_side = ProtoField.new("Leg 2 Side", "sgx.titandt.depthofbook.itch.v1.4.leg2side", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_2_symbol = ProtoField.new("Leg 2 Symbol", "sgx.titandt.depthofbook.itch.v1.4.leg2symbol", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_3_ratio = ProtoField.new("Leg 3 Ratio", "sgx.titandt.depthofbook.itch.v1.4.leg3ratio", ftypes.UINT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_3_side = ProtoField.new("Leg 3 Side", "sgx.titandt.depthofbook.itch.v1.4.leg3side", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_3_symbol = ProtoField.new("Leg 3 Symbol", "sgx.titandt.depthofbook.itch.v1.4.leg3symbol", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_4_ratio = ProtoField.new("Leg 4 Ratio", "sgx.titandt.depthofbook.itch.v1.4.leg4ratio", ftypes.UINT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_4_side = ProtoField.new("Leg 4 Side", "sgx.titandt.depthofbook.itch.v1.4.leg4side", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_4_symbol = ProtoField.new("Leg 4 Symbol", "sgx.titandt.depthofbook.itch.v1.4.leg4symbol", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.long_name = ProtoField.new("Long Name", "sgx.titandt.depthofbook.itch.v1.4.longname", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.lot_type = ProtoField.new("Lot Type", "sgx.titandt.depthofbook.itch.v1.4.lottype", ftypes.UINT8)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.match_id = ProtoField.new("Match Id", "sgx.titandt.depthofbook.itch.v1.4.matchid", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_count = ProtoField.new("Message Count", "sgx.titandt.depthofbook.itch.v1.4.messagecount", ftypes.UINT16)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_length = ProtoField.new("Message Length", "sgx.titandt.depthofbook.itch.v1.4.messagelength", ftypes.UINT16)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_type = ProtoField.new("Message Type", "sgx.titandt.depthofbook.itch.v1.4.messagetype", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.nanoseconds = ProtoField.new("Nanoseconds", "sgx.titandt.depthofbook.itch.v1.4.nanoseconds", ftypes.UINT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.new_order_book_position = ProtoField.new("New Order Book Position", "sgx.titandt.depthofbook.itch.v1.4.neworderbookposition", ftypes.UINT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.nominal_value = ProtoField.new("Nominal Value", "sgx.titandt.depthofbook.itch.v1.4.nominalvalue", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "sgx.titandt.depthofbook.itch.v1.4.numberofdecimalsinnominalvalue", ftypes.UINT16)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "sgx.titandt.depthofbook.itch.v1.4.numberofdecimalsinprice", ftypes.UINT16)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.occurred_at_cross = ProtoField.new("Occurred At Cross", "sgx.titandt.depthofbook.itch.v1.4.occurredatcross", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_attributes = ProtoField.new("Order Attributes", "sgx.titandt.depthofbook.itch.v1.4.orderattributes", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_book_id = ProtoField.new("Order Book Id", "sgx.titandt.depthofbook.itch.v1.4.orderbookid", ftypes.UINT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_book_position = ProtoField.new("Order Book Position", "sgx.titandt.depthofbook.itch.v1.4.orderbookposition", ftypes.UINT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_id = ProtoField.new("Order Id", "sgx.titandt.depthofbook.itch.v1.4.orderid", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.price = ProtoField.new("Price", "sgx.titandt.depthofbook.itch.v1.4.price", ftypes.INT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.price_from = ProtoField.new("Price From", "sgx.titandt.depthofbook.itch.v1.4.pricefrom", ftypes.INT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.price_to = ProtoField.new("Price To", "sgx.titandt.depthofbook.itch.v1.4.priceto", ftypes.INT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.printable = ProtoField.new("Printable", "sgx.titandt.depthofbook.itch.v1.4.printable", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.quantity = ProtoField.new("Quantity", "sgx.titandt.depthofbook.itch.v1.4.quantity", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_12 = ProtoField.new("Reserved 12", "sgx.titandt.depthofbook.itch.v1.4.reserved12", ftypes.BYTES)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_4_a = ProtoField.new("Reserved 4 A", "sgx.titandt.depthofbook.itch.v1.4.reserved4a", ftypes.BYTES)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_4_b = ProtoField.new("Reserved 4 B", "sgx.titandt.depthofbook.itch.v1.4.reserved4b", ftypes.BYTES)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_4_c = ProtoField.new("Reserved 4 C", "sgx.titandt.depthofbook.itch.v1.4.reserved4c", ftypes.BYTES)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_7_a = ProtoField.new("Reserved 7 A", "sgx.titandt.depthofbook.itch.v1.4.reserved7a", ftypes.BYTES)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_7_b = ProtoField.new("Reserved 7 B", "sgx.titandt.depthofbook.itch.v1.4.reserved7b", ftypes.BYTES)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_bits_1_to_13 = ProtoField.new("Reserved Bits 1 To 13", "sgx.titandt.depthofbook.itch.v1.4.reservedbits1to13", ftypes.UINT16, nil, base.DEC, 0x1FFF)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_bits_15_to_16 = ProtoField.new("Reserved Bits 15 To 16", "sgx.titandt.depthofbook.itch.v1.4.reservedbits15to16", ftypes.UINT16, nil, base.DEC, 0xC000)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.second = ProtoField.new("Second", "sgx.titandt.depthofbook.itch.v1.4.second", ftypes.UINT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.sequence_number = ProtoField.new("Sequence Number", "sgx.titandt.depthofbook.itch.v1.4.sequencenumber", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.session = ProtoField.new("Session", "sgx.titandt.depthofbook.itch.v1.4.session", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.side = ProtoField.new("Side", "sgx.titandt.depthofbook.itch.v1.4.side", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.state_name = ProtoField.new("State Name", "sgx.titandt.depthofbook.itch.v1.4.statename", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.symbol = ProtoField.new("Symbol", "sgx.titandt.depthofbook.itch.v1.4.symbol", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.tick_size = ProtoField.new("Tick Size", "sgx.titandt.depthofbook.itch.v1.4.ticksize", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.trade_price = ProtoField.new("Trade Price", "sgx.titandt.depthofbook.itch.v1.4.tradeprice", ftypes.INT32)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.trading_currency = ProtoField.new("Trading Currency", "sgx.titandt.depthofbook.itch.v1.4.tradingcurrency", ftypes.STRING)

-- Sgx TitanDt DepthOfBook Itch 1.4 Framing
omi_sgx_titandt_depthofbook_itch_v1_4.fields.message = ProtoField.new("Message", "sgx.titandt.depthofbook.itch.v1.4.message", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_header = ProtoField.new("Message Header", "sgx.titandt.depthofbook.itch.v1.4.messageheader", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.packet = ProtoField.new("Packet", "sgx.titandt.depthofbook.itch.v1.4.packet", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.packet_header = ProtoField.new("Packet Header", "sgx.titandt.depthofbook.itch.v1.4.packetheader", ftypes.STRING)

-- Sgx TitanDt DepthOfBook 1.4 Application Messages
omi_sgx_titandt_depthofbook_itch_v1_4.fields.add_order_message = ProtoField.new("Add Order Message", "sgx.titandt.depthofbook.itch.v1.4.addordermessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.combination_order_book_directory_message = ProtoField.new("Combination Order Book Directory Message", "sgx.titandt.depthofbook.itch.v1.4.combinationorderbookdirectorymessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.equilibrium_price_update_message = ProtoField.new("Equilibrium Price Update Message", "sgx.titandt.depthofbook.itch.v1.4.equilibriumpriceupdatemessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_book_directory_message = ProtoField.new("Order Book Directory Message", "sgx.titandt.depthofbook.itch.v1.4.orderbookdirectorymessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_book_state_message = ProtoField.new("Order Book State Message", "sgx.titandt.depthofbook.itch.v1.4.orderbookstatemessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_delete_message = ProtoField.new("Order Delete Message", "sgx.titandt.depthofbook.itch.v1.4.orderdeletemessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_executed_message = ProtoField.new("Order Executed Message", "sgx.titandt.depthofbook.itch.v1.4.orderexecutedmessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "sgx.titandt.depthofbook.itch.v1.4.orderexecutedwithpricemessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_replace_message = ProtoField.new("Order Replace Message", "sgx.titandt.depthofbook.itch.v1.4.orderreplacemessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.seconds_message = ProtoField.new("Seconds Message", "sgx.titandt.depthofbook.itch.v1.4.secondsmessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.system_event_message = ProtoField.new("System Event Message", "sgx.titandt.depthofbook.itch.v1.4.systemeventmessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.tick_size_table_entry_message = ProtoField.new("Tick Size Table Entry Message", "sgx.titandt.depthofbook.itch.v1.4.ticksizetableentrymessage", ftypes.STRING)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.trade_message = ProtoField.new("Trade Message", "sgx.titandt.depthofbook.itch.v1.4.trademessage", ftypes.STRING)

-- Sgx TitanDt DepthOfBook 1.4 Session Messages
omi_sgx_titandt_depthofbook_itch_v1_4.fields.end_of_session = ProtoField.new("End Of Session", "sgx.titandt.depthofbook.itch.v1.4.endofsession", ftypes.BYTES)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.heartbeat = ProtoField.new("Heartbeat", "sgx.titandt.depthofbook.itch.v1.4.heartbeat", ftypes.BYTES)

-- Sgx TitanDt DepthOfBook Itch 1.4 Generated Fields
omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_index = ProtoField.new("Message Index", "sgx.titandt.depthofbook.itch.v1.4.messageindex", ftypes.UINT16)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "sgx.titandt.depthofbook.itch.v1.4.messagesequencenumber", ftypes.UINT64)
omi_sgx_titandt_depthofbook_itch_v1_4.fields.timestamp = ProtoField.new("Timestamp", "sgx.titandt.depthofbook.itch.v1.4.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Sgx TitanDt DepthOfBook Itch 1.4 Formatting
-----------------------------------------------------------------------

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
sgx_titandt_depthofbook_itch_v1_4.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Sgx TitanDt DepthOfBook Itch 1.4 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Sgx TitanDt DepthOfBook Itch 1.4 Show Options
omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_sgx_titandt_depthofbook_itch_v1_4.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

-- Handle changed preferences
function omi_sgx_titandt_depthofbook_itch_v1_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_application_messages then
    show.application_messages = omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_application_messages
  end
  if show.headers ~= omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_headers then
    show.headers = omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_headers
  end
  if show.structs ~= omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_structs then
    show.structs = omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_structs
  end
  if show.indexes ~= omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_indexes then
    show.indexes = omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_indexes
  end
  if show.sequences ~= omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_sequences then
    show.sequences = omi_sgx_titandt_depthofbook_itch_v1_4.prefs.show_sequences
  end
  if sgx_titandt_depthofbook_itch_v1_4.format_timestamp ~= omi_sgx_titandt_depthofbook_itch_v1_4.prefs.format_timestamp then
    sgx_titandt_depthofbook_itch_v1_4.format_timestamp = omi_sgx_titandt_depthofbook_itch_v1_4.prefs.format_timestamp
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
sgx_titandt_depthofbook_itch_v1_4.conversation = {}
sgx_titandt_depthofbook_itch_v1_4.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
sgx_titandt_depthofbook_itch_v1_4.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
sgx_titandt_depthofbook_itch_v1_4.conversation.data = function(packet)
  local key = sgx_titandt_depthofbook_itch_v1_4.conversation.key(packet)
  local data = sgx_titandt_depthofbook_itch_v1_4.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} } }
    sgx_titandt_depthofbook_itch_v1_4.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
sgx_titandt_depthofbook_itch_v1_4.conversation.current = nil


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
-- Sgx TitanDt DepthOfBook Itch 1.4 Fields
-----------------------------------------------------------------------

-- Available Ask Quantity At Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.available_ask_quantity_at_equilibrium_price = {}

-- Size: Available Ask Quantity At Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.available_ask_quantity_at_equilibrium_price.size = 8

-- Display: Available Ask Quantity At Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.available_ask_quantity_at_equilibrium_price.display = function(value)
  return "Available Ask Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Ask Quantity At Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.available_ask_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.available_ask_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_itch_v1_4.available_ask_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.available_ask_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Available Bid Quantity At Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.available_bid_quantity_at_equilibrium_price = {}

-- Size: Available Bid Quantity At Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.available_bid_quantity_at_equilibrium_price.size = 8

-- Display: Available Bid Quantity At Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.available_bid_quantity_at_equilibrium_price.display = function(value)
  return "Available Bid Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Bid Quantity At Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.available_bid_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.available_bid_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_itch_v1_4.available_bid_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.available_bid_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Best Ask Price
sgx_titandt_depthofbook_itch_v1_4.best_ask_price = {}

-- Size: Best Ask Price
sgx_titandt_depthofbook_itch_v1_4.best_ask_price.size = 4

-- Display: Best Ask Price
sgx_titandt_depthofbook_itch_v1_4.best_ask_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Best Ask Price: No Value"
  end

  return "Best Ask Price: "..value
end

-- Dissect: Best Ask Price
sgx_titandt_depthofbook_itch_v1_4.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.best_ask_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = sgx_titandt_depthofbook_itch_v1_4.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Ask Quantity
sgx_titandt_depthofbook_itch_v1_4.best_ask_quantity = {}

-- Size: Best Ask Quantity
sgx_titandt_depthofbook_itch_v1_4.best_ask_quantity.size = 8

-- Display: Best Ask Quantity
sgx_titandt_depthofbook_itch_v1_4.best_ask_quantity.display = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
sgx_titandt_depthofbook_itch_v1_4.best_ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.best_ask_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_itch_v1_4.best_ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Best Bid Price
sgx_titandt_depthofbook_itch_v1_4.best_bid_price = {}

-- Size: Best Bid Price
sgx_titandt_depthofbook_itch_v1_4.best_bid_price.size = 4

-- Display: Best Bid Price
sgx_titandt_depthofbook_itch_v1_4.best_bid_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Best Bid Price: No Value"
  end

  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
sgx_titandt_depthofbook_itch_v1_4.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.best_bid_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = sgx_titandt_depthofbook_itch_v1_4.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Quantity
sgx_titandt_depthofbook_itch_v1_4.best_bid_quantity = {}

-- Size: Best Bid Quantity
sgx_titandt_depthofbook_itch_v1_4.best_bid_quantity.size = 8

-- Display: Best Bid Quantity
sgx_titandt_depthofbook_itch_v1_4.best_bid_quantity.display = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
sgx_titandt_depthofbook_itch_v1_4.best_bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.best_bid_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_itch_v1_4.best_bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Combo Group Id
sgx_titandt_depthofbook_itch_v1_4.combo_group_id = {}

-- Size: Combo Group Id
sgx_titandt_depthofbook_itch_v1_4.combo_group_id.size = 4

-- Display: Combo Group Id
sgx_titandt_depthofbook_itch_v1_4.combo_group_id.display = function(value)
  return "Combo Group Id: "..value
end

-- Dissect: Combo Group Id
sgx_titandt_depthofbook_itch_v1_4.combo_group_id.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.combo_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.combo_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.combo_group_id, range, value, display)

  return offset + length, value
end

-- Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.equilibrium_price = {}

-- Size: Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.equilibrium_price.size = 4

-- Display: Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.equilibrium_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Equilibrium Price: No Value"
  end

  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
sgx_titandt_depthofbook_itch_v1_4.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = sgx_titandt_depthofbook_itch_v1_4.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Event Code
sgx_titandt_depthofbook_itch_v1_4.event_code = {}

-- Size: Event Code
sgx_titandt_depthofbook_itch_v1_4.event_code.size = 1

-- Display: Event Code
sgx_titandt_depthofbook_itch_v1_4.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
sgx_titandt_depthofbook_itch_v1_4.event_code.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_itch_v1_4.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
sgx_titandt_depthofbook_itch_v1_4.executed_quantity = {}

-- Size: Executed Quantity
sgx_titandt_depthofbook_itch_v1_4.executed_quantity.size = 8

-- Display: Executed Quantity
sgx_titandt_depthofbook_itch_v1_4.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
sgx_titandt_depthofbook_itch_v1_4.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_itch_v1_4.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Financial Product
sgx_titandt_depthofbook_itch_v1_4.financial_product = {}

-- Size: Financial Product
sgx_titandt_depthofbook_itch_v1_4.financial_product.size = 1

-- Display: Financial Product
sgx_titandt_depthofbook_itch_v1_4.financial_product.display = function(value)
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
    return "Financial Product: Synthetic Box Leg Or Reference (10)"
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
sgx_titandt_depthofbook_itch_v1_4.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Leg 1 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_1_ratio = {}

-- Size: Leg 1 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_1_ratio.size = 4

-- Display: Leg 1 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_1_ratio.display = function(value)
  return "Leg 1 Ratio: "..value
end

-- Dissect: Leg 1 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_1_ratio.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_1_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_1_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_1_ratio, range, value, display)

  return offset + length, value
end

-- Leg 1 Side
sgx_titandt_depthofbook_itch_v1_4.leg_1_side = {}

-- Size: Leg 1 Side
sgx_titandt_depthofbook_itch_v1_4.leg_1_side.size = 1

-- Display: Leg 1 Side
sgx_titandt_depthofbook_itch_v1_4.leg_1_side.display = function(value)
  if value == "B" then
    return "Leg 1 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 1 Side: Opposite (C)"
  end

  return "Leg 1 Side: Unknown("..value..")"
end

-- Dissect: Leg 1 Side
sgx_titandt_depthofbook_itch_v1_4.leg_1_side.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_1_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_1_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_1_side, range, value, display)

  return offset + length, value
end

-- Leg 1 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_1_symbol = {}

-- Size: Leg 1 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_1_symbol.size = 32

-- Display: Leg 1 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_1_symbol.display = function(value)
  return "Leg 1 Symbol: "..value
end

-- Dissect: Leg 1 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_1_symbol.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_1_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_1_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_1_symbol, range, value, display)

  return offset + length, value
end

-- Leg 2 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_2_ratio = {}

-- Size: Leg 2 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_2_ratio.size = 4

-- Display: Leg 2 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_2_ratio.display = function(value)
  return "Leg 2 Ratio: "..value
end

-- Dissect: Leg 2 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_2_ratio.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_2_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_2_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_2_ratio, range, value, display)

  return offset + length, value
end

-- Leg 2 Side
sgx_titandt_depthofbook_itch_v1_4.leg_2_side = {}

-- Size: Leg 2 Side
sgx_titandt_depthofbook_itch_v1_4.leg_2_side.size = 1

-- Display: Leg 2 Side
sgx_titandt_depthofbook_itch_v1_4.leg_2_side.display = function(value)
  if value == "B" then
    return "Leg 2 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 2 Side: Opposite (C)"
  end

  return "Leg 2 Side: Unknown("..value..")"
end

-- Dissect: Leg 2 Side
sgx_titandt_depthofbook_itch_v1_4.leg_2_side.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_2_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_2_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_2_side, range, value, display)

  return offset + length, value
end

-- Leg 2 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_2_symbol = {}

-- Size: Leg 2 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_2_symbol.size = 32

-- Display: Leg 2 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_2_symbol.display = function(value)
  return "Leg 2 Symbol: "..value
end

-- Dissect: Leg 2 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_2_symbol.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_2_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_2_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_2_symbol, range, value, display)

  return offset + length, value
end

-- Leg 3 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_3_ratio = {}

-- Size: Leg 3 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_3_ratio.size = 4

-- Display: Leg 3 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_3_ratio.display = function(value)
  return "Leg 3 Ratio: "..value
end

-- Dissect: Leg 3 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_3_ratio.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_3_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_3_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_3_ratio, range, value, display)

  return offset + length, value
end

-- Leg 3 Side
sgx_titandt_depthofbook_itch_v1_4.leg_3_side = {}

-- Size: Leg 3 Side
sgx_titandt_depthofbook_itch_v1_4.leg_3_side.size = 1

-- Display: Leg 3 Side
sgx_titandt_depthofbook_itch_v1_4.leg_3_side.display = function(value)
  if value == "B" then
    return "Leg 3 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 3 Side: Opposite (C)"
  end

  return "Leg 3 Side: Unknown("..value..")"
end

-- Dissect: Leg 3 Side
sgx_titandt_depthofbook_itch_v1_4.leg_3_side.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_3_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_3_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_3_side, range, value, display)

  return offset + length, value
end

-- Leg 3 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_3_symbol = {}

-- Size: Leg 3 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_3_symbol.size = 32

-- Display: Leg 3 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_3_symbol.display = function(value)
  return "Leg 3 Symbol: "..value
end

-- Dissect: Leg 3 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_3_symbol.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_3_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_3_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_3_symbol, range, value, display)

  return offset + length, value
end

-- Leg 4 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_4_ratio = {}

-- Size: Leg 4 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_4_ratio.size = 4

-- Display: Leg 4 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_4_ratio.display = function(value)
  return "Leg 4 Ratio: "..value
end

-- Dissect: Leg 4 Ratio
sgx_titandt_depthofbook_itch_v1_4.leg_4_ratio.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_4_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_4_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_4_ratio, range, value, display)

  return offset + length, value
end

-- Leg 4 Side
sgx_titandt_depthofbook_itch_v1_4.leg_4_side = {}

-- Size: Leg 4 Side
sgx_titandt_depthofbook_itch_v1_4.leg_4_side.size = 1

-- Display: Leg 4 Side
sgx_titandt_depthofbook_itch_v1_4.leg_4_side.display = function(value)
  if value == "B" then
    return "Leg 4 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 4 Side: Opposite (C)"
  end

  return "Leg 4 Side: Unknown("..value..")"
end

-- Dissect: Leg 4 Side
sgx_titandt_depthofbook_itch_v1_4.leg_4_side.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_4_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_4_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_4_side, range, value, display)

  return offset + length, value
end

-- Leg 4 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_4_symbol = {}

-- Size: Leg 4 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_4_symbol.size = 32

-- Display: Leg 4 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_4_symbol.display = function(value)
  return "Leg 4 Symbol: "..value
end

-- Dissect: Leg 4 Symbol
sgx_titandt_depthofbook_itch_v1_4.leg_4_symbol.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.leg_4_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_itch_v1_4.leg_4_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.leg_4_symbol, range, value, display)

  return offset + length, value
end

-- Long Name
sgx_titandt_depthofbook_itch_v1_4.long_name = {}

-- Size: Long Name
sgx_titandt_depthofbook_itch_v1_4.long_name.size = 32

-- Display: Long Name
sgx_titandt_depthofbook_itch_v1_4.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
sgx_titandt_depthofbook_itch_v1_4.long_name.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_itch_v1_4.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.long_name, range, value, display)

  return offset + length, value
end

-- Lot Type
sgx_titandt_depthofbook_itch_v1_4.lot_type = {}

-- Size: Lot Type
sgx_titandt_depthofbook_itch_v1_4.lot_type.size = 1

-- Display: Lot Type
sgx_titandt_depthofbook_itch_v1_4.lot_type.display = function(value)
  if value == 2 then
    return "Lot Type: Round Lot (2)"
  end

  return "Lot Type: Unknown("..value..")"
end

-- Dissect: Lot Type
sgx_titandt_depthofbook_itch_v1_4.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.lot_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Match Id
sgx_titandt_depthofbook_itch_v1_4.match_id = {}

-- Size: Match Id
sgx_titandt_depthofbook_itch_v1_4.match_id.size = 8

-- Display: Match Id
sgx_titandt_depthofbook_itch_v1_4.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
sgx_titandt_depthofbook_itch_v1_4.match_id.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_itch_v1_4.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.match_id, range, value, display)

  return offset + length, value
end

-- Message Count
sgx_titandt_depthofbook_itch_v1_4.message_count = {}

-- Size: Message Count
sgx_titandt_depthofbook_itch_v1_4.message_count.size = 2

-- Display: Message Count
sgx_titandt_depthofbook_itch_v1_4.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
sgx_titandt_depthofbook_itch_v1_4.message_count.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
sgx_titandt_depthofbook_itch_v1_4.message_length = {}

-- Size: Message Length
sgx_titandt_depthofbook_itch_v1_4.message_length.size = 2

-- Display: Message Length
sgx_titandt_depthofbook_itch_v1_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
sgx_titandt_depthofbook_itch_v1_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
sgx_titandt_depthofbook_itch_v1_4.message_type = {}

-- Size: Message Type
sgx_titandt_depthofbook_itch_v1_4.message_type.size = 1

-- Display: Message Type
sgx_titandt_depthofbook_itch_v1_4.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Seconds Message (T)"
  end
  if value == "R" then
    return "Message Type: Order Book Directory Message (R)"
  end
  if value == "M" then
    return "Message Type: Combination Order Book Directory Message (M)"
  end
  if value == "L" then
    return "Message Type: Tick Size Table Entry Message (L)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "O" then
    return "Message Type: Order Book State Message (O)"
  end
  if value == "A" then
    return "Message Type: Add Order Message (A)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Order Executed With Price Message (C)"
  end
  if value == "U" then
    return "Message Type: Order Replace Message (U)"
  end
  if value == "D" then
    return "Message Type: Order Delete Message (D)"
  end
  if value == "P" then
    return "Message Type: Trade Message (P)"
  end
  if value == "Z" then
    return "Message Type: Equilibrium Price Update Message (Z)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
sgx_titandt_depthofbook_itch_v1_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_itch_v1_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
sgx_titandt_depthofbook_itch_v1_4.nanoseconds = {}

-- Size: Nanoseconds
sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size = 4

-- Display: Nanoseconds
sgx_titandt_depthofbook_itch_v1_4.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
sgx_titandt_depthofbook_itch_v1_4.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Order Book Position
sgx_titandt_depthofbook_itch_v1_4.new_order_book_position = {}

-- Size: New Order Book Position
sgx_titandt_depthofbook_itch_v1_4.new_order_book_position.size = 4

-- Display: New Order Book Position
sgx_titandt_depthofbook_itch_v1_4.new_order_book_position.display = function(value)
  return "New Order Book Position: "..value
end

-- Dissect: New Order Book Position
sgx_titandt_depthofbook_itch_v1_4.new_order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.new_order_book_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.new_order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.new_order_book_position, range, value, display)

  return offset + length, value
end

-- Nominal Value
sgx_titandt_depthofbook_itch_v1_4.nominal_value = {}

-- Size: Nominal Value
sgx_titandt_depthofbook_itch_v1_4.nominal_value.size = 8

-- Display: Nominal Value
sgx_titandt_depthofbook_itch_v1_4.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
sgx_titandt_depthofbook_itch_v1_4.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_itch_v1_4.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Nominal Value
sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_nominal_value = {}

-- Size: Number Of Decimals In Nominal Value
sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_nominal_value.size = 2

-- Display: Number Of Decimals In Nominal Value
sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_nominal_value.display = function(value)
  return "Number Of Decimals In Nominal Value: "..value
end

-- Dissect: Number Of Decimals In Nominal Value
sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Price
sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_price = {}

-- Size: Number Of Decimals In Price
sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_price.size = 2

-- Display: Number Of Decimals In Price
sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_price.display = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Occurred At Cross
sgx_titandt_depthofbook_itch_v1_4.occurred_at_cross = {}

-- Size: Occurred At Cross
sgx_titandt_depthofbook_itch_v1_4.occurred_at_cross.size = 1

-- Display: Occurred At Cross
sgx_titandt_depthofbook_itch_v1_4.occurred_at_cross.display = function(value)
  if value == "Y" then
    return "Occurred At Cross: Trade Occurred At The Cross (Y)"
  end
  if value == "N" then
    return "Occurred At Cross: Trade Occurred At Continuous Market (N)"
  end

  return "Occurred At Cross: Unknown("..value..")"
end

-- Dissect: Occurred At Cross
sgx_titandt_depthofbook_itch_v1_4.occurred_at_cross.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.occurred_at_cross.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_itch_v1_4.occurred_at_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.occurred_at_cross, range, value, display)

  return offset + length, value
end

-- Order Book Id
sgx_titandt_depthofbook_itch_v1_4.order_book_id = {}

-- Size: Order Book Id
sgx_titandt_depthofbook_itch_v1_4.order_book_id.size = 4

-- Display: Order Book Id
sgx_titandt_depthofbook_itch_v1_4.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Order Book Position
sgx_titandt_depthofbook_itch_v1_4.order_book_position = {}

-- Size: Order Book Position
sgx_titandt_depthofbook_itch_v1_4.order_book_position.size = 4

-- Display: Order Book Position
sgx_titandt_depthofbook_itch_v1_4.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
sgx_titandt_depthofbook_itch_v1_4.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.order_book_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Order Id
sgx_titandt_depthofbook_itch_v1_4.order_id = {}

-- Size: Order Id
sgx_titandt_depthofbook_itch_v1_4.order_id.size = 8

-- Display: Order Id
sgx_titandt_depthofbook_itch_v1_4.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
sgx_titandt_depthofbook_itch_v1_4.order_id.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_itch_v1_4.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Price
sgx_titandt_depthofbook_itch_v1_4.price = {}

-- Size: Price
sgx_titandt_depthofbook_itch_v1_4.price.size = 4

-- Display: Price
sgx_titandt_depthofbook_itch_v1_4.price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
sgx_titandt_depthofbook_itch_v1_4.price.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = sgx_titandt_depthofbook_itch_v1_4.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.price, range, value, display)

  return offset + length, value
end

-- Price From
sgx_titandt_depthofbook_itch_v1_4.price_from = {}

-- Size: Price From
sgx_titandt_depthofbook_itch_v1_4.price_from.size = 4

-- Display: Price From
sgx_titandt_depthofbook_itch_v1_4.price_from.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price From: No Value"
  end

  return "Price From: "..value
end

-- Dissect: Price From
sgx_titandt_depthofbook_itch_v1_4.price_from.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = sgx_titandt_depthofbook_itch_v1_4.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.price_from, range, value, display)

  return offset + length, value
end

-- Price To
sgx_titandt_depthofbook_itch_v1_4.price_to = {}

-- Size: Price To
sgx_titandt_depthofbook_itch_v1_4.price_to.size = 4

-- Display: Price To
sgx_titandt_depthofbook_itch_v1_4.price_to.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price To: No Value"
  end

  return "Price To: "..value
end

-- Dissect: Price To
sgx_titandt_depthofbook_itch_v1_4.price_to.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = sgx_titandt_depthofbook_itch_v1_4.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.price_to, range, value, display)

  return offset + length, value
end

-- Printable
sgx_titandt_depthofbook_itch_v1_4.printable = {}

-- Size: Printable
sgx_titandt_depthofbook_itch_v1_4.printable.size = 1

-- Display: Printable
sgx_titandt_depthofbook_itch_v1_4.printable.display = function(value)
  if value == "Y" then
    return "Printable: Printable (Y)"
  end
  if value == "N" then
    return "Printable: Non Printable (N)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
sgx_titandt_depthofbook_itch_v1_4.printable.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_itch_v1_4.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.printable, range, value, display)

  return offset + length, value
end

-- Quantity
sgx_titandt_depthofbook_itch_v1_4.quantity = {}

-- Size: Quantity
sgx_titandt_depthofbook_itch_v1_4.quantity.size = 8

-- Display: Quantity
sgx_titandt_depthofbook_itch_v1_4.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
sgx_titandt_depthofbook_itch_v1_4.quantity.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_itch_v1_4.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 12
sgx_titandt_depthofbook_itch_v1_4.reserved_12 = {}

-- Size: Reserved 12
sgx_titandt_depthofbook_itch_v1_4.reserved_12.size = 12

-- Display: Reserved 12
sgx_titandt_depthofbook_itch_v1_4.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
sgx_titandt_depthofbook_itch_v1_4.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.reserved_12.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = sgx_titandt_depthofbook_itch_v1_4.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 4 A
sgx_titandt_depthofbook_itch_v1_4.reserved_4_a = {}

-- Size: Reserved 4 A
sgx_titandt_depthofbook_itch_v1_4.reserved_4_a.size = 4

-- Display: Reserved 4 A
sgx_titandt_depthofbook_itch_v1_4.reserved_4_a.display = function(value)
  return "Reserved 4 A: "..value
end

-- Dissect: Reserved 4 A
sgx_titandt_depthofbook_itch_v1_4.reserved_4_a.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.reserved_4_a.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = sgx_titandt_depthofbook_itch_v1_4.reserved_4_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_4_a, range, value, display)

  return offset + length, value
end

-- Reserved 4 B
sgx_titandt_depthofbook_itch_v1_4.reserved_4_b = {}

-- Size: Reserved 4 B
sgx_titandt_depthofbook_itch_v1_4.reserved_4_b.size = 4

-- Display: Reserved 4 B
sgx_titandt_depthofbook_itch_v1_4.reserved_4_b.display = function(value)
  return "Reserved 4 B: "..value
end

-- Dissect: Reserved 4 B
sgx_titandt_depthofbook_itch_v1_4.reserved_4_b.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.reserved_4_b.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = sgx_titandt_depthofbook_itch_v1_4.reserved_4_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_4_b, range, value, display)

  return offset + length, value
end

-- Reserved 4 C
sgx_titandt_depthofbook_itch_v1_4.reserved_4_c = {}

-- Size: Reserved 4 C
sgx_titandt_depthofbook_itch_v1_4.reserved_4_c.size = 4

-- Display: Reserved 4 C
sgx_titandt_depthofbook_itch_v1_4.reserved_4_c.display = function(value)
  return "Reserved 4 C: "..value
end

-- Dissect: Reserved 4 C
sgx_titandt_depthofbook_itch_v1_4.reserved_4_c.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.reserved_4_c.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = sgx_titandt_depthofbook_itch_v1_4.reserved_4_c.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_4_c, range, value, display)

  return offset + length, value
end

-- Reserved 7 A
sgx_titandt_depthofbook_itch_v1_4.reserved_7_a = {}

-- Size: Reserved 7 A
sgx_titandt_depthofbook_itch_v1_4.reserved_7_a.size = 7

-- Display: Reserved 7 A
sgx_titandt_depthofbook_itch_v1_4.reserved_7_a.display = function(value)
  return "Reserved 7 A: "..value
end

-- Dissect: Reserved 7 A
sgx_titandt_depthofbook_itch_v1_4.reserved_7_a.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.reserved_7_a.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = sgx_titandt_depthofbook_itch_v1_4.reserved_7_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_7_a, range, value, display)

  return offset + length, value
end

-- Reserved 7 B
sgx_titandt_depthofbook_itch_v1_4.reserved_7_b = {}

-- Size: Reserved 7 B
sgx_titandt_depthofbook_itch_v1_4.reserved_7_b.size = 7

-- Display: Reserved 7 B
sgx_titandt_depthofbook_itch_v1_4.reserved_7_b.display = function(value)
  return "Reserved 7 B: "..value
end

-- Dissect: Reserved 7 B
sgx_titandt_depthofbook_itch_v1_4.reserved_7_b.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.reserved_7_b.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = sgx_titandt_depthofbook_itch_v1_4.reserved_7_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_7_b, range, value, display)

  return offset + length, value
end

-- Second
sgx_titandt_depthofbook_itch_v1_4.second = {}

-- Size: Second
sgx_titandt_depthofbook_itch_v1_4.second.size = 4

-- Store: Second
sgx_titandt_depthofbook_itch_v1_4.second.current = nil

-- Generated: Second
sgx_titandt_depthofbook_itch_v1_4.second.generated = function(value, range, packet, parent)
  local display = sgx_titandt_depthofbook_itch_v1_4.second.display(value)
  local second = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
sgx_titandt_depthofbook_itch_v1_4.second.display = function(value)
  -- Parse unix seconds timestamp
  return "Second: "..os.date("%Y-%m-%d %H:%M:%S", value)
end

-- Dissect: Second
sgx_titandt_depthofbook_itch_v1_4.second.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence Number
sgx_titandt_depthofbook_itch_v1_4.sequence_number = {}

-- Size: Sequence Number
sgx_titandt_depthofbook_itch_v1_4.sequence_number.size = 8

-- Display: Sequence Number
sgx_titandt_depthofbook_itch_v1_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
sgx_titandt_depthofbook_itch_v1_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_itch_v1_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
sgx_titandt_depthofbook_itch_v1_4.session = {}

-- Size: Session
sgx_titandt_depthofbook_itch_v1_4.session.size = 10

-- Display: Session
sgx_titandt_depthofbook_itch_v1_4.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
sgx_titandt_depthofbook_itch_v1_4.session.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.session.size
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

  local display = sgx_titandt_depthofbook_itch_v1_4.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.session, range, value, display)

  return offset + length, value
end

-- Side
sgx_titandt_depthofbook_itch_v1_4.side = {}

-- Size: Side
sgx_titandt_depthofbook_itch_v1_4.side.size = 1

-- Display: Side
sgx_titandt_depthofbook_itch_v1_4.side.display = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
sgx_titandt_depthofbook_itch_v1_4.side.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = sgx_titandt_depthofbook_itch_v1_4.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.side, range, value, display)

  return offset + length, value
end

-- State Name
sgx_titandt_depthofbook_itch_v1_4.state_name = {}

-- Size: State Name
sgx_titandt_depthofbook_itch_v1_4.state_name.size = 20

-- Display: State Name
sgx_titandt_depthofbook_itch_v1_4.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
sgx_titandt_depthofbook_itch_v1_4.state_name.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_itch_v1_4.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.state_name, range, value, display)

  return offset + length, value
end

-- Symbol
sgx_titandt_depthofbook_itch_v1_4.symbol = {}

-- Size: Symbol
sgx_titandt_depthofbook_itch_v1_4.symbol.size = 32

-- Display: Symbol
sgx_titandt_depthofbook_itch_v1_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
sgx_titandt_depthofbook_itch_v1_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_itch_v1_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Size
sgx_titandt_depthofbook_itch_v1_4.tick_size = {}

-- Size: Tick Size
sgx_titandt_depthofbook_itch_v1_4.tick_size.size = 8

-- Display: Tick Size
sgx_titandt_depthofbook_itch_v1_4.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
sgx_titandt_depthofbook_itch_v1_4.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sgx_titandt_depthofbook_itch_v1_4.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Trade Price
sgx_titandt_depthofbook_itch_v1_4.trade_price = {}

-- Size: Trade Price
sgx_titandt_depthofbook_itch_v1_4.trade_price.size = 4

-- Display: Trade Price
sgx_titandt_depthofbook_itch_v1_4.trade_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Trade Price: No Value"
  end

  return "Trade Price: "..value
end

-- Dissect: Trade Price
sgx_titandt_depthofbook_itch_v1_4.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = sgx_titandt_depthofbook_itch_v1_4.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trading Currency
sgx_titandt_depthofbook_itch_v1_4.trading_currency = {}

-- Size: Trading Currency
sgx_titandt_depthofbook_itch_v1_4.trading_currency.size = 3

-- Display: Trading Currency
sgx_titandt_depthofbook_itch_v1_4.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
sgx_titandt_depthofbook_itch_v1_4.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = sgx_titandt_depthofbook_itch_v1_4.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Timestamp
sgx_titandt_depthofbook_itch_v1_4.timestamp = {}

-- Translate: Timestamp
sgx_titandt_depthofbook_itch_v1_4.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
sgx_titandt_depthofbook_itch_v1_4.timestamp.display = function(nanoseconds, stored_second)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
sgx_titandt_depthofbook_itch_v1_4.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = sgx_titandt_depthofbook_itch_v1_4.timestamp.translate(nanoseconds, stored_second)
  local display = sgx_titandt_depthofbook_itch_v1_4.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.timestamp, range, value, display)

  sgx_titandt_depthofbook_itch_v1_4.second.generated(stored_second, range, packet, parent)

  display = sgx_titandt_depthofbook_itch_v1_4.nanoseconds.display(nanoseconds)
  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect = function(buffer, offset, packet, parent)
  if sgx_titandt_depthofbook_itch_v1_4.format_timestamp then
    local stored_second = sgx_titandt_depthofbook_itch_v1_4.second.current

    if stored_second ~= nil then
      return sgx_titandt_depthofbook_itch_v1_4.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return sgx_titandt_depthofbook_itch_v1_4.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Sgx TitanDt DepthOfBook Itch 1.4
-----------------------------------------------------------------------

-- Equilibrium Price Update Message
sgx_titandt_depthofbook_itch_v1_4.equilibrium_price_update_message = {}

-- Size: Equilibrium Price Update Message
sgx_titandt_depthofbook_itch_v1_4.equilibrium_price_update_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.available_bid_quantity_at_equilibrium_price.size + 
  sgx_titandt_depthofbook_itch_v1_4.available_ask_quantity_at_equilibrium_price.size + 
  sgx_titandt_depthofbook_itch_v1_4.equilibrium_price.size + 
  sgx_titandt_depthofbook_itch_v1_4.best_bid_price.size + 
  sgx_titandt_depthofbook_itch_v1_4.best_ask_price.size + 
  sgx_titandt_depthofbook_itch_v1_4.best_bid_quantity.size + 
  sgx_titandt_depthofbook_itch_v1_4.best_ask_quantity.size

-- Display: Equilibrium Price Update Message
sgx_titandt_depthofbook_itch_v1_4.equilibrium_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Update Message
sgx_titandt_depthofbook_itch_v1_4.equilibrium_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Available Bid Quantity At Equilibrium Price: Numeric
  index, available_bid_quantity_at_equilibrium_price = sgx_titandt_depthofbook_itch_v1_4.available_bid_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Available Ask Quantity At Equilibrium Price: Numeric
  index, available_ask_quantity_at_equilibrium_price = sgx_titandt_depthofbook_itch_v1_4.available_ask_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price
  index, equilibrium_price = sgx_titandt_depthofbook_itch_v1_4.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price
  index, best_bid_price = sgx_titandt_depthofbook_itch_v1_4.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Ask Price: Price
  index, best_ask_price = sgx_titandt_depthofbook_itch_v1_4.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Bid Quantity: Numeric
  index, best_bid_quantity = sgx_titandt_depthofbook_itch_v1_4.best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Best Ask Quantity: Numeric
  index, best_ask_quantity = sgx_titandt_depthofbook_itch_v1_4.best_ask_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Update Message
sgx_titandt_depthofbook_itch_v1_4.equilibrium_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.equilibrium_price_update_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.equilibrium_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.equilibrium_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.equilibrium_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
sgx_titandt_depthofbook_itch_v1_4.trade_message = {}

-- Size: Trade Message
sgx_titandt_depthofbook_itch_v1_4.trade_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.match_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.combo_group_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.side.size + 
  sgx_titandt_depthofbook_itch_v1_4.quantity.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.trade_price.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_7_a.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_7_b.size + 
  sgx_titandt_depthofbook_itch_v1_4.printable.size + 
  sgx_titandt_depthofbook_itch_v1_4.occurred_at_cross.size

-- Display: Trade Message
sgx_titandt_depthofbook_itch_v1_4.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
sgx_titandt_depthofbook_itch_v1_4.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = sgx_titandt_depthofbook_itch_v1_4.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = sgx_titandt_depthofbook_itch_v1_4.combo_group_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = sgx_titandt_depthofbook_itch_v1_4.side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = sgx_titandt_depthofbook_itch_v1_4.quantity.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = sgx_titandt_depthofbook_itch_v1_4.trade_price.dissect(buffer, index, packet, parent)

  -- Reserved 7 A: Reserved
  index, reserved_7_a = sgx_titandt_depthofbook_itch_v1_4.reserved_7_a.dissect(buffer, index, packet, parent)

  -- Reserved 7 B: Reserved
  index, reserved_7_b = sgx_titandt_depthofbook_itch_v1_4.reserved_7_b.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = sgx_titandt_depthofbook_itch_v1_4.printable.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: Alpha
  index, occurred_at_cross = sgx_titandt_depthofbook_itch_v1_4.occurred_at_cross.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
sgx_titandt_depthofbook_itch_v1_4.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.trade_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
sgx_titandt_depthofbook_itch_v1_4.order_delete_message = {}

-- Size: Order Delete Message
sgx_titandt_depthofbook_itch_v1_4.order_delete_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.side.size

-- Display: Order Delete Message
sgx_titandt_depthofbook_itch_v1_4.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
sgx_titandt_depthofbook_itch_v1_4.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = sgx_titandt_depthofbook_itch_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = sgx_titandt_depthofbook_itch_v1_4.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
sgx_titandt_depthofbook_itch_v1_4.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_delete_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Attributes
sgx_titandt_depthofbook_itch_v1_4.order_attributes = {}

-- Size: Order Attributes
sgx_titandt_depthofbook_itch_v1_4.order_attributes.size = 2

-- Display: Order Attributes
sgx_titandt_depthofbook_itch_v1_4.order_attributes.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Bait Implied Order flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Bait Implied Order"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Attributes
sgx_titandt_depthofbook_itch_v1_4.order_attributes.bits = function(range, value, packet, parent)

  -- Reserved Bits 1 To 13: 13 Bit
  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_bits_1_to_13, range, value)

  -- Bait Implied Order: 1 Bit
  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.bait_implied_order, range, value)

  -- Reserved Bits 15 To 16: 2 Bit
  parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.reserved_bits_15_to_16, range, value)
end

-- Dissect: Order Attributes
sgx_titandt_depthofbook_itch_v1_4.order_attributes.dissect = function(buffer, offset, packet, parent)
  local size = sgx_titandt_depthofbook_itch_v1_4.order_attributes.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = sgx_titandt_depthofbook_itch_v1_4.order_attributes.display(range, value, packet, parent)
  local element = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_attributes, range, display)

  if show.structs then
    sgx_titandt_depthofbook_itch_v1_4.order_attributes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Replace Message
sgx_titandt_depthofbook_itch_v1_4.order_replace_message = {}

-- Size: Order Replace Message
sgx_titandt_depthofbook_itch_v1_4.order_replace_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.side.size + 
  sgx_titandt_depthofbook_itch_v1_4.new_order_book_position.size + 
  sgx_titandt_depthofbook_itch_v1_4.quantity.size + 
  sgx_titandt_depthofbook_itch_v1_4.price.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_attributes.size

-- Display: Order Replace Message
sgx_titandt_depthofbook_itch_v1_4.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
sgx_titandt_depthofbook_itch_v1_4.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = sgx_titandt_depthofbook_itch_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = sgx_titandt_depthofbook_itch_v1_4.side.dissect(buffer, index, packet, parent)

  -- New Order Book Position: Numeric
  index, new_order_book_position = sgx_titandt_depthofbook_itch_v1_4.new_order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = sgx_titandt_depthofbook_itch_v1_4.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = sgx_titandt_depthofbook_itch_v1_4.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 3 fields
  index, order_attributes = sgx_titandt_depthofbook_itch_v1_4.order_attributes.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
sgx_titandt_depthofbook_itch_v1_4.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_replace_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
sgx_titandt_depthofbook_itch_v1_4.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
sgx_titandt_depthofbook_itch_v1_4.order_executed_with_price_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.side.size + 
  sgx_titandt_depthofbook_itch_v1_4.executed_quantity.size + 
  sgx_titandt_depthofbook_itch_v1_4.match_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.combo_group_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_7_a.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_7_b.size + 
  sgx_titandt_depthofbook_itch_v1_4.trade_price.size + 
  sgx_titandt_depthofbook_itch_v1_4.occurred_at_cross.size + 
  sgx_titandt_depthofbook_itch_v1_4.printable.size

-- Display: Order Executed With Price Message
sgx_titandt_depthofbook_itch_v1_4.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
sgx_titandt_depthofbook_itch_v1_4.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = sgx_titandt_depthofbook_itch_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = sgx_titandt_depthofbook_itch_v1_4.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = sgx_titandt_depthofbook_itch_v1_4.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = sgx_titandt_depthofbook_itch_v1_4.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = sgx_titandt_depthofbook_itch_v1_4.combo_group_id.dissect(buffer, index, packet, parent)

  -- Reserved 7 A: Reserved
  index, reserved_7_a = sgx_titandt_depthofbook_itch_v1_4.reserved_7_a.dissect(buffer, index, packet, parent)

  -- Reserved 7 B: Reserved
  index, reserved_7_b = sgx_titandt_depthofbook_itch_v1_4.reserved_7_b.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = sgx_titandt_depthofbook_itch_v1_4.trade_price.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: Alpha
  index, occurred_at_cross = sgx_titandt_depthofbook_itch_v1_4.occurred_at_cross.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = sgx_titandt_depthofbook_itch_v1_4.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
sgx_titandt_depthofbook_itch_v1_4.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
sgx_titandt_depthofbook_itch_v1_4.order_executed_message = {}

-- Size: Order Executed Message
sgx_titandt_depthofbook_itch_v1_4.order_executed_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.side.size + 
  sgx_titandt_depthofbook_itch_v1_4.executed_quantity.size + 
  sgx_titandt_depthofbook_itch_v1_4.match_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.combo_group_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_7_a.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_7_b.size

-- Display: Order Executed Message
sgx_titandt_depthofbook_itch_v1_4.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
sgx_titandt_depthofbook_itch_v1_4.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = sgx_titandt_depthofbook_itch_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = sgx_titandt_depthofbook_itch_v1_4.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = sgx_titandt_depthofbook_itch_v1_4.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = sgx_titandt_depthofbook_itch_v1_4.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = sgx_titandt_depthofbook_itch_v1_4.combo_group_id.dissect(buffer, index, packet, parent)

  -- Reserved 7 A: Reserved
  index, reserved_7_a = sgx_titandt_depthofbook_itch_v1_4.reserved_7_a.dissect(buffer, index, packet, parent)

  -- Reserved 7 B: Reserved
  index, reserved_7_b = sgx_titandt_depthofbook_itch_v1_4.reserved_7_b.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
sgx_titandt_depthofbook_itch_v1_4.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_executed_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
sgx_titandt_depthofbook_itch_v1_4.add_order_message = {}

-- Size: Add Order Message
sgx_titandt_depthofbook_itch_v1_4.add_order_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.side.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_position.size + 
  sgx_titandt_depthofbook_itch_v1_4.quantity.size + 
  sgx_titandt_depthofbook_itch_v1_4.price.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_attributes.size + 
  sgx_titandt_depthofbook_itch_v1_4.lot_type.size

-- Display: Add Order Message
sgx_titandt_depthofbook_itch_v1_4.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
sgx_titandt_depthofbook_itch_v1_4.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = sgx_titandt_depthofbook_itch_v1_4.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = sgx_titandt_depthofbook_itch_v1_4.side.dissect(buffer, index, packet, parent)

  -- Order Book Position: Numeric
  index, order_book_position = sgx_titandt_depthofbook_itch_v1_4.order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = sgx_titandt_depthofbook_itch_v1_4.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = sgx_titandt_depthofbook_itch_v1_4.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 3 fields
  index, order_attributes = sgx_titandt_depthofbook_itch_v1_4.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = sgx_titandt_depthofbook_itch_v1_4.lot_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
sgx_titandt_depthofbook_itch_v1_4.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.add_order_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book State Message
sgx_titandt_depthofbook_itch_v1_4.order_book_state_message = {}

-- Size: Order Book State Message
sgx_titandt_depthofbook_itch_v1_4.order_book_state_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.state_name.size

-- Display: Order Book State Message
sgx_titandt_depthofbook_itch_v1_4.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
sgx_titandt_depthofbook_itch_v1_4.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = sgx_titandt_depthofbook_itch_v1_4.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
sgx_titandt_depthofbook_itch_v1_4.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_book_state_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
sgx_titandt_depthofbook_itch_v1_4.system_event_message = {}

-- Size: System Event Message
sgx_titandt_depthofbook_itch_v1_4.system_event_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.event_code.size

-- Display: System Event Message
sgx_titandt_depthofbook_itch_v1_4.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
sgx_titandt_depthofbook_itch_v1_4.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = sgx_titandt_depthofbook_itch_v1_4.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
sgx_titandt_depthofbook_itch_v1_4.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.system_event_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size Table Entry Message
sgx_titandt_depthofbook_itch_v1_4.tick_size_table_entry_message = {}

-- Size: Tick Size Table Entry Message
sgx_titandt_depthofbook_itch_v1_4.tick_size_table_entry_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.tick_size.size + 
  sgx_titandt_depthofbook_itch_v1_4.price_from.size + 
  sgx_titandt_depthofbook_itch_v1_4.price_to.size

-- Display: Tick Size Table Entry Message
sgx_titandt_depthofbook_itch_v1_4.tick_size_table_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Table Entry Message
sgx_titandt_depthofbook_itch_v1_4.tick_size_table_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Numeric
  index, tick_size = sgx_titandt_depthofbook_itch_v1_4.tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = sgx_titandt_depthofbook_itch_v1_4.price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = sgx_titandt_depthofbook_itch_v1_4.price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Table Entry Message
sgx_titandt_depthofbook_itch_v1_4.tick_size_table_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.tick_size_table_entry_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.tick_size_table_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.tick_size_table_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.tick_size_table_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Combination Order Book Directory Message
sgx_titandt_depthofbook_itch_v1_4.combination_order_book_directory_message = {}

-- Size: Combination Order Book Directory Message
sgx_titandt_depthofbook_itch_v1_4.combination_order_book_directory_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.symbol.size + 
  sgx_titandt_depthofbook_itch_v1_4.long_name.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_12.size + 
  sgx_titandt_depthofbook_itch_v1_4.financial_product.size + 
  sgx_titandt_depthofbook_itch_v1_4.trading_currency.size + 
  sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_price.size + 
  sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_nominal_value.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_4_a.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_4_b.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_4_c.size + 
  sgx_titandt_depthofbook_itch_v1_4.nominal_value.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_1_symbol.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_1_side.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_1_ratio.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_2_symbol.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_2_side.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_2_ratio.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_3_symbol.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_3_side.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_3_ratio.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_4_symbol.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_4_side.size + 
  sgx_titandt_depthofbook_itch_v1_4.leg_4_ratio.size

-- Display: Combination Order Book Directory Message
sgx_titandt_depthofbook_itch_v1_4.combination_order_book_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Book Directory Message
sgx_titandt_depthofbook_itch_v1_4.combination_order_book_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = sgx_titandt_depthofbook_itch_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = sgx_titandt_depthofbook_itch_v1_4.long_name.dissect(buffer, index, packet, parent)

  -- Reserved 12: Reserved
  index, reserved_12 = sgx_titandt_depthofbook_itch_v1_4.reserved_12.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = sgx_titandt_depthofbook_itch_v1_4.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = sgx_titandt_depthofbook_itch_v1_4.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Reserved 4 A: Reserved
  index, reserved_4_a = sgx_titandt_depthofbook_itch_v1_4.reserved_4_a.dissect(buffer, index, packet, parent)

  -- Reserved 4 B: Reserved
  index, reserved_4_b = sgx_titandt_depthofbook_itch_v1_4.reserved_4_b.dissect(buffer, index, packet, parent)

  -- Reserved 4 C: Reserved
  index, reserved_4_c = sgx_titandt_depthofbook_itch_v1_4.reserved_4_c.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = sgx_titandt_depthofbook_itch_v1_4.nominal_value.dissect(buffer, index, packet, parent)

  -- Leg 1 Symbol: Alpha
  index, leg_1_symbol = sgx_titandt_depthofbook_itch_v1_4.leg_1_symbol.dissect(buffer, index, packet, parent)

  -- Leg 1 Side: Alpha
  index, leg_1_side = sgx_titandt_depthofbook_itch_v1_4.leg_1_side.dissect(buffer, index, packet, parent)

  -- Leg 1 Ratio: Numeric
  index, leg_1_ratio = sgx_titandt_depthofbook_itch_v1_4.leg_1_ratio.dissect(buffer, index, packet, parent)

  -- Leg 2 Symbol: Alpha
  index, leg_2_symbol = sgx_titandt_depthofbook_itch_v1_4.leg_2_symbol.dissect(buffer, index, packet, parent)

  -- Leg 2 Side: Alpha
  index, leg_2_side = sgx_titandt_depthofbook_itch_v1_4.leg_2_side.dissect(buffer, index, packet, parent)

  -- Leg 2 Ratio: Numeric
  index, leg_2_ratio = sgx_titandt_depthofbook_itch_v1_4.leg_2_ratio.dissect(buffer, index, packet, parent)

  -- Leg 3 Symbol: Alpha
  index, leg_3_symbol = sgx_titandt_depthofbook_itch_v1_4.leg_3_symbol.dissect(buffer, index, packet, parent)

  -- Leg 3 Side: Alpha
  index, leg_3_side = sgx_titandt_depthofbook_itch_v1_4.leg_3_side.dissect(buffer, index, packet, parent)

  -- Leg 3 Ratio: Numeric
  index, leg_3_ratio = sgx_titandt_depthofbook_itch_v1_4.leg_3_ratio.dissect(buffer, index, packet, parent)

  -- Leg 4 Symbol: Alpha
  index, leg_4_symbol = sgx_titandt_depthofbook_itch_v1_4.leg_4_symbol.dissect(buffer, index, packet, parent)

  -- Leg 4 Side: Alpha
  index, leg_4_side = sgx_titandt_depthofbook_itch_v1_4.leg_4_side.dissect(buffer, index, packet, parent)

  -- Leg 4 Ratio: Numeric
  index, leg_4_ratio = sgx_titandt_depthofbook_itch_v1_4.leg_4_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Directory Message
sgx_titandt_depthofbook_itch_v1_4.combination_order_book_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.combination_order_book_directory_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.combination_order_book_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.combination_order_book_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.combination_order_book_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory Message
sgx_titandt_depthofbook_itch_v1_4.order_book_directory_message = {}

-- Size: Order Book Directory Message
sgx_titandt_depthofbook_itch_v1_4.order_book_directory_message.size =
  sgx_titandt_depthofbook_itch_v1_4.nanoseconds.size + 
  sgx_titandt_depthofbook_itch_v1_4.order_book_id.size + 
  sgx_titandt_depthofbook_itch_v1_4.symbol.size + 
  sgx_titandt_depthofbook_itch_v1_4.long_name.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_12.size + 
  sgx_titandt_depthofbook_itch_v1_4.financial_product.size + 
  sgx_titandt_depthofbook_itch_v1_4.trading_currency.size + 
  sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_price.size + 
  sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_nominal_value.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_4_a.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_4_b.size + 
  sgx_titandt_depthofbook_itch_v1_4.reserved_4_c.size + 
  sgx_titandt_depthofbook_itch_v1_4.nominal_value.size

-- Display: Order Book Directory Message
sgx_titandt_depthofbook_itch_v1_4.order_book_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory Message
sgx_titandt_depthofbook_itch_v1_4.order_book_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = sgx_titandt_depthofbook_itch_v1_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = sgx_titandt_depthofbook_itch_v1_4.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = sgx_titandt_depthofbook_itch_v1_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = sgx_titandt_depthofbook_itch_v1_4.long_name.dissect(buffer, index, packet, parent)

  -- Reserved 12: Reserved
  index, reserved_12 = sgx_titandt_depthofbook_itch_v1_4.reserved_12.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = sgx_titandt_depthofbook_itch_v1_4.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = sgx_titandt_depthofbook_itch_v1_4.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = sgx_titandt_depthofbook_itch_v1_4.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Reserved 4 A: Reserved
  index, reserved_4_a = sgx_titandt_depthofbook_itch_v1_4.reserved_4_a.dissect(buffer, index, packet, parent)

  -- Reserved 4 B: Reserved
  index, reserved_4_b = sgx_titandt_depthofbook_itch_v1_4.reserved_4_b.dissect(buffer, index, packet, parent)

  -- Reserved 4 C: Reserved
  index, reserved_4_c = sgx_titandt_depthofbook_itch_v1_4.reserved_4_c.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = sgx_titandt_depthofbook_itch_v1_4.nominal_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory Message
sgx_titandt_depthofbook_itch_v1_4.order_book_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.order_book_directory_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.order_book_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.order_book_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.order_book_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
sgx_titandt_depthofbook_itch_v1_4.seconds_message = {}

-- Size: Seconds Message
sgx_titandt_depthofbook_itch_v1_4.seconds_message.size =
  sgx_titandt_depthofbook_itch_v1_4.second.size

-- Display: Seconds Message
sgx_titandt_depthofbook_itch_v1_4.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
sgx_titandt_depthofbook_itch_v1_4.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = sgx_titandt_depthofbook_itch_v1_4.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  sgx_titandt_depthofbook_itch_v1_4.second.current = second

  if not packet.visited then
    sgx_titandt_depthofbook_itch_v1_4.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Seconds Message
sgx_titandt_depthofbook_itch_v1_4.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.seconds_message, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
sgx_titandt_depthofbook_itch_v1_4.payload = {}

-- Dissect: Payload
sgx_titandt_depthofbook_itch_v1_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return sgx_titandt_depthofbook_itch_v1_4.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory Message
  if message_type == "R" then
    return sgx_titandt_depthofbook_itch_v1_4.order_book_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Book Directory Message
  if message_type == "M" then
    return sgx_titandt_depthofbook_itch_v1_4.combination_order_book_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Table Entry Message
  if message_type == "L" then
    return sgx_titandt_depthofbook_itch_v1_4.tick_size_table_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return sgx_titandt_depthofbook_itch_v1_4.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if message_type == "O" then
    return sgx_titandt_depthofbook_itch_v1_4.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return sgx_titandt_depthofbook_itch_v1_4.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return sgx_titandt_depthofbook_itch_v1_4.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return sgx_titandt_depthofbook_itch_v1_4.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return sgx_titandt_depthofbook_itch_v1_4.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return sgx_titandt_depthofbook_itch_v1_4.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return sgx_titandt_depthofbook_itch_v1_4.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Update Message
  if message_type == "Z" then
    return sgx_titandt_depthofbook_itch_v1_4.equilibrium_price_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
sgx_titandt_depthofbook_itch_v1_4.message_header = {}

-- Size: Message Header
sgx_titandt_depthofbook_itch_v1_4.message_header.size =
  sgx_titandt_depthofbook_itch_v1_4.message_length.size + 
  sgx_titandt_depthofbook_itch_v1_4.message_type.size

-- Display: Message Header
sgx_titandt_depthofbook_itch_v1_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
sgx_titandt_depthofbook_itch_v1_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = sgx_titandt_depthofbook_itch_v1_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 13 values
  index, message_type = sgx_titandt_depthofbook_itch_v1_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
sgx_titandt_depthofbook_itch_v1_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_header, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
sgx_titandt_depthofbook_itch_v1_4.message = {}

-- Read runtime size of: Message
sgx_titandt_depthofbook_itch_v1_4.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
sgx_titandt_depthofbook_itch_v1_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
sgx_titandt_depthofbook_itch_v1_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and sgx_titandt_depthofbook_itch_v1_4.sequence ~= nil then
    local sequence = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.message_sequence_number, UInt64.new(sgx_titandt_depthofbook_itch_v1_4.sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = sgx_titandt_depthofbook_itch_v1_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = sgx_titandt_depthofbook_itch_v1_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
sgx_titandt_depthofbook_itch_v1_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = sgx_titandt_depthofbook_itch_v1_4.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.message, buffer(offset, 0))
    local current = sgx_titandt_depthofbook_itch_v1_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = sgx_titandt_depthofbook_itch_v1_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    sgx_titandt_depthofbook_itch_v1_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
sgx_titandt_depthofbook_itch_v1_4.end_of_session = {}

-- Display: End Of Session
sgx_titandt_depthofbook_itch_v1_4.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
sgx_titandt_depthofbook_itch_v1_4.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = sgx_titandt_depthofbook_itch_v1_4.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
sgx_titandt_depthofbook_itch_v1_4.heartbeat = {}

-- Display: Heartbeat
sgx_titandt_depthofbook_itch_v1_4.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
sgx_titandt_depthofbook_itch_v1_4.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = sgx_titandt_depthofbook_itch_v1_4.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
sgx_titandt_depthofbook_itch_v1_4.messages = {}

-- Dissect: Messages
sgx_titandt_depthofbook_itch_v1_4.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return sgx_titandt_depthofbook_itch_v1_4.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return sgx_titandt_depthofbook_itch_v1_4.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = sgx_titandt_depthofbook_itch_v1_4.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
sgx_titandt_depthofbook_itch_v1_4.packet_header = {}

-- Size: Packet Header
sgx_titandt_depthofbook_itch_v1_4.packet_header.size =
  sgx_titandt_depthofbook_itch_v1_4.session.size + 
  sgx_titandt_depthofbook_itch_v1_4.sequence_number.size + 
  sgx_titandt_depthofbook_itch_v1_4.message_count.size

-- Display: Packet Header
sgx_titandt_depthofbook_itch_v1_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
sgx_titandt_depthofbook_itch_v1_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = sgx_titandt_depthofbook_itch_v1_4.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = sgx_titandt_depthofbook_itch_v1_4.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = sgx_titandt_depthofbook_itch_v1_4.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  sgx_titandt_depthofbook_itch_v1_4.sequence = sequence_number

  return index
end

-- Dissect: Packet Header
sgx_titandt_depthofbook_itch_v1_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4.fields.packet_header, buffer(offset, 0))
    local index = sgx_titandt_depthofbook_itch_v1_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sgx_titandt_depthofbook_itch_v1_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sgx_titandt_depthofbook_itch_v1_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
sgx_titandt_depthofbook_itch_v1_4.packet = {}

-- Verify required size of Udp packet
sgx_titandt_depthofbook_itch_v1_4.packet.requiredsize = function(buffer)
  return buffer:len() >= sgx_titandt_depthofbook_itch_v1_4.packet_header.size
end

-- Dissect Packet
sgx_titandt_depthofbook_itch_v1_4.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = sgx_titandt_depthofbook_itch_v1_4.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  sgx_titandt_depthofbook_itch_v1_4.second.current = data.second.frames[packet.number]
  sgx_titandt_depthofbook_itch_v1_4.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = sgx_titandt_depthofbook_itch_v1_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = sgx_titandt_depthofbook_itch_v1_4.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_sgx_titandt_depthofbook_itch_v1_4.init()
  sgx_titandt_depthofbook_itch_v1_4.second.current = nil
  sgx_titandt_depthofbook_itch_v1_4.conversation.current = nil
  sgx_titandt_depthofbook_itch_v1_4.conversation.flows = {}
end

-- Dissector for Sgx TitanDt DepthOfBook Itch 1.4
function omi_sgx_titandt_depthofbook_itch_v1_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_sgx_titandt_depthofbook_itch_v1_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_sgx_titandt_depthofbook_itch_v1_4, buffer(), omi_sgx_titandt_depthofbook_itch_v1_4.description, "("..buffer:len().." Bytes)")
  return sgx_titandt_depthofbook_itch_v1_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Sgx TitanDt DepthOfBook Itch 1.4 (Udp)
local function omi_sgx_titandt_depthofbook_itch_v1_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not sgx_titandt_depthofbook_itch_v1_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_sgx_titandt_depthofbook_itch_v1_4
  omi_sgx_titandt_depthofbook_itch_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Sgx TitanDt DepthOfBook Itch 1.4
omi_sgx_titandt_depthofbook_itch_v1_4:register_heuristic("udp", omi_sgx_titandt_depthofbook_itch_v1_4_udp_heuristic)

-- Register Sgx TitanDt DepthOfBook Itch 1.4 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_sgx_titandt_depthofbook_itch_v1_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Singapore Exchange
--   Version: 1.4
--   Date: Tuesday, May 10, 2016
--   Specification: Titan_ITCH_and_GLIMPSE_Protocol_Specifications.pdf
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
