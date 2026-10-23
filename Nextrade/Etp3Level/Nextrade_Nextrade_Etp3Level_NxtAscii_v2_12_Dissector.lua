-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nextrade Nextrade Etp3Level NxtAscii 2.12 Protocol
local omi_nextrade_nextrade_etp3level_nxtascii_v2_12 = Proto("Omi.Nextrade.Nextrade.Etp3Level.NxtAscii.v2.12", "Nextrade Nextrade Etp3Level NxtAscii 2.12")

-- Protocol table
local nextrade_nextrade_etp3level_nxtascii_v2_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nextrade Nextrade Etp3Level NxtAscii 2.12 Fields
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_base_price_to_trigger_dynamic_vi = ProtoField.new("A Base Price To Trigger Dynamic Vi", "nextrade.nextrade.etp3level.nxtascii.v2.12.abasepricetotriggerdynamicvi", ftypes.UINT64, nil, nil, nil, "A Base Price to trigger dynamic VI.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_base_price_to_trigger_static_vi = ProtoField.new("A Base Price To Trigger Static Vi", "nextrade.nextrade.etp3level.nxtascii.v2.12.abasepricetotriggerstaticvi", ftypes.UINT64, nil, nil, nil, "A Base Price to trigger Static VI - if there is no previous single-price (call auction) execution price, base price is set.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_designated_number_for_an_issue_from_krx = ProtoField.new("A Designated Number For An Issue From Krx", "nextrade.nextrade.etp3level.nxtascii.v2.12.adesignatednumberforanissuefromkrx", ftypes.UINT24, nil, nil, nil, "A designated number for each issue on a daily basis from KRX.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_price_change_against_the_previous_day = ProtoField.new("A Price Change Against The Previous Day", "nextrade.nextrade.etp3level.nxtascii.v2.12.apricechangeagainstthepreviousday", ftypes.UINT64, nil, nil, nil, "A Price change against the previous day.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.accumulated_trading_value = ProtoField.new("Accumulated Trading Value", "nextrade.nextrade.etp3level.nxtascii.v2.12.accumulatedtradingvalue", ftypes.DOUBLE, nil, nil, nil, "Accumulated trading value Trading value=trading amount*trading price.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.accumulated_trading_volume = ProtoField.new("Accumulated Trading Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.accumulatedtradingvolume", ftypes.UINT64, nil, nil, nil, "Accumulated Trading Volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_1_price = ProtoField.new("Ask Level 1 Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.asklevel1price", ftypes.UINT64, nil, nil, nil, "The best ask.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_1_volume = ProtoField.new("Ask Level 1 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.asklevel1volume", ftypes.UINT64, nil, nil, nil, "The best ask volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_2_price = ProtoField.new("Ask Level 2 Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.asklevel2price", ftypes.UINT64, nil, nil, nil, "The second highest ask price.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_2_volume = ProtoField.new("Ask Level 2 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.asklevel2volume", ftypes.UINT64, nil, nil, nil, "The second highest ask volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_3_price = ProtoField.new("Ask Level 3 Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.asklevel3price", ftypes.UINT64, nil, nil, nil, "The third highest ask price.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_3_volume = ProtoField.new("Ask Level 3 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.asklevel3volume", ftypes.UINT64, nil, nil, nil, "The third highest ask volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_1_price = ProtoField.new("Bid Level 1 Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.bidlevel1price", ftypes.UINT64, nil, nil, nil, "The best bid.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_1_volume = ProtoField.new("Bid Level 1 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.bidlevel1volume", ftypes.UINT64, nil, nil, nil, "The best bid volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_2_price = ProtoField.new("Bid Level 2 Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.bidlevel2price", ftypes.UINT64, nil, nil, nil, "The second lowest bid price.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_2_volume = ProtoField.new("Bid Level 2 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.bidlevel2volume", ftypes.UINT64, nil, nil, nil, "The second lowest bid volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_3_price = ProtoField.new("Bid Level 3 Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.bidlevel3price", ftypes.UINT64, nil, nil, nil, "The third lowest bid price.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_3_volume = ProtoField.new("Bid Level 3 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.bidlevel3volume", ftypes.UINT64, nil, nil, nil, "The third lowest bid volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.board_event_group_code = ProtoField.new("Board Event Group Code", "nextrade.nextrade.etp3level.nxtascii.v2.12.boardeventgroupcode", ftypes.UINT24, nil, nil, nil, "Board Event Group Code (Bitwise operation) ▦▦ Code ▦▦ 1: A regular Issue (not an issue on the last trading day) 2: An issue on the Last trading day 4: A regular issue (not a unit trading issue) 8: Uni.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.board_event_id = ProtoField.new("Board Event Id", "nextrade.nextrade.etp3level.nxtascii.v2.12.boardeventid", ftypes.STRING, nil, nil, nil, "An ID indicates an event that occurs on a Board in a designated time.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.board_id = ProtoField.new("Board Id", "nextrade.nextrade.etp3level.nxtascii.v2.12.boardid", ftypes.STRING, nil, nil, nil, "The Board ID refers to each Board in which an issue is traded under different trading schedules and rules. Individual issue can be traded on more than two Boards under each Board's schedule and with d.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price = ProtoField.new("Closing Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.closingprice", ftypes.UINT64, nil, nil, nil, "Closing price on the day's regular session. However, for G3 board, the closing price of KRX is set.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_base_price_of_buy_in = ProtoField.new("Closing Price Base Price Of Buy In", "nextrade.nextrade.etp3level.nxtascii.v2.12.closingpricebasepriceofbuyin", ftypes.UINT64, nil, nil, nil, "Closing Price_Base Price of Buy-In.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_lower_limit_of_buy_in = ProtoField.new("Closing Price Lower Limit Of Buy In", "nextrade.nextrade.etp3level.nxtascii.v2.12.closingpricelowerlimitofbuyin", ftypes.UINT64, nil, nil, nil, "Closing Price_Lower Limit of Buy-In.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_type_code = ProtoField.new("Closing Price Type Code", "nextrade.nextrade.etp3level.nxtascii.v2.12.closingpricetypecode", ftypes.STRING, nil, nil, nil, "1: Closing price 3: No Trades Closing price type code of NXT is set on each board.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_upper_limit_of_buy_in = ProtoField.new("Closing Price Upper Limit Of Buy In", "nextrade.nextrade.etp3level.nxtascii.v2.12.closingpriceupperlimitofbuyin", ftypes.UINT64, nil, nil, nil, "Closing Price_Upper Limit of Buy-In.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_weighted_stock_price_average = ProtoField.new("Closing Price Weighted Stock Price Average", "nextrade.nextrade.etp3level.nxtascii.v2.12.closingpriceweightedstockpriceaverage", ftypes.UINT64, nil, nil, nil, "Weighted Average is calculated by adding up an issue's aggregated market value, which is part of a certain index or markets, and dividing it with the total shares listed. - Weighted Stock Price Averag.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.current_time_1_minute_interval = ProtoField.new("Current Time 1 Minute Interval", "nextrade.nextrade.etp3level.nxtascii.v2.12.currenttime1minuteinterval", ftypes.STRING, nil, nil, nil, "Current Time (1-minute interval).")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.disparate_ratio_to_trigger_dynamic_vi = ProtoField.new("Disparate Ratio To Trigger Dynamic Vi", "nextrade.nextrade.etp3level.nxtascii.v2.12.disparateratiototriggerdynamicvi", ftypes.DOUBLE, nil, nil, nil, "A disparate ratio of a previously traded price to an expected price to trigger dynamic VI.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.disparate_ratio_to_trigger_static_vi = ProtoField.new("Disparate Ratio To Trigger Static Vi", "nextrade.nextrade.etp3level.nxtascii.v2.12.disparateratiototriggerstaticvi", ftypes.DOUBLE, nil, nil, nil, "A disparate ratio of a base price to an expected price to trigger static VI.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.end_keyword = ProtoField.new("End Keyword", "nextrade.nextrade.etp3level.nxtascii.v2.12.endkeyword", ftypes.STRING, nil, nil, nil, "A keyword indicating the end of a message. (%HFF) * Data type is Int for Binary.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.estimated_trading_price = ProtoField.new("Estimated Trading Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.estimatedtradingprice", ftypes.UINT64, nil, nil, nil, "An estimated trading price before the single price trade session.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.estimated_trading_volume = ProtoField.new("Estimated Trading Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.estimatedtradingvolume", ftypes.UINT64, nil, nil, nil, "An estimated trading volume before the single price trade session.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.final_ask_bid_type_code = ProtoField.new("Final Ask Bid Type Code", "nextrade.nextrade.etp3level.nxtascii.v2.12.finalaskbidtypecode", ftypes.STRING, nil, nil, nil, "Ask/Bid Type Code space: order filled with single price. 0: N/A 1: ASK 2: BID.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.isin_code = ProtoField.new("Isin Code", "nextrade.nextrade.etp3level.nxtascii.v2.12.isincode", ftypes.STRING, nil, nil, nil, "ISIN Code.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session = ProtoField.new("Lower Limit Price On The Single Price Trade In The Off Hours Session", "nextrade.nextrade.etp3level.nxtascii.v2.12.lowerlimitpriceonthesinglepricetradeintheoffhourssession", ftypes.UINT64, nil, nil, nil, "Lower Limit Price on the Single Price in the Off-Hours Session.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_ask_level_1_volume = ProtoField.new("Lp Ask Level 1 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.lpasklevel1volume", ftypes.UINT64, nil, nil, nil, "LP_The best ask volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_ask_level_2_volume = ProtoField.new("Lp Ask Level 2 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.lpasklevel2volume", ftypes.UINT64, nil, nil, nil, "LP_The second highest ask volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_ask_level_3_volume = ProtoField.new("Lp Ask Level 3 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.lpasklevel3volume", ftypes.UINT64, nil, nil, nil, "LP_The third highest ask volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_bid_level_1_volume = ProtoField.new("Lp Bid Level 1 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.lpbidlevel1volume", ftypes.UINT64, nil, nil, nil, "LP_The best bid volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_bid_level_2_volume = ProtoField.new("Lp Bid Level 2 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.lpbidlevel2volume", ftypes.UINT64, nil, nil, nil, "LP_The second lowest bid volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_bid_level_3_volume = ProtoField.new("Lp Bid Level 3 Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.lpbidlevel3volume", ftypes.UINT64, nil, nil, nil, "LP_The third lowest bid volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_holding_quantity = ProtoField.new("Lp Holding Quantity", "nextrade.nextrade.etp3level.nxtascii.v2.12.lpholdingquantity", ftypes.UINT64, nil, nil, nil, "LP holding quantity per each account.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nextrade.nextrade.etp3level.nxtascii.v2.12.messagesequencenumber", ftypes.UINT32, nil, nil, nil, "A message sequence number given by Market data team - Market data: seq number is given by instruments and boards (※ only for high-bandwidth service) - Batch Data: seq number is given by Information Ca.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.mid_price = ProtoField.new("Mid Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.midprice", ftypes.UINT64, nil, nil, nil, "Average price of NXT BBO with midpoint quote effectiveness(truncation of decimal places).")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.opening_price = ProtoField.new("Opening Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.openingprice", ftypes.UINT64, nil, nil, nil, "The first price that a security traded upon the opening of the regular session.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.price_change_against_previous_day = ProtoField.new("Price Change Against Previous Day", "nextrade.nextrade.etp3level.nxtascii.v2.12.pricechangeagainstpreviousday", ftypes.STRING, nil, nil, nil, "0: Initial value 1:high limit 2:ascended 3:unchanged 4:low limit 5:declined.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.processing_time_of_trading_system = ProtoField.new("Processing Time Of Trading System", "nextrade.nextrade.etp3level.nxtascii.v2.12.processingtimeoftradingsystem", ftypes.STRING, nil, nil, nil, "HHMMSSuuuuuu.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.session_id = ProtoField.new("Session Id", "nextrade.nextrade.etp3level.nxtascii.v2.12.sessionid", ftypes.STRING, nil, nil, nil, "A Session is a subordinate concept of a Board and each session follows different trading methods and rules.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.start_time_of_a_board_event = ProtoField.new("Start Time Of A Board Event", "nextrade.nextrade.etp3level.nxtascii.v2.12.starttimeofaboardevent", ftypes.STRING, nil, nil, nil, "The time when a Board Event occurs.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.the_best_ask = ProtoField.new("The Best Ask", "nextrade.nextrade.etp3level.nxtascii.v2.12.thebestask", ftypes.UINT64, nil, nil, nil, "The lowest price among the ask quotes.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.the_best_bid = ProtoField.new("The Best Bid", "nextrade.nextrade.etp3level.nxtascii.v2.12.thebestbid", ftypes.UINT64, nil, nil, nil, "The highest price among the bid quotes.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.the_time_ending_vi = ProtoField.new("The Time Ending Vi", "nextrade.nextrade.etp3level.nxtascii.v2.12.thetimeendingvi", ftypes.STRING, nil, nil, nil, "The time ending VI.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.todays_high = ProtoField.new("Todays High", "nextrade.nextrade.etp3level.nxtascii.v2.12.todayshigh", ftypes.UINT64, nil, nil, nil, "The highest price during the course of a trading day.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.todays_low = ProtoField.new("Todays Low", "nextrade.nextrade.etp3level.nxtascii.v2.12.todayslow", ftypes.UINT64, nil, nil, nil, "The lowest price during the course of a trading day.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_ask_volume = ProtoField.new("Total Ask Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.totalaskvolume", ftypes.UINT64, nil, nil, nil, "Total ask volume on Closing Price Trading.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_ask_volume_level_10 = ProtoField.new("Total Ask Volume Level 10", "nextrade.nextrade.etp3level.nxtascii.v2.12.totalaskvolumelevel10", ftypes.UINT64, nil, nil, nil, "Total ask volume(Level 10).")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_bid_volume = ProtoField.new("Total Bid Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.totalbidvolume", ftypes.UINT64, nil, nil, nil, "Total bid volume on Closing Price Trading.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_bid_volume_level_10 = ProtoField.new("Total Bid Volume Level 10", "nextrade.nextrade.etp3level.nxtascii.v2.12.totalbidvolumelevel10", ftypes.UINT64, nil, nil, nil, "Total bid volume(Level 10).")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_mid_price_ask_volume_total_ask_volume_on_mid_price = ProtoField.new("Total Mid Price Ask Volume Total Ask Volume On Mid Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.totalmidpriceaskvolumetotalaskvolumeonmidprice", ftypes.UINT64, nil, nil, nil, "Total quantity of ask midpoint quotes.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_mid_price_bid_volume_total_bid_volume_on_mid_price = ProtoField.new("Total Mid Price Bid Volume Total Bid Volume On Mid Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.totalmidpricebidvolumetotalbidvolumeonmidprice", ftypes.UINT64, nil, nil, nil, "Total quantity of bid midpoint quotes.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.tr_code = ProtoField.new("TR Code", "nextrade.nextrade.etp3level.nxtascii.v2.12.trcode", ftypes.STRING, nil, nil, nil, "Five-character Ascii TR-CODE identifying the disseminated market data record. Formed by concatenating a 2-character Data Category naming the message family (e.g. \"B6\" Quote, \"A3\" Order Filled, \"G7\" Order Filled plus Quote, \"A7\" Market Operation TS, \"A0\" Equities Batch) with a 3-character Information Category naming the market or product variant, typically a 2-digit information code plus a 1-character market code (e.g. \"51S\" = KOSPI stock, \"51Q\" = KOSDAQ stock, \"53S\" = exchange traded product).")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.trading_halt_reason_code = ProtoField.new("Trading Halt Reason Code", "nextrade.nextrade.etp3level.nxtascii.v2.12.tradinghaltreasoncode", ftypes.STRING, nil, nil, nil, "Trading Halt Reason Code X01: Market Administrative from NXT X99: Request from KRX 1XX~301: KOSPI 6XX: KOSDAQ.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.trading_price = ProtoField.new("Trading Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.tradingprice", ftypes.UINT64, nil, nil, nil, "The price at which a security is traded between ask and bid quotes.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.trading_volume = ProtoField.new("Trading Volume", "nextrade.nextrade.etp3level.nxtascii.v2.12.tradingvolume", ftypes.UINT64, nil, nil, nil, "Trading volume.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session = ProtoField.new("Upper Limit Price On The Single Price Trade In The Off Hours Session", "nextrade.nextrade.etp3level.nxtascii.v2.12.upperlimitpriceonthesinglepricetradeintheoffhourssession", ftypes.UINT64, nil, nil, nil, "Upper Limit Price on the Single Price Trade in the Off-Hours Session.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.vi_status_code = ProtoField.new("Vi Status Code", "nextrade.nextrade.etp3level.nxtascii.v2.12.vistatuscode", ftypes.STRING, nil, nil, nil, "A code to show triggering or removal of VI 1: VI triggered 2: VI removed.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.vi_triggering_price = ProtoField.new("Vi Triggering Price", "nextrade.nextrade.etp3level.nxtascii.v2.12.vitriggeringprice", ftypes.UINT64, nil, nil, nil, "A price to trigger VI.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.vi_type_code = ProtoField.new("Vi Type Code", "nextrade.nextrade.etp3level.nxtascii.v2.12.vitypecode", ftypes.STRING, nil, nil, nil, "A code to distinguish static VI or dynamic VI 1: Static VI 2: Dynamic VI 3: Static/Dynamic VI 4. Extended VI.")

-- Nextrade Nextrade Etp3Level NxtAscii 2.12 Framing
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.packet = ProtoField.new("Packet", "nextrade.nextrade.etp3level.nxtascii.v2.12.packet", ftypes.STRING, nil, nil, nil, "Nextrade Market Data Udp Packet")

-- Nextrade Nextrade Etp3Level 2.12 Application Messages
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_trading_quote_message = ProtoField.new("Closing Price Trading Quote Message", "nextrade.nextrade.etp3level.nxtascii.v2.12.closingpricetradingquotemessage", ftypes.STRING, nil, nil, nil, "Total Ask/Bid volume per Issue on Closing Price Trade.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.issue_closing_message = ProtoField.new("Issue Closing Message", "nextrade.nextrade.etp3level.nxtascii.v2.12.issueclosingmessage", ftypes.STRING, nil, nil, nil, "The data is provided in case of an issue closing per board.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.market_operation_ts_message = ProtoField.new("Market Operation Ts Message", "nextrade.nextrade.etp3level.nxtascii.v2.12.marketoperationtsmessage", ftypes.STRING, nil, nil, nil, "The data is provided per an issue if a Market Operation Trading session event occurs.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.market_operation_ts_plus_quote_mm_lp_quotes_included_3_level_message = ProtoField.new("Market Operation Ts Plus Quote Mm Lp Quotes Included 3 Level Message", "nextrade.nextrade.etp3level.nxtascii.v2.12.marketoperationtsplusquotemmlpquotesincluded3levelmessage", ftypes.STRING, nil, nil, nil, "Market Operation TS with Best Order on NXT trading items - MM/LP Quotes Included The data is provided per an issue if a Market Operation Trading session event occurs and Best Order changes. * 3 Level.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.polling_data_message = ProtoField.new("Polling Data Message", "nextrade.nextrade.etp3level.nxtascii.v2.12.pollingdatamessage", ftypes.STRING, nil, nil, nil, "The data is provided periodically in order to check multicast group status.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.securities_order_filled_message = ProtoField.new("Securities Order Filled Message", "nextrade.nextrade.etp3level.nxtascii.v2.12.securitiesorderfilledmessage", ftypes.STRING, nil, nil, nil, "Securities_Order Filled Order Filled Data on NXT trading items provided.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.securities_order_filled_plus_quote_mm_lp_quotes_included_3_level_message = ProtoField.new("Securities Order Filled Plus Quote Mm Lp Quotes Included 3 Level Message", "nextrade.nextrade.etp3level.nxtascii.v2.12.securitiesorderfilledplusquotemmlpquotesincluded3levelmessage", ftypes.STRING, nil, nil, nil, "Order Filled data with Best Order on NXT trading items - MM/LP Quotes Included * 3 Level Best Order on Ask/Bid.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.securities_quote_mm_lp_quotes_included_3_level_message = ProtoField.new("Securities Quote Mm Lp Quotes Included 3 Level Message", "nextrade.nextrade.etp3level.nxtascii.v2.12.securitiesquotemmlpquotesincluded3levelmessage", ftypes.STRING, nil, nil, nil, "Securities_Quote (MM/LP Quotes Included, 3 Level) Best Order Data on NXT Trading Items provided - MM/LP Quotes Included * 3 Level Best Order on Ask/Bid.")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.triggering_removing_vi_message = ProtoField.new("Triggering Removing Vi Message", "nextrade.nextrade.etp3level.nxtascii.v2.12.triggeringremovingvimessage", ftypes.STRING, nil, nil, nil, "Triggering/removing VI (Volatility Interruption).")

-- Nextrade Nextrade Etp3Level NxtAscii 2.12 Expert Info
nextrade_nextrade_etp3level_nxtascii_v2_12.experts = {}
nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number = ProtoExpert.new("nextrade.nextrade.etp3level.nxtascii.v2.12.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.experts = { nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number }

-----------------------------------------------------------------------
-- Nextrade Nextrade Etp3Level NxtAscii 2.12 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding = ENC_EUC_KR


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nextrade Nextrade Etp3Level NxtAscii 2.12 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Nextrade Nextrade Etp3Level NxtAscii 2.12 Show Options
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nextrade_nextrade_etp3level_nxtascii_v2_12.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_nextrade_nextrade_etp3level_nxtascii_v2_12.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nextrade_nextrade_etp3level_nxtascii_v2_12.prefs.show_application_messages then
    show.application_messages = omi_nextrade_nextrade_etp3level_nxtascii_v2_12.prefs.show_application_messages
  end
  if show.structs ~= omi_nextrade_nextrade_etp3level_nxtascii_v2_12.prefs.show_structs then
    show.structs = omi_nextrade_nextrade_etp3level_nxtascii_v2_12.prefs.show_structs
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

-- ascii digits as an unsigned 64 bit value, nil when the run is no number
ascii_to_uint64 = function(str)
  local digits = str:match("^%s*(%d+)%s*$")

  if digits == nil then
    return nil
  end

  local value = UInt64.new(digits)

  -- UInt64.new stops at its maximum rather than failing, so an overrun would
  -- read as that maximum. Nineteen digits always fit, so only a longer run is
  -- read back and compared against the digits it came from
  if #digits > 19 then
    local significant = digits:match("^0*(%d+)$")

    if tostring(value) ~= significant then
      return nil
    end
  end

  return value
end


-----------------------------------------------------------------------
-- Nextrade Nextrade Etp3Level NxtAscii 2.12 Fields
-----------------------------------------------------------------------

-- A Base Price To Trigger Dynamic Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi = {}

-- Size: A Base Price To Trigger Dynamic Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.size = 11

-- Display: A Base Price To Trigger Dynamic Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.display = function(value)
  return "A Base Price To Trigger Dynamic Vi: "..value
end

-- Dissect: A Base Price To Trigger Dynamic Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_base_price_to_trigger_dynamic_vi, range, value, "A Base Price To Trigger Dynamic Vi: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "A Base Price To Trigger Dynamic Vi is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_base_price_to_trigger_dynamic_vi, range, value, display)

  return offset + length, value
end

-- A Base Price To Trigger Static Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_static_vi = {}

-- Size: A Base Price To Trigger Static Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.size = 11

-- Display: A Base Price To Trigger Static Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.display = function(value)
  return "A Base Price To Trigger Static Vi: "..value
end

-- Dissect: A Base Price To Trigger Static Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_base_price_to_trigger_static_vi, range, value, "A Base Price To Trigger Static Vi: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "A Base Price To Trigger Static Vi is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_base_price_to_trigger_static_vi, range, value, display)

  return offset + length, value
end

-- A Designated Number For An Issue From Krx
nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx = {}

-- Size: A Designated Number For An Issue From Krx
nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size = 6

-- Display: A Designated Number For An Issue From Krx
nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.display = function(value)
  return "A Designated Number For An Issue From Krx: "..value
end

-- Dissect: A Designated Number For An Issue From Krx
nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_designated_number_for_an_issue_from_krx, range, value, "A Designated Number For An Issue From Krx: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "A Designated Number For An Issue From Krx is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_designated_number_for_an_issue_from_krx, range, value, display)

  return offset + length, value
end

-- A Price Change Against The Previous Day
nextrade_nextrade_etp3level_nxtascii_v2_12.a_price_change_against_the_previous_day = {}

-- Size: A Price Change Against The Previous Day
nextrade_nextrade_etp3level_nxtascii_v2_12.a_price_change_against_the_previous_day.size = 11

-- Display: A Price Change Against The Previous Day
nextrade_nextrade_etp3level_nxtascii_v2_12.a_price_change_against_the_previous_day.display = function(value)
  return "A Price Change Against The Previous Day: "..value
end

-- Dissect: A Price Change Against The Previous Day
nextrade_nextrade_etp3level_nxtascii_v2_12.a_price_change_against_the_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.a_price_change_against_the_previous_day.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_price_change_against_the_previous_day, range, value, "A Price Change Against The Previous Day: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "A Price Change Against The Previous Day is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.a_price_change_against_the_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.a_price_change_against_the_previous_day, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Value
nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_value = {}

-- Size: Accumulated Trading Value
nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_value.size = 22

-- Display: Accumulated Trading Value
nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_value.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_value.size):string()
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
nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_value.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.accumulated_trading_value, range, value, "Accumulated Trading Value: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Accumulated Trading Value is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.accumulated_trading_value, range, value, display)

  return offset + length, value
end

-- Accumulated Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_volume = {}

-- Size: Accumulated Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_volume.size = 12

-- Display: Accumulated Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_volume.display = function(value)
  return "Accumulated Trading Volume: "..value
end

-- Dissect: Accumulated Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.accumulated_trading_volume, range, value, "Accumulated Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Accumulated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.accumulated_trading_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price = {}

-- Size: Ask Level 1 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price.size = 11

-- Display: Ask Level 1 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price.display = function(value)
  return "Ask Level 1 Price: "..value
end

-- Dissect: Ask Level 1 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_1_price, range, value, "Ask Level 1 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Ask Level 1 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_1_price, range, value, display)

  return offset + length, value
end

-- Ask Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume = {}

-- Size: Ask Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume.size = 12

-- Display: Ask Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume.display = function(value)
  return "Ask Level 1 Volume: "..value
end

-- Dissect: Ask Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_1_volume, range, value, "Ask Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Ask Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_1_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price = {}

-- Size: Ask Level 2 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price.size = 11

-- Display: Ask Level 2 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price.display = function(value)
  return "Ask Level 2 Price: "..value
end

-- Dissect: Ask Level 2 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_2_price, range, value, "Ask Level 2 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Ask Level 2 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_2_price, range, value, display)

  return offset + length, value
end

-- Ask Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume = {}

-- Size: Ask Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume.size = 12

-- Display: Ask Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume.display = function(value)
  return "Ask Level 2 Volume: "..value
end

-- Dissect: Ask Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_2_volume, range, value, "Ask Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Ask Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_2_volume, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price = {}

-- Size: Ask Level 3 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price.size = 11

-- Display: Ask Level 3 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price.display = function(value)
  return "Ask Level 3 Price: "..value
end

-- Dissect: Ask Level 3 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_3_price, range, value, "Ask Level 3 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Ask Level 3 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_3_price, range, value, display)

  return offset + length, value
end

-- Ask Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume = {}

-- Size: Ask Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume.size = 12

-- Display: Ask Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume.display = function(value)
  return "Ask Level 3 Volume: "..value
end

-- Dissect: Ask Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_3_volume, range, value, "Ask Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Ask Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.ask_level_3_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price = {}

-- Size: Bid Level 1 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price.size = 11

-- Display: Bid Level 1 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price.display = function(value)
  return "Bid Level 1 Price: "..value
end

-- Dissect: Bid Level 1 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_1_price, range, value, "Bid Level 1 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Bid Level 1 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_1_price, range, value, display)

  return offset + length, value
end

-- Bid Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume = {}

-- Size: Bid Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume.size = 12

-- Display: Bid Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume.display = function(value)
  return "Bid Level 1 Volume: "..value
end

-- Dissect: Bid Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_1_volume, range, value, "Bid Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Bid Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_1_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price = {}

-- Size: Bid Level 2 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price.size = 11

-- Display: Bid Level 2 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price.display = function(value)
  return "Bid Level 2 Price: "..value
end

-- Dissect: Bid Level 2 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_2_price, range, value, "Bid Level 2 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Bid Level 2 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_2_price, range, value, display)

  return offset + length, value
end

-- Bid Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume = {}

-- Size: Bid Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume.size = 12

-- Display: Bid Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume.display = function(value)
  return "Bid Level 2 Volume: "..value
end

-- Dissect: Bid Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_2_volume, range, value, "Bid Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Bid Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_2_volume, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price = {}

-- Size: Bid Level 3 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price.size = 11

-- Display: Bid Level 3 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price.display = function(value)
  return "Bid Level 3 Price: "..value
end

-- Dissect: Bid Level 3 Price
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_3_price, range, value, "Bid Level 3 Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Bid Level 3 Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_3_price, range, value, display)

  return offset + length, value
end

-- Bid Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume = {}

-- Size: Bid Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume.size = 12

-- Display: Bid Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume.display = function(value)
  return "Bid Level 3 Volume: "..value
end

-- Dissect: Bid Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_3_volume, range, value, "Bid Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Bid Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.bid_level_3_volume, range, value, display)

  return offset + length, value
end

-- Board Event Group Code
nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_group_code = {}

-- Size: Board Event Group Code
nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_group_code.size = 5

-- Display: Board Event Group Code
nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_group_code.display = function(value)
  return "Board Event Group Code: "..value
end

-- Dissect: Board Event Group Code
nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_group_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_group_code.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.board_event_group_code, range, value, "Board Event Group Code: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Board Event Group Code is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.board_event_group_code, range, value, display)

  return offset + length, value
end

-- Board Event Id
nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_id = {}

-- Size: Board Event Id
nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_id.size = 3

-- Display: Board Event Id
nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_id.display = function(value)
  return "Board Event Id: "..value
end

-- Dissect: Board Event Id
nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.board_event_id, range, value, display)

  return offset + length, value
end

-- Board Id
nextrade_nextrade_etp3level_nxtascii_v2_12.board_id = {}

-- Size: Board Id
nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.size = 2

-- Display: Board Id
nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.display = function(value)
  return "Board Id: "..value
end

-- Dissect: Board Id
nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.board_id, range, value, display)

  return offset + length, value
end

-- Closing Price
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price = {}

-- Size: Closing Price
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price.size = 11

-- Display: Closing Price
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price, range, value, "Closing Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Base Price Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_base_price_of_buy_in = {}

-- Size: Closing Price Base Price Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_base_price_of_buy_in.size = 11

-- Display: Closing Price Base Price Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_base_price_of_buy_in.display = function(value)
  return "Closing Price Base Price Of Buy In: "..value
end

-- Dissect: Closing Price Base Price Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_base_price_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_base_price_of_buy_in.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_base_price_of_buy_in, range, value, "Closing Price Base Price Of Buy In: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Closing Price Base Price Of Buy In is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_base_price_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_base_price_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Lower Limit Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in = {}

-- Size: Closing Price Lower Limit Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.size = 11

-- Display: Closing Price Lower Limit Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.display = function(value)
  return "Closing Price Lower Limit Of Buy In: "..value
end

-- Dissect: Closing Price Lower Limit Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_lower_limit_of_buy_in, range, value, "Closing Price Lower Limit Of Buy In: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Closing Price Lower Limit Of Buy In is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_lower_limit_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_type_code = {}

-- Size: Closing Price Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_type_code.size = 1

-- Display: Closing Price Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_type_code.display = function(value)
  return "Closing Price Type Code: "..value
end

-- Dissect: Closing Price Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_type_code, range, value, display)

  return offset + length, value
end

-- Closing Price Upper Limit Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in = {}

-- Size: Closing Price Upper Limit Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.size = 11

-- Display: Closing Price Upper Limit Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.display = function(value)
  return "Closing Price Upper Limit Of Buy In: "..value
end

-- Dissect: Closing Price Upper Limit Of Buy In
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_upper_limit_of_buy_in, range, value, "Closing Price Upper Limit Of Buy In: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Closing Price Upper Limit Of Buy In is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_upper_limit_of_buy_in, range, value, display)

  return offset + length, value
end

-- Closing Price Weighted Stock Price Average
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_weighted_stock_price_average = {}

-- Size: Closing Price Weighted Stock Price Average
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_weighted_stock_price_average.size = 11

-- Display: Closing Price Weighted Stock Price Average
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_weighted_stock_price_average.display = function(value)
  return "Closing Price Weighted Stock Price Average: "..value
end

-- Dissect: Closing Price Weighted Stock Price Average
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_weighted_stock_price_average.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_weighted_stock_price_average.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_weighted_stock_price_average, range, value, "Closing Price Weighted Stock Price Average: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Closing Price Weighted Stock Price Average is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_weighted_stock_price_average.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_weighted_stock_price_average, range, value, display)

  return offset + length, value
end

-- Current Time 1 Minute Interval
nextrade_nextrade_etp3level_nxtascii_v2_12.current_time_1_minute_interval = {}

-- Size: Current Time 1 Minute Interval
nextrade_nextrade_etp3level_nxtascii_v2_12.current_time_1_minute_interval.size = 4

-- Display: Current Time 1 Minute Interval
nextrade_nextrade_etp3level_nxtascii_v2_12.current_time_1_minute_interval.display = function(value)
  return "Current Time 1 Minute Interval: "..value
end

-- Dissect: Current Time 1 Minute Interval
nextrade_nextrade_etp3level_nxtascii_v2_12.current_time_1_minute_interval.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.current_time_1_minute_interval.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.current_time_1_minute_interval.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.current_time_1_minute_interval, range, value, display)

  return offset + length, value
end

-- Disparate Ratio To Trigger Dynamic Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi = {}

-- Size: Disparate Ratio To Trigger Dynamic Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size = 13

-- Display: Disparate Ratio To Trigger Dynamic Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size):string()
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
nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.disparate_ratio_to_trigger_dynamic_vi, range, value, "Disparate Ratio To Trigger Dynamic Vi: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Disparate Ratio To Trigger Dynamic Vi is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.disparate_ratio_to_trigger_dynamic_vi, range, value, display)

  return offset + length, value
end

-- Disparate Ratio To Trigger Static Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi = {}

-- Size: Disparate Ratio To Trigger Static Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size = 13

-- Display: Disparate Ratio To Trigger Static Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.display = function(value, buffer, offset, packet, parent)
  local raw = buffer(offset, nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size):string()
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
nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.disparate_ratio_to_trigger_static_vi, range, value, "Disparate Ratio To Trigger Static Vi: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Disparate Ratio To Trigger Static Vi is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.disparate_ratio_to_trigger_static_vi, range, value, display)

  return offset + length, value
end

-- End Keyword
nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword = {}

-- Size: End Keyword
nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.size = 1

-- Display: End Keyword
nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.display = function(value)
  return "End Keyword: "..value
end

-- Dissect: End Keyword
nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.end_keyword, range, value, display)

  return offset + length, value
end

-- Estimated Trading Price
nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_price = {}

-- Size: Estimated Trading Price
nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_price.size = 11

-- Display: Estimated Trading Price
nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_price.display = function(value)
  return "Estimated Trading Price: "..value
end

-- Dissect: Estimated Trading Price
nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.estimated_trading_price, range, value, "Estimated Trading Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Estimated Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.estimated_trading_price, range, value, display)

  return offset + length, value
end

-- Estimated Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_volume = {}

-- Size: Estimated Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_volume.size = 12

-- Display: Estimated Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_volume.display = function(value)
  return "Estimated Trading Volume: "..value
end

-- Dissect: Estimated Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.estimated_trading_volume, range, value, "Estimated Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Estimated Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.estimated_trading_volume, range, value, display)

  return offset + length, value
end

-- Final Ask Bid Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.final_ask_bid_type_code = {}

-- Size: Final Ask Bid Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.final_ask_bid_type_code.size = 1

-- Display: Final Ask Bid Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.final_ask_bid_type_code.display = function(value)
  return "Final Ask Bid Type Code: "..value
end

-- Dissect: Final Ask Bid Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.final_ask_bid_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.final_ask_bid_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.final_ask_bid_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.final_ask_bid_type_code, range, value, display)

  return offset + length, value
end

-- Isin Code
nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code = {}

-- Size: Isin Code
nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.size = 12

-- Display: Isin Code
nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etp3level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session = {}

-- Size: Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etp3level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.size = 11

-- Display: Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etp3level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.display = function(value)
  return "Lower Limit Price On The Single Price Trade In The Off Hours Session: "..value
end

-- Dissect: Lower Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etp3level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session, range, value, "Lower Limit Price On The Single Price Trade In The Off Hours Session: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Lower Limit Price On The Single Price Trade In The Off Hours Session is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume = {}

-- Size: Lp Ask Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume.size = 12

-- Display: Lp Ask Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume.display = function(value)
  return "Lp Ask Level 1 Volume: "..value
end

-- Dissect: Lp Ask Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_ask_level_1_volume, range, value, "Lp Ask Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_ask_level_1_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume = {}

-- Size: Lp Ask Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume.size = 12

-- Display: Lp Ask Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume.display = function(value)
  return "Lp Ask Level 2 Volume: "..value
end

-- Dissect: Lp Ask Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_ask_level_2_volume, range, value, "Lp Ask Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_ask_level_2_volume, range, value, display)

  return offset + length, value
end

-- Lp Ask Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume = {}

-- Size: Lp Ask Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume.size = 12

-- Display: Lp Ask Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume.display = function(value)
  return "Lp Ask Level 3 Volume: "..value
end

-- Dissect: Lp Ask Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_ask_level_3_volume, range, value, "Lp Ask Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Lp Ask Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_ask_level_3_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume = {}

-- Size: Lp Bid Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume.size = 12

-- Display: Lp Bid Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume.display = function(value)
  return "Lp Bid Level 1 Volume: "..value
end

-- Dissect: Lp Bid Level 1 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_bid_level_1_volume, range, value, "Lp Bid Level 1 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 1 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_bid_level_1_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume = {}

-- Size: Lp Bid Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume.size = 12

-- Display: Lp Bid Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume.display = function(value)
  return "Lp Bid Level 2 Volume: "..value
end

-- Dissect: Lp Bid Level 2 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_bid_level_2_volume, range, value, "Lp Bid Level 2 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 2 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_bid_level_2_volume, range, value, display)

  return offset + length, value
end

-- Lp Bid Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume = {}

-- Size: Lp Bid Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume.size = 12

-- Display: Lp Bid Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume.display = function(value)
  return "Lp Bid Level 3 Volume: "..value
end

-- Dissect: Lp Bid Level 3 Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_bid_level_3_volume, range, value, "Lp Bid Level 3 Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Lp Bid Level 3 Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_bid_level_3_volume, range, value, display)

  return offset + length, value
end

-- Lp Holding Quantity
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_holding_quantity = {}

-- Size: Lp Holding Quantity
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_holding_quantity.size = 15

-- Display: Lp Holding Quantity
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_holding_quantity.display = function(value)
  return "Lp Holding Quantity: "..value
end

-- Dissect: Lp Holding Quantity
nextrade_nextrade_etp3level_nxtascii_v2_12.lp_holding_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_holding_quantity.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_holding_quantity, range, value, "Lp Holding Quantity: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Lp Holding Quantity is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_holding_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.lp_holding_quantity, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number = {}

-- Size: Message Sequence Number
nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.size = 8

-- Display: Message Sequence Number
nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.message_sequence_number, range, value, "Message Sequence Number: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Message Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price = {}

-- Size: Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price.size = 11

-- Display: Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price.display = function(value)
  return "Mid Price: "..value
end

-- Dissect: Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.mid_price, range, value, "Mid Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Mid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.mid_price, range, value, display)

  return offset + length, value
end

-- Opening Price
nextrade_nextrade_etp3level_nxtascii_v2_12.opening_price = {}

-- Size: Opening Price
nextrade_nextrade_etp3level_nxtascii_v2_12.opening_price.size = 11

-- Display: Opening Price
nextrade_nextrade_etp3level_nxtascii_v2_12.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
nextrade_nextrade_etp3level_nxtascii_v2_12.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.opening_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.opening_price, range, value, "Opening Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Opening Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Price Change Against Previous Day
nextrade_nextrade_etp3level_nxtascii_v2_12.price_change_against_previous_day = {}

-- Size: Price Change Against Previous Day
nextrade_nextrade_etp3level_nxtascii_v2_12.price_change_against_previous_day.size = 1

-- Display: Price Change Against Previous Day
nextrade_nextrade_etp3level_nxtascii_v2_12.price_change_against_previous_day.display = function(value)
  return "Price Change Against Previous Day: "..value
end

-- Dissect: Price Change Against Previous Day
nextrade_nextrade_etp3level_nxtascii_v2_12.price_change_against_previous_day.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.price_change_against_previous_day.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.price_change_against_previous_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.price_change_against_previous_day, range, value, display)

  return offset + length, value
end

-- Processing Time Of Trading System
nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system = {}

-- Size: Processing Time Of Trading System
nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.size = 12

-- Display: Processing Time Of Trading System
nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.display = function(value)
  if #value < 12 then
    return "Processing Time Of Trading System: "..value
  end

  return "Processing Time Of Trading System: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 12)
end

-- Dissect: Processing Time Of Trading System
nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.processing_time_of_trading_system, range, value, display)

  return offset + length, value
end

-- Session Id
nextrade_nextrade_etp3level_nxtascii_v2_12.session_id = {}

-- Size: Session Id
nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.size = 2

-- Display: Session Id
nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.session_id, range, value, display)

  return offset + length, value
end

-- Start Time Of A Board Event
nextrade_nextrade_etp3level_nxtascii_v2_12.start_time_of_a_board_event = {}

-- Size: Start Time Of A Board Event
nextrade_nextrade_etp3level_nxtascii_v2_12.start_time_of_a_board_event.size = 9

-- Display: Start Time Of A Board Event
nextrade_nextrade_etp3level_nxtascii_v2_12.start_time_of_a_board_event.display = function(value)
  return "Start Time Of A Board Event: "..value
end

-- Dissect: Start Time Of A Board Event
nextrade_nextrade_etp3level_nxtascii_v2_12.start_time_of_a_board_event.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.start_time_of_a_board_event.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.start_time_of_a_board_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.start_time_of_a_board_event, range, value, display)

  return offset + length, value
end

-- The Best Ask
nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_ask = {}

-- Size: The Best Ask
nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_ask.size = 11

-- Display: The Best Ask
nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_ask.display = function(value)
  return "The Best Ask: "..value
end

-- Dissect: The Best Ask
nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_ask.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.the_best_ask, range, value, "The Best Ask: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "The Best Ask is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.the_best_ask, range, value, display)

  return offset + length, value
end

-- The Best Bid
nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_bid = {}

-- Size: The Best Bid
nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_bid.size = 11

-- Display: The Best Bid
nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_bid.display = function(value)
  return "The Best Bid: "..value
end

-- Dissect: The Best Bid
nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_bid.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.the_best_bid, range, value, "The Best Bid: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "The Best Bid is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.the_best_bid, range, value, display)

  return offset + length, value
end

-- The Time Ending Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.the_time_ending_vi = {}

-- Size: The Time Ending Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.the_time_ending_vi.size = 9

-- Display: The Time Ending Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.the_time_ending_vi.display = function(value)
  return "The Time Ending Vi: "..value
end

-- Dissect: The Time Ending Vi
nextrade_nextrade_etp3level_nxtascii_v2_12.the_time_ending_vi.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.the_time_ending_vi.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.the_time_ending_vi.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.the_time_ending_vi, range, value, display)

  return offset + length, value
end

-- Todays High
nextrade_nextrade_etp3level_nxtascii_v2_12.todays_high = {}

-- Size: Todays High
nextrade_nextrade_etp3level_nxtascii_v2_12.todays_high.size = 11

-- Display: Todays High
nextrade_nextrade_etp3level_nxtascii_v2_12.todays_high.display = function(value)
  return "Todays High: "..value
end

-- Dissect: Todays High
nextrade_nextrade_etp3level_nxtascii_v2_12.todays_high.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.todays_high.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.todays_high, range, value, "Todays High: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Todays High is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.todays_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.todays_high, range, value, display)

  return offset + length, value
end

-- Todays Low
nextrade_nextrade_etp3level_nxtascii_v2_12.todays_low = {}

-- Size: Todays Low
nextrade_nextrade_etp3level_nxtascii_v2_12.todays_low.size = 11

-- Display: Todays Low
nextrade_nextrade_etp3level_nxtascii_v2_12.todays_low.display = function(value)
  return "Todays Low: "..value
end

-- Dissect: Todays Low
nextrade_nextrade_etp3level_nxtascii_v2_12.todays_low.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.todays_low.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.todays_low, range, value, "Todays Low: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Todays Low is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.todays_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.todays_low, range, value, display)

  return offset + length, value
end

-- Total Ask Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume = {}

-- Size: Total Ask Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume.size = 12

-- Display: Total Ask Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume.display = function(value)
  return "Total Ask Volume: "..value
end

-- Dissect: Total Ask Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_ask_volume, range, value, "Total Ask Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Total Ask Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_ask_volume, range, value, display)

  return offset + length, value
end

-- Total Ask Volume Level 10
nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume_level_10 = {}

-- Size: Total Ask Volume Level 10
nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume_level_10.size = 12

-- Display: Total Ask Volume Level 10
nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume_level_10.display = function(value)
  return "Total Ask Volume Level 10: "..value
end

-- Dissect: Total Ask Volume Level 10
nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume_level_10.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume_level_10.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_ask_volume_level_10, range, value, "Total Ask Volume Level 10: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Total Ask Volume Level 10 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume_level_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_ask_volume_level_10, range, value, display)

  return offset + length, value
end

-- Total Bid Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume = {}

-- Size: Total Bid Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume.size = 12

-- Display: Total Bid Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume.display = function(value)
  return "Total Bid Volume: "..value
end

-- Dissect: Total Bid Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_bid_volume, range, value, "Total Bid Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Total Bid Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_bid_volume, range, value, display)

  return offset + length, value
end

-- Total Bid Volume Level 10
nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume_level_10 = {}

-- Size: Total Bid Volume Level 10
nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume_level_10.size = 12

-- Display: Total Bid Volume Level 10
nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume_level_10.display = function(value)
  return "Total Bid Volume Level 10: "..value
end

-- Dissect: Total Bid Volume Level 10
nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume_level_10.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume_level_10.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_bid_volume_level_10, range, value, "Total Bid Volume Level 10: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Total Bid Volume Level 10 is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume_level_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_bid_volume_level_10, range, value, display)

  return offset + length, value
end

-- Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price = {}

-- Size: Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size = 12

-- Display: Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.display = function(value)
  return "Total Mid Price Ask Volume Total Ask Volume On Mid Price: "..value
end

-- Dissect: Total Mid Price Ask Volume Total Ask Volume On Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_mid_price_ask_volume_total_ask_volume_on_mid_price, range, value, "Total Mid Price Ask Volume Total Ask Volume On Mid Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Total Mid Price Ask Volume Total Ask Volume On Mid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_mid_price_ask_volume_total_ask_volume_on_mid_price, range, value, display)

  return offset + length, value
end

-- Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price = {}

-- Size: Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size = 12

-- Display: Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.display = function(value)
  return "Total Mid Price Bid Volume Total Bid Volume On Mid Price: "..value
end

-- Dissect: Total Mid Price Bid Volume Total Bid Volume On Mid Price
nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_mid_price_bid_volume_total_bid_volume_on_mid_price, range, value, "Total Mid Price Bid Volume Total Bid Volume On Mid Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Total Mid Price Bid Volume Total Bid Volume On Mid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.total_mid_price_bid_volume_total_bid_volume_on_mid_price, range, value, display)

  return offset + length, value
end

-- TR Code
nextrade_nextrade_etp3level_nxtascii_v2_12.tr_code = {}

-- Size: TR Code
nextrade_nextrade_etp3level_nxtascii_v2_12.tr_code.size = 5

-- Display: TR Code
nextrade_nextrade_etp3level_nxtascii_v2_12.tr_code.display = function(value)
  if value == "I2500" then
    return "TR Code: Polling Data Message (I2500)"
  end
  if value == "B753S" then
    return "TR Code: Securities Quote Mm Lp Quotes Included 3 Level Message (B753S)"
  end
  if value == "G753S" then
    return "TR Code: Securities Order Filled Plus Quote Mm Lp Quotes Included 3 Level Message (G753S)"
  end
  if value == "R153S" then
    return "TR Code: Market Operation Ts Plus Quote Mm Lp Quotes Included 3 Level Message (R153S)"
  end
  if value == "A353S" then
    return "TR Code: Securities Order Filled Message (A353S)"
  end
  if value == "A753S" then
    return "TR Code: Market Operation Ts Message (A753S)"
  end
  if value == "A653S" then
    return "TR Code: Issue Closing Message (A653S)"
  end
  if value == "R853S" then
    return "TR Code: Triggering Removing Vi Message (R853S)"
  end
  if value == "E153S" then
    return "TR Code: Closing Price Trading Quote Message (E153S)"
  end

  return "TR Code: Unknown("..value..")"
end

-- Dissect: TR Code
nextrade_nextrade_etp3level_nxtascii_v2_12.tr_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.tr_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.tr_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.tr_code, range, value, display)

  return offset + length, value
end

-- Trading Halt Reason Code
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_halt_reason_code = {}

-- Size: Trading Halt Reason Code
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_halt_reason_code.size = 3

-- Display: Trading Halt Reason Code
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_halt_reason_code.display = function(value)
  return "Trading Halt Reason Code: "..value
end

-- Dissect: Trading Halt Reason Code
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_halt_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_halt_reason_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding))
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_halt_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.trading_halt_reason_code, range, value, display)

  return offset + length, value
end

-- Trading Price
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_price = {}

-- Size: Trading Price
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_price.size = 11

-- Display: Trading Price
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_price.display = function(value)
  return "Trading Price: "..value
end

-- Dissect: Trading Price
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.trading_price, range, value, "Trading Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Trading Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.trading_price, range, value, display)

  return offset + length, value
end

-- Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_volume = {}

-- Size: Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_volume.size = 10

-- Display: Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_volume.display = function(value)
  return "Trading Volume: "..value
end

-- Dissect: Trading Volume
nextrade_nextrade_etp3level_nxtascii_v2_12.trading_volume.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_volume.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.trading_volume, range, value, "Trading Volume: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Trading Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.trading_volume, range, value, display)

  return offset + length, value
end

-- Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etp3level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session = {}

-- Size: Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etp3level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.size = 11

-- Display: Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etp3level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.display = function(value)
  return "Upper Limit Price On The Single Price Trade In The Off Hours Session: "..value
end

-- Dissect: Upper Limit Price On The Single Price Trade In The Off Hours Session
nextrade_nextrade_etp3level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session, range, value, "Upper Limit Price On The Single Price Trade In The Off Hours Session: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Upper Limit Price On The Single Price Trade In The Off Hours Session is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session, range, value, display)

  return offset + length, value
end

-- Vi Status Code
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_status_code = {}

-- Size: Vi Status Code
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_status_code.size = 1

-- Display: Vi Status Code
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_status_code.display = function(value)
  return "Vi Status Code: "..value
end

-- Dissect: Vi Status Code
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_status_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.vi_status_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.vi_status_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.vi_status_code, range, value, display)

  return offset + length, value
end

-- Vi Triggering Price
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_triggering_price = {}

-- Size: Vi Triggering Price
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_triggering_price.size = 11

-- Display: Vi Triggering Price
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_triggering_price.display = function(value)
  return "Vi Triggering Price: "..value
end

-- Dissect: Vi Triggering Price
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_triggering_price.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.vi_triggering_price.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.vi_triggering_price, range, value, "Vi Triggering Price: Not Applicable")
    item:add_proto_expert_info(nextrade_nextrade_etp3level_nxtascii_v2_12.experts.not_a_number, "Vi Triggering Price is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.vi_triggering_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.vi_triggering_price, range, value, display)

  return offset + length, value
end

-- Vi Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_type_code = {}

-- Size: Vi Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_type_code.size = 1

-- Display: Vi Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_type_code.display = function(value)
  return "Vi Type Code: "..value
end

-- Dissect: Vi Type Code
nextrade_nextrade_etp3level_nxtascii_v2_12.vi_type_code.dissect = function(buffer, offset, packet, parent)
  local length = nextrade_nextrade_etp3level_nxtascii_v2_12.vi_type_code.size
  local range = buffer(offset, length)
  local value = range:string(nextrade_nextrade_etp3level_nxtascii_v2_12.text_encoding)
  local display = nextrade_nextrade_etp3level_nxtascii_v2_12.vi_type_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.vi_type_code, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nextrade Nextrade Etp3Level NxtAscii 2.12
-----------------------------------------------------------------------

-- Closing Price Trading Quote Message
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_trading_quote_message = {}

-- Size: Closing Price Trading Quote Message
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_trading_quote_message.size =
  nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.size

-- Display: Closing Price Trading Quote Message
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_trading_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Price Trading Quote Message
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_trading_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Price Trading Quote Message
nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_trading_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.closing_price_trading_quote_message, buffer(offset, 0))
    local index = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_trading_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_trading_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_trading_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Triggering Removing Vi Message
nextrade_nextrade_etp3level_nxtascii_v2_12.triggering_removing_vi_message = {}

-- Size: Triggering Removing Vi Message
nextrade_nextrade_etp3level_nxtascii_v2_12.triggering_removing_vi_message.size =
  nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.the_time_ending_vi.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.vi_status_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.vi_type_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.vi_triggering_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.size

-- Display: Triggering Removing Vi Message
nextrade_nextrade_etp3level_nxtascii_v2_12.triggering_removing_vi_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Triggering Removing Vi Message
nextrade_nextrade_etp3level_nxtascii_v2_12.triggering_removing_vi_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- The Time Ending Vi: String
  index, the_time_ending_vi = nextrade_nextrade_etp3level_nxtascii_v2_12.the_time_ending_vi.dissect(buffer, index, packet, parent)

  -- Vi Status Code: String
  index, vi_status_code = nextrade_nextrade_etp3level_nxtascii_v2_12.vi_status_code.dissect(buffer, index, packet, parent)

  -- Vi Type Code: String
  index, vi_type_code = nextrade_nextrade_etp3level_nxtascii_v2_12.vi_type_code.dissect(buffer, index, packet, parent)

  -- A Base Price To Trigger Static Vi: Double
  index, a_base_price_to_trigger_static_vi = nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_static_vi.dissect(buffer, index, packet, parent)

  -- A Base Price To Trigger Dynamic Vi: Double
  index, a_base_price_to_trigger_dynamic_vi = nextrade_nextrade_etp3level_nxtascii_v2_12.a_base_price_to_trigger_dynamic_vi.dissect(buffer, index, packet, parent)

  -- Vi Triggering Price: Double
  index, vi_triggering_price = nextrade_nextrade_etp3level_nxtascii_v2_12.vi_triggering_price.dissect(buffer, index, packet, parent)

  -- Disparate Ratio To Trigger Static Vi: Double
  index, disparate_ratio_to_trigger_static_vi = nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_static_vi.dissect(buffer, index, packet, parent)

  -- Disparate Ratio To Trigger Dynamic Vi: Double
  index, disparate_ratio_to_trigger_dynamic_vi = nextrade_nextrade_etp3level_nxtascii_v2_12.disparate_ratio_to_trigger_dynamic_vi.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Triggering Removing Vi Message
nextrade_nextrade_etp3level_nxtascii_v2_12.triggering_removing_vi_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.triggering_removing_vi_message, buffer(offset, 0))
    local index = nextrade_nextrade_etp3level_nxtascii_v2_12.triggering_removing_vi_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etp3level_nxtascii_v2_12.triggering_removing_vi_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etp3level_nxtascii_v2_12.triggering_removing_vi_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Closing Message
nextrade_nextrade_etp3level_nxtascii_v2_12.issue_closing_message = {}

-- Size: Issue Closing Message
nextrade_nextrade_etp3level_nxtascii_v2_12.issue_closing_message.size =
  nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_type_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_weighted_stock_price_average.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_base_price_of_buy_in.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.size

-- Display: Issue Closing Message
nextrade_nextrade_etp3level_nxtascii_v2_12.issue_closing_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Closing Message
nextrade_nextrade_etp3level_nxtascii_v2_12.issue_closing_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Closing Price: Double
  index, closing_price = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Type Code: String
  index, closing_price_type_code = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_type_code.dissect(buffer, index, packet, parent)

  -- Upper Limit Price On The Single Price Trade In The Off Hours Session: Double
  index, upper_limit_price_on_the_single_price_trade_in_the_off_hours_session = nextrade_nextrade_etp3level_nxtascii_v2_12.upper_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect(buffer, index, packet, parent)

  -- Lower Limit Price On The Single Price Trade In The Off Hours Session: Double
  index, lower_limit_price_on_the_single_price_trade_in_the_off_hours_session = nextrade_nextrade_etp3level_nxtascii_v2_12.lower_limit_price_on_the_single_price_trade_in_the_off_hours_session.dissect(buffer, index, packet, parent)

  -- Closing Price Weighted Stock Price Average: Double
  index, closing_price_weighted_stock_price_average = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_weighted_stock_price_average.dissect(buffer, index, packet, parent)

  -- Closing Price Base Price Of Buy In: Double
  index, closing_price_base_price_of_buy_in = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_base_price_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Upper Limit Of Buy In: Double
  index, closing_price_upper_limit_of_buy_in = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_upper_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- Closing Price Lower Limit Of Buy In: Double
  index, closing_price_lower_limit_of_buy_in = nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_lower_limit_of_buy_in.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Issue Closing Message
nextrade_nextrade_etp3level_nxtascii_v2_12.issue_closing_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.issue_closing_message, buffer(offset, 0))
    local index = nextrade_nextrade_etp3level_nxtascii_v2_12.issue_closing_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etp3level_nxtascii_v2_12.issue_closing_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etp3level_nxtascii_v2_12.issue_closing_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Operation Ts Message
nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_message = {}

-- Size: Market Operation Ts Message
nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_message.size =
  nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.start_time_of_a_board_event.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_group_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.trading_halt_reason_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.size

-- Display: Market Operation Ts Message
nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Operation Ts Message
nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = nextrade_nextrade_etp3level_nxtascii_v2_12.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Operation Ts Message
nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.market_operation_ts_message, buffer(offset, 0))
    local index = nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Order Filled Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_message = {}

-- Size: Securities Order Filled Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_message.size =
  nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.price_change_against_previous_day.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_price_change_against_the_previous_day.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.trading_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.trading_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.opening_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.todays_high.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.todays_low.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_value.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.final_ask_bid_type_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_holding_quantity.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_ask.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_bid.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.size

-- Display: Securities Order Filled Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Order Filled Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Price Change Against Previous Day: String
  index, price_change_against_previous_day = nextrade_nextrade_etp3level_nxtascii_v2_12.price_change_against_previous_day.dissect(buffer, index, packet, parent)

  -- A Price Change Against The Previous Day: Double
  index, a_price_change_against_the_previous_day = nextrade_nextrade_etp3level_nxtascii_v2_12.a_price_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = nextrade_nextrade_etp3level_nxtascii_v2_12.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = nextrade_nextrade_etp3level_nxtascii_v2_12.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = nextrade_nextrade_etp3level_nxtascii_v2_12.todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = nextrade_nextrade_etp3level_nxtascii_v2_12.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Lp Holding Quantity: Long
  index, lp_holding_quantity = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_holding_quantity.dissect(buffer, index, packet, parent)

  -- The Best Ask: Double
  index, the_best_ask = nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_ask.dissect(buffer, index, packet, parent)

  -- The Best Bid: Double
  index, the_best_bid = nextrade_nextrade_etp3level_nxtascii_v2_12.the_best_bid.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Order Filled Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.securities_order_filled_message, buffer(offset, 0))
    local index = nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Operation Ts Plus Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_plus_quote_mm_lp_quotes_included_3_level_message = {}

-- Size: Market Operation Ts Plus Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_plus_quote_mm_lp_quotes_included_3_level_message.size =
  nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.start_time_of_a_board_event.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_group_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.trading_halt_reason_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume_level_10.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume_level_10.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.size

-- Display: Market Operation Ts Plus Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_plus_quote_mm_lp_quotes_included_3_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Operation Ts Plus Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_plus_quote_mm_lp_quotes_included_3_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Board Event Id: String
  index, board_event_id = nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_id.dissect(buffer, index, packet, parent)

  -- Start Time Of A Board Event: String
  index, start_time_of_a_board_event = nextrade_nextrade_etp3level_nxtascii_v2_12.start_time_of_a_board_event.dissect(buffer, index, packet, parent)

  -- Board Event Group Code: Int
  index, board_event_group_code = nextrade_nextrade_etp3level_nxtascii_v2_12.board_event_group_code.dissect(buffer, index, packet, parent)

  -- Trading Halt Reason Code: String
  index, trading_halt_reason_code = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_halt_reason_code.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume Level 10: Long
  index, total_ask_volume_level_10 = nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume_level_10.dissect(buffer, index, packet, parent)

  -- Total Bid Volume Level 10: Long
  index, total_bid_volume_level_10 = nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume_level_10.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- Mid Price: Double
  index, mid_price = nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Ask Volume Total Ask Volume On Mid Price: Long
  index, total_mid_price_ask_volume_total_ask_volume_on_mid_price = nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Bid Volume Total Bid Volume On Mid Price: Long
  index, total_mid_price_bid_volume_total_bid_volume_on_mid_price = nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Operation Ts Plus Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_plus_quote_mm_lp_quotes_included_3_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.market_operation_ts_plus_quote_mm_lp_quotes_included_3_level_message, buffer(offset, 0))
    local index = nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_plus_quote_mm_lp_quotes_included_3_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_plus_quote_mm_lp_quotes_included_3_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_plus_quote_mm_lp_quotes_included_3_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Order Filled Plus Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_plus_quote_mm_lp_quotes_included_3_level_message = {}

-- Size: Securities Order Filled Plus Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_plus_quote_mm_lp_quotes_included_3_level_message.size =
  nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.price_change_against_previous_day.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_price_change_against_the_previous_day.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.trading_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.trading_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.opening_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.todays_high.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.todays_low.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_value.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.final_ask_bid_type_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_holding_quantity.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume_level_10.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume_level_10.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.size

-- Display: Securities Order Filled Plus Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_plus_quote_mm_lp_quotes_included_3_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Order Filled Plus Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_plus_quote_mm_lp_quotes_included_3_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Price Change Against Previous Day: String
  index, price_change_against_previous_day = nextrade_nextrade_etp3level_nxtascii_v2_12.price_change_against_previous_day.dissect(buffer, index, packet, parent)

  -- A Price Change Against The Previous Day: Double
  index, a_price_change_against_the_previous_day = nextrade_nextrade_etp3level_nxtascii_v2_12.a_price_change_against_the_previous_day.dissect(buffer, index, packet, parent)

  -- Trading Price: Double
  index, trading_price = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_price.dissect(buffer, index, packet, parent)

  -- Trading Volume: Long
  index, trading_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.trading_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: Double
  index, opening_price = nextrade_nextrade_etp3level_nxtascii_v2_12.opening_price.dissect(buffer, index, packet, parent)

  -- Todays High: Double
  index, todays_high = nextrade_nextrade_etp3level_nxtascii_v2_12.todays_high.dissect(buffer, index, packet, parent)

  -- Todays Low: Double
  index, todays_low = nextrade_nextrade_etp3level_nxtascii_v2_12.todays_low.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Volume: Long
  index, accumulated_trading_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_volume.dissect(buffer, index, packet, parent)

  -- Accumulated Trading Value: FLOAT128
  index, accumulated_trading_value = nextrade_nextrade_etp3level_nxtascii_v2_12.accumulated_trading_value.dissect(buffer, index, packet, parent)

  -- Final Ask Bid Type Code: String
  index, final_ask_bid_type_code = nextrade_nextrade_etp3level_nxtascii_v2_12.final_ask_bid_type_code.dissect(buffer, index, packet, parent)

  -- Lp Holding Quantity: Long
  index, lp_holding_quantity = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_holding_quantity.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume Level 10: Long
  index, total_ask_volume_level_10 = nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume_level_10.dissect(buffer, index, packet, parent)

  -- Total Bid Volume Level 10: Long
  index, total_bid_volume_level_10 = nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume_level_10.dissect(buffer, index, packet, parent)

  -- Mid Price: Double
  index, mid_price = nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Ask Volume Total Ask Volume On Mid Price: Long
  index, total_mid_price_ask_volume_total_ask_volume_on_mid_price = nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Bid Volume Total Bid Volume On Mid Price: Long
  index, total_mid_price_bid_volume_total_bid_volume_on_mid_price = nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Order Filled Plus Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_plus_quote_mm_lp_quotes_included_3_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.securities_order_filled_plus_quote_mm_lp_quotes_included_3_level_message, buffer(offset, 0))
    local index = nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_plus_quote_mm_lp_quotes_included_3_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_plus_quote_mm_lp_quotes_included_3_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_plus_quote_mm_lp_quotes_included_3_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_3_level_message = {}

-- Size: Securities Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_3_level_message.size =
  nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_volume.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.size

-- Display: Securities Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_3_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_3_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Sequence Number: Int
  index, message_sequence_number = nextrade_nextrade_etp3level_nxtascii_v2_12.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Board Id: String
  index, board_id = nextrade_nextrade_etp3level_nxtascii_v2_12.board_id.dissect(buffer, index, packet, parent)

  -- Session Id: String
  index, session_id = nextrade_nextrade_etp3level_nxtascii_v2_12.session_id.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = nextrade_nextrade_etp3level_nxtascii_v2_12.isin_code.dissect(buffer, index, packet, parent)

  -- A Designated Number For An Issue From Krx: Int
  index, a_designated_number_for_an_issue_from_krx = nextrade_nextrade_etp3level_nxtascii_v2_12.a_designated_number_for_an_issue_from_krx.dissect(buffer, index, packet, parent)

  -- Processing Time Of Trading System: String
  index, processing_time_of_trading_system = nextrade_nextrade_etp3level_nxtascii_v2_12.processing_time_of_trading_system.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Price: Double
  index, ask_level_1_price = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_price.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Price: Double
  index, bid_level_1_price = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_price.dissect(buffer, index, packet, parent)

  -- Ask Level 1 Volume: Long
  index, ask_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 1 Volume: Long
  index, bid_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 1 Volume: Long
  index, lp_ask_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_1_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 1 Volume: Long
  index, lp_bid_level_1_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_1_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Price: Double
  index, ask_level_2_price = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_price.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Price: Double
  index, bid_level_2_price = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_price.dissect(buffer, index, packet, parent)

  -- Ask Level 2 Volume: Long
  index, ask_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 2 Volume: Long
  index, bid_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 2 Volume: Long
  index, lp_ask_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_2_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 2 Volume: Long
  index, lp_bid_level_2_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_2_volume.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Price: Double
  index, ask_level_3_price = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_price.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Price: Double
  index, bid_level_3_price = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_price.dissect(buffer, index, packet, parent)

  -- Ask Level 3 Volume: Long
  index, ask_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Bid Level 3 Volume: Long
  index, bid_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Ask Level 3 Volume: Long
  index, lp_ask_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_ask_level_3_volume.dissect(buffer, index, packet, parent)

  -- Lp Bid Level 3 Volume: Long
  index, lp_bid_level_3_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.lp_bid_level_3_volume.dissect(buffer, index, packet, parent)

  -- Total Ask Volume: Long
  index, total_ask_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.total_ask_volume.dissect(buffer, index, packet, parent)

  -- Total Bid Volume: Long
  index, total_bid_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.total_bid_volume.dissect(buffer, index, packet, parent)

  -- Estimated Trading Price: Double
  index, estimated_trading_price = nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_price.dissect(buffer, index, packet, parent)

  -- Estimated Trading Volume: Long
  index, estimated_trading_volume = nextrade_nextrade_etp3level_nxtascii_v2_12.estimated_trading_volume.dissect(buffer, index, packet, parent)

  -- Mid Price: Double
  index, mid_price = nextrade_nextrade_etp3level_nxtascii_v2_12.mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Ask Volume Total Ask Volume On Mid Price: Long
  index, total_mid_price_ask_volume_total_ask_volume_on_mid_price = nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_ask_volume_total_ask_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- Total Mid Price Bid Volume Total Bid Volume On Mid Price: Long
  index, total_mid_price_bid_volume_total_bid_volume_on_mid_price = nextrade_nextrade_etp3level_nxtascii_v2_12.total_mid_price_bid_volume_total_bid_volume_on_mid_price.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Quote Mm Lp Quotes Included 3 Level Message
nextrade_nextrade_etp3level_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_3_level_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.securities_quote_mm_lp_quotes_included_3_level_message, buffer(offset, 0))
    local index = nextrade_nextrade_etp3level_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_3_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etp3level_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_3_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etp3level_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_3_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Polling Data Message
nextrade_nextrade_etp3level_nxtascii_v2_12.polling_data_message = {}

-- Size: Polling Data Message
nextrade_nextrade_etp3level_nxtascii_v2_12.polling_data_message.size =
  nextrade_nextrade_etp3level_nxtascii_v2_12.current_time_1_minute_interval.size + 
  nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.size

-- Display: Polling Data Message
nextrade_nextrade_etp3level_nxtascii_v2_12.polling_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Polling Data Message
nextrade_nextrade_etp3level_nxtascii_v2_12.polling_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Time 1 Minute Interval: String
  index, current_time_1_minute_interval = nextrade_nextrade_etp3level_nxtascii_v2_12.current_time_1_minute_interval.dissect(buffer, index, packet, parent)

  -- End Keyword: String
  index, end_keyword = nextrade_nextrade_etp3level_nxtascii_v2_12.end_keyword.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Polling Data Message
nextrade_nextrade_etp3level_nxtascii_v2_12.polling_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12.fields.polling_data_message, buffer(offset, 0))
    local index = nextrade_nextrade_etp3level_nxtascii_v2_12.polling_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nextrade_nextrade_etp3level_nxtascii_v2_12.polling_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nextrade_nextrade_etp3level_nxtascii_v2_12.polling_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nextrade_nextrade_etp3level_nxtascii_v2_12.payload = {}

-- Dissect: Payload
nextrade_nextrade_etp3level_nxtascii_v2_12.payload.dissect = function(buffer, offset, packet, parent, tr_code)
  -- Dissect Polling Data Message
  if tr_code == "I2500" then
    return nextrade_nextrade_etp3level_nxtascii_v2_12.polling_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Quote Mm Lp Quotes Included 3 Level Message
  if tr_code == "B753S" then
    return nextrade_nextrade_etp3level_nxtascii_v2_12.securities_quote_mm_lp_quotes_included_3_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Order Filled Plus Quote Mm Lp Quotes Included 3 Level Message
  if tr_code == "G753S" then
    return nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_plus_quote_mm_lp_quotes_included_3_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Plus Quote Mm Lp Quotes Included 3 Level Message
  if tr_code == "R153S" then
    return nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_plus_quote_mm_lp_quotes_included_3_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Securities Order Filled Message
  if tr_code == "A353S" then
    return nextrade_nextrade_etp3level_nxtascii_v2_12.securities_order_filled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Operation Ts Message
  if tr_code == "A753S" then
    return nextrade_nextrade_etp3level_nxtascii_v2_12.market_operation_ts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Issue Closing Message
  if tr_code == "A653S" then
    return nextrade_nextrade_etp3level_nxtascii_v2_12.issue_closing_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Triggering Removing Vi Message
  if tr_code == "R853S" then
    return nextrade_nextrade_etp3level_nxtascii_v2_12.triggering_removing_vi_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing Price Trading Quote Message
  if tr_code == "E153S" then
    return nextrade_nextrade_etp3level_nxtascii_v2_12.closing_price_trading_quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
nextrade_nextrade_etp3level_nxtascii_v2_12.packet = {}

-- Verify required size of Udp packet
nextrade_nextrade_etp3level_nxtascii_v2_12.packet.requiredsize = function(buffer)
  return buffer:len() >= nextrade_nextrade_etp3level_nxtascii_v2_12.tr_code.size
end

-- Dissect Packet
nextrade_nextrade_etp3level_nxtascii_v2_12.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- TR Code: char
    index, tr_code = nextrade_nextrade_etp3level_nxtascii_v2_12.tr_code.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 9 branches
    index = nextrade_nextrade_etp3level_nxtascii_v2_12.payload.dissect(buffer, index, packet, parent, tr_code)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nextrade_nextrade_etp3level_nxtascii_v2_12.init()
end

-- Dissector for Nextrade Nextrade Etp3Level NxtAscii 2.12
function omi_nextrade_nextrade_etp3level_nxtascii_v2_12.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nextrade_nextrade_etp3level_nxtascii_v2_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_nextrade_nextrade_etp3level_nxtascii_v2_12, buffer(), omi_nextrade_nextrade_etp3level_nxtascii_v2_12.description, "("..buffer:len().." Bytes)")
  return nextrade_nextrade_etp3level_nxtascii_v2_12.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nextrade Nextrade Etp3Level NxtAscii 2.12 (Udp)
local function omi_nextrade_nextrade_etp3level_nxtascii_v2_12_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nextrade_nextrade_etp3level_nxtascii_v2_12.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nextrade_nextrade_etp3level_nxtascii_v2_12
  omi_nextrade_nextrade_etp3level_nxtascii_v2_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nextrade Nextrade Etp3Level NxtAscii 2.12
omi_nextrade_nextrade_etp3level_nxtascii_v2_12:register_heuristic("udp", omi_nextrade_nextrade_etp3level_nxtascii_v2_12_udp_heuristic)

-- Register Nextrade Nextrade Etp3Level NxtAscii 2.12 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nextrade_nextrade_etp3level_nxtascii_v2_12)

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
