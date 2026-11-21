-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Six SixSwissExchange TotalView Itch 1.24.0 Protocol
local omi_six_sixswissexchange_totalview_itch_v1_24_0 = Proto("Omi.Six.SixSwissExchange.TotalView.Itch.v1.24.0", "Six SixSwissExchange TotalView Itch 1.24.0")

-- Protocol table
local six_sixswissexchange_totalview_itch_v1_24_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Six SixSwissExchange TotalView Itch 1.24.0 Fields
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.aggressor_side = ProtoField.new("Aggressor Side", "six.sixswissexchange.totalview.itch.v1.24.0.aggressorside", ftypes.STRING, nil, nil, nil, "Indicates if aggressor was a buyer or a seller")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.best_bid = ProtoField.new("Best Bid", "six.sixswissexchange.totalview.itch.v1.24.0.bestbid", ftypes.UINT32, nil, nil, nil, "The current best buy price")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.best_offer = ProtoField.new("Best Offer", "six.sixswissexchange.totalview.itch.v1.24.0.bestoffer", ftypes.UINT32, nil, nil, nil, "The current best sell price")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.book_condition = ProtoField.new("Book Condition", "six.sixswissexchange.totalview.itch.v1.24.0.bookcondition", ftypes.STRING, nil, nil, nil, "Shows the SIX Swiss Exchange book condition")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.book_type = ProtoField.new("Book Type", "six.sixswissexchange.totalview.itch.v1.24.0.booktype", ftypes.STRING)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.cross_type = ProtoField.new("Cross Type", "six.sixswissexchange.totalview.itch.v1.24.0.crosstype", ftypes.STRING, nil, nil, nil, "Cross type code")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.currency = ProtoField.new("Currency", "six.sixswissexchange.totalview.itch.v1.24.0.currency", ftypes.STRING, nil, nil, nil, "Trading currency")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.delisting_date = ProtoField.new("Delisting Date", "six.sixswissexchange.totalview.itch.v1.24.0.delistingdate", ftypes.UINT32, nil, nil, nil, "YYYYMMDD; 0 represents no delisting date")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.delisting_time = ProtoField.new("Delisting Time", "six.sixswissexchange.totalview.itch.v1.24.0.delistingtime", ftypes.UINT32, nil, nil, nil, "HHMMSS; ignore if delisting date is 0")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.event_code = ProtoField.new("Event Code", "six.sixswissexchange.totalview.itch.v1.24.0.eventcode", ftypes.STRING)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.executed_quantity = ProtoField.new("Executed Quantity", "six.sixswissexchange.totalview.itch.v1.24.0.executedquantity", ftypes.UINT32, nil, nil, nil, "The number of units executed")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.execution_price = ProtoField.new("Execution Price", "six.sixswissexchange.totalview.itch.v1.24.0.executionprice", ftypes.UINT32, nil, nil, nil, "The price at which the execution occurred")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.execution_time_utc = ProtoField.new("Execution Time", "six.sixswissexchange.totalview.itch.v1.24.0.executiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "In case of delayed trade publication the nanoseconds since epoch (UTC); 0 in case of immediate trade publication")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.execution_time = ProtoField.new("Execution Time", "six.sixswissexchange.totalview.itch.v1.24.0.executiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "In case of delayed trade publication the nanoseconds since epoch (UTC); 0 in case of immediate trade publication")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.far_price = ProtoField.new("Far Price", "six.sixswissexchange.totalview.itch.v1.24.0.farprice", ftypes.UINT32, nil, nil, nil, "Worst price executed in the matching cycle in CLOB/QDM")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.far_quantity_remaining = ProtoField.new("Far Quantity Remaining", "six.sixswissexchange.totalview.itch.v1.24.0.farquantityremaining", ftypes.UINT32, nil, nil, nil, "The CLOB/QDM quantity remaining at Far Price")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.far_side = ProtoField.new("Far Side", "six.sixswissexchange.totalview.itch.v1.24.0.farside", ftypes.STRING, nil, nil, nil, "Indicates the side of the CLOB/QDM orderbook for Far Price and Far Quantity Remaining")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.group = ProtoField.new("Group", "six.sixswissexchange.totalview.itch.v1.24.0.group", ftypes.STRING, nil, nil, nil, "Id for symbol grouping (board level only); left blank if at system level")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.isin = ProtoField.new("Isin", "six.sixswissexchange.totalview.itch.v1.24.0.isin", ftypes.STRING, nil, nil, nil, "ISIN code")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.match_number = ProtoField.new("Match Number", "six.sixswissexchange.totalview.itch.v1.24.0.matchnumber", ftypes.UINT64, nil, nil, nil, "The day unique match identifier")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_count = ProtoField.new("Message Count", "six.sixswissexchange.totalview.itch.v1.24.0.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_length = ProtoField.new("Message Length", "six.sixswissexchange.totalview.itch.v1.24.0.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_type = ProtoField.new("Message Type", "six.sixswissexchange.totalview.itch.v1.24.0.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.minimum_quantity = ProtoField.new("Minimum Quantity", "six.sixswissexchange.totalview.itch.v1.24.0.minimumquantity", ftypes.UINT32)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.new_order_number = ProtoField.new("New Order Number", "six.sixswissexchange.totalview.itch.v1.24.0.newordernumber", ftypes.UINT64, nil, nil, nil, "The new reference number for the order at the time of replacement")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.number_of_executions = ProtoField.new("Number Of Executions", "six.sixswissexchange.totalview.itch.v1.24.0.numberofexecutions", ftypes.UINT16, nil, nil, nil, "Total number of (partial) executions in CLOB/QDM, MPOB and EBBO book summarized in the message (1 or more)")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_number = ProtoField.new("Order Number", "six.sixswissexchange.totalview.itch.v1.24.0.ordernumber", ftypes.UINT64, nil, nil, nil, "The day unique reference number assigned to the new order")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_price = ProtoField.new("Order Price", "six.sixswissexchange.totalview.itch.v1.24.0.orderprice", ftypes.UINT32, nil, nil, nil, "The price of the new order")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_quantity = ProtoField.new("Order Quantity", "six.sixswissexchange.totalview.itch.v1.24.0.orderquantity", ftypes.UINT32, nil, nil, nil, "The total quantity of the order being added to the book; zero indicates a reference price update")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_verb = ProtoField.new("Order Verb", "six.sixswissexchange.totalview.itch.v1.24.0.orderverb", ftypes.STRING, nil, nil, nil, "Buy or Sell; blank if reference price update")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.orderbook = ProtoField.new("Orderbook", "six.sixswissexchange.totalview.itch.v1.24.0.orderbook", ftypes.UINT32, nil, nil, nil, "Identifies whether the event applies to a single Orderbook within the Group; 0 if the event applies at Group level")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.original_order_number = ProtoField.new("Original Order Number", "six.sixswissexchange.totalview.itch.v1.24.0.originalordernumber", ftypes.UINT64, nil, nil, nil, "The original order number of the order being replaced")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_decimals = ProtoField.new("Price Decimals", "six.sixswissexchange.totalview.itch.v1.24.0.pricedecimals", ftypes.UINT32)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_start = ProtoField.new("Price Start", "six.sixswissexchange.totalview.itch.v1.24.0.pricestart", ftypes.UINT32, nil, nil, nil, "Start of Price for this Tick Size")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_tick_size = ProtoField.new("Price Tick Size", "six.sixswissexchange.totalview.itch.v1.24.0.priceticksize", ftypes.UINT32)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_tick_table_id = ProtoField.new("Price Tick Table Id", "six.sixswissexchange.totalview.itch.v1.24.0.priceticktableid", ftypes.UINT32, nil, nil, nil, "Indicates the Tick Size Table Id")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_type = ProtoField.new("Price Type", "six.sixswissexchange.totalview.itch.v1.24.0.pricetype", ftypes.STRING, nil, nil, nil, "Indicates U ('per unit' price type) or P (price as percentage)")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.printable = ProtoField.new("Printable", "six.sixswissexchange.totalview.itch.v1.24.0.printable", ftypes.STRING, nil, nil, nil, "Indicates if the execution should be reflected in volume calculations")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.qod_price_decimals = ProtoField.new("Qod Price Decimals", "six.sixswissexchange.totalview.itch.v1.24.0.qodpricedecimals", ftypes.UINT32, nil, nil, nil, "Price Decimals for QOD book; 0x7FFFFFFF if the security has no QOD book")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.quantity_start = ProtoField.new("Quantity Start", "six.sixswissexchange.totalview.itch.v1.24.0.quantitystart", ftypes.UINT32, nil, nil, nil, "Start of Quantity for this Tick Size")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.quantity_tick_size = ProtoField.new("Quantity Tick Size", "six.sixswissexchange.totalview.itch.v1.24.0.quantityticksize", ftypes.UINT32)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.quantity_tick_table_id = ProtoField.new("Quantity Tick Table Id", "six.sixswissexchange.totalview.itch.v1.24.0.quantityticktableid", ftypes.UINT32, nil, nil, nil, "Indicates the Tick Size Table Id")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.reason = ProtoField.new("Reason", "six.sixswissexchange.totalview.itch.v1.24.0.reason", ftypes.STRING, nil, nil, nil, "The reason the trade was broken")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.reference_exchange = ProtoField.new("Reference Exchange", "six.sixswissexchange.totalview.itch.v1.24.0.referenceexchange", ftypes.STRING, nil, nil, nil, "MIC of the primary listing venue of the security; spaces unless an ETF multi-currency security trades in QOD")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.resting_cancelled_quantity = ProtoField.new("Resting Cancelled Quantity", "six.sixswissexchange.totalview.itch.v1.24.0.restingcancelledquantity", ftypes.UINT32, nil, nil, nil, "Sum of resting displayed CLOB/QDM quantity cancelled due to the matching cycle")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.resting_hidden_quantity = ProtoField.new("Resting Hidden Quantity", "six.sixswissexchange.totalview.itch.v1.24.0.restinghiddenquantity", ftypes.UINT32, nil, nil, nil, "Sum of quantity executed in CLOB/QDM which was hidden")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.second = ProtoField.new("Second", "six.sixswissexchange.totalview.itch.v1.24.0.second", ftypes.UINT32, nil, nil, nil, "Number of seconds since midnight Central European Time (CET) or Central European Summer Time (CEST)")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.security_exchange = ProtoField.new("Security Exchange", "six.sixswissexchange.totalview.itch.v1.24.0.securityexchange", ftypes.STRING, nil, nil, nil, "MIC of the SIX trading venue of the security")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.sequence_number = ProtoField.new("Sequence Number", "six.sixswissexchange.totalview.itch.v1.24.0.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.session = ProtoField.new("Session", "six.sixswissexchange.totalview.itch.v1.24.0.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.theoretical_opening_price = ProtoField.new("Theoretical Opening Price", "six.sixswissexchange.totalview.itch.v1.24.0.theoreticalopeningprice", ftypes.UINT32, nil, nil, nil, "The current theoretical opening price for this Orderbook")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.theoretical_opening_quantity = ProtoField.new("Theoretical Opening Quantity", "six.sixswissexchange.totalview.itch.v1.24.0.theoreticalopeningquantity", ftypes.UINT64, nil, nil, nil, "The total quantity eligible to be matched at the current Theoretical Opening Price")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.timestamp = ProtoField.new("Timestamp", "six.sixswissexchange.totalview.itch.v1.24.0.timestamp", ftypes.UINT32, nil, nil, nil, "Nanoseconds since last Time Stamp Seconds Message")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.total_clobqdm_quantity = ProtoField.new("Total Clobqdm Quantity", "six.sixswissexchange.totalview.itch.v1.24.0.totalclobqdmquantity", ftypes.UINT32, nil, nil, nil, "Sum of resting CLOB/QDM quantity executed in the matching cycle including resting hidden quantity")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.total_ebbo_book_quantity = ProtoField.new("Total Ebbo Book Quantity", "six.sixswissexchange.totalview.itch.v1.24.0.totalebbobookquantity", ftypes.UINT32, nil, nil, nil, "Sum of resting EBBO book quantity executed in the matching cycle")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.total_mpob_quantity = ProtoField.new("Total Mpob Quantity", "six.sixswissexchange.totalview.itch.v1.24.0.totalmpobquantity", ftypes.UINT32, nil, nil, nil, "Sum of resting MPOB quantity executed in the matching cycle")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "six.sixswissexchange.totalview.itch.v1.24.0.tradingsessionid", ftypes.STRING)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.trading_state = ProtoField.new("Trading State", "six.sixswissexchange.totalview.itch.v1.24.0.tradingstate", ftypes.STRING, nil, nil, nil, "Current trading state for Orderbook")

-- Six SixSwissExchange TotalView Itch 1.24.0 Framing
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message = ProtoField.new("Message", "six.sixswissexchange.totalview.itch.v1.24.0.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_header = ProtoField.new("Message Header", "six.sixswissexchange.totalview.itch.v1.24.0.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.packet = ProtoField.new("Packet", "six.sixswissexchange.totalview.itch.v1.24.0.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.packet_header = ProtoField.new("Packet Header", "six.sixswissexchange.totalview.itch.v1.24.0.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Six SixSwissExchange TotalView 1.24.0 Application Messages
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.add_order_message = ProtoField.new("Add Order Message", "six.sixswissexchange.totalview.itch.v1.24.0.addordermessage", ftypes.STRING, nil, nil, nil, "A new order has been accepted and added to the book; an Order Number and Quantity of zero carries the reference price")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "six.sixswissexchange.totalview.itch.v1.24.0.brokentrademessage", ftypes.STRING, nil, nil, nil, "Informs about a SIX Swiss Exchange mistrade decision")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.execution_summary_message = ProtoField.new("Execution Summary Message", "six.sixswissexchange.totalview.itch.v1.24.0.executionsummarymessage", ftypes.STRING, nil, nil, nil, "Sent prior to the individual order execution and trade messages for an incoming order that executes in the CLOB or QDM order book")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.indicative_price_quantity_message = ProtoField.new("Indicative Price Quantity Message", "six.sixswissexchange.totalview.itch.v1.24.0.indicativepricequantitymessage", ftypes.STRING, nil, nil, nil, "Sent during non-automatic matching periods telling the users what would happen if the book was uncrossed now")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_delete_message = ProtoField.new("Order Delete Message", "six.sixswissexchange.totalview.itch.v1.24.0.orderdeletemessage", ftypes.STRING, nil, nil, nil, "Sent whenever an order on the Orderbook is being cancelled")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "six.sixswissexchange.totalview.itch.v1.24.0.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "An order on the book has been executed in whole or in part")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "six.sixswissexchange.totalview.itch.v1.24.0.orderexecutedwithpricemessage", ftypes.STRING, nil, nil, nil, "An order on the book has been executed at a price different from its initial display price")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_replace_message = ProtoField.new("Order Replace Message", "six.sixswissexchange.totalview.itch.v1.24.0.orderreplacemessage", ftypes.STRING, nil, nil, nil, "Sent whenever an order on the Orderbook has been cancel-replaced")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "six.sixswissexchange.totalview.itch.v1.24.0.orderbookdirectorymessage", ftypes.STRING, nil, nil, nil, "Provides the basic reference data for the active Orderbooks for a specific OBM partition")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.orderbook_trading_action_message = ProtoField.new("Orderbook Trading Action Message", "six.sixswissexchange.totalview.itch.v1.24.0.orderbooktradingactionmessage", ftypes.STRING, nil, nil, nil, "Sent as a result of an Orderbook state or condition change")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_tick_size_message = ProtoField.new("Price Tick Size Message", "six.sixswissexchange.totalview.itch.v1.24.0.priceticksizemessage", ftypes.STRING, nil, nil, nil, "Shows the Price Tick (Category) of a Security")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.quantity_tick_size_message = ProtoField.new("Quantity Tick Size Message", "six.sixswissexchange.totalview.itch.v1.24.0.quantityticksizemessage", ftypes.STRING, nil, nil, nil, "Shows the Quantity Tick (Category) of a Security")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.system_event_message = ProtoField.new("System Event Message", "six.sixswissexchange.totalview.itch.v1.24.0.systemeventmessage", ftypes.STRING, nil, nil, nil, "Sent as a result of trade events at the system, group and Orderbook level")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.time_stamp_seconds_message = ProtoField.new("Time Stamp Seconds Message", "six.sixswissexchange.totalview.itch.v1.24.0.timestampsecondsmessage", ftypes.STRING, nil, nil, nil, "Timestamp of seconds since midnight, used in combination with the nanoseconds timestamp of each message")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.trade_message = ProtoField.new("Trade Message", "six.sixswissexchange.totalview.itch.v1.24.0.trademessage", ftypes.STRING, nil, nil, nil, "Informs about a trade without pre-trade transparency")

-- Six SixSwissExchange TotalView 1.24.0 Session Messages
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.end_of_session = ProtoField.new("End Of Session", "six.sixswissexchange.totalview.itch.v1.24.0.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.heartbeat = ProtoField.new("Heartbeat", "six.sixswissexchange.totalview.itch.v1.24.0.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Six SixSwissExchange TotalView Itch 1.24.0 Generated Fields
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_index = ProtoField.new("Message Index", "six.sixswissexchange.totalview.itch.v1.24.0.messageindex", ftypes.UINT16)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "six.sixswissexchange.totalview.itch.v1.24.0.messagesequencenumber", ftypes.UINT64)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_best_bid = ProtoField.new("Scaled Best Bid", "six.sixswissexchange.totalview.itch.v1.24.0.scaledbestbid", ftypes.DOUBLE)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_best_offer = ProtoField.new("Scaled Best Offer", "six.sixswissexchange.totalview.itch.v1.24.0.scaledbestoffer", ftypes.DOUBLE)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_execution_price = ProtoField.new("Scaled Execution Price", "six.sixswissexchange.totalview.itch.v1.24.0.scaledexecutionprice", ftypes.DOUBLE)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_far_price = ProtoField.new("Scaled Far Price", "six.sixswissexchange.totalview.itch.v1.24.0.scaledfarprice", ftypes.DOUBLE)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_order_price = ProtoField.new("Scaled Order Price", "six.sixswissexchange.totalview.itch.v1.24.0.scaledorderprice", ftypes.DOUBLE)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_theoretical_opening_price = ProtoField.new("Scaled Theoretical Opening Price", "six.sixswissexchange.totalview.itch.v1.24.0.scaledtheoreticalopeningprice", ftypes.DOUBLE)
omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.event_time = ProtoField.new("Event Time", "six.sixswissexchange.totalview.itch.v1.24.0.eventtime", ftypes.UINT64)

-----------------------------------------------------------------------
-- Six SixSwissExchange TotalView Itch 1.24.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "DateTime Local", 2 },
  { 4, "DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
six_sixswissexchange_totalview_itch_v1_24_0.timestamp_format = 3

-- Scaled Order Price format (true = decimal-scaled, false = raw mantissa)
six_sixswissexchange_totalview_itch_v1_24_0.format_decimals = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Six SixSwissExchange TotalView Itch 1.24.0 Element Dissection Options
show.records = true
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Six SixSwissExchange TotalView Itch 1.24.0 Show Options
omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.resolve_records = Pref.bool("Store Records", show.records, "Cache records and resolve cross-packet lookups")
omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.format_decimals = Pref.bool("Format Decimals", true, "Format decimal-scaled fields as scaled values (off = raw mantissa)")

omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs_changed()

  -- Check if preferences have changed
  if show.records ~= omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.resolve_records then
    show.records = omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.resolve_records
  end
  if show.application_messages ~= omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_application_messages then
    show.application_messages = omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_application_messages
  end
  if show.headers ~= omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_headers then
    show.headers = omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_headers
  end
  if show.structs ~= omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_structs then
    show.structs = omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_structs
  end
  if show.indexes ~= omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_indexes then
    show.indexes = omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_indexes
  end
  if show.sequences ~= omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_sequences then
    show.sequences = omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.show_sequences
  end
  if six_sixswissexchange_totalview_itch_v1_24_0.format_decimals ~= omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.format_decimals then
    six_sixswissexchange_totalview_itch_v1_24_0.format_decimals = omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.format_decimals
  end
  if six_sixswissexchange_totalview_itch_v1_24_0.timestamp_format ~= omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.timestamp_format then
    six_sixswissexchange_totalview_itch_v1_24_0.timestamp_format = omi_six_sixswissexchange_totalview_itch_v1_24_0.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
six_sixswissexchange_totalview_itch_v1_24_0.conversation = {}
six_sixswissexchange_totalview_itch_v1_24_0.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
six_sixswissexchange_totalview_itch_v1_24_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
six_sixswissexchange_totalview_itch_v1_24_0.conversation.data = function(packet)
  local key = six_sixswissexchange_totalview_itch_v1_24_0.conversation.key(packet)
  local data = six_sixswissexchange_totalview_itch_v1_24_0.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} }, orderbook_directory_message = {}, add_order_message = {} }
    six_sixswissexchange_totalview_itch_v1_24_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
six_sixswissexchange_totalview_itch_v1_24_0.conversation.current = nil


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
-- Six SixSwissExchange TotalView Itch 1.24.0 Fields
-----------------------------------------------------------------------

-- Aggressor Side
six_sixswissexchange_totalview_itch_v1_24_0.aggressor_side = {}

-- Size: Aggressor Side
six_sixswissexchange_totalview_itch_v1_24_0.aggressor_side.size = 1

-- Display: Aggressor Side
six_sixswissexchange_totalview_itch_v1_24_0.aggressor_side.labels = {
  ["B"] = "Aggressor Side: Buy (B)",
  ["S"] = "Aggressor Side: Sell (S)",
}

six_sixswissexchange_totalview_itch_v1_24_0.aggressor_side.display = function(value)
  return six_sixswissexchange_totalview_itch_v1_24_0.aggressor_side.labels[value] or "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
six_sixswissexchange_totalview_itch_v1_24_0.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.aggressor_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Best Bid
six_sixswissexchange_totalview_itch_v1_24_0.best_bid = {}

-- Size: Best Bid
six_sixswissexchange_totalview_itch_v1_24_0.best_bid.size = 4

-- Display: Best Bid
six_sixswissexchange_totalview_itch_v1_24_0.best_bid.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Best Bid: Market Order"
  end

  return "Best Bid: "..value
end

-- Dissect: Best Bid
six_sixswissexchange_totalview_itch_v1_24_0.best_bid.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.best_bid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.best_bid, range, value, display)

  return offset + length, value
end

-- Best Offer
six_sixswissexchange_totalview_itch_v1_24_0.best_offer = {}

-- Size: Best Offer
six_sixswissexchange_totalview_itch_v1_24_0.best_offer.size = 4

-- Display: Best Offer
six_sixswissexchange_totalview_itch_v1_24_0.best_offer.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Best Offer: Market Order"
  end

  return "Best Offer: "..value
end

-- Dissect: Best Offer
six_sixswissexchange_totalview_itch_v1_24_0.best_offer.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.best_offer.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.best_offer.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.best_offer, range, value, display)

  return offset + length, value
end

-- Book Condition
six_sixswissexchange_totalview_itch_v1_24_0.book_condition = {}

-- Size: Book Condition
six_sixswissexchange_totalview_itch_v1_24_0.book_condition.size = 1

-- Display: Book Condition
six_sixswissexchange_totalview_itch_v1_24_0.book_condition.labels = {
  ["D"] = "Book Condition: Delay Auction (D)",
  ["H"] = "Book Condition: Stop Trading (H)",
  ["J"] = "Book Condition: Stop Trading With Non Opening (J)",
  ["L"] = "Book Condition: Delay Auction With Non Opening (L)",
  ["N"] = "Book Condition: Normal Trading (N)",
  ["P"] = "Book Condition: Non Opening (P)",
  ["1"] = "Book Condition: Lp Bid Only Reason Us Withholding Tax (1)",
  ["2"] = "Book Condition: Lp Bid Only Reason Issuer Sold Out (2)",
  ["3"] = "Book Condition: Lp Bid Only Reason Issuer Business Policy (3)",
  ["4"] = "Book Condition: Lp Bid Only Reason Successor Product (4)",
  ["5"] = "Book Condition: Lp Bid Only Reason Product Worthless (5)",
}

six_sixswissexchange_totalview_itch_v1_24_0.book_condition.display = function(value)
  return six_sixswissexchange_totalview_itch_v1_24_0.book_condition.labels[value] or "Book Condition: Unknown("..value..")"
end

-- Dissect: Book Condition
six_sixswissexchange_totalview_itch_v1_24_0.book_condition.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.book_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.book_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.book_condition, range, value, display)

  return offset + length, value
end

-- Book Type
six_sixswissexchange_totalview_itch_v1_24_0.book_type = {}

-- Size: Book Type
six_sixswissexchange_totalview_itch_v1_24_0.book_type.size = 1

-- Display: Book Type
six_sixswissexchange_totalview_itch_v1_24_0.book_type.labels = {
  ["E"] = "Book Type: Swiss Ebbo (E)",
  ["L"] = "Book Type: Quote Driven Market (L)",
  ["M"] = "Book Type: Swiss At Mid (M)",
  ["N"] = "Book Type: Central Limit Order Book Non Displayed (N)",
  ["Q"] = "Book Type: Quote On Demand (Q)",
}

six_sixswissexchange_totalview_itch_v1_24_0.book_type.display = function(value)
  return six_sixswissexchange_totalview_itch_v1_24_0.book_type.labels[value] or "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
six_sixswissexchange_totalview_itch_v1_24_0.book_type.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.book_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.book_type, range, value, display)

  return offset + length, value
end

-- Cross Type
six_sixswissexchange_totalview_itch_v1_24_0.cross_type = {}

-- Size: Cross Type
six_sixswissexchange_totalview_itch_v1_24_0.cross_type.size = 1

-- Display: Cross Type
six_sixswissexchange_totalview_itch_v1_24_0.cross_type.labels = {
  ["C"] = "Cross Type: Closing Auction (C)",
  ["I"] = "Cross Type: Intraday Auction (I)",
  ["O"] = "Cross Type: Pre Opening Auction (O)",
}

six_sixswissexchange_totalview_itch_v1_24_0.cross_type.display = function(value)
  return six_sixswissexchange_totalview_itch_v1_24_0.cross_type.labels[value] or "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
six_sixswissexchange_totalview_itch_v1_24_0.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
six_sixswissexchange_totalview_itch_v1_24_0.currency = {}

-- Size: Currency
six_sixswissexchange_totalview_itch_v1_24_0.currency.size = 3

-- Display: Currency
six_sixswissexchange_totalview_itch_v1_24_0.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
six_sixswissexchange_totalview_itch_v1_24_0.currency.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = six_sixswissexchange_totalview_itch_v1_24_0.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.currency, range, value, display)

  return offset + length, value
end

-- Delisting Date
six_sixswissexchange_totalview_itch_v1_24_0.delisting_date = {}

-- Size: Delisting Date
six_sixswissexchange_totalview_itch_v1_24_0.delisting_date.size = 4

-- Display: Delisting Date
six_sixswissexchange_totalview_itch_v1_24_0.delisting_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Delisting Date: No Delisting Date"
  end

  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Delisting Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Delisting Date
six_sixswissexchange_totalview_itch_v1_24_0.delisting_date.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.delisting_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.delisting_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.delisting_date, range, value, display)

  return offset + length, value
end

-- Delisting Time
six_sixswissexchange_totalview_itch_v1_24_0.delisting_time = {}

-- Size: Delisting Time
six_sixswissexchange_totalview_itch_v1_24_0.delisting_time.size = 4

-- Display: Delisting Time
six_sixswissexchange_totalview_itch_v1_24_0.delisting_time.display = function(value)
  local hour = math.floor(value / 10000)
  local minute = math.floor(value / 100) % 100
  local second = value % 100

  return string.format("Delisting Time: %02d:%02d:%02d", hour, minute, second)
end

-- Dissect: Delisting Time
six_sixswissexchange_totalview_itch_v1_24_0.delisting_time.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.delisting_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.delisting_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.delisting_time, range, value, display)

  return offset + length, value
end

-- Event Code
six_sixswissexchange_totalview_itch_v1_24_0.event_code = {}

-- Size: Event Code
six_sixswissexchange_totalview_itch_v1_24_0.event_code.size = 1

-- Display: Event Code
six_sixswissexchange_totalview_itch_v1_24_0.event_code.display = function(value)
  if value == "A" then
    return "Event Code: Break (A)"
  end
  if value == "B" then
    return "Event Code: Resumption After Break (B)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "I" then
    return "Event Code: Start Of Accepting (I)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours (M)"
  end
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours (Q)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "U" then
    return "Event Code: Auction Closes (U)"
  end
  if value == "V" then
    return "Event Code: Auction Starts (V)"
  end
  if value == "T" then
    return "Event Code: Start Of Trading At Last (T)"
  end
  if value == "L" then
    return "Event Code: End Of Trading At Last (L)"
  end
  if value == " " then
    return "Event Code: Synchronized With Group (<whitespace>)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
six_sixswissexchange_totalview_itch_v1_24_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity = {}

-- Size: Executed Quantity
six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity.size = 4

-- Display: Executed Quantity
six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Price
six_sixswissexchange_totalview_itch_v1_24_0.execution_price = {}

-- Size: Execution Price
six_sixswissexchange_totalview_itch_v1_24_0.execution_price.size = 4

-- Display: Execution Price
six_sixswissexchange_totalview_itch_v1_24_0.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Dissect: Execution Price
six_sixswissexchange_totalview_itch_v1_24_0.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.execution_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Execution Time
six_sixswissexchange_totalview_itch_v1_24_0.execution_time = {}

-- Size: Execution Time
six_sixswissexchange_totalview_itch_v1_24_0.execution_time.size = 8

-- Dissect: Execution Time
six_sixswissexchange_totalview_itch_v1_24_0.execution_time.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.execution_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.execution_time
  if six_sixswissexchange_totalview_itch_v1_24_0.timestamp_format == 3 then field = omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.execution_time_utc end

  if value == UInt64(0x00000000, 0x00000000) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Execution Time: Immediate Trade Publication")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Far Price
six_sixswissexchange_totalview_itch_v1_24_0.far_price = {}

-- Size: Far Price
six_sixswissexchange_totalview_itch_v1_24_0.far_price.size = 4

-- Display: Far Price
six_sixswissexchange_totalview_itch_v1_24_0.far_price.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Far Price: Market Order"
  end

  return "Far Price: "..value
end

-- Dissect: Far Price
six_sixswissexchange_totalview_itch_v1_24_0.far_price.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.far_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.far_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.far_price, range, value, display)

  return offset + length, value
end

-- Far Quantity Remaining
six_sixswissexchange_totalview_itch_v1_24_0.far_quantity_remaining = {}

-- Size: Far Quantity Remaining
six_sixswissexchange_totalview_itch_v1_24_0.far_quantity_remaining.size = 4

-- Display: Far Quantity Remaining
six_sixswissexchange_totalview_itch_v1_24_0.far_quantity_remaining.display = function(value)
  return "Far Quantity Remaining: "..value
end

-- Dissect: Far Quantity Remaining
six_sixswissexchange_totalview_itch_v1_24_0.far_quantity_remaining.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.far_quantity_remaining.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.far_quantity_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.far_quantity_remaining, range, value, display)

  return offset + length, value
end

-- Far Side
six_sixswissexchange_totalview_itch_v1_24_0.far_side = {}

-- Size: Far Side
six_sixswissexchange_totalview_itch_v1_24_0.far_side.size = 1

-- Display: Far Side
six_sixswissexchange_totalview_itch_v1_24_0.far_side.display = function(value)
  if value == "B" then
    return "Far Side: Buy (B)"
  end
  if value == "S" then
    return "Far Side: Sell (S)"
  end
  if value == " " then
    return "Far Side: No Far Quantity Remaining (<whitespace>)"
  end

  return "Far Side: Unknown("..value..")"
end

-- Dissect: Far Side
six_sixswissexchange_totalview_itch_v1_24_0.far_side.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.far_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.far_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.far_side, range, value, display)

  return offset + length, value
end

-- Group
six_sixswissexchange_totalview_itch_v1_24_0.group = {}

-- Size: Group
six_sixswissexchange_totalview_itch_v1_24_0.group.size = 8

-- Display: Group
six_sixswissexchange_totalview_itch_v1_24_0.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
six_sixswissexchange_totalview_itch_v1_24_0.group.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = six_sixswissexchange_totalview_itch_v1_24_0.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.group, range, value, display)

  return offset + length, value
end

-- Isin
six_sixswissexchange_totalview_itch_v1_24_0.isin = {}

-- Size: Isin
six_sixswissexchange_totalview_itch_v1_24_0.isin.size = 12

-- Display: Isin
six_sixswissexchange_totalview_itch_v1_24_0.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
six_sixswissexchange_totalview_itch_v1_24_0.isin.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = six_sixswissexchange_totalview_itch_v1_24_0.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.isin, range, value, display)

  return offset + length, value
end

-- Match Number
six_sixswissexchange_totalview_itch_v1_24_0.match_number = {}

-- Size: Match Number
six_sixswissexchange_totalview_itch_v1_24_0.match_number.size = 8

-- Display: Match Number
six_sixswissexchange_totalview_itch_v1_24_0.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
six_sixswissexchange_totalview_itch_v1_24_0.match_number.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.match_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
six_sixswissexchange_totalview_itch_v1_24_0.message_count = {}

-- Size: Message Count
six_sixswissexchange_totalview_itch_v1_24_0.message_count.size = 2

-- Display: Message Count
six_sixswissexchange_totalview_itch_v1_24_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
six_sixswissexchange_totalview_itch_v1_24_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
six_sixswissexchange_totalview_itch_v1_24_0.message_length = {}

-- Size: Message Length
six_sixswissexchange_totalview_itch_v1_24_0.message_length.size = 2

-- Display: Message Length
six_sixswissexchange_totalview_itch_v1_24_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
six_sixswissexchange_totalview_itch_v1_24_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
six_sixswissexchange_totalview_itch_v1_24_0.message_type = {}

-- Size: Message Type
six_sixswissexchange_totalview_itch_v1_24_0.message_type.size = 1

-- Display: Message Type
six_sixswissexchange_totalview_itch_v1_24_0.message_type.labels = {
  ["T"] = "Message Type: Time Stamp Seconds Message (T)",
  ["S"] = "Message Type: System Event Message (S)",
  ["M"] = "Message Type: Quantity Tick Size Message (M)",
  ["L"] = "Message Type: Price Tick Size Message (L)",
  ["R"] = "Message Type: Orderbook Directory Message (R)",
  ["H"] = "Message Type: Orderbook Trading Action Message (H)",
  ["A"] = "Message Type: Add Order Message (A)",
  ["E"] = "Message Type: Order Executed Message (E)",
  ["C"] = "Message Type: Order Executed With Price Message (C)",
  ["Y"] = "Message Type: Execution Summary Message (Y)",
  ["P"] = "Message Type: Trade Message (P)",
  ["B"] = "Message Type: Broken Trade Message (B)",
  ["D"] = "Message Type: Order Delete Message (D)",
  ["U"] = "Message Type: Order Replace Message (U)",
  ["I"] = "Message Type: Indicative Price Quantity Message (I)",
}

six_sixswissexchange_totalview_itch_v1_24_0.message_type.display = function(value)
  return six_sixswissexchange_totalview_itch_v1_24_0.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
six_sixswissexchange_totalview_itch_v1_24_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Quantity
six_sixswissexchange_totalview_itch_v1_24_0.minimum_quantity = {}

-- Size: Minimum Quantity
six_sixswissexchange_totalview_itch_v1_24_0.minimum_quantity.size = 4

-- Display: Minimum Quantity
six_sixswissexchange_totalview_itch_v1_24_0.minimum_quantity.display = function(value)
  return "Minimum Quantity: "..value
end

-- Dissect: Minimum Quantity
six_sixswissexchange_totalview_itch_v1_24_0.minimum_quantity.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.minimum_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.minimum_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.minimum_quantity, range, value, display)

  return offset + length, value
end

-- New Order Number
six_sixswissexchange_totalview_itch_v1_24_0.new_order_number = {}

-- Size: New Order Number
six_sixswissexchange_totalview_itch_v1_24_0.new_order_number.size = 8

-- Display: New Order Number
six_sixswissexchange_totalview_itch_v1_24_0.new_order_number.display = function(value)
  return "New Order Number: "..value
end

-- Dissect: New Order Number
six_sixswissexchange_totalview_itch_v1_24_0.new_order_number.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.new_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.new_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.new_order_number, range, value, display)

  return offset + length, value
end

-- Number Of Executions
six_sixswissexchange_totalview_itch_v1_24_0.number_of_executions = {}

-- Size: Number Of Executions
six_sixswissexchange_totalview_itch_v1_24_0.number_of_executions.size = 2

-- Display: Number Of Executions
six_sixswissexchange_totalview_itch_v1_24_0.number_of_executions.display = function(value)
  return "Number Of Executions: "..value
end

-- Dissect: Number Of Executions
six_sixswissexchange_totalview_itch_v1_24_0.number_of_executions.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.number_of_executions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.number_of_executions.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.number_of_executions, range, value, display)

  return offset + length, value
end

-- Order Number
six_sixswissexchange_totalview_itch_v1_24_0.order_number = {}

-- Size: Order Number
six_sixswissexchange_totalview_itch_v1_24_0.order_number.size = 8

-- Lookup: Order Number
six_sixswissexchange_totalview_itch_v1_24_0.order_number.lookup = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.order_number.display(value, buffer, offset, packet, parent)

  if not show.records then
    six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.current = nil
    six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current = nil
    parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_number, range, value, display)

    return offset + length, value
  end

  -- Lookup Add Order Message record
  local record = six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.add_order_message[tostring(value)]

  -- The record as it stood at this frame, however often it is dissected again
  while record ~= nil and record.record_frame > packet.number do
    record = record.record_previous
  end

  -- A key with no record clears the last one, so nothing reads another key's values
  six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.current = record

  -- Reach Orderbook Directory Message record through the Orderbook it keeps
  local through = nil
  if record ~= nil then
    through = six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.orderbook_directory_message[record.orderbook]
  end
  while through ~= nil and through.record_frame > packet.number do
    through = through.record_previous
  end
  six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current = through
  if record ~= nil and record.orderbook ~= nil then
    display = "Order Number: " .. tostring(record.orderbook) .. " (" .. tostring(value) .. ")"
  end

  local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_number, range, value, display)

  if record ~= nil then
    if record.orderbook ~= nil then
      local entry_orderbook = field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.orderbook, record.orderbook)
      entry_orderbook:set_generated()
    end
  end

  return offset + length, value, record
end

-- Display: Order Number
six_sixswissexchange_totalview_itch_v1_24_0.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
six_sixswissexchange_totalview_itch_v1_24_0.order_number.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Price
six_sixswissexchange_totalview_itch_v1_24_0.order_price = {}

-- Size: Order Price
six_sixswissexchange_totalview_itch_v1_24_0.order_price.size = 4

-- Display: Order Price
six_sixswissexchange_totalview_itch_v1_24_0.order_price.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Order Price: Market Order"
  end

  return "Order Price: "..value
end

-- Dissect: Order Price
six_sixswissexchange_totalview_itch_v1_24_0.order_price.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.order_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_price, range, value, display)

  return offset + length, value
end

-- Order Quantity
six_sixswissexchange_totalview_itch_v1_24_0.order_quantity = {}

-- Size: Order Quantity
six_sixswissexchange_totalview_itch_v1_24_0.order_quantity.size = 4

-- Display: Order Quantity
six_sixswissexchange_totalview_itch_v1_24_0.order_quantity.display = function(value)
  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
six_sixswissexchange_totalview_itch_v1_24_0.order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.order_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Order Verb
six_sixswissexchange_totalview_itch_v1_24_0.order_verb = {}

-- Size: Order Verb
six_sixswissexchange_totalview_itch_v1_24_0.order_verb.size = 1

-- Display: Order Verb
six_sixswissexchange_totalview_itch_v1_24_0.order_verb.display = function(value)
  if value == "B" then
    return "Order Verb: Buy (B)"
  end
  if value == "S" then
    return "Order Verb: Sell (S)"
  end
  if value == " " then
    return "Order Verb: Reference Price Update (<whitespace>)"
  end

  return "Order Verb: Unknown("..value..")"
end

-- Dissect: Order Verb
six_sixswissexchange_totalview_itch_v1_24_0.order_verb.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.order_verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.order_verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_verb, range, value, display)

  return offset + length, value
end

-- Orderbook
six_sixswissexchange_totalview_itch_v1_24_0.orderbook = {}

-- Size: Orderbook
six_sixswissexchange_totalview_itch_v1_24_0.orderbook.size = 4

-- Lookup: Orderbook
six_sixswissexchange_totalview_itch_v1_24_0.orderbook.lookup = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.orderbook.display(value, buffer, offset, packet, parent)

  if not show.records then
    six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current = nil
    parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.orderbook, range, value, display)

    return offset + length, value
  end

  -- Lookup Orderbook Directory Message record
  local record = six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.orderbook_directory_message[value]

  -- The record as it stood at this frame, however often it is dissected again
  while record ~= nil and record.record_frame > packet.number do
    record = record.record_previous
  end

  -- A key with no record clears the last one, so nothing reads another key's values
  six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current = record
  if record ~= nil and record.isin ~= nil then
    display = "Orderbook: " .. tostring(record.isin) .. " (" .. tostring(value) .. ")"
  end

  local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.orderbook, range, value, display)

  if record ~= nil then
    if record.isin ~= nil then
      local entry_isin = field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.isin, record.isin)
      entry_isin:set_generated()
    end
    if record.price_decimals ~= nil then
      local entry_price_decimals = field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_decimals, record.price_decimals)
      entry_price_decimals:set_generated()
    end
  end

  return offset + length, value, record
end

-- Display: Orderbook
six_sixswissexchange_totalview_itch_v1_24_0.orderbook.display = function(value)
  return "Orderbook: "..value
end

-- Dissect: Orderbook
six_sixswissexchange_totalview_itch_v1_24_0.orderbook.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.orderbook.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.orderbook, range, value, display)

  return offset + length, value
end

-- Original Order Number
six_sixswissexchange_totalview_itch_v1_24_0.original_order_number = {}

-- Size: Original Order Number
six_sixswissexchange_totalview_itch_v1_24_0.original_order_number.size = 8

-- Lookup: Original Order Number
six_sixswissexchange_totalview_itch_v1_24_0.original_order_number.lookup = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.original_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.original_order_number.display(value, buffer, offset, packet, parent)

  if not show.records then
    six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.current = nil
    six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current = nil
    parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.original_order_number, range, value, display)

    return offset + length, value
  end

  -- Lookup Add Order Message record
  local record = six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.add_order_message[tostring(value)]

  -- The record as it stood at this frame, however often it is dissected again
  while record ~= nil and record.record_frame > packet.number do
    record = record.record_previous
  end

  -- A key with no record clears the last one, so nothing reads another key's values
  six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.current = record

  -- Reach Orderbook Directory Message record through the Orderbook it keeps
  local through = nil
  if record ~= nil then
    through = six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.orderbook_directory_message[record.orderbook]
  end
  while through ~= nil and through.record_frame > packet.number do
    through = through.record_previous
  end
  six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current = through
  if record ~= nil and record.orderbook ~= nil then
    display = "Original Order Number: " .. tostring(record.orderbook) .. " (" .. tostring(value) .. ")"
  end

  local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.original_order_number, range, value, display)

  if record ~= nil then
    if record.orderbook ~= nil then
      local entry_orderbook = field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.orderbook, record.orderbook)
      entry_orderbook:set_generated()
    end
  end

  return offset + length, value, record
end

-- Display: Original Order Number
six_sixswissexchange_totalview_itch_v1_24_0.original_order_number.display = function(value)
  return "Original Order Number: "..value
end

-- Dissect: Original Order Number
six_sixswissexchange_totalview_itch_v1_24_0.original_order_number.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.original_order_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.original_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.original_order_number, range, value, display)

  return offset + length, value
end

-- Price Decimals
six_sixswissexchange_totalview_itch_v1_24_0.price_decimals = {}

-- Size: Price Decimals
six_sixswissexchange_totalview_itch_v1_24_0.price_decimals.size = 4

-- Display: Price Decimals
six_sixswissexchange_totalview_itch_v1_24_0.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
six_sixswissexchange_totalview_itch_v1_24_0.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.price_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Start
six_sixswissexchange_totalview_itch_v1_24_0.price_start = {}

-- Size: Price Start
six_sixswissexchange_totalview_itch_v1_24_0.price_start.size = 4

-- Display: Price Start
six_sixswissexchange_totalview_itch_v1_24_0.price_start.display = function(value)
  return "Price Start: "..value
end

-- Dissect: Price Start
six_sixswissexchange_totalview_itch_v1_24_0.price_start.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.price_start.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.price_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_start, range, value, display)

  return offset + length, value
end

-- Price Tick Size
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size = {}

-- Size: Price Tick Size
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size.size = 4

-- Display: Price Tick Size
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size.display = function(value)
  return "Price Tick Size: "..value
end

-- Dissect: Price Tick Size
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_tick_size, range, value, display)

  return offset + length, value
end

-- Price Tick Table Id
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_table_id = {}

-- Size: Price Tick Table Id
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_table_id.size = 4

-- Display: Price Tick Table Id
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_table_id.display = function(value)
  return "Price Tick Table Id: "..value
end

-- Dissect: Price Tick Table Id
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_table_id.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.price_tick_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.price_tick_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_tick_table_id, range, value, display)

  return offset + length, value
end

-- Price Type
six_sixswissexchange_totalview_itch_v1_24_0.price_type = {}

-- Size: Price Type
six_sixswissexchange_totalview_itch_v1_24_0.price_type.size = 1

-- Display: Price Type
six_sixswissexchange_totalview_itch_v1_24_0.price_type.labels = {
  ["U"] = "Price Type: Per Unit (U)",
  ["P"] = "Price Type: Percentage (P)",
}

six_sixswissexchange_totalview_itch_v1_24_0.price_type.display = function(value)
  return six_sixswissexchange_totalview_itch_v1_24_0.price_type.labels[value] or "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
six_sixswissexchange_totalview_itch_v1_24_0.price_type.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_type, range, value, display)

  return offset + length, value
end

-- Printable
six_sixswissexchange_totalview_itch_v1_24_0.printable = {}

-- Size: Printable
six_sixswissexchange_totalview_itch_v1_24_0.printable.size = 1

-- Display: Printable
six_sixswissexchange_totalview_itch_v1_24_0.printable.labels = {
  ["N"] = "Printable: Non Printable (N)",
  ["Y"] = "Printable: Printable (Y)",
}

six_sixswissexchange_totalview_itch_v1_24_0.printable.display = function(value)
  return six_sixswissexchange_totalview_itch_v1_24_0.printable.labels[value] or "Printable: Unknown("..value..")"
end

-- Dissect: Printable
six_sixswissexchange_totalview_itch_v1_24_0.printable.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.printable, range, value, display)

  return offset + length, value
end

-- Qod Price Decimals
six_sixswissexchange_totalview_itch_v1_24_0.qod_price_decimals = {}

-- Size: Qod Price Decimals
six_sixswissexchange_totalview_itch_v1_24_0.qod_price_decimals.size = 4

-- Display: Qod Price Decimals
six_sixswissexchange_totalview_itch_v1_24_0.qod_price_decimals.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Qod Price Decimals: No QOD Book"
  end

  return "Qod Price Decimals: "..value
end

-- Dissect: Qod Price Decimals
six_sixswissexchange_totalview_itch_v1_24_0.qod_price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.qod_price_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.qod_price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.qod_price_decimals, range, value, display)

  return offset + length, value
end

-- Quantity Start
six_sixswissexchange_totalview_itch_v1_24_0.quantity_start = {}

-- Size: Quantity Start
six_sixswissexchange_totalview_itch_v1_24_0.quantity_start.size = 4

-- Display: Quantity Start
six_sixswissexchange_totalview_itch_v1_24_0.quantity_start.display = function(value)
  return "Quantity Start: "..value
end

-- Dissect: Quantity Start
six_sixswissexchange_totalview_itch_v1_24_0.quantity_start.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.quantity_start.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.quantity_start.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.quantity_start, range, value, display)

  return offset + length, value
end

-- Quantity Tick Size
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size = {}

-- Size: Quantity Tick Size
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size.size = 4

-- Display: Quantity Tick Size
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size.display = function(value)
  return "Quantity Tick Size: "..value
end

-- Dissect: Quantity Tick Size
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.quantity_tick_size, range, value, display)

  return offset + length, value
end

-- Quantity Tick Table Id
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_table_id = {}

-- Size: Quantity Tick Table Id
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_table_id.size = 4

-- Display: Quantity Tick Table Id
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_table_id.display = function(value)
  return "Quantity Tick Table Id: "..value
end

-- Dissect: Quantity Tick Table Id
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_table_id.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.quantity_tick_table_id, range, value, display)

  return offset + length, value
end

-- Reason
six_sixswissexchange_totalview_itch_v1_24_0.reason = {}

-- Size: Reason
six_sixswissexchange_totalview_itch_v1_24_0.reason.size = 1

-- Display: Reason
six_sixswissexchange_totalview_itch_v1_24_0.reason.labels = {
  ["C"] = "Reason: Consent (C)",
  ["S"] = "Reason: Supervisory (S)",
}

six_sixswissexchange_totalview_itch_v1_24_0.reason.display = function(value)
  return six_sixswissexchange_totalview_itch_v1_24_0.reason.labels[value] or "Reason: Unknown("..value..")"
end

-- Dissect: Reason
six_sixswissexchange_totalview_itch_v1_24_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Reference Exchange
six_sixswissexchange_totalview_itch_v1_24_0.reference_exchange = {}

-- Size: Reference Exchange
six_sixswissexchange_totalview_itch_v1_24_0.reference_exchange.size = 4

-- Display: Reference Exchange
six_sixswissexchange_totalview_itch_v1_24_0.reference_exchange.display = function(value)
  return "Reference Exchange: "..value
end

-- Dissect: Reference Exchange
six_sixswissexchange_totalview_itch_v1_24_0.reference_exchange.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.reference_exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = six_sixswissexchange_totalview_itch_v1_24_0.reference_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.reference_exchange, range, value, display)

  return offset + length, value
end

-- Resting Cancelled Quantity
six_sixswissexchange_totalview_itch_v1_24_0.resting_cancelled_quantity = {}

-- Size: Resting Cancelled Quantity
six_sixswissexchange_totalview_itch_v1_24_0.resting_cancelled_quantity.size = 4

-- Display: Resting Cancelled Quantity
six_sixswissexchange_totalview_itch_v1_24_0.resting_cancelled_quantity.display = function(value)
  return "Resting Cancelled Quantity: "..value
end

-- Dissect: Resting Cancelled Quantity
six_sixswissexchange_totalview_itch_v1_24_0.resting_cancelled_quantity.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.resting_cancelled_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.resting_cancelled_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.resting_cancelled_quantity, range, value, display)

  return offset + length, value
end

-- Resting Hidden Quantity
six_sixswissexchange_totalview_itch_v1_24_0.resting_hidden_quantity = {}

-- Size: Resting Hidden Quantity
six_sixswissexchange_totalview_itch_v1_24_0.resting_hidden_quantity.size = 4

-- Display: Resting Hidden Quantity
six_sixswissexchange_totalview_itch_v1_24_0.resting_hidden_quantity.display = function(value)
  return "Resting Hidden Quantity: "..value
end

-- Dissect: Resting Hidden Quantity
six_sixswissexchange_totalview_itch_v1_24_0.resting_hidden_quantity.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.resting_hidden_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.resting_hidden_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.resting_hidden_quantity, range, value, display)

  return offset + length, value
end

-- Second
six_sixswissexchange_totalview_itch_v1_24_0.second = {}

-- Size: Second
six_sixswissexchange_totalview_itch_v1_24_0.second.size = 4

-- Store: Second
six_sixswissexchange_totalview_itch_v1_24_0.second.current = nil

-- Generated: Second
six_sixswissexchange_totalview_itch_v1_24_0.second.generated = function(value, range, packet, parent)
  local display = six_sixswissexchange_totalview_itch_v1_24_0.second.display(value)
  local second = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
six_sixswissexchange_totalview_itch_v1_24_0.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
six_sixswissexchange_totalview_itch_v1_24_0.second.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.second, range, value, display)

  return offset + length, value
end

-- Security Exchange
six_sixswissexchange_totalview_itch_v1_24_0.security_exchange = {}

-- Size: Security Exchange
six_sixswissexchange_totalview_itch_v1_24_0.security_exchange.size = 4

-- Display: Security Exchange
six_sixswissexchange_totalview_itch_v1_24_0.security_exchange.display = function(value)
  return "Security Exchange: "..value
end

-- Dissect: Security Exchange
six_sixswissexchange_totalview_itch_v1_24_0.security_exchange.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.security_exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = six_sixswissexchange_totalview_itch_v1_24_0.security_exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.security_exchange, range, value, display)

  return offset + length, value
end

-- Sequence Number
six_sixswissexchange_totalview_itch_v1_24_0.sequence_number = {}

-- Size: Sequence Number
six_sixswissexchange_totalview_itch_v1_24_0.sequence_number.size = 8

-- Display: Sequence Number
six_sixswissexchange_totalview_itch_v1_24_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
six_sixswissexchange_totalview_itch_v1_24_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
six_sixswissexchange_totalview_itch_v1_24_0.session = {}

-- Size: Session
six_sixswissexchange_totalview_itch_v1_24_0.session.size = 10

-- Display: Session
six_sixswissexchange_totalview_itch_v1_24_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
six_sixswissexchange_totalview_itch_v1_24_0.session.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.session.size
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

  local display = six_sixswissexchange_totalview_itch_v1_24_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.session, range, value, display)

  return offset + length, value
end

-- Theoretical Opening Price
six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_price = {}

-- Size: Theoretical Opening Price
six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_price.size = 4

-- Display: Theoretical Opening Price
six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_price.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Theoretical Opening Price: Market Order"
  end

  return "Theoretical Opening Price: "..value
end

-- Dissect: Theoretical Opening Price
six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.theoretical_opening_price, range, value, display)

  return offset + length, value
end

-- Theoretical Opening Quantity
six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_quantity = {}

-- Size: Theoretical Opening Quantity
six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_quantity.size = 8

-- Display: Theoretical Opening Quantity
six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_quantity.display = function(value)
  return "Theoretical Opening Quantity: "..value
end

-- Dissect: Theoretical Opening Quantity
six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_quantity.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.theoretical_opening_quantity, range, value, display)

  return offset + length, value
end

-- Timestamp
six_sixswissexchange_totalview_itch_v1_24_0.timestamp = {}

-- Size: Timestamp
six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size = 4

-- Display: Timestamp
six_sixswissexchange_totalview_itch_v1_24_0.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
six_sixswissexchange_totalview_itch_v1_24_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Total Clobqdm Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_clobqdm_quantity = {}

-- Size: Total Clobqdm Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_clobqdm_quantity.size = 4

-- Display: Total Clobqdm Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_clobqdm_quantity.display = function(value)
  return "Total Clobqdm Quantity: "..value
end

-- Dissect: Total Clobqdm Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_clobqdm_quantity.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.total_clobqdm_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.total_clobqdm_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.total_clobqdm_quantity, range, value, display)

  return offset + length, value
end

-- Total Ebbo Book Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_ebbo_book_quantity = {}

-- Size: Total Ebbo Book Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_ebbo_book_quantity.size = 4

-- Display: Total Ebbo Book Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_ebbo_book_quantity.display = function(value)
  return "Total Ebbo Book Quantity: "..value
end

-- Dissect: Total Ebbo Book Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_ebbo_book_quantity.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.total_ebbo_book_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.total_ebbo_book_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.total_ebbo_book_quantity, range, value, display)

  return offset + length, value
end

-- Total Mpob Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_mpob_quantity = {}

-- Size: Total Mpob Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_mpob_quantity.size = 4

-- Display: Total Mpob Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_mpob_quantity.display = function(value)
  return "Total Mpob Quantity: "..value
end

-- Dissect: Total Mpob Quantity
six_sixswissexchange_totalview_itch_v1_24_0.total_mpob_quantity.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.total_mpob_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.total_mpob_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.total_mpob_quantity, range, value, display)

  return offset + length, value
end

-- Trading Session Id
six_sixswissexchange_totalview_itch_v1_24_0.trading_session_id = {}

-- Size: Trading Session Id
six_sixswissexchange_totalview_itch_v1_24_0.trading_session_id.size = 1

-- Display: Trading Session Id
six_sixswissexchange_totalview_itch_v1_24_0.trading_session_id.labels = {
  ["0"] = "Trading Session Id: Opening Auction (0)",
  ["1"] = "Trading Session Id: Intraday Auction (1)",
  ["2"] = "Trading Session Id: Continuous Trading (2)",
  ["3"] = "Trading Session Id: Closing Auction (3)",
  ["4"] = "Trading Session Id: At Market Close (4)",
}

six_sixswissexchange_totalview_itch_v1_24_0.trading_session_id.display = function(value)
  return six_sixswissexchange_totalview_itch_v1_24_0.trading_session_id.labels[value] or "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
six_sixswissexchange_totalview_itch_v1_24_0.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading State
six_sixswissexchange_totalview_itch_v1_24_0.trading_state = {}

-- Size: Trading State
six_sixswissexchange_totalview_itch_v1_24_0.trading_state.size = 1

-- Display: Trading State
six_sixswissexchange_totalview_itch_v1_24_0.trading_state.labels = {
  ["T"] = "Trading State: Trading (T)",
  ["V"] = "Trading State: Suspended (V)",
  ["M"] = "Trading State: Swiss At Mid Order Book Suspended (M)",
  ["E"] = "Trading State: Swiss Ebbo Order Book Suspended (E)",
  ["O"] = "Trading State: Swiss Ebbo And Swiss At Mid Order Books Suspended (O)",
  ["U"] = "Trading State: Underlying Condition (U)",
  ["Q"] = "Trading State: Quote On Demand Order Book Suspended (Q)",
  ["C"] = "Trading State: Clob Suspended And Qod Order Book In Trading (C)",
  ["L"] = "Trading State: Lp Bid Only Active (L)",
  ["P"] = "Trading State: Lp Bid Only Active And Qod Order Book Suspended (P)",
}

six_sixswissexchange_totalview_itch_v1_24_0.trading_state.display = function(value)
  return six_sixswissexchange_totalview_itch_v1_24_0.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
six_sixswissexchange_totalview_itch_v1_24_0.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = six_sixswissexchange_totalview_itch_v1_24_0.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Scaled Best Bid
six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_bid = {}

-- Display: Scaled Best Bid
six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_bid.display = function(value)
  return "Scaled Best Bid: " .. string.format("%.15g", value)
end

-- Composite: Scaled Best Bid
six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_bid.composite = function(buffer, offset, record, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.best_bid.size
  local range = buffer(offset, length)
  local mantissa = range:uint()

  if mantissa == 2147483647 then
    local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_best_bid, range, 0/0, "Scaled Best Bid: Market Order")
    local mantissa_display = six_sixswissexchange_totalview_itch_v1_24_0.best_bid.display(mantissa)

    field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.best_bid, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end

  local value = mantissa / (10 ^ record.price_decimals)
  local display = six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_bid.display(value)
  local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_best_bid, range, value, display)
  local mantissa_display = six_sixswissexchange_totalview_itch_v1_24_0.best_bid.display(mantissa)

  field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.best_bid, range, mantissa, mantissa_display)

  local price_decimals_entry = field_tree:add("Price Decimals: " .. tostring(record.price_decimals))
  price_decimals_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Best Bid
six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_bid.dissect = function(buffer, offset, packet, parent)
  if six_sixswissexchange_totalview_itch_v1_24_0.format_decimals then
    local record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current
    if record ~= nil and record.price_decimals ~= nil then
      return six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_bid.composite(buffer, offset, record, packet, parent)
    end
  end

  return six_sixswissexchange_totalview_itch_v1_24_0.best_bid.dissect(buffer, offset, packet, parent)
end

-- Scaled Best Offer
six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_offer = {}

-- Display: Scaled Best Offer
six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_offer.display = function(value)
  return "Scaled Best Offer: " .. string.format("%.15g", value)
end

-- Composite: Scaled Best Offer
six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_offer.composite = function(buffer, offset, record, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.best_offer.size
  local range = buffer(offset, length)
  local mantissa = range:uint()

  if mantissa == 2147483647 then
    local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_best_offer, range, 0/0, "Scaled Best Offer: Market Order")
    local mantissa_display = six_sixswissexchange_totalview_itch_v1_24_0.best_offer.display(mantissa)

    field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.best_offer, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end

  local value = mantissa / (10 ^ record.price_decimals)
  local display = six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_offer.display(value)
  local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_best_offer, range, value, display)
  local mantissa_display = six_sixswissexchange_totalview_itch_v1_24_0.best_offer.display(mantissa)

  field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.best_offer, range, mantissa, mantissa_display)

  local price_decimals_entry = field_tree:add("Price Decimals: " .. tostring(record.price_decimals))
  price_decimals_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Best Offer
six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_offer.dissect = function(buffer, offset, packet, parent)
  if six_sixswissexchange_totalview_itch_v1_24_0.format_decimals then
    local record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current
    if record ~= nil and record.price_decimals ~= nil then
      return six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_offer.composite(buffer, offset, record, packet, parent)
    end
  end

  return six_sixswissexchange_totalview_itch_v1_24_0.best_offer.dissect(buffer, offset, packet, parent)
end

-- Scaled Execution Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_execution_price = {}

-- Display: Scaled Execution Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_execution_price.display = function(value)
  return "Scaled Execution Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Execution Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_execution_price.composite = function(buffer, offset, record, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.execution_price.size
  local range = buffer(offset, length)
  local mantissa = range:uint()
  local value = mantissa / (10 ^ record.price_decimals)
  local display = six_sixswissexchange_totalview_itch_v1_24_0.scaled_execution_price.display(value)
  local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_execution_price, range, value, display)
  local mantissa_display = six_sixswissexchange_totalview_itch_v1_24_0.execution_price.display(mantissa)

  field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.execution_price, range, mantissa, mantissa_display)

  local price_decimals_entry = field_tree:add("Price Decimals: " .. tostring(record.price_decimals))
  price_decimals_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Execution Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_execution_price.dissect = function(buffer, offset, packet, parent)
  if six_sixswissexchange_totalview_itch_v1_24_0.format_decimals then
    local record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current
    if record ~= nil and record.price_decimals ~= nil then
      return six_sixswissexchange_totalview_itch_v1_24_0.scaled_execution_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return six_sixswissexchange_totalview_itch_v1_24_0.execution_price.dissect(buffer, offset, packet, parent)
end

-- Scaled Far Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_far_price = {}

-- Display: Scaled Far Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_far_price.display = function(value)
  return "Scaled Far Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Far Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_far_price.composite = function(buffer, offset, record, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.far_price.size
  local range = buffer(offset, length)
  local mantissa = range:uint()

  if mantissa == 2147483647 then
    local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_far_price, range, 0/0, "Scaled Far Price: Market Order")
    local mantissa_display = six_sixswissexchange_totalview_itch_v1_24_0.far_price.display(mantissa)

    field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.far_price, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end

  local value = mantissa / (10 ^ record.price_decimals)
  local display = six_sixswissexchange_totalview_itch_v1_24_0.scaled_far_price.display(value)
  local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_far_price, range, value, display)
  local mantissa_display = six_sixswissexchange_totalview_itch_v1_24_0.far_price.display(mantissa)

  field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.far_price, range, mantissa, mantissa_display)

  local price_decimals_entry = field_tree:add("Price Decimals: " .. tostring(record.price_decimals))
  price_decimals_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Far Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_far_price.dissect = function(buffer, offset, packet, parent)
  if six_sixswissexchange_totalview_itch_v1_24_0.format_decimals then
    local record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current
    if record ~= nil and record.price_decimals ~= nil then
      return six_sixswissexchange_totalview_itch_v1_24_0.scaled_far_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return six_sixswissexchange_totalview_itch_v1_24_0.far_price.dissect(buffer, offset, packet, parent)
end

-- Scaled Order Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_order_price = {}

-- Display: Scaled Order Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_order_price.display = function(value)
  return "Scaled Order Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Order Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_order_price.composite = function(buffer, offset, record, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.order_price.size
  local range = buffer(offset, length)
  local mantissa = range:uint()

  if mantissa == 2147483647 then
    local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_order_price, range, 0/0, "Scaled Order Price: Market Order")
    local mantissa_display = six_sixswissexchange_totalview_itch_v1_24_0.order_price.display(mantissa)

    field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_price, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end

  local value = mantissa / (10 ^ record.price_decimals)
  local display = six_sixswissexchange_totalview_itch_v1_24_0.scaled_order_price.display(value)
  local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_order_price, range, value, display)
  local mantissa_display = six_sixswissexchange_totalview_itch_v1_24_0.order_price.display(mantissa)

  field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_price, range, mantissa, mantissa_display)

  local price_decimals_entry = field_tree:add("Price Decimals: " .. tostring(record.price_decimals))
  price_decimals_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Order Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_order_price.dissect = function(buffer, offset, packet, parent)
  if six_sixswissexchange_totalview_itch_v1_24_0.format_decimals then
    local record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current
    if record ~= nil and record.price_decimals ~= nil then
      return six_sixswissexchange_totalview_itch_v1_24_0.scaled_order_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return six_sixswissexchange_totalview_itch_v1_24_0.order_price.dissect(buffer, offset, packet, parent)
end

-- Scaled Theoretical Opening Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_theoretical_opening_price = {}

-- Display: Scaled Theoretical Opening Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_theoretical_opening_price.display = function(value)
  return "Scaled Theoretical Opening Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Theoretical Opening Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_theoretical_opening_price.composite = function(buffer, offset, record, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_price.size
  local range = buffer(offset, length)
  local mantissa = range:uint()

  if mantissa == 2147483647 then
    local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_theoretical_opening_price, range, 0/0, "Scaled Theoretical Opening Price: Market Order")
    local mantissa_display = six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_price.display(mantissa)

    field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.theoretical_opening_price, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end

  local value = mantissa / (10 ^ record.price_decimals)
  local display = six_sixswissexchange_totalview_itch_v1_24_0.scaled_theoretical_opening_price.display(value)
  local field_tree = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.scaled_theoretical_opening_price, range, value, display)
  local mantissa_display = six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_price.display(mantissa)

  field_tree:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.theoretical_opening_price, range, mantissa, mantissa_display)

  local price_decimals_entry = field_tree:add("Price Decimals: " .. tostring(record.price_decimals))
  price_decimals_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Theoretical Opening Price
six_sixswissexchange_totalview_itch_v1_24_0.scaled_theoretical_opening_price.dissect = function(buffer, offset, packet, parent)
  if six_sixswissexchange_totalview_itch_v1_24_0.format_decimals then
    local record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.current
    if record ~= nil and record.price_decimals ~= nil then
      return six_sixswissexchange_totalview_itch_v1_24_0.scaled_theoretical_opening_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_price.dissect(buffer, offset, packet, parent)
end

-- Event Time
six_sixswissexchange_totalview_itch_v1_24_0.event_time = {}

-- Translate: Event Time
six_sixswissexchange_totalview_itch_v1_24_0.event_time.translate = function(timestamp, stored_second)
  return UInt64.new(stored_second) * 1000000000 + timestamp
end

-- Display: Event Time
six_sixswissexchange_totalview_itch_v1_24_0.event_time.display = function(timestamp, stored_second, packet)
  -- Raw display mode
  if six_sixswissexchange_totalview_itch_v1_24_0.timestamp_format == 0 then
    return "Event Time: "..(stored_second * 1000000000 + timestamp)
  end

  -- An offset the Field epoch leaves unbounded carries whole seconds of its own
  local seconds = stored_second + math.floor(timestamp / 1000000000)
  local fraction = timestamp % 1000000000

  -- Full datetime mode (the day the frame that carried it settled on)
  if six_sixswissexchange_totalview_itch_v1_24_0.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local format = six_sixswissexchange_totalview_itch_v1_24_0.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Event Time: "..os.date(format, settled + seconds)..string.format("%09d", fraction)
    end
  end

  -- Time of day mode
  return "Event Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", fraction)
end

-- Composite: Event Time
six_sixswissexchange_totalview_itch_v1_24_0.event_time.composite = function(buffer, offset, stored_second, packet, parent)
  local length = six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size
  local range = buffer(offset, length)
  local timestamp = range:uint()
  local value = six_sixswissexchange_totalview_itch_v1_24_0.event_time.translate(timestamp, stored_second)
  local display = six_sixswissexchange_totalview_itch_v1_24_0.event_time.display(timestamp, stored_second, packet)
  parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.event_time, range, value, display)

  six_sixswissexchange_totalview_itch_v1_24_0.second.generated(stored_second, range, packet, parent)

  display = six_sixswissexchange_totalview_itch_v1_24_0.timestamp.display(timestamp)
  parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.timestamp, range, timestamp, display)

  return offset + length, value
end

-- Dissect: Event Time
six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect = function(buffer, offset, packet, parent)
  if six_sixswissexchange_totalview_itch_v1_24_0.timestamp_format ~= 0 then
    local stored_second = six_sixswissexchange_totalview_itch_v1_24_0.second.current

    if stored_second ~= nil then
      return six_sixswissexchange_totalview_itch_v1_24_0.event_time.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return six_sixswissexchange_totalview_itch_v1_24_0.timestamp.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Six SixSwissExchange TotalView Itch 1.24.0
-----------------------------------------------------------------------

-- Indicative Price Quantity Message
six_sixswissexchange_totalview_itch_v1_24_0.indicative_price_quantity_message = {}

-- Size: Indicative Price Quantity Message
six_sixswissexchange_totalview_itch_v1_24_0.indicative_price_quantity_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.orderbook.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.best_bid.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.best_offer.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_price.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.cross_type.size

-- Display: Indicative Price Quantity Message
six_sixswissexchange_totalview_itch_v1_24_0.indicative_price_quantity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Price Quantity Message
six_sixswissexchange_totalview_itch_v1_24_0.indicative_price_quantity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Theoretical Opening Quantity: Integer
  index, theoretical_opening_quantity = six_sixswissexchange_totalview_itch_v1_24_0.theoretical_opening_quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook.lookup(buffer, index, packet, parent)

  -- Best Bid: Price
  index, best_bid = six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_bid.dissect(buffer, index, packet, parent)

  -- Best Offer: Price
  index, best_offer = six_sixswissexchange_totalview_itch_v1_24_0.scaled_best_offer.dissect(buffer, index, packet, parent)

  -- Theoretical Opening Price: Price
  index, theoretical_opening_price = six_sixswissexchange_totalview_itch_v1_24_0.scaled_theoretical_opening_price.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = six_sixswissexchange_totalview_itch_v1_24_0.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Price Quantity Message
six_sixswissexchange_totalview_itch_v1_24_0.indicative_price_quantity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.indicative_price_quantity_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.indicative_price_quantity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.indicative_price_quantity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.indicative_price_quantity_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Message
six_sixswissexchange_totalview_itch_v1_24_0.order_replace_message = {}

-- Size: Order Replace Message
six_sixswissexchange_totalview_itch_v1_24_0.order_replace_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.original_order_number.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.new_order_number.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.order_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.order_price.size

-- Display: Order Replace Message
six_sixswissexchange_totalview_itch_v1_24_0.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
six_sixswissexchange_totalview_itch_v1_24_0.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Original Order Number: Integer (record lookup)
  index, original_order_number, original_order_number_record = six_sixswissexchange_totalview_itch_v1_24_0.original_order_number.lookup(buffer, index, packet, parent)

  -- New Order Number: Integer
  index, new_order_number = six_sixswissexchange_totalview_itch_v1_24_0.new_order_number.dissect(buffer, index, packet, parent)

  -- Order Quantity: Quantity
  index, order_quantity = six_sixswissexchange_totalview_itch_v1_24_0.order_quantity.dissect(buffer, index, packet, parent)

  -- Order Price: Price
  index, order_price = six_sixswissexchange_totalview_itch_v1_24_0.scaled_order_price.dissect(buffer, index, packet, parent)

  -- File Add Order Message record again by new_order_number
  if show.records and not packet.visited then
    local rekeyed = six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.current
    if rekeyed ~= nil then
      six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.add_order_message[tostring(new_order_number)] = {
        record_frame = packet.number,
        record_previous = six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.add_order_message[tostring(new_order_number)],
        orderbook = rekeyed.orderbook,
      }
    end
  end

  return index
end

-- Dissect: Order Replace Message
six_sixswissexchange_totalview_itch_v1_24_0.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_replace_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
six_sixswissexchange_totalview_itch_v1_24_0.order_delete_message = {}

-- Size: Order Delete Message
six_sixswissexchange_totalview_itch_v1_24_0.order_delete_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.order_number.size

-- Display: Order Delete Message
six_sixswissexchange_totalview_itch_v1_24_0.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
six_sixswissexchange_totalview_itch_v1_24_0.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Order Number: Integer (record lookup)
  index, order_number, order_number_record = six_sixswissexchange_totalview_itch_v1_24_0.order_number.lookup(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
six_sixswissexchange_totalview_itch_v1_24_0.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_delete_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
six_sixswissexchange_totalview_itch_v1_24_0.broken_trade_message = {}

-- Size: Broken Trade Message
six_sixswissexchange_totalview_itch_v1_24_0.broken_trade_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.match_number.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.reason.size

-- Display: Broken Trade Message
six_sixswissexchange_totalview_itch_v1_24_0.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
six_sixswissexchange_totalview_itch_v1_24_0.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = six_sixswissexchange_totalview_itch_v1_24_0.match_number.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = six_sixswissexchange_totalview_itch_v1_24_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
six_sixswissexchange_totalview_itch_v1_24_0.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.broken_trade_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
six_sixswissexchange_totalview_itch_v1_24_0.trade_message = {}

-- Size: Trade Message
six_sixswissexchange_totalview_itch_v1_24_0.trade_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.execution_time.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.orderbook.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.execution_price.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.match_number.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.book_type.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.trading_session_id.size

-- Display: Trade Message
six_sixswissexchange_totalview_itch_v1_24_0.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
six_sixswissexchange_totalview_itch_v1_24_0.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Execution Time: Integer
  index, execution_time = six_sixswissexchange_totalview_itch_v1_24_0.execution_time.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook.lookup(buffer, index, packet, parent)

  -- Executed Quantity: Quantity
  index, executed_quantity = six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Price: Price
  index, execution_price = six_sixswissexchange_totalview_itch_v1_24_0.scaled_execution_price.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = six_sixswissexchange_totalview_itch_v1_24_0.match_number.dissect(buffer, index, packet, parent)

  -- Book Type: Alpha
  index, book_type = six_sixswissexchange_totalview_itch_v1_24_0.book_type.dissect(buffer, index, packet, parent)

  -- Trading Session Id: Alpha
  index, trading_session_id = six_sixswissexchange_totalview_itch_v1_24_0.trading_session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
six_sixswissexchange_totalview_itch_v1_24_0.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.trade_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Summary Message
six_sixswissexchange_totalview_itch_v1_24_0.execution_summary_message = {}

-- Size: Execution Summary Message
six_sixswissexchange_totalview_itch_v1_24_0.execution_summary_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.orderbook.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.aggressor_side.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.total_mpob_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.total_ebbo_book_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.total_clobqdm_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.resting_hidden_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.resting_cancelled_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.far_side.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.far_price.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.far_quantity_remaining.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.number_of_executions.size

-- Display: Execution Summary Message
six_sixswissexchange_totalview_itch_v1_24_0.execution_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Summary Message
six_sixswissexchange_totalview_itch_v1_24_0.execution_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook.lookup(buffer, index, packet, parent)

  -- Aggressor Side: Alpha
  index, aggressor_side = six_sixswissexchange_totalview_itch_v1_24_0.aggressor_side.dissect(buffer, index, packet, parent)

  -- Total Mpob Quantity: Quantity
  index, total_mpob_quantity = six_sixswissexchange_totalview_itch_v1_24_0.total_mpob_quantity.dissect(buffer, index, packet, parent)

  -- Total Ebbo Book Quantity: Quantity
  index, total_ebbo_book_quantity = six_sixswissexchange_totalview_itch_v1_24_0.total_ebbo_book_quantity.dissect(buffer, index, packet, parent)

  -- Total Clobqdm Quantity: Quantity
  index, total_clobqdm_quantity = six_sixswissexchange_totalview_itch_v1_24_0.total_clobqdm_quantity.dissect(buffer, index, packet, parent)

  -- Resting Hidden Quantity: Quantity
  index, resting_hidden_quantity = six_sixswissexchange_totalview_itch_v1_24_0.resting_hidden_quantity.dissect(buffer, index, packet, parent)

  -- Resting Cancelled Quantity: Quantity
  index, resting_cancelled_quantity = six_sixswissexchange_totalview_itch_v1_24_0.resting_cancelled_quantity.dissect(buffer, index, packet, parent)

  -- Far Side: Alpha
  index, far_side = six_sixswissexchange_totalview_itch_v1_24_0.far_side.dissect(buffer, index, packet, parent)

  -- Far Price: Price
  index, far_price = six_sixswissexchange_totalview_itch_v1_24_0.scaled_far_price.dissect(buffer, index, packet, parent)

  -- Far Quantity Remaining: Quantity
  index, far_quantity_remaining = six_sixswissexchange_totalview_itch_v1_24_0.far_quantity_remaining.dissect(buffer, index, packet, parent)

  -- Number Of Executions: Integer
  index, number_of_executions = six_sixswissexchange_totalview_itch_v1_24_0.number_of_executions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Summary Message
six_sixswissexchange_totalview_itch_v1_24_0.execution_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.execution_summary_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.execution_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.execution_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.execution_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
six_sixswissexchange_totalview_itch_v1_24_0.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
six_sixswissexchange_totalview_itch_v1_24_0.order_executed_with_price_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.order_number.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.match_number.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.printable.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.execution_price.size

-- Display: Order Executed With Price Message
six_sixswissexchange_totalview_itch_v1_24_0.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
six_sixswissexchange_totalview_itch_v1_24_0.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Order Number: Integer (record lookup)
  index, order_number, order_number_record = six_sixswissexchange_totalview_itch_v1_24_0.order_number.lookup(buffer, index, packet, parent)

  -- Executed Quantity: Quantity
  index, executed_quantity = six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = six_sixswissexchange_totalview_itch_v1_24_0.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = six_sixswissexchange_totalview_itch_v1_24_0.printable.dissect(buffer, index, packet, parent)

  -- Execution Price: Price
  index, execution_price = six_sixswissexchange_totalview_itch_v1_24_0.scaled_execution_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
six_sixswissexchange_totalview_itch_v1_24_0.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
six_sixswissexchange_totalview_itch_v1_24_0.order_executed_message = {}

-- Size: Order Executed Message
six_sixswissexchange_totalview_itch_v1_24_0.order_executed_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.order_number.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.match_number.size

-- Display: Order Executed Message
six_sixswissexchange_totalview_itch_v1_24_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
six_sixswissexchange_totalview_itch_v1_24_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Order Number: Integer (record lookup)
  index, order_number, order_number_record = six_sixswissexchange_totalview_itch_v1_24_0.order_number.lookup(buffer, index, packet, parent)

  -- Executed Quantity: Quantity
  index, executed_quantity = six_sixswissexchange_totalview_itch_v1_24_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = six_sixswissexchange_totalview_itch_v1_24_0.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
six_sixswissexchange_totalview_itch_v1_24_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.order_executed_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
six_sixswissexchange_totalview_itch_v1_24_0.add_order_message = {}

-- Size: Add Order Message
six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.order_number.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.order_verb.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.order_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.orderbook.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.order_price.size

-- Display: Add Order Message
six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Order Number: Integer
  index, order_number = six_sixswissexchange_totalview_itch_v1_24_0.order_number.dissect(buffer, index, packet, parent)

  -- Order Verb: Alpha
  index, order_verb = six_sixswissexchange_totalview_itch_v1_24_0.order_verb.dissect(buffer, index, packet, parent)

  -- Order Quantity: Quantity
  index, order_quantity = six_sixswissexchange_totalview_itch_v1_24_0.order_quantity.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook.lookup(buffer, index, packet, parent)

  -- Order Price: Price
  index, order_price = six_sixswissexchange_totalview_itch_v1_24_0.scaled_order_price.dissect(buffer, index, packet, parent)

  -- Cache Add Order Message record by order_number
  if show.records and not packet.visited then
    six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.add_order_message[tostring(order_number)] = {
      record_frame = packet.number,
      record_previous = six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.add_order_message[tostring(order_number)],
      orderbook = orderbook,
    }
  end

  return index
end

-- Dissect: Add Order Message
six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.add_order_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Trading Action Message
six_sixswissexchange_totalview_itch_v1_24_0.orderbook_trading_action_message = {}

-- Size: Orderbook Trading Action Message
six_sixswissexchange_totalview_itch_v1_24_0.orderbook_trading_action_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.orderbook.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.trading_state.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.book_condition.size

-- Display: Orderbook Trading Action Message
six_sixswissexchange_totalview_itch_v1_24_0.orderbook_trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Trading Action Message
six_sixswissexchange_totalview_itch_v1_24_0.orderbook_trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook.lookup(buffer, index, packet, parent)

  -- Trading State: Alpha
  index, trading_state = six_sixswissexchange_totalview_itch_v1_24_0.trading_state.dissect(buffer, index, packet, parent)

  -- Book Condition: Alpha
  index, book_condition = six_sixswissexchange_totalview_itch_v1_24_0.book_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orderbook Trading Action Message
six_sixswissexchange_totalview_itch_v1_24_0.orderbook_trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.orderbook_trading_action_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.orderbook_trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Directory Message
six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.orderbook.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.price_type.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.isin.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.currency.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.group.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.minimum_quantity.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_table_id.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.price_tick_table_id.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.price_decimals.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.delisting_date.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.delisting_time.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.qod_price_decimals.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.security_exchange.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.reference_exchange.size

-- Display: Orderbook Directory Message
six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = six_sixswissexchange_totalview_itch_v1_24_0.orderbook.dissect(buffer, index, packet, parent)

  -- Price Type: Alpha
  index, price_type = six_sixswissexchange_totalview_itch_v1_24_0.price_type.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = six_sixswissexchange_totalview_itch_v1_24_0.isin.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = six_sixswissexchange_totalview_itch_v1_24_0.currency.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = six_sixswissexchange_totalview_itch_v1_24_0.group.dissect(buffer, index, packet, parent)

  -- Minimum Quantity: Quantity
  index, minimum_quantity = six_sixswissexchange_totalview_itch_v1_24_0.minimum_quantity.dissect(buffer, index, packet, parent)

  -- Quantity Tick Table Id: Integer
  index, quantity_tick_table_id = six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Table Id: Integer
  index, price_tick_table_id = six_sixswissexchange_totalview_itch_v1_24_0.price_tick_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: Integer
  index, price_decimals = six_sixswissexchange_totalview_itch_v1_24_0.price_decimals.dissect(buffer, index, packet, parent)

  -- Delisting Date: Date
  index, delisting_date = six_sixswissexchange_totalview_itch_v1_24_0.delisting_date.dissect(buffer, index, packet, parent)

  -- Delisting Time: Time
  index, delisting_time = six_sixswissexchange_totalview_itch_v1_24_0.delisting_time.dissect(buffer, index, packet, parent)

  -- Qod Price Decimals: Integer
  index, qod_price_decimals = six_sixswissexchange_totalview_itch_v1_24_0.qod_price_decimals.dissect(buffer, index, packet, parent)

  -- Security Exchange: Alpha
  index, security_exchange = six_sixswissexchange_totalview_itch_v1_24_0.security_exchange.dissect(buffer, index, packet, parent)

  -- Reference Exchange: Alpha
  index, reference_exchange = six_sixswissexchange_totalview_itch_v1_24_0.reference_exchange.dissect(buffer, index, packet, parent)

  -- Cache Orderbook Directory Message record by orderbook
  if show.records and not packet.visited then
    six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.orderbook_directory_message[orderbook] = {
      record_frame = packet.number,
      record_previous = six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.orderbook_directory_message[orderbook],
      orderbook = orderbook,
      isin = isin,
      price_decimals = price_decimals,
    }
  end

  return index
end

-- Dissect: Orderbook Directory Message
six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.orderbook_directory_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Tick Size Message
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size_message = {}

-- Size: Price Tick Size Message
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.price_tick_table_id.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.price_start.size

-- Display: Price Tick Size Message
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Tick Size Message
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Price Tick Table Id: Integer
  index, price_tick_table_id = six_sixswissexchange_totalview_itch_v1_24_0.price_tick_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Size: Integer
  index, price_tick_size = six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size.dissect(buffer, index, packet, parent)

  -- Price Start: Price
  index, price_start = six_sixswissexchange_totalview_itch_v1_24_0.price_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Tick Size Message
six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.price_tick_size_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity Tick Size Message
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size_message = {}

-- Size: Quantity Tick Size Message
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_table_id.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.quantity_start.size

-- Display: Quantity Tick Size Message
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quantity Tick Size Message
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Quantity Tick Table Id: Integer
  index, quantity_tick_table_id = six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_table_id.dissect(buffer, index, packet, parent)

  -- Quantity Tick Size: Integer
  index, quantity_tick_size = six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size.dissect(buffer, index, packet, parent)

  -- Quantity Start: Quantity
  index, quantity_start = six_sixswissexchange_totalview_itch_v1_24_0.quantity_start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quantity Tick Size Message
six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.quantity_tick_size_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
six_sixswissexchange_totalview_itch_v1_24_0.system_event_message = {}

-- Size: System Event Message
six_sixswissexchange_totalview_itch_v1_24_0.system_event_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.timestamp.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.group.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.event_code.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.orderbook.size

-- Display: System Event Message
six_sixswissexchange_totalview_itch_v1_24_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
six_sixswissexchange_totalview_itch_v1_24_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = six_sixswissexchange_totalview_itch_v1_24_0.event_time.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = six_sixswissexchange_totalview_itch_v1_24_0.group.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = six_sixswissexchange_totalview_itch_v1_24_0.event_code.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = six_sixswissexchange_totalview_itch_v1_24_0.orderbook.lookup(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
six_sixswissexchange_totalview_itch_v1_24_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.system_event_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Stamp Seconds Message
six_sixswissexchange_totalview_itch_v1_24_0.time_stamp_seconds_message = {}

-- Size: Time Stamp Seconds Message
six_sixswissexchange_totalview_itch_v1_24_0.time_stamp_seconds_message.size =
  six_sixswissexchange_totalview_itch_v1_24_0.second.size

-- Display: Time Stamp Seconds Message
six_sixswissexchange_totalview_itch_v1_24_0.time_stamp_seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Stamp Seconds Message
six_sixswissexchange_totalview_itch_v1_24_0.time_stamp_seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = six_sixswissexchange_totalview_itch_v1_24_0.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  six_sixswissexchange_totalview_itch_v1_24_0.second.current = second

  if not packet.visited then
    six_sixswissexchange_totalview_itch_v1_24_0.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Time Stamp Seconds Message
six_sixswissexchange_totalview_itch_v1_24_0.time_stamp_seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.time_stamp_seconds_message, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.time_stamp_seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.time_stamp_seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.time_stamp_seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
six_sixswissexchange_totalview_itch_v1_24_0.payload = {}

-- Dispatch: Payload
six_sixswissexchange_totalview_itch_v1_24_0.payload.dispatch = {
  ["T"] = six_sixswissexchange_totalview_itch_v1_24_0.time_stamp_seconds_message.dissect,
  ["S"] = six_sixswissexchange_totalview_itch_v1_24_0.system_event_message.dissect,
  ["M"] = six_sixswissexchange_totalview_itch_v1_24_0.quantity_tick_size_message.dissect,
  ["L"] = six_sixswissexchange_totalview_itch_v1_24_0.price_tick_size_message.dissect,
  ["R"] = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_directory_message.dissect,
  ["H"] = six_sixswissexchange_totalview_itch_v1_24_0.orderbook_trading_action_message.dissect,
  ["A"] = six_sixswissexchange_totalview_itch_v1_24_0.add_order_message.dissect,
  ["E"] = six_sixswissexchange_totalview_itch_v1_24_0.order_executed_message.dissect,
  ["C"] = six_sixswissexchange_totalview_itch_v1_24_0.order_executed_with_price_message.dissect,
  ["Y"] = six_sixswissexchange_totalview_itch_v1_24_0.execution_summary_message.dissect,
  ["P"] = six_sixswissexchange_totalview_itch_v1_24_0.trade_message.dissect,
  ["B"] = six_sixswissexchange_totalview_itch_v1_24_0.broken_trade_message.dissect,
  ["D"] = six_sixswissexchange_totalview_itch_v1_24_0.order_delete_message.dissect,
  ["U"] = six_sixswissexchange_totalview_itch_v1_24_0.order_replace_message.dissect,
  ["I"] = six_sixswissexchange_totalview_itch_v1_24_0.indicative_price_quantity_message.dissect,
}

-- Dissect: Payload
six_sixswissexchange_totalview_itch_v1_24_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = six_sixswissexchange_totalview_itch_v1_24_0.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
six_sixswissexchange_totalview_itch_v1_24_0.message_header = {}

-- Size: Message Header
six_sixswissexchange_totalview_itch_v1_24_0.message_header.size =
  six_sixswissexchange_totalview_itch_v1_24_0.message_length.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.message_type.size

-- Display: Message Header
six_sixswissexchange_totalview_itch_v1_24_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
six_sixswissexchange_totalview_itch_v1_24_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = six_sixswissexchange_totalview_itch_v1_24_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 15 values
  index, message_type = six_sixswissexchange_totalview_itch_v1_24_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
six_sixswissexchange_totalview_itch_v1_24_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_header, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
six_sixswissexchange_totalview_itch_v1_24_0.message = {}

-- Read runtime size of: Message
six_sixswissexchange_totalview_itch_v1_24_0.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
six_sixswissexchange_totalview_itch_v1_24_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
six_sixswissexchange_totalview_itch_v1_24_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and six_sixswissexchange_totalview_itch_v1_24_0.packet_sequence ~= nil then
    local sequence = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message_sequence_number, UInt64.new(six_sixswissexchange_totalview_itch_v1_24_0.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = six_sixswissexchange_totalview_itch_v1_24_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 15 branches
  index = six_sixswissexchange_totalview_itch_v1_24_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
six_sixswissexchange_totalview_itch_v1_24_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = six_sixswissexchange_totalview_itch_v1_24_0.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.message, buffer(offset, 0))
    local current = six_sixswissexchange_totalview_itch_v1_24_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    six_sixswissexchange_totalview_itch_v1_24_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
six_sixswissexchange_totalview_itch_v1_24_0.end_of_session = {}

-- Display: End Of Session
six_sixswissexchange_totalview_itch_v1_24_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
six_sixswissexchange_totalview_itch_v1_24_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = six_sixswissexchange_totalview_itch_v1_24_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
six_sixswissexchange_totalview_itch_v1_24_0.heartbeat = {}

-- Display: Heartbeat
six_sixswissexchange_totalview_itch_v1_24_0.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
six_sixswissexchange_totalview_itch_v1_24_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = six_sixswissexchange_totalview_itch_v1_24_0.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
six_sixswissexchange_totalview_itch_v1_24_0.messages = {}

-- Dispatch: Messages
six_sixswissexchange_totalview_itch_v1_24_0.messages.dispatch = {
  [0] = six_sixswissexchange_totalview_itch_v1_24_0.heartbeat.dissect,
  [65535] = six_sixswissexchange_totalview_itch_v1_24_0.end_of_session.dissect,
}

-- Dissect: Messages
six_sixswissexchange_totalview_itch_v1_24_0.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = six_sixswissexchange_totalview_itch_v1_24_0.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = six_sixswissexchange_totalview_itch_v1_24_0.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
six_sixswissexchange_totalview_itch_v1_24_0.packet_header = {}

-- Size: Packet Header
six_sixswissexchange_totalview_itch_v1_24_0.packet_header.size =
  six_sixswissexchange_totalview_itch_v1_24_0.session.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.sequence_number.size + 
  six_sixswissexchange_totalview_itch_v1_24_0.message_count.size

-- Display: Packet Header
six_sixswissexchange_totalview_itch_v1_24_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
six_sixswissexchange_totalview_itch_v1_24_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = six_sixswissexchange_totalview_itch_v1_24_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = six_sixswissexchange_totalview_itch_v1_24_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = six_sixswissexchange_totalview_itch_v1_24_0.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  six_sixswissexchange_totalview_itch_v1_24_0.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
six_sixswissexchange_totalview_itch_v1_24_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0.fields.packet_header, buffer(offset, 0))
    local index = six_sixswissexchange_totalview_itch_v1_24_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = six_sixswissexchange_totalview_itch_v1_24_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return six_sixswissexchange_totalview_itch_v1_24_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
six_sixswissexchange_totalview_itch_v1_24_0.packet = {}

-- Verify required size of Udp packet
six_sixswissexchange_totalview_itch_v1_24_0.packet.requiredsize = function(buffer)
  return buffer:len() >= six_sixswissexchange_totalview_itch_v1_24_0.packet_header.size
end

-- Dissect Packet
six_sixswissexchange_totalview_itch_v1_24_0.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = six_sixswissexchange_totalview_itch_v1_24_0.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  six_sixswissexchange_totalview_itch_v1_24_0.second.current = data.second.frames[packet.number]
  six_sixswissexchange_totalview_itch_v1_24_0.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = six_sixswissexchange_totalview_itch_v1_24_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = six_sixswissexchange_totalview_itch_v1_24_0.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_six_sixswissexchange_totalview_itch_v1_24_0.init()
  six_sixswissexchange_totalview_itch_v1_24_0.second.current = nil
  six_sixswissexchange_totalview_itch_v1_24_0.conversation.current = nil
  six_sixswissexchange_totalview_itch_v1_24_0.conversation.flows = {}
end

-- Dissector for Six SixSwissExchange TotalView Itch 1.24.0
function omi_six_sixswissexchange_totalview_itch_v1_24_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_six_sixswissexchange_totalview_itch_v1_24_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_six_sixswissexchange_totalview_itch_v1_24_0, buffer(), omi_six_sixswissexchange_totalview_itch_v1_24_0.description, "("..buffer:len().." Bytes)")
  return six_sixswissexchange_totalview_itch_v1_24_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Six SixSwissExchange TotalView Itch 1.24.0 (Udp)
local function omi_six_sixswissexchange_totalview_itch_v1_24_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not six_sixswissexchange_totalview_itch_v1_24_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_six_sixswissexchange_totalview_itch_v1_24_0
  omi_six_sixswissexchange_totalview_itch_v1_24_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Six SixSwissExchange TotalView Itch 1.24.0
omi_six_sixswissexchange_totalview_itch_v1_24_0:register_heuristic("udp", omi_six_sixswissexchange_totalview_itch_v1_24_0_udp_heuristic)

-- Register Six SixSwissExchange TotalView Itch 1.24.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_six_sixswissexchange_totalview_itch_v1_24_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: SIX Swiss Exchange
--   Version: 1.24.0
--   Date: Tuesday, January 21, 2025
--   Specification: SSX-IMI-TRD-SPEC-1.24.0E.pdf
--
-- Script:
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
--   https://patents.google.com/patent/US12101388B2/en
--   https://patents.google.com/patent/US20240419416A1/en
--   https://patents.google.com/patent/US20260368281A1/en
--
-----------------------------------------------------------------------
