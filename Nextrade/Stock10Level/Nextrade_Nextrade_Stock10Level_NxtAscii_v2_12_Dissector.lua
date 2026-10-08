-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nextrade Nextrade Stock10Level NxtAscii 2.12 Protocol
local omi_nextrade_nextrade_stock10level_nxtascii_v2_12 = Proto("Omi.Nextrade.Nextrade.Stock10Level.NxtAscii.v2.12", "Nextrade Nextrade Stock10Level NxtAscii 2.12")

-- Protocol table
local nextrade_nextrade_stock10level_nxtascii_v2_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nextrade Nextrade Stock10Level NxtAscii 2.12 Fields
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.a_base_price_to_trigger_dynamic_vi = ProtoField.new("A Base Price To Trigger Dynamic Vi", "nextrade.nextrade.stock10level.nxtascii.v2.12.abasepricetotriggerdynamicvi", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.a_base_price_to_trigger_static_vi = ProtoField.new("A Base Price To Trigger Static Vi", "nextrade.nextrade.stock10level.nxtascii.v2.12.abasepricetotriggerstaticvi", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.a_designated_number_for_an_issue_from_krx = ProtoField.new("A Designated Number For An Issue From Krx", "nextrade.nextrade.stock10level.nxtascii.v2.12.adesignatednumberforanissuefromkrx", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.a_price_change_against_the_previous_day = ProtoField.new("A Price Change Against The Previous Day", "nextrade.nextrade.stock10level.nxtascii.v2.12.apricechangeagainstthepreviousday", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "nextrade.nextrade.stock10level.nxtascii.v2.12.accumulatedtradingvalue", ftypes.DOUBLE)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.accumulatedtradingvolume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_1_price = ProtoField.new("Ask Level 1 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel1price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_1_volume = ProtoField.new("Ask Level 1 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel1volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_10_price = ProtoField.new("Ask Level 10 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel10price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_10_volume = ProtoField.new("Ask Level 10 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel10volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_2_price = ProtoField.new("Ask Level 2 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel2price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_2_volume = ProtoField.new("Ask Level 2 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel2volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_3_price = ProtoField.new("Ask Level 3 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel3price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_3_volume = ProtoField.new("Ask Level 3 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel3volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_4_price = ProtoField.new("Ask Level 4 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel4price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_4_volume = ProtoField.new("Ask Level 4 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel4volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_5_price = ProtoField.new("Ask Level 5 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel5price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_5_volume = ProtoField.new("Ask Level 5 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel5volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_6_price = ProtoField.new("Ask Level 6 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel6price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_6_volume = ProtoField.new("Ask Level 6 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel6volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_7_price = ProtoField.new("Ask Level 7 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel7price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_7_volume = ProtoField.new("Ask Level 7 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel7volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_8_price = ProtoField.new("Ask Level 8 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel8price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_8_volume = ProtoField.new("Ask Level 8 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel8volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_9_price = ProtoField.new("Ask Level 9 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel9price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_9_volume = ProtoField.new("Ask Level 9 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.asklevel9volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_1_price = ProtoField.new("Bid Level 1 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel1price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_1_volume = ProtoField.new("Bid Level 1 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel1volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_10_price = ProtoField.new("Bid Level 10 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel10price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_10_volume = ProtoField.new("Bid Level 10 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel10volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_2_price = ProtoField.new("Bid Level 2 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel2price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_2_volume = ProtoField.new("Bid Level 2 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel2volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_3_price = ProtoField.new("Bid Level 3 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel3price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_3_volume = ProtoField.new("Bid Level 3 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel3volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_4_price = ProtoField.new("Bid Level 4 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel4price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_4_volume = ProtoField.new("Bid Level 4 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel4volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_5_price = ProtoField.new("Bid Level 5 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel5price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_5_volume = ProtoField.new("Bid Level 5 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel5volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_6_price = ProtoField.new("Bid Level 6 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel6price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_6_volume = ProtoField.new("Bid Level 6 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel6volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_7_price = ProtoField.new("Bid Level 7 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel7price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_7_volume = ProtoField.new("Bid Level 7 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel7volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_8_price = ProtoField.new("Bid Level 8 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel8price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_8_volume = ProtoField.new("Bid Level 8 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel8volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_9_price = ProtoField.new("Bid Level 9 Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel9price", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_9_volume = ProtoField.new("Bid Level 9 Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.bidlevel9volume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.board_event_group_code = ProtoField.new("Board Event Group Code", "nextrade.nextrade.stock10level.nxtascii.v2.12.boardeventgroupcode", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.board_event_id = ProtoField.new("Board Event Id", "nextrade.nextrade.stock10level.nxtascii.v2.12.boardeventid", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.board_id = ProtoField.new("Board Id", "nextrade.nextrade.stock10level.nxtascii.v2.12.boardid", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price = ProtoField.new("Closing Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.closingprice", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_base_price_of_buy_in = ProtoField.new("Closing Price Base Price Of Buy In", "nextrade.nextrade.stock10level.nxtascii.v2.12.closingpricebasepriceofbuyin", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_lower_limit_of_buy_in = ProtoField.new("Closing Price Lower Limit Of Buy In", "nextrade.nextrade.stock10level.nxtascii.v2.12.closingpricelowerlimitofbuyin", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_type_code = ProtoField.new("Closing Price Type Code", "nextrade.nextrade.stock10level.nxtascii.v2.12.closingpricetypecode", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_upper_limit_of_buy_in = ProtoField.new("Closing Price Upper Limit Of Buy In", "nextrade.nextrade.stock10level.nxtascii.v2.12.closingpriceupperlimitofbuyin", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_weighted_stock_price_average = ProtoField.new("Closing Price Weighted Stock Price Average", "nextrade.nextrade.stock10level.nxtascii.v2.12.closingpriceweightedstockpriceaverage", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.current_time_1_minute_interval = ProtoField.new("Current Time 1 Minute Interval", "nextrade.nextrade.stock10level.nxtascii.v2.12.currenttime1minuteinterval", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.disparate_ratio_to_trigger_dynamic_vi = ProtoField.new("Disparate Ratio To Trigger Dynamic Vi", "nextrade.nextrade.stock10level.nxtascii.v2.12.disparateratiototriggerdynamicvi", ftypes.DOUBLE)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.disparate_ratio_to_trigger_static_vi = ProtoField.new("Disparate Ratio To Trigger Static Vi", "nextrade.nextrade.stock10level.nxtascii.v2.12.disparateratiototriggerstaticvi", ftypes.DOUBLE)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.end_keyword = ProtoField.new("End Keyword", "nextrade.nextrade.stock10level.nxtascii.v2.12.endkeyword", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.estimated_trading_price = ProtoField.new("Estimated Trading Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.estimatedtradingprice", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.estimated_trading_volume = ProtoField.new("Estimated Trading Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.estimatedtradingvolume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.final_ask_bid_type_code = ProtoField.new("Final Ask Bid Type Code", "nextrade.nextrade.stock10level.nxtascii.v2.12.finalaskbidtypecode", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.isin_code = ProtoField.new("Isin Code", "nextrade.nextrade.stock10level.nxtascii.v2.12.isincode", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session = ProtoField.new("Lower Limit Price On The Single Price Trade In The Off Hours Session", "nextrade.nextrade.stock10level.nxtascii.v2.12.lowerlimitpriceonthesinglepricetradeintheoffhourssession", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.lp_holding_quantity = ProtoField.new("Lp Holding Quantity", "nextrade.nextrade.stock10level.nxtascii.v2.12.lpholdingquantity", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nextrade.nextrade.stock10level.nxtascii.v2.12.messagesequencenumber", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.mid_price = ProtoField.new("Mid Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.midprice", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.opening_price = ProtoField.new("Opening Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.openingprice", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.price_change_against_previous_day = ProtoField.new("Price Change Against Previous Day", "nextrade.nextrade.stock10level.nxtascii.v2.12.pricechangeagainstpreviousday", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.processing_time_of_trading_system = ProtoField.new("Processing Time Of Trading System", "nextrade.nextrade.stock10level.nxtascii.v2.12.processingtimeoftradingsystem", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.session_id = ProtoField.new("Session Id", "nextrade.nextrade.stock10level.nxtascii.v2.12.sessionid", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.start_time_of_a_board_event = ProtoField.new("Start Time Of A Board Event", "nextrade.nextrade.stock10level.nxtascii.v2.12.starttimeofaboardevent", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.the_best_ask = ProtoField.new("The Best Ask", "nextrade.nextrade.stock10level.nxtascii.v2.12.thebestask", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.the_best_bid = ProtoField.new("The Best Bid", "nextrade.nextrade.stock10level.nxtascii.v2.12.thebestbid", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.the_time_ending_vi = ProtoField.new("The Time Ending Vi", "nextrade.nextrade.stock10level.nxtascii.v2.12.thetimeendingvi", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.todays_high = ProtoField.new("Todays High", "nextrade.nextrade.stock10level.nxtascii.v2.12.todayshigh", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.todays_low = ProtoField.new("Todays Low", "nextrade.nextrade.stock10level.nxtascii.v2.12.todayslow", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.total_ask_volume = ProtoField.new("Total Ask Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.totalaskvolume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.total_bid_volume = ProtoField.new("Total Bid Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.totalbidvolume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.total_mid_price_ask_volume_total_ask_volume_on_mid_price = ProtoField.new("Total Mid Price Ask Volume Total Ask Volume On Mid Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.totalmidpriceaskvolumetotalaskvolumeonmidprice", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.total_mid_price_bid_volume_total_bid_volume_on_mid_price = ProtoField.new("Total Mid Price Bid Volume Total Bid Volume On Mid Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.totalmidpricebidvolumetotalbidvolumeonmidprice", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.tr_code = ProtoField.new("TR Code", "nextrade.nextrade.stock10level.nxtascii.v2.12.trcode", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.trading_halt_reason_code = ProtoField.new("Trading Halt Reason Code", "nextrade.nextrade.stock10level.nxtascii.v2.12.tradinghaltreasoncode", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.trading_price = ProtoField.new("Trading Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.tradingprice", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.trading_volume = ProtoField.new("Trading Volume", "nextrade.nextrade.stock10level.nxtascii.v2.12.tradingvolume", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session = ProtoField.new("Upper Limit Price On The Single Price Trade In The Off Hours Session", "nextrade.nextrade.stock10level.nxtascii.v2.12.upperlimitpriceonthesinglepricetradeintheoffhourssession", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.vi_status_code = ProtoField.new("Vi Status Code", "nextrade.nextrade.stock10level.nxtascii.v2.12.vistatuscode", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.vi_triggering_price = ProtoField.new("Vi Triggering Price", "nextrade.nextrade.stock10level.nxtascii.v2.12.vitriggeringprice", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.vi_type_code = ProtoField.new("Vi Type Code", "nextrade.nextrade.stock10level.nxtascii.v2.12.vitypecode", ftypes.STRING)

-- Nextrade Nextrade Stock10Level NxtAscii 2.12 Framing
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.packet = ProtoField.new("Packet", "nextrade.nextrade.stock10level.nxtascii.v2.12.packet", ftypes.STRING)

-- Nextrade Nextrade Stock10Level 2.12 Application Messages
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_trading_quote_message = ProtoField.new("Closing Price Trading Quote Message", "nextrade.nextrade.stock10level.nxtascii.v2.12.closingpricetradingquotemessage", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.issue_closing_message = ProtoField.new("Issue Closing Message", "nextrade.nextrade.stock10level.nxtascii.v2.12.issueclosingmessage", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.market_operation_ts_message = ProtoField.new("Market Operation Ts Message", "nextrade.nextrade.stock10level.nxtascii.v2.12.marketoperationtsmessage", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.polling_data_message = ProtoField.new("Polling Data Message", "nextrade.nextrade.stock10level.nxtascii.v2.12.pollingdatamessage", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.securities_order_filled_message = ProtoField.new("Securities Order Filled Message", "nextrade.nextrade.stock10level.nxtascii.v2.12.securitiesorderfilledmessage", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.securities_quote_10_level_message = ProtoField.new("Securities Quote 10 Level Message", "nextrade.nextrade.stock10level.nxtascii.v2.12.securitiesquote10levelmessage", ftypes.STRING)
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.triggering_removing_vi_message = ProtoField.new("Triggering Removing Vi Message", "nextrade.nextrade.stock10level.nxtascii.v2.12.triggeringremovingvimessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Nextrade Nextrade Stock10Level NxtAscii 2.12 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nextrade Nextrade Stock10Level NxtAscii 2.12 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Nextrade Nextrade Stock10Level NxtAscii 2.12 Show Options
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nextrade_nextrade_stock10level_nxtascii_v2_12.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_nextrade_nextrade_stock10level_nxtascii_v2_12.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nextrade_nextrade_stock10level_nxtascii_v2_12.prefs.show_application_messages then
    show.application_messages = omi_nextrade_nextrade_stock10level_nxtascii_v2_12.prefs.show_application_messages
  end
  if show.structs ~= omi_nextrade_nextrade_stock10level_nxtascii_v2_12.prefs.show_structs then
    show.structs = omi_nextrade_nextrade_stock10level_nxtascii_v2_12.prefs.show_structs
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

-- trim leading spaces
trim_left_spaces = function(str)
  local start = 1

  while start <= str:len() and str:byte(start) == 0x20 do
    start = start + 1
  end

  return str:sub(start)
end

-- trim leading zeros
trim_left_zeros = function(str)
  local start = 1

  while start < str:len() and str:byte(start) == 0x30 do
    start = start + 1
  end

  return str:sub(start)
end

-- the number a decimal writing its own point spells
format_decimal_text = function(str)
  local text = trim_left_spaces(str)

  if text == "" then
    return nil
  end

  local sign = ""
  local first = text:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    text = text:sub(2)
  end

  text = trim_left_zeros(text)

  if text:sub(1, 1) == "." then
    text = "0"..text
  end

  return sign..text
end


-----------------------------------------------------------------------
-- Nextrade Nextrade Stock10Level NxtAscii 2.12 Fields
-----------------------------------------------------------------------

-- A Base Price To Trigger Dynamic Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi = {}

-- Size: A Base Price To Trigger Dynamic Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.size = 11

-- Display: A Base Price To Trigger Dynamic Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.display = function(value)
  return "A Base Price To Trigger Dynamic Vi: "..value
end

-- Dissect: A Base Price To Trigger Dynamic Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.a_base_price_to_trigger_dynamic_vi, range, value, display)

  return offset + length, value
end

-- A Base Price To Trigger Static Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_static_vi = {}

-- Size: A Base Price To Trigger Static Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.size = 11

-- Display: A Base Price To Trigger Static Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.display = function(value)
  return "A Base Price To Trigger Static Vi: "..value
end

-- Dissect: A Base Price To Trigger Static Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.a_base_price_to_trigger_static_vi, range, value, display)

  return offset + length, value
end

-- A Designated Number For An Issue From Krx
nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx = {}

-- Size: A Designated Number For An Issue From Krx
nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size = 6

-- Display: A Designated Number For An Issue From Krx
nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.display = function(value)
  return "A Designated Number For An Issue From Krx: "..value
end

-- Dissect: A Designated Number For An Issue From Krx
nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.a_designated_number_for_an_issue_from_krx, range, value, display)

  return offset + length, value
end

-- A Price Change Against The Previous Day
nextrade_nextrade_stock10level_nxtascii_v2_12.a_price_change_against_the_previous_day = {}

-- Size: A Price Change Against The Previous Day
nextrade_nextrade_stock10level_nxtascii_v2_12.a_price_change_against_the_previous_day.size = 11

-- Display: A Price Change Against The Previous Day
nextrade_nextrade_stock10level_nxtascii_v2_12.a_price_change_against_the_previous_day.display = function(value)
  return "A Price Change Against The Previous Day: "..value
end

-- Dissect: A Price Change Against The Previous Day
nextrade_nextrade_stock10level_nxtascii_v2_12.a_price_change_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.a_price_change_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.a_price_change_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.a_price_change_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_value.size = 22

-- Display: Accumulated Trading Value
nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_value.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Accumulated Trading Value: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 3 then
    return "Accumulated Trading Value: "..text.." (expected 3 places)"
  end

  return "Accumulated Trading Value: "..text
end

-- Dissect: Accumulated Trading Value
nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_volume.size = 12

-- Display: Accumulated Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_price = {}

-- Size: Ask Level 1 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_price.size = 11

-- Display: Ask Level 1 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_price.display = function(value)
  return "Ask Level 1 Price: "..value
end

-- Dissect: Ask Level 1 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_1_price, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_volume = {}

-- Size: Ask Level 1 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_volume.size = 12

-- Display: Ask Level 1 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_volume.display = function(value)
  return "Ask Level 1 Volume: "..value
end

-- Dissect: Ask Level 1 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_1_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_price = {}

-- Size: Ask Level 10 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_price.size = 11

-- Display: Ask Level 10 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_price.display = function(value)
  return "Ask Level 10 Price: "..value
end

-- Dissect: Ask Level 10 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_10_price, range, value, display)

  return offset + length, value
end

-- Ask Level 10 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_volume = {}

-- Size: Ask Level 10 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_volume.size = 12

-- Display: Ask Level 10 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_volume.display = function(value)
  return "Ask Level 10 Volume: "..value
end

-- Dissect: Ask Level 10 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_10_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_price = {}

-- Size: Ask Level 2 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_price.size = 11

-- Display: Ask Level 2 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_price.display = function(value)
  return "Ask Level 2 Price: "..value
end

-- Dissect: Ask Level 2 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_2_price, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_volume = {}

-- Size: Ask Level 2 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_volume.size = 12

-- Display: Ask Level 2 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_volume.display = function(value)
  return "Ask Level 2 Volume: "..value
end

-- Dissect: Ask Level 2 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_2_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_price = {}

-- Size: Ask Level 3 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_price.size = 11

-- Display: Ask Level 3 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_price.display = function(value)
  return "Ask Level 3 Price: "..value
end

-- Dissect: Ask Level 3 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_3_price, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_volume = {}

-- Size: Ask Level 3 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_volume.size = 12

-- Display: Ask Level 3 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_volume.display = function(value)
  return "Ask Level 3 Volume: "..value
end

-- Dissect: Ask Level 3 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_3_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_price = {}

-- Size: Ask Level 4 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_price.size = 11

-- Display: Ask Level 4 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_price.display = function(value)
  return "Ask Level 4 Price: "..value
end

-- Dissect: Ask Level 4 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_4_price, range, value, display)

  return offset + length, value
end

-- Ask Level 4 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_volume = {}

-- Size: Ask Level 4 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_volume.size = 12

-- Display: Ask Level 4 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_volume.display = function(value)
  return "Ask Level 4 Volume: "..value
end

-- Dissect: Ask Level 4 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_4_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_price = {}

-- Size: Ask Level 5 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_price.size = 11

-- Display: Ask Level 5 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_price.display = function(value)
  return "Ask Level 5 Price: "..value
end

-- Dissect: Ask Level 5 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_5_price, range, value, display)

  return offset + length, value
end

-- Ask Level 5 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_volume = {}

-- Size: Ask Level 5 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_volume.size = 12

-- Display: Ask Level 5 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_volume.display = function(value)
  return "Ask Level 5 Volume: "..value
end

-- Dissect: Ask Level 5 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_5_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_price = {}

-- Size: Ask Level 6 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_price.size = 11

-- Display: Ask Level 6 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_price.display = function(value)
  return "Ask Level 6 Price: "..value
end

-- Dissect: Ask Level 6 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_6_price, range, value, display)

  return offset + length, value
end

-- Ask Level 6 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_volume = {}

-- Size: Ask Level 6 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_volume.size = 12

-- Display: Ask Level 6 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_volume.display = function(value)
  return "Ask Level 6 Volume: "..value
end

-- Dissect: Ask Level 6 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_6_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_price = {}

-- Size: Ask Level 7 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_price.size = 11

-- Display: Ask Level 7 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_price.display = function(value)
  return "Ask Level 7 Price: "..value
end

-- Dissect: Ask Level 7 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_7_price, range, value, display)

  return offset + length, value
end

-- Ask Level 7 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_volume = {}

-- Size: Ask Level 7 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_volume.size = 12

-- Display: Ask Level 7 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_volume.display = function(value)
  return "Ask Level 7 Volume: "..value
end

-- Dissect: Ask Level 7 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_7_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_price = {}

-- Size: Ask Level 8 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_price.size = 11

-- Display: Ask Level 8 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_price.display = function(value)
  return "Ask Level 8 Price: "..value
end

-- Dissect: Ask Level 8 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_8_price, range, value, display)

  return offset + length, value
end

-- Ask Level 8 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_volume = {}

-- Size: Ask Level 8 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_volume.size = 12

-- Display: Ask Level 8 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_volume.display = function(value)
  return "Ask Level 8 Volume: "..value
end

-- Dissect: Ask Level 8 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_8_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_price = {}

-- Size: Ask Level 9 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_price.size = 11

-- Display: Ask Level 9 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_price.display = function(value)
  return "Ask Level 9 Price: "..value
end

-- Dissect: Ask Level 9 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_9_price, range, value, display)

  return offset + length, value
end

-- Ask Level 9 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_volume = {}

-- Size: Ask Level 9 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_volume.size = 12

-- Display: Ask Level 9 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_volume.display = function(value)
  return "Ask Level 9 Volume: "..value
end

-- Dissect: Ask Level 9 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.ask_level_9_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_price = {}

-- Size: Bid Level 1 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_price.size = 11

-- Display: Bid Level 1 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_price.display = function(value)
  return "Bid Level 1 Price: "..value
end

-- Dissect: Bid Level 1 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_1_price, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_volume = {}

-- Size: Bid Level 1 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_volume.size = 12

-- Display: Bid Level 1 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_volume.display = function(value)
  return "Bid Level 1 Volume: "..value
end

-- Dissect: Bid Level 1 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_1_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_price = {}

-- Size: Bid Level 10 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_price.size = 11

-- Display: Bid Level 10 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_price.display = function(value)
  return "Bid Level 10 Price: "..value
end

-- Dissect: Bid Level 10 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_10_price, range, value, display)

  return offset + length, value
end

-- Bid Level 10 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_volume = {}

-- Size: Bid Level 10 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_volume.size = 12

-- Display: Bid Level 10 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_volume.display = function(value)
  return "Bid Level 10 Volume: "..value
end

-- Dissect: Bid Level 10 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_10_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_price = {}

-- Size: Bid Level 2 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_price.size = 11

-- Display: Bid Level 2 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_price.display = function(value)
  return "Bid Level 2 Price: "..value
end

-- Dissect: Bid Level 2 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_2_price, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_volume = {}

-- Size: Bid Level 2 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_volume.size = 12

-- Display: Bid Level 2 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_volume.display = function(value)
  return "Bid Level 2 Volume: "..value
end

-- Dissect: Bid Level 2 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_2_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_price = {}

-- Size: Bid Level 3 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_price.size = 11

-- Display: Bid Level 3 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_price.display = function(value)
  return "Bid Level 3 Price: "..value
end

-- Dissect: Bid Level 3 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_3_price, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_volume = {}

-- Size: Bid Level 3 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_volume.size = 12

-- Display: Bid Level 3 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_volume.display = function(value)
  return "Bid Level 3 Volume: "..value
end

-- Dissect: Bid Level 3 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_3_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_price = {}

-- Size: Bid Level 4 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_price.size = 11

-- Display: Bid Level 4 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_price.display = function(value)
  return "Bid Level 4 Price: "..value
end

-- Dissect: Bid Level 4 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_4_price, range, value, display)

  return offset + length, value
end

-- Bid Level 4 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_volume = {}

-- Size: Bid Level 4 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_volume.size = 12

-- Display: Bid Level 4 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_volume.display = function(value)
  return "Bid Level 4 Volume: "..value
end

-- Dissect: Bid Level 4 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_4_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_price = {}

-- Size: Bid Level 5 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_price.size = 11

-- Display: Bid Level 5 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_price.display = function(value)
  return "Bid Level 5 Price: "..value
end

-- Dissect: Bid Level 5 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_5_price, range, value, display)

  return offset + length, value
end

-- Bid Level 5 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_volume = {}

-- Size: Bid Level 5 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_volume.size = 12

-- Display: Bid Level 5 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_volume.display = function(value)
  return "Bid Level 5 Volume: "..value
end

-- Dissect: Bid Level 5 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_5_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_price = {}

-- Size: Bid Level 6 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_price.size = 11

-- Display: Bid Level 6 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_price.display = function(value)
  return "Bid Level 6 Price: "..value
end

-- Dissect: Bid Level 6 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_6_price, range, value, display)

  return offset + length, value
end

-- Bid Level 6 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_volume = {}

-- Size: Bid Level 6 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_volume.size = 12

-- Display: Bid Level 6 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_volume.display = function(value)
  return "Bid Level 6 Volume: "..value
end

-- Dissect: Bid Level 6 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_6_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_price = {}

-- Size: Bid Level 7 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_price.size = 11

-- Display: Bid Level 7 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_price.display = function(value)
  return "Bid Level 7 Price: "..value
end

-- Dissect: Bid Level 7 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_7_price, range, value, display)

  return offset + length, value
end

-- Bid Level 7 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_volume = {}

-- Size: Bid Level 7 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_volume.size = 12

-- Display: Bid Level 7 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_volume.display = function(value)
  return "Bid Level 7 Volume: "..value
end

-- Dissect: Bid Level 7 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_7_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_price = {}

-- Size: Bid Level 8 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_price.size = 11

-- Display: Bid Level 8 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_price.display = function(value)
  return "Bid Level 8 Price: "..value
end

-- Dissect: Bid Level 8 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_8_price, range, value, display)

  return offset + length, value
end

-- Bid Level 8 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_volume = {}

-- Size: Bid Level 8 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_volume.size = 12

-- Display: Bid Level 8 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_volume.display = function(value)
  return "Bid Level 8 Volume: "..value
end

-- Dissect: Bid Level 8 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_8_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_price = {}

-- Size: Bid Level 9 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_price.size = 11

-- Display: Bid Level 9 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_price.display = function(value)
  return "Bid Level 9 Price: "..value
end

-- Dissect: Bid Level 9 Price
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_9_price, range, value, display)

  return offset + length, value
end

-- Bid Level 9 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_volume = {}

-- Size: Bid Level 9 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_volume.size = 12

-- Display: Bid Level 9 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_volume.display = function(value)
  return "Bid Level 9 Volume: "..value
end

-- Dissect: Bid Level 9 Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.bid_level_9_volume, range, value, display)

  return offset + length, value
end

-- Board Event Group Code
nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_group_code = {}

-- Size: Board Event Group Code
nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_group_code.size = 5

-- Display: Board Event Group Code
nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_group_code.display = function(value)
  return "Board Event Group Code: "..value
end

-- Dissect: Board Event Group Code
nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_group_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_group_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.board_event_group_code, range, value, display)

  return offset + length, value
end

-- Board Event Id
nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_id = {}

-- Size: Board Event Id
nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_id.size = 3

-- Display: Board Event Id
nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_id.display = function(value)
  return "Board Event Id: "..value
end

-- Dissect: Board Event Id
nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.board_event_id, range, value, display)

  return offset + length, value
end

-- Board Id
nextrade_nextrade_stock10level_nxtascii_v2_12.board_id = {}

-- Size: Board Id
nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.size = 2

-- Display: Board Id
nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.display = function(value)
  return "Board Id: "..value
end

-- Dissect: Board Id
nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.board_id, range, value, display)

  return offset + length, value
end

-- Closing Price
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price = {}

-- Size: Closing Price
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price.size = 11

-- Display: Closing Price
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Base Price Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_base_price_of_buy_in = {}

-- Size: Closing Price Base Price Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_base_price_of_buy_in.size = 11

-- Display: Closing Price Base Price Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_base_price_of_buy_in.display = function(value)
  return "Closing Price Base Price Of Buy In: "..value
end

-- Dissect: Closing Price Base Price Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_base_price_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_base_price_of_buy_in.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_base_price_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_base_price_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Lower Limit Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in = {}

-- Size: Closing Price Lower Limit Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.size = 11

-- Display: Closing Price Lower Limit Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.display = function(value)
  return "Closing Price Lower Limit Of Buy In: "..value
end

-- Dissect: Closing Price Lower Limit Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_lower_limit_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_type_code = {}

-- Size: Closing Price Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_type_code.size = 1

-- Display: Closing Price Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_type_code.display = function(value)
  return "Closing Price Type Code: "..value
end

-- Dissect: Closing Price Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Closing Price Upper Limit Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in = {}

-- Size: Closing Price Upper Limit Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.size = 11

-- Display: Closing Price Upper Limit Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.display = function(value)
  return "Closing Price Upper Limit Of Buy In: "..value
end

-- Dissect: Closing Price Upper Limit Of Buy In
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_upper_limit_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Weighted Stock Price Average
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_weighted_stock_price_average = {}

-- Size: Closing Price Weighted Stock Price Average
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_weighted_stock_price_average.size = 11

-- Display: Closing Price Weighted Stock Price Average
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_weighted_stock_price_average.display = function(value)
  return "Closing Price Weighted Stock Price Average: "..value
end

-- Dissect: Closing Price Weighted Stock Price Average
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_weighted_stock_price_average.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_weighted_stock_price_average.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_weighted_stock_price_average.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_weighted_stock_price_average, range, value, display)

  return offset + length, value
end

-- Current Time 1 Minute Interval
nextrade_nextrade_stock10level_nxtascii_v2_12.current_time_1_minute_interval = {}

-- Size: Current Time 1 Minute Interval
nextrade_nextrade_stock10level_nxtascii_v2_12.current_time_1_minute_interval.size = 4

-- Display: Current Time 1 Minute Interval
nextrade_nextrade_stock10level_nxtascii_v2_12.current_time_1_minute_interval.display = function(value)
  return "Current Time 1 Minute Interval: "..value
end

-- Dissect: Current Time 1 Minute Interval
nextrade_nextrade_stock10level_nxtascii_v2_12.current_time_1_minute_interval.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.current_time_1_minute_interval.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.current_time_1_minute_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.current_time_1_minute_interval, range, value, display)

  return offset + length, value
end

-- Disparate Ratio To Trigger Dynamic Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi = {}

-- Size: Disparate Ratio To Trigger Dynamic Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size = 13

-- Display: Disparate Ratio To Trigger Dynamic Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Disparate Ratio To Trigger Dynamic Vi: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Disparate Ratio To Trigger Dynamic Vi: "..text.." (expected 6 places)"
  end

  return "Disparate Ratio To Trigger Dynamic Vi: "..text
end

-- Dissect: Disparate Ratio To Trigger Dynamic Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.disparate_ratio_to_trigger_dynamic_vi, range, value, display)

  return offset + length, value
end

-- Disparate Ratio To Trigger Static Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi = {}

-- Size: Disparate Ratio To Trigger Static Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size = 13

-- Display: Disparate Ratio To Trigger Static Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size):string()
  local text = format_decimal_text(raw)

  if text == nil then
    return "Disparate Ratio To Trigger Static Vi: No Value"
  end

  local point = text:find(".", 1, true)
  local places = point and (#text - point) or 0

  if places ~= 6 then
    return "Disparate Ratio To Trigger Static Vi: "..text.." (expected 6 places)"
  end

  return "Disparate Ratio To Trigger Static Vi: "..text
end

-- Dissect: Disparate Ratio To Trigger Static Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.disparate_ratio_to_trigger_static_vi, range, value, display)

  return offset + length, value
end

-- End Keyword
nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword = {}

-- Size: End Keyword
nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.size = 1

-- Display: End Keyword
nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.display = function(value)
  return "End Keyword: "..value
end

-- Dissect: End Keyword
nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- Estimated Trading Price
nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_price = {}

-- Size: Estimated Trading Price
nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_price.size = 11

-- Display: Estimated Trading Price
nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_price.display = function(value)
  return "Estimated Trading Price: "..value
end

-- Dissect: Estimated Trading Price
nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.estimated_trading_price, range, value, display)

  return offset + length, value
end

-- Estimated Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_volume = {}

-- Size: Estimated Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_volume.size = 12

-- Display: Estimated Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_volume.display = function(value)
  return "Estimated Trading Volume: "..value
end

-- Dissect: Estimated Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.estimated_trading_volume, range, value, display)

  return offset + length, value
end

-- Final Ask Bid Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.final_ask_bid_type_code = {}

-- Size: Final Ask Bid Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.final_ask_bid_type_code.size = 1

-- Display: Final Ask Bid Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.final_ask_bid_type_code.display = function(value)
  return "Final Ask Bid Type Code: "..value
end

-- Dissect: Final Ask Bid Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.final_ask_bid_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.final_ask_bid_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.final_ask_bid_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.final_ask_bid_type_code, range, value, display)

  return offset + length, value
end

-- Isin Code
nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code = {}

-- Size: Isin Code
nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.size = 12

-- Display: Isin Code
nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_stock10level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session = {}

-- Size: Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_stock10level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.size = 11

-- Display: Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_stock10level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.display = function(value)
  return "Lower Limit Price On The Single Price Trade In The Off Hours Session: "..value
end

-- Dissect: Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_stock10level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session, range, value, display)

  return offset + length, value
end

-- Lp Holding Quantity
nextrade_nextrade_stock10level_nxtascii_v2_12.lp_holding_quantity = {}

-- Size: Lp Holding Quantity
nextrade_nextrade_stock10level_nxtascii_v2_12.lp_holding_quantity.size = 15

-- Display: Lp Holding Quantity
nextrade_nextrade_stock10level_nxtascii_v2_12.lp_holding_quantity.display = function(value)
  return "Lp Holding Quantity: "..value
end

-- Dissect: Lp Holding Quantity
nextrade_nextrade_stock10level_nxtascii_v2_12.lp_holding_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.lp_holding_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.lp_holding_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.lp_holding_quantity, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number = {}

-- Size: Message Sequence Number
nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.size = 8

-- Display: Message Sequence Number
nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.mid_price = {}

-- Size: Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.mid_price.size = 11

-- Display: Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.mid_price.display = function(value)
  return "Mid Price: "..value
end

-- Dissect: Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.mid_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.mid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.mid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.mid_price, range, value, display)

  return offset + length, value
end

-- Opening Price
nextrade_nextrade_stock10level_nxtascii_v2_12.opening_price = {}

-- Size: Opening Price
nextrade_nextrade_stock10level_nxtascii_v2_12.opening_price.size = 11

-- Display: Opening Price
nextrade_nextrade_stock10level_nxtascii_v2_12.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
nextrade_nextrade_stock10level_nxtascii_v2_12.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Price Change Against Previous Day
nextrade_nextrade_stock10level_nxtascii_v2_12.price_change_against_previous_day = {}

-- Size: Price Change Against Previous Day
nextrade_nextrade_stock10level_nxtascii_v2_12.price_change_against_previous_day.size = 1

-- Display: Price Change Against Previous Day
nextrade_nextrade_stock10level_nxtascii_v2_12.price_change_against_previous_day.display = function(value)
  return "Price Change Against Previous Day: "..value
end

-- Dissect: Price Change Against Previous Day
nextrade_nextrade_stock10level_nxtascii_v2_12.price_change_against_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.price_change_against_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.price_change_against_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.price_change_against_previous_day, range, value, display)

  return offset + length, value
end

-- Processing Time Of Trading System
nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system = {}

-- Size: Processing Time Of Trading System
nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.size = 12

-- Display: Processing Time Of Trading System
nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.display = function(value)
  if #value < 12 then
    return "Processing Time Of Trading System: "..value
  end

  return "Processing Time Of Trading System: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 12)
end

-- Dissect: Processing Time Of Trading System
nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.processing_time_of_trading_system, range, value, display)

  return offset + length, value
end

-- Session Id
nextrade_nextrade_stock10level_nxtascii_v2_12.session_id = {}

-- Size: Session Id
nextrade_nextrade_stock10level_nxtascii_v2_12.session_id.size = 2

-- Display: Session Id
nextrade_nextrade_stock10level_nxtascii_v2_12.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
nextrade_nextrade_stock10level_nxtascii_v2_12.session_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.session_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.session_id, range, value, display)

  return offset + length, value
end

-- Start Time Of A Board Event
nextrade_nextrade_stock10level_nxtascii_v2_12.start_time_of_a_board_event = {}

-- Size: Start Time Of A Board Event
nextrade_nextrade_stock10level_nxtascii_v2_12.start_time_of_a_board_event.size = 9

-- Display: Start Time Of A Board Event
nextrade_nextrade_stock10level_nxtascii_v2_12.start_time_of_a_board_event.display = function(value)
  return "Start Time Of A Board Event: "..value
end

-- Dissect: Start Time Of A Board Event
nextrade_nextrade_stock10level_nxtascii_v2_12.start_time_of_a_board_event.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.start_time_of_a_board_event.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.start_time_of_a_board_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.start_time_of_a_board_event, range, value, display)

  return offset + length, value
end

-- The Best Ask
nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_ask = {}

-- Size: The Best Ask
nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_ask.size = 11

-- Display: The Best Ask
nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_ask.display = function(value)
  return "The Best Ask: "..value
end

-- Dissect: The Best Ask
nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_ask.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.the_best_ask, range, value, display)

  return offset + length, value
end

-- The Best Bid
nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_bid = {}

-- Size: The Best Bid
nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_bid.size = 11

-- Display: The Best Bid
nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_bid.display = function(value)
  return "The Best Bid: "..value
end

-- Dissect: The Best Bid
nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_bid.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.the_best_bid, range, value, display)

  return offset + length, value
end

-- The Time Ending Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.the_time_ending_vi = {}

-- Size: The Time Ending Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.the_time_ending_vi.size = 9

-- Display: The Time Ending Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.the_time_ending_vi.display = function(value)
  return "The Time Ending Vi: "..value
end

-- Dissect: The Time Ending Vi
nextrade_nextrade_stock10level_nxtascii_v2_12.the_time_ending_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.the_time_ending_vi.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.the_time_ending_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.the_time_ending_vi, range, value, display)

  return offset + length, value
end

-- Todays High
nextrade_nextrade_stock10level_nxtascii_v2_12.todays_high = {}

-- Size: Todays High
nextrade_nextrade_stock10level_nxtascii_v2_12.todays_high.size = 11

-- Display: Todays High
nextrade_nextrade_stock10level_nxtascii_v2_12.todays_high.display = function(value)
  return "Todays High: "..value
end

-- Dissect: Todays High
nextrade_nextrade_stock10level_nxtascii_v2_12.todays_high.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.todays_high.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.todays_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.todays_high, range, value, display)

  return offset + length, value
end

-- Todays Low
nextrade_nextrade_stock10level_nxtascii_v2_12.todays_low = {}

-- Size: Todays Low
nextrade_nextrade_stock10level_nxtascii_v2_12.todays_low.size = 11

-- Display: Todays Low
nextrade_nextrade_stock10level_nxtascii_v2_12.todays_low.display = function(value)
  return "Todays Low: "..value
end

-- Dissect: Todays Low
nextrade_nextrade_stock10level_nxtascii_v2_12.todays_low.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.todays_low.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.todays_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.todays_low, range, value, display)

  return offset + length, value
end

-- Total Ask Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.total_ask_volume = {}

-- Size: Total Ask Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.total_ask_volume.size = 12

-- Display: Total Ask Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.total_ask_volume.display = function(value)
  return "Total Ask Volume: "..value
end

-- Dissect: Total Ask Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.total_ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.total_ask_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.total_ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.total_ask_volume, range, value, display)

  return offset + length, value
end

-- Total Bid Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.total_bid_volume = {}

-- Size: Total Bid Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.total_bid_volume.size = 12

-- Display: Total Bid Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.total_bid_volume.display = function(value)
  return "Total Bid Volume: "..value
end

-- Dissect: Total Bid Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.total_bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.total_bid_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.total_bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.total_bid_volume, range, value, display)

  return offset + length, value
end

-- Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price = {}

-- Size: Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size = 12

-- Display: Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.display = function(value)
  return "Total Mid Price Ask Volume Total Ask Volume On Mid Price: "..value
end

-- Dissect: Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.total_mid_price_ask_volume_total_ask_volume_on_mid_price, range, value, display)

  return offset + length, value
end

-- Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price = {}

-- Size: Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size = 12

-- Display: Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.display = function(value)
  return "Total Mid Price Bid Volume Total Bid Volume On Mid Price: "..value
end

-- Dissect: Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.total_mid_price_bid_volume_total_bid_volume_on_mid_price, range, value, display)

  return offset + length, value
end

-- TR Code
nextrade_nextrade_stock10level_nxtascii_v2_12.tr_code = {}

-- Size: TR Code
nextrade_nextrade_stock10level_nxtascii_v2_12.tr_code.size = 5

-- Display: TR Code
nextrade_nextrade_stock10level_nxtascii_v2_12.tr_code.display = function(value)
  if value == "I2500" then
    return "TR Code: Polling Data Message (I2500)"
  end
  if value == "B651S" then
    return "TR Code: Securities Quote 10 Level Message (B651S)"
  end
  if value == "B651Q" then
    return "TR Code: Securities Quote 10 Level Message (B651Q)"
  end
  if value == "A351S" then
    return "TR Code: Securities Order Filled Message (A351S)"
  end
  if value == "A351Q" then
    return "TR Code: Securities Order Filled Message (A351Q)"
  end
  if value == "A751S" then
    return "TR Code: Market Operation Ts Message (A751S)"
  end
  if value == "A751Q" then
    return "TR Code: Market Operation Ts Message (A751Q)"
  end
  if value == "A651S" then
    return "TR Code: Issue Closing Message (A651S)"
  end
  if value == "A651Q" then
    return "TR Code: Issue Closing Message (A651Q)"
  end
  if value == "R851S" then
    return "TR Code: Triggering Removing Vi Message (R851S)"
  end
  if value == "R851Q" then
    return "TR Code: Triggering Removing Vi Message (R851Q)"
  end
  if value == "E151S" then
    return "TR Code: Closing Price Trading Quote Message (E151S)"
  end
  if value == "E151Q" then
    return "TR Code: Closing Price Trading Quote Message (E151Q)"
  end

  return "TR Code: Unknown("..value..")"
end

-- Dissect: TR Code
nextrade_nextrade_stock10level_nxtascii_v2_12.tr_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.tr_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.tr_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.tr_code, range, value, display)

  return offset + length, value
end

-- Trading Halt Reason Code
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_halt_reason_code = {}

-- Size: Trading Halt Reason Code
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_halt_reason_code.size = 3

-- Display: Trading Halt Reason Code
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_halt_reason_code.display = function(value)
  return "Trading Halt Reason Code: "..value
end

-- Dissect: Trading Halt Reason Code
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_halt_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.trading_halt_reason_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.trading_halt_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.trading_halt_reason_code, range, value, display)

  return offset + length, value
end

-- Trading Price
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_price = {}

-- Size: Trading Price
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_price.size = 11

-- Display: Trading Price
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_price.display = function(value)
  return "Trading Price: "..value
end

-- Dissect: Trading Price
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.trading_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_volume = {}

-- Size: Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_volume.size = 10

-- Display: Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
nextrade_nextrade_stock10level_nxtascii_v2_12.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.trading_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_stock10level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session = {}

-- Size: Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_stock10level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.size = 11

-- Display: Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_stock10level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.display = function(value)
  return "Upper Limit Price On The Single Price Trade In The Off Hours Session: "..value
end

-- Dissect: Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_stock10level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session, range, value, display)

  return offset + length, value
end

-- Vi Status Code
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_status_code = {}

-- Size: Vi Status Code
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_status_code.size = 1

-- Display: Vi Status Code
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_status_code.display = function(value)
  return "Vi Status Code: "..value
end

-- Dissect: Vi Status Code
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_status_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.vi_status_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.vi_status_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.vi_status_code, range, value, display)

  return offset + length, value
end

-- Vi Triggering Price
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_triggering_price = {}

-- Size: Vi Triggering Price
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_triggering_price.size = 11

-- Display: Vi Triggering Price
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_triggering_price.display = function(value)
  return "Vi Triggering Price: "..value
end

-- Dissect: Vi Triggering Price
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_triggering_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.vi_triggering_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = "Not Applicable"
  end

  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.vi_triggering_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.vi_triggering_price, range, value, display)

  return offset + length, value
end

-- Vi Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_type_code = {}

-- Size: Vi Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_type_code.size = 1

-- Display: Vi Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_type_code.display = function(value)
  return "Vi Type Code: "..value
end

-- Dissect: Vi Type Code
nextrade_nextrade_stock10level_nxtascii_v2_12.vi_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_stock10level_nxtascii_v2_12.vi_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_stock10level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_stock10level_nxtascii_v2_12.vi_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.vi_type_code, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nextrade Nextrade Stock10Level NxtAscii 2.12
-----------------------------------------------------------------------

-- Closing Price Trading Quote Message
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_trading_quote_message = {}

-- Size: Closing Price Trading Quote Message
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_trading_quote_message.size =
  nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.total_ask_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.total_bid_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.size

-- Display: Closing Price Trading Quote Message
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_trading_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Price Trading Quote Message
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_trading_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.total_bid_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Price Trading Quote Message
nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_trading_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.closing_price_trading_quote_message, buffer(offset, 0))
    local index = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_trading_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_trading_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_trading_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Triggering Removing Vi Message
nextrade_nextrade_stock10level_nxtascii_v2_12.triggering_removing_vi_message = {}

-- Size: Triggering Removing Vi Message
nextrade_nextrade_stock10level_nxtascii_v2_12.triggering_removing_vi_message.size =
  nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.the_time_ending_vi.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.vi_status_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.vi_type_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.vi_triggering_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.size

-- Display: Triggering Removing Vi Message
nextrade_nextrade_stock10level_nxtascii_v2_12.triggering_removing_vi_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Triggering Removing Vi Message
nextrade_nextrade_stock10level_nxtascii_v2_12.triggering_removing_vi_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- The Time Ending Vi: String
  index, the_time_ending_vi = nextrade_nextrade_stock10level_nxtascii_v2_12.the_time_ending_vi.dissect(buffer, index, packet, parent)

  -- Vi Status Code: String
  index, vi_status_code = nextrade_nextrade_stock10level_nxtascii_v2_12.vi_status_code.dissect(buffer, index, packet, parent)

  -- Vi Type Code: String
  index, vi_type_code = nextrade_nextrade_stock10level_nxtascii_v2_12.vi_type_code.dissect(buffer, index, packet, parent)

  -- A Base Price To Trigger Static Vi: Double
  index, a_base_price_to_trigger_static_vi = nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.dissect(buffer, index, packet, parent)

  -- A Base Price To Trigger Dynamic Vi: Double
  index, a_base_price_to_trigger_dynamic_vi = nextrade_nextrade_stock10level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.dissect(buffer, index, packet, parent)

  -- Vi Triggering Price: Double
  index, vi_triggering_price = nextrade_nextrade_stock10level_nxtascii_v2_12.vi_triggering_price.dissect(buffer, index, packet, parent)

  -- Disparate Ratio To Trigger Static Vi: Double
  index, disparate_ratio_to_trigger_static_vi = nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.dissect(buffer, index, packet, parent)

  -- Disparate Ratio To Trigger Dynamic Vi: Double
  index, disparate_ratio_to_trigger_dynamic_vi = nextrade_nextrade_stock10level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Triggering Removing Vi Message
nextrade_nextrade_stock10level_nxtascii_v2_12.triggering_removing_vi_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.triggering_removing_vi_message, buffer(offset, 0))
    local index = nextrade_nextrade_stock10level_nxtascii_v2_12.triggering_removing_vi_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_stock10level_nxtascii_v2_12.triggering_removing_vi_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_stock10level_nxtascii_v2_12.triggering_removing_vi_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Closing Message
nextrade_nextrade_stock10level_nxtascii_v2_12.issue_closing_message = {}

-- Size: Issue Closing Message
nextrade_nextrade_stock10level_nxtascii_v2_12.issue_closing_message.size =
  nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_type_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_weighted_stock_price_average.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_base_price_of_buy_in.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.size

-- Display: Issue Closing Message
nextrade_nextrade_stock10level_nxtascii_v2_12.issue_closing_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Closing Message
nextrade_nextrade_stock10level_nxtascii_v2_12.issue_closing_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Price On The Single Price Trade In The Off Hours Session: Double
  index, upper_limit_price_on_the_single_price_trade_in_the_off_hours_session = nextrade_nextrade_stock10level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect(buffer, index, packet, parent)

  -- Lower Limit Price On The Single Price Trade In The Off Hours Session: Double
  index, lower_limit_price_on_the_single_price_trade_in_the_off_hours_session = nextrade_nextrade_stock10level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect(buffer, index, packet, parent)

  -- Closing Price Weighted Stock Price Average: Double
  index, closing_price_weighted_stock_price_average = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_weighted_stock_price_average.dissect(buffer, index, packet, parent)

  -- Closing Price Base Price Of Buy In: Double
  index, closing_price_base_price_of_buy_in = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_base_price_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Upper Limit Of Buy In: Double
  index, closing_price_upper_limit_of_buy_in = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Lower Limit Of Buy In: Double
  index, closing_price_lower_limit_of_buy_in = nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Closing Message
nextrade_nextrade_stock10level_nxtascii_v2_12.issue_closing_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.issue_closing_message, buffer(offset, 0))
    local index = nextrade_nextrade_stock10level_nxtascii_v2_12.issue_closing_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_stock10level_nxtascii_v2_12.issue_closing_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_stock10level_nxtascii_v2_12.issue_closing_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Operation Ts Message
nextrade_nextrade_stock10level_nxtascii_v2_12.market_operation_ts_message = {}

-- Size: Market Operation Ts Message
nextrade_nextrade_stock10level_nxtascii_v2_12.market_operation_ts_message.size =
  nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_id.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.start_time_of_a_board_event.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_group_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.trading_halt_reason_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.size

-- Display: Market Operation Ts Message
nextrade_nextrade_stock10level_nxtascii_v2_12.market_operation_ts_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Operation Ts Message
nextrade_nextrade_stock10level_nxtascii_v2_12.market_operation_ts_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_stock10level_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = nextrade_nextrade_stock10level_nxtascii_v2_12.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = nextrade_nextrade_stock10level_nxtascii_v2_12.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = nextrade_nextrade_stock10level_nxtascii_v2_12.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Operation Ts Message
nextrade_nextrade_stock10level_nxtascii_v2_12.market_operation_ts_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.market_operation_ts_message, buffer(offset, 0))
    local index = nextrade_nextrade_stock10level_nxtascii_v2_12.market_operation_ts_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_stock10level_nxtascii_v2_12.market_operation_ts_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_stock10level_nxtascii_v2_12.market_operation_ts_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Order Filled Message
nextrade_nextrade_stock10level_nxtascii_v2_12.securities_order_filled_message = {}

-- Size: Securities Order Filled Message
nextrade_nextrade_stock10level_nxtascii_v2_12.securities_order_filled_message.size =
  nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.price_change_against_previous_day.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.a_price_change_against_the_previous_day.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.trading_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.trading_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.opening_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.todays_high.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.todays_low.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_value.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.final_ask_bid_type_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.lp_holding_quantity.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_ask.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_bid.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.size

-- Display: Securities Order Filled Message
nextrade_nextrade_stock10level_nxtascii_v2_12.securities_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Order Filled Message
nextrade_nextrade_stock10level_nxtascii_v2_12.securities_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_stock10level_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Price Change Against Previous Day: String
  index, price_change_against_previous_day = nextrade_nextrade_stock10level_nxtascii_v2_12.price_change_against_previous_day.dissect(buffer, index, packet, parent)

  -- A Price Change Against The Previous Day: Double
  index, a_price_change_against_the_previous_day = nextrade_nextrade_stock10level_nxtascii_v2_12.a_price_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = nextrade_nextrade_stock10level_nxtascii_v2_12.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = nextrade_nextrade_stock10level_nxtascii_v2_12.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = nextrade_nextrade_stock10level_nxtascii_v2_12.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = nextrade_nextrade_stock10level_nxtascii_v2_12.todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = nextrade_nextrade_stock10level_nxtascii_v2_12.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = nextrade_nextrade_stock10level_nxtascii_v2_12.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Lp Holding Quantity: Long
  index, lp_holding_quantity = nextrade_nextrade_stock10level_nxtascii_v2_12.lp_holding_quantity.dissect(buffer, index, packet, parent)

  -- The Best Ask: Double
  index, the_best_ask = nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_ask.dissect(buffer, index, packet, parent)

  -- The Best Bid: Double
  index, the_best_bid = nextrade_nextrade_stock10level_nxtascii_v2_12.the_best_bid.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Order Filled Message
nextrade_nextrade_stock10level_nxtascii_v2_12.securities_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.securities_order_filled_message, buffer(offset, 0))
    local index = nextrade_nextrade_stock10level_nxtascii_v2_12.securities_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_stock10level_nxtascii_v2_12.securities_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_stock10level_nxtascii_v2_12.securities_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Quote 10 Level Message
nextrade_nextrade_stock10level_nxtascii_v2_12.securities_quote_10_level_message = {}

-- Size: Securities Quote 10 Level Message
nextrade_nextrade_stock10level_nxtascii_v2_12.securities_quote_10_level_message.size =
  nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.total_ask_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.total_bid_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_volume.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.mid_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.size

-- Display: Securities Quote 10 Level Message
nextrade_nextrade_stock10level_nxtascii_v2_12.securities_quote_10_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Quote 10 Level Message
nextrade_nextrade_stock10level_nxtascii_v2_12.securities_quote_10_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_stock10level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_stock10level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_stock10level_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_stock10level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_stock10level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_stock10level_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Price: Double
  index, ask_level_4_price = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_price.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Price: Double
  index, bid_level_4_price = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_price.dissect(buffer, index, packet, parent)

  -- Ask Level 4 Volume: Long
  index, ask_level_4_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_4_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 4 Volume: Long
  index, bid_level_4_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_4_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Price: Double
  index, ask_level_5_price = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_price.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Price: Double
  index, bid_level_5_price = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_price.dissect(buffer, index, packet, parent)

  -- Ask Level 5 Volume: Long
  index, ask_level_5_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_5_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 5 Volume: Long
  index, bid_level_5_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_5_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Price: Double
  index, ask_level_6_price = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_price.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Price: Double
  index, bid_level_6_price = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_price.dissect(buffer, index, packet, parent)

  -- Ask Level 6 Volume: Long
  index, ask_level_6_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_6_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 6 Volume: Long
  index, bid_level_6_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_6_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Price: Double
  index, ask_level_7_price = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_price.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Price: Double
  index, bid_level_7_price = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_price.dissect(buffer, index, packet, parent)

  -- Ask Level 7 Volume: Long
  index, ask_level_7_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_7_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 7 Volume: Long
  index, bid_level_7_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_7_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Price: Double
  index, ask_level_8_price = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_price.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Price: Double
  index, bid_level_8_price = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_price.dissect(buffer, index, packet, parent)

  -- Ask Level 8 Volume: Long
  index, ask_level_8_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_8_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 8 Volume: Long
  index, bid_level_8_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_8_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Price: Double
  index, ask_level_9_price = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_price.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Price: Double
  index, bid_level_9_price = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_price.dissect(buffer, index, packet, parent)

  -- Ask Level 9 Volume: Long
  index, ask_level_9_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_9_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 9 Volume: Long
  index, bid_level_9_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_9_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Price: Double
  index, ask_level_10_price = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_price.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Price: Double
  index, bid_level_10_price = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_price.dissect(buffer, index, packet, parent)

  -- Ask Level 10 Volume: Long
  index, ask_level_10_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.ask_level_10_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 10 Volume: Long
  index, bid_level_10_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.bid_level_10_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = nextrade_nextrade_stock10level_nxtascii_v2_12.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- Mid Price: Double
  index, mid_price = nextrade_nextrade_stock10level_nxtascii_v2_12.mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Ask Volume Total Ask Volume On Mid Price: Long
  index, total_mid_price_ask_volume_total_ask_volume_on_mid_price = nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Bid Volume Total Bid Volume On Mid Price: Long
  index, total_mid_price_bid_volume_total_bid_volume_on_mid_price = nextrade_nextrade_stock10level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Quote 10 Level Message
nextrade_nextrade_stock10level_nxtascii_v2_12.securities_quote_10_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.securities_quote_10_level_message, buffer(offset, 0))
    local index = nextrade_nextrade_stock10level_nxtascii_v2_12.securities_quote_10_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_stock10level_nxtascii_v2_12.securities_quote_10_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_stock10level_nxtascii_v2_12.securities_quote_10_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Polling Data Message
nextrade_nextrade_stock10level_nxtascii_v2_12.polling_data_message = {}

-- Size: Polling Data Message
nextrade_nextrade_stock10level_nxtascii_v2_12.polling_data_message.size =
  nextrade_nextrade_stock10level_nxtascii_v2_12.current_time_1_minute_interval.size + 
  nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.size

-- Display: Polling Data Message
nextrade_nextrade_stock10level_nxtascii_v2_12.polling_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Polling Data Message
nextrade_nextrade_stock10level_nxtascii_v2_12.polling_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Time 1 Minute Interval: String
  index, current_time_1_minute_interval = nextrade_nextrade_stock10level_nxtascii_v2_12.current_time_1_minute_interval.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_stock10level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Polling Data Message
nextrade_nextrade_stock10level_nxtascii_v2_12.polling_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12.fields.polling_data_message, buffer(offset, 0))
    local index = nextrade_nextrade_stock10level_nxtascii_v2_12.polling_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_stock10level_nxtascii_v2_12.polling_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_stock10level_nxtascii_v2_12.polling_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nextrade_nextrade_stock10level_nxtascii_v2_12.payload = {}

-- Dissect: Payload
nextrade_nextrade_stock10level_nxtascii_v2_12.payload.dissect = function(buffer, offset, packet, parent, tr_code)
  -- Dissect Polling Data Message
  if tr_code == "I2500" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.polling_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Quote 10 Level Message
  if tr_code == "B651S" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.securities_quote_10_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Quote 10 Level Message
  if tr_code == "B651Q" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.securities_quote_10_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Order Filled Message
  if tr_code == "A351S" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.securities_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Order Filled Message
  if tr_code == "A351Q" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.securities_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if tr_code == "A751S" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if tr_code == "A751Q" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Closing Message
  if tr_code == "A651S" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Closing Message
  if tr_code == "A651Q" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Triggering Removing Vi Message
  if tr_code == "R851S" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.triggering_removing_vi_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Triggering Removing Vi Message
  if tr_code == "R851Q" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.triggering_removing_vi_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing Price Trading Quote Message
  if tr_code == "E151S" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_trading_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing Price Trading Quote Message
  if tr_code == "E151Q" then
    return nextrade_nextrade_stock10level_nxtascii_v2_12.closing_price_trading_quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
nextrade_nextrade_stock10level_nxtascii_v2_12.packet = {}

-- Verify required size of Udp packet
nextrade_nextrade_stock10level_nxtascii_v2_12.packet.requiredsize = function(buffer)
  return buffer:len() >= nextrade_nextrade_stock10level_nxtascii_v2_12.tr_code.size
end

-- Dissect Packet
nextrade_nextrade_stock10level_nxtascii_v2_12.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- TR Code: char
    index, tr_code = nextrade_nextrade_stock10level_nxtascii_v2_12.tr_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 7 branches
    index = nextrade_nextrade_stock10level_nxtascii_v2_12.payload.dissect(buffer, index, packet, parent, tr_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nextrade_nextrade_stock10level_nxtascii_v2_12.init()
end

-- Dissector for Nextrade Nextrade Stock10Level NxtAscii 2.12
function omi_nextrade_nextrade_stock10level_nxtascii_v2_12.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nextrade_nextrade_stock10level_nxtascii_v2_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_nextrade_nextrade_stock10level_nxtascii_v2_12, buffer(), omi_nextrade_nextrade_stock10level_nxtascii_v2_12.description, "("..buffer:len().." Bytes)")
  return nextrade_nextrade_stock10level_nxtascii_v2_12.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nextrade Nextrade Stock10Level NxtAscii 2.12 (Udp)
local function omi_nextrade_nextrade_stock10level_nxtascii_v2_12_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nextrade_nextrade_stock10level_nxtascii_v2_12.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nextrade_nextrade_stock10level_nxtascii_v2_12
  omi_nextrade_nextrade_stock10level_nxtascii_v2_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nextrade Nextrade Stock10Level NxtAscii 2.12
omi_nextrade_nextrade_stock10level_nxtascii_v2_12:register_heuristic("udp", omi_nextrade_nextrade_stock10level_nxtascii_v2_12_udp_heuristic)

-- Register Nextrade Nextrade Stock10Level NxtAscii 2.12 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nextrade_nextrade_stock10level_nxtascii_v2_12)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Nextrade
--   Version: 2.12
--   Date: Thursday, August 13, 2026
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
