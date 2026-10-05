-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7 Protocol
local omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7 = Proto("Omi.Nasdaq.NordicDerivatives.MarketData.GeniumAmd.v2.28.7", "Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7")

-- Protocol table
local nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7 Fields
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.ask_price = ProtoField.new("Ask Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.askprice", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.best_ask_volume = ProtoField.new("Best Ask Volume", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.bestaskvolume", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.best_bid_volume = ProtoField.new("Best Bid Volume", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.bestbidvolume", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.bid_price = ProtoField.new("Bid Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.bidprice", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.block_lot_size = ProtoField.new("Block Lot Size", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.blocklotsize", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.closing_price = ProtoField.new("Closing Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.closingprice", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.combination_order_book_id = ProtoField.new("Combination Order Book Id", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.combinationorderbookid", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.combo_group_id = ProtoField.new("Combo Group Id", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.combogroupid", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.country_id = ProtoField.new("Country Id", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.countryid", ftypes.UINT8)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.entry_type = ProtoField.new("Entry Type", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.entrytype", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.event_code = ProtoField.new("Event Code", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.eventcode", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.expiration_date = ProtoField.new("Expiration Date", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.expirationdate", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.financial_product = ProtoField.new("Financial Product", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.financialproduct", ftypes.UINT8)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.first_trading_date_and_time = ProtoField.new("First Trading Date And Time", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.firsttradingdateandtime", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.high_price = ProtoField.new("High Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.highprice", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.isin = ProtoField.new("Isin", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.isin", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.last_message = ProtoField.new("Last Message", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.lastmessage", ftypes.UINT8)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.last_price = ProtoField.new("Last Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.lastprice", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.last_trading_date_and_time = ProtoField.new("Last Trading Date And Time", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.lasttradingdateandtime", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.leg_order_book_id = ProtoField.new("Leg Order Book Id", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.legorderbookid", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.leg_ratio = ProtoField.new("Leg Ratio", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.legratio", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.leg_side = ProtoField.new("Leg Side", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.legside", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.level_update = ProtoField.new("Level Update", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.levelupdate", ftypes.UINT16)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.level_update_action = ProtoField.new("Level Update Action", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.levelupdateaction", ftypes.UINT8)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.long_name = ProtoField.new("Long Name", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.longname", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.low_price = ProtoField.new("Low Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.lowprice", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.market_by_level_price = ProtoField.new("Market by Level Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.marketbylevelprice", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.market_id = ProtoField.new("Market Id", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.marketid", ftypes.UINT8)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.market_name = ProtoField.new("Market Name", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.marketname", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.match_id = ProtoField.new("Match Id", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.matchid", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.max_depth = ProtoField.new("Max Depth", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.maxdepth", ftypes.UINT16)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_count = ProtoField.new("Message Count", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.messagecount", ftypes.UINT16)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_length = ProtoField.new("Message Length", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.messagelength", ftypes.UINT16)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_type = ProtoField.new("Message Type", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.messagetype", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.nominal_value = ProtoField.new("Nominal Value", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.nominalvalue", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.notation_date = ProtoField.new("Notation Date", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.notationdate", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.numberofdecimalsinnominalvalue", ftypes.UINT16)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.numberofdecimalsinprice", ftypes.UINT16)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.number_of_decimals_in_strike_price = ProtoField.new("Number Of Decimals In Strike Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.numberofdecimalsinstrikeprice", ftypes.UINT16)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.number_of_legs = ProtoField.new("Number Of Legs", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.numberoflegs", ftypes.UINT8)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.oddlotsize", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.open_interest = ProtoField.new("Open Interest", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.openinterest", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.opening_price = ProtoField.new("Opening Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.openingprice", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.option_style = ProtoField.new("Option Style", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.optionstyle", ftypes.UINT16)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.order_book_id = ProtoField.new("Order Book Id", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.orderbookid", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.physical_delivery = ProtoField.new("Physical Delivery", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.physicaldelivery", ftypes.UINT8)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.previous_trading_date = ProtoField.new("Previous Trading Date", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.previoustradingdate", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_from = ProtoField.new("Price From", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.pricefrom", ftypes.INT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_price_4 = ProtoField.new("Price Price 4", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.priceprice4", ftypes.INT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_source = ProtoField.new("Price Source", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.pricesource", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_to = ProtoField.new("Price To", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.priceto", ftypes.INT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_type = ProtoField.new("Price Type", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.pricetype", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.put_or_call = ProtoField.new("Put Or Call", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.putorcall", ftypes.UINT8)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.quantity = ProtoField.new("Quantity", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.quantity", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.reserved_alpha_1 = ProtoField.new("Reserved Alpha 1", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.reservedalpha1", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.reserved_alpha_5 = ProtoField.new("Reserved Alpha 5", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.reservedalpha5", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.reserved_alpha_7 = ProtoField.new("Reserved Alpha 7", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.reservedalpha7", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.round_lot_size = ProtoField.new("Round Lot Size", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.roundlotsize", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.second = ProtoField.new("Second", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.second", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.second_reserved = ProtoField.new("Second Reserved", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.secondreserved", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.sequencenumber", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.session = ProtoField.new("Session", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.session", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.side = ProtoField.new("Side", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.side", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.strike_price = ProtoField.new("Strike Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.strikeprice", ftypes.INT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.symbol = ProtoField.new("Symbol", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.symbol", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.tick_size = ProtoField.new("Tick Size", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.ticksize", ftypes.INT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.time_of_trade_agreement = ProtoField.new("Time Of Trade Agreement", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.timeoftradeagreement", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.time_of_trade_dissemination = ProtoField.new("Time Of Trade Dissemination", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.timeoftradedissemination", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.time_of_trade_execution = ProtoField.new("Time Of Trade Execution", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.timeoftradeexecution", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.timestampnanoseconds", ftypes.UINT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.trade_price = ProtoField.new("Trade Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.tradeprice", ftypes.INT32)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.trade_type = ProtoField.new("Trade Type", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.tradetype", ftypes.UINT16)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.traded_quantity = ProtoField.new("Traded Quantity", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.tradedquantity", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.trading_currency = ProtoField.new("Trading Currency", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.tradingcurrency", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.turnover = ProtoField.new("Turnover", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.turnover", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.underlying_order_book_id = ProtoField.new("Underlying Order Book Id", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.underlyingorderbookid", ftypes.UINT32)

-- Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7 Framing
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message = ProtoField.new("Message", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.message", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_header = ProtoField.new("Message Header", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.messageheader", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.packet = ProtoField.new("Packet", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.packet", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.packetheader", ftypes.STRING)

-- Nasdaq NordicDerivatives MarketData 2.28.7 Application Messages
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.brokentrademessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.combination_order_book_leg_directory = ProtoField.new("Combination Order Book Leg Directory", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.combinationorderbooklegdirectory", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.market_by_level_message = ProtoField.new("Market By Level Message", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.marketbylevelmessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.market_directory = ProtoField.new("Market Directory", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.marketdirectory", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.open_interest_messsage = ProtoField.new("Open Interest Messsage", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.openinterestmesssage", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.order_book_directory = ProtoField.new("Order Book Directory", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.orderbookdirectory", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_message = ProtoField.new("Price Message", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.pricemessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.quote_request_message = ProtoField.new("Quote Request Message", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.quoterequestmessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.reported_trade = ProtoField.new("Reported Trade", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.reportedtrade", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.seconds_message = ProtoField.new("Seconds Message", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.secondsmessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.systemeventmessage", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.tick_size_table_entry = ProtoField.new("Tick Size Table Entry", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.ticksizetableentry", ftypes.STRING)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.underlying_price_message = ProtoField.new("Underlying Price Message", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.underlyingpricemessage", ftypes.STRING)

-- Nasdaq NordicDerivatives MarketData 2.28.7 Session Messages
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.endofsession", ftypes.BYTES)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.heartbeat", ftypes.BYTES)

-- Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7 Generated Fields
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_index = ProtoField.new("Message Index", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.messageindex", ftypes.UINT16)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.messagesequencenumber", ftypes.UINT64)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.scaled_price_from = ProtoField.new("Scaled Price From", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.scaledpricefrom", ftypes.DOUBLE)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.scaled_price = ProtoField.new("Scaled Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.scaledprice", ftypes.DOUBLE)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.scaled_price_to = ProtoField.new("Scaled Price To", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.scaledpriceto", ftypes.DOUBLE)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.scaled_tick_size = ProtoField.new("Scaled Tick Size", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.scaledticksize", ftypes.DOUBLE)
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.scaled_trade_price = ProtoField.new("Scaled Trade Price", "nasdaq.nordicderivatives.marketdata.geniumamd.v2.28.7.scaledtradeprice", ftypes.DOUBLE)

-----------------------------------------------------------------------
-- Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7 Formatting
-----------------------------------------------------------------------

-- Scaled Tick Size format (true = decimal-scaled, false = raw mantissa)
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.format_decimals = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7 Element Dissection Options
show.records = true
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7 Show Options
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.resolve_records = Pref.bool("Order Book Directory", show.records, "Cache records and resolve cross-packet lookups")
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.format_decimals = Pref.bool("Format Decimals", true, "Format decimal-scaled fields as scaled values (off = raw mantissa)")

-- Handle changed preferences
function omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs_changed()

  -- Check if preferences have changed
  if show.records ~= omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.resolve_records then
    show.records = omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.resolve_records
  end
  if show.application_messages ~= omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_headers then
    show.headers = omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_structs then
    show.structs = omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_indexes then
    show.indexes = omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_sequences then
    show.sequences = omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.show_sequences
  end
  if nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.format_decimals ~= omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.format_decimals then
    nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.format_decimals = omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.prefs.format_decimals
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation = {}
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation.data = function(packet)
  local key = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation.key(packet)
  local data = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation.flows[key]
  if data == nil then
    data = { order_book_directory = {} }
    nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation.current = nil


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
-- Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7 Fields
-----------------------------------------------------------------------

-- Ask Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.ask_price = {}

-- Size: Ask Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.ask_price.size = 4

-- Display: Ask Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.ask_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Best Ask Volume
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_ask_volume = {}

-- Size: Best Ask Volume
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_ask_volume.size = 8

-- Display: Best Ask Volume
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_ask_volume.display = function(value)
  return "Best Ask Volume: "..value
end

-- Dissect: Best Ask Volume
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_ask_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.best_ask_volume, range, value, display)

  return offset + length, value
end

-- Best Bid Volume
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_bid_volume = {}

-- Size: Best Bid Volume
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_bid_volume.size = 8

-- Display: Best Bid Volume
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_bid_volume.display = function(value)
  return "Best Bid Volume: "..value
end

-- Dissect: Best Bid Volume
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_bid_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.best_bid_volume, range, value, display)

  return offset + length, value
end

-- Bid Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.bid_price = {}

-- Size: Bid Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.bid_price.size = 4

-- Display: Bid Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.bid_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Block Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.block_lot_size = {}

-- Size: Block Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.block_lot_size.size = 4

-- Display: Block Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Closing Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.closing_price = {}

-- Size: Closing Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.closing_price.size = 4

-- Display: Closing Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.closing_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Combination Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_id = {}

-- Size: Combination Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_id.size = 4

-- Display: Combination Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_id.display = function(value)
  return "Combination Order Book Id: "..value
end

-- Dissect: Combination Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.combination_order_book_id, range, value, display)

  return offset + length, value
end

-- Combo Group Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combo_group_id = {}

-- Size: Combo Group Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combo_group_id.size = 4

-- Display: Combo Group Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combo_group_id.display = function(value)
  return "Combo Group Id: "..value
end

-- Dissect: Combo Group Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combo_group_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combo_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combo_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.combo_group_id, range, value, display)

  return offset + length, value
end

-- Country Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.country_id = {}

-- Size: Country Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.country_id.size = 1

-- Display: Country Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.country_id.display = function(value)
  return "Country Id: "..value
end

-- Dissect: Country Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.country_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.country_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.country_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.country_id, range, value, display)

  return offset + length, value
end

-- Entry Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.entry_type = {}

-- Size: Entry Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.entry_type.size = 1

-- Display: Entry Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.entry_type.display = function(value)
  if value == "B" then
    return "Entry Type: Buy (B)"
  end
  if value == "S" then
    return "Entry Type: Sell (S)"
  end

  return "Entry Type: Unknown("..value..")"
end

-- Dissect: Entry Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.entry_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.entry_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.entry_type, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.event_code = {}

-- Size: Event Code
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.event_code.size = 1

-- Display: Event Code
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.event_code.display = function(value)
  return "Event Code: "..value
end

-- Dissect: Event Code
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiration Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.expiration_date = {}

-- Size: Expiration Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.expiration_date.size = 4

-- Display: Expiration Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.expiration_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Expiration Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Expiration Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Financial Product
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.financial_product = {}

-- Size: Financial Product
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.financial_product.size = 1

-- Display: Financial Product
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.financial_product.display = function(value)
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
  if value == 16 then
    return "Financial Product: Non Deliverable Rolling Spot (16)"
  end
  if value == 17 then
    return "Financial Product: Strip (17)"
  end

  return "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.financial_product, range, value, display)

  return offset + length, value
end

-- First Trading Date And Time
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.first_trading_date_and_time = {}

-- Size: First Trading Date And Time
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.first_trading_date_and_time.size = 8

-- Display: First Trading Date And Time
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.first_trading_date_and_time.display = function(value)
  local digits = tostring(value)

  while #digits < 17 do
    digits = "0"..digits
  end

  return string.format("First Trading Date And Time: %s-%s-%s %s:%s:%s.%s",
                       digits:sub(1, 4), digits:sub(5, 6), digits:sub(7, 8),
                       digits:sub(9, 10), digits:sub(11, 12), digits:sub(13, 14),
                       digits:sub(15, 17))
end

-- Dissect: First Trading Date And Time
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.first_trading_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.first_trading_date_and_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.first_trading_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.first_trading_date_and_time, range, value, display)

  return offset + length, value
end

-- High Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.high_price = {}

-- Size: High Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.high_price.size = 4

-- Display: High Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.high_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.high_price, range, value, display)

  return offset + length, value
end

-- Isin
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.isin = {}

-- Size: Isin
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.isin.size = 12

-- Display: Isin
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.isin.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.isin, range, value, display)

  return offset + length, value
end

-- Last Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_message = {}

-- Size: Last Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_message.size = 1

-- Display: Last Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_message.display = function(value)
  if value == 0 then
    return "Last Message: Not Last Message (0)"
  end
  if value == 1 then
    return "Last Message: Last Message (1)"
  end

  return "Last Message: Unknown("..value..")"
end

-- Dissect: Last Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_message.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_message.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.last_message, range, value, display)

  return offset + length, value
end

-- Last Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_price = {}

-- Size: Last Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_price.size = 4

-- Display: Last Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Trading Date And Time
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_trading_date_and_time = {}

-- Size: Last Trading Date And Time
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_trading_date_and_time.size = 8

-- Display: Last Trading Date And Time
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_trading_date_and_time.display = function(value)
  local digits = tostring(value)

  while #digits < 17 do
    digits = "0"..digits
  end

  return string.format("Last Trading Date And Time: %s-%s-%s %s:%s:%s.%s",
                       digits:sub(1, 4), digits:sub(5, 6), digits:sub(7, 8),
                       digits:sub(9, 10), digits:sub(11, 12), digits:sub(13, 14),
                       digits:sub(15, 17))
end

-- Dissect: Last Trading Date And Time
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_trading_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_trading_date_and_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_trading_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.last_trading_date_and_time, range, value, display)

  return offset + length, value
end

-- Leg Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_order_book_id = {}

-- Size: Leg Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_order_book_id.size = 4

-- Display: Leg Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_order_book_id.display = function(value)
  return "Leg Order Book Id: "..value
end

-- Dissect: Leg Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.leg_order_book_id, range, value, display)

  return offset + length, value
end

-- Leg Ratio
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_ratio = {}

-- Size: Leg Ratio
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_ratio.size = 4

-- Display: Leg Ratio
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_side = {}

-- Size: Leg Side
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_side.size = 1

-- Display: Leg Side
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg Side: Opposite (C)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Level Update
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update = {}

-- Size: Level Update
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update.size = 2

-- Display: Level Update
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update.display = function(value)
  return "Level Update: "..value
end

-- Dissect: Level Update
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.level_update, range, value, display)

  return offset + length, value
end

-- Level Update Action
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update_action = {}

-- Size: Level Update Action
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update_action.size = 1

-- Display: Level Update Action
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update_action.display = function(value)
  if value == 0 then
    return "Level Update Action: New (0)"
  end
  if value == 1 then
    return "Level Update Action: Change (1)"
  end
  if value == 2 then
    return "Level Update Action: Delete (2)"
  end
  if value == 3 then
    return "Level Update Action: Max Depth (3)"
  end

  return "Level Update Action: Unknown("..value..")"
end

-- Dissect: Level Update Action
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update_action.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.level_update_action, range, value, display)

  return offset + length, value
end

-- Long Name
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.long_name = {}

-- Size: Long Name
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.long_name.size = 32

-- Display: Long Name
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.long_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.long_name, range, value, display)

  return offset + length, value
end

-- Low Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.low_price = {}

-- Size: Low Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.low_price.size = 4

-- Display: Low Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.low_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.low_price, range, value, display)

  return offset + length, value
end

-- Market by Level Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_price = {}

-- Size: Market by Level Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_price.size = 4

-- Display: Market by Level Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_price.display = function(value)
  return "Market by Level Price: "..value
end

-- Dissect: Market by Level Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.market_by_level_price, range, value, display)

  return offset + length, value
end

-- Market Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_id = {}

-- Size: Market Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_id.size = 1

-- Display: Market Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Name
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_name = {}

-- Size: Market Name
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_name.size = 32

-- Display: Market Name
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_name.display = function(value)
  return "Market Name: "..value
end

-- Dissect: Market Name
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_name.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.market_name, range, value, display)

  return offset + length, value
end

-- Match Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.match_id = {}

-- Size: Match Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.match_id.size = 8

-- Display: Match Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.match_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.match_id, range, value, display)

  return offset + length, value
end

-- Max Depth
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.max_depth = {}

-- Size: Max Depth
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.max_depth.size = 2

-- Display: Max Depth
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.max_depth.display = function(value)
  return "Max Depth: "..value
end

-- Dissect: Max Depth
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.max_depth.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.max_depth.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.max_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.max_depth, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_count = {}

-- Size: Message Count
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_count.size = 2

-- Display: Message Count
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_length = {}

-- Size: Message Length
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_length.size = 2

-- Display: Message Length
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_type = {}

-- Size: Message Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_type.size = 1

-- Display: Message Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nominal Value
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.nominal_value = {}

-- Size: Nominal Value
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.nominal_value.size = 8

-- Display: Nominal Value
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Notation Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.notation_date = {}

-- Size: Notation Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.notation_date.size = 4

-- Display: Notation Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.notation_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Notation Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Notation Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.notation_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.notation_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.notation_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.notation_date, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_nominal_value = {}

-- Size: Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_nominal_value.size = 2

-- Display: Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_nominal_value.display = function(value)
  return "Number Of Decimals In Nominal Value: "..value
end

-- Dissect: Number Of Decimals In Nominal Value
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_price = {}

-- Size: Number Of Decimals In Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_price.size = 2

-- Display: Number Of Decimals In Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_price.display = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Strike Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_strike_price = {}

-- Size: Number Of Decimals In Strike Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_strike_price.size = 2

-- Display: Number Of Decimals In Strike Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_strike_price.display = function(value)
  return "Number Of Decimals In Strike Price: "..value
end

-- Dissect: Number Of Decimals In Strike Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.number_of_decimals_in_strike_price, range, value, display)

  return offset + length, value
end

-- Number Of Legs
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_legs = {}

-- Size: Number Of Legs
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_legs.size = 1

-- Display: Number Of Legs
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Odd Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.odd_lot_size = {}

-- Size: Odd Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.odd_lot_size.size = 4

-- Display: Odd Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.odd_lot_size.display = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.odd_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.odd_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.odd_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Open Interest
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest = {}

-- Size: Open Interest
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest.size = 8

-- Display: Open Interest
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Opening Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.opening_price = {}

-- Size: Opening Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.opening_price.size = 4

-- Display: Opening Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.opening_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Option Style
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.option_style = {}

-- Size: Option Style
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.option_style.size = 2

-- Display: Option Style
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.option_style.display = function(value)
  if value == 0 then
    return "Option Style: Not Applicable (0)"
  end
  if value == 1 then
    return "Option Style: American (1)"
  end
  if value == 2 then
    return "Option Style: European (2)"
  end
  if value == 3 then
    return "Option Style: Asian (3)"
  end

  return "Option Style: Unknown("..value..")"
end

-- Dissect: Option Style
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.option_style.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.option_style.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.option_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.option_style, range, value, display)

  return offset + length, value
end

-- Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id = {}

-- Size: Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.size = 4

-- Display: Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.order_book_id, range, value, display)

  return offset + length, value
end


-- Lookup: Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.lookup = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.display(value, buffer, offset, packet, parent)

  if not show.records then
    parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.order_book_id, range, value, display)

    return offset + length, value
  end

  -- Lookup Order Book Directory record
  local record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation.current.order_book_directory[value]

  local field_tree = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.order_book_id, range, value, display)

  if record ~= nil then
    nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.current = record
    if record.number_of_decimals_in_price ~= nil then
      local entry_number_of_decimals_in_price = field_tree:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.number_of_decimals_in_price, record.number_of_decimals_in_price)
      entry_number_of_decimals_in_price:set_generated()
    end
    if record.number_of_decimals_in_strike_price ~= nil then
      local entry_number_of_decimals_in_strike_price = field_tree:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.number_of_decimals_in_strike_price, record.number_of_decimals_in_strike_price)
      entry_number_of_decimals_in_strike_price:set_generated()
    end
    if record.number_of_decimals_in_nominal_value ~= nil then
      local entry_number_of_decimals_in_nominal_value = field_tree:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.number_of_decimals_in_nominal_value, record.number_of_decimals_in_nominal_value)
      entry_number_of_decimals_in_nominal_value:set_generated()
    end
  end

  return offset + length, value, record
end

-- Physical Delivery
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.physical_delivery = {}

-- Size: Physical Delivery
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.physical_delivery.size = 1

-- Display: Physical Delivery
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.physical_delivery.display = function(value)
  if value == 0 then
    return "Physical Delivery: Not Applicable (0)"
  end
  if value == 1 then
    return "Physical Delivery: Yes (1)"
  end
  if value == 2 then
    return "Physical Delivery: No (2)"
  end

  return "Physical Delivery: Unknown("..value..")"
end

-- Dissect: Physical Delivery
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.physical_delivery.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.physical_delivery.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.physical_delivery.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.physical_delivery, range, value, display)

  return offset + length, value
end

-- Previous Trading Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.previous_trading_date = {}

-- Size: Previous Trading Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.previous_trading_date.size = 4

-- Display: Previous Trading Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.previous_trading_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Previous Trading Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Previous Trading Date
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.previous_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.previous_trading_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.previous_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.previous_trading_date, range, value, display)

  return offset + length, value
end

-- Price From
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_from = {}

-- Size: Price From
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_from.size = 4

-- Display: Price From
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_from.display = function(value)
  return "Price From: "..value
end

-- Dissect: Price From
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_from.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_from, range, value, display)

  return offset + length, value
end

-- Price Price 4
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_price_4 = {}

-- Size: Price Price 4
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_price_4.size = 4

-- Display: Price Price 4
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_price_4.display = function(value)
  return "Price Price 4: "..value
end

-- Dissect: Price Price 4
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_price_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_price_4.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_price_4, range, value, display)

  return offset + length, value
end

-- Price Source
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_source = {}

-- Size: Price Source
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_source.size = 1

-- Display: Price Source
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_source.display = function(value)
  return "Price Source: "..value
end

-- Dissect: Price Source
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_source.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_source.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_source, range, value, display)

  return offset + length, value
end

-- Price To
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_to = {}

-- Size: Price To
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_to.size = 4

-- Display: Price To
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_to.display = function(value)
  return "Price To: "..value
end

-- Dissect: Price To
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_to.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_to, range, value, display)

  return offset + length, value
end

-- Price Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_type = {}

-- Size: Price Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_type.size = 1

-- Display: Price Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_type.display = function(value)
  return "Price Type: "..value
end

-- Dissect: Price Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_type.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_type, range, value, display)

  return offset + length, value
end

-- Put Or Call
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.put_or_call = {}

-- Size: Put Or Call
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.put_or_call.size = 1

-- Display: Put Or Call
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.put_or_call.display = function(value)
  if value == 1 then
    return "Put Or Call: Call (1)"
  end
  if value == 2 then
    return "Put Or Call: Put (2)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quantity
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quantity = {}

-- Size: Quantity
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quantity.size = 8

-- Display: Quantity
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved Alpha 1
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_1 = {}

-- Size: Reserved Alpha 1
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_1.size = 1

-- Display: Reserved Alpha 1
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_1.display = function(value)
  return "Reserved Alpha 1: "..value
end

-- Dissect: Reserved Alpha 1
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_1.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_1.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.reserved_alpha_1, range, value, display)

  return offset + length, value
end

-- Reserved Alpha 5
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_5 = {}

-- Size: Reserved Alpha 5
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_5.size = 5

-- Display: Reserved Alpha 5
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_5.display = function(value)
  return "Reserved Alpha 5: "..value
end

-- Dissect: Reserved Alpha 5
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_5.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_5.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.reserved_alpha_5, range, value, display)

  return offset + length, value
end

-- Reserved Alpha 7
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_7 = {}

-- Size: Reserved Alpha 7
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_7.size = 7

-- Display: Reserved Alpha 7
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_7.display = function(value)
  return "Reserved Alpha 7: "..value
end

-- Dissect: Reserved Alpha 7
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_7.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_7.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.reserved_alpha_7, range, value, display)

  return offset + length, value
end

-- Round Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.round_lot_size = {}

-- Size: Round Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.round_lot_size.size = 4

-- Display: Round Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Second
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second = {}

-- Size: Second
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second.size = 4

-- Display: Second
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.second, range, value, display)

  return offset + length, value
end

-- Second Reserved
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second_reserved = {}

-- Size: Second Reserved
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second_reserved.size = 7

-- Display: Second Reserved
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second_reserved.display = function(value)
  return "Second Reserved: "..value
end

-- Dissect: Second Reserved
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second_reserved.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second_reserved.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second_reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.second_reserved, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.sequence_number = {}

-- Size: Sequence Number
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.session = {}

-- Size: Session
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.session.size = 10

-- Display: Session
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.session.size
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

  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.session, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.side = {}

-- Size: Side
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.side.size = 1

-- Display: Side
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.side.display = function(value)
  return "Side: "..value
end

-- Dissect: Side
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.side, range, value, display)

  return offset + length, value
end

-- Strike Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.strike_price = {}

-- Size: Strike Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.strike_price.size = 4

-- Display: Strike Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.symbol = {}

-- Size: Symbol
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.symbol.size = 32

-- Display: Symbol
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size = {}

-- Size: Tick Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size.size = 8

-- Display: Tick Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Time Of Trade Agreement
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_agreement = {}

-- Size: Time Of Trade Agreement
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_agreement.size = 8

-- Display: Time Of Trade Agreement
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_agreement.display = function(value)
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
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_agreement.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_agreement.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_agreement.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.time_of_trade_agreement, range, value, display)

  return offset + length, value
end

-- Time Of Trade Dissemination
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_dissemination = {}

-- Size: Time Of Trade Dissemination
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_dissemination.size = 8

-- Display: Time Of Trade Dissemination
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_dissemination.display = function(value)
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
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_dissemination.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_dissemination.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_dissemination.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.time_of_trade_dissemination, range, value, display)

  return offset + length, value
end

-- Time Of Trade Execution
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_execution = {}

-- Size: Time Of Trade Execution
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_execution.size = 8

-- Display: Time Of Trade Execution
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_execution.display = function(value)
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
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_execution.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_execution.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_execution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.time_of_trade_execution, range, value, display)

  return offset + length, value
end

-- Timestamp Nanoseconds
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds = {}

-- Size: Timestamp Nanoseconds
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size = 4

-- Display: Timestamp Nanoseconds
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.display = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Trade Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_price = {}

-- Size: Trade Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_price.size = 4

-- Display: Trade Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_type = {}

-- Size: Trade Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_type.size = 2

-- Display: Trade Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_type.display = function(value)
  return "Trade Type: "..value
end

-- Dissect: Trade Type
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Traded Quantity
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.traded_quantity = {}

-- Size: Traded Quantity
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.traded_quantity.size = 8

-- Display: Traded Quantity
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.traded_quantity.display = function(value)
  return "Traded Quantity: "..value
end

-- Dissect: Traded Quantity
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.traded_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.traded_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.traded_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.traded_quantity, range, value, display)

  return offset + length, value
end

-- Trading Currency
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trading_currency = {}

-- Size: Trading Currency
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trading_currency.size = 3

-- Display: Trading Currency
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Turnover
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.turnover = {}

-- Size: Turnover
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.turnover.size = 8

-- Display: Turnover
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.turnover.display = function(value)
  return "Turnover: "..value
end

-- Dissect: Turnover
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.turnover.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.turnover.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.turnover, range, value, display)

  return offset + length, value
end

-- Underlying Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_order_book_id = {}

-- Size: Underlying Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_order_book_id.size = 4

-- Display: Underlying Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_order_book_id.display = function(value)
  return "Underlying Order Book Id: "..value
end

-- Dissect: Underlying Order Book Id
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.underlying_order_book_id, range, value, display)

  return offset + length, value
end

-- Scaled Price From
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_from = {}

-- Display: Scaled Price From in fractions
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_from.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Price From: " .. text
end

-- Display: Scaled Price From
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_from.display = function(value)
  return "Scaled Price From: " .. string.format("%g", value)
end

-- Composite: Scaled Price From
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_from.composite = function(buffer, offset, record, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_from.size
  local range = buffer(offset, length)
  local mantissa = range:int()

  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_from.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_from.display(value)
  end

  local field_tree = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.scaled_price_from, range, value, display)
  local mantissa_display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_from.display(mantissa)

  field_tree:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_from, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Price From
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_from.dissect = function(buffer, offset, packet, parent)
  if nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.format_decimals then
    local record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_from.composite(buffer, offset, record, packet, parent)
    end
  end

  return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_from.dissect(buffer, offset, packet, parent)
end

-- Scaled Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price = {}

-- Display: Scaled Price in fractions
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Price: " .. text
end

-- Display: Scaled Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price.display = function(value)
  return "Scaled Price: " .. string.format("%g", value)
end

-- Composite: Scaled Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price.composite = function(buffer, offset, record, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_price_4.size
  local range = buffer(offset, length)
  local mantissa = range:int()

  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price.display(value)
  end

  local field_tree = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.scaled_price, range, value, display)
  local mantissa_display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_price_4.display(mantissa)

  field_tree:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_price_4, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price.dissect = function(buffer, offset, packet, parent)
  if nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.format_decimals then
    local record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_price_4.dissect(buffer, offset, packet, parent)
end

-- Scaled Price To
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_to = {}

-- Display: Scaled Price To in fractions
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_to.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Price To: " .. text
end

-- Display: Scaled Price To
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_to.display = function(value)
  return "Scaled Price To: " .. string.format("%g", value)
end

-- Composite: Scaled Price To
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_to.composite = function(buffer, offset, record, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_to.size
  local range = buffer(offset, length)
  local mantissa = range:int()

  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_to.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_to.display(value)
  end

  local field_tree = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.scaled_price_to, range, value, display)
  local mantissa_display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_to.display(mantissa)

  field_tree:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_to, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Price To
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_to.dissect = function(buffer, offset, packet, parent)
  if nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.format_decimals then
    local record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_to.composite(buffer, offset, record, packet, parent)
    end
  end

  return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_to.dissect(buffer, offset, packet, parent)
end

-- Scaled Tick Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_tick_size = {}

-- Display: Scaled Tick Size in fractions
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_tick_size.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Tick Size: " .. text
end

-- Display: Scaled Tick Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_tick_size.display = function(value)
  return "Scaled Tick Size: " .. string.format("%g", value)
end

-- Composite: Scaled Tick Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_tick_size.composite = function(buffer, offset, record, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size.size
  local range = buffer(offset, length)
  local mantissa = range:int64()

  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_tick_size.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_tick_size.display(value)
  end

  local field_tree = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.scaled_tick_size, range, value, display)
  local mantissa_display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size.display(mantissa)

  field_tree:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.tick_size, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Tick Size
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_tick_size.dissect = function(buffer, offset, packet, parent)
  if nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.format_decimals then
    local record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_tick_size.composite(buffer, offset, record, packet, parent)
    end
  end

  return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size.dissect(buffer, offset, packet, parent)
end

-- Scaled Trade Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_trade_price = {}

-- Display: Scaled Trade Price in fractions
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_trade_price.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Trade Price: " .. text
end

-- Display: Scaled Trade Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_trade_price.display = function(value)
  return "Scaled Trade Price: " .. string.format("%g", value)
end

-- Composite: Scaled Trade Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_trade_price.composite = function(buffer, offset, record, packet, parent)
  local length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_price.size
  local range = buffer(offset, length)
  local mantissa = range:int()

  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_trade_price.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_trade_price.display(value)
  end

  local field_tree = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.scaled_trade_price, range, value, display)
  local mantissa_display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_price.display(mantissa)

  field_tree:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.trade_price, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Trade Price
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_trade_price.dissect = function(buffer, offset, packet, parent)
  if nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.format_decimals then
    local record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_trade_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_price.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7
-----------------------------------------------------------------------

-- Underlying Price Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_price_message = {}

-- Size: Underlying Price Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_price_message.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_order_book_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.bid_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.ask_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.closing_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.opening_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.high_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.low_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.turnover.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_bid_volume.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_ask_volume.size

-- Display: Underlying Price Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Price Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Underlying Order Book Id: Numeric
  index, underlying_order_book_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_order_book_id.dissect(buffer, index, packet, parent)

  -- Bid Price: Numeric
  index, bid_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Price: Numeric
  index, ask_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.ask_price.dissect(buffer, index, packet, parent)

  -- Closing Price: Numeric
  index, closing_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.closing_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Numeric
  index, opening_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.opening_price.dissect(buffer, index, packet, parent)

  -- High Price: Numeric
  index, high_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Numeric
  index, low_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.low_price.dissect(buffer, index, packet, parent)

  -- Last Price: Numeric
  index, last_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_price.dissect(buffer, index, packet, parent)

  -- Turnover: Numeric
  index, turnover = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.turnover.dissect(buffer, index, packet, parent)

  -- Best Bid Volume: Numeric
  index, best_bid_volume = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_bid_volume.dissect(buffer, index, packet, parent)

  -- Best Ask Volume: Numeric
  index, best_ask_volume = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.best_ask_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Price Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.underlying_price_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Market By Level Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_message = {}

-- Size: Market By Level Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_message.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_message.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update_action.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.max_depth.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.entry_type.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quantity.size

-- Display: Market By Level Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market By Level Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.lookup(buffer, index, packet, parent)

  -- Last Message: Numeric
  index, last_message = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_message.dissect(buffer, index, packet, parent)

  -- Level Update Action: Numeric
  index, level_update_action = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update_action.dissect(buffer, index, packet, parent)

  -- Max Depth: Numeric
  index, max_depth = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.max_depth.dissect(buffer, index, packet, parent)

  -- Level Update: Numeric
  index, level_update = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.level_update.dissect(buffer, index, packet, parent)

  -- Entry Type: Alpha
  index, entry_type = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.entry_type.dissect(buffer, index, packet, parent)

  -- Market by Level Price: Numeric
  index, market_by_level_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market By Level Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.market_by_level_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_message = {}

-- Size: Price Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_message.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_type.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_price_4.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_source.size

-- Display: Price Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Price Type: Alpha
  index, price_type = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_type.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.lookup(buffer, index, packet, parent)

  -- Price Price 4: Price
  index, price_price_4 = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price.dissect(buffer, index, packet, parent)

  -- Price Source: Alpha
  index, price_source = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_source.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.price_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Messsage
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest_messsage = {}

-- Size: Open Interest Messsage
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest_messsage.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.previous_trading_date.size

-- Display: Open Interest Messsage
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest_messsage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Messsage
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest_messsage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.lookup(buffer, index, packet, parent)

  -- Open Interest: Numeric
  index, open_interest = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest.dissect(buffer, index, packet, parent)

  -- Previous Trading Date: Date
  index, previous_trading_date = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.previous_trading_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Messsage
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest_messsage.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.open_interest_messsage, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest_messsage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest_messsage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest_messsage.fields(buffer, offset, packet, parent)
  end
end

-- Quote Request Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quote_request_message = {}

-- Size: Quote Request Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quote_request_message.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_7.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_5.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_1.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.side.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quantity.size

-- Display: Quote Request Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.lookup(buffer, index, packet, parent)

  -- Reserved Alpha 7: Alpha
  index, reserved_alpha_7 = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_7.dissect(buffer, index, packet, parent)

  -- Reserved Alpha 5: Alpha
  index, reserved_alpha_5 = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_5.dissect(buffer, index, packet, parent)

  -- Reserved Alpha 1: Alpha
  index, reserved_alpha_1 = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_1.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.quote_request_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.broken_trade_message = {}

-- Size: Broken Trade Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.broken_trade_message.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.match_id.size

-- Display: Broken Trade Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.broken_trade_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Reported Trade
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reported_trade = {}

-- Size: Reported Trade
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reported_trade.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.traded_quantity.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.match_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combo_group_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_execution.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_agreement.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_dissemination.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_type.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_7.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second_reserved.size

-- Display: Reported Trade
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reported_trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reported Trade
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reported_trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.lookup(buffer, index, packet, parent)

  -- Traded Quantity: Numeric
  index, traded_quantity = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.traded_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combo_group_id.dissect(buffer, index, packet, parent)

  -- Time Of Trade Execution: Datetime
  index, time_of_trade_execution = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_execution.dissect(buffer, index, packet, parent)

  -- Time Of Trade Agreement: Datetime
  index, time_of_trade_agreement = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_agreement.dissect(buffer, index, packet, parent)

  -- Time Of Trade Dissemination: Datetime
  index, time_of_trade_dissemination = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.time_of_trade_dissemination.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Type: Numeric
  index, trade_type = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trade_type.dissect(buffer, index, packet, parent)

  -- Reserved Alpha 7: Alpha
  index, reserved_alpha_7 = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reserved_alpha_7.dissect(buffer, index, packet, parent)

  -- Second Reserved: Alpha
  index, second_reserved = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second_reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reported Trade
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reported_trade.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.reported_trade, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reported_trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reported_trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reported_trade.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.system_event_message = {}

-- Size: System Event Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.system_event_message.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.event_code.size

-- Display: System Event Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size Table Entry
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size_table_entry = {}

-- Size: Tick Size Table Entry
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size_table_entry.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_from.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_to.size

-- Display: Tick Size Table Entry
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size_table_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Table Entry
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size_table_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.lookup(buffer, index, packet, parent)

  -- Tick Size: Price
  index, tick_size = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.scaled_price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Table Entry
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size_table_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.tick_size_table_entry, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size_table_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size_table_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size_table_entry.fields(buffer, offset, packet, parent)
  end
end

-- Combination Order Book Leg Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_leg_directory = {}

-- Size: Combination Order Book Leg Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_leg_directory.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_order_book_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_side.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_ratio.size

-- Display: Combination Order Book Leg Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_leg_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Book Leg Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_leg_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Combination Order Book Id: Numeric
  index, combination_order_book_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Order Book Id: Numeric
  index, leg_order_book_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Numeric
  index, leg_ratio = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Leg Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_leg_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.combination_order_book_leg_directory, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_leg_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_leg_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_leg_directory.fields(buffer, offset, packet, parent)
  end
end

-- Market Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_directory = {}

-- Size: Market Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_directory.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.country_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_name.size

-- Display: Market Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Country Id: Numeric
  index, country_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.country_id.dissect(buffer, index, packet, parent)

  -- Market Id: Numeric
  index, market_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_id.dissect(buffer, index, packet, parent)

  -- Market Name: Alpha
  index, market_name = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.market_directory, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_directory.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory = {}

-- Size: Order Book Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.symbol.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.long_name.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.isin.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.financial_product.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trading_currency.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_nominal_value.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.odd_lot_size.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.round_lot_size.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.block_lot_size.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.nominal_value.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_legs.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_order_book_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.strike_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.expiration_date.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_strike_price.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.put_or_call.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.notation_date.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.first_trading_date_and_time.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_trading_date_and_time.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.country_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_id.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.physical_delivery.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.option_style.size

-- Display: Order Book Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: Numeric
  index, timestamp_nanoseconds = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: Numeric
  index, odd_lot_size = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.nominal_value.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric
  index, number_of_legs = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_legs.dissect(buffer, index, packet, parent)

  -- Underlying Order Book Id: Numeric
  index, underlying_order_book_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_order_book_id.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.strike_price.dissect(buffer, index, packet, parent)

  -- Expiration Date: Date
  index, expiration_date = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.expiration_date.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Strike Price: Numeric
  index, number_of_decimals_in_strike_price = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.number_of_decimals_in_strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Numeric
  index, put_or_call = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.put_or_call.dissect(buffer, index, packet, parent)

  -- Notation Date: Date
  index, notation_date = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.notation_date.dissect(buffer, index, packet, parent)

  -- First Trading Date And Time: Datetime
  index, first_trading_date_and_time = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.first_trading_date_and_time.dissect(buffer, index, packet, parent)

  -- Last Trading Date And Time: Datetime
  index, last_trading_date_and_time = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.last_trading_date_and_time.dissect(buffer, index, packet, parent)

  -- Country Id: Numeric
  index, country_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.country_id.dissect(buffer, index, packet, parent)

  -- Market Id: Numeric
  index, market_id = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_id.dissect(buffer, index, packet, parent)

  -- Physical Delivery: Numeric
  index, physical_delivery = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.physical_delivery.dissect(buffer, index, packet, parent)

  -- Option Style: Numeric
  index, option_style = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.option_style.dissect(buffer, index, packet, parent)

  -- Cache Order Book Directory record by order_book_id
  if show.records and not packet.visited then
    nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation.current.order_book_directory[order_book_id] = {
      order_book_id = order_book_id,
      number_of_decimals_in_price = number_of_decimals_in_price,
      number_of_decimals_in_strike_price = number_of_decimals_in_strike_price,
      number_of_decimals_in_nominal_value = number_of_decimals_in_nominal_value,
    }
  end

  return index
end

-- Dissect: Order Book Directory
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.order_book_directory, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.seconds_message = {}

-- Size: Seconds Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.seconds_message.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second.size

-- Display: Seconds Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.second.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.seconds_message, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.payload = {}

-- Dissect: Payload
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory
  if message_type == "R" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.order_book_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Directory
  if message_type == "V" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Book Leg Directory
  if message_type == "M" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.combination_order_book_leg_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Table Entry
  if message_type == "L" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.tick_size_table_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reported Trade
  if message_type == "r" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.reported_trade.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Message
  if message_type == "q" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.quote_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Messsage
  if message_type == "o" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.open_interest_messsage.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Message
  if message_type == "p" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market By Level Message
  if message_type == "W" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.market_by_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Price Message
  if message_type == "U" then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.underlying_price_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_header = {}

-- Size: Message Header
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_header.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_length.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_type.size

-- Display: Message Header
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String
  index, message_type = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_header, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message = {}

-- Read runtime size of: Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message_sequence_number, UInt64.new(nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.message, buffer(offset, 0))
    local current = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.end_of_session = {}

-- Display: End Of Session
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.heartbeat = {}

-- Display: Heartbeat
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.messages = {}

-- Dissect: Messages
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.end_of_session.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_header = {}

-- Size: Packet Header
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_header.size =
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.session.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.sequence_number.size + 
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_count.size

-- Display: Packet Header
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet = {}

-- Verify required size of Udp packet
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_header.size
end

-- Dissect Packet
nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation.data(packet)
  if not packet.visited then
  end
  nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.init()
end

-- Dissector for Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7
function omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7, buffer(), omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.description, "("..buffer:len().." Bytes)")
  return nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7 (Udp)
local function omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7
  omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7
omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7:register_heuristic("udp", omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7_udp_heuristic)

-- Register Nasdaq NordicDerivatives MarketData GeniumAmd 2.28.7 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_nordicderivatives_marketdata_geniumamd_v2_28_7)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.28.7
--   Date: Tuesday, October 31, 2017
--   Specification: Nasdaq Nordic Genium INET AMD Protocol Specification (a2.28.7).pdf
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
