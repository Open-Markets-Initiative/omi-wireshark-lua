-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NordicDerivatives DepthOfBook Itch 1.06 Protocol
local omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06 = Proto("Omi.Nasdaq.NordicDerivatives.DepthOfBook.Itch.v1.06", "Nasdaq NordicDerivatives DepthOfBook Itch 1.06")

-- Protocol table
local nasdaq_nordicderivatives_depthofbook_itch_v1_06 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NordicDerivatives DepthOfBook Itch 1.06 Fields
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.available_ask_quantity_at_equilibrium_price = ProtoField.new("Available Ask Quantity At Equilibrium Price", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.availableaskquantityatequilibriumprice", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.available_bid_quantity_at_equilibrium_price = ProtoField.new("Available Bid Quantity At Equilibrium Price", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.availablebidquantityatequilibriumprice", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.bait_implied_order = ProtoField.new("Bait Implied Order", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.baitimpliedorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.block_lot_size = ProtoField.new("Block Lot Size", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.blocklotsize", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.convert_to_aggressive = ProtoField.new("Convert To Aggressive", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.converttoaggressive", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.equilibriumprice", ftypes.INT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.event_code = ProtoField.new("Event Code", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.eventcode", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.executed_quantity = ProtoField.new("Executed Quantity", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.executedquantity", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.fill_and_kill_immediately = ProtoField.new("Fill And Kill Immediately", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.fillandkillimmediately", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.financial_product = ProtoField.new("Financial Product", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.financialproduct", ftypes.UINT8)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.firm_color_disabled = ProtoField.new("Firm Color Disabled", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.firmcolordisabled", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.force = ProtoField.new("Force", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.force", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.isin = ProtoField.new("Isin", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.isin", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_1_ratio = ProtoField.new("Leg 1 Ratio", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg1ratio", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_1_side = ProtoField.new("Leg 1 Side", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg1side", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_1_symbol = ProtoField.new("Leg 1 Symbol", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg1symbol", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_2_ratio = ProtoField.new("Leg 2 Ratio", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg2ratio", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_2_side = ProtoField.new("Leg 2 Side", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg2side", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_2_symbol = ProtoField.new("Leg 2 Symbol", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg2symbol", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_3_ratio = ProtoField.new("Leg 3 Ratio", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg3ratio", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_3_side = ProtoField.new("Leg 3 Side", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg3side", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_3_symbol = ProtoField.new("Leg 3 Symbol", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg3symbol", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_4_ratio = ProtoField.new("Leg 4 Ratio", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg4ratio", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_4_side = ProtoField.new("Leg 4 Side", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg4side", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_4_symbol = ProtoField.new("Leg 4 Symbol", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.leg4symbol", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.long_name = ProtoField.new("Long Name", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.longname", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.lot_type = ProtoField.new("Lot Type", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.lottype", ftypes.UINT8)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.market_bid = ProtoField.new("Market Bid", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.marketbid", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.match_id = ProtoField.new("Match Id", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.matchid", ftypes.BYTES)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_count = ProtoField.new("Message Count", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.messagecount", ftypes.UINT16)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_length = ProtoField.new("Message Length", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.messagelength", ftypes.UINT16)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_type = ProtoField.new("Message Type", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.messagetype", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.nanoseconds", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.new_order_book_position = ProtoField.new("New Order Book Position", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.neworderbookposition", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.nominal_value = ProtoField.new("Nominal Value", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.nominalvalue", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.numberofdecimalsinnominalvalue", ftypes.UINT16)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.numberofdecimalsinprice", ftypes.UINT16)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.occurred_at_cross = ProtoField.new("Occurred At Cross", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.occurredatcross", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.oddlotsize", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_attributes = ProtoField.new("Order Attributes", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.orderattributes", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_book_id = ProtoField.new("Order Book Id", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.orderbookid", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_book_position = ProtoField.new("Order Book Position", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.orderbookposition", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_id = ProtoField.new("Order Id", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.orderid", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.override_crossing = ProtoField.new("Override Crossing", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.overridecrossing", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.participant_id = ProtoField.new("Participant Id", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.participantid", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.participant_id_counterparty = ProtoField.new("Participant Id Counterparty", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.participantidcounterparty", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.participant_id_owner = ProtoField.new("Participant Id Owner", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.participantidowner", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.price = ProtoField.new("Price", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.price", ftypes.INT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.price_from = ProtoField.new("Price From", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.pricefrom", ftypes.INT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.price_stabilization = ProtoField.new("Price Stabilization", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.pricestabilization", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.price_to = ProtoField.new("Price To", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.priceto", ftypes.INT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.printable = ProtoField.new("Printable", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.printable", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.quantity = ProtoField.new("Quantity", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.quantity", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_4_a = ProtoField.new("Reserved 4 A", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.reserved4a", ftypes.BYTES)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_4_b = ProtoField.new("Reserved 4 B", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.reserved4b", ftypes.BYTES)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_8_a = ProtoField.new("Reserved 8 A", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.reserved8a", ftypes.BYTES)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_8_b = ProtoField.new("Reserved 8 B", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.reserved8b", ftypes.BYTES)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_bits_15_to_16 = ProtoField.new("Reserved Bits 15 To 16", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.reservedbits15to16", ftypes.UINT16, nil, base.DEC, 0xC000)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_bits_7_to_10 = ProtoField.new("Reserved Bits 7 To 10", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.reservedbits7to10", ftypes.UINT16, nil, base.DEC, 0x03C0)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.roundlotsize", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.second = ProtoField.new("Second", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.second", ftypes.UINT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.sequencenumber", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.session = ProtoField.new("Session", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.session", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.short_sell = ProtoField.new("Short Sell", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.shortsell", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.side = ProtoField.new("Side", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.side", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.state_name = ProtoField.new("State Name", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.statename", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.symbol = ProtoField.new("Symbol", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.symbol", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.tick_size = ProtoField.new("Tick Size", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.ticksize", ftypes.INT64)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.tradeprice", ftypes.INT32)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.trading_currency = ProtoField.new("Trading Currency", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.tradingcurrency", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.undisclosed = ProtoField.new("Undisclosed", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.undisclosed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)

-- Nasdaq NordicDerivatives DepthOfBook Itch 1.06 Framing
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message = ProtoField.new("Message", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.message", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_header = ProtoField.new("Message Header", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.messageheader", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.packet = ProtoField.new("Packet", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.packet", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.packetheader", ftypes.STRING)

-- Nasdaq NordicDerivatives DepthOfBook 1.06 Application Messages
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.add_order_mpid_attribution = ProtoField.new("Add Order Mpid Attribution", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.addordermpidattribution", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.add_order_no_mpid_attribution = ProtoField.new("Add Order No Mpid Attribution", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.addordernompidattribution", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.combination_order_book_directory = ProtoField.new("Combination Order Book Directory", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.combinationorderbookdirectory", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.equilibrium_price_update = ProtoField.new("Equilibrium Price Update", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.equilibriumpriceupdate", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_book_directory = ProtoField.new("Order Book Directory", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.orderbookdirectory", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_book_state_message = ProtoField.new("Order Book State Message", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.orderbookstatemessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_delete_message = ProtoField.new("Order Delete Message", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.orderdeletemessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_executed_message = ProtoField.new("Order Executed Message", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.orderexecutedmessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.orderexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_replace_message = ProtoField.new("Order Replace Message", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.orderreplacemessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.seconds_message = ProtoField.new("Seconds Message", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.secondsmessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.systemeventmessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.tick_size_table_entry = ProtoField.new("Tick Size Table Entry", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.ticksizetableentry", ftypes.STRING)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.trademessage", ftypes.STRING)

-- Nasdaq NordicDerivatives DepthOfBook 1.06 Session Messages
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.endofsession", ftypes.BYTES)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.heartbeat", ftypes.BYTES)

-- Nasdaq NordicDerivatives DepthOfBook Itch 1.06 Generated Fields
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_index = ProtoField.new("Message Index", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.messageindex", ftypes.UINT16)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.messagesequencenumber", ftypes.UINT64)
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.nordicderivatives.depthofbook.itch.v1.06.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq NordicDerivatives DepthOfBook Itch 1.06 Formatting
-----------------------------------------------------------------------

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
nasdaq_nordicderivatives_depthofbook_itch_v1_06.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NordicDerivatives DepthOfBook Itch 1.06 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NordicDerivatives DepthOfBook Itch 1.06 Show Options
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

-- Handle changed preferences
function omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_headers then
    show.headers = omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_structs then
    show.structs = omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_indexes then
    show.indexes = omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_sequences then
    show.sequences = omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.show_sequences
  end
  if nasdaq_nordicderivatives_depthofbook_itch_v1_06.format_timestamp ~= omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.format_timestamp then
    nasdaq_nordicderivatives_depthofbook_itch_v1_06.format_timestamp = omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.prefs.format_timestamp
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation = {}
nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.data = function(packet)
  local key = nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.key(packet)
  local data = nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} } }
    nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.current = nil


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
-- Nasdaq NordicDerivatives DepthOfBook Itch 1.06 Fields
-----------------------------------------------------------------------

-- Available Ask Quantity At Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_ask_quantity_at_equilibrium_price = {}

-- Size: Available Ask Quantity At Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_ask_quantity_at_equilibrium_price.size = 8

-- Display: Available Ask Quantity At Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_ask_quantity_at_equilibrium_price.display = function(value)
  return "Available Ask Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Ask Quantity At Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_ask_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_ask_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_ask_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.available_ask_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Available Bid Quantity At Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_bid_quantity_at_equilibrium_price = {}

-- Size: Available Bid Quantity At Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_bid_quantity_at_equilibrium_price.size = 8

-- Display: Available Bid Quantity At Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_bid_quantity_at_equilibrium_price.display = function(value)
  return "Available Bid Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Bid Quantity At Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_bid_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_bid_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_bid_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.available_bid_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Block Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.block_lot_size = {}

-- Size: Block Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.block_lot_size.size = 4

-- Display: Block Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price = {}

-- Size: Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price.size = 4

-- Display: Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Equilibrium Price: No Value"
  end

  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nordicderivatives_depthofbook_itch_v1_06.event_code = {}

-- Size: Event Code
nasdaq_nordicderivatives_depthofbook_itch_v1_06.event_code.size = 1

-- Display: Event Code
nasdaq_nordicderivatives_depthofbook_itch_v1_06.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_nordicderivatives_depthofbook_itch_v1_06.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
nasdaq_nordicderivatives_depthofbook_itch_v1_06.executed_quantity = {}

-- Size: Executed Quantity
nasdaq_nordicderivatives_depthofbook_itch_v1_06.executed_quantity.size = 8

-- Display: Executed Quantity
nasdaq_nordicderivatives_depthofbook_itch_v1_06.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
nasdaq_nordicderivatives_depthofbook_itch_v1_06.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Financial Product
nasdaq_nordicderivatives_depthofbook_itch_v1_06.financial_product = {}

-- Size: Financial Product
nasdaq_nordicderivatives_depthofbook_itch_v1_06.financial_product.size = 1

-- Display: Financial Product
nasdaq_nordicderivatives_depthofbook_itch_v1_06.financial_product.display = function(value)
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
nasdaq_nordicderivatives_depthofbook_itch_v1_06.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Isin
nasdaq_nordicderivatives_depthofbook_itch_v1_06.isin = {}

-- Size: Isin
nasdaq_nordicderivatives_depthofbook_itch_v1_06.isin.size = 12

-- Display: Isin
nasdaq_nordicderivatives_depthofbook_itch_v1_06.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
nasdaq_nordicderivatives_depthofbook_itch_v1_06.isin.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.isin, range, value, display)

  return offset + length, value
end

-- Leg 1 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_ratio = {}

-- Size: Leg 1 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_ratio.size = 4

-- Display: Leg 1 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_ratio.display = function(value)
  return "Leg 1 Ratio: "..value
end

-- Dissect: Leg 1 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_1_ratio, range, value, display)

  return offset + length, value
end

-- Leg 1 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_side = {}

-- Size: Leg 1 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_side.size = 1

-- Display: Leg 1 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_side.display = function(value)
  if value == "B" then
    return "Leg 1 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 1 Side: Opposite (C)"
  end

  return "Leg 1 Side: Unknown("..value..")"
end

-- Dissect: Leg 1 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_1_side, range, value, display)

  return offset + length, value
end

-- Leg 1 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_symbol = {}

-- Size: Leg 1 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_symbol.size = 32

-- Display: Leg 1 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_symbol.display = function(value)
  return "Leg 1 Symbol: "..value
end

-- Dissect: Leg 1 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_1_symbol, range, value, display)

  return offset + length, value
end

-- Leg 2 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_ratio = {}

-- Size: Leg 2 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_ratio.size = 4

-- Display: Leg 2 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_ratio.display = function(value)
  return "Leg 2 Ratio: "..value
end

-- Dissect: Leg 2 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_2_ratio, range, value, display)

  return offset + length, value
end

-- Leg 2 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_side = {}

-- Size: Leg 2 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_side.size = 1

-- Display: Leg 2 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_side.display = function(value)
  if value == "B" then
    return "Leg 2 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 2 Side: Opposite (C)"
  end

  return "Leg 2 Side: Unknown("..value..")"
end

-- Dissect: Leg 2 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_2_side, range, value, display)

  return offset + length, value
end

-- Leg 2 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_symbol = {}

-- Size: Leg 2 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_symbol.size = 32

-- Display: Leg 2 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_symbol.display = function(value)
  return "Leg 2 Symbol: "..value
end

-- Dissect: Leg 2 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_2_symbol, range, value, display)

  return offset + length, value
end

-- Leg 3 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_ratio = {}

-- Size: Leg 3 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_ratio.size = 4

-- Display: Leg 3 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_ratio.display = function(value)
  return "Leg 3 Ratio: "..value
end

-- Dissect: Leg 3 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_3_ratio, range, value, display)

  return offset + length, value
end

-- Leg 3 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_side = {}

-- Size: Leg 3 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_side.size = 1

-- Display: Leg 3 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_side.display = function(value)
  if value == "B" then
    return "Leg 3 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 3 Side: Opposite (C)"
  end

  return "Leg 3 Side: Unknown("..value..")"
end

-- Dissect: Leg 3 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_3_side, range, value, display)

  return offset + length, value
end

-- Leg 3 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_symbol = {}

-- Size: Leg 3 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_symbol.size = 32

-- Display: Leg 3 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_symbol.display = function(value)
  return "Leg 3 Symbol: "..value
end

-- Dissect: Leg 3 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_3_symbol, range, value, display)

  return offset + length, value
end

-- Leg 4 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_ratio = {}

-- Size: Leg 4 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_ratio.size = 4

-- Display: Leg 4 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_ratio.display = function(value)
  return "Leg 4 Ratio: "..value
end

-- Dissect: Leg 4 Ratio
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_4_ratio, range, value, display)

  return offset + length, value
end

-- Leg 4 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_side = {}

-- Size: Leg 4 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_side.size = 1

-- Display: Leg 4 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_side.display = function(value)
  if value == "B" then
    return "Leg 4 Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg 4 Side: Opposite (C)"
  end

  return "Leg 4 Side: Unknown("..value..")"
end

-- Dissect: Leg 4 Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_4_side, range, value, display)

  return offset + length, value
end

-- Leg 4 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_symbol = {}

-- Size: Leg 4 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_symbol.size = 32

-- Display: Leg 4 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_symbol.display = function(value)
  return "Leg 4 Symbol: "..value
end

-- Dissect: Leg 4 Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.leg_4_symbol, range, value, display)

  return offset + length, value
end

-- Long Name
nasdaq_nordicderivatives_depthofbook_itch_v1_06.long_name = {}

-- Size: Long Name
nasdaq_nordicderivatives_depthofbook_itch_v1_06.long_name.size = 32

-- Display: Long Name
nasdaq_nordicderivatives_depthofbook_itch_v1_06.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
nasdaq_nordicderivatives_depthofbook_itch_v1_06.long_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.long_name, range, value, display)

  return offset + length, value
end

-- Lot Type
nasdaq_nordicderivatives_depthofbook_itch_v1_06.lot_type = {}

-- Size: Lot Type
nasdaq_nordicderivatives_depthofbook_itch_v1_06.lot_type.size = 1

-- Display: Lot Type
nasdaq_nordicderivatives_depthofbook_itch_v1_06.lot_type.display = function(value)
  if value == 0 then
    return "Lot Type: Undefined (0)"
  end
  if value == 1 then
    return "Lot Type: Odd Lot (1)"
  end
  if value == 2 then
    return "Lot Type: Round Lot (2)"
  end
  if value == 3 then
    return "Lot Type: Block Lot (3)"
  end
  if value == 4 then
    return "Lot Type: All Or None Lot (4)"
  end

  return "Lot Type: Unknown("..value..")"
end

-- Dissect: Lot Type
nasdaq_nordicderivatives_depthofbook_itch_v1_06.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.lot_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Match Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id = {}

-- Size: Match Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id.size = 12

-- Display: Match Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.match_id, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_count = {}

-- Size: Message Count
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_count.size = 2

-- Display: Message Count
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_length = {}

-- Size: Message Length
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_length.size = 2

-- Display: Message Length
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_type = {}

-- Size: Message Type
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_type.size = 1

-- Display: Message Type
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Seconds Message (T)"
  end
  if value == "R" then
    return "Message Type: Order Book Directory (R)"
  end
  if value == "M" then
    return "Message Type: Combination Order Book Directory (M)"
  end
  if value == "L" then
    return "Message Type: Tick Size Table Entry (L)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "O" then
    return "Message Type: Order Book State Message (O)"
  end
  if value == "A" then
    return "Message Type: Add Order No Mpid Attribution (A)"
  end
  if value == "F" then
    return "Message Type: Add Order Mpid Attribution (F)"
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
    return "Message Type: Equilibrium Price Update (Z)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Order Book Position
nasdaq_nordicderivatives_depthofbook_itch_v1_06.new_order_book_position = {}

-- Size: New Order Book Position
nasdaq_nordicderivatives_depthofbook_itch_v1_06.new_order_book_position.size = 4

-- Display: New Order Book Position
nasdaq_nordicderivatives_depthofbook_itch_v1_06.new_order_book_position.display = function(value)
  return "New Order Book Position: "..value
end

-- Dissect: New Order Book Position
nasdaq_nordicderivatives_depthofbook_itch_v1_06.new_order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.new_order_book_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.new_order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.new_order_book_position, range, value, display)

  return offset + length, value
end

-- Nominal Value
nasdaq_nordicderivatives_depthofbook_itch_v1_06.nominal_value = {}

-- Size: Nominal Value
nasdaq_nordicderivatives_depthofbook_itch_v1_06.nominal_value.size = 8

-- Display: Nominal Value
nasdaq_nordicderivatives_depthofbook_itch_v1_06.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
nasdaq_nordicderivatives_depthofbook_itch_v1_06.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_nominal_value = {}

-- Size: Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_nominal_value.size = 2

-- Display: Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_nominal_value.display = function(value)
  return "Number Of Decimals In Nominal Value: "..value
end

-- Dissect: Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_price = {}

-- Size: Number Of Decimals In Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_price.size = 2

-- Display: Number Of Decimals In Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_price.display = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Occurred At Cross
nasdaq_nordicderivatives_depthofbook_itch_v1_06.occurred_at_cross = {}

-- Size: Occurred At Cross
nasdaq_nordicderivatives_depthofbook_itch_v1_06.occurred_at_cross.size = 1

-- Display: Occurred At Cross
nasdaq_nordicderivatives_depthofbook_itch_v1_06.occurred_at_cross.display = function(value)
  if value == "Y" then
    return "Occurred At Cross: Yes (Y)"
  end
  if value == "N" then
    return "Occurred At Cross: No (N)"
  end

  return "Occurred At Cross: Unknown("..value..")"
end

-- Dissect: Occurred At Cross
nasdaq_nordicderivatives_depthofbook_itch_v1_06.occurred_at_cross.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.occurred_at_cross.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.occurred_at_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.occurred_at_cross, range, value, display)

  return offset + length, value
end

-- Odd Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.odd_lot_size = {}

-- Size: Odd Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.odd_lot_size.size = 4

-- Display: Odd Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.odd_lot_size.display = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.odd_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.odd_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.odd_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Order Book Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id = {}

-- Size: Order Book Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size = 4

-- Display: Order Book Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Order Book Position
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_position = {}

-- Size: Order Book Position
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_position.size = 4

-- Display: Order Book Position
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Order Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id = {}

-- Size: Order Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.size = 8

-- Display: Order Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_id, range, value, display)

  return offset + length, value
end

-- Participant Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id = {}

-- Size: Participant Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id.size = 7

-- Display: Participant Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Participant Id Counterparty
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty = {}

-- Size: Participant Id Counterparty
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty.size = 7

-- Display: Participant Id Counterparty
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty.display = function(value)
  return "Participant Id Counterparty: "..value
end

-- Dissect: Participant Id Counterparty
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.participant_id_counterparty, range, value, display)

  return offset + length, value
end

-- Participant Id Owner
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner = {}

-- Size: Participant Id Owner
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner.size = 7

-- Display: Participant Id Owner
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner.display = function(value)
  return "Participant Id Owner: "..value
end

-- Dissect: Participant Id Owner
nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.participant_id_owner, range, value, display)

  return offset + length, value
end

-- Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price = {}

-- Size: Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price.size = 4

-- Display: Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.price, range, value, display)

  return offset + length, value
end

-- Price From
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_from = {}

-- Size: Price From
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_from.size = 4

-- Display: Price From
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_from.display = function(value)
  return "Price From: "..value
end

-- Dissect: Price From
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_from.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.price_from, range, value, display)

  return offset + length, value
end

-- Price To
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_to = {}

-- Size: Price To
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_to.size = 4

-- Display: Price To
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_to.display = function(value)
  return "Price To: "..value
end

-- Dissect: Price To
nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_to.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.price_to, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_nordicderivatives_depthofbook_itch_v1_06.printable = {}

-- Size: Printable
nasdaq_nordicderivatives_depthofbook_itch_v1_06.printable.size = 1

-- Display: Printable
nasdaq_nordicderivatives_depthofbook_itch_v1_06.printable.display = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_nordicderivatives_depthofbook_itch_v1_06.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.printable.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.printable, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity = {}

-- Size: Quantity
nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.size = 8

-- Display: Quantity
nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 4 A
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_a = {}

-- Size: Reserved 4 A
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_a.size = 4

-- Display: Reserved 4 A
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_a.display = function(value)
  return "Reserved 4 A: "..value
end

-- Dissect: Reserved 4 A
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_a.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_a.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_4_a, range, value, display)

  return offset + length, value
end

-- Reserved 4 B
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_b = {}

-- Size: Reserved 4 B
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_b.size = 4

-- Display: Reserved 4 B
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_b.display = function(value)
  return "Reserved 4 B: "..value
end

-- Dissect: Reserved 4 B
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_b.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_b.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_4_b, range, value, display)

  return offset + length, value
end

-- Reserved 8 A
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_a = {}

-- Size: Reserved 8 A
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_a.size = 8

-- Display: Reserved 8 A
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_a.display = function(value)
  return "Reserved 8 A: "..value
end

-- Dissect: Reserved 8 A
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_a.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_a.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_8_a, range, value, display)

  return offset + length, value
end

-- Reserved 8 B
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_b = {}

-- Size: Reserved 8 B
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_b.size = 8

-- Display: Reserved 8 B
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_b.display = function(value)
  return "Reserved 8 B: "..value
end

-- Dissect: Reserved 8 B
nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_b.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_b.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_8_b, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Second
nasdaq_nordicderivatives_depthofbook_itch_v1_06.second = {}

-- Size: Second
nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.size = 4

-- Store: Second
nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.current = nil

-- Generated: Second
nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.generated = function(value, range, packet, parent)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.display(value)
  local second = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.display = function(value)
  -- Parse unix seconds timestamp
  return "Second: "..os.date("%Y-%m-%d %H:%M:%S", value)
end

-- Dissect: Second
nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nordicderivatives_depthofbook_itch_v1_06.sequence_number = {}

-- Size: Sequence Number
nasdaq_nordicderivatives_depthofbook_itch_v1_06.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nordicderivatives_depthofbook_itch_v1_06.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nordicderivatives_depthofbook_itch_v1_06.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nordicderivatives_depthofbook_itch_v1_06.session = {}

-- Size: Session
nasdaq_nordicderivatives_depthofbook_itch_v1_06.session.size = 10

-- Display: Session
nasdaq_nordicderivatives_depthofbook_itch_v1_06.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nordicderivatives_depthofbook_itch_v1_06.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.session.size
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

  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.session, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.side = {}

-- Size: Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.size = 1

-- Display: Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == " " then
    return "Side: Blank (<whitespace>)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.side, range, value, display)

  return offset + length, value
end

-- State Name
nasdaq_nordicderivatives_depthofbook_itch_v1_06.state_name = {}

-- Size: State Name
nasdaq_nordicderivatives_depthofbook_itch_v1_06.state_name.size = 20

-- Display: State Name
nasdaq_nordicderivatives_depthofbook_itch_v1_06.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
nasdaq_nordicderivatives_depthofbook_itch_v1_06.state_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.state_name, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.symbol = {}

-- Size: Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.symbol.size = 32

-- Display: Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nordicderivatives_depthofbook_itch_v1_06.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size = {}

-- Size: Tick Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size.size = 8

-- Display: Tick Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_price = {}

-- Size: Trade Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_price.size = 4

-- Display: Trade Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trading Currency
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trading_currency = {}

-- Size: Trading Currency
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trading_currency.size = 3

-- Display: Trading Currency
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp = {}

-- Translate: Timestamp
nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.display = function(nanoseconds, stored_second)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.translate(nanoseconds, stored_second)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.timestamp, range, value, display)

  nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.generated(stored_second, range, packet, parent)

  display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.display(nanoseconds)
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect = function(buffer, offset, packet, parent)
  if nasdaq_nordicderivatives_depthofbook_itch_v1_06.format_timestamp then
    local stored_second = nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.current

    if stored_second ~= nil then
      return nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NordicDerivatives DepthOfBook Itch 1.06
-----------------------------------------------------------------------

-- Equilibrium Price Update
nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price_update = {}

-- Size: Equilibrium Price Update
nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price_update.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_bid_quantity_at_equilibrium_price.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_ask_quantity_at_equilibrium_price.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_a.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_b.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_a.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_b.size

-- Display: Equilibrium Price Update
nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Update
nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- Available Bid Quantity At Equilibrium Price: Numeric
  index, available_bid_quantity_at_equilibrium_price = nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_bid_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Available Ask Quantity At Equilibrium Price: Numeric
  index, available_ask_quantity_at_equilibrium_price = nasdaq_nordicderivatives_depthofbook_itch_v1_06.available_ask_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price
  index, equilibrium_price = nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Reserved 4 A: Reserved
  index, reserved_4_a = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_a.dissect(buffer, index, packet, parent)

  -- Reserved 4 B: Reserved
  index, reserved_4_b = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_4_b.dissect(buffer, index, packet, parent)

  -- Reserved 8 A: Reserved
  index, reserved_8_a = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_a.dissect(buffer, index, packet, parent)

  -- Reserved 8 B: Reserved
  index, reserved_8_b = nasdaq_nordicderivatives_depthofbook_itch_v1_06.reserved_8_b.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Update
nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price_update.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.equilibrium_price_update, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price_update.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_message = {}

-- Size: Trade Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_message.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_price.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.printable.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.occurred_at_cross.size

-- Display: Trade Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_price.dissect(buffer, index, packet, parent)

  -- Participant Id Owner: Alpha
  index, participant_id_owner = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner.dissect(buffer, index, packet, parent)

  -- Participant Id Counterparty: Alpha
  index, participant_id_counterparty = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_nordicderivatives_depthofbook_itch_v1_06.printable.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: Alpha
  index, occurred_at_cross = nasdaq_nordicderivatives_depthofbook_itch_v1_06.occurred_at_cross.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.trade_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_delete_message = {}

-- Size: Order Delete Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_delete_message.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.size

-- Display: Order Delete Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_delete_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Attributes
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes = {}

-- Size: Order Attributes
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.size = 2

-- Display: Order Attributes
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Force flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Force"
  end
  -- Is Short Sell flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Short Sell"
  end
  -- Is Market Bid flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Market Bid"
  end
  -- Is Price Stabilization flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Price Stabilization"
  end
  -- Is Override Crossing flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Override Crossing"
  end
  -- Is Undisclosed flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Undisclosed"
  end
  -- Is Fill And Kill Immediately flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Fill And Kill Immediately"
  end
  -- Is Firm Color Disabled flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Firm Color Disabled"
  end
  -- Is Convert To Aggressive flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Convert To Aggressive"
  end
  -- Is Bait Implied Order flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Bait Implied Order"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Attributes
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.bits = function(range, value, packet, parent)

  -- Force: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.force, range, value)

  -- Short Sell: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.short_sell, range, value)

  -- Market Bid: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.market_bid, range, value)

  -- Price Stabilization: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.price_stabilization, range, value)

  -- Override Crossing: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.override_crossing, range, value)

  -- Undisclosed: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.undisclosed, range, value)

  -- Reserved Bits 7 To 10: 4 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_bits_7_to_10, range, value)

  -- Fill And Kill Immediately: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.fill_and_kill_immediately, range, value)

  -- Firm Color Disabled: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.firm_color_disabled, range, value)

  -- Convert To Aggressive: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.convert_to_aggressive, range, value)

  -- Bait Implied Order: 1 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.bait_implied_order, range, value)

  -- Reserved Bits 15 To 16: 2 Bit
  parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.reserved_bits_15_to_16, range, value)
end

-- Dissect: Order Attributes
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.dissect = function(buffer, offset, packet, parent)
  local size = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.display(range, value, packet, parent)
  local element = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_attributes, range, display)

  if show.structs then
    nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Replace Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_replace_message = {}

-- Size: Order Replace Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_replace_message.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.new_order_book_position.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.price.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.size

-- Display: Order Replace Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.dissect(buffer, index, packet, parent)

  -- New Order Book Position: Numeric
  index, new_order_book_position = nasdaq_nordicderivatives_depthofbook_itch_v1_06.new_order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicderivatives_depthofbook_itch_v1_06.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 12 fields
  index, order_attributes = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_replace_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_with_price_message.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.executed_quantity.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_price.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.occurred_at_cross.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.printable.size

-- Display: Order Executed With Price Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = nasdaq_nordicderivatives_depthofbook_itch_v1_06.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id.dissect(buffer, index, packet, parent)

  -- Participant Id Owner: Alpha
  index, participant_id_owner = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner.dissect(buffer, index, packet, parent)

  -- Participant Id Counterparty: Alpha
  index, participant_id_counterparty = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_price.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: Alpha
  index, occurred_at_cross = nasdaq_nordicderivatives_depthofbook_itch_v1_06.occurred_at_cross.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_nordicderivatives_depthofbook_itch_v1_06.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_message = {}

-- Size: Order Executed Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_message.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.executed_quantity.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty.size

-- Display: Order Executed Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = nasdaq_nordicderivatives_depthofbook_itch_v1_06.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.match_id.dissect(buffer, index, packet, parent)

  -- Participant Id Owner: Alpha
  index, participant_id_owner = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_owner.dissect(buffer, index, packet, parent)

  -- Participant Id Counterparty: Alpha
  index, participant_id_counterparty = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id_counterparty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_executed_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Mpid Attribution
nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_mpid_attribution = {}

-- Size: Add Order Mpid Attribution
nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_mpid_attribution.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_position.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.price.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.lot_type.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id.size

-- Display: Add Order Mpid Attribution
nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_mpid_attribution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Mpid Attribution
nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_mpid_attribution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.dissect(buffer, index, packet, parent)

  -- Order Book Position: Numeric
  index, order_book_position = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicderivatives_depthofbook_itch_v1_06.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 12 fields
  index, order_attributes = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = nasdaq_nordicderivatives_depthofbook_itch_v1_06.lot_type.dissect(buffer, index, packet, parent)

  -- Participant Id: Alpha
  index, participant_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Mpid Attribution
nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_mpid_attribution.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.add_order_mpid_attribution, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_mpid_attribution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_mpid_attribution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_mpid_attribution.fields(buffer, offset, packet, parent)
  end
end

-- Add Order No Mpid Attribution
nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_no_mpid_attribution = {}

-- Size: Add Order No Mpid Attribution
nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_no_mpid_attribution.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_position.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.price.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.lot_type.size

-- Display: Add Order No Mpid Attribution
nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_no_mpid_attribution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Mpid Attribution
nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_no_mpid_attribution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nordicderivatives_depthofbook_itch_v1_06.side.dissect(buffer, index, packet, parent)

  -- Order Book Position: Numeric
  index, order_book_position = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = nasdaq_nordicderivatives_depthofbook_itch_v1_06.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nasdaq_nordicderivatives_depthofbook_itch_v1_06.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 12 fields
  index, order_attributes = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = nasdaq_nordicderivatives_depthofbook_itch_v1_06.lot_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Attribution
nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_no_mpid_attribution.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.add_order_no_mpid_attribution, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_no_mpid_attribution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_no_mpid_attribution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_no_mpid_attribution.fields(buffer, offset, packet, parent)
  end
end

-- Order Book State Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_state_message = {}

-- Size: Order Book State Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_state_message.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.state_name.size

-- Display: Order Book State Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = nasdaq_nordicderivatives_depthofbook_itch_v1_06.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_book_state_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.system_event_message = {}

-- Size: System Event Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.system_event_message.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.event_code.size

-- Display: System Event Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nordicderivatives_depthofbook_itch_v1_06.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size Table Entry
nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size_table_entry = {}

-- Size: Tick Size Table Entry
nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size_table_entry.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_from.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_to.size

-- Display: Tick Size Table Entry
nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size_table_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Table Entry
nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size_table_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Price
  index, tick_size = nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = nasdaq_nordicderivatives_depthofbook_itch_v1_06.price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Table Entry
nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size_table_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.tick_size_table_entry, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size_table_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size_table_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size_table_entry.fields(buffer, offset, packet, parent)
  end
end

-- Combination Order Book Directory
nasdaq_nordicderivatives_depthofbook_itch_v1_06.combination_order_book_directory = {}

-- Size: Combination Order Book Directory
nasdaq_nordicderivatives_depthofbook_itch_v1_06.combination_order_book_directory.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.symbol.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.long_name.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.isin.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.financial_product.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.trading_currency.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_price.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_nominal_value.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.odd_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.round_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.block_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nominal_value.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_symbol.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_side.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_ratio.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_symbol.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_side.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_ratio.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_symbol.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_side.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_ratio.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_symbol.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_side.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_ratio.size

-- Display: Combination Order Book Directory
nasdaq_nordicderivatives_depthofbook_itch_v1_06.combination_order_book_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Book Directory
nasdaq_nordicderivatives_depthofbook_itch_v1_06.combination_order_book_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nordicderivatives_depthofbook_itch_v1_06.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = nasdaq_nordicderivatives_depthofbook_itch_v1_06.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = nasdaq_nordicderivatives_depthofbook_itch_v1_06.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = nasdaq_nordicderivatives_depthofbook_itch_v1_06.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = nasdaq_nordicderivatives_depthofbook_itch_v1_06.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: Numeric
  index, odd_lot_size = nasdaq_nordicderivatives_depthofbook_itch_v1_06.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = nasdaq_nordicderivatives_depthofbook_itch_v1_06.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = nasdaq_nordicderivatives_depthofbook_itch_v1_06.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = nasdaq_nordicderivatives_depthofbook_itch_v1_06.nominal_value.dissect(buffer, index, packet, parent)

  -- Leg 1 Symbol: Alpha
  index, leg_1_symbol = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_symbol.dissect(buffer, index, packet, parent)

  -- Leg 1 Side: Alpha
  index, leg_1_side = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_side.dissect(buffer, index, packet, parent)

  -- Leg 1 Ratio: Numeric
  index, leg_1_ratio = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_1_ratio.dissect(buffer, index, packet, parent)

  -- Leg 2 Symbol: Alpha
  index, leg_2_symbol = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_symbol.dissect(buffer, index, packet, parent)

  -- Leg 2 Side: Alpha
  index, leg_2_side = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_side.dissect(buffer, index, packet, parent)

  -- Leg 2 Ratio: Numeric
  index, leg_2_ratio = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_2_ratio.dissect(buffer, index, packet, parent)

  -- Leg 3 Symbol: Alpha
  index, leg_3_symbol = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_symbol.dissect(buffer, index, packet, parent)

  -- Leg 3 Side: Alpha
  index, leg_3_side = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_side.dissect(buffer, index, packet, parent)

  -- Leg 3 Ratio: Numeric
  index, leg_3_ratio = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_3_ratio.dissect(buffer, index, packet, parent)

  -- Leg 4 Symbol: Alpha
  index, leg_4_symbol = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_symbol.dissect(buffer, index, packet, parent)

  -- Leg 4 Side: Alpha
  index, leg_4_side = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_side.dissect(buffer, index, packet, parent)

  -- Leg 4 Ratio: Numeric
  index, leg_4_ratio = nasdaq_nordicderivatives_depthofbook_itch_v1_06.leg_4_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Directory
nasdaq_nordicderivatives_depthofbook_itch_v1_06.combination_order_book_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.combination_order_book_directory, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.combination_order_book_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.combination_order_book_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.combination_order_book_directory.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_directory = {}

-- Size: Order Book Directory
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_directory.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nanoseconds.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.symbol.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.long_name.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.isin.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.financial_product.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.trading_currency.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_price.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_nominal_value.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.odd_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.round_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.block_lot_size.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.nominal_value.size

-- Display: Order Book Directory
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = nasdaq_nordicderivatives_depthofbook_itch_v1_06.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nordicderivatives_depthofbook_itch_v1_06.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = nasdaq_nordicderivatives_depthofbook_itch_v1_06.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = nasdaq_nordicderivatives_depthofbook_itch_v1_06.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = nasdaq_nordicderivatives_depthofbook_itch_v1_06.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = nasdaq_nordicderivatives_depthofbook_itch_v1_06.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = nasdaq_nordicderivatives_depthofbook_itch_v1_06.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: Numeric
  index, odd_lot_size = nasdaq_nordicderivatives_depthofbook_itch_v1_06.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = nasdaq_nordicderivatives_depthofbook_itch_v1_06.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = nasdaq_nordicderivatives_depthofbook_itch_v1_06.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = nasdaq_nordicderivatives_depthofbook_itch_v1_06.nominal_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory
nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.order_book_directory, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_directory.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.seconds_message = {}

-- Size: Seconds Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.seconds_message.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.size

-- Display: Seconds Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.current = second

  if not packet.visited then
    nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Seconds Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.seconds_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nordicderivatives_depthofbook_itch_v1_06.payload = {}

-- Dissect: Payload
nasdaq_nordicderivatives_depthofbook_itch_v1_06.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory
  if message_type == "R" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Book Directory
  if message_type == "M" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.combination_order_book_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Table Entry
  if message_type == "L" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.tick_size_table_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if message_type == "O" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Mpid Attribution
  if message_type == "A" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_no_mpid_attribution.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Mpid Attribution
  if message_type == "F" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.add_order_mpid_attribution.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Update
  if message_type == "Z" then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.equilibrium_price_update.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_header = {}

-- Size: Message Header
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_header.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_length.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_type.size

-- Display: Message Header
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message = {}

-- Read runtime size of: Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message_sequence_number, UInt64.new(nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 14 branches
  index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nordicderivatives_depthofbook_itch_v1_06.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.message, buffer(offset, 0))
    local current = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicderivatives_depthofbook_itch_v1_06.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nordicderivatives_depthofbook_itch_v1_06.end_of_session = {}

-- Display: End Of Session
nasdaq_nordicderivatives_depthofbook_itch_v1_06.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nordicderivatives_depthofbook_itch_v1_06.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nordicderivatives_depthofbook_itch_v1_06.heartbeat = {}

-- Display: Heartbeat
nasdaq_nordicderivatives_depthofbook_itch_v1_06.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nordicderivatives_depthofbook_itch_v1_06.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nordicderivatives_depthofbook_itch_v1_06.messages = {}

-- Dissect: Messages
nasdaq_nordicderivatives_depthofbook_itch_v1_06.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_header = {}

-- Size: Packet Header
nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_header.size =
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.session.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.sequence_number.size + 
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_count.size

-- Display: Packet Header
nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nordicderivatives_depthofbook_itch_v1_06.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nordicderivatives_depthofbook_itch_v1_06.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nordicderivatives_depthofbook_itch_v1_06.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet = {}

-- Verify required size of Udp packet
nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_header.size
end

-- Dissect Packet
nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.current = data.second.frames[packet.number]
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nordicderivatives_depthofbook_itch_v1_06.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.init()
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.second.current = nil
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.current = nil
  nasdaq_nordicderivatives_depthofbook_itch_v1_06.conversation.flows = {}
end

-- Dissector for Nasdaq NordicDerivatives DepthOfBook Itch 1.06
function omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06, buffer(), omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.description, "("..buffer:len().." Bytes)")
  return nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NordicDerivatives DepthOfBook Itch 1.06 (Udp)
local function omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicderivatives_depthofbook_itch_v1_06.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06
  omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NordicDerivatives DepthOfBook Itch 1.06
omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06:register_heuristic("udp", omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06_udp_heuristic)

-- Register Nasdaq NordicDerivatives DepthOfBook Itch 1.06 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nordicderivatives_depthofbook_itch_v1_06)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.06
--   Date: Tuesday, February 14, 2012
--   Specification: Nasdaq Nordic Genium INET ITCH Protocol Specification (1.06).pdf
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
