-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cnsx Cse Multicast Mmd 2.8 Protocol
local omi_cnsx_cse_multicast_mmd_v2_8 = Proto("Omi.Cnsx.Cse.Multicast.Mmd.v2.8", "Cnsx Cse Multicast Mmd 2.8")

-- Protocol table
local cnsx_cse_multicast_mmd_v2_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cnsx Cse Multicast Mmd 2.8 Fields
omi_cnsx_cse_multicast_mmd_v2_8.fields.anonymous_setting = ProtoField.new("Anonymous Setting", "cnsx.cse.multicast.mmd.v2.8.anonymoussetting", ftypes.STRING, nil, nil, nil, "\"Y\" = Anonymous enabled, \"N\" = Anonymous disabled.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.best_bid = ProtoField.new("Best Bid", "cnsx.cse.multicast.mmd.v2.8.bestbid", ftypes.DOUBLE, nil, nil, nil, "Best buy price.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.best_bid_size = ProtoField.new("Best Bid Size", "cnsx.cse.multicast.mmd.v2.8.bestbidsize", ftypes.UINT32, nil, nil, nil, "Total quantity at the best buy price.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.best_offer = ProtoField.new("Best Offer", "cnsx.cse.multicast.mmd.v2.8.bestoffer", ftypes.DOUBLE, nil, nil, nil, "Best sell price.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.best_offer_size = ProtoField.new("Best Offer Size", "cnsx.cse.multicast.mmd.v2.8.bestoffersize", ftypes.UINT32, nil, nil, nil, "Total quantity at the best sell price.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.block_length = ProtoField.new("Block Length", "cnsx.cse.multicast.mmd.v2.8.blocklength", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages including this header")
omi_cnsx_cse_multicast_mmd_v2_8.fields.block_number_of_messages = ProtoField.new("Block Number Of Messages", "cnsx.cse.multicast.mmd.v2.8.blocknumberofmessages", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cnsx_cse_multicast_mmd_v2_8.fields.block_start_sequence = ProtoField.new("Block Start Sequence", "cnsx.cse.multicast.mmd.v2.8.blockstartsequence", ftypes.UINT32, nil, nil, nil, "Sequence of first message to follow this header")
omi_cnsx_cse_multicast_mmd_v2_8.fields.ccp_session_trade = ProtoField.new("Ccp Session Trade", "cnsx.cse.multicast.mmd.v2.8.ccpsessiontrade", ftypes.STRING, nil, nil, nil, "\"Y\" = CCP Session Trade, \"N\" = Not CCP Session Trade.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.contra_firm_id = ProtoField.new("Contra Firm Id", "cnsx.cse.multicast.mmd.v2.8.contrafirmid", ftypes.STRING, nil, nil, nil, "3 digit integer FirmId. \"001\" means anonymous.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.cross_type = ProtoField.new("Cross Type", "cnsx.cse.multicast.mmd.v2.8.crosstype", ftypes.STRING, nil, nil, nil, "Type of cross the trade resulted from.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.currency = ProtoField.new("Currency", "cnsx.cse.multicast.mmd.v2.8.currency", ftypes.STRING, nil, nil, nil, "Trading currency.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.cusip = ProtoField.new("Cusip", "cnsx.cse.multicast.mmd.v2.8.cusip", ftypes.STRING, nil, nil, nil, "CUSIP code.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.event_code = ProtoField.new("Event Code", "cnsx.cse.multicast.mmd.v2.8.eventcode", ftypes.STRING, nil, nil, nil, "Event Code (see System Event Codes).")
omi_cnsx_cse_multicast_mmd_v2_8.fields.exchange_timestamp = ProtoField.new("Exchange Timestamp", "cnsx.cse.multicast.mmd.v2.8.exchangetimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Official exchange time. Milliseconds since EPOCH (Jan 1, 0:0:0, 1970).")
omi_cnsx_cse_multicast_mmd_v2_8.fields.exchange_timestamp_utc = ProtoField.new("Exchange Timestamp", "cnsx.cse.multicast.mmd.v2.8.exchangetimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Official exchange time. Milliseconds since EPOCH (Jan 1, 0:0:0, 1970).")
omi_cnsx_cse_multicast_mmd_v2_8.fields.executed_quantity = ProtoField.new("Executed Quantity", "cnsx.cse.multicast.mmd.v2.8.executedquantity", ftypes.UINT32, nil, nil, nil, "Number of shares executed.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.execution_price = ProtoField.new("Execution Price", "cnsx.cse.multicast.mmd.v2.8.executionprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the execution occurred.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.expiry = ProtoField.new("Expiry", "cnsx.cse.multicast.mmd.v2.8.expiry", ftypes.UINT64, nil, nil, nil, "YYYYMMDD. 0 represents no expiry date.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.firm_id = ProtoField.new("Firm Id", "cnsx.cse.multicast.mmd.v2.8.firmid", ftypes.STRING, nil, nil, nil, "3 digit integer FirmId. \"001\" means anonymous.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.full_sec_name = ProtoField.new("Full Sec Name", "cnsx.cse.multicast.mmd.v2.8.fullsecname", ftypes.STRING, nil, nil, nil, "Long security name.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.gmf_setting = ProtoField.new("Gmf Setting", "cnsx.cse.multicast.mmd.v2.8.gmfsetting", ftypes.STRING, nil, nil, nil, "\"Y\" = GMF enabled, \"N\" = GMF disabled.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.gmf_volume = ProtoField.new("Gmf Volume", "cnsx.cse.multicast.mmd.v2.8.gmfvolume", ftypes.UINT64, nil, nil, nil, "Volume of GMF order.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.group = ProtoField.new("Group", "cnsx.cse.multicast.mmd.v2.8.group", ftypes.UINT64, nil, nil, nil, "ID for symbol grouping. 0: System Level event.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.listing = ProtoField.new("Listing", "cnsx.cse.multicast.mmd.v2.8.listing", ftypes.UINT64, nil, nil, nil, "YYYYMMDD. 0 represents no listing date.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.listing_market = ProtoField.new("Listing Market", "cnsx.cse.multicast.mmd.v2.8.listingmarket", ftypes.STRING, nil, nil, nil, "Listing market of the security.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.listing_tier = ProtoField.new("Listing Tier", "cnsx.cse.multicast.mmd.v2.8.listingtier", ftypes.UINT8, nil, nil, nil, "Listing tier of the security.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.lot_size = ProtoField.new("Lot Size", "cnsx.cse.multicast.mmd.v2.8.lotsize", ftypes.UINT32, nil, nil, nil, "Lot size for the Symbol. Based on Reference price, lot size will be calculated at Start of Day.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.market_maker_name = ProtoField.new("Market Maker Name", "cnsx.cse.multicast.mmd.v2.8.marketmakername", ftypes.STRING, nil, nil, nil, "Market Maker name.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.market_maker_phone_number = ProtoField.new("Market Maker Phone Number", "cnsx.cse.multicast.mmd.v2.8.marketmakerphonenumber", ftypes.STRING, nil, nil, nil, "Market Maker phone number.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.market_order_imbalance_side = ProtoField.new("Market Order Imbalance Side", "cnsx.cse.multicast.mmd.v2.8.marketorderimbalanceside", ftypes.STRING, nil, nil, nil, "The buy or sell side of the Market Order Only Imbalance Volume.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.market_order_imbalance_volume = ProtoField.new("Market Order Imbalance Volume", "cnsx.cse.multicast.mmd.v2.8.marketorderimbalancevolume", ftypes.UINT64, nil, nil, nil, "Indicates the volume of shares on the Imbalance based on MOC orders only.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.match_number = ProtoField.new("Match Number", "cnsx.cse.multicast.mmd.v2.8.matchnumber", ftypes.STRING, nil, nil, nil, "Unique match identifier.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.message_text = ProtoField.new("Message Text", "cnsx.cse.multicast.mmd.v2.8.messagetext", ftypes.STRING, nil, nil, nil, "Message Text.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.message_type = ProtoField.new("Message Type", "cnsx.cse.multicast.mmd.v2.8.messagetype", ftypes.STRING)
omi_cnsx_cse_multicast_mmd_v2_8.fields.millisecond = ProtoField.new("Millisecond", "cnsx.cse.multicast.mmd.v2.8.millisecond", ftypes.UINT16, nil, nil, nil, "Millisecond portion of the time when this time message was generated.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_and_loc_only_closing_price = ProtoField.new("Moc And Loc Only Closing Price", "cnsx.cse.multicast.mmd.v2.8.mocandloconlyclosingprice", ftypes.DOUBLE, nil, nil, nil, "The closing price based on MOC and LOC orders only.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_and_loc_only_imbalance_side = ProtoField.new("Moc And Loc Only Imbalance Side", "cnsx.cse.multicast.mmd.v2.8.mocandloconlyimbalanceside", ftypes.STRING, nil, nil, nil, "Marker to indicate which side has a Volume Imbalance for Market-on-Close (MOC).")
omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_and_loc_only_imbalance_volume = ProtoField.new("Moc And Loc Only Imbalance Volume", "cnsx.cse.multicast.mmd.v2.8.mocandloconlyimbalancevolume", ftypes.UINT64, nil, nil, nil, "Identifies the volume of shares of the Imbalance side of MOC.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_and_loc_only_paired_volume = ProtoField.new("Moc And Loc Only Paired Volume", "cnsx.cse.multicast.mmd.v2.8.mocandloconlypairedvolume", ftypes.UINT64, nil, nil, nil, "The number of MOC and LOC shares that can be matched at the MRP.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_eligible = ProtoField.new("Moc Eligible", "cnsx.cse.multicast.mmd.v2.8.moceligible", ftypes.STRING, nil, nil, nil, "\"Y\" = MOC Eligible, \"N\" = Not MOC Eligible.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_imbalance_reference_price = ProtoField.new("Moc Imbalance Reference Price", "cnsx.cse.multicast.mmd.v2.8.mocimbalancereferenceprice", ftypes.DOUBLE, nil, nil, nil, "The MOC Reference Price (MRP).")
omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_indicative_closing_price = ProtoField.new("Moc Indicative Closing Price", "cnsx.cse.multicast.mmd.v2.8.mocindicativeclosingprice", ftypes.DOUBLE, nil, nil, nil, "This price is what the closing price would be if it occurred at that moment in time.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_trade_marker = ProtoField.new("Moc Trade Marker", "cnsx.cse.multicast.mmd.v2.8.moctrademarker", ftypes.STRING, nil, nil, nil, "To indicate which trades are MOC or LOC trades. \"Y\" = MOC or LOC trade, \"N\" = Not MOC or LOC trade.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.odd_lot_flag = ProtoField.new("Odd Lot Flag", "cnsx.cse.multicast.mmd.v2.8.oddlotflag", ftypes.STRING, nil, nil, nil, "\"Y\" = Odd lot order, \"N\" = Not an odd lot.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.opening_trade = ProtoField.new("Opening Trade", "cnsx.cse.multicast.mmd.v2.8.openingtrade", ftypes.STRING, nil, nil, nil, "\"Y\" = Opening Trade, \"N\" = Not Opening Trade.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.order_number = ProtoField.new("Order Number", "cnsx.cse.multicast.mmd.v2.8.ordernumber", ftypes.STRING, nil, nil, nil, "Unique reference number assigned to the new order.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.order_verb = ProtoField.new("Order Verb", "cnsx.cse.multicast.mmd.v2.8.orderverb", ftypes.STRING, nil, nil, nil, "\"B\" Buy, \"S\" Sell.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.previous_closing_price = ProtoField.new("Previous Closing Price", "cnsx.cse.multicast.mmd.v2.8.previousclosingprice", ftypes.DOUBLE, nil, nil, nil, "Adjusted previous closing price.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.price = ProtoField.new("Price", "cnsx.cse.multicast.mmd.v2.8.price", ftypes.DOUBLE, nil, nil, nil, "Price of the new order.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.price_variation = ProtoField.new("Price Variation", "cnsx.cse.multicast.mmd.v2.8.pricevariation", ftypes.DOUBLE, nil, nil, nil, "Indicates the absolute value of the percent deviation of the MOC Indicative Closing Price to the MRP. Format NNNDD, three digits before and two after the decimal place. Disseminated as 999.99 if the calculated value exceeds 999.99.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.priority_timestamp = ProtoField.new("Priority Timestamp", "cnsx.cse.multicast.mmd.v2.8.prioritytimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Priority timestamp. Milliseconds since EPOCH (Jan 1, 0:0:0, 1970).")
omi_cnsx_cse_multicast_mmd_v2_8.fields.priority_timestamp_utc = ProtoField.new("Priority Timestamp", "cnsx.cse.multicast.mmd.v2.8.prioritytimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Priority timestamp. Milliseconds since EPOCH (Jan 1, 0:0:0, 1970).")
omi_cnsx_cse_multicast_mmd_v2_8.fields.quantity = ProtoField.new("Quantity", "cnsx.cse.multicast.mmd.v2.8.quantity", ftypes.UINT32, nil, nil, nil, "Total quantity of the order being added to the book.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.reason = ProtoField.new("Reason", "cnsx.cse.multicast.mmd.v2.8.reason", ftypes.STRING, nil, nil, nil, "Reason the trade was broken (see Broken Trade Reasons).")
omi_cnsx_cse_multicast_mmd_v2_8.fields.sec_name = ProtoField.new("Sec Name", "cnsx.cse.multicast.mmd.v2.8.secname", ftypes.STRING, nil, nil, nil, "Short security name.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.second = ProtoField.new("Second", "cnsx.cse.multicast.mmd.v2.8.second", ftypes.UINT32, nil, nil, nil, "Number of seconds since midnight (Eastern Time) of the first day of the system cycle.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.sets_the_last_price = ProtoField.new("Sets The Last Price", "cnsx.cse.multicast.mmd.v2.8.setsthelastprice", ftypes.STRING, nil, nil, nil, "\"Y\" = Last sale, \"N\" = Not last sale.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.settlement_term = ProtoField.new("Settlement Term", "cnsx.cse.multicast.mmd.v2.8.settlementterm", ftypes.STRING, nil, nil, nil, "Override Settlement Term. \"T\" = Cash Today (T+0), \"N\" = Non-Net, \"R\" = Non-Resident, or a Special Settlement Date in YYYYMMDD format. Left blank \" \" if default settlement.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.stock_group = ProtoField.new("Stock Group", "cnsx.cse.multicast.mmd.v2.8.stockgroup", ftypes.UINT64, nil, nil, nil, "Stock Group.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.sub_length = ProtoField.new("Sub Length", "cnsx.cse.multicast.mmd.v2.8.sublength", ftypes.UINT8, nil, nil, nil, "Message length including this field. The exchange may append fields to a message, so this and not a table total bounds it")
omi_cnsx_cse_multicast_mmd_v2_8.fields.symbol = ProtoField.new("Symbol", "cnsx.cse.multicast.mmd.v2.8.symbol", ftypes.STRING, nil, nil, nil, "Symbol.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.system_event = ProtoField.new("System Event", "cnsx.cse.multicast.mmd.v2.8.systemevent", ftypes.STRING, nil, nil, nil, "The state of the symbol \"E\" Closing Delayed.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.theoretical_opening_price = ProtoField.new("Theoretical Opening Price", "cnsx.cse.multicast.mmd.v2.8.theoreticalopeningprice", ftypes.DOUBLE, nil, nil, nil, "Current opening price for this symbol.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.theoretical_opening_quantity = ProtoField.new("Theoretical Opening Quantity", "cnsx.cse.multicast.mmd.v2.8.theoreticalopeningquantity", ftypes.UINT64, nil, nil, nil, "Total quantity eligible to be matched at the current Theoretical Opening Price.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.time_offset = ProtoField.new("Time Offset", "cnsx.cse.multicast.mmd.v2.8.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanoseconds since last Timestamp-Seconds message.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.trade_attribute = ProtoField.new("Trade Attribute", "cnsx.cse.multicast.mmd.v2.8.tradeattribute", ftypes.STRING, nil, nil, nil, "\"B\" for ByPass order, \" \" default.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.trading_state = ProtoField.new("Trading State", "cnsx.cse.multicast.mmd.v2.8.tradingstate", ftypes.STRING, nil, nil, nil, "Current trading state for symbol (see Trading Action).")

-- Cnsx Cse Multicast Mmd 2.8 Framing
omi_cnsx_cse_multicast_mmd_v2_8.fields.block_header = ProtoField.new("Block Header", "cnsx.cse.multicast.mmd.v2.8.blockheader", ftypes.STRING, nil, nil, nil, "Prefix of a block of messages, carrying the unique information to identify and route them")
omi_cnsx_cse_multicast_mmd_v2_8.fields.message = ProtoField.new("Message", "cnsx.cse.multicast.mmd.v2.8.message", ftypes.STRING, nil, nil, nil, "Cnsx Mmd sub message: a two byte sub header and a payload the message type selects")
omi_cnsx_cse_multicast_mmd_v2_8.fields.message_header = ProtoField.new("Message Header", "cnsx.cse.multicast.mmd.v2.8.messageheader", ftypes.STRING, nil, nil, nil, "Two byte sub header prefixing every message, carrying its length and its type")
omi_cnsx_cse_multicast_mmd_v2_8.fields.packet = ProtoField.new("Packet", "cnsx.cse.multicast.mmd.v2.8.packet", ftypes.STRING, nil, nil, nil, "Cnsx Mmd Udp Packet: a block header followed by Number of Messages message(s)")

-- Cnsx Cse Multicast 2.8 Application Messages
omi_cnsx_cse_multicast_mmd_v2_8.fields.add_order_message = ProtoField.new("Add Order Message", "cnsx.cse.multicast.mmd.v2.8.addordermessage", ftypes.STRING, nil, nil, nil, "A new order added to the displayed book.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.best_bid_offer_message = ProtoField.new("Best Bid Offer Message", "cnsx.cse.multicast.mmd.v2.8.bestbidoffermessage", ftypes.STRING, nil, nil, nil, "The best bid and offer for a symbol with the quantity at each. During an auction with an indicative price set, the indicative price overwrites both sides.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "cnsx.cse.multicast.mmd.v2.8.brokentrademessage", ftypes.STRING, nil, nil, nil, "A previously transmitted execution that has been broken, naming the match number it cancels.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.closing_price_message = ProtoField.new("Closing Price Message", "cnsx.cse.multicast.mmd.v2.8.closingpricemessage", ftypes.STRING, nil, nil, nil, "The closing price for a symbol.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.eop_moc_imbalance_message = ProtoField.new("Eop Moc Imbalance Message", "cnsx.cse.multicast.mmd.v2.8.eopmocimbalancemessage", ftypes.STRING, nil, nil, nil, "The market-on-close imbalance during an Extended Offset Period, which affects only symbols in a Closing Delayed state. Transmitted once, after the MOC closing price calculation is complete.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.general_message = ProtoField.new("General Message", "cnsx.cse.multicast.mmd.v2.8.generalmessage", ftypes.STRING, nil, nil, nil, "Free text bulletin from the exchange.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.indicative_price_quantity_message = ProtoField.new("Indicative Price Quantity Message", "cnsx.cse.multicast.mmd.v2.8.indicativepricequantitymessage", ftypes.STRING, nil, nil, nil, "The theoretical opening price and matchable quantity for a symbol during an auction.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_imbalance_notification_message = ProtoField.new("Moc Imbalance Notification Message", "cnsx.cse.multicast.mmd.v2.8.mocimbalancenotificationmessage", ftypes.STRING, nil, nil, nil, "The market-on-close imbalance for a symbol, disseminated at regular intervals from the beginning of the MOC Imbalance state until 10 seconds before the close.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.order_delete_message = ProtoField.new("Order Delete Message", "cnsx.cse.multicast.mmd.v2.8.orderdeletemessage", ftypes.STRING, nil, nil, nil, "An order cancelled and removed from the displayed book.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.order_executed_message = ProtoField.new("Order Executed Message", "cnsx.cse.multicast.mmd.v2.8.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "An order on the book executed in whole or in part at the price it was displayed at.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "cnsx.cse.multicast.mmd.v2.8.orderexecutedwithpricemessage", ftypes.STRING, nil, nil, nil, "An order on the book executed in whole or in part at a price other than the one it was displayed at.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.order_replace_message = ProtoField.new("Order Replace Message", "cnsx.cse.multicast.mmd.v2.8.orderreplacemessage", ftypes.STRING, nil, nil, nil, "An order on the book replaced with a new quantity and price, keeping its order number.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.symbol_directory_message = ProtoField.new("Symbol Directory Message", "cnsx.cse.multicast.mmd.v2.8.symboldirectorymessage", ftypes.STRING, nil, nil, nil, "Static properties of a symbol. Sent for every symbol in the morning, and again during the day if a symbol changes.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.symbol_dynamics_message = ProtoField.new("Symbol Dynamics Message", "cnsx.cse.multicast.mmd.v2.8.symboldynamicsmessage", ftypes.STRING, nil, nil, nil, "Values and rules for a symbol that can be updated intra-day. Sent for every symbol in the morning, and again during the day if a symbol changes.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.system_event_message = ProtoField.new("System Event Message", "cnsx.cse.multicast.mmd.v2.8.systemeventmessage", ftypes.STRING, nil, nil, nil, "Signals a market or data feed handler event, either for the system as a whole or for one symbol group.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.time_message = ProtoField.new("Time Message", "cnsx.cse.multicast.mmd.v2.8.timemessage", ftypes.STRING, nil, nil, nil, "Anchors the feed clock. Every following message states its own time as nanoseconds elapsed since this message.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.trade_message = ProtoField.new("Trade Message", "cnsx.cse.multicast.mmd.v2.8.trademessage", ftypes.STRING, nil, nil, nil, "A trade that does not change the displayed book, carrying the full attribution and classification of the execution.")
omi_cnsx_cse_multicast_mmd_v2_8.fields.trading_action_message = ProtoField.new("Trading Action Message", "cnsx.cse.multicast.mmd.v2.8.tradingactionmessage", ftypes.STRING, nil, nil, nil, "Current trading state for a symbol. A symbol suspended intra-day with \"V\" is unsuspended with \"N\".")

-- Cnsx Cse Multicast Mmd 2.8 Generated Fields
omi_cnsx_cse_multicast_mmd_v2_8.fields.message_index = ProtoField.new("Message Index", "cnsx.cse.multicast.mmd.v2.8.messageindex", ftypes.UINT16)
omi_cnsx_cse_multicast_mmd_v2_8.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cnsx.cse.multicast.mmd.v2.8.messagesequencenumber", ftypes.UINT64)
omi_cnsx_cse_multicast_mmd_v2_8.fields.timestamp = ProtoField.new("Timestamp", "cnsx.cse.multicast.mmd.v2.8.timestamp", ftypes.UINT64)

-- Cnsx Cse Multicast Mmd 2.8 Expert Info
cnsx_cse_multicast_mmd_v2_8.experts = {}
cnsx_cse_multicast_mmd_v2_8.experts.not_a_number = ProtoExpert.new("cnsx.cse.multicast.mmd.v2.8.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_cnsx_cse_multicast_mmd_v2_8.experts = { cnsx_cse_multicast_mmd_v2_8.experts.not_a_number }

-----------------------------------------------------------------------
-- Cnsx Cse Multicast Mmd 2.8 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cnsx_cse_multicast_mmd_v2_8.timestamp_format = 2

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cnsx_cse_multicast_mmd_v2_8.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cnsx_cse_multicast_mmd_v2_8.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cnsx Cse Multicast Mmd 2.8 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.indexes = true
show.sequences = true

-- Register Cnsx Cse Multicast Mmd 2.8 Show Options
omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_cnsx_cse_multicast_mmd_v2_8.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_cnsx_cse_multicast_mmd_v2_8.prefs.timestamp_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", timestamp_format_enum, false)
omi_cnsx_cse_multicast_mmd_v2_8.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cnsx_cse_multicast_mmd_v2_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_application_messages then
    show.application_messages = omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_application_messages
  end
  if show.headers ~= omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_headers then
    show.headers = omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_headers
  end
  if show.structs ~= omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_structs then
    show.structs = omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_structs
  end
  if show.indexes ~= omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_indexes then
    show.indexes = omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_indexes
  end
  if show.sequences ~= omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_sequences then
    show.sequences = omi_cnsx_cse_multicast_mmd_v2_8.prefs.show_sequences
  end
  if cnsx_cse_multicast_mmd_v2_8.format_timestamp ~= omi_cnsx_cse_multicast_mmd_v2_8.prefs.format_timestamp then
    cnsx_cse_multicast_mmd_v2_8.format_timestamp = omi_cnsx_cse_multicast_mmd_v2_8.prefs.format_timestamp
  end
  if cnsx_cse_multicast_mmd_v2_8.timestamp_format ~= omi_cnsx_cse_multicast_mmd_v2_8.prefs.timestamp_format then
    cnsx_cse_multicast_mmd_v2_8.timestamp_format = omi_cnsx_cse_multicast_mmd_v2_8.prefs.timestamp_format
  end
  if cnsx_cse_multicast_mmd_v2_8.absolute_time_base ~= omi_cnsx_cse_multicast_mmd_v2_8.prefs.absolute_time_base then
    cnsx_cse_multicast_mmd_v2_8.absolute_time_base = omi_cnsx_cse_multicast_mmd_v2_8.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cnsx_cse_multicast_mmd_v2_8.conversation = {}
cnsx_cse_multicast_mmd_v2_8.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cnsx_cse_multicast_mmd_v2_8.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cnsx_cse_multicast_mmd_v2_8.conversation.data = function(packet)
  local key = cnsx_cse_multicast_mmd_v2_8.conversation.key(packet)
  local data = cnsx_cse_multicast_mmd_v2_8.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} } }
    cnsx_cse_multicast_mmd_v2_8.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cnsx_cse_multicast_mmd_v2_8.conversation.current = nil


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
-- Cnsx Cse Multicast Mmd 2.8 Fields
-----------------------------------------------------------------------

-- Anonymous Setting
cnsx_cse_multicast_mmd_v2_8.anonymous_setting = {}

-- Size: Anonymous Setting
cnsx_cse_multicast_mmd_v2_8.anonymous_setting.size = 1

-- Display: Anonymous Setting
cnsx_cse_multicast_mmd_v2_8.anonymous_setting.labels = {
  ["Y"] = "Anonymous Setting: Anonymous Enabled (Y)",
  ["N"] = "Anonymous Setting: Anonymous Disabled (N)",
}

cnsx_cse_multicast_mmd_v2_8.anonymous_setting.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.anonymous_setting.labels[value] or "Anonymous Setting: Unknown("..value..")"
end

-- Dissect: Anonymous Setting
cnsx_cse_multicast_mmd_v2_8.anonymous_setting.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.anonymous_setting.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.anonymous_setting.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.anonymous_setting, range, value, display)

  return offset + length, value
end

-- Best Bid
cnsx_cse_multicast_mmd_v2_8.best_bid = {}

-- Size: Best Bid
cnsx_cse_multicast_mmd_v2_8.best_bid.size = 4

-- Display: Best Bid
cnsx_cse_multicast_mmd_v2_8.best_bid.display = function(value)
  return "Best Bid: "..value
end

-- Translate: Best Bid
cnsx_cse_multicast_mmd_v2_8.best_bid.translate = function(raw)
  return raw/10000
end

-- Dissect: Best Bid
cnsx_cse_multicast_mmd_v2_8.best_bid.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.best_bid.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse_multicast_mmd_v2_8.best_bid.translate(raw)
  local display = cnsx_cse_multicast_mmd_v2_8.best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.best_bid, range, value, display)

  return offset + length, value
end

-- Best Bid Size
cnsx_cse_multicast_mmd_v2_8.best_bid_size = {}

-- Size: Best Bid Size
cnsx_cse_multicast_mmd_v2_8.best_bid_size.size = 4

-- Display: Best Bid Size
cnsx_cse_multicast_mmd_v2_8.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
cnsx_cse_multicast_mmd_v2_8.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Best Offer
cnsx_cse_multicast_mmd_v2_8.best_offer = {}

-- Size: Best Offer
cnsx_cse_multicast_mmd_v2_8.best_offer.size = 4

-- Display: Best Offer
cnsx_cse_multicast_mmd_v2_8.best_offer.display = function(value)
  return "Best Offer: "..value
end

-- Translate: Best Offer
cnsx_cse_multicast_mmd_v2_8.best_offer.translate = function(raw)
  return raw/10000
end

-- Dissect: Best Offer
cnsx_cse_multicast_mmd_v2_8.best_offer.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.best_offer.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse_multicast_mmd_v2_8.best_offer.translate(raw)
  local display = cnsx_cse_multicast_mmd_v2_8.best_offer.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.best_offer, range, value, display)

  return offset + length, value
end

-- Best Offer Size
cnsx_cse_multicast_mmd_v2_8.best_offer_size = {}

-- Size: Best Offer Size
cnsx_cse_multicast_mmd_v2_8.best_offer_size.size = 4

-- Display: Best Offer Size
cnsx_cse_multicast_mmd_v2_8.best_offer_size.display = function(value)
  return "Best Offer Size: "..value
end

-- Dissect: Best Offer Size
cnsx_cse_multicast_mmd_v2_8.best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Block Length
cnsx_cse_multicast_mmd_v2_8.block_length = {}

-- Size: Block Length
cnsx_cse_multicast_mmd_v2_8.block_length.size = 2

-- Display: Block Length
cnsx_cse_multicast_mmd_v2_8.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cnsx_cse_multicast_mmd_v2_8.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.block_length, range, value, display)

  return offset + length, value
end

-- Block Number Of Messages
cnsx_cse_multicast_mmd_v2_8.block_number_of_messages = {}

-- Size: Block Number Of Messages
cnsx_cse_multicast_mmd_v2_8.block_number_of_messages.size = 1

-- Display: Block Number Of Messages
cnsx_cse_multicast_mmd_v2_8.block_number_of_messages.display = function(value)
  return "Block Number Of Messages: "..value
end

-- Dissect: Block Number Of Messages
cnsx_cse_multicast_mmd_v2_8.block_number_of_messages.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.block_number_of_messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.block_number_of_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.block_number_of_messages, range, value, display)

  return offset + length, value
end

-- Block Start Sequence
cnsx_cse_multicast_mmd_v2_8.block_start_sequence = {}

-- Size: Block Start Sequence
cnsx_cse_multicast_mmd_v2_8.block_start_sequence.size = 4

-- Display: Block Start Sequence
cnsx_cse_multicast_mmd_v2_8.block_start_sequence.display = function(value)
  return "Block Start Sequence: "..value
end

-- Dissect: Block Start Sequence
cnsx_cse_multicast_mmd_v2_8.block_start_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.block_start_sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.block_start_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.block_start_sequence, range, value, display)

  return offset + length, value
end

-- Ccp Session Trade
cnsx_cse_multicast_mmd_v2_8.ccp_session_trade = {}

-- Size: Ccp Session Trade
cnsx_cse_multicast_mmd_v2_8.ccp_session_trade.size = 1

-- Display: Ccp Session Trade
cnsx_cse_multicast_mmd_v2_8.ccp_session_trade.labels = {
  ["Y"] = "Ccp Session Trade: Ccp Session Trade (Y)",
  ["N"] = "Ccp Session Trade: Not Ccp Session Trade (N)",
}

cnsx_cse_multicast_mmd_v2_8.ccp_session_trade.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.ccp_session_trade.labels[value] or "Ccp Session Trade: Unknown("..value..")"
end

-- Dissect: Ccp Session Trade
cnsx_cse_multicast_mmd_v2_8.ccp_session_trade.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.ccp_session_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.ccp_session_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.ccp_session_trade, range, value, display)

  return offset + length, value
end

-- Contra Firm Id
cnsx_cse_multicast_mmd_v2_8.contra_firm_id = {}

-- Size: Contra Firm Id
cnsx_cse_multicast_mmd_v2_8.contra_firm_id.size = 3

-- Display: Contra Firm Id
cnsx_cse_multicast_mmd_v2_8.contra_firm_id.display = function(value)
  return "Contra Firm Id: "..value
end

-- Dissect: Contra Firm Id
cnsx_cse_multicast_mmd_v2_8.contra_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.contra_firm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.contra_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.contra_firm_id, range, value, display)

  return offset + length, value
end

-- Cross Type
cnsx_cse_multicast_mmd_v2_8.cross_type = {}

-- Size: Cross Type
cnsx_cse_multicast_mmd_v2_8.cross_type.size = 1

-- Display: Cross Type
cnsx_cse_multicast_mmd_v2_8.cross_type.display = function(value)
  if value == "R" then
    return "Cross Type: Regular (R)"
  end
  if value == "I" then
    return "Cross Type: Internal (I)"
  end
  if value == "C" then
    return "Cross Type: Contingent (C)"
  end
  if value == "B" then
    return "Cross Type: Basis (B)"
  end
  if value == "V" then
    return "Cross Type: Vwap (V)"
  end
  if value == "D" then
    return "Cross Type: Derivative Related (D)"
  end
  if value == " " then
    return "Cross Type: Otherwise Empty String Not Specified (<whitespace>)"
  end
  if value == "S" then
    return "Cross Type: Ccp Closing Price (S)"
  end
  if value == "N" then
    return "Cross Type: Net Asset Value Nav (N)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
cnsx_cse_multicast_mmd_v2_8.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
cnsx_cse_multicast_mmd_v2_8.currency = {}

-- Size: Currency
cnsx_cse_multicast_mmd_v2_8.currency.size = 3

-- Display: Currency
cnsx_cse_multicast_mmd_v2_8.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cnsx_cse_multicast_mmd_v2_8.currency.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.currency, range, value, display)

  return offset + length, value
end

-- Cusip
cnsx_cse_multicast_mmd_v2_8.cusip = {}

-- Size: Cusip
cnsx_cse_multicast_mmd_v2_8.cusip.size = 12

-- Display: Cusip
cnsx_cse_multicast_mmd_v2_8.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
cnsx_cse_multicast_mmd_v2_8.cusip.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.cusip.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.cusip, range, value, display)

  return offset + length, value
end

-- Event Code
cnsx_cse_multicast_mmd_v2_8.event_code = {}

-- Size: Event Code
cnsx_cse_multicast_mmd_v2_8.event_code.size = 1

-- Display: Event Code
cnsx_cse_multicast_mmd_v2_8.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages The First Message Is Sent (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["V"] = "Event Code: Pre Open Auction Period Begins The Exchange Is Open And Ready To Start Accepting Orders (V)",
  ["Q"] = "Event Code: Start Of Market Hours The Pre Open Auction Is Concluded And Continuous Trading Begins (Q)",
  ["M"] = "Event Code: End Of Market Hours Indicates The End Of Continuous Trading (M)",
  ["E"] = "Event Code: End Of System Hours Indicates The Exchange Is Closed (E)",
  ["C"] = "Event Code: End Of Messages The Last Message Sent (C)",
  ["X"] = "Event Code: Ccp Extended Session Is Open (X)",
  ["N"] = "Event Code: Ccp Extended Session Is Closed (N)",
  ["Z"] = "Event Code: Failover Event (Z)",
  ["I"] = "Event Code: Moc Imbalance (I)",
  ["F"] = "Event Code: Moc Freeze (F)",
  ["A"] = "Event Code: Moc Closing Price Determination (A)",
  ["P"] = "Event Code: Eop Starts (P)",
  ["B"] = "Event Code: Eop Closing Price Determination (B)",
}

cnsx_cse_multicast_mmd_v2_8.event_code.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
cnsx_cse_multicast_mmd_v2_8.event_code.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exchange Timestamp
cnsx_cse_multicast_mmd_v2_8.exchange_timestamp = {}

-- Size: Exchange Timestamp
cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size = 8

-- Dissect: Exchange Timestamp
cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cnsx_cse_multicast_mmd_v2_8.fields.exchange_timestamp
  if cnsx_cse_multicast_mmd_v2_8.absolute_time_base == 1 then field = omi_cnsx_cse_multicast_mmd_v2_8.fields.exchange_timestamp_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Executed Quantity
cnsx_cse_multicast_mmd_v2_8.executed_quantity = {}

-- Size: Executed Quantity
cnsx_cse_multicast_mmd_v2_8.executed_quantity.size = 4

-- Display: Executed Quantity
cnsx_cse_multicast_mmd_v2_8.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cnsx_cse_multicast_mmd_v2_8.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Price
cnsx_cse_multicast_mmd_v2_8.execution_price = {}

-- Size: Execution Price
cnsx_cse_multicast_mmd_v2_8.execution_price.size = 4

-- Display: Execution Price
cnsx_cse_multicast_mmd_v2_8.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
cnsx_cse_multicast_mmd_v2_8.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
cnsx_cse_multicast_mmd_v2_8.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse_multicast_mmd_v2_8.execution_price.translate(raw)
  local display = cnsx_cse_multicast_mmd_v2_8.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Expiry
cnsx_cse_multicast_mmd_v2_8.expiry = {}

-- Size: Expiry
cnsx_cse_multicast_mmd_v2_8.expiry.size = 8

-- Display: Expiry
cnsx_cse_multicast_mmd_v2_8.expiry.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Expiry: No Value"
  end

  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Expiry: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Expiry
cnsx_cse_multicast_mmd_v2_8.expiry.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.expiry.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse_multicast_mmd_v2_8.expiry.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.expiry, range, value, display)

  return offset + length, value
end

-- Firm Id
cnsx_cse_multicast_mmd_v2_8.firm_id = {}

-- Size: Firm Id
cnsx_cse_multicast_mmd_v2_8.firm_id.size = 3

-- Display: Firm Id
cnsx_cse_multicast_mmd_v2_8.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
cnsx_cse_multicast_mmd_v2_8.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.firm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Full Sec Name
cnsx_cse_multicast_mmd_v2_8.full_sec_name = {}

-- Size: Full Sec Name
cnsx_cse_multicast_mmd_v2_8.full_sec_name.size = 75

-- Display: Full Sec Name
cnsx_cse_multicast_mmd_v2_8.full_sec_name.display = function(value)
  return "Full Sec Name: "..value
end

-- Dissect: Full Sec Name
cnsx_cse_multicast_mmd_v2_8.full_sec_name.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.full_sec_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.full_sec_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.full_sec_name, range, value, display)

  return offset + length, value
end

-- Gmf Setting
cnsx_cse_multicast_mmd_v2_8.gmf_setting = {}

-- Size: Gmf Setting
cnsx_cse_multicast_mmd_v2_8.gmf_setting.size = 1

-- Display: Gmf Setting
cnsx_cse_multicast_mmd_v2_8.gmf_setting.labels = {
  ["Y"] = "Gmf Setting: Gmf Enabled (Y)",
  ["N"] = "Gmf Setting: Gmf Disabled (N)",
}

cnsx_cse_multicast_mmd_v2_8.gmf_setting.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.gmf_setting.labels[value] or "Gmf Setting: Unknown("..value..")"
end

-- Dissect: Gmf Setting
cnsx_cse_multicast_mmd_v2_8.gmf_setting.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.gmf_setting.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.gmf_setting.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.gmf_setting, range, value, display)

  return offset + length, value
end

-- Gmf Volume
cnsx_cse_multicast_mmd_v2_8.gmf_volume = {}

-- Size: Gmf Volume
cnsx_cse_multicast_mmd_v2_8.gmf_volume.size = 8

-- Display: Gmf Volume
cnsx_cse_multicast_mmd_v2_8.gmf_volume.display = function(value)
  return "Gmf Volume: "..value
end

-- Dissect: Gmf Volume
cnsx_cse_multicast_mmd_v2_8.gmf_volume.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.gmf_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse_multicast_mmd_v2_8.gmf_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.gmf_volume, range, value, display)

  return offset + length, value
end

-- Group
cnsx_cse_multicast_mmd_v2_8.group = {}

-- Size: Group
cnsx_cse_multicast_mmd_v2_8.group.size = 8

-- Display: Group
cnsx_cse_multicast_mmd_v2_8.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
cnsx_cse_multicast_mmd_v2_8.group.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.group.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse_multicast_mmd_v2_8.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.group, range, value, display)

  return offset + length, value
end

-- Listing
cnsx_cse_multicast_mmd_v2_8.listing = {}

-- Size: Listing
cnsx_cse_multicast_mmd_v2_8.listing.size = 8

-- Display: Listing
cnsx_cse_multicast_mmd_v2_8.listing.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Listing: No Value"
  end

  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Listing: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Listing
cnsx_cse_multicast_mmd_v2_8.listing.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.listing.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse_multicast_mmd_v2_8.listing.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.listing, range, value, display)

  return offset + length, value
end

-- Listing Market
cnsx_cse_multicast_mmd_v2_8.listing_market = {}

-- Size: Listing Market
cnsx_cse_multicast_mmd_v2_8.listing_market.size = 1

-- Display: Listing Market
cnsx_cse_multicast_mmd_v2_8.listing_market.labels = {
  ["C"] = "Listing Market: Cse (C)",
  ["T"] = "Listing Market: Tse (T)",
  ["V"] = "Listing Market: Tsxv (V)",
  ["A"] = "Listing Market: Alpha (A)",
  ["N"] = "Listing Market: Cboe Canada (N)",
}

cnsx_cse_multicast_mmd_v2_8.listing_market.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.listing_market.labels[value] or "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
cnsx_cse_multicast_mmd_v2_8.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Listing Tier
cnsx_cse_multicast_mmd_v2_8.listing_tier = {}

-- Size: Listing Tier
cnsx_cse_multicast_mmd_v2_8.listing_tier.size = 1

-- Display: Listing Tier
cnsx_cse_multicast_mmd_v2_8.listing_tier.labels = {
  [0] = "Listing Tier: No Tier (0)",
  [1] = "Listing Tier: Senior Tier (1)",
  [2] = "Listing Tier: Venture Tier (2)",
}

cnsx_cse_multicast_mmd_v2_8.listing_tier.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.listing_tier.labels[value] or "Listing Tier: Unknown("..value..")"
end

-- Dissect: Listing Tier
cnsx_cse_multicast_mmd_v2_8.listing_tier.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.listing_tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.listing_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.listing_tier, range, value, display)

  return offset + length, value
end

-- Lot Size
cnsx_cse_multicast_mmd_v2_8.lot_size = {}

-- Size: Lot Size
cnsx_cse_multicast_mmd_v2_8.lot_size.size = 4

-- Display: Lot Size
cnsx_cse_multicast_mmd_v2_8.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
cnsx_cse_multicast_mmd_v2_8.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Market Maker Name
cnsx_cse_multicast_mmd_v2_8.market_maker_name = {}

-- Size: Market Maker Name
cnsx_cse_multicast_mmd_v2_8.market_maker_name.size = 20

-- Display: Market Maker Name
cnsx_cse_multicast_mmd_v2_8.market_maker_name.display = function(value)
  return "Market Maker Name: "..value
end

-- Dissect: Market Maker Name
cnsx_cse_multicast_mmd_v2_8.market_maker_name.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.market_maker_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.market_maker_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.market_maker_name, range, value, display)

  return offset + length, value
end

-- Market Maker Phone Number
cnsx_cse_multicast_mmd_v2_8.market_maker_phone_number = {}

-- Size: Market Maker Phone Number
cnsx_cse_multicast_mmd_v2_8.market_maker_phone_number.size = 12

-- Display: Market Maker Phone Number
cnsx_cse_multicast_mmd_v2_8.market_maker_phone_number.display = function(value)
  return "Market Maker Phone Number: "..value
end

-- Dissect: Market Maker Phone Number
cnsx_cse_multicast_mmd_v2_8.market_maker_phone_number.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.market_maker_phone_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.market_maker_phone_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.market_maker_phone_number, range, value, display)

  return offset + length, value
end

-- Market Order Imbalance Side
cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_side = {}

-- Size: Market Order Imbalance Side
cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_side.size = 1

-- Display: Market Order Imbalance Side
cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_side.display = function(value)
  if value == "B" then
    return "Market Order Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Market Order Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Market Order Imbalance Side: Not Applicable (<whitespace>)"
  end

  return "Market Order Imbalance Side: Unknown("..value..")"
end

-- Dissect: Market Order Imbalance Side
cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.market_order_imbalance_side, range, value, display)

  return offset + length, value
end

-- Market Order Imbalance Volume
cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_volume = {}

-- Size: Market Order Imbalance Volume
cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_volume.size = 8

-- Display: Market Order Imbalance Volume
cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_volume.display = function(value)
  return "Market Order Imbalance Volume: "..value
end

-- Dissect: Market Order Imbalance Volume
cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.market_order_imbalance_volume, range, value, display)

  return offset + length, value
end

-- Match Number
cnsx_cse_multicast_mmd_v2_8.match_number = {}

-- Size: Match Number
cnsx_cse_multicast_mmd_v2_8.match_number.size = 18

-- Display: Match Number
cnsx_cse_multicast_mmd_v2_8.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
cnsx_cse_multicast_mmd_v2_8.match_number.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.match_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Text
cnsx_cse_multicast_mmd_v2_8.message_text = {}

-- Size: Message Text
cnsx_cse_multicast_mmd_v2_8.message_text.size = 128

-- Display: Message Text
cnsx_cse_multicast_mmd_v2_8.message_text.display = function(value)
  return "Message Text: "..value
end

-- Dissect: Message Text
cnsx_cse_multicast_mmd_v2_8.message_text.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.message_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.message_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.message_text, range, value, display)

  return offset + length, value
end

-- Message Type
cnsx_cse_multicast_mmd_v2_8.message_type = {}

-- Size: Message Type
cnsx_cse_multicast_mmd_v2_8.message_type.size = 1

-- Display: Message Type
cnsx_cse_multicast_mmd_v2_8.message_type.labels = {
  ["T"] = "Message Type: Time Message (T)",
  ["S"] = "Message Type: System Event Message (S)",
  ["R"] = "Message Type: Symbol Directory Message (R)",
  ["O"] = "Message Type: Symbol Dynamics Message (O)",
  ["H"] = "Message Type: Trading Action Message (H)",
  ["A"] = "Message Type: Add Order Message (A)",
  ["E"] = "Message Type: Order Executed Message (E)",
  ["C"] = "Message Type: Order Executed With Price Message (C)",
  ["P"] = "Message Type: Trade Message (P)",
  ["B"] = "Message Type: Broken Trade Message (B)",
  ["D"] = "Message Type: Order Delete Message (D)",
  ["U"] = "Message Type: Order Replace Message (U)",
  ["I"] = "Message Type: Indicative Price Quantity Message (I)",
  ["Q"] = "Message Type: Best Bid Offer Message (Q)",
  ["F"] = "Message Type: Closing Price Message (F)",
  ["G"] = "Message Type: General Message (G)",
  ["M"] = "Message Type: Moc Imbalance Notification Message (M)",
  ["L"] = "Message Type: Eop Moc Imbalance Message (L)",
}

cnsx_cse_multicast_mmd_v2_8.message_type.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cnsx_cse_multicast_mmd_v2_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Millisecond
cnsx_cse_multicast_mmd_v2_8.millisecond = {}

-- Size: Millisecond
cnsx_cse_multicast_mmd_v2_8.millisecond.size = 2

-- Display: Millisecond
cnsx_cse_multicast_mmd_v2_8.millisecond.display = function(value)
  return "Millisecond: "..value
end

-- Dissect: Millisecond
cnsx_cse_multicast_mmd_v2_8.millisecond.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.millisecond.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.millisecond.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.millisecond, range, value, display)

  return offset + length, value
end

-- Moc And Loc Only Closing Price
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_closing_price = {}

-- Size: Moc And Loc Only Closing Price
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_closing_price.size = 4

-- Display: Moc And Loc Only Closing Price
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_closing_price.display = function(value)
  return "Moc And Loc Only Closing Price: "..value
end

-- Translate: Moc And Loc Only Closing Price
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_closing_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Moc And Loc Only Closing Price
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_closing_price.translate(raw)
  local display = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_and_loc_only_closing_price, range, value, display)

  return offset + length, value
end

-- Moc And Loc Only Imbalance Side
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_side = {}

-- Size: Moc And Loc Only Imbalance Side
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_side.size = 1

-- Display: Moc And Loc Only Imbalance Side
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_side.display = function(value)
  if value == "B" then
    return "Moc And Loc Only Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Moc And Loc Only Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Moc And Loc Only Imbalance Side: Not Applicable (<whitespace>)"
  end

  return "Moc And Loc Only Imbalance Side: Unknown("..value..")"
end

-- Dissect: Moc And Loc Only Imbalance Side
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_and_loc_only_imbalance_side, range, value, display)

  return offset + length, value
end

-- Moc And Loc Only Imbalance Volume
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_volume = {}

-- Size: Moc And Loc Only Imbalance Volume
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_volume.size = 8

-- Display: Moc And Loc Only Imbalance Volume
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_volume.display = function(value)
  return "Moc And Loc Only Imbalance Volume: "..value
end

-- Dissect: Moc And Loc Only Imbalance Volume
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_and_loc_only_imbalance_volume, range, value, display)

  return offset + length, value
end

-- Moc And Loc Only Paired Volume
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_paired_volume = {}

-- Size: Moc And Loc Only Paired Volume
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_paired_volume.size = 8

-- Display: Moc And Loc Only Paired Volume
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_paired_volume.display = function(value)
  return "Moc And Loc Only Paired Volume: "..value
end

-- Dissect: Moc And Loc Only Paired Volume
cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_paired_volume.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_paired_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_paired_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_and_loc_only_paired_volume, range, value, display)

  return offset + length, value
end

-- Moc Eligible
cnsx_cse_multicast_mmd_v2_8.moc_eligible = {}

-- Size: Moc Eligible
cnsx_cse_multicast_mmd_v2_8.moc_eligible.size = 1

-- Display: Moc Eligible
cnsx_cse_multicast_mmd_v2_8.moc_eligible.labels = {
  ["Y"] = "Moc Eligible: Moc Eligible (Y)",
  ["N"] = "Moc Eligible: Not Moc Eligible (N)",
}

cnsx_cse_multicast_mmd_v2_8.moc_eligible.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.moc_eligible.labels[value] or "Moc Eligible: Unknown("..value..")"
end

-- Dissect: Moc Eligible
cnsx_cse_multicast_mmd_v2_8.moc_eligible.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.moc_eligible.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.moc_eligible.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_eligible, range, value, display)

  return offset + length, value
end

-- Moc Imbalance Reference Price
cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price = {}

-- Size: Moc Imbalance Reference Price
cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price.size = 4

-- Display: Moc Imbalance Reference Price
cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price.display = function(value)
  return "Moc Imbalance Reference Price: "..value
end

-- Translate: Moc Imbalance Reference Price
cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Moc Imbalance Reference Price
cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price.translate(raw)
  local display = cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_imbalance_reference_price, range, value, display)

  return offset + length, value
end

-- Moc Indicative Closing Price
cnsx_cse_multicast_mmd_v2_8.moc_indicative_closing_price = {}

-- Size: Moc Indicative Closing Price
cnsx_cse_multicast_mmd_v2_8.moc_indicative_closing_price.size = 4

-- Display: Moc Indicative Closing Price
cnsx_cse_multicast_mmd_v2_8.moc_indicative_closing_price.display = function(value)
  return "Moc Indicative Closing Price: "..value
end

-- Translate: Moc Indicative Closing Price
cnsx_cse_multicast_mmd_v2_8.moc_indicative_closing_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Moc Indicative Closing Price
cnsx_cse_multicast_mmd_v2_8.moc_indicative_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.moc_indicative_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse_multicast_mmd_v2_8.moc_indicative_closing_price.translate(raw)
  local display = cnsx_cse_multicast_mmd_v2_8.moc_indicative_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_indicative_closing_price, range, value, display)

  return offset + length, value
end

-- Moc Trade Marker
cnsx_cse_multicast_mmd_v2_8.moc_trade_marker = {}

-- Size: Moc Trade Marker
cnsx_cse_multicast_mmd_v2_8.moc_trade_marker.size = 1

-- Display: Moc Trade Marker
cnsx_cse_multicast_mmd_v2_8.moc_trade_marker.labels = {
  ["Y"] = "Moc Trade Marker: Moc Or Loc Trade (Y)",
  ["N"] = "Moc Trade Marker: Not Moc Or Loc Trade (N)",
}

cnsx_cse_multicast_mmd_v2_8.moc_trade_marker.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.moc_trade_marker.labels[value] or "Moc Trade Marker: Unknown("..value..")"
end

-- Dissect: Moc Trade Marker
cnsx_cse_multicast_mmd_v2_8.moc_trade_marker.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.moc_trade_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.moc_trade_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_trade_marker, range, value, display)

  return offset + length, value
end

-- Odd Lot Flag
cnsx_cse_multicast_mmd_v2_8.odd_lot_flag = {}

-- Size: Odd Lot Flag
cnsx_cse_multicast_mmd_v2_8.odd_lot_flag.size = 1

-- Display: Odd Lot Flag
cnsx_cse_multicast_mmd_v2_8.odd_lot_flag.labels = {
  ["Y"] = "Odd Lot Flag: Odd Lot Order (Y)",
  ["N"] = "Odd Lot Flag: Not An Odd Lot (N)",
}

cnsx_cse_multicast_mmd_v2_8.odd_lot_flag.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.odd_lot_flag.labels[value] or "Odd Lot Flag: Unknown("..value..")"
end

-- Dissect: Odd Lot Flag
cnsx_cse_multicast_mmd_v2_8.odd_lot_flag.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.odd_lot_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.odd_lot_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.odd_lot_flag, range, value, display)

  return offset + length, value
end

-- Opening Trade
cnsx_cse_multicast_mmd_v2_8.opening_trade = {}

-- Size: Opening Trade
cnsx_cse_multicast_mmd_v2_8.opening_trade.size = 1

-- Display: Opening Trade
cnsx_cse_multicast_mmd_v2_8.opening_trade.labels = {
  ["Y"] = "Opening Trade: Opening Trade (Y)",
  ["N"] = "Opening Trade: Not Opening Trade (N)",
}

cnsx_cse_multicast_mmd_v2_8.opening_trade.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.opening_trade.labels[value] or "Opening Trade: Unknown("..value..")"
end

-- Dissect: Opening Trade
cnsx_cse_multicast_mmd_v2_8.opening_trade.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.opening_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.opening_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Order Number
cnsx_cse_multicast_mmd_v2_8.order_number = {}

-- Size: Order Number
cnsx_cse_multicast_mmd_v2_8.order_number.size = 18

-- Display: Order Number
cnsx_cse_multicast_mmd_v2_8.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
cnsx_cse_multicast_mmd_v2_8.order_number.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.order_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Verb
cnsx_cse_multicast_mmd_v2_8.order_verb = {}

-- Size: Order Verb
cnsx_cse_multicast_mmd_v2_8.order_verb.size = 1

-- Display: Order Verb
cnsx_cse_multicast_mmd_v2_8.order_verb.labels = {
  ["B"] = "Order Verb: Buy (B)",
  ["S"] = "Order Verb: Sell (S)",
}

cnsx_cse_multicast_mmd_v2_8.order_verb.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.order_verb.labels[value] or "Order Verb: Unknown("..value..")"
end

-- Dissect: Order Verb
cnsx_cse_multicast_mmd_v2_8.order_verb.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.order_verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.order_verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.order_verb, range, value, display)

  return offset + length, value
end

-- Previous Closing Price
cnsx_cse_multicast_mmd_v2_8.previous_closing_price = {}

-- Size: Previous Closing Price
cnsx_cse_multicast_mmd_v2_8.previous_closing_price.size = 4

-- Display: Previous Closing Price
cnsx_cse_multicast_mmd_v2_8.previous_closing_price.display = function(value)
  return "Previous Closing Price: "..value
end

-- Translate: Previous Closing Price
cnsx_cse_multicast_mmd_v2_8.previous_closing_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Previous Closing Price
cnsx_cse_multicast_mmd_v2_8.previous_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.previous_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse_multicast_mmd_v2_8.previous_closing_price.translate(raw)
  local display = cnsx_cse_multicast_mmd_v2_8.previous_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.previous_closing_price, range, value, display)

  return offset + length, value
end

-- Price
cnsx_cse_multicast_mmd_v2_8.price = {}

-- Size: Price
cnsx_cse_multicast_mmd_v2_8.price.size = 4

-- Display: Price
cnsx_cse_multicast_mmd_v2_8.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cnsx_cse_multicast_mmd_v2_8.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
cnsx_cse_multicast_mmd_v2_8.price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse_multicast_mmd_v2_8.price.translate(raw)
  local display = cnsx_cse_multicast_mmd_v2_8.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.price, range, value, display)

  return offset + length, value
end

-- Price Variation
cnsx_cse_multicast_mmd_v2_8.price_variation = {}

-- Size: Price Variation
cnsx_cse_multicast_mmd_v2_8.price_variation.size = 5

-- Display: Price Variation
cnsx_cse_multicast_mmd_v2_8.price_variation.display = function(value, buffer, offset, packet, parent)
  local text = format_implied_decimal_text(buffer(offset, cnsx_cse_multicast_mmd_v2_8.price_variation.size):string(), 2)

  if text == nil then
    return "Price Variation: "..tostring(value)
  end

  return "Price Variation: "..text
end

-- Dissect: Price Variation
cnsx_cse_multicast_mmd_v2_8.price_variation.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.price_variation.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value = 0
    local item = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.price_variation, range, value, "Price Variation: Not Applicable")
    item:add_proto_expert_info(cnsx_cse_multicast_mmd_v2_8.experts.not_a_number, "Price Variation is not a number: '"..range:string().."'")
    return offset + length, value
  end
  value = value/100

  local display = cnsx_cse_multicast_mmd_v2_8.price_variation.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.price_variation, range, value, display)

  return offset + length, value
end

-- Priority Timestamp
cnsx_cse_multicast_mmd_v2_8.priority_timestamp = {}

-- Size: Priority Timestamp
cnsx_cse_multicast_mmd_v2_8.priority_timestamp.size = 8

-- Dissect: Priority Timestamp
cnsx_cse_multicast_mmd_v2_8.priority_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.priority_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cnsx_cse_multicast_mmd_v2_8.fields.priority_timestamp
  if cnsx_cse_multicast_mmd_v2_8.absolute_time_base == 1 then field = omi_cnsx_cse_multicast_mmd_v2_8.fields.priority_timestamp_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Quantity
cnsx_cse_multicast_mmd_v2_8.quantity = {}

-- Size: Quantity
cnsx_cse_multicast_mmd_v2_8.quantity.size = 4

-- Display: Quantity
cnsx_cse_multicast_mmd_v2_8.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cnsx_cse_multicast_mmd_v2_8.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reason
cnsx_cse_multicast_mmd_v2_8.reason = {}

-- Size: Reason
cnsx_cse_multicast_mmd_v2_8.reason.size = 1

-- Display: Reason
cnsx_cse_multicast_mmd_v2_8.reason.labels = {
  ["S"] = "Reason: Supervisory The Trade Was Manually Broken By The Exchange (S)",
  ["A"] = "Reason: Amended (A)",
}

cnsx_cse_multicast_mmd_v2_8.reason.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.reason.labels[value] or "Reason: Unknown("..value..")"
end

-- Dissect: Reason
cnsx_cse_multicast_mmd_v2_8.reason.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.reason, range, value, display)

  return offset + length, value
end

-- Sec Name
cnsx_cse_multicast_mmd_v2_8.sec_name = {}

-- Size: Sec Name
cnsx_cse_multicast_mmd_v2_8.sec_name.size = 15

-- Display: Sec Name
cnsx_cse_multicast_mmd_v2_8.sec_name.display = function(value)
  return "Sec Name: "..value
end

-- Dissect: Sec Name
cnsx_cse_multicast_mmd_v2_8.sec_name.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.sec_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.sec_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.sec_name, range, value, display)

  return offset + length, value
end

-- Second
cnsx_cse_multicast_mmd_v2_8.second = {}

-- Size: Second
cnsx_cse_multicast_mmd_v2_8.second.size = 4

-- Store: Second
cnsx_cse_multicast_mmd_v2_8.second.current = nil

-- Generated: Second
cnsx_cse_multicast_mmd_v2_8.second.generated = function(value, range, packet, parent)
  local display = cnsx_cse_multicast_mmd_v2_8.second.display(value)
  local second = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
cnsx_cse_multicast_mmd_v2_8.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
cnsx_cse_multicast_mmd_v2_8.second.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.second, range, value, display)

  return offset + length, value
end

-- Sets The Last Price
cnsx_cse_multicast_mmd_v2_8.sets_the_last_price = {}

-- Size: Sets The Last Price
cnsx_cse_multicast_mmd_v2_8.sets_the_last_price.size = 1

-- Display: Sets The Last Price
cnsx_cse_multicast_mmd_v2_8.sets_the_last_price.labels = {
  ["Y"] = "Sets The Last Price: Last Sale (Y)",
  ["N"] = "Sets The Last Price: Not Last Sale (N)",
}

cnsx_cse_multicast_mmd_v2_8.sets_the_last_price.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.sets_the_last_price.labels[value] or "Sets The Last Price: Unknown("..value..")"
end

-- Dissect: Sets The Last Price
cnsx_cse_multicast_mmd_v2_8.sets_the_last_price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.sets_the_last_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.sets_the_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.sets_the_last_price, range, value, display)

  return offset + length, value
end

-- Settlement Term
cnsx_cse_multicast_mmd_v2_8.settlement_term = {}

-- Size: Settlement Term
cnsx_cse_multicast_mmd_v2_8.settlement_term.size = 8

-- Display: Settlement Term
cnsx_cse_multicast_mmd_v2_8.settlement_term.display = function(value)
  return "Settlement Term: "..value
end

-- Dissect: Settlement Term
cnsx_cse_multicast_mmd_v2_8.settlement_term.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.settlement_term.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.settlement_term.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.settlement_term, range, value, display)

  return offset + length, value
end

-- Stock Group
cnsx_cse_multicast_mmd_v2_8.stock_group = {}

-- Size: Stock Group
cnsx_cse_multicast_mmd_v2_8.stock_group.size = 8

-- Display: Stock Group
cnsx_cse_multicast_mmd_v2_8.stock_group.labels = {
  [1] = "Stock Group: CSE Listed Securities (1)",
  [2] = "Stock Group: Other Canadian Listed Securities (2)",
}

cnsx_cse_multicast_mmd_v2_8.stock_group.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.stock_group.labels[value] or "Stock Group: Unknown("..value..")"
end

-- Dissect: Stock Group
cnsx_cse_multicast_mmd_v2_8.stock_group.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.stock_group.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse_multicast_mmd_v2_8.stock_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Sub Length
cnsx_cse_multicast_mmd_v2_8.sub_length = {}

-- Size: Sub Length
cnsx_cse_multicast_mmd_v2_8.sub_length.size = 1

-- Display: Sub Length
cnsx_cse_multicast_mmd_v2_8.sub_length.display = function(value)
  return "Sub Length: "..value
end

-- Dissect: Sub Length
cnsx_cse_multicast_mmd_v2_8.sub_length.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.sub_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.sub_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.sub_length, range, value, display)

  return offset + length, value
end

-- Symbol
cnsx_cse_multicast_mmd_v2_8.symbol = {}

-- Size: Symbol
cnsx_cse_multicast_mmd_v2_8.symbol.size = 12

-- Display: Symbol
cnsx_cse_multicast_mmd_v2_8.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cnsx_cse_multicast_mmd_v2_8.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse_multicast_mmd_v2_8.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.symbol, range, value, display)

  return offset + length, value
end

-- System Event
cnsx_cse_multicast_mmd_v2_8.system_event = {}

-- Size: System Event
cnsx_cse_multicast_mmd_v2_8.system_event.size = 1

-- Display: System Event
cnsx_cse_multicast_mmd_v2_8.system_event.labels = {
  ["E"] = "System Event: Closing Delayed (E)",
}

cnsx_cse_multicast_mmd_v2_8.system_event.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.system_event.labels[value] or "System Event: Unknown("..value..")"
end

-- Dissect: System Event
cnsx_cse_multicast_mmd_v2_8.system_event.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.system_event, range, value, display)

  return offset + length, value
end

-- Theoretical Opening Price
cnsx_cse_multicast_mmd_v2_8.theoretical_opening_price = {}

-- Size: Theoretical Opening Price
cnsx_cse_multicast_mmd_v2_8.theoretical_opening_price.size = 4

-- Display: Theoretical Opening Price
cnsx_cse_multicast_mmd_v2_8.theoretical_opening_price.display = function(value)
  return "Theoretical Opening Price: "..value
end

-- Translate: Theoretical Opening Price
cnsx_cse_multicast_mmd_v2_8.theoretical_opening_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Theoretical Opening Price
cnsx_cse_multicast_mmd_v2_8.theoretical_opening_price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.theoretical_opening_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse_multicast_mmd_v2_8.theoretical_opening_price.translate(raw)
  local display = cnsx_cse_multicast_mmd_v2_8.theoretical_opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.theoretical_opening_price, range, value, display)

  return offset + length, value
end

-- Theoretical Opening Quantity
cnsx_cse_multicast_mmd_v2_8.theoretical_opening_quantity = {}

-- Size: Theoretical Opening Quantity
cnsx_cse_multicast_mmd_v2_8.theoretical_opening_quantity.size = 8

-- Display: Theoretical Opening Quantity
cnsx_cse_multicast_mmd_v2_8.theoretical_opening_quantity.display = function(value)
  return "Theoretical Opening Quantity: "..value
end

-- Dissect: Theoretical Opening Quantity
cnsx_cse_multicast_mmd_v2_8.theoretical_opening_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.theoretical_opening_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse_multicast_mmd_v2_8.theoretical_opening_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.theoretical_opening_quantity, range, value, display)

  return offset + length, value
end

-- Time Offset
cnsx_cse_multicast_mmd_v2_8.time_offset = {}

-- Size: Time Offset
cnsx_cse_multicast_mmd_v2_8.time_offset.size = 4

-- Display: Time Offset
cnsx_cse_multicast_mmd_v2_8.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cnsx_cse_multicast_mmd_v2_8.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.time_offset.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse_multicast_mmd_v2_8.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trade Attribute
cnsx_cse_multicast_mmd_v2_8.trade_attribute = {}

-- Size: Trade Attribute
cnsx_cse_multicast_mmd_v2_8.trade_attribute.size = 1

-- Display: Trade Attribute
cnsx_cse_multicast_mmd_v2_8.trade_attribute.display = function(value)
  if value == "B" then
    return "Trade Attribute: By Pass Order (B)"
  end
  if value == " " then
    return "Trade Attribute: Default (<whitespace>)"
  end

  return "Trade Attribute: Unknown("..value..")"
end

-- Dissect: Trade Attribute
cnsx_cse_multicast_mmd_v2_8.trade_attribute.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.trade_attribute.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.trade_attribute.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.trade_attribute, range, value, display)

  return offset + length, value
end

-- Trading State
cnsx_cse_multicast_mmd_v2_8.trading_state = {}

-- Size: Trading State
cnsx_cse_multicast_mmd_v2_8.trading_state.size = 1

-- Display: Trading State
cnsx_cse_multicast_mmd_v2_8.trading_state.labels = {
  ["N"] = "Trading State: Normal Trading (N)",
  ["V"] = "Trading State: Suspend Trading (V)",
  ["H"] = "Trading State: Halt (H)",
  ["D"] = "Trading State: Delayed Open (D)",
  ["E"] = "Trading State: Closing Delayed (E)",
}

cnsx_cse_multicast_mmd_v2_8.trading_state.display = function(value)
  return cnsx_cse_multicast_mmd_v2_8.trading_state.labels[value] or "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
cnsx_cse_multicast_mmd_v2_8.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse_multicast_mmd_v2_8.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.trading_state, range, value, display)

  return offset + length, value
end

-- Timestamp
cnsx_cse_multicast_mmd_v2_8.timestamp = {}

-- Translate: Timestamp
cnsx_cse_multicast_mmd_v2_8.timestamp.translate = function(time_offset, stored_second)
  return UInt64.new(stored_second * 1000000000 + time_offset)
end

-- Display: Timestamp
cnsx_cse_multicast_mmd_v2_8.timestamp.display = function(time_offset, stored_second, packet)
  -- Raw display mode
  if cnsx_cse_multicast_mmd_v2_8.timestamp_format == 0 then
    return "Timestamp: "..(stored_second * 1000000000 + time_offset)
  end

  -- Full datetime mode (the day the frame that carried it settled on)
  if cnsx_cse_multicast_mmd_v2_8.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - stored_second) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", midnight + stored_second)..string.format("%09d", time_offset)
    end
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_second)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cnsx_cse_multicast_mmd_v2_8.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = cnsx_cse_multicast_mmd_v2_8.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:uint()
  local value = cnsx_cse_multicast_mmd_v2_8.timestamp.translate(time_offset, stored_second)
  local display = cnsx_cse_multicast_mmd_v2_8.timestamp.display(time_offset, stored_second, packet)
  parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.timestamp, range, value, display)

  cnsx_cse_multicast_mmd_v2_8.second.generated(stored_second, range, packet, parent)

  display = cnsx_cse_multicast_mmd_v2_8.time_offset.display(time_offset)
  parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cnsx_cse_multicast_mmd_v2_8.timestamp.dissect = function(buffer, offset, packet, parent)
  if cnsx_cse_multicast_mmd_v2_8.format_timestamp then
    local stored_second = cnsx_cse_multicast_mmd_v2_8.second.current

    if stored_second ~= nil then
      return cnsx_cse_multicast_mmd_v2_8.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return cnsx_cse_multicast_mmd_v2_8.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cnsx Cse Multicast Mmd 2.8
-----------------------------------------------------------------------

-- Eop Moc Imbalance Message
cnsx_cse_multicast_mmd_v2_8.eop_moc_imbalance_message = {}

-- Size: Eop Moc Imbalance Message
cnsx_cse_multicast_mmd_v2_8.eop_moc_imbalance_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.system_event.size + 
  cnsx_cse_multicast_mmd_v2_8.symbol.size + 
  cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price.size + 
  cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_side.size + 
  cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_volume.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size

-- Display: Eop Moc Imbalance Message
cnsx_cse_multicast_mmd_v2_8.eop_moc_imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Eop Moc Imbalance Message
cnsx_cse_multicast_mmd_v2_8.eop_moc_imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- System Event: Alphanumeric
  index, system_event = cnsx_cse_multicast_mmd_v2_8.system_event.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse_multicast_mmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Moc Imbalance Reference Price: Integer
  index, moc_imbalance_reference_price = cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price.dissect(buffer, index, packet, parent)

  -- Moc And Loc Only Imbalance Side: Alphanumeric
  index, moc_and_loc_only_imbalance_side = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_side.dissect(buffer, index, packet, parent)

  -- Moc And Loc Only Imbalance Volume: Integer
  index, moc_and_loc_only_imbalance_volume = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_volume.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Eop Moc Imbalance Message
cnsx_cse_multicast_mmd_v2_8.eop_moc_imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.eop_moc_imbalance_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.eop_moc_imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.eop_moc_imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.eop_moc_imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Moc Imbalance Notification Message
cnsx_cse_multicast_mmd_v2_8.moc_imbalance_notification_message = {}

-- Size: Moc Imbalance Notification Message
cnsx_cse_multicast_mmd_v2_8.moc_imbalance_notification_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.symbol.size + 
  cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_side.size + 
  cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price.size + 
  cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_volume.size + 
  cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_paired_volume.size + 
  cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_side.size + 
  cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_volume.size + 
  cnsx_cse_multicast_mmd_v2_8.moc_indicative_closing_price.size + 
  cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_closing_price.size + 
  cnsx_cse_multicast_mmd_v2_8.price_variation.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size

-- Display: Moc Imbalance Notification Message
cnsx_cse_multicast_mmd_v2_8.moc_imbalance_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Moc Imbalance Notification Message
cnsx_cse_multicast_mmd_v2_8.moc_imbalance_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse_multicast_mmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Moc And Loc Only Imbalance Side: Alphanumeric
  index, moc_and_loc_only_imbalance_side = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_side.dissect(buffer, index, packet, parent)

  -- Moc Imbalance Reference Price: Integer
  index, moc_imbalance_reference_price = cnsx_cse_multicast_mmd_v2_8.moc_imbalance_reference_price.dissect(buffer, index, packet, parent)

  -- Moc And Loc Only Imbalance Volume: Integer
  index, moc_and_loc_only_imbalance_volume = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_imbalance_volume.dissect(buffer, index, packet, parent)

  -- Moc And Loc Only Paired Volume: Integer
  index, moc_and_loc_only_paired_volume = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_paired_volume.dissect(buffer, index, packet, parent)

  -- Market Order Imbalance Side: Alphanumeric
  index, market_order_imbalance_side = cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_side.dissect(buffer, index, packet, parent)

  -- Market Order Imbalance Volume: Integer
  index, market_order_imbalance_volume = cnsx_cse_multicast_mmd_v2_8.market_order_imbalance_volume.dissect(buffer, index, packet, parent)

  -- Moc Indicative Closing Price: Integer
  index, moc_indicative_closing_price = cnsx_cse_multicast_mmd_v2_8.moc_indicative_closing_price.dissect(buffer, index, packet, parent)

  -- Moc And Loc Only Closing Price: Integer
  index, moc_and_loc_only_closing_price = cnsx_cse_multicast_mmd_v2_8.moc_and_loc_only_closing_price.dissect(buffer, index, packet, parent)

  -- Price Variation: Alphanumeric
  index, price_variation = cnsx_cse_multicast_mmd_v2_8.price_variation.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Moc Imbalance Notification Message
cnsx_cse_multicast_mmd_v2_8.moc_imbalance_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.moc_imbalance_notification_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.moc_imbalance_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.moc_imbalance_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.moc_imbalance_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- General Message
cnsx_cse_multicast_mmd_v2_8.general_message = {}

-- Size: General Message
cnsx_cse_multicast_mmd_v2_8.general_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.message_text.size

-- Display: General Message
cnsx_cse_multicast_mmd_v2_8.general_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Message
cnsx_cse_multicast_mmd_v2_8.general_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Message Text: Alphanumeric
  index, message_text = cnsx_cse_multicast_mmd_v2_8.message_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: General Message
cnsx_cse_multicast_mmd_v2_8.general_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.general_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.general_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.general_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.general_message.fields(buffer, offset, packet, parent)
  end
end

-- Closing Price Message
cnsx_cse_multicast_mmd_v2_8.closing_price_message = {}

-- Size: Closing Price Message
cnsx_cse_multicast_mmd_v2_8.closing_price_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.symbol.size + 
  cnsx_cse_multicast_mmd_v2_8.price.size

-- Display: Closing Price Message
cnsx_cse_multicast_mmd_v2_8.closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Price Message
cnsx_cse_multicast_mmd_v2_8.closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse_multicast_mmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cnsx_cse_multicast_mmd_v2_8.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Price Message
cnsx_cse_multicast_mmd_v2_8.closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.closing_price_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Offer Message
cnsx_cse_multicast_mmd_v2_8.best_bid_offer_message = {}

-- Size: Best Bid Offer Message
cnsx_cse_multicast_mmd_v2_8.best_bid_offer_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.symbol.size + 
  cnsx_cse_multicast_mmd_v2_8.best_bid.size + 
  cnsx_cse_multicast_mmd_v2_8.best_bid_size.size + 
  cnsx_cse_multicast_mmd_v2_8.best_offer.size + 
  cnsx_cse_multicast_mmd_v2_8.best_offer_size.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size

-- Display: Best Bid Offer Message
cnsx_cse_multicast_mmd_v2_8.best_bid_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Offer Message
cnsx_cse_multicast_mmd_v2_8.best_bid_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse_multicast_mmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Best Bid: Integer
  index, best_bid = cnsx_cse_multicast_mmd_v2_8.best_bid.dissect(buffer, index, packet, parent)

  -- Best Bid Size: Integer
  index, best_bid_size = cnsx_cse_multicast_mmd_v2_8.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Offer: Integer
  index, best_offer = cnsx_cse_multicast_mmd_v2_8.best_offer.dissect(buffer, index, packet, parent)

  -- Best Offer Size: Integer
  index, best_offer_size = cnsx_cse_multicast_mmd_v2_8.best_offer_size.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Offer Message
cnsx_cse_multicast_mmd_v2_8.best_bid_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.best_bid_offer_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.best_bid_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.best_bid_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.best_bid_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Indicative Price Quantity Message
cnsx_cse_multicast_mmd_v2_8.indicative_price_quantity_message = {}

-- Size: Indicative Price Quantity Message
cnsx_cse_multicast_mmd_v2_8.indicative_price_quantity_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.theoretical_opening_quantity.size + 
  cnsx_cse_multicast_mmd_v2_8.symbol.size + 
  cnsx_cse_multicast_mmd_v2_8.theoretical_opening_price.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size

-- Display: Indicative Price Quantity Message
cnsx_cse_multicast_mmd_v2_8.indicative_price_quantity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indicative Price Quantity Message
cnsx_cse_multicast_mmd_v2_8.indicative_price_quantity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Theoretical Opening Quantity: Integer
  index, theoretical_opening_quantity = cnsx_cse_multicast_mmd_v2_8.theoretical_opening_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse_multicast_mmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Theoretical Opening Price: Integer
  index, theoretical_opening_price = cnsx_cse_multicast_mmd_v2_8.theoretical_opening_price.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indicative Price Quantity Message
cnsx_cse_multicast_mmd_v2_8.indicative_price_quantity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.indicative_price_quantity_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.indicative_price_quantity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.indicative_price_quantity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.indicative_price_quantity_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Message
cnsx_cse_multicast_mmd_v2_8.order_replace_message = {}

-- Size: Order Replace Message
cnsx_cse_multicast_mmd_v2_8.order_replace_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.order_number.size + 
  cnsx_cse_multicast_mmd_v2_8.quantity.size + 
  cnsx_cse_multicast_mmd_v2_8.price.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size

-- Display: Order Replace Message
cnsx_cse_multicast_mmd_v2_8.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
cnsx_cse_multicast_mmd_v2_8.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Alphanumeric
  index, order_number = cnsx_cse_multicast_mmd_v2_8.order_number.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = cnsx_cse_multicast_mmd_v2_8.quantity.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cnsx_cse_multicast_mmd_v2_8.price.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
cnsx_cse_multicast_mmd_v2_8.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.order_replace_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
cnsx_cse_multicast_mmd_v2_8.order_delete_message = {}

-- Size: Order Delete Message
cnsx_cse_multicast_mmd_v2_8.order_delete_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.order_number.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size

-- Display: Order Delete Message
cnsx_cse_multicast_mmd_v2_8.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
cnsx_cse_multicast_mmd_v2_8.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Alphanumeric
  index, order_number = cnsx_cse_multicast_mmd_v2_8.order_number.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
cnsx_cse_multicast_mmd_v2_8.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.order_delete_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
cnsx_cse_multicast_mmd_v2_8.broken_trade_message = {}

-- Size: Broken Trade Message
cnsx_cse_multicast_mmd_v2_8.broken_trade_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.match_number.size + 
  cnsx_cse_multicast_mmd_v2_8.reason.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size

-- Display: Broken Trade Message
cnsx_cse_multicast_mmd_v2_8.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
cnsx_cse_multicast_mmd_v2_8.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Match Number: Alphanumeric
  index, match_number = cnsx_cse_multicast_mmd_v2_8.match_number.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = cnsx_cse_multicast_mmd_v2_8.reason.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
cnsx_cse_multicast_mmd_v2_8.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.broken_trade_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
cnsx_cse_multicast_mmd_v2_8.trade_message = {}

-- Size: Trade Message
cnsx_cse_multicast_mmd_v2_8.trade_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.executed_quantity.size + 
  cnsx_cse_multicast_mmd_v2_8.symbol.size + 
  cnsx_cse_multicast_mmd_v2_8.execution_price.size + 
  cnsx_cse_multicast_mmd_v2_8.match_number.size + 
  cnsx_cse_multicast_mmd_v2_8.firm_id.size + 
  cnsx_cse_multicast_mmd_v2_8.contra_firm_id.size + 
  cnsx_cse_multicast_mmd_v2_8.settlement_term.size + 
  cnsx_cse_multicast_mmd_v2_8.trade_attribute.size + 
  cnsx_cse_multicast_mmd_v2_8.cross_type.size + 
  cnsx_cse_multicast_mmd_v2_8.odd_lot_flag.size + 
  cnsx_cse_multicast_mmd_v2_8.sets_the_last_price.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size + 
  cnsx_cse_multicast_mmd_v2_8.opening_trade.size + 
  cnsx_cse_multicast_mmd_v2_8.ccp_session_trade.size + 
  cnsx_cse_multicast_mmd_v2_8.moc_trade_marker.size

-- Display: Trade Message
cnsx_cse_multicast_mmd_v2_8.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cnsx_cse_multicast_mmd_v2_8.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = cnsx_cse_multicast_mmd_v2_8.executed_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse_multicast_mmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Execution Price: Integer
  index, execution_price = cnsx_cse_multicast_mmd_v2_8.execution_price.dissect(buffer, index, packet, parent)

  -- Match Number: Alphanumeric
  index, match_number = cnsx_cse_multicast_mmd_v2_8.match_number.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = cnsx_cse_multicast_mmd_v2_8.firm_id.dissect(buffer, index, packet, parent)

  -- Contra Firm Id: Alphanumeric
  index, contra_firm_id = cnsx_cse_multicast_mmd_v2_8.contra_firm_id.dissect(buffer, index, packet, parent)

  -- Settlement Term: Alphanumeric
  index, settlement_term = cnsx_cse_multicast_mmd_v2_8.settlement_term.dissect(buffer, index, packet, parent)

  -- Trade Attribute: Alphanumeric
  index, trade_attribute = cnsx_cse_multicast_mmd_v2_8.trade_attribute.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = cnsx_cse_multicast_mmd_v2_8.cross_type.dissect(buffer, index, packet, parent)

  -- Odd Lot Flag: Alphanumeric
  index, odd_lot_flag = cnsx_cse_multicast_mmd_v2_8.odd_lot_flag.dissect(buffer, index, packet, parent)

  -- Sets The Last Price: Alphanumeric
  index, sets_the_last_price = cnsx_cse_multicast_mmd_v2_8.sets_the_last_price.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  -- Opening Trade: Alphanumeric
  index, opening_trade = cnsx_cse_multicast_mmd_v2_8.opening_trade.dissect(buffer, index, packet, parent)

  -- Ccp Session Trade: Alphanumeric
  index, ccp_session_trade = cnsx_cse_multicast_mmd_v2_8.ccp_session_trade.dissect(buffer, index, packet, parent)

  -- Moc Trade Marker: Alphanumeric
  index, moc_trade_marker = cnsx_cse_multicast_mmd_v2_8.moc_trade_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cnsx_cse_multicast_mmd_v2_8.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.trade_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
cnsx_cse_multicast_mmd_v2_8.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
cnsx_cse_multicast_mmd_v2_8.order_executed_with_price_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.order_number.size + 
  cnsx_cse_multicast_mmd_v2_8.executed_quantity.size + 
  cnsx_cse_multicast_mmd_v2_8.match_number.size + 
  cnsx_cse_multicast_mmd_v2_8.execution_price.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size

-- Display: Order Executed With Price Message
cnsx_cse_multicast_mmd_v2_8.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
cnsx_cse_multicast_mmd_v2_8.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Alphanumeric
  index, order_number = cnsx_cse_multicast_mmd_v2_8.order_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = cnsx_cse_multicast_mmd_v2_8.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Alphanumeric
  index, match_number = cnsx_cse_multicast_mmd_v2_8.match_number.dissect(buffer, index, packet, parent)

  -- Execution Price: Integer
  index, execution_price = cnsx_cse_multicast_mmd_v2_8.execution_price.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
cnsx_cse_multicast_mmd_v2_8.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cnsx_cse_multicast_mmd_v2_8.order_executed_message = {}

-- Size: Order Executed Message
cnsx_cse_multicast_mmd_v2_8.order_executed_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.order_number.size + 
  cnsx_cse_multicast_mmd_v2_8.executed_quantity.size + 
  cnsx_cse_multicast_mmd_v2_8.match_number.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size

-- Display: Order Executed Message
cnsx_cse_multicast_mmd_v2_8.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cnsx_cse_multicast_mmd_v2_8.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Alphanumeric
  index, order_number = cnsx_cse_multicast_mmd_v2_8.order_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = cnsx_cse_multicast_mmd_v2_8.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Alphanumeric
  index, match_number = cnsx_cse_multicast_mmd_v2_8.match_number.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cnsx_cse_multicast_mmd_v2_8.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.order_executed_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
cnsx_cse_multicast_mmd_v2_8.add_order_message = {}

-- Size: Add Order Message
cnsx_cse_multicast_mmd_v2_8.add_order_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.order_number.size + 
  cnsx_cse_multicast_mmd_v2_8.order_verb.size + 
  cnsx_cse_multicast_mmd_v2_8.quantity.size + 
  cnsx_cse_multicast_mmd_v2_8.symbol.size + 
  cnsx_cse_multicast_mmd_v2_8.price.size + 
  cnsx_cse_multicast_mmd_v2_8.firm_id.size + 
  cnsx_cse_multicast_mmd_v2_8.settlement_term.size + 
  cnsx_cse_multicast_mmd_v2_8.odd_lot_flag.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size + 
  cnsx_cse_multicast_mmd_v2_8.priority_timestamp.size

-- Display: Add Order Message
cnsx_cse_multicast_mmd_v2_8.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
cnsx_cse_multicast_mmd_v2_8.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Alphanumeric
  index, order_number = cnsx_cse_multicast_mmd_v2_8.order_number.dissect(buffer, index, packet, parent)

  -- Order Verb: Alphanumeric
  index, order_verb = cnsx_cse_multicast_mmd_v2_8.order_verb.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = cnsx_cse_multicast_mmd_v2_8.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse_multicast_mmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cnsx_cse_multicast_mmd_v2_8.price.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = cnsx_cse_multicast_mmd_v2_8.firm_id.dissect(buffer, index, packet, parent)

  -- Settlement Term: Alphanumeric
  index, settlement_term = cnsx_cse_multicast_mmd_v2_8.settlement_term.dissect(buffer, index, packet, parent)

  -- Odd Lot Flag: Alphanumeric
  index, odd_lot_flag = cnsx_cse_multicast_mmd_v2_8.odd_lot_flag.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  -- Priority Timestamp: Integer
  index, priority_timestamp = cnsx_cse_multicast_mmd_v2_8.priority_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
cnsx_cse_multicast_mmd_v2_8.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.add_order_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
cnsx_cse_multicast_mmd_v2_8.trading_action_message = {}

-- Size: Trading Action Message
cnsx_cse_multicast_mmd_v2_8.trading_action_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.symbol.size + 
  cnsx_cse_multicast_mmd_v2_8.trading_state.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size

-- Display: Trading Action Message
cnsx_cse_multicast_mmd_v2_8.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
cnsx_cse_multicast_mmd_v2_8.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse_multicast_mmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Trading State: Alphanumeric
  index, trading_state = cnsx_cse_multicast_mmd_v2_8.trading_state.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
cnsx_cse_multicast_mmd_v2_8.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.trading_action_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Dynamics Message
cnsx_cse_multicast_mmd_v2_8.symbol_dynamics_message = {}

-- Size: Symbol Dynamics Message
cnsx_cse_multicast_mmd_v2_8.symbol_dynamics_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.symbol.size + 
  cnsx_cse_multicast_mmd_v2_8.settlement_term.size + 
  cnsx_cse_multicast_mmd_v2_8.gmf_setting.size + 
  cnsx_cse_multicast_mmd_v2_8.gmf_volume.size + 
  cnsx_cse_multicast_mmd_v2_8.anonymous_setting.size + 
  cnsx_cse_multicast_mmd_v2_8.moc_eligible.size

-- Display: Symbol Dynamics Message
cnsx_cse_multicast_mmd_v2_8.symbol_dynamics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Dynamics Message
cnsx_cse_multicast_mmd_v2_8.symbol_dynamics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse_multicast_mmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Settlement Term: Alphanumeric
  index, settlement_term = cnsx_cse_multicast_mmd_v2_8.settlement_term.dissect(buffer, index, packet, parent)

  -- Gmf Setting: Alphanumeric
  index, gmf_setting = cnsx_cse_multicast_mmd_v2_8.gmf_setting.dissect(buffer, index, packet, parent)

  -- Gmf Volume: Integer
  index, gmf_volume = cnsx_cse_multicast_mmd_v2_8.gmf_volume.dissect(buffer, index, packet, parent)

  -- Anonymous Setting: Alphanumeric
  index, anonymous_setting = cnsx_cse_multicast_mmd_v2_8.anonymous_setting.dissect(buffer, index, packet, parent)

  -- Moc Eligible: Alphanumeric
  index, moc_eligible = cnsx_cse_multicast_mmd_v2_8.moc_eligible.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Dynamics Message
cnsx_cse_multicast_mmd_v2_8.symbol_dynamics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.symbol_dynamics_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.symbol_dynamics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.symbol_dynamics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.symbol_dynamics_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Directory Message
cnsx_cse_multicast_mmd_v2_8.symbol_directory_message = {}

-- Size: Symbol Directory Message
cnsx_cse_multicast_mmd_v2_8.symbol_directory_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.symbol.size + 
  cnsx_cse_multicast_mmd_v2_8.cusip.size + 
  cnsx_cse_multicast_mmd_v2_8.sec_name.size + 
  cnsx_cse_multicast_mmd_v2_8.currency.size + 
  cnsx_cse_multicast_mmd_v2_8.stock_group.size + 
  cnsx_cse_multicast_mmd_v2_8.listing.size + 
  cnsx_cse_multicast_mmd_v2_8.expiry.size + 
  cnsx_cse_multicast_mmd_v2_8.lot_size.size + 
  cnsx_cse_multicast_mmd_v2_8.settlement_term.size + 
  cnsx_cse_multicast_mmd_v2_8.listing_market.size + 
  cnsx_cse_multicast_mmd_v2_8.previous_closing_price.size + 
  cnsx_cse_multicast_mmd_v2_8.listing_tier.size + 
  cnsx_cse_multicast_mmd_v2_8.market_maker_name.size + 
  cnsx_cse_multicast_mmd_v2_8.market_maker_phone_number.size + 
  cnsx_cse_multicast_mmd_v2_8.full_sec_name.size

-- Display: Symbol Directory Message
cnsx_cse_multicast_mmd_v2_8.symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Directory Message
cnsx_cse_multicast_mmd_v2_8.symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse_multicast_mmd_v2_8.symbol.dissect(buffer, index, packet, parent)

  -- Cusip: Alphanumeric
  index, cusip = cnsx_cse_multicast_mmd_v2_8.cusip.dissect(buffer, index, packet, parent)

  -- Sec Name: Alphanumeric
  index, sec_name = cnsx_cse_multicast_mmd_v2_8.sec_name.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cnsx_cse_multicast_mmd_v2_8.currency.dissect(buffer, index, packet, parent)

  -- Stock Group: Integer
  index, stock_group = cnsx_cse_multicast_mmd_v2_8.stock_group.dissect(buffer, index, packet, parent)

  -- Listing: Integer
  index, listing = cnsx_cse_multicast_mmd_v2_8.listing.dissect(buffer, index, packet, parent)

  -- Expiry: Integer
  index, expiry = cnsx_cse_multicast_mmd_v2_8.expiry.dissect(buffer, index, packet, parent)

  -- Lot Size: Integer
  index, lot_size = cnsx_cse_multicast_mmd_v2_8.lot_size.dissect(buffer, index, packet, parent)

  -- Settlement Term: Alphanumeric
  index, settlement_term = cnsx_cse_multicast_mmd_v2_8.settlement_term.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = cnsx_cse_multicast_mmd_v2_8.listing_market.dissect(buffer, index, packet, parent)

  -- Previous Closing Price: Integer
  index, previous_closing_price = cnsx_cse_multicast_mmd_v2_8.previous_closing_price.dissect(buffer, index, packet, parent)

  -- Listing Tier: Integer
  index, listing_tier = cnsx_cse_multicast_mmd_v2_8.listing_tier.dissect(buffer, index, packet, parent)

  -- Market Maker Name: Alphanumeric
  index, market_maker_name = cnsx_cse_multicast_mmd_v2_8.market_maker_name.dissect(buffer, index, packet, parent)

  -- Market Maker Phone Number: Alphanumeric
  index, market_maker_phone_number = cnsx_cse_multicast_mmd_v2_8.market_maker_phone_number.dissect(buffer, index, packet, parent)

  -- Full Sec Name: Alphanumeric
  index, full_sec_name = cnsx_cse_multicast_mmd_v2_8.full_sec_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Directory Message
cnsx_cse_multicast_mmd_v2_8.symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.symbol_directory_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
cnsx_cse_multicast_mmd_v2_8.system_event_message = {}

-- Size: System Event Message
cnsx_cse_multicast_mmd_v2_8.system_event_message.size =
  cnsx_cse_multicast_mmd_v2_8.time_offset.size + 
  cnsx_cse_multicast_mmd_v2_8.group.size + 
  cnsx_cse_multicast_mmd_v2_8.event_code.size + 
  cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.size

-- Display: System Event Message
cnsx_cse_multicast_mmd_v2_8.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
cnsx_cse_multicast_mmd_v2_8.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse_multicast_mmd_v2_8.timestamp.dissect(buffer, index, packet, parent)

  -- Group: Integer
  index, group = cnsx_cse_multicast_mmd_v2_8.group.dissect(buffer, index, packet, parent)

  -- Event Code: Alphanumeric
  index, event_code = cnsx_cse_multicast_mmd_v2_8.event_code.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse_multicast_mmd_v2_8.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
cnsx_cse_multicast_mmd_v2_8.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.system_event_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cnsx_cse_multicast_mmd_v2_8.time_message = {}

-- Size: Time Message
cnsx_cse_multicast_mmd_v2_8.time_message.size =
  cnsx_cse_multicast_mmd_v2_8.second.size + 
  cnsx_cse_multicast_mmd_v2_8.millisecond.size

-- Display: Time Message
cnsx_cse_multicast_mmd_v2_8.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cnsx_cse_multicast_mmd_v2_8.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = cnsx_cse_multicast_mmd_v2_8.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  cnsx_cse_multicast_mmd_v2_8.second.current = second

  if not packet.visited then
    cnsx_cse_multicast_mmd_v2_8.conversation.current.second.last = second
  end

  -- Millisecond: Integer
  index, millisecond = cnsx_cse_multicast_mmd_v2_8.millisecond.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cnsx_cse_multicast_mmd_v2_8.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.time_message, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cnsx_cse_multicast_mmd_v2_8.payload = {}

-- Dispatch: Payload
cnsx_cse_multicast_mmd_v2_8.payload.dispatch = {
  ["T"] = cnsx_cse_multicast_mmd_v2_8.time_message.dissect,
  ["S"] = cnsx_cse_multicast_mmd_v2_8.system_event_message.dissect,
  ["R"] = cnsx_cse_multicast_mmd_v2_8.symbol_directory_message.dissect,
  ["O"] = cnsx_cse_multicast_mmd_v2_8.symbol_dynamics_message.dissect,
  ["H"] = cnsx_cse_multicast_mmd_v2_8.trading_action_message.dissect,
  ["A"] = cnsx_cse_multicast_mmd_v2_8.add_order_message.dissect,
  ["E"] = cnsx_cse_multicast_mmd_v2_8.order_executed_message.dissect,
  ["C"] = cnsx_cse_multicast_mmd_v2_8.order_executed_with_price_message.dissect,
  ["P"] = cnsx_cse_multicast_mmd_v2_8.trade_message.dissect,
  ["B"] = cnsx_cse_multicast_mmd_v2_8.broken_trade_message.dissect,
  ["D"] = cnsx_cse_multicast_mmd_v2_8.order_delete_message.dissect,
  ["U"] = cnsx_cse_multicast_mmd_v2_8.order_replace_message.dissect,
  ["I"] = cnsx_cse_multicast_mmd_v2_8.indicative_price_quantity_message.dissect,
  ["Q"] = cnsx_cse_multicast_mmd_v2_8.best_bid_offer_message.dissect,
  ["F"] = cnsx_cse_multicast_mmd_v2_8.closing_price_message.dissect,
  ["G"] = cnsx_cse_multicast_mmd_v2_8.general_message.dissect,
  ["M"] = cnsx_cse_multicast_mmd_v2_8.moc_imbalance_notification_message.dissect,
  ["L"] = cnsx_cse_multicast_mmd_v2_8.eop_moc_imbalance_message.dissect,
}

-- Dissect: Payload
cnsx_cse_multicast_mmd_v2_8.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = cnsx_cse_multicast_mmd_v2_8.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cnsx_cse_multicast_mmd_v2_8.message_header = {}

-- Size: Message Header
cnsx_cse_multicast_mmd_v2_8.message_header.size =
  cnsx_cse_multicast_mmd_v2_8.sub_length.size + 
  cnsx_cse_multicast_mmd_v2_8.message_type.size

-- Display: Message Header
cnsx_cse_multicast_mmd_v2_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cnsx_cse_multicast_mmd_v2_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Length: Binary
  index, sub_length = cnsx_cse_multicast_mmd_v2_8.sub_length.dissect(buffer, index, packet, parent)

  -- Message Type: Alphanumeric
  index, message_type = cnsx_cse_multicast_mmd_v2_8.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cnsx_cse_multicast_mmd_v2_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.message_header, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cnsx_cse_multicast_mmd_v2_8.message = {}

-- Display: Message
cnsx_cse_multicast_mmd_v2_8.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cnsx_cse_multicast_mmd_v2_8.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cnsx_cse_multicast_mmd_v2_8.packet_sequence ~= nil then
    local sequence = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.message_sequence_number, UInt64.new(cnsx_cse_multicast_mmd_v2_8.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cnsx_cse_multicast_mmd_v2_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 18 branches
  index = cnsx_cse_multicast_mmd_v2_8.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cnsx_cse_multicast_mmd_v2_8.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.message, buffer(offset, 0))
    local current = cnsx_cse_multicast_mmd_v2_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cnsx_cse_multicast_mmd_v2_8.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cnsx_cse_multicast_mmd_v2_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Block Header
cnsx_cse_multicast_mmd_v2_8.block_header = {}

-- Size: Block Header
cnsx_cse_multicast_mmd_v2_8.block_header.size =
  cnsx_cse_multicast_mmd_v2_8.block_length.size + 
  cnsx_cse_multicast_mmd_v2_8.block_number_of_messages.size + 
  cnsx_cse_multicast_mmd_v2_8.block_start_sequence.size

-- Display: Block Header
cnsx_cse_multicast_mmd_v2_8.block_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
cnsx_cse_multicast_mmd_v2_8.block_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: Binary
  index, block_length = cnsx_cse_multicast_mmd_v2_8.block_length.dissect(buffer, index, packet, parent)

  -- Block Number Of Messages: Binary
  index, block_number_of_messages = cnsx_cse_multicast_mmd_v2_8.block_number_of_messages.dissect(buffer, index, packet, parent)

  -- Block Start Sequence: Binary
  index, block_start_sequence = cnsx_cse_multicast_mmd_v2_8.block_start_sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cnsx_cse_multicast_mmd_v2_8.packet_sequence = block_start_sequence

  return index
end

-- Dissect: Block Header
cnsx_cse_multicast_mmd_v2_8.block_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse_multicast_mmd_v2_8.fields.block_header, buffer(offset, 0))
    local index = cnsx_cse_multicast_mmd_v2_8.block_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse_multicast_mmd_v2_8.block_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse_multicast_mmd_v2_8.block_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cnsx_cse_multicast_mmd_v2_8.packet = {}

-- Verify required size of Udp packet
cnsx_cse_multicast_mmd_v2_8.packet.requiredsize = function(buffer)
  return buffer:len() >= cnsx_cse_multicast_mmd_v2_8.block_header.size
end

-- Dissect Packet
cnsx_cse_multicast_mmd_v2_8.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cnsx_cse_multicast_mmd_v2_8.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  cnsx_cse_multicast_mmd_v2_8.second.current = data.second.frames[packet.number]
  cnsx_cse_multicast_mmd_v2_8.conversation.current = data

  local index = 0

  -- Block Header: Struct of 3 fields
  index, block_header = cnsx_cse_multicast_mmd_v2_8.block_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Block Number Of Messages
  local block_number_of_messages = buffer(index - 5, 1):uint()

  -- Repeating: Message
  for message_index = 1, block_number_of_messages do

    -- Dependency element: Sub Length
    local sub_length = buffer(index, 1):uint()

    -- Runtime Size Of: Message
    index, message = cnsx_cse_multicast_mmd_v2_8.message.dissect(buffer, index, packet, parent, sub_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cnsx_cse_multicast_mmd_v2_8.init()
  cnsx_cse_multicast_mmd_v2_8.second.current = nil
  cnsx_cse_multicast_mmd_v2_8.conversation.current = nil
  cnsx_cse_multicast_mmd_v2_8.conversation.flows = {}
end

-- Dissector for Cnsx Cse Multicast Mmd 2.8
function omi_cnsx_cse_multicast_mmd_v2_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cnsx_cse_multicast_mmd_v2_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_cnsx_cse_multicast_mmd_v2_8, buffer(), omi_cnsx_cse_multicast_mmd_v2_8.description, "("..buffer:len().." Bytes)")
  return cnsx_cse_multicast_mmd_v2_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cnsx Cse Multicast Mmd 2.8 (Udp)
local function omi_cnsx_cse_multicast_mmd_v2_8_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cnsx_cse_multicast_mmd_v2_8.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cnsx_cse_multicast_mmd_v2_8
  omi_cnsx_cse_multicast_mmd_v2_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cnsx Cse Multicast Mmd 2.8
omi_cnsx_cse_multicast_mmd_v2_8:register_heuristic("udp", omi_cnsx_cse_multicast_mmd_v2_8_udp_heuristic)

-- Register Cnsx Cse Multicast Mmd 2.8 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cnsx_cse_multicast_mmd_v2_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Canadian Securities Exchange
--   Version: 2.8
--   Date: Friday, November 7, 2025
--   Specification: CSE_Multicast_Market_Data_Feed_Programmers_Guide_2.8.pdf
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
