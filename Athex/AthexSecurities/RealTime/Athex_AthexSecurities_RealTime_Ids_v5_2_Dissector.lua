-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Athex AthexSecurities RealTime Ids 5.2 Protocol
local omi_athex_athexsecurities_realtime_ids_v5_2 = Proto("Omi.Athex.AthexSecurities.RealTime.Ids.v5.2", "Athex AthexSecurities RealTime Ids 5.2")

-- Protocol table
local athex_athexsecurities_realtime_ids_v5_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Athex AthexSecurities RealTime Ids 5.2 Fields
omi_athex_athexsecurities_realtime_ids_v5_2.fields.accrued_interest = ProtoField.new("Accrued Interest", "athex.athexsecurities.realtime.ids.v5.2.accruedinterest", ftypes.DOUBLE, nil, nil, nil, "For bonds")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.ask_orders = ProtoField.new("Ask Orders", "athex.athexsecurities.realtime.ids.v5.2.askorders", ftypes.UINT24, nil, nil, nil, "The number of orders composing the current ask level")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.ask_price = ProtoField.new("Ask Price", "athex.athexsecurities.realtime.ids.v5.2.askprice", ftypes.DOUBLE, nil, nil, nil, "The best Ask price")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.ask_size = ProtoField.new("Ask Size", "athex.athexsecurities.realtime.ids.v5.2.asksize", ftypes.DOUBLE, nil, nil, nil, "The best Ask volume")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.bid_orders = ProtoField.new("Bid Orders", "athex.athexsecurities.realtime.ids.v5.2.bidorders", ftypes.UINT24, nil, nil, nil, "The number of orders composing the current bid level")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.bid_price = ProtoField.new("Bid Price", "athex.athexsecurities.realtime.ids.v5.2.bidprice", ftypes.DOUBLE, nil, nil, nil, "The best Bid price")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.bid_size = ProtoField.new("Bid Size", "athex.athexsecurities.realtime.ids.v5.2.bidsize", ftypes.DOUBLE, nil, nil, nil, "The best Bid volume")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.board_id = ProtoField.new("Board Id", "athex.athexsecurities.realtime.ids.v5.2.boardid", ftypes.STRING, nil, nil, nil, "The trading board under which the instrument is being traded")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_algo_flag = ProtoField.new("Buy Algo Flag", "athex.athexsecurities.realtime.ids.v5.2.buyalgoflag", ftypes.STRING, nil, nil, nil, "Algorithmic transaction flag of the buy side. Y is flag on and any other value is flag off")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_order_date = ProtoField.new("Buy Order Date", "athex.athexsecurities.realtime.ids.v5.2.buyorderdate", ftypes.STRING, nil, nil, nil, "The date the buy side order was entered into the trading system")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_order_number = ProtoField.new("Buy Order Number", "athex.athexsecurities.realtime.ids.v5.2.buyordernumber", ftypes.UINT32, nil, nil, nil, "The sequence number of the buy side order being matched")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_order_type = ProtoField.new("Buy Order Type", "athex.athexsecurities.realtime.ids.v5.2.buyordertype", ftypes.STRING, nil, nil, nil, "The type of the buy side order")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_waiver_indicator = ProtoField.new("Buy Waiver Indicator", "athex.athexsecurities.realtime.ids.v5.2.buywaiverindicator", ftypes.STRING, nil, nil, nil, "Waiver flags for the buy side, a bit mask spelled as four numeric characters")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.cancelled_trade_price = ProtoField.new("Cancelled Trade Price", "athex.athexsecurities.realtime.ids.v5.2.cancelledtradeprice", ftypes.DOUBLE, nil, nil, nil, "The price of the cancelled trade")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.cancelled_volume = ProtoField.new("Cancelled Volume", "athex.athexsecurities.realtime.ids.v5.2.cancelledvolume", ftypes.DOUBLE, nil, nil, nil, "The volume of the cancelled trade")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.ceiling_price = ProtoField.new("Ceiling Price", "athex.athexsecurities.realtime.ids.v5.2.ceilingprice", ftypes.DOUBLE, nil, nil, nil, "The Instrument's ceiling price")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.closing = ProtoField.new("Closing", "athex.athexsecurities.realtime.ids.v5.2.closing", ftypes.DOUBLE, nil, nil, nil, "The Instrument's closing price, as Oasis calculated it")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.closing_price = ProtoField.new("Closing Price", "athex.athexsecurities.realtime.ids.v5.2.closingprice", ftypes.DOUBLE, nil, nil, nil, "The Instrument's closing price")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.condition_volume = ProtoField.new("Condition Volume", "athex.athexsecurities.realtime.ids.v5.2.conditionvolume", ftypes.DOUBLE, nil, nil, nil, "The volume pertinent to a special condition of type M or O")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.dupl_flag = ProtoField.new("Dupl Flag", "athex.athexsecurities.realtime.ids.v5.2.duplflag", ftypes.STRING, nil, nil, nil, "Duplicative Trade reports flag. Y is flag on and any other value is flag off")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.english_notification_text = ProtoField.new("English Notification Text", "athex.athexsecurities.realtime.ids.v5.2.englishnotificationtext", ftypes.STRING, nil, nil, nil, "The notification Text written in the English language")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.etx = ProtoField.new("Etx", "athex.athexsecurities.realtime.ids.v5.2.etx", ftypes.INT8, nil, nil, nil, "Signals the end of the packet's text")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.floor_price = ProtoField.new("Floor Price", "athex.athexsecurities.realtime.ids.v5.2.floorprice", ftypes.DOUBLE, nil, nil, nil, "The Instrument's floor price")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.free_text = ProtoField.new("Free Text", "athex.athexsecurities.realtime.ids.v5.2.freetext", ftypes.STRING, nil, nil, nil, "The actual message, of any size between one and four hundred characters, written in English")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.halt_suspend_reason = ProtoField.new("Halt Suspend Reason", "athex.athexsecurities.realtime.ids.v5.2.haltsuspendreason", ftypes.STRING, nil, nil, nil, "The Reason for Halting or Suspending the Instrument")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.high = ProtoField.new("High", "athex.athexsecurities.realtime.ids.v5.2.high", ftypes.DOUBLE, nil, nil, nil, "The highest price with which the given Instrument was traded, during the trading day")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.ilqd = ProtoField.new("Ilqd", "athex.athexsecurities.realtime.ids.v5.2.ilqd", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x00000020, "Illiquid instrument waiver")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.index_price = ProtoField.new("Index Price", "athex.athexsecurities.realtime.ids.v5.2.indexprice", ftypes.DOUBLE, nil, nil, nil, "The calculated value of the Index")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.instrument_status = ProtoField.new("Instrument Status", "athex.athexsecurities.realtime.ids.v5.2.instrumentstatus", ftypes.STRING, nil, nil, nil, "The Instrument's status")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.last = ProtoField.new("Last", "athex.athexsecurities.realtime.ids.v5.2.last", ftypes.DOUBLE, nil, nil, nil, "The last price with which the given Instrument was traded, during the trading day")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.last_order_update_date = ProtoField.new("Last Order Update Date", "athex.athexsecurities.realtime.ids.v5.2.lastorderupdatedate", ftypes.STRING, nil, nil, nil, "The date of the last order update or modification")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.local_notification_text = ProtoField.new("Local Notification Text", "athex.athexsecurities.realtime.ids.v5.2.localnotificationtext", ftypes.STRING, nil, nil, nil, "The notification Text written in the Local language")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.low = ProtoField.new("Low", "athex.athexsecurities.realtime.ids.v5.2.low", ftypes.DOUBLE, nil, nil, nil, "The lowest price with which the given Instrument was traded, during the trading day")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.lrc = ProtoField.new("Lrc", "athex.athexsecurities.realtime.ids.v5.2.lrc", ftypes.INT8, nil, nil, nil, "Longitudinal Redundancy Check character signalling the packet's end, the exclusive or of all message bytes from the header up to and including the Etx")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.market_id = ProtoField.new("Market Id", "athex.athexsecurities.realtime.ids.v5.2.marketid", ftypes.STRING, nil, nil, nil, "The Market's ID")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.market_status = ProtoField.new("Market Status", "athex.athexsecurities.realtime.ids.v5.2.marketstatus", ftypes.STRING, nil, nil, nil, "The Market status")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.matched_volume = ProtoField.new("Matched Volume", "athex.athexsecurities.realtime.ids.v5.2.matchedvolume", ftypes.DOUBLE, nil, nil, nil, "The portion of the order's Volume that has been matched thus far")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.message_category = ProtoField.new("Message Category", "athex.athexsecurities.realtime.ids.v5.2.messagecategory", ftypes.STRING, nil, nil, nil, "Identifies the category of the transmitted message, and selects the Message Text that follows the header")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "athex.athexsecurities.realtime.ids.v5.2.messagesequencenumber", ftypes.UINT24, nil, nil, nil, "Sequence number of the packet. The first message sent has a sequence number of zero and every message thereafter increments it by one, except a Line Verification control message, which repeats the number of the last message sent. A vendor asks the Ids to retransmit by naming the first and last sequence numbers to send, and a retransmitted packet carries its original number")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.message_subcategory = ProtoField.new("Message Subcategory", "athex.athexsecurities.realtime.ids.v5.2.messagesubcategory", ftypes.STRING, nil, nil, nil, "Identifies the financial product whose information is conveyed and imposes a second level of categorization upon it. The Ids sends one space when the packet's category is not directly related to a specific financial product")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.message_type = ProtoField.new("Message Type", "athex.athexsecurities.realtime.ids.v5.2.messagetype", ftypes.STRING, nil, nil, nil, "The Category's type")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.nliq = ProtoField.new("Nliq", "athex.athexsecurities.realtime.ids.v5.2.nliq", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x00000002, "Negotiated transaction in liquid instruments waiver")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.notification_headline_in_english = ProtoField.new("Notification Headline In English", "athex.athexsecurities.realtime.ids.v5.2.notificationheadlineinenglish", ftypes.STRING, nil, nil, nil, "The headline of the notification in the English language")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.notification_headline_in_local = ProtoField.new("Notification Headline In Local", "athex.athexsecurities.realtime.ids.v5.2.notificationheadlineinlocal", ftypes.STRING, nil, nil, nil, "The headline of the notification in the Local language")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.notional_amount = ProtoField.new("Notional Amount", "athex.athexsecurities.realtime.ids.v5.2.notionalamount", ftypes.DOUBLE, nil, nil, nil, "Trade value")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.oilq = ProtoField.new("Oilq", "athex.athexsecurities.realtime.ids.v5.2.oilq", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x00000004, "Negotiated transaction in illiquid instruments waiver")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.open_interest = ProtoField.new("Open Interest", "athex.athexsecurities.realtime.ids.v5.2.openinterest", ftypes.UINT32, nil, nil, nil, "Total number of outstanding contracts")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.opening_price = ProtoField.new("Opening Price", "athex.athexsecurities.realtime.ids.v5.2.openingprice", ftypes.DOUBLE, nil, nil, nil, "The Instrument's opening price")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_entry_date = ProtoField.new("Order Entry Date", "athex.athexsecurities.realtime.ids.v5.2.orderentrydate", ftypes.STRING, nil, nil, nil, "The date the order entered the trading system")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_lifetime = ProtoField.new("Order Lifetime", "athex.athexsecurities.realtime.ids.v5.2.orderlifetime", ftypes.STRING, nil, nil, nil, "The order's lifetime")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_number = ProtoField.new("Order Number", "athex.athexsecurities.realtime.ids.v5.2.ordernumber", ftypes.UINT32, nil, nil, nil, "The order's sequence number")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_release_date = ProtoField.new("Order Release Date", "athex.athexsecurities.realtime.ids.v5.2.orderreleasedate", ftypes.STRING, nil, nil, nil, "The date the order was released to the Order Book, or for orders that undergo time priority changes the date when that change occurs")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_release_time = ProtoField.new("Order Release Time", "athex.athexsecurities.realtime.ids.v5.2.orderreleasetime", ftypes.STRING, nil, nil, nil, "The time the order was released to the Order Book, or for orders that undergo time priority changes the time at which that change occurs")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_status = ProtoField.new("Order Status", "athex.athexsecurities.realtime.ids.v5.2.orderstatus", ftypes.STRING, nil, nil, nil, "The status of the order")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_type = ProtoField.new("Order Type", "athex.athexsecurities.realtime.ids.v5.2.ordertype", ftypes.STRING, nil, nil, nil, "The type of the order")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.original_price_type = ProtoField.new("Original Price Type", "athex.athexsecurities.realtime.ids.v5.2.originalpricetype", ftypes.STRING, nil, nil, nil, "The original price type")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.phase_id = ProtoField.new("Phase Id", "athex.athexsecurities.realtime.ids.v5.2.phaseid", ftypes.STRING, nil, nil, nil, "The Instrument's trading phase")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.pric = ProtoField.new("Pric", "athex.athexsecurities.realtime.ids.v5.2.pric", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x00000008, "Negotiated transaction subject to conditions other than the current market price waiver")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.price = ProtoField.new("Price", "athex.athexsecurities.realtime.ids.v5.2.price", ftypes.DOUBLE, nil, nil, nil, "The trade's price")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.price_flag = ProtoField.new("Price Flag", "athex.athexsecurities.realtime.ids.v5.2.priceflag", ftypes.STRING, nil, nil, nil, "Which of the three prices the message carries")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.publication_timestamp = ProtoField.new("Publication Timestamp", "athex.athexsecurities.realtime.ids.v5.2.publicationtimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Local time the packet was created in the Ids subsystem, as YYYYMMDDHHMMSSdddddd to the microsecond")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.publication_timestamp_utc = ProtoField.new("Publication Timestamp", "athex.athexsecurities.realtime.ids.v5.2.publicationtimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Local time the packet was created in the Ids subsystem, as YYYYMMDDHHMMSSdddddd to the microsecond")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.quote_level = ProtoField.new("Quote Level", "athex.athexsecurities.realtime.ids.v5.2.quotelevel", ftypes.STRING, nil, nil, nil, "One Bid and Ask level of the given instrument, repeated as many times as the Quote Levels field states")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.quote_levels = ProtoField.new("Quote Levels", "athex.athexsecurities.realtime.ids.v5.2.quotelevels", ftypes.UINT16, nil, nil, nil, "The number of Bid and Ask levels contained in this message for the given instrument")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.rfpt = ProtoField.new("Rfpt", "athex.athexsecurities.realtime.ids.v5.2.rfpt", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x00000001, "Reference price waiver")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.sdiv_flag = ProtoField.new("Sdiv Flag", "athex.athexsecurities.realtime.ids.v5.2.sdivflag", ftypes.STRING, nil, nil, nil, "Special Dividend transaction flag. Y is flag on and any other value is flag off")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_algo_flag = ProtoField.new("Sell Algo Flag", "athex.athexsecurities.realtime.ids.v5.2.sellalgoflag", ftypes.STRING, nil, nil, nil, "Algorithmic transaction flag of the sell side. Y is flag on and any other value is flag off")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_order_date = ProtoField.new("Sell Order Date", "athex.athexsecurities.realtime.ids.v5.2.sellorderdate", ftypes.STRING, nil, nil, nil, "The date the sell side order was entered into the trading system")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_order_number = ProtoField.new("Sell Order Number", "athex.athexsecurities.realtime.ids.v5.2.sellordernumber", ftypes.UINT32, nil, nil, nil, "The sequence number of the sell side order being matched")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_order_type = ProtoField.new("Sell Order Type", "athex.athexsecurities.realtime.ids.v5.2.sellordertype", ftypes.STRING, nil, nil, nil, "The type of the sell side order")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_waiver_indicator = ProtoField.new("Sell Waiver Indicator", "athex.athexsecurities.realtime.ids.v5.2.sellwaiverindicator", ftypes.STRING, nil, nil, nil, "Waiver flags for the sell side, a bit mask spelled as four numeric characters")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.side = ProtoField.new("Side", "athex.athexsecurities.realtime.ids.v5.2.side", ftypes.STRING, nil, nil, nil, "The order's side")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.size = ProtoField.new("Size", "athex.athexsecurities.realtime.ids.v5.2.size", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x00000010, "Above specified size waiver")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.soh = ProtoField.new("Soh", "athex.athexsecurities.realtime.ids.v5.2.soh", ftypes.INT8, nil, nil, nil, "First character of every message packet, signalling the beginning of the packet")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.special_conditions = ProtoField.new("Special Conditions", "athex.athexsecurities.realtime.ids.v5.2.specialconditions", ftypes.STRING, nil, nil, nil, "The condition of the order if available")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.start_of_day_price = ProtoField.new("Start Of Day Price", "athex.athexsecurities.realtime.ids.v5.2.startofdayprice", ftypes.DOUBLE, nil, nil, nil, "Usually the previous day's closing price adjusted, if necessary, from various corporate actions")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.symbol = ProtoField.new("Symbol", "athex.athexsecurities.realtime.ids.v5.2.symbol", ftypes.STRING, nil, nil, nil, "The Instrument's fifteen character symbol")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.text_size_in_english = ProtoField.new("Text Size In English", "athex.athexsecurities.realtime.ids.v5.2.textsizeinenglish", ftypes.UINT24, nil, nil, nil, "The size of the notification Text written in the English language")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.text_size_in_local = ProtoField.new("Text Size In Local", "athex.athexsecurities.realtime.ids.v5.2.textsizeinlocal", ftypes.UINT24, nil, nil, nil, "The size of the notification Text written in the Local language")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.time_stamp = ProtoField.new("Time Stamp", "athex.athexsecurities.realtime.ids.v5.2.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the message was created in the Trading System, as local time to the microsecond")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.time_stamp_utc = ProtoField.new("Time Stamp", "athex.athexsecurities.realtime.ids.v5.2.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the message was created in the Trading System, as local time to the microsecond")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.total_value = ProtoField.new("Total Value", "athex.athexsecurities.realtime.ids.v5.2.totalvalue", ftypes.DOUBLE, nil, nil, nil, "The total value traded in the given Market for the given Instrument, during the trading day")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.total_volume = ProtoField.new("Total Volume", "athex.athexsecurities.realtime.ids.v5.2.totalvolume", ftypes.DOUBLE, nil, nil, nil, "The total number of stocks or contracts traded up to that point")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.trade_number = ProtoField.new("Trade Number", "athex.athexsecurities.realtime.ids.v5.2.tradenumber", ftypes.UINT24, nil, nil, nil, "Unique for the trading day")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.trade_source = ProtoField.new("Trade Source", "athex.athexsecurities.realtime.ids.v5.2.tradesource", ftypes.STRING, nil, nil, nil, "The system the trade came from")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.trade_type = ProtoField.new("Trade Type", "athex.athexsecurities.realtime.ids.v5.2.tradetype", ftypes.STRING, nil, nil, nil, "Whether the trade is new or an edit of one already reported")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.vendor_identifier = ProtoField.new("Vendor Identifier", "athex.athexsecurities.realtime.ids.v5.2.vendoridentifier", ftypes.STRING, nil, nil, nil, "Identifies the Data Vendor the packet is intended for: two spaces for every vendor, which is the value of every packet sent during the trading session, TV for a test vendor, or a vendor code, which the Ids sends only during retransmission")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.venue_id = ProtoField.new("Venue ID", "athex.athexsecurities.realtime.ids.v5.2.venueid", ftypes.STRING, nil, nil, nil, "Market Identification Code of the Exchange or Regulated Market publishing the packet's information, as Iso 10383 defines it. Control message packets such as Line Verification carry four spaces")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.volume = ProtoField.new("Volume", "athex.athexsecurities.realtime.ids.v5.2.volume", ftypes.DOUBLE, nil, nil, nil, "The trade's volume")

-- Athex AthexSecurities RealTime Ids 5.2 Framing
omi_athex_athexsecurities_realtime_ids_v5_2.fields.message_header = ProtoField.new("Message Header", "athex.athexsecurities.realtime.ids.v5.2.messageheader", ftypes.STRING, nil, nil, nil, "Thirty five character header succeeding the Soh character of every message packet")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.packet = ProtoField.new("Packet", "athex.athexsecurities.realtime.ids.v5.2.packet", ftypes.STRING, nil, nil, nil, "Athex Ids Tcp Packet")

-- Athex AthexSecurities RealTime 5.2 Application Messages
omi_athex_athexsecurities_realtime_ids_v5_2.fields.administrative_message = ProtoField.new("Administrative Message", "athex.athexsecurities.realtime.ids.v5.2.administrativemessage", ftypes.STRING, nil, nil, nil, "General information that may be of value to the investors, disseminated whenever the exchange decides")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.cancelled_order_message = ProtoField.new("Cancelled Order Message", "athex.athexsecurities.realtime.ids.v5.2.cancelledordermessage", ftypes.STRING, nil, nil, nil, "Transmitted whenever an order is cancelled. It is not transmitted for Combinations")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.cancelled_trade_message = ProtoField.new("Cancelled Trade Message", "athex.athexsecurities.realtime.ids.v5.2.cancelledtrademessage", ftypes.STRING, nil, nil, nil, "Transmitted when an instrument trade cancellation occurs in the trading platform or clearing system")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.closing_price_message = ProtoField.new("Closing Price Message", "athex.athexsecurities.realtime.ids.v5.2.closingpricemessage", ftypes.STRING, nil, nil, nil, "Transmitted for every instrument whose closing price has been calculated by the trading platform, and again whenever the trading platform recalculates one")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.control_message = ProtoField.new("Control Message", "athex.athexsecurities.realtime.ids.v5.2.controlmessage", ftypes.STRING, nil, nil, nil, "System specific information the Ids provides to Data Vendors, of one of four types")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.end_of_day_control_message = ProtoField.new("End Of Day Control Message", "athex.athexsecurities.realtime.ids.v5.2.endofdaycontrolmessage", ftypes.BYTES, nil, nil, nil, "Last message transmitted to the Data Vendors, signalling the end of the trading day and that the Ids has concluded its operation")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.exchange_notifications_message = ProtoField.new("Exchange Notifications Message", "athex.athexsecurities.realtime.ids.v5.2.exchangenotificationsmessage", ftypes.STRING, nil, nil, nil, "Transmitted with no predefined triggering event")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.high_low_limit_modification_message = ProtoField.new("High Low Limit Modification Message", "athex.athexsecurities.realtime.ids.v5.2.highlowlimitmodificationmessage", ftypes.STRING, nil, nil, nil, "Transmitted at the beginning of the trading day, and whenever the static High and Low limits for the given instrument change")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.index_message = ProtoField.new("Index Message", "athex.athexsecurities.realtime.ids.v5.2.indexmessage", ftypes.STRING, nil, nil, nil, "Transmitted every time the trading platform calculates the price of a given index")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.instrument_state_message = ProtoField.new("Instrument State Message", "athex.athexsecurities.realtime.ids.v5.2.instrumentstatemessage", ftypes.STRING, nil, nil, nil, "Transmitted at the beginning of the trading day, and whenever the instrument changes its trading phase or its status")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.instrument_summary_message = ProtoField.new("Instrument Summary Message", "athex.athexsecurities.realtime.ids.v5.2.instrumentsummarymessage", ftypes.STRING, nil, nil, nil, "Transmitted for each instrument right after the corresponding market status changes to End of Day")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.line_verification_control_message = ProtoField.new("Line Verification Control Message", "athex.athexsecurities.realtime.ids.v5.2.lineverificationcontrolmessage", ftypes.BYTES, nil, nil, nil, "Transmitted on a minute basis while the data dissemination line remains idle, verifying to the Data Vendors that the Ids continues uninterrupted. It does not increment the Sequence Number and is excluded from retransmission")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.market_status_message = ProtoField.new("Market Status Message", "athex.athexsecurities.realtime.ids.v5.2.marketstatusmessage", ftypes.STRING, nil, nil, nil, "Transmitted whenever the market changes its status")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_message = ProtoField.new("Order Message", "athex.athexsecurities.realtime.ids.v5.2.ordermessage", ftypes.STRING, nil, nil, nil, "Transmitted at the beginning of the trading session for an order whose lifetime spans multiple days, when a new order is entered in the trading platform, and when an already placed order is changed. It is not transmitted for Combinations")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.projected_auction_auction_open_projected_close_price_message = ProtoField.new("Projected Auction Auction Open Projected Close Price Message", "athex.athexsecurities.realtime.ids.v5.2.projectedauctionauctionopenprojectedclosepricemessage", ftypes.STRING, nil, nil, nil, "Transmitted whenever the trading platform calculates a Projected Auction, Auction Open or Projected Close price for the instrument")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.quote_message = ProtoField.new("Quote Message", "athex.athexsecurities.realtime.ids.v5.2.quotemessage", ftypes.STRING, nil, nil, nil, "Transmitted when at least one side of the supported Quote levels for the given instrument becomes changed. The Ids will not send a Quote level that contains no data")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.start_of_day_control_message = ProtoField.new("Start Of Day Control Message", "athex.athexsecurities.realtime.ids.v5.2.startofdaycontrolmessage", ftypes.BYTES, nil, nil, nil, "First message transmitted to the Data Vendors, signalling the start of the trading day and that the Ids is ready to process information packets sent by the trading platform")
omi_athex_athexsecurities_realtime_ids_v5_2.fields.trade_message = ProtoField.new("Trade Message", "athex.athexsecurities.realtime.ids.v5.2.trademessage", ftypes.STRING, nil, nil, nil, "Transmitted when an instrument trade occurs in the trading platform or the clearing system")

-- Athex AthexSecurities RealTime Ids 5.2 Generated Fields
omi_athex_athexsecurities_realtime_ids_v5_2.fields.quote_level_index = ProtoField.new("Quote Level Index", "athex.athexsecurities.realtime.ids.v5.2.quotelevelindex", ftypes.UINT16)

-- Athex AthexSecurities RealTime Ids 5.2 Expert Info
athex_athexsecurities_realtime_ids_v5_2.experts = {}
athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number = ProtoExpert.new("athex.athexsecurities.realtime.ids.v5.2.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_athex_athexsecurities_realtime_ids_v5_2.experts = { athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number }

-----------------------------------------------------------------------
-- Athex AthexSecurities RealTime Ids 5.2 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
athex_athexsecurities_realtime_ids_v5_2.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Athex AthexSecurities RealTime Ids 5.2 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.repeating_groups = true
show.indexes = true

-- Register Athex AthexSecurities RealTime Ids 5.2 Show Options
omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_athex_athexsecurities_realtime_ids_v5_2.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_athex_athexsecurities_realtime_ids_v5_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_application_messages then
    show.application_messages = omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_application_messages
  end
  if show.headers ~= omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_headers then
    show.headers = omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_headers
  end
  if show.repeating_groups ~= omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_repeating_groups then
    show.repeating_groups = omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_repeating_groups
  end
  if show.structs ~= omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_structs then
    show.structs = omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_structs
  end
  if show.indexes ~= omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_indexes then
    show.indexes = omi_athex_athexsecurities_realtime_ids_v5_2.prefs.show_indexes
  end
  if athex_athexsecurities_realtime_ids_v5_2.absolute_time_base ~= omi_athex_athexsecurities_realtime_ids_v5_2.prefs.absolute_time_base then
    athex_athexsecurities_realtime_ids_v5_2.absolute_time_base = omi_athex_athexsecurities_realtime_ids_v5_2.prefs.absolute_time_base
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

-- is every character a digit
is_digits = function(str)
  if str:len() == 0 then
    return false
  end

  for index = 1, str:len() do
    local byte = str:byte(index)

    if byte < 0x30 or byte > 0x39 then
      return false
    end
  end

  return true
end

-- the number a digit run of implied decimal places spells
format_implied_decimal_text = function(str, places)
  local digits = trim_left_spaces(str)
  local sign = ""
  local first = digits:sub(1, 1)

  if first == "-" or first == "+" then
    sign = first
    digits = digits:sub(2)
  end

  if not is_digits(digits) then
    return nil
  end

  digits = trim_left_zeros(digits)

  while digits:len() <= places do
    digits = "0"..digits
  end

  return sign..digits:sub(1, digits:len() - places).."."..digits:sub(-places)
end


-----------------------------------------------------------------------
-- Athex AthexSecurities RealTime Ids 5.2 Fields
-----------------------------------------------------------------------

-- Accrued Interest
athex_athexsecurities_realtime_ids_v5_2.accrued_interest = {}

-- Size: Accrued Interest
athex_athexsecurities_realtime_ids_v5_2.accrued_interest.size = 14

-- Display: Accrued Interest
athex_athexsecurities_realtime_ids_v5_2.accrued_interest.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.accrued_interest.size):string(), 6)

  if text == nil then
    return "Accrued Interest: "..tostring(value)
  end

  return "Accrued Interest: "..text
end

-- Dissect: Accrued Interest
athex_athexsecurities_realtime_ids_v5_2.accrued_interest.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.accrued_interest.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.accrued_interest, range, value, "Accrued Interest: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Accrued Interest is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/1000000

  local display = athex_athexsecurities_realtime_ids_v5_2.accrued_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.accrued_interest, range, value, display)

  return offset + length, value
end

-- Ask Orders
athex_athexsecurities_realtime_ids_v5_2.ask_orders = {}

-- Size: Ask Orders
athex_athexsecurities_realtime_ids_v5_2.ask_orders.size = 7

-- Display: Ask Orders
athex_athexsecurities_realtime_ids_v5_2.ask_orders.display = function(value)
  return "Ask Orders: "..value
end

-- Dissect: Ask Orders
athex_athexsecurities_realtime_ids_v5_2.ask_orders.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.ask_orders.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.ask_orders, range, value, "Ask Orders: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Ask Orders is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = athex_athexsecurities_realtime_ids_v5_2.ask_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.ask_orders, range, value, display)

  return offset + length, value
end

-- Ask Price
athex_athexsecurities_realtime_ids_v5_2.ask_price = {}

-- Size: Ask Price
athex_athexsecurities_realtime_ids_v5_2.ask_price.size = 9

-- Display: Ask Price
athex_athexsecurities_realtime_ids_v5_2.ask_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.ask_price.size):string(), 4)

  if text == nil then
    return "Ask Price: "..tostring(value)
  end

  return "Ask Price: "..text
end

-- Dissect: Ask Price
athex_athexsecurities_realtime_ids_v5_2.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.ask_price, range, value, "Ask Price: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Ask Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
athex_athexsecurities_realtime_ids_v5_2.ask_size = {}

-- Size: Ask Size
athex_athexsecurities_realtime_ids_v5_2.ask_size.size = 17

-- Display: Ask Size
athex_athexsecurities_realtime_ids_v5_2.ask_size.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.ask_size.size):string(), 2)

  if text == nil then
    return "Ask Size: "..tostring(value)
  end

  return "Ask Size: "..text
end

-- Dissect: Ask Size
athex_athexsecurities_realtime_ids_v5_2.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.ask_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.ask_size, range, value, "Ask Size: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Ask Size is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = athex_athexsecurities_realtime_ids_v5_2.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Bid Orders
athex_athexsecurities_realtime_ids_v5_2.bid_orders = {}

-- Size: Bid Orders
athex_athexsecurities_realtime_ids_v5_2.bid_orders.size = 7

-- Display: Bid Orders
athex_athexsecurities_realtime_ids_v5_2.bid_orders.display = function(value)
  return "Bid Orders: "..value
end

-- Dissect: Bid Orders
athex_athexsecurities_realtime_ids_v5_2.bid_orders.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.bid_orders.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.bid_orders, range, value, "Bid Orders: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Bid Orders is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = athex_athexsecurities_realtime_ids_v5_2.bid_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.bid_orders, range, value, display)

  return offset + length, value
end

-- Bid Price
athex_athexsecurities_realtime_ids_v5_2.bid_price = {}

-- Size: Bid Price
athex_athexsecurities_realtime_ids_v5_2.bid_price.size = 9

-- Display: Bid Price
athex_athexsecurities_realtime_ids_v5_2.bid_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.bid_price.size):string(), 4)

  if text == nil then
    return "Bid Price: "..tostring(value)
  end

  return "Bid Price: "..text
end

-- Dissect: Bid Price
athex_athexsecurities_realtime_ids_v5_2.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.bid_price, range, value, "Bid Price: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Bid Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
athex_athexsecurities_realtime_ids_v5_2.bid_size = {}

-- Size: Bid Size
athex_athexsecurities_realtime_ids_v5_2.bid_size.size = 17

-- Display: Bid Size
athex_athexsecurities_realtime_ids_v5_2.bid_size.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.bid_size.size):string(), 2)

  if text == nil then
    return "Bid Size: "..tostring(value)
  end

  return "Bid Size: "..text
end

-- Dissect: Bid Size
athex_athexsecurities_realtime_ids_v5_2.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.bid_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.bid_size, range, value, "Bid Size: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Bid Size is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = athex_athexsecurities_realtime_ids_v5_2.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Board Id
athex_athexsecurities_realtime_ids_v5_2.board_id = {}

-- Size: Board Id
athex_athexsecurities_realtime_ids_v5_2.board_id.size = 1

-- Display: Board Id
athex_athexsecurities_realtime_ids_v5_2.board_id.labels = {
  ["M"] = "Board Id: Main Board (M)",
  ["O"] = "Board Id: Odd Lot Board (O)",
  ["B"] = "Board Id: Pre Agreed Board (B)",
  ["S"] = "Board Id: Special Terms Board (S)",
  ["F"] = "Board Id: Forced Sales Board (F)",
}

athex_athexsecurities_realtime_ids_v5_2.board_id.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.board_id.labels[value] or "Board Id: Unknown("..value..")"
end

-- Dissect: Board Id
athex_athexsecurities_realtime_ids_v5_2.board_id.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.board_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.board_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.board_id, range, value, display)

  return offset + length, value
end

-- Buy Algo Flag
athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag = {}

-- Size: Buy Algo Flag
athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag.size = 1

-- Display: Buy Algo Flag
athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag.labels = {
  ["Y"] = "Buy Algo Flag: Flag On (Y)",
}

athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag.labels[value] or "Buy Algo Flag: Unknown("..value..")"
end

-- Dissect: Buy Algo Flag
athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_algo_flag, range, value, display)

  return offset + length, value
end

-- Buy Order Date
athex_athexsecurities_realtime_ids_v5_2.buy_order_date = {}

-- Size: Buy Order Date
athex_athexsecurities_realtime_ids_v5_2.buy_order_date.size = 8

-- Display: Buy Order Date
athex_athexsecurities_realtime_ids_v5_2.buy_order_date.display = function(value)
  if #value < 8 then
    return "Buy Order Date: "..value
  end

  return "Buy Order Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Buy Order Date
athex_athexsecurities_realtime_ids_v5_2.buy_order_date.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.buy_order_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexsecurities_realtime_ids_v5_2.buy_order_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_order_date, range, value, display)

  return offset + length, value
end

-- Buy Order Number
athex_athexsecurities_realtime_ids_v5_2.buy_order_number = {}

-- Size: Buy Order Number
athex_athexsecurities_realtime_ids_v5_2.buy_order_number.size = 8

-- Display: Buy Order Number
athex_athexsecurities_realtime_ids_v5_2.buy_order_number.display = function(value)
  return "Buy Order Number: "..value
end

-- Dissect: Buy Order Number
athex_athexsecurities_realtime_ids_v5_2.buy_order_number.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.buy_order_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_order_number, range, value, "Buy Order Number: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Buy Order Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = athex_athexsecurities_realtime_ids_v5_2.buy_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_order_number, range, value, display)

  return offset + length, value
end

-- Buy Order Type
athex_athexsecurities_realtime_ids_v5_2.buy_order_type = {}

-- Size: Buy Order Type
athex_athexsecurities_realtime_ids_v5_2.buy_order_type.size = 1

-- Display: Buy Order Type
athex_athexsecurities_realtime_ids_v5_2.buy_order_type.labels = {
  ["B"] = "Buy Order Type: Strategy (B)",
  ["Q"] = "Buy Order Type: Quote (Q)",
  ["N"] = "Buy Order Type: Normal (N)",
}

athex_athexsecurities_realtime_ids_v5_2.buy_order_type.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.buy_order_type.labels[value] or "Buy Order Type: Unknown("..value..")"
end

-- Dissect: Buy Order Type
athex_athexsecurities_realtime_ids_v5_2.buy_order_type.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.buy_order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.buy_order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_order_type, range, value, display)

  return offset + length, value
end

-- Cancelled Trade Price
athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_price = {}

-- Size: Cancelled Trade Price
athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_price.size = 9

-- Display: Cancelled Trade Price
athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_price.size):string(), 4)

  if text == nil then
    return "Cancelled Trade Price: "..tostring(value)
  end

  return "Cancelled Trade Price: "..text
end

-- Dissect: Cancelled Trade Price
athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.cancelled_trade_price, range, value, "Cancelled Trade Price: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Cancelled Trade Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.cancelled_trade_price, range, value, display)

  return offset + length, value
end

-- Cancelled Volume
athex_athexsecurities_realtime_ids_v5_2.cancelled_volume = {}

-- Size: Cancelled Volume
athex_athexsecurities_realtime_ids_v5_2.cancelled_volume.size = 17

-- Display: Cancelled Volume
athex_athexsecurities_realtime_ids_v5_2.cancelled_volume.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.cancelled_volume.size):string(), 2)

  if text == nil then
    return "Cancelled Volume: "..tostring(value)
  end

  return "Cancelled Volume: "..text
end

-- Dissect: Cancelled Volume
athex_athexsecurities_realtime_ids_v5_2.cancelled_volume.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.cancelled_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.cancelled_volume, range, value, "Cancelled Volume: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Cancelled Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = athex_athexsecurities_realtime_ids_v5_2.cancelled_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.cancelled_volume, range, value, display)

  return offset + length, value
end

-- Ceiling Price
athex_athexsecurities_realtime_ids_v5_2.ceiling_price = {}

-- Size: Ceiling Price
athex_athexsecurities_realtime_ids_v5_2.ceiling_price.size = 9

-- Display: Ceiling Price
athex_athexsecurities_realtime_ids_v5_2.ceiling_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.ceiling_price.size):string(), 4)

  if text == nil then
    return "Ceiling Price: "..tostring(value)
  end

  return "Ceiling Price: "..text
end

-- Dissect: Ceiling Price
athex_athexsecurities_realtime_ids_v5_2.ceiling_price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.ceiling_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.ceiling_price, range, value, "Ceiling Price: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Ceiling Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.ceiling_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.ceiling_price, range, value, display)

  return offset + length, value
end

-- Closing
athex_athexsecurities_realtime_ids_v5_2.closing = {}

-- Size: Closing
athex_athexsecurities_realtime_ids_v5_2.closing.size = 9

-- Display: Closing
athex_athexsecurities_realtime_ids_v5_2.closing.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.closing.size):string(), 4)

  if text == nil then
    return "Closing: "..tostring(value)
  end

  return "Closing: "..text
end

-- Dissect: Closing
athex_athexsecurities_realtime_ids_v5_2.closing.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.closing.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.closing, range, value, "Closing: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Closing is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.closing.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.closing, range, value, display)

  return offset + length, value
end

-- Closing Price
athex_athexsecurities_realtime_ids_v5_2.closing_price = {}

-- Size: Closing Price
athex_athexsecurities_realtime_ids_v5_2.closing_price.size = 9

-- Display: Closing Price
athex_athexsecurities_realtime_ids_v5_2.closing_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.closing_price.size):string(), 4)

  if text == nil then
    return "Closing Price: "..tostring(value)
  end

  return "Closing Price: "..text
end

-- Dissect: Closing Price
athex_athexsecurities_realtime_ids_v5_2.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.closing_price, range, value, "Closing Price: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Closing Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Condition Volume
athex_athexsecurities_realtime_ids_v5_2.condition_volume = {}

-- Size: Condition Volume
athex_athexsecurities_realtime_ids_v5_2.condition_volume.size = 17

-- Display: Condition Volume
athex_athexsecurities_realtime_ids_v5_2.condition_volume.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.condition_volume.size):string(), 2)

  if text == nil then
    return "Condition Volume: "..tostring(value)
  end

  return "Condition Volume: "..text
end

-- Dissect: Condition Volume
athex_athexsecurities_realtime_ids_v5_2.condition_volume.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.condition_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.condition_volume, range, value, "Condition Volume: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Condition Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = athex_athexsecurities_realtime_ids_v5_2.condition_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.condition_volume, range, value, display)

  return offset + length, value
end

-- Dupl Flag
athex_athexsecurities_realtime_ids_v5_2.dupl_flag = {}

-- Size: Dupl Flag
athex_athexsecurities_realtime_ids_v5_2.dupl_flag.size = 1

-- Display: Dupl Flag
athex_athexsecurities_realtime_ids_v5_2.dupl_flag.labels = {
  ["Y"] = "Dupl Flag: Flag On (Y)",
}

athex_athexsecurities_realtime_ids_v5_2.dupl_flag.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.dupl_flag.labels[value] or "Dupl Flag: Unknown("..value..")"
end

-- Dissect: Dupl Flag
athex_athexsecurities_realtime_ids_v5_2.dupl_flag.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.dupl_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.dupl_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.dupl_flag, range, value, display)

  return offset + length, value
end

-- English Notification Text
athex_athexsecurities_realtime_ids_v5_2.english_notification_text = {}

-- Display: English Notification Text
athex_athexsecurities_realtime_ids_v5_2.english_notification_text.display = function(value)
  return "English Notification Text: "..value
end

-- Dissect runtime sized field: English Notification Text
athex_athexsecurities_realtime_ids_v5_2.english_notification_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.english_notification_text.display(value, packet, parent, size)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.english_notification_text, range, value, display)

  return offset + size, value
end

-- Etx
athex_athexsecurities_realtime_ids_v5_2.etx = {}

-- Size: Etx
athex_athexsecurities_realtime_ids_v5_2.etx.size = 1

-- Display: Etx
athex_athexsecurities_realtime_ids_v5_2.etx.display = function(value)
  if value == 3 then
    return "Etx: End Of Text"
  end

  return "Etx: Unknown("..value..")"
end

-- Dissect: Etx
athex_athexsecurities_realtime_ids_v5_2.etx.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = athex_athexsecurities_realtime_ids_v5_2.etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.etx, range, value, display)

  return offset + length, value
end

-- Floor Price
athex_athexsecurities_realtime_ids_v5_2.floor_price = {}

-- Size: Floor Price
athex_athexsecurities_realtime_ids_v5_2.floor_price.size = 9

-- Display: Floor Price
athex_athexsecurities_realtime_ids_v5_2.floor_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.floor_price.size):string(), 4)

  if text == nil then
    return "Floor Price: "..tostring(value)
  end

  return "Floor Price: "..text
end

-- Dissect: Floor Price
athex_athexsecurities_realtime_ids_v5_2.floor_price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.floor_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.floor_price, range, value, "Floor Price: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Floor Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.floor_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.floor_price, range, value, display)

  return offset + length, value
end

-- Free Text
athex_athexsecurities_realtime_ids_v5_2.free_text = {}

-- Display: Free Text
athex_athexsecurities_realtime_ids_v5_2.free_text.display = function(value)
  return "Free Text: "..value
end

-- Dissect runtime sized field: Free Text
athex_athexsecurities_realtime_ids_v5_2.free_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.free_text.display(value, packet, parent, size)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.free_text, range, value, display)

  return offset + size, value
end

-- Halt Suspend Reason
athex_athexsecurities_realtime_ids_v5_2.halt_suspend_reason = {}

-- Size: Halt Suspend Reason
athex_athexsecurities_realtime_ids_v5_2.halt_suspend_reason.size = 1

-- Display: Halt Suspend Reason
athex_athexsecurities_realtime_ids_v5_2.halt_suspend_reason.display = function(value)
  if value == " " then
    return "Halt Suspend Reason: No Reason (<whitespace>)"
  end
  if value == "E" then
    return "Halt Suspend Reason: Exchange (E)"
  end
  if value == "V" then
    return "Halt Suspend Reason: Volatility Interrupter (V)"
  end

  return "Halt Suspend Reason: Unknown("..value..")"
end

-- Dissect: Halt Suspend Reason
athex_athexsecurities_realtime_ids_v5_2.halt_suspend_reason.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.halt_suspend_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.halt_suspend_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.halt_suspend_reason, range, value, display)

  return offset + length, value
end

-- High
athex_athexsecurities_realtime_ids_v5_2.high = {}

-- Size: High
athex_athexsecurities_realtime_ids_v5_2.high.size = 9

-- Display: High
athex_athexsecurities_realtime_ids_v5_2.high.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.high.size):string(), 4)

  if text == nil then
    return "High: "..tostring(value)
  end

  return "High: "..text
end

-- Dissect: High
athex_athexsecurities_realtime_ids_v5_2.high.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.high.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.high, range, value, "High: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "High is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.high.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.high, range, value, display)

  return offset + length, value
end

-- Index Price
athex_athexsecurities_realtime_ids_v5_2.index_price = {}

-- Size: Index Price
athex_athexsecurities_realtime_ids_v5_2.index_price.size = 9

-- Display: Index Price
athex_athexsecurities_realtime_ids_v5_2.index_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.index_price.size):string(), 4)

  if text == nil then
    return "Index Price: "..tostring(value)
  end

  return "Index Price: "..text
end

-- Dissect: Index Price
athex_athexsecurities_realtime_ids_v5_2.index_price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.index_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.index_price, range, value, "Index Price: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Index Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.index_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.index_price, range, value, display)

  return offset + length, value
end

-- Instrument Status
athex_athexsecurities_realtime_ids_v5_2.instrument_status = {}

-- Size: Instrument Status
athex_athexsecurities_realtime_ids_v5_2.instrument_status.size = 1

-- Display: Instrument Status
athex_athexsecurities_realtime_ids_v5_2.instrument_status.labels = {
  ["A"] = "Instrument Status: Active (A)",
  ["H"] = "Instrument Status: Halt (H)",
  ["S"] = "Instrument Status: Suspended (S)",
  ["R"] = "Instrument Status: Resumed (R)",
}

athex_athexsecurities_realtime_ids_v5_2.instrument_status.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.instrument_status.labels[value] or "Instrument Status: Unknown("..value..")"
end

-- Dissect: Instrument Status
athex_athexsecurities_realtime_ids_v5_2.instrument_status.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.instrument_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.instrument_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.instrument_status, range, value, display)

  return offset + length, value
end

-- Last
athex_athexsecurities_realtime_ids_v5_2.last = {}

-- Size: Last
athex_athexsecurities_realtime_ids_v5_2.last.size = 9

-- Display: Last
athex_athexsecurities_realtime_ids_v5_2.last.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.last.size):string(), 4)

  if text == nil then
    return "Last: "..tostring(value)
  end

  return "Last: "..text
end

-- Dissect: Last
athex_athexsecurities_realtime_ids_v5_2.last.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.last.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.last, range, value, "Last: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Last is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.last.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.last, range, value, display)

  return offset + length, value
end

-- Last Order Update Date
athex_athexsecurities_realtime_ids_v5_2.last_order_update_date = {}

-- Size: Last Order Update Date
athex_athexsecurities_realtime_ids_v5_2.last_order_update_date.size = 8

-- Display: Last Order Update Date
athex_athexsecurities_realtime_ids_v5_2.last_order_update_date.display = function(value)
  if #value < 8 then
    return "Last Order Update Date: "..value
  end

  return "Last Order Update Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Last Order Update Date
athex_athexsecurities_realtime_ids_v5_2.last_order_update_date.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.last_order_update_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexsecurities_realtime_ids_v5_2.last_order_update_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.last_order_update_date, range, value, display)

  return offset + length, value
end

-- Local Notification Text
athex_athexsecurities_realtime_ids_v5_2.local_notification_text = {}

-- Display: Local Notification Text
athex_athexsecurities_realtime_ids_v5_2.local_notification_text.display = function(value)
  return "Local Notification Text: "..value
end

-- Dissect runtime sized field: Local Notification Text
athex_athexsecurities_realtime_ids_v5_2.local_notification_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.local_notification_text.display(value, packet, parent, size)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.local_notification_text, range, value, display)

  return offset + size, value
end

-- Low
athex_athexsecurities_realtime_ids_v5_2.low = {}

-- Size: Low
athex_athexsecurities_realtime_ids_v5_2.low.size = 9

-- Display: Low
athex_athexsecurities_realtime_ids_v5_2.low.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.low.size):string(), 4)

  if text == nil then
    return "Low: "..tostring(value)
  end

  return "Low: "..text
end

-- Dissect: Low
athex_athexsecurities_realtime_ids_v5_2.low.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.low.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.low, range, value, "Low: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Low is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.low.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.low, range, value, display)

  return offset + length, value
end

-- Lrc
athex_athexsecurities_realtime_ids_v5_2.lrc = {}

-- Size: Lrc
athex_athexsecurities_realtime_ids_v5_2.lrc.size = 1

-- Display: Lrc
athex_athexsecurities_realtime_ids_v5_2.lrc.display = function(value)
  return "Lrc: "..value
end

-- Dissect: Lrc
athex_athexsecurities_realtime_ids_v5_2.lrc.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.lrc.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = athex_athexsecurities_realtime_ids_v5_2.lrc.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.lrc, range, value, display)

  return offset + length, value
end

-- Market Id
athex_athexsecurities_realtime_ids_v5_2.market_id = {}

-- Size: Market Id
athex_athexsecurities_realtime_ids_v5_2.market_id.size = 1

-- Display: Market Id
athex_athexsecurities_realtime_ids_v5_2.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
athex_athexsecurities_realtime_ids_v5_2.market_id.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.market_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Status
athex_athexsecurities_realtime_ids_v5_2.market_status = {}

-- Size: Market Status
athex_athexsecurities_realtime_ids_v5_2.market_status.size = 1

-- Display: Market Status
athex_athexsecurities_realtime_ids_v5_2.market_status.labels = {
  ["P"] = "Market Status: Pre Call (P)",
  ["J"] = "Market Status: Projected Auction (J)",
  ["T"] = "Market Status: Continuous (T)",
  ["C"] = "Market Status: Closing Price Trading (C)",
  ["R"] = "Market Status: Run Off (R)",
  ["E"] = "Market Status: End Of Day (E)",
  ["H"] = "Market Status: Halt (H)",
}

athex_athexsecurities_realtime_ids_v5_2.market_status.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.market_status.labels[value] or "Market Status: Unknown("..value..")"
end

-- Dissect: Market Status
athex_athexsecurities_realtime_ids_v5_2.market_status.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.market_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.market_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.market_status, range, value, display)

  return offset + length, value
end

-- Matched Volume
athex_athexsecurities_realtime_ids_v5_2.matched_volume = {}

-- Size: Matched Volume
athex_athexsecurities_realtime_ids_v5_2.matched_volume.size = 17

-- Display: Matched Volume
athex_athexsecurities_realtime_ids_v5_2.matched_volume.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.matched_volume.size):string(), 2)

  if text == nil then
    return "Matched Volume: "..tostring(value)
  end

  return "Matched Volume: "..text
end

-- Dissect: Matched Volume
athex_athexsecurities_realtime_ids_v5_2.matched_volume.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.matched_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.matched_volume, range, value, "Matched Volume: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Matched Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = athex_athexsecurities_realtime_ids_v5_2.matched_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.matched_volume, range, value, display)

  return offset + length, value
end

-- Message Category
athex_athexsecurities_realtime_ids_v5_2.message_category = {}

-- Size: Message Category
athex_athexsecurities_realtime_ids_v5_2.message_category.size = 1

-- Display: Message Category
athex_athexsecurities_realtime_ids_v5_2.message_category.labels = {
  ["K"] = "Message Category: Control Message (K)",
  ["A"] = "Message Category: Trade Message (A)",
  ["B"] = "Message Category: Quote Message (B)",
  ["C"] = "Message Category: Index Message (C)",
  ["G"] = "Message Category: Instrument Summary Message (G)",
  ["I"] = "Message Category: Cancelled Trade Message (I)",
  ["L"] = "Message Category: Closing Price Message (L)",
  ["M"] = "Message Category: Projected Auction Auction Open Projected Close Price Message (M)",
  ["N"] = "Message Category: High Low Limit Modification Message (N)",
  ["O"] = "Message Category: Instrument State Message (O)",
  ["P"] = "Message Category: Market Status Message (P)",
  ["Q"] = "Message Category: Order Message (Q)",
  ["R"] = "Message Category: Cancelled Order Message (R)",
  ["S"] = "Message Category: Exchange Notifications Message (S)",
}

athex_athexsecurities_realtime_ids_v5_2.message_category.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.message_category.labels[value] or "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
athex_athexsecurities_realtime_ids_v5_2.message_category.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
athex_athexsecurities_realtime_ids_v5_2.message_sequence_number = {}

-- Size: Message Sequence Number
athex_athexsecurities_realtime_ids_v5_2.message_sequence_number.size = 7

-- Display: Message Sequence Number
athex_athexsecurities_realtime_ids_v5_2.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
athex_athexsecurities_realtime_ids_v5_2.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.message_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.message_sequence_number, range, value, "Message Sequence Number: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Message Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = athex_athexsecurities_realtime_ids_v5_2.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Subcategory
athex_athexsecurities_realtime_ids_v5_2.message_subcategory = {}

-- Size: Message Subcategory
athex_athexsecurities_realtime_ids_v5_2.message_subcategory.size = 1

-- Display: Message Subcategory
athex_athexsecurities_realtime_ids_v5_2.message_subcategory.display = function(value)
  if value == " " then
    return "Message Subcategory: Generic (<whitespace>)"
  end
  if value == "B" then
    return "Message Subcategory: Bond (B)"
  end
  if value == "E" then
    return "Message Subcategory: Etf (E)"
  end
  if value == "I" then
    return "Message Subcategory: Stock Index (I)"
  end
  if value == "N" then
    return "Message Subcategory: Etf Indicative Net Asset Value (N)"
  end
  if value == "S" then
    return "Message Subcategory: Stock Rights (S)"
  end
  if value == "W" then
    return "Message Subcategory: Warrant (W)"
  end
  if value == "O" then
    return "Message Subcategory: Option (O)"
  end
  if value == "F" then
    return "Message Subcategory: Future (F)"
  end
  if value == "R" then
    return "Message Subcategory: Repos (R)"
  end
  if value == "V" then
    return "Message Subcategory: Standard Combinations (V)"
  end

  return "Message Subcategory: Unknown("..value..")"
end

-- Dissect: Message Subcategory
athex_athexsecurities_realtime_ids_v5_2.message_subcategory.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.message_subcategory.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.message_subcategory.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.message_subcategory, range, value, display)

  return offset + length, value
end

-- Message Type
athex_athexsecurities_realtime_ids_v5_2.message_type = {}

-- Size: Message Type
athex_athexsecurities_realtime_ids_v5_2.message_type.size = 1

-- Display: Message Type
athex_athexsecurities_realtime_ids_v5_2.message_type.labels = {
  ["A"] = "Message Type: Start Of Day Control Message (A)",
  ["F"] = "Message Type: Administrative Message (F)",
  ["H"] = "Message Type: End Of Day Control Message (H)",
  ["T"] = "Message Type: Line Verification Control Message (T)",
}

athex_athexsecurities_realtime_ids_v5_2.message_type.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
athex_athexsecurities_realtime_ids_v5_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Notification Headline In English
athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_english = {}

-- Size: Notification Headline In English
athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_english.size = 72

-- Display: Notification Headline In English
athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_english.display = function(value)
  return "Notification Headline In English: "..value
end

-- Dissect: Notification Headline In English
athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_english.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_english.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_english.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.notification_headline_in_english, range, value, display)

  return offset + length, value
end

-- Notification Headline In Local
athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_local = {}

-- Size: Notification Headline In Local
athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_local.size = 72

-- Display: Notification Headline In Local
athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_local.display = function(value)
  return "Notification Headline In Local: "..value
end

-- Dissect: Notification Headline In Local
athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_local.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_local.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_local.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.notification_headline_in_local, range, value, display)

  return offset + length, value
end

-- Notional Amount
athex_athexsecurities_realtime_ids_v5_2.notional_amount = {}

-- Size: Notional Amount
athex_athexsecurities_realtime_ids_v5_2.notional_amount.size = 14

-- Display: Notional Amount
athex_athexsecurities_realtime_ids_v5_2.notional_amount.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.notional_amount.size):string(), 2)

  if text == nil then
    return "Notional Amount: "..tostring(value)
  end

  return "Notional Amount: "..text
end

-- Dissect: Notional Amount
athex_athexsecurities_realtime_ids_v5_2.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.notional_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.notional_amount, range, value, "Notional Amount: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Notional Amount is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = athex_athexsecurities_realtime_ids_v5_2.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Open Interest
athex_athexsecurities_realtime_ids_v5_2.open_interest = {}

-- Size: Open Interest
athex_athexsecurities_realtime_ids_v5_2.open_interest.size = 8

-- Display: Open Interest
athex_athexsecurities_realtime_ids_v5_2.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
athex_athexsecurities_realtime_ids_v5_2.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.open_interest.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.open_interest, range, value, "Open Interest: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Open Interest is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = athex_athexsecurities_realtime_ids_v5_2.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Opening Price
athex_athexsecurities_realtime_ids_v5_2.opening_price = {}

-- Size: Opening Price
athex_athexsecurities_realtime_ids_v5_2.opening_price.size = 9

-- Display: Opening Price
athex_athexsecurities_realtime_ids_v5_2.opening_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.opening_price.size):string(), 4)

  if text == nil then
    return "Opening Price: "..tostring(value)
  end

  return "Opening Price: "..text
end

-- Dissect: Opening Price
athex_athexsecurities_realtime_ids_v5_2.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.opening_price, range, value, "Opening Price: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Opening Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Order Entry Date
athex_athexsecurities_realtime_ids_v5_2.order_entry_date = {}

-- Size: Order Entry Date
athex_athexsecurities_realtime_ids_v5_2.order_entry_date.size = 8

-- Display: Order Entry Date
athex_athexsecurities_realtime_ids_v5_2.order_entry_date.display = function(value)
  if #value < 8 then
    return "Order Entry Date: "..value
  end

  return "Order Entry Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Order Entry Date
athex_athexsecurities_realtime_ids_v5_2.order_entry_date.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.order_entry_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexsecurities_realtime_ids_v5_2.order_entry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_entry_date, range, value, display)

  return offset + length, value
end

-- Order Lifetime
athex_athexsecurities_realtime_ids_v5_2.order_lifetime = {}

-- Size: Order Lifetime
athex_athexsecurities_realtime_ids_v5_2.order_lifetime.size = 1

-- Display: Order Lifetime
athex_athexsecurities_realtime_ids_v5_2.order_lifetime.labels = {
  ["D"] = "Order Lifetime: Day (D)",
  ["C"] = "Order Lifetime: Good Till Cancel (C)",
  ["E"] = "Order Lifetime: Good Till Date (E)",
}

athex_athexsecurities_realtime_ids_v5_2.order_lifetime.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.order_lifetime.labels[value] or "Order Lifetime: Unknown("..value..")"
end

-- Dissect: Order Lifetime
athex_athexsecurities_realtime_ids_v5_2.order_lifetime.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.order_lifetime.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.order_lifetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_lifetime, range, value, display)

  return offset + length, value
end

-- Order Number
athex_athexsecurities_realtime_ids_v5_2.order_number = {}

-- Size: Order Number
athex_athexsecurities_realtime_ids_v5_2.order_number.size = 8

-- Display: Order Number
athex_athexsecurities_realtime_ids_v5_2.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
athex_athexsecurities_realtime_ids_v5_2.order_number.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.order_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_number, range, value, "Order Number: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Order Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = athex_athexsecurities_realtime_ids_v5_2.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Release Date
athex_athexsecurities_realtime_ids_v5_2.order_release_date = {}

-- Size: Order Release Date
athex_athexsecurities_realtime_ids_v5_2.order_release_date.size = 8

-- Display: Order Release Date
athex_athexsecurities_realtime_ids_v5_2.order_release_date.display = function(value)
  if #value < 8 then
    return "Order Release Date: "..value
  end

  return "Order Release Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Order Release Date
athex_athexsecurities_realtime_ids_v5_2.order_release_date.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.order_release_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexsecurities_realtime_ids_v5_2.order_release_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_release_date, range, value, display)

  return offset + length, value
end

-- Order Release Time
athex_athexsecurities_realtime_ids_v5_2.order_release_time = {}

-- Size: Order Release Time
athex_athexsecurities_realtime_ids_v5_2.order_release_time.size = 12

-- Display: Order Release Time
athex_athexsecurities_realtime_ids_v5_2.order_release_time.display = function(value)
  if #value < 12 then
    return "Order Release Time: "..value
  end

  return "Order Release Time: "..value:sub(1, 2)..":"..value:sub(3, 4)..":"..value:sub(5, 6).."."..value:sub(7, 12)
end

-- Dissect: Order Release Time
athex_athexsecurities_realtime_ids_v5_2.order_release_time.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.order_release_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.order_release_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_release_time, range, value, display)

  return offset + length, value
end

-- Order Status
athex_athexsecurities_realtime_ids_v5_2.order_status = {}

-- Size: Order Status
athex_athexsecurities_realtime_ids_v5_2.order_status.size = 2

-- Display: Order Status
athex_athexsecurities_realtime_ids_v5_2.order_status.labels = {
  ["N"] = "Order Status: Not Released (N)",
  ["I"] = "Order Status: Inactive (I)",
  ["O"] = "Order Status: Open (O)",
  ["EP"] = "Order Status: Good Till Date Expired (EP)",
}

athex_athexsecurities_realtime_ids_v5_2.order_status.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.order_status.labels[value] or "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
athex_athexsecurities_realtime_ids_v5_2.order_status.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.order_status.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexsecurities_realtime_ids_v5_2.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_status, range, value, display)

  return offset + length, value
end

-- Order Type
athex_athexsecurities_realtime_ids_v5_2.order_type = {}

-- Size: Order Type
athex_athexsecurities_realtime_ids_v5_2.order_type.size = 1

-- Display: Order Type
athex_athexsecurities_realtime_ids_v5_2.order_type.labels = {
  ["B"] = "Order Type: Strategy (B)",
  ["Q"] = "Order Type: Quote (Q)",
  ["N"] = "Order Type: Normal (N)",
}

athex_athexsecurities_realtime_ids_v5_2.order_type.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.order_type.labels[value] or "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
athex_athexsecurities_realtime_ids_v5_2.order_type.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Price Type
athex_athexsecurities_realtime_ids_v5_2.original_price_type = {}

-- Size: Original Price Type
athex_athexsecurities_realtime_ids_v5_2.original_price_type.size = 1

-- Display: Original Price Type
athex_athexsecurities_realtime_ids_v5_2.original_price_type.labels = {
  ["L"] = "Original Price Type: Limit Price (L)",
  ["M"] = "Original Price Type: Market (M)",
  ["O"] = "Original Price Type: At The Open (O)",
  ["C"] = "Original Price Type: At The Close (C)",
}

athex_athexsecurities_realtime_ids_v5_2.original_price_type.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.original_price_type.labels[value] or "Original Price Type: Unknown("..value..")"
end

-- Dissect: Original Price Type
athex_athexsecurities_realtime_ids_v5_2.original_price_type.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.original_price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.original_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.original_price_type, range, value, display)

  return offset + length, value
end

-- Phase Id
athex_athexsecurities_realtime_ids_v5_2.phase_id = {}

-- Size: Phase Id
athex_athexsecurities_realtime_ids_v5_2.phase_id.size = 1

-- Display: Phase Id
athex_athexsecurities_realtime_ids_v5_2.phase_id.display = function(value)
  if value == " " then
    return "Phase Id: Start Phase (<whitespace>)"
  end
  if value == "P" then
    return "Phase Id: Pre Call (P)"
  end
  if value == "T" then
    return "Phase Id: Continuous (T)"
  end
  if value == "A" then
    return "Phase Id: Atc Orders Released (A)"
  end
  if value == "C" then
    return "Phase Id: Closing Price Trading (C)"
  end
  if value == "S" then
    return "Phase Id: Stop (S)"
  end

  return "Phase Id: Unknown("..value..")"
end

-- Dissect: Phase Id
athex_athexsecurities_realtime_ids_v5_2.phase_id.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.phase_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.phase_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.phase_id, range, value, display)

  return offset + length, value
end

-- Price
athex_athexsecurities_realtime_ids_v5_2.price = {}

-- Size: Price
athex_athexsecurities_realtime_ids_v5_2.price.size = 9

-- Display: Price
athex_athexsecurities_realtime_ids_v5_2.price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.price.size):string(), 4)

  if text == nil then
    return "Price: "..tostring(value)
  end

  return "Price: "..text
end

-- Dissect: Price
athex_athexsecurities_realtime_ids_v5_2.price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.price, range, value, "Price: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.price, range, value, display)

  return offset + length, value
end

-- Price Flag
athex_athexsecurities_realtime_ids_v5_2.price_flag = {}

-- Size: Price Flag
athex_athexsecurities_realtime_ids_v5_2.price_flag.size = 1

-- Display: Price Flag
athex_athexsecurities_realtime_ids_v5_2.price_flag.labels = {
  ["0"] = "Price Flag: Projected Auction Price (0)",
  ["1"] = "Price Flag: Auction Open Price (1)",
  ["2"] = "Price Flag: Projected Close (2)",
}

athex_athexsecurities_realtime_ids_v5_2.price_flag.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.price_flag.labels[value] or "Price Flag: Unknown("..value..")"
end

-- Dissect: Price Flag
athex_athexsecurities_realtime_ids_v5_2.price_flag.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.price_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.price_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.price_flag, range, value, display)

  return offset + length, value
end

-- Publication Timestamp
athex_athexsecurities_realtime_ids_v5_2.publication_timestamp = {}

-- Size: Publication Timestamp
athex_athexsecurities_realtime_ids_v5_2.publication_timestamp.size = 20

-- Dissect: Publication Timestamp
athex_athexsecurities_realtime_ids_v5_2.publication_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.publication_timestamp.size
  local range = buffer(offset, length)
  local text = range:string()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_athex_athexsecurities_realtime_ids_v5_2.fields.publication_timestamp
  if athex_athexsecurities_realtime_ids_v5_2.absolute_time_base == 1 then field = omi_athex_athexsecurities_realtime_ids_v5_2.fields.publication_timestamp_utc end

  -- Twenty digits read as a date; anything else leaves the parts nil
  local year, month, day, hour, minute, second, micros
  if #text == 20 and not text:find("%D") then
    year = tonumber(text:sub(1, 4))
    month = tonumber(text:sub(5, 6))
    day = tonumber(text:sub(7, 8))
    hour = tonumber(text:sub(9, 10))
    minute = tonumber(text:sub(11, 12))
    second = tonumber(text:sub(13, 14))
    micros = tonumber(text:sub(15, 20))
  end

  if year == nil or month < 1 or month > 12 or day < 1 or day > 31 then
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Publication Timestamp: " .. text)
    return offset + length, text
  end

  -- Days since the Unix epoch, by civil date arithmetic, in Utc
  local y = year - (month <= 2 and 1 or 0)
  local era = math.floor((y >= 0 and y or y - 399) / 400)
  local yoe = y - era * 400
  local doy = math.floor((153 * (month + (month > 2 and -3 or 9)) + 2) / 5) + day - 1
  local doe = yoe * 365 + math.floor(yoe / 4) - math.floor(yoe / 100) + doy
  local days = era * 146097 + doe - 719468

  local seconds = days * 86400 + hour * 3600 + minute * 60 + second
  local nanos = micros * 1000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, text
end

-- Quote Levels
athex_athexsecurities_realtime_ids_v5_2.quote_levels = {}

-- Size: Quote Levels
athex_athexsecurities_realtime_ids_v5_2.quote_levels.size = 3

-- Display: Quote Levels
athex_athexsecurities_realtime_ids_v5_2.quote_levels.display = function(value)
  return "Quote Levels: "..value
end

-- Dissect: Quote Levels
athex_athexsecurities_realtime_ids_v5_2.quote_levels.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.quote_levels.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.quote_levels, range, value, "Quote Levels: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Quote Levels is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = athex_athexsecurities_realtime_ids_v5_2.quote_levels.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.quote_levels, range, value, display)

  return offset + length, value
end

-- Sdiv Flag
athex_athexsecurities_realtime_ids_v5_2.sdiv_flag = {}

-- Size: Sdiv Flag
athex_athexsecurities_realtime_ids_v5_2.sdiv_flag.size = 1

-- Display: Sdiv Flag
athex_athexsecurities_realtime_ids_v5_2.sdiv_flag.labels = {
  ["Y"] = "Sdiv Flag: Flag On (Y)",
}

athex_athexsecurities_realtime_ids_v5_2.sdiv_flag.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.sdiv_flag.labels[value] or "Sdiv Flag: Unknown("..value..")"
end

-- Dissect: Sdiv Flag
athex_athexsecurities_realtime_ids_v5_2.sdiv_flag.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.sdiv_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.sdiv_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.sdiv_flag, range, value, display)

  return offset + length, value
end

-- Sell Algo Flag
athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag = {}

-- Size: Sell Algo Flag
athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag.size = 1

-- Display: Sell Algo Flag
athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag.labels = {
  ["Y"] = "Sell Algo Flag: Flag On (Y)",
}

athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag.labels[value] or "Sell Algo Flag: Unknown("..value..")"
end

-- Dissect: Sell Algo Flag
athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_algo_flag, range, value, display)

  return offset + length, value
end

-- Sell Order Date
athex_athexsecurities_realtime_ids_v5_2.sell_order_date = {}

-- Size: Sell Order Date
athex_athexsecurities_realtime_ids_v5_2.sell_order_date.size = 8

-- Display: Sell Order Date
athex_athexsecurities_realtime_ids_v5_2.sell_order_date.display = function(value)
  if #value < 8 then
    return "Sell Order Date: "..value
  end

  return "Sell Order Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Sell Order Date
athex_athexsecurities_realtime_ids_v5_2.sell_order_date.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.sell_order_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexsecurities_realtime_ids_v5_2.sell_order_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_order_date, range, value, display)

  return offset + length, value
end

-- Sell Order Number
athex_athexsecurities_realtime_ids_v5_2.sell_order_number = {}

-- Size: Sell Order Number
athex_athexsecurities_realtime_ids_v5_2.sell_order_number.size = 8

-- Display: Sell Order Number
athex_athexsecurities_realtime_ids_v5_2.sell_order_number.display = function(value)
  return "Sell Order Number: "..value
end

-- Dissect: Sell Order Number
athex_athexsecurities_realtime_ids_v5_2.sell_order_number.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.sell_order_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_order_number, range, value, "Sell Order Number: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Sell Order Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = athex_athexsecurities_realtime_ids_v5_2.sell_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_order_number, range, value, display)

  return offset + length, value
end

-- Sell Order Type
athex_athexsecurities_realtime_ids_v5_2.sell_order_type = {}

-- Size: Sell Order Type
athex_athexsecurities_realtime_ids_v5_2.sell_order_type.size = 1

-- Display: Sell Order Type
athex_athexsecurities_realtime_ids_v5_2.sell_order_type.labels = {
  ["B"] = "Sell Order Type: Strategy (B)",
  ["Q"] = "Sell Order Type: Quote (Q)",
  ["N"] = "Sell Order Type: Normal (N)",
}

athex_athexsecurities_realtime_ids_v5_2.sell_order_type.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.sell_order_type.labels[value] or "Sell Order Type: Unknown("..value..")"
end

-- Dissect: Sell Order Type
athex_athexsecurities_realtime_ids_v5_2.sell_order_type.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.sell_order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.sell_order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_order_type, range, value, display)

  return offset + length, value
end

-- Side
athex_athexsecurities_realtime_ids_v5_2.side = {}

-- Size: Side
athex_athexsecurities_realtime_ids_v5_2.side.size = 1

-- Display: Side
athex_athexsecurities_realtime_ids_v5_2.side.labels = {
  ["B"] = "Side: Buy (B)",
  ["S"] = "Side: Sell (S)",
}

athex_athexsecurities_realtime_ids_v5_2.side.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
athex_athexsecurities_realtime_ids_v5_2.side.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.side, range, value, display)

  return offset + length, value
end

-- Soh
athex_athexsecurities_realtime_ids_v5_2.soh = {}

-- Size: Soh
athex_athexsecurities_realtime_ids_v5_2.soh.size = 1

-- Display: Soh
athex_athexsecurities_realtime_ids_v5_2.soh.display = function(value)
  if value == 1 then
    return "Soh: Start Of Header"
  end

  return "Soh: Unknown("..value..")"
end

-- Dissect: Soh
athex_athexsecurities_realtime_ids_v5_2.soh.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.soh.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = athex_athexsecurities_realtime_ids_v5_2.soh.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.soh, range, value, display)

  return offset + length, value
end

-- Special Conditions
athex_athexsecurities_realtime_ids_v5_2.special_conditions = {}

-- Size: Special Conditions
athex_athexsecurities_realtime_ids_v5_2.special_conditions.size = 1

-- Display: Special Conditions
athex_athexsecurities_realtime_ids_v5_2.special_conditions.labels = {
  ["N"] = "Special Conditions: None (N)",
  ["F"] = "Special Conditions: Fill Or Kill (F)",
  ["I"] = "Special Conditions: Immediate Or Cancel (I)",
  ["S"] = "Special Conditions: Stop Instrument (S)",
  ["D"] = "Special Conditions: Stop Index (D)",
  ["A"] = "Special Conditions: All Or None (A)",
  ["M"] = "Special Conditions: Minimum Fill (M)",
  ["O"] = "Special Conditions: Multiple Of (O)",
}

athex_athexsecurities_realtime_ids_v5_2.special_conditions.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.special_conditions.labels[value] or "Special Conditions: Unknown("..value..")"
end

-- Dissect: Special Conditions
athex_athexsecurities_realtime_ids_v5_2.special_conditions.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.special_conditions.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.special_conditions.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.special_conditions, range, value, display)

  return offset + length, value
end

-- Start Of Day Price
athex_athexsecurities_realtime_ids_v5_2.start_of_day_price = {}

-- Size: Start Of Day Price
athex_athexsecurities_realtime_ids_v5_2.start_of_day_price.size = 9

-- Display: Start Of Day Price
athex_athexsecurities_realtime_ids_v5_2.start_of_day_price.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.start_of_day_price.size):string(), 4)

  if text == nil then
    return "Start Of Day Price: "..tostring(value)
  end

  return "Start Of Day Price: "..text
end

-- Dissect: Start Of Day Price
athex_athexsecurities_realtime_ids_v5_2.start_of_day_price.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.start_of_day_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.start_of_day_price, range, value, "Start Of Day Price: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Start Of Day Price is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/10000

  local display = athex_athexsecurities_realtime_ids_v5_2.start_of_day_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.start_of_day_price, range, value, display)

  return offset + length, value
end

-- Symbol
athex_athexsecurities_realtime_ids_v5_2.symbol = {}

-- Size: Symbol
athex_athexsecurities_realtime_ids_v5_2.symbol.size = 15

-- Display: Symbol
athex_athexsecurities_realtime_ids_v5_2.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
athex_athexsecurities_realtime_ids_v5_2.symbol.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexsecurities_realtime_ids_v5_2.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.symbol, range, value, display)

  return offset + length, value
end

-- Text Size In English
athex_athexsecurities_realtime_ids_v5_2.text_size_in_english = {}

-- Size: Text Size In English
athex_athexsecurities_realtime_ids_v5_2.text_size_in_english.size = 5

-- Display: Text Size In English
athex_athexsecurities_realtime_ids_v5_2.text_size_in_english.display = function(value)
  return "Text Size In English: "..value
end

-- Dissect: Text Size In English
athex_athexsecurities_realtime_ids_v5_2.text_size_in_english.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.text_size_in_english.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.text_size_in_english, range, value, "Text Size In English: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Text Size In English is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = athex_athexsecurities_realtime_ids_v5_2.text_size_in_english.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.text_size_in_english, range, value, display)

  return offset + length, value
end

-- Text Size In Local
athex_athexsecurities_realtime_ids_v5_2.text_size_in_local = {}

-- Size: Text Size In Local
athex_athexsecurities_realtime_ids_v5_2.text_size_in_local.size = 5

-- Display: Text Size In Local
athex_athexsecurities_realtime_ids_v5_2.text_size_in_local.display = function(value)
  return "Text Size In Local: "..value
end

-- Dissect: Text Size In Local
athex_athexsecurities_realtime_ids_v5_2.text_size_in_local.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.text_size_in_local.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.text_size_in_local, range, value, "Text Size In Local: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Text Size In Local is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = athex_athexsecurities_realtime_ids_v5_2.text_size_in_local.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.text_size_in_local, range, value, display)

  return offset + length, value
end

-- Time Stamp
athex_athexsecurities_realtime_ids_v5_2.time_stamp = {}

-- Size: Time Stamp
athex_athexsecurities_realtime_ids_v5_2.time_stamp.size = 20

-- Dissect: Time Stamp
athex_athexsecurities_realtime_ids_v5_2.time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.time_stamp.size
  local range = buffer(offset, length)
  local text = range:string()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_athex_athexsecurities_realtime_ids_v5_2.fields.time_stamp
  if athex_athexsecurities_realtime_ids_v5_2.absolute_time_base == 1 then field = omi_athex_athexsecurities_realtime_ids_v5_2.fields.time_stamp_utc end

  -- Twenty digits read as a date; anything else leaves the parts nil
  local year, month, day, hour, minute, second, micros
  if #text == 20 and not text:find("%D") then
    year = tonumber(text:sub(1, 4))
    month = tonumber(text:sub(5, 6))
    day = tonumber(text:sub(7, 8))
    hour = tonumber(text:sub(9, 10))
    minute = tonumber(text:sub(11, 12))
    second = tonumber(text:sub(13, 14))
    micros = tonumber(text:sub(15, 20))
  end

  if year == nil or month < 1 or month > 12 or day < 1 or day > 31 then
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Time Stamp: " .. text)
    return offset + length, text
  end

  -- Days since the Unix epoch, by civil date arithmetic, in Utc
  local y = year - (month <= 2 and 1 or 0)
  local era = math.floor((y >= 0 and y or y - 399) / 400)
  local yoe = y - era * 400
  local doy = math.floor((153 * (month + (month > 2 and -3 or 9)) + 2) / 5) + day - 1
  local doe = yoe * 365 + math.floor(yoe / 4) - math.floor(yoe / 100) + doy
  local days = era * 146097 + doe - 719468

  local seconds = days * 86400 + hour * 3600 + minute * 60 + second
  local nanos = micros * 1000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, text
end

-- Total Value
athex_athexsecurities_realtime_ids_v5_2.total_value = {}

-- Size: Total Value
athex_athexsecurities_realtime_ids_v5_2.total_value.size = 17

-- Display: Total Value
athex_athexsecurities_realtime_ids_v5_2.total_value.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.total_value.size):string(), 2)

  if text == nil then
    return "Total Value: "..tostring(value)
  end

  return "Total Value: "..text
end

-- Dissect: Total Value
athex_athexsecurities_realtime_ids_v5_2.total_value.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.total_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.total_value, range, value, "Total Value: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Total Value is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = athex_athexsecurities_realtime_ids_v5_2.total_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.total_value, range, value, display)

  return offset + length, value
end

-- Total Volume
athex_athexsecurities_realtime_ids_v5_2.total_volume = {}

-- Size: Total Volume
athex_athexsecurities_realtime_ids_v5_2.total_volume.size = 17

-- Display: Total Volume
athex_athexsecurities_realtime_ids_v5_2.total_volume.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.total_volume.size):string(), 2)

  if text == nil then
    return "Total Volume: "..tostring(value)
  end

  return "Total Volume: "..text
end

-- Dissect: Total Volume
athex_athexsecurities_realtime_ids_v5_2.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.total_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.total_volume, range, value, "Total Volume: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Total Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = athex_athexsecurities_realtime_ids_v5_2.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Number
athex_athexsecurities_realtime_ids_v5_2.trade_number = {}

-- Size: Trade Number
athex_athexsecurities_realtime_ids_v5_2.trade_number.size = 6

-- Display: Trade Number
athex_athexsecurities_realtime_ids_v5_2.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
athex_athexsecurities_realtime_ids_v5_2.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.trade_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.trade_number, range, value, "Trade Number: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Trade Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = athex_athexsecurities_realtime_ids_v5_2.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Trade Source
athex_athexsecurities_realtime_ids_v5_2.trade_source = {}

-- Size: Trade Source
athex_athexsecurities_realtime_ids_v5_2.trade_source.size = 1

-- Display: Trade Source
athex_athexsecurities_realtime_ids_v5_2.trade_source.labels = {
  ["T"] = "Trade Source: Trading Platform (T)",
  ["C"] = "Trade Source: Clearing System (C)",
}

athex_athexsecurities_realtime_ids_v5_2.trade_source.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.trade_source.labels[value] or "Trade Source: Unknown("..value..")"
end

-- Dissect: Trade Source
athex_athexsecurities_realtime_ids_v5_2.trade_source.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.trade_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.trade_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.trade_source, range, value, display)

  return offset + length, value
end

-- Trade Type
athex_athexsecurities_realtime_ids_v5_2.trade_type = {}

-- Size: Trade Type
athex_athexsecurities_realtime_ids_v5_2.trade_type.size = 1

-- Display: Trade Type
athex_athexsecurities_realtime_ids_v5_2.trade_type.labels = {
  ["N"] = "Trade Type: New (N)",
  ["E"] = "Trade Type: Edit (E)",
  ["C"] = "Trade Type: Cancel (C)",
}

athex_athexsecurities_realtime_ids_v5_2.trade_type.display = function(value)
  return athex_athexsecurities_realtime_ids_v5_2.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
athex_athexsecurities_realtime_ids_v5_2.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = athex_athexsecurities_realtime_ids_v5_2.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Vendor Identifier
athex_athexsecurities_realtime_ids_v5_2.vendor_identifier = {}

-- Size: Vendor Identifier
athex_athexsecurities_realtime_ids_v5_2.vendor_identifier.size = 2

-- Display: Vendor Identifier
athex_athexsecurities_realtime_ids_v5_2.vendor_identifier.display = function(value)
  return "Vendor Identifier: "..value
end

-- Dissect: Vendor Identifier
athex_athexsecurities_realtime_ids_v5_2.vendor_identifier.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.vendor_identifier.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexsecurities_realtime_ids_v5_2.vendor_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.vendor_identifier, range, value, display)

  return offset + length, value
end

-- Venue ID
athex_athexsecurities_realtime_ids_v5_2.venue_id = {}

-- Size: Venue ID
athex_athexsecurities_realtime_ids_v5_2.venue_id.size = 4

-- Display: Venue ID
athex_athexsecurities_realtime_ids_v5_2.venue_id.display = function(value)
  return "Venue ID: "..value
end

-- Dissect: Venue ID
athex_athexsecurities_realtime_ids_v5_2.venue_id.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.venue_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = athex_athexsecurities_realtime_ids_v5_2.venue_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.venue_id, range, value, display)

  return offset + length, value
end

-- Volume
athex_athexsecurities_realtime_ids_v5_2.volume = {}

-- Size: Volume
athex_athexsecurities_realtime_ids_v5_2.volume.size = 17

-- Display: Volume
athex_athexsecurities_realtime_ids_v5_2.volume.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, athex_athexsecurities_realtime_ids_v5_2.volume.size):string(), 2)

  if text == nil then
    return "Volume: "..tostring(value)
  end

  return "Volume: "..text
end

-- Dissect: Volume
athex_athexsecurities_realtime_ids_v5_2.volume.dissect = function(buffer, offset, packet, parent)
  local length = athex_athexsecurities_realtime_ids_v5_2.volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.volume, range, value, "Volume: Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Volume is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = athex_athexsecurities_realtime_ids_v5_2.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Athex AthexSecurities RealTime Ids 5.2
-----------------------------------------------------------------------

-- Exchange Notifications Message
athex_athexsecurities_realtime_ids_v5_2.exchange_notifications_message = {}

-- Calculate size of: Exchange Notifications Message
athex_athexsecurities_realtime_ids_v5_2.exchange_notifications_message.size = function(buffer, offset)
  local index = 0

  index = index + athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_english.size

  index = index + athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_local.size

  index = index + athex_athexsecurities_realtime_ids_v5_2.text_size_in_english.size

  index = index + athex_athexsecurities_realtime_ids_v5_2.text_size_in_local.size

  -- Parse runtime size of: English Notification Text
  index = index + buffer(offset + index - 10, 5):string()

  -- Parse runtime size of: Local Notification Text
  index = index + buffer(offset + 149, 5):string()

  return index
end

-- Display: Exchange Notifications Message
athex_athexsecurities_realtime_ids_v5_2.exchange_notifications_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Exchange Notifications Message
athex_athexsecurities_realtime_ids_v5_2.exchange_notifications_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Headline In English: Alpha characters
  index, notification_headline_in_english = athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_english.dissect(buffer, index, packet, parent)

  -- Notification Headline In Local: Alpha characters
  index, notification_headline_in_local = athex_athexsecurities_realtime_ids_v5_2.notification_headline_in_local.dissect(buffer, index, packet, parent)

  -- Text Size In English: Numeric Characters
  index, text_size_in_english = athex_athexsecurities_realtime_ids_v5_2.text_size_in_english.dissect(buffer, index, packet, parent)

  -- Text Size In Local: Numeric Characters
  index, text_size_in_local = athex_athexsecurities_realtime_ids_v5_2.text_size_in_local.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: English Notification Text
  index, english_notification_text = athex_athexsecurities_realtime_ids_v5_2.english_notification_text.dissect(buffer, index, packet, parent, text_size_in_english)

  -- Runtime Size Of: Local Notification Text
  index, local_notification_text = athex_athexsecurities_realtime_ids_v5_2.local_notification_text.dissect(buffer, index, packet, parent, text_size_in_local)

  return index
end

-- Dissect: Exchange Notifications Message
athex_athexsecurities_realtime_ids_v5_2.exchange_notifications_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.exchange_notifications_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.exchange_notifications_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.exchange_notifications_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.exchange_notifications_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancelled Order Message
athex_athexsecurities_realtime_ids_v5_2.cancelled_order_message = {}

-- Size: Cancelled Order Message
athex_athexsecurities_realtime_ids_v5_2.cancelled_order_message.size =
  athex_athexsecurities_realtime_ids_v5_2.symbol.size + 
  athex_athexsecurities_realtime_ids_v5_2.board_id.size + 
  athex_athexsecurities_realtime_ids_v5_2.order_number.size + 
  athex_athexsecurities_realtime_ids_v5_2.order_entry_date.size + 
  athex_athexsecurities_realtime_ids_v5_2.side.size + 
  athex_athexsecurities_realtime_ids_v5_2.volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.matched_volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.price.size + 
  athex_athexsecurities_realtime_ids_v5_2.original_price_type.size + 
  athex_athexsecurities_realtime_ids_v5_2.order_lifetime.size + 
  athex_athexsecurities_realtime_ids_v5_2.special_conditions.size + 
  athex_athexsecurities_realtime_ids_v5_2.condition_volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.order_type.size + 
  athex_athexsecurities_realtime_ids_v5_2.time_stamp.size

-- Display: Cancelled Order Message
athex_athexsecurities_realtime_ids_v5_2.cancelled_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancelled Order Message
athex_athexsecurities_realtime_ids_v5_2.cancelled_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha character
  index, symbol = athex_athexsecurities_realtime_ids_v5_2.symbol.dissect(buffer, index, packet, parent)

  -- Board Id: Alpha character
  index, board_id = athex_athexsecurities_realtime_ids_v5_2.board_id.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric Characters
  index, order_number = athex_athexsecurities_realtime_ids_v5_2.order_number.dissect(buffer, index, packet, parent)

  -- Order Entry Date: DATE
  index, order_entry_date = athex_athexsecurities_realtime_ids_v5_2.order_entry_date.dissect(buffer, index, packet, parent)

  -- Side: Alpha character
  index, side = athex_athexsecurities_realtime_ids_v5_2.side.dissect(buffer, index, packet, parent)

  -- Volume: Numeric Characters
  index, volume = athex_athexsecurities_realtime_ids_v5_2.volume.dissect(buffer, index, packet, parent)

  -- Matched Volume: Numeric Characters
  index, matched_volume = athex_athexsecurities_realtime_ids_v5_2.matched_volume.dissect(buffer, index, packet, parent)

  -- Price: PRICE
  index, price = athex_athexsecurities_realtime_ids_v5_2.price.dissect(buffer, index, packet, parent)

  -- Original Price Type: Alpha character
  index, original_price_type = athex_athexsecurities_realtime_ids_v5_2.original_price_type.dissect(buffer, index, packet, parent)

  -- Order Lifetime: Alpha character
  index, order_lifetime = athex_athexsecurities_realtime_ids_v5_2.order_lifetime.dissect(buffer, index, packet, parent)

  -- Special Conditions: Alpha character
  index, special_conditions = athex_athexsecurities_realtime_ids_v5_2.special_conditions.dissect(buffer, index, packet, parent)

  -- Condition Volume: Numeric Characters
  index, condition_volume = athex_athexsecurities_realtime_ids_v5_2.condition_volume.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha character
  index, order_type = athex_athexsecurities_realtime_ids_v5_2.order_type.dissect(buffer, index, packet, parent)

  -- Time Stamp: DATETIME
  index, time_stamp = athex_athexsecurities_realtime_ids_v5_2.time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancelled Order Message
athex_athexsecurities_realtime_ids_v5_2.cancelled_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.cancelled_order_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.cancelled_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.cancelled_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.cancelled_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Message
athex_athexsecurities_realtime_ids_v5_2.order_message = {}

-- Size: Order Message
athex_athexsecurities_realtime_ids_v5_2.order_message.size =
  athex_athexsecurities_realtime_ids_v5_2.symbol.size + 
  athex_athexsecurities_realtime_ids_v5_2.board_id.size + 
  athex_athexsecurities_realtime_ids_v5_2.order_number.size + 
  athex_athexsecurities_realtime_ids_v5_2.order_entry_date.size + 
  athex_athexsecurities_realtime_ids_v5_2.order_status.size + 
  athex_athexsecurities_realtime_ids_v5_2.side.size + 
  athex_athexsecurities_realtime_ids_v5_2.volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.matched_volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.price.size + 
  athex_athexsecurities_realtime_ids_v5_2.original_price_type.size + 
  athex_athexsecurities_realtime_ids_v5_2.order_lifetime.size + 
  athex_athexsecurities_realtime_ids_v5_2.special_conditions.size + 
  athex_athexsecurities_realtime_ids_v5_2.condition_volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.order_release_date.size + 
  athex_athexsecurities_realtime_ids_v5_2.order_release_time.size + 
  athex_athexsecurities_realtime_ids_v5_2.last_order_update_date.size + 
  athex_athexsecurities_realtime_ids_v5_2.order_type.size + 
  athex_athexsecurities_realtime_ids_v5_2.time_stamp.size

-- Display: Order Message
athex_athexsecurities_realtime_ids_v5_2.order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Message
athex_athexsecurities_realtime_ids_v5_2.order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha character
  index, symbol = athex_athexsecurities_realtime_ids_v5_2.symbol.dissect(buffer, index, packet, parent)

  -- Board Id: Alpha character
  index, board_id = athex_athexsecurities_realtime_ids_v5_2.board_id.dissect(buffer, index, packet, parent)

  -- Order Number: Numeric Characters
  index, order_number = athex_athexsecurities_realtime_ids_v5_2.order_number.dissect(buffer, index, packet, parent)

  -- Order Entry Date: DATE
  index, order_entry_date = athex_athexsecurities_realtime_ids_v5_2.order_entry_date.dissect(buffer, index, packet, parent)

  -- Order Status: Alpha Characters
  index, order_status = athex_athexsecurities_realtime_ids_v5_2.order_status.dissect(buffer, index, packet, parent)

  -- Side: Alpha character
  index, side = athex_athexsecurities_realtime_ids_v5_2.side.dissect(buffer, index, packet, parent)

  -- Volume: Numeric Characters
  index, volume = athex_athexsecurities_realtime_ids_v5_2.volume.dissect(buffer, index, packet, parent)

  -- Matched Volume: Numeric Characters
  index, matched_volume = athex_athexsecurities_realtime_ids_v5_2.matched_volume.dissect(buffer, index, packet, parent)

  -- Price: PRICE
  index, price = athex_athexsecurities_realtime_ids_v5_2.price.dissect(buffer, index, packet, parent)

  -- Original Price Type: Alpha character
  index, original_price_type = athex_athexsecurities_realtime_ids_v5_2.original_price_type.dissect(buffer, index, packet, parent)

  -- Order Lifetime: Alpha character
  index, order_lifetime = athex_athexsecurities_realtime_ids_v5_2.order_lifetime.dissect(buffer, index, packet, parent)

  -- Special Conditions: Alpha character
  index, special_conditions = athex_athexsecurities_realtime_ids_v5_2.special_conditions.dissect(buffer, index, packet, parent)

  -- Condition Volume: Numeric Characters
  index, condition_volume = athex_athexsecurities_realtime_ids_v5_2.condition_volume.dissect(buffer, index, packet, parent)

  -- Order Release Date: DATE
  index, order_release_date = athex_athexsecurities_realtime_ids_v5_2.order_release_date.dissect(buffer, index, packet, parent)

  -- Order Release Time: TIME
  index, order_release_time = athex_athexsecurities_realtime_ids_v5_2.order_release_time.dissect(buffer, index, packet, parent)

  -- Last Order Update Date: DATE
  index, last_order_update_date = athex_athexsecurities_realtime_ids_v5_2.last_order_update_date.dissect(buffer, index, packet, parent)

  -- Order Type: Alpha character
  index, order_type = athex_athexsecurities_realtime_ids_v5_2.order_type.dissect(buffer, index, packet, parent)

  -- Time Stamp: DATETIME
  index, time_stamp = athex_athexsecurities_realtime_ids_v5_2.time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Message
athex_athexsecurities_realtime_ids_v5_2.order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.order_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.order_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Status Message
athex_athexsecurities_realtime_ids_v5_2.market_status_message = {}

-- Size: Market Status Message
athex_athexsecurities_realtime_ids_v5_2.market_status_message.size =
  athex_athexsecurities_realtime_ids_v5_2.market_id.size + 
  athex_athexsecurities_realtime_ids_v5_2.market_status.size

-- Display: Market Status Message
athex_athexsecurities_realtime_ids_v5_2.market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status Message
athex_athexsecurities_realtime_ids_v5_2.market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Alpha character
  index, market_id = athex_athexsecurities_realtime_ids_v5_2.market_id.dissect(buffer, index, packet, parent)

  -- Market Status: Alpha character
  index, market_status = athex_athexsecurities_realtime_ids_v5_2.market_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Message
athex_athexsecurities_realtime_ids_v5_2.market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.market_status_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument State Message
athex_athexsecurities_realtime_ids_v5_2.instrument_state_message = {}

-- Size: Instrument State Message
athex_athexsecurities_realtime_ids_v5_2.instrument_state_message.size =
  athex_athexsecurities_realtime_ids_v5_2.symbol.size + 
  athex_athexsecurities_realtime_ids_v5_2.phase_id.size + 
  athex_athexsecurities_realtime_ids_v5_2.instrument_status.size + 
  athex_athexsecurities_realtime_ids_v5_2.halt_suspend_reason.size + 
  athex_athexsecurities_realtime_ids_v5_2.time_stamp.size

-- Display: Instrument State Message
athex_athexsecurities_realtime_ids_v5_2.instrument_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument State Message
athex_athexsecurities_realtime_ids_v5_2.instrument_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha character
  index, symbol = athex_athexsecurities_realtime_ids_v5_2.symbol.dissect(buffer, index, packet, parent)

  -- Phase Id: Alpha character
  index, phase_id = athex_athexsecurities_realtime_ids_v5_2.phase_id.dissect(buffer, index, packet, parent)

  -- Instrument Status: Alpha character
  index, instrument_status = athex_athexsecurities_realtime_ids_v5_2.instrument_status.dissect(buffer, index, packet, parent)

  -- Halt Suspend Reason: Alpha character
  index, halt_suspend_reason = athex_athexsecurities_realtime_ids_v5_2.halt_suspend_reason.dissect(buffer, index, packet, parent)

  -- Time Stamp: DATETIME
  index, time_stamp = athex_athexsecurities_realtime_ids_v5_2.time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument State Message
athex_athexsecurities_realtime_ids_v5_2.instrument_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.instrument_state_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.instrument_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.instrument_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.instrument_state_message.fields(buffer, offset, packet, parent)
  end
end

-- High Low Limit Modification Message
athex_athexsecurities_realtime_ids_v5_2.high_low_limit_modification_message = {}

-- Size: High Low Limit Modification Message
athex_athexsecurities_realtime_ids_v5_2.high_low_limit_modification_message.size =
  athex_athexsecurities_realtime_ids_v5_2.symbol.size + 
  athex_athexsecurities_realtime_ids_v5_2.ceiling_price.size + 
  athex_athexsecurities_realtime_ids_v5_2.floor_price.size + 
  athex_athexsecurities_realtime_ids_v5_2.start_of_day_price.size + 
  athex_athexsecurities_realtime_ids_v5_2.accrued_interest.size

-- Display: High Low Limit Modification Message
athex_athexsecurities_realtime_ids_v5_2.high_low_limit_modification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: High Low Limit Modification Message
athex_athexsecurities_realtime_ids_v5_2.high_low_limit_modification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha character
  index, symbol = athex_athexsecurities_realtime_ids_v5_2.symbol.dissect(buffer, index, packet, parent)

  -- Ceiling Price: PRICE
  index, ceiling_price = athex_athexsecurities_realtime_ids_v5_2.ceiling_price.dissect(buffer, index, packet, parent)

  -- Floor Price: PRICE
  index, floor_price = athex_athexsecurities_realtime_ids_v5_2.floor_price.dissect(buffer, index, packet, parent)

  -- Start Of Day Price: PRICE
  index, start_of_day_price = athex_athexsecurities_realtime_ids_v5_2.start_of_day_price.dissect(buffer, index, packet, parent)

  -- Accrued Interest: Numeric Characters
  index, accrued_interest = athex_athexsecurities_realtime_ids_v5_2.accrued_interest.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: High Low Limit Modification Message
athex_athexsecurities_realtime_ids_v5_2.high_low_limit_modification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.high_low_limit_modification_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.high_low_limit_modification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.high_low_limit_modification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.high_low_limit_modification_message.fields(buffer, offset, packet, parent)
  end
end

-- Projected Auction Auction Open Projected Close Price Message
athex_athexsecurities_realtime_ids_v5_2.projected_auction_auction_open_projected_close_price_message = {}

-- Size: Projected Auction Auction Open Projected Close Price Message
athex_athexsecurities_realtime_ids_v5_2.projected_auction_auction_open_projected_close_price_message.size =
  athex_athexsecurities_realtime_ids_v5_2.symbol.size + 
  athex_athexsecurities_realtime_ids_v5_2.price_flag.size + 
  athex_athexsecurities_realtime_ids_v5_2.price.size + 
  athex_athexsecurities_realtime_ids_v5_2.volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.time_stamp.size

-- Display: Projected Auction Auction Open Projected Close Price Message
athex_athexsecurities_realtime_ids_v5_2.projected_auction_auction_open_projected_close_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Projected Auction Auction Open Projected Close Price Message
athex_athexsecurities_realtime_ids_v5_2.projected_auction_auction_open_projected_close_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha character
  index, symbol = athex_athexsecurities_realtime_ids_v5_2.symbol.dissect(buffer, index, packet, parent)

  -- Price Flag: Alpha character
  index, price_flag = athex_athexsecurities_realtime_ids_v5_2.price_flag.dissect(buffer, index, packet, parent)

  -- Price: PRICE
  index, price = athex_athexsecurities_realtime_ids_v5_2.price.dissect(buffer, index, packet, parent)

  -- Volume: Numeric Characters
  index, volume = athex_athexsecurities_realtime_ids_v5_2.volume.dissect(buffer, index, packet, parent)

  -- Time Stamp: DATETIME
  index, time_stamp = athex_athexsecurities_realtime_ids_v5_2.time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Projected Auction Auction Open Projected Close Price Message
athex_athexsecurities_realtime_ids_v5_2.projected_auction_auction_open_projected_close_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.projected_auction_auction_open_projected_close_price_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.projected_auction_auction_open_projected_close_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.projected_auction_auction_open_projected_close_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.projected_auction_auction_open_projected_close_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Closing Price Message
athex_athexsecurities_realtime_ids_v5_2.closing_price_message = {}

-- Size: Closing Price Message
athex_athexsecurities_realtime_ids_v5_2.closing_price_message.size =
  athex_athexsecurities_realtime_ids_v5_2.symbol.size + 
  athex_athexsecurities_realtime_ids_v5_2.closing.size + 
  athex_athexsecurities_realtime_ids_v5_2.open_interest.size

-- Display: Closing Price Message
athex_athexsecurities_realtime_ids_v5_2.closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Price Message
athex_athexsecurities_realtime_ids_v5_2.closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha character
  index, symbol = athex_athexsecurities_realtime_ids_v5_2.symbol.dissect(buffer, index, packet, parent)

  -- Closing: PRICE
  index, closing = athex_athexsecurities_realtime_ids_v5_2.closing.dissect(buffer, index, packet, parent)

  -- Open Interest: Numeric characters
  index, open_interest = athex_athexsecurities_realtime_ids_v5_2.open_interest.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Price Message
athex_athexsecurities_realtime_ids_v5_2.closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.closing_price_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Sell Waiver Indicator
athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator = {}

-- Size: Sell Waiver Indicator
athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator.size = 4

-- Display: Sell Waiver Indicator
athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Rfpt flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    flags[#flags + 1] = "Rfpt"
  end
  -- Is Nliq flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    flags[#flags + 1] = "Nliq"
  end
  -- Is Oilq flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    flags[#flags + 1] = "Oilq"
  end
  -- Is Pric flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    flags[#flags + 1] = "Pric"
  end
  -- Is Size flag set?
  if bit.band(value, 0x00000010) ~= 0 then
    flags[#flags + 1] = "Size"
  end
  -- Is Ilqd flag set?
  if bit.band(value, 0x00000020) ~= 0 then
    flags[#flags + 1] = "Ilqd"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Sell Waiver Indicator
athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator.bits = function(range, value, packet, parent)

  -- Rfpt: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.rfpt, range, value)

  -- Nliq: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.nliq, range, value)

  -- Oilq: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.oilq, range, value)

  -- Pric: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.pric, range, value)

  -- Size: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.size, range, value)

  -- Ilqd: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.ilqd, range, value)
end

-- Dissect: Sell Waiver Indicator
athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator.dissect = function(buffer, offset, packet, parent)
  local size = athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator.size
  local range = buffer(offset, size)
  local value = tonumber(range:string())

  if value == nil then
    -- Digits that are no number: label it so, flag the protocol expert, add no bits
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_waiver_indicator, range, "Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Sell Waiver Indicator is not a number: '"..range:string().."'")
    return offset + size, 0
  end
  local display = athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.sell_waiver_indicator, range, display)

  if show.structs then
    athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Buy Waiver Indicator
athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator = {}

-- Size: Buy Waiver Indicator
athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator.size = 4

-- Display: Buy Waiver Indicator
athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Rfpt flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    flags[#flags + 1] = "Rfpt"
  end
  -- Is Nliq flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    flags[#flags + 1] = "Nliq"
  end
  -- Is Oilq flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    flags[#flags + 1] = "Oilq"
  end
  -- Is Pric flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    flags[#flags + 1] = "Pric"
  end
  -- Is Size flag set?
  if bit.band(value, 0x00000010) ~= 0 then
    flags[#flags + 1] = "Size"
  end
  -- Is Ilqd flag set?
  if bit.band(value, 0x00000020) ~= 0 then
    flags[#flags + 1] = "Ilqd"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Buy Waiver Indicator
athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator.bits = function(range, value, packet, parent)

  -- Rfpt: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.rfpt, range, value)

  -- Nliq: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.nliq, range, value)

  -- Oilq: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.oilq, range, value)

  -- Pric: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.pric, range, value)

  -- Size: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.size, range, value)

  -- Ilqd: 1 Bit
  parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.ilqd, range, value)
end

-- Dissect: Buy Waiver Indicator
athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator.dissect = function(buffer, offset, packet, parent)
  local size = athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator.size
  local range = buffer(offset, size)
  local value = tonumber(range:string())

  if value == nil then
    -- Digits that are no number: label it so, flag the protocol expert, add no bits
    local item = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_waiver_indicator, range, "Not Applicable")
    item:add_proto_expert_info(athex_athexsecurities_realtime_ids_v5_2.experts.not_a_number, "Buy Waiver Indicator is not a number: '"..range:string().."'")
    return offset + size, 0
  end
  local display = athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.buy_waiver_indicator, range, display)

  if show.structs then
    athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Cancelled Trade Message
athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_message = {}

-- Size: Cancelled Trade Message
athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_message.size =
  athex_athexsecurities_realtime_ids_v5_2.symbol.size + 
  athex_athexsecurities_realtime_ids_v5_2.board_id.size + 
  athex_athexsecurities_realtime_ids_v5_2.trade_number.size + 
  athex_athexsecurities_realtime_ids_v5_2.buy_order_number.size + 
  athex_athexsecurities_realtime_ids_v5_2.buy_order_date.size + 
  athex_athexsecurities_realtime_ids_v5_2.sell_order_number.size + 
  athex_athexsecurities_realtime_ids_v5_2.sell_order_date.size + 
  athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_price.size + 
  athex_athexsecurities_realtime_ids_v5_2.cancelled_volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.total_volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.trade_type.size + 
  athex_athexsecurities_realtime_ids_v5_2.trade_source.size + 
  athex_athexsecurities_realtime_ids_v5_2.buy_order_type.size + 
  athex_athexsecurities_realtime_ids_v5_2.sell_order_type.size + 
  athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator.size + 
  athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator.size + 
  athex_athexsecurities_realtime_ids_v5_2.notional_amount.size + 
  athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag.size + 
  athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag.size + 
  athex_athexsecurities_realtime_ids_v5_2.sdiv_flag.size + 
  athex_athexsecurities_realtime_ids_v5_2.dupl_flag.size + 
  athex_athexsecurities_realtime_ids_v5_2.time_stamp.size

-- Display: Cancelled Trade Message
athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancelled Trade Message
athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha character
  index, symbol = athex_athexsecurities_realtime_ids_v5_2.symbol.dissect(buffer, index, packet, parent)

  -- Board Id: Alpha character
  index, board_id = athex_athexsecurities_realtime_ids_v5_2.board_id.dissect(buffer, index, packet, parent)

  -- Trade Number: Numeric Characters
  index, trade_number = athex_athexsecurities_realtime_ids_v5_2.trade_number.dissect(buffer, index, packet, parent)

  -- Buy Order Number: Numeric Characters
  index, buy_order_number = athex_athexsecurities_realtime_ids_v5_2.buy_order_number.dissect(buffer, index, packet, parent)

  -- Buy Order Date: DATE
  index, buy_order_date = athex_athexsecurities_realtime_ids_v5_2.buy_order_date.dissect(buffer, index, packet, parent)

  -- Sell Order Number: Numeric Characters
  index, sell_order_number = athex_athexsecurities_realtime_ids_v5_2.sell_order_number.dissect(buffer, index, packet, parent)

  -- Sell Order Date: DATE
  index, sell_order_date = athex_athexsecurities_realtime_ids_v5_2.sell_order_date.dissect(buffer, index, packet, parent)

  -- Cancelled Trade Price: PRICE
  index, cancelled_trade_price = athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_price.dissect(buffer, index, packet, parent)

  -- Cancelled Volume: Numeric Characters
  index, cancelled_volume = athex_athexsecurities_realtime_ids_v5_2.cancelled_volume.dissect(buffer, index, packet, parent)

  -- Total Volume: Numeric Characters
  index, total_volume = athex_athexsecurities_realtime_ids_v5_2.total_volume.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha Character
  index, trade_type = athex_athexsecurities_realtime_ids_v5_2.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Source: Alpha Character
  index, trade_source = athex_athexsecurities_realtime_ids_v5_2.trade_source.dissect(buffer, index, packet, parent)

  -- Buy Order Type: Alpha character
  index, buy_order_type = athex_athexsecurities_realtime_ids_v5_2.buy_order_type.dissect(buffer, index, packet, parent)

  -- Sell Order Type: Alpha character
  index, sell_order_type = athex_athexsecurities_realtime_ids_v5_2.sell_order_type.dissect(buffer, index, packet, parent)

  -- Buy Waiver Indicator: Struct of 6 fields
  index, buy_waiver_indicator = athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator.dissect(buffer, index, packet, parent)

  -- Sell Waiver Indicator: Struct of 6 fields
  index, sell_waiver_indicator = athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator.dissect(buffer, index, packet, parent)

  -- Notional Amount: Numeric Characters
  index, notional_amount = athex_athexsecurities_realtime_ids_v5_2.notional_amount.dissect(buffer, index, packet, parent)

  -- Buy Algo Flag: Alpha character
  index, buy_algo_flag = athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag.dissect(buffer, index, packet, parent)

  -- Sell Algo Flag: Alpha character
  index, sell_algo_flag = athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag.dissect(buffer, index, packet, parent)

  -- Sdiv Flag: Alpha character
  index, sdiv_flag = athex_athexsecurities_realtime_ids_v5_2.sdiv_flag.dissect(buffer, index, packet, parent)

  -- Dupl Flag: Alpha character
  index, dupl_flag = athex_athexsecurities_realtime_ids_v5_2.dupl_flag.dissect(buffer, index, packet, parent)

  -- Time Stamp: DATETIME
  index, time_stamp = athex_athexsecurities_realtime_ids_v5_2.time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancelled Trade Message
athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.cancelled_trade_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Summary Message
athex_athexsecurities_realtime_ids_v5_2.instrument_summary_message = {}

-- Size: Instrument Summary Message
athex_athexsecurities_realtime_ids_v5_2.instrument_summary_message.size =
  athex_athexsecurities_realtime_ids_v5_2.symbol.size + 
  athex_athexsecurities_realtime_ids_v5_2.opening_price.size + 
  athex_athexsecurities_realtime_ids_v5_2.high.size + 
  athex_athexsecurities_realtime_ids_v5_2.low.size + 
  athex_athexsecurities_realtime_ids_v5_2.last.size + 
  athex_athexsecurities_realtime_ids_v5_2.closing_price.size + 
  athex_athexsecurities_realtime_ids_v5_2.start_of_day_price.size + 
  athex_athexsecurities_realtime_ids_v5_2.total_volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.total_value.size

-- Display: Instrument Summary Message
athex_athexsecurities_realtime_ids_v5_2.instrument_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Summary Message
athex_athexsecurities_realtime_ids_v5_2.instrument_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha character
  index, symbol = athex_athexsecurities_realtime_ids_v5_2.symbol.dissect(buffer, index, packet, parent)

  -- Opening Price: PRICE
  index, opening_price = athex_athexsecurities_realtime_ids_v5_2.opening_price.dissect(buffer, index, packet, parent)

  -- High: PRICE
  index, high = athex_athexsecurities_realtime_ids_v5_2.high.dissect(buffer, index, packet, parent)

  -- Low: PRICE
  index, low = athex_athexsecurities_realtime_ids_v5_2.low.dissect(buffer, index, packet, parent)

  -- Last: PRICE
  index, last = athex_athexsecurities_realtime_ids_v5_2.last.dissect(buffer, index, packet, parent)

  -- Closing Price: PRICE
  index, closing_price = athex_athexsecurities_realtime_ids_v5_2.closing_price.dissect(buffer, index, packet, parent)

  -- Start Of Day Price: PRICE
  index, start_of_day_price = athex_athexsecurities_realtime_ids_v5_2.start_of_day_price.dissect(buffer, index, packet, parent)

  -- Total Volume: Numeric Characters
  index, total_volume = athex_athexsecurities_realtime_ids_v5_2.total_volume.dissect(buffer, index, packet, parent)

  -- Total Value: Numeric Characters
  index, total_value = athex_athexsecurities_realtime_ids_v5_2.total_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Summary Message
athex_athexsecurities_realtime_ids_v5_2.instrument_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.instrument_summary_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.instrument_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.instrument_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.instrument_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Message
athex_athexsecurities_realtime_ids_v5_2.index_message = {}

-- Size: Index Message
athex_athexsecurities_realtime_ids_v5_2.index_message.size =
  athex_athexsecurities_realtime_ids_v5_2.symbol.size + 
  athex_athexsecurities_realtime_ids_v5_2.index_price.size

-- Display: Index Message
athex_athexsecurities_realtime_ids_v5_2.index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Message
athex_athexsecurities_realtime_ids_v5_2.index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha character
  index, symbol = athex_athexsecurities_realtime_ids_v5_2.symbol.dissect(buffer, index, packet, parent)

  -- Index Price: Numeric characters
  index, index_price = athex_athexsecurities_realtime_ids_v5_2.index_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Message
athex_athexsecurities_realtime_ids_v5_2.index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.index_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.index_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Level
athex_athexsecurities_realtime_ids_v5_2.quote_level = {}

-- Size: Quote Level
athex_athexsecurities_realtime_ids_v5_2.quote_level.size =
  athex_athexsecurities_realtime_ids_v5_2.bid_price.size + 
  athex_athexsecurities_realtime_ids_v5_2.bid_size.size + 
  athex_athexsecurities_realtime_ids_v5_2.bid_orders.size + 
  athex_athexsecurities_realtime_ids_v5_2.ask_price.size + 
  athex_athexsecurities_realtime_ids_v5_2.ask_size.size + 
  athex_athexsecurities_realtime_ids_v5_2.ask_orders.size

-- Display: Quote Level
athex_athexsecurities_realtime_ids_v5_2.quote_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Level
athex_athexsecurities_realtime_ids_v5_2.quote_level.fields = function(buffer, offset, packet, parent, quote_level_index)
  local index = offset

  -- Implicit Quote Level Index
  if quote_level_index ~= nil and show.indexes then
    local iteration = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.quote_level_index, quote_level_index)
    iteration:set_generated()
  end

  -- Bid Price: PRICE
  index, bid_price = athex_athexsecurities_realtime_ids_v5_2.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Numeric Characters
  index, bid_size = athex_athexsecurities_realtime_ids_v5_2.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Orders: Numeric characters
  index, bid_orders = athex_athexsecurities_realtime_ids_v5_2.bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price: PRICE
  index, ask_price = athex_athexsecurities_realtime_ids_v5_2.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Numeric Characters
  index, ask_size = athex_athexsecurities_realtime_ids_v5_2.ask_size.dissect(buffer, index, packet, parent)

  -- Ask Orders: Numeric characters
  index, ask_orders = athex_athexsecurities_realtime_ids_v5_2.ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Level
athex_athexsecurities_realtime_ids_v5_2.quote_level.dissect = function(buffer, offset, packet, parent, quote_level_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.quote_level, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.quote_level.fields(buffer, offset, packet, parent, quote_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.quote_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.quote_level.fields(buffer, offset, packet, parent, quote_level_index)
  end
end

-- Quote Message
athex_athexsecurities_realtime_ids_v5_2.quote_message = {}

-- Calculate size of: Quote Message
athex_athexsecurities_realtime_ids_v5_2.quote_message.size = function(buffer, offset)
  local index = 0

  index = index + athex_athexsecurities_realtime_ids_v5_2.symbol.size

  index = index + athex_athexsecurities_realtime_ids_v5_2.quote_levels.size

  -- Calculate field size from count
  local quote_level_count = buffer(offset + index - 3, 3):string()
  index = index + quote_level_count * 66

  return index
end

-- Display: Quote Message
athex_athexsecurities_realtime_ids_v5_2.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
athex_athexsecurities_realtime_ids_v5_2.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha character
  index, symbol = athex_athexsecurities_realtime_ids_v5_2.symbol.dissect(buffer, index, packet, parent)

  -- Quote Levels: Numeric characters
  index, quote_levels = athex_athexsecurities_realtime_ids_v5_2.quote_levels.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Level
  for quote_level_index = 1, quote_levels do
    index, quote_level = athex_athexsecurities_realtime_ids_v5_2.quote_level.dissect(buffer, index, packet, parent, quote_level_index)
  end

  return index
end

-- Dissect: Quote Message
athex_athexsecurities_realtime_ids_v5_2.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.quote_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
athex_athexsecurities_realtime_ids_v5_2.trade_message = {}

-- Size: Trade Message
athex_athexsecurities_realtime_ids_v5_2.trade_message.size =
  athex_athexsecurities_realtime_ids_v5_2.symbol.size + 
  athex_athexsecurities_realtime_ids_v5_2.board_id.size + 
  athex_athexsecurities_realtime_ids_v5_2.trade_number.size + 
  athex_athexsecurities_realtime_ids_v5_2.buy_order_number.size + 
  athex_athexsecurities_realtime_ids_v5_2.buy_order_date.size + 
  athex_athexsecurities_realtime_ids_v5_2.sell_order_number.size + 
  athex_athexsecurities_realtime_ids_v5_2.sell_order_date.size + 
  athex_athexsecurities_realtime_ids_v5_2.price.size + 
  athex_athexsecurities_realtime_ids_v5_2.volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.total_volume.size + 
  athex_athexsecurities_realtime_ids_v5_2.trade_type.size + 
  athex_athexsecurities_realtime_ids_v5_2.trade_source.size + 
  athex_athexsecurities_realtime_ids_v5_2.buy_order_type.size + 
  athex_athexsecurities_realtime_ids_v5_2.sell_order_type.size + 
  athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator.size + 
  athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator.size + 
  athex_athexsecurities_realtime_ids_v5_2.notional_amount.size + 
  athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag.size + 
  athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag.size + 
  athex_athexsecurities_realtime_ids_v5_2.sdiv_flag.size + 
  athex_athexsecurities_realtime_ids_v5_2.dupl_flag.size + 
  athex_athexsecurities_realtime_ids_v5_2.time_stamp.size

-- Display: Trade Message
athex_athexsecurities_realtime_ids_v5_2.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
athex_athexsecurities_realtime_ids_v5_2.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Alpha character
  index, symbol = athex_athexsecurities_realtime_ids_v5_2.symbol.dissect(buffer, index, packet, parent)

  -- Board Id: Alpha character
  index, board_id = athex_athexsecurities_realtime_ids_v5_2.board_id.dissect(buffer, index, packet, parent)

  -- Trade Number: Numeric Characters
  index, trade_number = athex_athexsecurities_realtime_ids_v5_2.trade_number.dissect(buffer, index, packet, parent)

  -- Buy Order Number: Numeric Characters
  index, buy_order_number = athex_athexsecurities_realtime_ids_v5_2.buy_order_number.dissect(buffer, index, packet, parent)

  -- Buy Order Date: DATE
  index, buy_order_date = athex_athexsecurities_realtime_ids_v5_2.buy_order_date.dissect(buffer, index, packet, parent)

  -- Sell Order Number: Numeric Characters
  index, sell_order_number = athex_athexsecurities_realtime_ids_v5_2.sell_order_number.dissect(buffer, index, packet, parent)

  -- Sell Order Date: DATE
  index, sell_order_date = athex_athexsecurities_realtime_ids_v5_2.sell_order_date.dissect(buffer, index, packet, parent)

  -- Price: PRICE
  index, price = athex_athexsecurities_realtime_ids_v5_2.price.dissect(buffer, index, packet, parent)

  -- Volume: Numeric Characters
  index, volume = athex_athexsecurities_realtime_ids_v5_2.volume.dissect(buffer, index, packet, parent)

  -- Total Volume: Numeric Characters
  index, total_volume = athex_athexsecurities_realtime_ids_v5_2.total_volume.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha Character
  index, trade_type = athex_athexsecurities_realtime_ids_v5_2.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Source: Alpha Character
  index, trade_source = athex_athexsecurities_realtime_ids_v5_2.trade_source.dissect(buffer, index, packet, parent)

  -- Buy Order Type: Alpha character
  index, buy_order_type = athex_athexsecurities_realtime_ids_v5_2.buy_order_type.dissect(buffer, index, packet, parent)

  -- Sell Order Type: Alpha character
  index, sell_order_type = athex_athexsecurities_realtime_ids_v5_2.sell_order_type.dissect(buffer, index, packet, parent)

  -- Buy Waiver Indicator: Struct of 6 fields
  index, buy_waiver_indicator = athex_athexsecurities_realtime_ids_v5_2.buy_waiver_indicator.dissect(buffer, index, packet, parent)

  -- Sell Waiver Indicator: Struct of 6 fields
  index, sell_waiver_indicator = athex_athexsecurities_realtime_ids_v5_2.sell_waiver_indicator.dissect(buffer, index, packet, parent)

  -- Notional Amount: Numeric Characters
  index, notional_amount = athex_athexsecurities_realtime_ids_v5_2.notional_amount.dissect(buffer, index, packet, parent)

  -- Buy Algo Flag: Alpha character
  index, buy_algo_flag = athex_athexsecurities_realtime_ids_v5_2.buy_algo_flag.dissect(buffer, index, packet, parent)

  -- Sell Algo Flag: Alpha character
  index, sell_algo_flag = athex_athexsecurities_realtime_ids_v5_2.sell_algo_flag.dissect(buffer, index, packet, parent)

  -- Sdiv Flag: Alpha character
  index, sdiv_flag = athex_athexsecurities_realtime_ids_v5_2.sdiv_flag.dissect(buffer, index, packet, parent)

  -- Dupl Flag: Alpha character
  index, dupl_flag = athex_athexsecurities_realtime_ids_v5_2.dupl_flag.dissect(buffer, index, packet, parent)

  -- Time Stamp: DATETIME
  index, time_stamp = athex_athexsecurities_realtime_ids_v5_2.time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
athex_athexsecurities_realtime_ids_v5_2.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.trade_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Line Verification Control Message
athex_athexsecurities_realtime_ids_v5_2.line_verification_control_message = {}

-- Display: Line Verification Control Message
athex_athexsecurities_realtime_ids_v5_2.line_verification_control_message.display = function(packet, parent, length)
  return "Line Verification Control Message"
end


-- Dissect: Line Verification Control Message
athex_athexsecurities_realtime_ids_v5_2.line_verification_control_message.dissect = function(buffer, offset, packet, parent)
  local display = athex_athexsecurities_realtime_ids_v5_2.line_verification_control_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- End Of Day Control Message
athex_athexsecurities_realtime_ids_v5_2.end_of_day_control_message = {}

-- Display: End Of Day Control Message
athex_athexsecurities_realtime_ids_v5_2.end_of_day_control_message.display = function(packet, parent, length)
  return "End Of Day Control Message"
end


-- Dissect: End Of Day Control Message
athex_athexsecurities_realtime_ids_v5_2.end_of_day_control_message.dissect = function(buffer, offset, packet, parent)
  local display = athex_athexsecurities_realtime_ids_v5_2.end_of_day_control_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Administrative Message
athex_athexsecurities_realtime_ids_v5_2.administrative_message = {}

-- Calculate size of: Administrative Message
athex_athexsecurities_realtime_ids_v5_2.administrative_message.size = function(buffer, offset)
  local index = 0

  -- Remaining size of: Free Text
  index = index + (buffer:len() - (offset + index))

  return index
end

-- Display: Administrative Message
athex_athexsecurities_realtime_ids_v5_2.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
athex_athexsecurities_realtime_ids_v5_2.administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime Size Of: Free Text
  local size_of_free_text = buffer:len() - index

  -- Free Text: TEXT
  index, free_text = athex_athexsecurities_realtime_ids_v5_2.free_text.dissect(buffer, index, packet, parent, size_of_free_text)

  return index
end

-- Dissect: Administrative Message
athex_athexsecurities_realtime_ids_v5_2.administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.administrative_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Control Message
athex_athexsecurities_realtime_ids_v5_2.start_of_day_control_message = {}

-- Display: Start Of Day Control Message
athex_athexsecurities_realtime_ids_v5_2.start_of_day_control_message.display = function(packet, parent, length)
  return "Start Of Day Control Message"
end


-- Dissect: Start Of Day Control Message
athex_athexsecurities_realtime_ids_v5_2.start_of_day_control_message.dissect = function(buffer, offset, packet, parent)
  local display = athex_athexsecurities_realtime_ids_v5_2.start_of_day_control_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Control Message Text
athex_athexsecurities_realtime_ids_v5_2.control_message_text = {}

-- Dissect: Control Message Text
athex_athexsecurities_realtime_ids_v5_2.control_message_text.dispatch = {
  ["A"] = athex_athexsecurities_realtime_ids_v5_2.start_of_day_control_message.dissect,
  ["F"] = athex_athexsecurities_realtime_ids_v5_2.administrative_message.dissect,
  ["H"] = athex_athexsecurities_realtime_ids_v5_2.end_of_day_control_message.dissect,
  ["T"] = athex_athexsecurities_realtime_ids_v5_2.line_verification_control_message.dissect,
}

athex_athexsecurities_realtime_ids_v5_2.control_message_text.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = athex_athexsecurities_realtime_ids_v5_2.control_message_text.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Message
athex_athexsecurities_realtime_ids_v5_2.control_message = {}

-- Calculate size of: Control Message
athex_athexsecurities_realtime_ids_v5_2.control_message.size = function(buffer, offset)
  local index = 0

  index = index + athex_athexsecurities_realtime_ids_v5_2.message_type.size

  -- Calculate runtime size of Control Message Text field
  local control_message_text_offset = offset + index
  local control_message_text_type = buffer(control_message_text_offset - 1, 1):string()
  index = index + athex_athexsecurities_realtime_ids_v5_2.control_message_text.size(buffer, control_message_text_offset, control_message_text_type)

  return index
end

-- Display: Control Message
athex_athexsecurities_realtime_ids_v5_2.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
athex_athexsecurities_realtime_ids_v5_2.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: Alpha character
  index, message_type = athex_athexsecurities_realtime_ids_v5_2.message_type.dissect(buffer, index, packet, parent)

  -- Control Message Text: Runtime Type with 4 branches
  index = athex_athexsecurities_realtime_ids_v5_2.control_message_text.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Control Message
athex_athexsecurities_realtime_ids_v5_2.control_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.control_message, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Text
athex_athexsecurities_realtime_ids_v5_2.message_text = {}

-- Dissect: Message Text
athex_athexsecurities_realtime_ids_v5_2.message_text.dispatch = {
  ["K"] = athex_athexsecurities_realtime_ids_v5_2.control_message.dissect,
  ["A"] = athex_athexsecurities_realtime_ids_v5_2.trade_message.dissect,
  ["B"] = athex_athexsecurities_realtime_ids_v5_2.quote_message.dissect,
  ["C"] = athex_athexsecurities_realtime_ids_v5_2.index_message.dissect,
  ["G"] = athex_athexsecurities_realtime_ids_v5_2.instrument_summary_message.dissect,
  ["I"] = athex_athexsecurities_realtime_ids_v5_2.cancelled_trade_message.dissect,
  ["L"] = athex_athexsecurities_realtime_ids_v5_2.closing_price_message.dissect,
  ["M"] = athex_athexsecurities_realtime_ids_v5_2.projected_auction_auction_open_projected_close_price_message.dissect,
  ["N"] = athex_athexsecurities_realtime_ids_v5_2.high_low_limit_modification_message.dissect,
  ["O"] = athex_athexsecurities_realtime_ids_v5_2.instrument_state_message.dissect,
  ["P"] = athex_athexsecurities_realtime_ids_v5_2.market_status_message.dissect,
  ["Q"] = athex_athexsecurities_realtime_ids_v5_2.order_message.dissect,
  ["R"] = athex_athexsecurities_realtime_ids_v5_2.cancelled_order_message.dissect,
  ["S"] = athex_athexsecurities_realtime_ids_v5_2.exchange_notifications_message.dissect,
}

athex_athexsecurities_realtime_ids_v5_2.message_text.dissect = function(buffer, offset, packet, parent, message_category)
  local dissect = athex_athexsecurities_realtime_ids_v5_2.message_text.dispatch[message_category]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
athex_athexsecurities_realtime_ids_v5_2.message_header = {}

-- Size: Message Header
athex_athexsecurities_realtime_ids_v5_2.message_header.size =
  athex_athexsecurities_realtime_ids_v5_2.vendor_identifier.size + 
  athex_athexsecurities_realtime_ids_v5_2.message_category.size + 
  athex_athexsecurities_realtime_ids_v5_2.message_subcategory.size + 
  athex_athexsecurities_realtime_ids_v5_2.venue_id.size + 
  athex_athexsecurities_realtime_ids_v5_2.message_sequence_number.size + 
  athex_athexsecurities_realtime_ids_v5_2.publication_timestamp.size

-- Display: Message Header
athex_athexsecurities_realtime_ids_v5_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
athex_athexsecurities_realtime_ids_v5_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Vendor Identifier: Characters
  index, vendor_identifier = athex_athexsecurities_realtime_ids_v5_2.vendor_identifier.dissect(buffer, index, packet, parent)

  -- Message Category: Character
  index, message_category = athex_athexsecurities_realtime_ids_v5_2.message_category.dissect(buffer, index, packet, parent)

  -- Message Subcategory: Character
  index, message_subcategory = athex_athexsecurities_realtime_ids_v5_2.message_subcategory.dissect(buffer, index, packet, parent)

  -- Venue ID: MIC
  index, venue_id = athex_athexsecurities_realtime_ids_v5_2.venue_id.dissect(buffer, index, packet, parent)

  -- Message Sequence Number: Numeric characters
  index, message_sequence_number = athex_athexsecurities_realtime_ids_v5_2.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Publication Timestamp: DATETIME
  index, publication_timestamp = athex_athexsecurities_realtime_ids_v5_2.publication_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
athex_athexsecurities_realtime_ids_v5_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2.fields.message_header, buffer(offset, 0))
    local index = athex_athexsecurities_realtime_ids_v5_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = athex_athexsecurities_realtime_ids_v5_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return athex_athexsecurities_realtime_ids_v5_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
athex_athexsecurities_realtime_ids_v5_2.packet = {}

-- Verify required size of Tcp packet
athex_athexsecurities_realtime_ids_v5_2.packet.requiredsize = function(buffer)
  return buffer:len() >= athex_athexsecurities_realtime_ids_v5_2.soh.size + athex_athexsecurities_realtime_ids_v5_2.message_header.size
end

-- Dissect Packet
athex_athexsecurities_realtime_ids_v5_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Soh: CHAR (1)
  index, soh = athex_athexsecurities_realtime_ids_v5_2.soh.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 6 fields
  index, message_header = athex_athexsecurities_realtime_ids_v5_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 33, 1):string()

  -- Message Text: Runtime Type with 14 branches
  index = athex_athexsecurities_realtime_ids_v5_2.message_text.dissect(buffer, index, packet, parent, message_category)

  -- Etx: CHAR (3)
  index, etx = athex_athexsecurities_realtime_ids_v5_2.etx.dissect(buffer, index, packet, parent)

  -- Lrc: Character
  index, lrc = athex_athexsecurities_realtime_ids_v5_2.lrc.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_athex_athexsecurities_realtime_ids_v5_2.init()
end

-- Dissector for Athex AthexSecurities RealTime Ids 5.2
function omi_athex_athexsecurities_realtime_ids_v5_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_athex_athexsecurities_realtime_ids_v5_2.name

  local length = buffer:len()
  local offset = 0

  -- Dissect each message the segment carries
  while offset < length do
    local protocol = parent:add(omi_athex_athexsecurities_realtime_ids_v5_2, buffer(offset), omi_athex_athexsecurities_realtime_ids_v5_2.description, "("..(length - offset).." Bytes)")
    local consumed = athex_athexsecurities_realtime_ids_v5_2.packet.dissect(buffer(offset):tvb(), packet, protocol)

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

-- Verify Soh Field
athex_athexsecurities_realtime_ids_v5_2.soh.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 0 + 1 then
    return false
  end

  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Athex AthexSecurities RealTime Ids 5.2 (Tcp)
local function omi_athex_athexsecurities_realtime_ids_v5_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not athex_athexsecurities_realtime_ids_v5_2.packet.requiredsize(buffer) then return false end

  -- Verify Soh
  if not athex_athexsecurities_realtime_ids_v5_2.soh.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_athex_athexsecurities_realtime_ids_v5_2
  omi_athex_athexsecurities_realtime_ids_v5_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Athex AthexSecurities RealTime Ids 5.2
omi_athex_athexsecurities_realtime_ids_v5_2:register_heuristic("tcp", omi_athex_athexsecurities_realtime_ids_v5_2_tcp_heuristic)

-- Register Athex AthexSecurities RealTime Ids 5.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_athex_athexsecurities_realtime_ids_v5_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Athens Exchange Group
--   Version: 5.2
--   Date: Friday, November 1, 2019
--   Specification: ATHEX OASIS IDS Market Data Feed Specification (5.2).pdf
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
