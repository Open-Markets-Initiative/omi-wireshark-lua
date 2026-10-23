-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cnsx Cse2 Retransmission Mmd 1.6 Protocol
local omi_cnsx_cse2_retransmission_mmd_v1_6 = Proto("Omi.Cnsx.Cse2.Retransmission.Mmd.v1.6", "Cnsx Cse2 Retransmission Mmd 1.6")

-- Protocol table
local cnsx_cse2_retransmission_mmd_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cnsx Cse2 Retransmission Mmd 1.6 Fields
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.anonymous_setting = ProtoField.new("Anonymous Setting", "cnsx.cse2.retransmission.mmd.v1.6.anonymoussetting", ftypes.STRING, nil, nil, nil, "\"Y\" for Anonymous enabled, \"N\" for Anonymous disabled.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.best_bid = ProtoField.new("Best Bid", "cnsx.cse2.retransmission.mmd.v1.6.bestbid", ftypes.DOUBLE, nil, nil, nil, "Best buy price.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.best_bid_size = ProtoField.new("Best Bid Size", "cnsx.cse2.retransmission.mmd.v1.6.bestbidsize", ftypes.UINT32, nil, nil, nil, "Total quantity at the best buy price.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.best_offer = ProtoField.new("Best Offer", "cnsx.cse2.retransmission.mmd.v1.6.bestoffer", ftypes.DOUBLE, nil, nil, nil, "Best sell price.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.best_offer_size = ProtoField.new("Best Offer Size", "cnsx.cse2.retransmission.mmd.v1.6.bestoffersize", ftypes.UINT32, nil, nil, nil, "Total quantity at the best sell price.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.block_length = ProtoField.new("Block Length", "cnsx.cse2.retransmission.mmd.v1.6.blocklength", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages including this header")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.block_number_of_messages = ProtoField.new("Block Number Of Messages", "cnsx.cse2.retransmission.mmd.v1.6.blocknumberofmessages", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.block_start_sequence = ProtoField.new("Block Start Sequence", "cnsx.cse2.retransmission.mmd.v1.6.blockstartsequence", ftypes.UINT32, nil, nil, nil, "Sequence of first message to follow this header. Zero on a message that exists only on the Tcp session")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.ccp_session_trade = ProtoField.new("Ccp Session Trade", "cnsx.cse2.retransmission.mmd.v1.6.ccpsessiontrade", ftypes.STRING, nil, nil, nil, "\"Y\" = CCP Session Trade, \"N\" = Not CCP Session Trade.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.client_identifier = ProtoField.new("Client Identifier", "cnsx.cse2.retransmission.mmd.v1.6.clientidentifier", ftypes.UINT32, nil, nil, nil, "Optional client identifier.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.contra_firm_id = ProtoField.new("Contra Firm Id", "cnsx.cse2.retransmission.mmd.v1.6.contrafirmid", ftypes.STRING, nil, nil, nil, "3 digit integer FirmId. \"001\" means anonymous.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.cross_type = ProtoField.new("Cross Type", "cnsx.cse2.retransmission.mmd.v1.6.crosstype", ftypes.STRING, nil, nil, nil, "Type of cross the trade resulted from.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.currency = ProtoField.new("Currency", "cnsx.cse2.retransmission.mmd.v1.6.currency", ftypes.STRING, nil, nil, nil, "Trading currency.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.cusip = ProtoField.new("Cusip", "cnsx.cse2.retransmission.mmd.v1.6.cusip", ftypes.STRING, nil, nil, nil, "CUSIP code.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.event_code = ProtoField.new("Event Code", "cnsx.cse2.retransmission.mmd.v1.6.eventcode", ftypes.STRING, nil, nil, nil, "Event Code (see System Event Codes).")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.exchange_timestamp = ProtoField.new("Exchange Timestamp", "cnsx.cse2.retransmission.mmd.v1.6.exchangetimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Official exchange time. Milliseconds since EPOCH (Jan 1, 0:0:0, 1970).")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.exchange_timestamp_utc = ProtoField.new("Exchange Timestamp", "cnsx.cse2.retransmission.mmd.v1.6.exchangetimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Official exchange time. Milliseconds since EPOCH (Jan 1, 0:0:0, 1970).")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.executed_quantity = ProtoField.new("Executed Quantity", "cnsx.cse2.retransmission.mmd.v1.6.executedquantity", ftypes.UINT32, nil, nil, nil, "Number of shares executed.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.execution_price = ProtoField.new("Execution Price", "cnsx.cse2.retransmission.mmd.v1.6.executionprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the execution occurred.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.expiry = ProtoField.new("Expiry", "cnsx.cse2.retransmission.mmd.v1.6.expiry", ftypes.UINT64, nil, nil, nil, "YYYYMMDD. 0 represents no expiry date.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.firm_id = ProtoField.new("Firm Id", "cnsx.cse2.retransmission.mmd.v1.6.firmid", ftypes.STRING, nil, nil, nil, "3 digit integer FirmId. \"001\" means anonymous.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.full_sec_name = ProtoField.new("Full Sec Name", "cnsx.cse2.retransmission.mmd.v1.6.fullsecname", ftypes.STRING, nil, nil, nil, "Long security name.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.gmf_setting = ProtoField.new("Gmf Setting", "cnsx.cse2.retransmission.mmd.v1.6.gmfsetting", ftypes.STRING, nil, nil, nil, "\"Y\" for GMF enabled, \"N\" for GMF disabled.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.gmf_volume = ProtoField.new("Gmf Volume", "cnsx.cse2.retransmission.mmd.v1.6.gmfvolume", ftypes.UINT64, nil, nil, nil, "Volume of GMF order.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.group = ProtoField.new("Group", "cnsx.cse2.retransmission.mmd.v1.6.group", ftypes.UINT64, nil, nil, nil, "ID for symbol grouping. 0: System Level event.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.listing = ProtoField.new("Listing", "cnsx.cse2.retransmission.mmd.v1.6.listing", ftypes.UINT64, nil, nil, nil, "YYYYMMDD. 0 represents no listing date.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.listing_market = ProtoField.new("Listing Market", "cnsx.cse2.retransmission.mmd.v1.6.listingmarket", ftypes.STRING, nil, nil, nil, "Listing market of the security.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.listing_tier = ProtoField.new("Listing Tier", "cnsx.cse2.retransmission.mmd.v1.6.listingtier", ftypes.UINT8, nil, nil, nil, "Listing tier of the security.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.login_status = ProtoField.new("Login Status", "cnsx.cse2.retransmission.mmd.v1.6.loginstatus", ftypes.STRING, nil, nil, nil, "Status.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.lot_size = ProtoField.new("Lot Size", "cnsx.cse2.retransmission.mmd.v1.6.lotsize", ftypes.UINT32, nil, nil, nil, "Lot size for the Symbol. Based on Reference price, lot size will be calculated at Start of Day.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.market_maker_name = ProtoField.new("Market Maker Name", "cnsx.cse2.retransmission.mmd.v1.6.marketmakername", ftypes.STRING, nil, nil, nil, "Market Maker name.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.market_maker_phone_number = ProtoField.new("Market Maker Phone Number", "cnsx.cse2.retransmission.mmd.v1.6.marketmakerphonenumber", ftypes.STRING, nil, nil, nil, "Market Maker phone number.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.match_number = ProtoField.new("Match Number", "cnsx.cse2.retransmission.mmd.v1.6.matchnumber", ftypes.STRING, nil, nil, nil, "Unique match identifier.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.message_text = ProtoField.new("Message Text", "cnsx.cse2.retransmission.mmd.v1.6.messagetext", ftypes.STRING, nil, nil, nil, "Message Text.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.message_type = ProtoField.new("Message Type", "cnsx.cse2.retransmission.mmd.v1.6.messagetype", ftypes.STRING)
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.millisecond = ProtoField.new("Millisecond", "cnsx.cse2.retransmission.mmd.v1.6.millisecond", ftypes.UINT16, nil, nil, nil, "Millisecond portion of the time when this time message was generated.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.moc_eligible = ProtoField.new("Moc Eligible", "cnsx.cse2.retransmission.mmd.v1.6.moceligible", ftypes.STRING, nil, nil, nil, "\"N\" = Not MOC Eligible.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.moc_trade_marker = ProtoField.new("Moc Trade Marker", "cnsx.cse2.retransmission.mmd.v1.6.moctrademarker", ftypes.STRING, nil, nil, nil, "To indicate which trades are MOC or LOC trades. \"Y\" = MOC or LOC trade, \"N\" = Not MOC or LOC trade.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.number_of_messages = ProtoField.new("Number Of Messages", "cnsx.cse2.retransmission.mmd.v1.6.numberofmessages", ftypes.UINT32, nil, nil, nil, "Number of messages requested. -1 to indicate all messages are up to date.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.odd_lot_flag = ProtoField.new("Odd Lot Flag", "cnsx.cse2.retransmission.mmd.v1.6.oddlotflag", ftypes.STRING, nil, nil, nil, "\"Y\" = Odd lot order, \"N\" = Not an odd lot.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.opening_trade = ProtoField.new("Opening Trade", "cnsx.cse2.retransmission.mmd.v1.6.openingtrade", ftypes.STRING, nil, nil, nil, "\"Y\" = Opening Trade, \"N\" = Not Opening Trade.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_number = ProtoField.new("Order Number", "cnsx.cse2.retransmission.mmd.v1.6.ordernumber", ftypes.STRING, nil, nil, nil, "Unique reference number assigned to the new order.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_verb = ProtoField.new("Order Verb", "cnsx.cse2.retransmission.mmd.v1.6.orderverb", ftypes.STRING, nil, nil, nil, "\"B\" Buy, \"S\" Sell.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.password = ProtoField.new("Password", "cnsx.cse2.retransmission.mmd.v1.6.password", ftypes.STRING, nil, nil, nil, "Password assigned by CSE.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.previous_closing_price = ProtoField.new("Previous Closing Price", "cnsx.cse2.retransmission.mmd.v1.6.previousclosingprice", ftypes.DOUBLE, nil, nil, nil, "Adjusted previous closing price.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.price = ProtoField.new("Price", "cnsx.cse2.retransmission.mmd.v1.6.price", ftypes.DOUBLE, nil, nil, nil, "Price of the new order.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.priority_timestamp = ProtoField.new("Priority Timestamp", "cnsx.cse2.retransmission.mmd.v1.6.prioritytimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Priority timestamp. Milliseconds since EPOCH (Jan 1, 0:0:0, 1970).")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.priority_timestamp_utc = ProtoField.new("Priority Timestamp", "cnsx.cse2.retransmission.mmd.v1.6.prioritytimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Priority timestamp. Milliseconds since EPOCH (Jan 1, 0:0:0, 1970).")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.quantity = ProtoField.new("Quantity", "cnsx.cse2.retransmission.mmd.v1.6.quantity", ftypes.UINT32, nil, nil, nil, "Total quantity of the order being added to the book.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.reason = ProtoField.new("Reason", "cnsx.cse2.retransmission.mmd.v1.6.reason", ftypes.STRING, nil, nil, nil, "Reason the trade was broken (see Broken Trade Reasons).")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.retransmission_status = ProtoField.new("Retransmission Status", "cnsx.cse2.retransmission.mmd.v1.6.retransmissionstatus", ftypes.STRING, nil, nil, nil, "Status.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.sec_name = ProtoField.new("Sec Name", "cnsx.cse2.retransmission.mmd.v1.6.secname", ftypes.STRING, nil, nil, nil, "Short security name.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.second = ProtoField.new("Second", "cnsx.cse2.retransmission.mmd.v1.6.second", ftypes.UINT32, nil, nil, nil, "Number of seconds since midnight (Eastern Time) of the first day of the system cycle.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.sets_the_last_price = ProtoField.new("Sets The Last Price", "cnsx.cse2.retransmission.mmd.v1.6.setsthelastprice", ftypes.STRING, nil, nil, nil, "\"Y\" = Last sale, \"N\" = Not last sale.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.settlement_term = ProtoField.new("Settlement Term", "cnsx.cse2.retransmission.mmd.v1.6.settlementterm", ftypes.STRING, nil, nil, nil, "Override Settlement Term. \"T\" = Cash Today (T+0), \"N\" = Non-Net, \"R\" = Non-Resident, or a Special Settlement Date in YYYYMMDD format. Left blank \" \" if default settlement.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.spin_status = ProtoField.new("Spin Status", "cnsx.cse2.retransmission.mmd.v1.6.spinstatus", ftypes.STRING, nil, nil, nil, "Status.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.start_sequence = ProtoField.new("Start Sequence", "cnsx.cse2.retransmission.mmd.v1.6.startsequence", ftypes.UINT32, nil, nil, nil, "Start sequence number.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.stock_group = ProtoField.new("Stock Group", "cnsx.cse2.retransmission.mmd.v1.6.stockgroup", ftypes.UINT64, nil, nil, nil, "Stock Group.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.sub_length = ProtoField.new("Sub Length", "cnsx.cse2.retransmission.mmd.v1.6.sublength", ftypes.UINT8, nil, nil, nil, "Message length including this field. The exchange may append fields to a message, so this and not a table total bounds it")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.symbol = ProtoField.new("Symbol", "cnsx.cse2.retransmission.mmd.v1.6.symbol", ftypes.STRING, nil, nil, nil, "Symbol.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.time_offset = ProtoField.new("Time Offset", "cnsx.cse2.retransmission.mmd.v1.6.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanoseconds since last Timestamp-Seconds message.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.trade_attribute = ProtoField.new("Trade Attribute", "cnsx.cse2.retransmission.mmd.v1.6.tradeattribute", ftypes.STRING, nil, nil, nil, "\"B\" for ByPass order, \" \" default.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.trading_state = ProtoField.new("Trading State", "cnsx.cse2.retransmission.mmd.v1.6.tradingstate", ftypes.STRING, nil, nil, nil, "Current trading state for symbol (see Trading Action).")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.user_id = ProtoField.new("User Id", "cnsx.cse2.retransmission.mmd.v1.6.userid", ftypes.STRING, nil, nil, nil, "User ID assigned by CSE.")

-- Cnsx Cse2 Retransmission Mmd 1.6 Framing
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.block = ProtoField.new("Block", "cnsx.cse2.retransmission.mmd.v1.6.block", ftypes.STRING, nil, nil, nil, "A block header followed by Number of Messages message(s)")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.block_header = ProtoField.new("Block Header", "cnsx.cse2.retransmission.mmd.v1.6.blockheader", ftypes.STRING, nil, nil, nil, "Prefix of a block of messages, carrying the unique information to identify and route them")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.message = ProtoField.new("Message", "cnsx.cse2.retransmission.mmd.v1.6.message", ftypes.STRING, nil, nil, nil, "Cnsx Mmd sub message: a two byte sub header and a payload the message type selects")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.message_header = ProtoField.new("Message Header", "cnsx.cse2.retransmission.mmd.v1.6.messageheader", ftypes.STRING, nil, nil, nil, "Two byte sub header prefixing every message, carrying its length and its type")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.packet = ProtoField.new("Packet", "cnsx.cse2.retransmission.mmd.v1.6.packet", ftypes.STRING, nil, nil, nil, "Cnsx Mmd Tcp Packet")

-- Cnsx Cse2 Retransmission 1.6 Application Messages
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.add_order_message = ProtoField.new("Add Order Message", "cnsx.cse2.retransmission.mmd.v1.6.addordermessage", ftypes.STRING, nil, nil, nil, "A new order added to the displayed book.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.best_bid_offer_message = ProtoField.new("Best Bid Offer Message", "cnsx.cse2.retransmission.mmd.v1.6.bestbidoffermessage", ftypes.STRING, nil, nil, nil, "The best bid and offer for a symbol with the quantity at each. During an auction with an indicative price set, the indicative price overwrites both sides.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "cnsx.cse2.retransmission.mmd.v1.6.brokentrademessage", ftypes.STRING, nil, nil, nil, "A previously transmitted execution that has been broken, naming the match number it cancels.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.closing_price_message = ProtoField.new("Closing Price Message", "cnsx.cse2.retransmission.mmd.v1.6.closingpricemessage", ftypes.STRING, nil, nil, nil, "The closing price for a symbol.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.general_message = ProtoField.new("General Message", "cnsx.cse2.retransmission.mmd.v1.6.generalmessage", ftypes.STRING, nil, nil, nil, "Free text bulletin from the exchange.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "cnsx.cse2.retransmission.mmd.v1.6.heartbeatmessage", ftypes.STRING, nil, nil, nil, "Sent by the exchange once per defined period for line integrity testing. The client must send the same message back on receipt, and two consecutive missed heartbeats terminate the connection.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.login_request_message = ProtoField.new("Login Request Message", "cnsx.cse2.retransmission.mmd.v1.6.loginrequestmessage", ftypes.STRING, nil, nil, nil, "The first message a client sends once a Tcp connection to the Retransmission or Spin server is established.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.login_response_message = ProtoField.new("Login Response Message", "cnsx.cse2.retransmission.mmd.v1.6.loginresponsemessage", ftypes.STRING, nil, nil, nil, "Reply to a Login Request. Always \"Y\": an invalid user id or password is signalled by the exchange closing the socket after 5 seconds without a response.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_delete_message = ProtoField.new("Order Delete Message", "cnsx.cse2.retransmission.mmd.v1.6.orderdeletemessage", ftypes.STRING, nil, nil, nil, "An order cancelled and removed from the displayed book.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_executed_message = ProtoField.new("Order Executed Message", "cnsx.cse2.retransmission.mmd.v1.6.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "An order on the book executed in whole or in part at the price it was displayed at.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "cnsx.cse2.retransmission.mmd.v1.6.orderexecutedwithpricemessage", ftypes.STRING, nil, nil, nil, "An order on the book executed in whole or in part at a price other than the one it was displayed at.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_replace_message = ProtoField.new("Order Replace Message", "cnsx.cse2.retransmission.mmd.v1.6.orderreplacemessage", ftypes.STRING, nil, nil, nil, "An order on the book replaced with a new quantity and price, keeping its order number.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "cnsx.cse2.retransmission.mmd.v1.6.retransmissionrequestmessage", ftypes.STRING, nil, nil, nil, "Asks the exchange to replay a range of sequenced messages the client missed.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.retransmission_response_message = ProtoField.new("Retransmission Response Message", "cnsx.cse2.retransmission.mmd.v1.6.retransmissionresponsemessage", ftypes.STRING, nil, nil, nil, "States whether the requested retransmission will follow. The replayed messages are framed exactly as the multicast feed sent them.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.spin_request_message = ProtoField.new("Spin Request Message", "cnsx.cse2.retransmission.mmd.v1.6.spinrequestmessage", ftypes.STRING, nil, nil, nil, "Asks for a snapshot of the whole order book, used by a client that has lost its book rather than detected a gap.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.spin_response_message = ProtoField.new("Spin Response Message", "cnsx.cse2.retransmission.mmd.v1.6.spinresponsemessage", ftypes.STRING, nil, nil, nil, "Brackets a book snapshot. The exchange acknowledges the spin request with \"S\", retransmits the book over the same socket, then sends a second response with \"E\" to mark the end.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.symbol_directory_message = ProtoField.new("Symbol Directory Message", "cnsx.cse2.retransmission.mmd.v1.6.symboldirectorymessage", ftypes.STRING, nil, nil, nil, "Static properties of a symbol. Sent for every symbol in the morning, and again during the day if a symbol changes.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.symbol_dynamics_message = ProtoField.new("Symbol Dynamics Message", "cnsx.cse2.retransmission.mmd.v1.6.symboldynamicsmessage", ftypes.STRING, nil, nil, nil, "Values and rules for a symbol that can be updated intra-day. Sent for every symbol in the morning, and again during the day if a symbol changes.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.system_event_message = ProtoField.new("System Event Message", "cnsx.cse2.retransmission.mmd.v1.6.systemeventmessage", ftypes.STRING, nil, nil, nil, "Signals a market or data feed handler event, either for the system as a whole or for one symbol group.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.time_message = ProtoField.new("Time Message", "cnsx.cse2.retransmission.mmd.v1.6.timemessage", ftypes.STRING, nil, nil, nil, "Anchors the feed clock. Every following message states its own time as nanoseconds elapsed since this message.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.trade_message = ProtoField.new("Trade Message", "cnsx.cse2.retransmission.mmd.v1.6.trademessage", ftypes.STRING, nil, nil, nil, "A trade that does not change the displayed book, carrying the full attribution and classification of the execution.")
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.trading_action_message = ProtoField.new("Trading Action Message", "cnsx.cse2.retransmission.mmd.v1.6.tradingactionmessage", ftypes.STRING, nil, nil, nil, "Current trading state for a symbol. A symbol suspended intra-day with \"V\" is unsuspended with \"N\".")

-- Cnsx Cse2 Retransmission Mmd 1.6 Generated Fields
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.message_index = ProtoField.new("Message Index", "cnsx.cse2.retransmission.mmd.v1.6.messageindex", ftypes.UINT16)
omi_cnsx_cse2_retransmission_mmd_v1_6.fields.timestamp = ProtoField.new("Timestamp", "cnsx.cse2.retransmission.mmd.v1.6.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cnsx Cse2 Retransmission Mmd 1.6 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cnsx_cse2_retransmission_mmd_v1_6.timestamp_format = 2

-- Hours behind UTC (America/Toronto) for midnight calculation
cnsx_cse2_retransmission_mmd_v1_6.utc_offset_hours = 5

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cnsx_cse2_retransmission_mmd_v1_6.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cnsx_cse2_retransmission_mmd_v1_6.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cnsx Cse2 Retransmission Mmd 1.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Cnsx Cse2 Retransmission Mmd 1.6 Show Options
omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.timestamp_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", timestamp_format_enum, false)
omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (America/Toronto) for midnight calculation")
omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cnsx_cse2_retransmission_mmd_v1_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_application_messages then
    show.application_messages = omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_application_messages
  end
  if show.headers ~= omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_headers then
    show.headers = omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_headers
  end
  if show.structs ~= omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_structs then
    show.structs = omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_structs
  end
  if show.indexes ~= omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_indexes then
    show.indexes = omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.show_indexes
  end
  if cnsx_cse2_retransmission_mmd_v1_6.format_timestamp ~= omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.format_timestamp then
    cnsx_cse2_retransmission_mmd_v1_6.format_timestamp = omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.format_timestamp
  end
  if cnsx_cse2_retransmission_mmd_v1_6.timestamp_format ~= omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.timestamp_format then
    cnsx_cse2_retransmission_mmd_v1_6.timestamp_format = omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.timestamp_format
  end
  if cnsx_cse2_retransmission_mmd_v1_6.utc_offset_hours ~= omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.utc_offset_hours then
    cnsx_cse2_retransmission_mmd_v1_6.utc_offset_hours = omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.utc_offset_hours
  end
  if cnsx_cse2_retransmission_mmd_v1_6.absolute_time_base ~= omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.absolute_time_base then
    cnsx_cse2_retransmission_mmd_v1_6.absolute_time_base = omi_cnsx_cse2_retransmission_mmd_v1_6.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cnsx_cse2_retransmission_mmd_v1_6.conversation = {}
cnsx_cse2_retransmission_mmd_v1_6.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cnsx_cse2_retransmission_mmd_v1_6.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cnsx_cse2_retransmission_mmd_v1_6.conversation.data = function(packet)
  local key = cnsx_cse2_retransmission_mmd_v1_6.conversation.key(packet)
  local data = cnsx_cse2_retransmission_mmd_v1_6.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} } }
    cnsx_cse2_retransmission_mmd_v1_6.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cnsx_cse2_retransmission_mmd_v1_6.conversation.current = nil


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
-- Cnsx Cse2 Retransmission Mmd 1.6 Fields
-----------------------------------------------------------------------

-- Anonymous Setting
cnsx_cse2_retransmission_mmd_v1_6.anonymous_setting = {}

-- Size: Anonymous Setting
cnsx_cse2_retransmission_mmd_v1_6.anonymous_setting.size = 1

-- Display: Anonymous Setting
cnsx_cse2_retransmission_mmd_v1_6.anonymous_setting.display = function(value)
  if value == "Y" then
    return "Anonymous Setting: Anonymous Enabled (Y)"
  end
  if value == "N" then
    return "Anonymous Setting: Anonymous Disabled (N)"
  end

  return "Anonymous Setting: Unknown("..value..")"
end

-- Dissect: Anonymous Setting
cnsx_cse2_retransmission_mmd_v1_6.anonymous_setting.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.anonymous_setting.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.anonymous_setting.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.anonymous_setting, range, value, display)

  return offset + length, value
end

-- Best Bid
cnsx_cse2_retransmission_mmd_v1_6.best_bid = {}

-- Size: Best Bid
cnsx_cse2_retransmission_mmd_v1_6.best_bid.size = 4

-- Display: Best Bid
cnsx_cse2_retransmission_mmd_v1_6.best_bid.display = function(value)
  return "Best Bid: "..value
end

-- Translate: Best Bid
cnsx_cse2_retransmission_mmd_v1_6.best_bid.translate = function(raw)
  return raw/10000
end

-- Dissect: Best Bid
cnsx_cse2_retransmission_mmd_v1_6.best_bid.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.best_bid.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse2_retransmission_mmd_v1_6.best_bid.translate(raw)
  local display = cnsx_cse2_retransmission_mmd_v1_6.best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.best_bid, range, value, display)

  return offset + length, value
end

-- Best Bid Size
cnsx_cse2_retransmission_mmd_v1_6.best_bid_size = {}

-- Size: Best Bid Size
cnsx_cse2_retransmission_mmd_v1_6.best_bid_size.size = 4

-- Display: Best Bid Size
cnsx_cse2_retransmission_mmd_v1_6.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
cnsx_cse2_retransmission_mmd_v1_6.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Best Offer
cnsx_cse2_retransmission_mmd_v1_6.best_offer = {}

-- Size: Best Offer
cnsx_cse2_retransmission_mmd_v1_6.best_offer.size = 4

-- Display: Best Offer
cnsx_cse2_retransmission_mmd_v1_6.best_offer.display = function(value)
  return "Best Offer: "..value
end

-- Translate: Best Offer
cnsx_cse2_retransmission_mmd_v1_6.best_offer.translate = function(raw)
  return raw/10000
end

-- Dissect: Best Offer
cnsx_cse2_retransmission_mmd_v1_6.best_offer.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.best_offer.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse2_retransmission_mmd_v1_6.best_offer.translate(raw)
  local display = cnsx_cse2_retransmission_mmd_v1_6.best_offer.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.best_offer, range, value, display)

  return offset + length, value
end

-- Best Offer Size
cnsx_cse2_retransmission_mmd_v1_6.best_offer_size = {}

-- Size: Best Offer Size
cnsx_cse2_retransmission_mmd_v1_6.best_offer_size.size = 4

-- Display: Best Offer Size
cnsx_cse2_retransmission_mmd_v1_6.best_offer_size.display = function(value)
  return "Best Offer Size: "..value
end

-- Dissect: Best Offer Size
cnsx_cse2_retransmission_mmd_v1_6.best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Block Length
cnsx_cse2_retransmission_mmd_v1_6.block_length = {}

-- Size: Block Length
cnsx_cse2_retransmission_mmd_v1_6.block_length.size = 2

-- Display: Block Length
cnsx_cse2_retransmission_mmd_v1_6.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cnsx_cse2_retransmission_mmd_v1_6.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.block_length, range, value, display)

  return offset + length, value
end

-- Block Number Of Messages
cnsx_cse2_retransmission_mmd_v1_6.block_number_of_messages = {}

-- Size: Block Number Of Messages
cnsx_cse2_retransmission_mmd_v1_6.block_number_of_messages.size = 1

-- Display: Block Number Of Messages
cnsx_cse2_retransmission_mmd_v1_6.block_number_of_messages.display = function(value)
  return "Block Number Of Messages: "..value
end

-- Dissect: Block Number Of Messages
cnsx_cse2_retransmission_mmd_v1_6.block_number_of_messages.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.block_number_of_messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.block_number_of_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.block_number_of_messages, range, value, display)

  return offset + length, value
end

-- Block Start Sequence
cnsx_cse2_retransmission_mmd_v1_6.block_start_sequence = {}

-- Size: Block Start Sequence
cnsx_cse2_retransmission_mmd_v1_6.block_start_sequence.size = 4

-- Display: Block Start Sequence
cnsx_cse2_retransmission_mmd_v1_6.block_start_sequence.display = function(value)
  return "Block Start Sequence: "..value
end

-- Dissect: Block Start Sequence
cnsx_cse2_retransmission_mmd_v1_6.block_start_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.block_start_sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.block_start_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.block_start_sequence, range, value, display)

  return offset + length, value
end

-- Ccp Session Trade
cnsx_cse2_retransmission_mmd_v1_6.ccp_session_trade = {}

-- Size: Ccp Session Trade
cnsx_cse2_retransmission_mmd_v1_6.ccp_session_trade.size = 1

-- Display: Ccp Session Trade
cnsx_cse2_retransmission_mmd_v1_6.ccp_session_trade.display = function(value)
  if value == "Y" then
    return "Ccp Session Trade: Ccp Session Trade (Y)"
  end
  if value == "N" then
    return "Ccp Session Trade: Not Ccp Session Trade (N)"
  end

  return "Ccp Session Trade: Unknown("..value..")"
end

-- Dissect: Ccp Session Trade
cnsx_cse2_retransmission_mmd_v1_6.ccp_session_trade.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.ccp_session_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.ccp_session_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.ccp_session_trade, range, value, display)

  return offset + length, value
end

-- Client Identifier
cnsx_cse2_retransmission_mmd_v1_6.client_identifier = {}

-- Size: Client Identifier
cnsx_cse2_retransmission_mmd_v1_6.client_identifier.size = 4

-- Display: Client Identifier
cnsx_cse2_retransmission_mmd_v1_6.client_identifier.display = function(value)
  return "Client Identifier: "..value
end

-- Dissect: Client Identifier
cnsx_cse2_retransmission_mmd_v1_6.client_identifier.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.client_identifier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.client_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.client_identifier, range, value, display)

  return offset + length, value
end

-- Contra Firm Id
cnsx_cse2_retransmission_mmd_v1_6.contra_firm_id = {}

-- Size: Contra Firm Id
cnsx_cse2_retransmission_mmd_v1_6.contra_firm_id.size = 3

-- Display: Contra Firm Id
cnsx_cse2_retransmission_mmd_v1_6.contra_firm_id.display = function(value)
  return "Contra Firm Id: "..value
end

-- Dissect: Contra Firm Id
cnsx_cse2_retransmission_mmd_v1_6.contra_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.contra_firm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.contra_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.contra_firm_id, range, value, display)

  return offset + length, value
end

-- Cross Type
cnsx_cse2_retransmission_mmd_v1_6.cross_type = {}

-- Size: Cross Type
cnsx_cse2_retransmission_mmd_v1_6.cross_type.size = 1

-- Display: Cross Type
cnsx_cse2_retransmission_mmd_v1_6.cross_type.display = function(value)
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
    return "Cross Type: Derivativerelated (D)"
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
cnsx_cse2_retransmission_mmd_v1_6.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
cnsx_cse2_retransmission_mmd_v1_6.currency = {}

-- Size: Currency
cnsx_cse2_retransmission_mmd_v1_6.currency.size = 3

-- Display: Currency
cnsx_cse2_retransmission_mmd_v1_6.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cnsx_cse2_retransmission_mmd_v1_6.currency.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.currency, range, value, display)

  return offset + length, value
end

-- Cusip
cnsx_cse2_retransmission_mmd_v1_6.cusip = {}

-- Size: Cusip
cnsx_cse2_retransmission_mmd_v1_6.cusip.size = 12

-- Display: Cusip
cnsx_cse2_retransmission_mmd_v1_6.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
cnsx_cse2_retransmission_mmd_v1_6.cusip.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.cusip.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.cusip, range, value, display)

  return offset + length, value
end

-- Event Code
cnsx_cse2_retransmission_mmd_v1_6.event_code = {}

-- Size: Event Code
cnsx_cse2_retransmission_mmd_v1_6.event_code.size = 1

-- Display: Event Code
cnsx_cse2_retransmission_mmd_v1_6.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages The First Message Is Sent (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "H" then
    return "Event Code: Trading Halted Orders Can Be Cancelled But No New Orders Can Be Entered (H)"
  end
  if value == "Q" then
    return "Event Code: Start Of Market Hours The Preopen Auction Is Concluded And Continuous Trading Begins (Q)"
  end
  if value == "M" then
    return "Event Code: End Of Market Hours Indicates The End Of Continuous Trading (M)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours Indicates The Exchange Is Closed (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages The Last Message Sent (C)"
  end
  if value == "Z" then
    return "Event Code: Failover Event (Z)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
cnsx_cse2_retransmission_mmd_v1_6.event_code.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.event_code, range, value, display)

  return offset + length, value
end

-- Exchange Timestamp
cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp = {}

-- Size: Exchange Timestamp
cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size = 8

-- Dissect: Exchange Timestamp
cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cnsx_cse2_retransmission_mmd_v1_6.fields.exchange_timestamp
  if cnsx_cse2_retransmission_mmd_v1_6.absolute_time_base == 1 then field = omi_cnsx_cse2_retransmission_mmd_v1_6.fields.exchange_timestamp_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Executed Quantity
cnsx_cse2_retransmission_mmd_v1_6.executed_quantity = {}

-- Size: Executed Quantity
cnsx_cse2_retransmission_mmd_v1_6.executed_quantity.size = 4

-- Display: Executed Quantity
cnsx_cse2_retransmission_mmd_v1_6.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cnsx_cse2_retransmission_mmd_v1_6.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Price
cnsx_cse2_retransmission_mmd_v1_6.execution_price = {}

-- Size: Execution Price
cnsx_cse2_retransmission_mmd_v1_6.execution_price.size = 4

-- Display: Execution Price
cnsx_cse2_retransmission_mmd_v1_6.execution_price.display = function(value)
  return "Execution Price: "..value
end

-- Translate: Execution Price
cnsx_cse2_retransmission_mmd_v1_6.execution_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Execution Price
cnsx_cse2_retransmission_mmd_v1_6.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.execution_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse2_retransmission_mmd_v1_6.execution_price.translate(raw)
  local display = cnsx_cse2_retransmission_mmd_v1_6.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Expiry
cnsx_cse2_retransmission_mmd_v1_6.expiry = {}

-- Size: Expiry
cnsx_cse2_retransmission_mmd_v1_6.expiry.size = 8

-- Display: Expiry
cnsx_cse2_retransmission_mmd_v1_6.expiry.display = function(value)
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
cnsx_cse2_retransmission_mmd_v1_6.expiry.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.expiry.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse2_retransmission_mmd_v1_6.expiry.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.expiry, range, value, display)

  return offset + length, value
end

-- Firm Id
cnsx_cse2_retransmission_mmd_v1_6.firm_id = {}

-- Size: Firm Id
cnsx_cse2_retransmission_mmd_v1_6.firm_id.size = 3

-- Display: Firm Id
cnsx_cse2_retransmission_mmd_v1_6.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
cnsx_cse2_retransmission_mmd_v1_6.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.firm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Full Sec Name
cnsx_cse2_retransmission_mmd_v1_6.full_sec_name = {}

-- Size: Full Sec Name
cnsx_cse2_retransmission_mmd_v1_6.full_sec_name.size = 75

-- Display: Full Sec Name
cnsx_cse2_retransmission_mmd_v1_6.full_sec_name.display = function(value)
  return "Full Sec Name: "..value
end

-- Dissect: Full Sec Name
cnsx_cse2_retransmission_mmd_v1_6.full_sec_name.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.full_sec_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.full_sec_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.full_sec_name, range, value, display)

  return offset + length, value
end

-- Gmf Setting
cnsx_cse2_retransmission_mmd_v1_6.gmf_setting = {}

-- Size: Gmf Setting
cnsx_cse2_retransmission_mmd_v1_6.gmf_setting.size = 1

-- Display: Gmf Setting
cnsx_cse2_retransmission_mmd_v1_6.gmf_setting.display = function(value)
  if value == "Y" then
    return "Gmf Setting: Gmf Enabled (Y)"
  end
  if value == "N" then
    return "Gmf Setting: Gmf Disabled (N)"
  end

  return "Gmf Setting: Unknown("..value..")"
end

-- Dissect: Gmf Setting
cnsx_cse2_retransmission_mmd_v1_6.gmf_setting.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.gmf_setting.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.gmf_setting.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.gmf_setting, range, value, display)

  return offset + length, value
end

-- Gmf Volume
cnsx_cse2_retransmission_mmd_v1_6.gmf_volume = {}

-- Size: Gmf Volume
cnsx_cse2_retransmission_mmd_v1_6.gmf_volume.size = 8

-- Display: Gmf Volume
cnsx_cse2_retransmission_mmd_v1_6.gmf_volume.display = function(value)
  return "Gmf Volume: "..value
end

-- Dissect: Gmf Volume
cnsx_cse2_retransmission_mmd_v1_6.gmf_volume.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.gmf_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse2_retransmission_mmd_v1_6.gmf_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.gmf_volume, range, value, display)

  return offset + length, value
end

-- Group
cnsx_cse2_retransmission_mmd_v1_6.group = {}

-- Size: Group
cnsx_cse2_retransmission_mmd_v1_6.group.size = 8

-- Display: Group
cnsx_cse2_retransmission_mmd_v1_6.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
cnsx_cse2_retransmission_mmd_v1_6.group.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.group.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse2_retransmission_mmd_v1_6.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.group, range, value, display)

  return offset + length, value
end

-- Listing
cnsx_cse2_retransmission_mmd_v1_6.listing = {}

-- Size: Listing
cnsx_cse2_retransmission_mmd_v1_6.listing.size = 8

-- Display: Listing
cnsx_cse2_retransmission_mmd_v1_6.listing.display = function(value)
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
cnsx_cse2_retransmission_mmd_v1_6.listing.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.listing.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse2_retransmission_mmd_v1_6.listing.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.listing, range, value, display)

  return offset + length, value
end

-- Listing Market
cnsx_cse2_retransmission_mmd_v1_6.listing_market = {}

-- Size: Listing Market
cnsx_cse2_retransmission_mmd_v1_6.listing_market.size = 1

-- Display: Listing Market
cnsx_cse2_retransmission_mmd_v1_6.listing_market.display = function(value)
  if value == "C" then
    return "Listing Market: Cse (C)"
  end
  if value == "T" then
    return "Listing Market: Tse (T)"
  end
  if value == "V" then
    return "Listing Market: Tsxv (V)"
  end
  if value == "A" then
    return "Listing Market: Alpha (A)"
  end
  if value == "N" then
    return "Listing Market: Cboe Canada (N)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
cnsx_cse2_retransmission_mmd_v1_6.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Listing Tier
cnsx_cse2_retransmission_mmd_v1_6.listing_tier = {}

-- Size: Listing Tier
cnsx_cse2_retransmission_mmd_v1_6.listing_tier.size = 1

-- Display: Listing Tier
cnsx_cse2_retransmission_mmd_v1_6.listing_tier.display = function(value)
  if value == 0 then
    return "Listing Tier: No Tier (0)"
  end
  if value == 1 then
    return "Listing Tier: Senior Tier (1)"
  end
  if value == 2 then
    return "Listing Tier: Venture Tier (2)"
  end

  return "Listing Tier: Unknown("..value..")"
end

-- Dissect: Listing Tier
cnsx_cse2_retransmission_mmd_v1_6.listing_tier.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.listing_tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.listing_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.listing_tier, range, value, display)

  return offset + length, value
end

-- Login Status
cnsx_cse2_retransmission_mmd_v1_6.login_status = {}

-- Size: Login Status
cnsx_cse2_retransmission_mmd_v1_6.login_status.size = 1

-- Display: Login Status
cnsx_cse2_retransmission_mmd_v1_6.login_status.display = function(value)
  if value == "Y" then
    return "Login Status: Login Accepted (Y)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
cnsx_cse2_retransmission_mmd_v1_6.login_status.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.login_status, range, value, display)

  return offset + length, value
end

-- Lot Size
cnsx_cse2_retransmission_mmd_v1_6.lot_size = {}

-- Size: Lot Size
cnsx_cse2_retransmission_mmd_v1_6.lot_size.size = 4

-- Display: Lot Size
cnsx_cse2_retransmission_mmd_v1_6.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
cnsx_cse2_retransmission_mmd_v1_6.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Market Maker Name
cnsx_cse2_retransmission_mmd_v1_6.market_maker_name = {}

-- Size: Market Maker Name
cnsx_cse2_retransmission_mmd_v1_6.market_maker_name.size = 20

-- Display: Market Maker Name
cnsx_cse2_retransmission_mmd_v1_6.market_maker_name.display = function(value)
  return "Market Maker Name: "..value
end

-- Dissect: Market Maker Name
cnsx_cse2_retransmission_mmd_v1_6.market_maker_name.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.market_maker_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.market_maker_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.market_maker_name, range, value, display)

  return offset + length, value
end

-- Market Maker Phone Number
cnsx_cse2_retransmission_mmd_v1_6.market_maker_phone_number = {}

-- Size: Market Maker Phone Number
cnsx_cse2_retransmission_mmd_v1_6.market_maker_phone_number.size = 12

-- Display: Market Maker Phone Number
cnsx_cse2_retransmission_mmd_v1_6.market_maker_phone_number.display = function(value)
  return "Market Maker Phone Number: "..value
end

-- Dissect: Market Maker Phone Number
cnsx_cse2_retransmission_mmd_v1_6.market_maker_phone_number.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.market_maker_phone_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.market_maker_phone_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.market_maker_phone_number, range, value, display)

  return offset + length, value
end

-- Match Number
cnsx_cse2_retransmission_mmd_v1_6.match_number = {}

-- Size: Match Number
cnsx_cse2_retransmission_mmd_v1_6.match_number.size = 18

-- Display: Match Number
cnsx_cse2_retransmission_mmd_v1_6.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
cnsx_cse2_retransmission_mmd_v1_6.match_number.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.match_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Text
cnsx_cse2_retransmission_mmd_v1_6.message_text = {}

-- Size: Message Text
cnsx_cse2_retransmission_mmd_v1_6.message_text.size = 128

-- Display: Message Text
cnsx_cse2_retransmission_mmd_v1_6.message_text.display = function(value)
  return "Message Text: "..value
end

-- Dissect: Message Text
cnsx_cse2_retransmission_mmd_v1_6.message_text.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.message_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.message_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.message_text, range, value, display)

  return offset + length, value
end

-- Message Type
cnsx_cse2_retransmission_mmd_v1_6.message_type = {}

-- Size: Message Type
cnsx_cse2_retransmission_mmd_v1_6.message_type.size = 1

-- Display: Message Type
cnsx_cse2_retransmission_mmd_v1_6.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Time Message (T)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "R" then
    return "Message Type: Symbol Directory Message (R)"
  end
  if value == "O" then
    return "Message Type: Symbol Dynamics Message (O)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
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
  if value == "P" then
    return "Message Type: Trade Message (P)"
  end
  if value == "B" then
    return "Message Type: Broken Trade Message (B)"
  end
  if value == "D" then
    return "Message Type: Order Delete Message (D)"
  end
  if value == "U" then
    return "Message Type: Order Replace Message (U)"
  end
  if value == "Q" then
    return "Message Type: Best Bid Offer Message (Q)"
  end
  if value == "F" then
    return "Message Type: Closing Price Message (F)"
  end
  if value == "G" then
    return "Message Type: General Message (G)"
  end
  if value == "l" then
    return "Message Type: Login Request Message (l)"
  end
  if value == "a" then
    return "Message Type: Login Response Message (a)"
  end
  if value == "r" then
    return "Message Type: Retransmission Request Message (r)"
  end
  if value == "b" then
    return "Message Type: Retransmission Response Message (b)"
  end
  if value == "s" then
    return "Message Type: Spin Request Message (s)"
  end
  if value == "c" then
    return "Message Type: Spin Response Message (c)"
  end
  if value == "h" then
    return "Message Type: Heartbeat Message (h)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cnsx_cse2_retransmission_mmd_v1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Millisecond
cnsx_cse2_retransmission_mmd_v1_6.millisecond = {}

-- Size: Millisecond
cnsx_cse2_retransmission_mmd_v1_6.millisecond.size = 2

-- Display: Millisecond
cnsx_cse2_retransmission_mmd_v1_6.millisecond.display = function(value)
  return "Millisecond: "..value
end

-- Dissect: Millisecond
cnsx_cse2_retransmission_mmd_v1_6.millisecond.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.millisecond.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.millisecond.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.millisecond, range, value, display)

  return offset + length, value
end

-- Moc Eligible
cnsx_cse2_retransmission_mmd_v1_6.moc_eligible = {}

-- Size: Moc Eligible
cnsx_cse2_retransmission_mmd_v1_6.moc_eligible.size = 1

-- Display: Moc Eligible
cnsx_cse2_retransmission_mmd_v1_6.moc_eligible.display = function(value)
  if value == "N" then
    return "Moc Eligible: Not Moc Eligible (N)"
  end

  return "Moc Eligible: Unknown("..value..")"
end

-- Dissect: Moc Eligible
cnsx_cse2_retransmission_mmd_v1_6.moc_eligible.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.moc_eligible.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.moc_eligible.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.moc_eligible, range, value, display)

  return offset + length, value
end

-- Moc Trade Marker
cnsx_cse2_retransmission_mmd_v1_6.moc_trade_marker = {}

-- Size: Moc Trade Marker
cnsx_cse2_retransmission_mmd_v1_6.moc_trade_marker.size = 1

-- Display: Moc Trade Marker
cnsx_cse2_retransmission_mmd_v1_6.moc_trade_marker.display = function(value)
  if value == "Y" then
    return "Moc Trade Marker: Moc Or Loc Trade (Y)"
  end
  if value == "N" then
    return "Moc Trade Marker: Not Moc Or Loc Trade (N)"
  end

  return "Moc Trade Marker: Unknown("..value..")"
end

-- Dissect: Moc Trade Marker
cnsx_cse2_retransmission_mmd_v1_6.moc_trade_marker.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.moc_trade_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.moc_trade_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.moc_trade_marker, range, value, display)

  return offset + length, value
end

-- Number Of Messages
cnsx_cse2_retransmission_mmd_v1_6.number_of_messages = {}

-- Size: Number Of Messages
cnsx_cse2_retransmission_mmd_v1_6.number_of_messages.size = 4

-- Display: Number Of Messages
cnsx_cse2_retransmission_mmd_v1_6.number_of_messages.display = function(value)
  return "Number Of Messages: "..value
end

-- Dissect: Number Of Messages
cnsx_cse2_retransmission_mmd_v1_6.number_of_messages.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.number_of_messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.number_of_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.number_of_messages, range, value, display)

  return offset + length, value
end

-- Odd Lot Flag
cnsx_cse2_retransmission_mmd_v1_6.odd_lot_flag = {}

-- Size: Odd Lot Flag
cnsx_cse2_retransmission_mmd_v1_6.odd_lot_flag.size = 1

-- Display: Odd Lot Flag
cnsx_cse2_retransmission_mmd_v1_6.odd_lot_flag.display = function(value)
  if value == "Y" then
    return "Odd Lot Flag: Odd Lot Order (Y)"
  end
  if value == "N" then
    return "Odd Lot Flag: Not An Odd Lot (N)"
  end

  return "Odd Lot Flag: Unknown("..value..")"
end

-- Dissect: Odd Lot Flag
cnsx_cse2_retransmission_mmd_v1_6.odd_lot_flag.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.odd_lot_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.odd_lot_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.odd_lot_flag, range, value, display)

  return offset + length, value
end

-- Opening Trade
cnsx_cse2_retransmission_mmd_v1_6.opening_trade = {}

-- Size: Opening Trade
cnsx_cse2_retransmission_mmd_v1_6.opening_trade.size = 1

-- Display: Opening Trade
cnsx_cse2_retransmission_mmd_v1_6.opening_trade.display = function(value)
  if value == "Y" then
    return "Opening Trade: Opening Trade (Y)"
  end
  if value == "N" then
    return "Opening Trade: Not Opening Trade (N)"
  end

  return "Opening Trade: Unknown("..value..")"
end

-- Dissect: Opening Trade
cnsx_cse2_retransmission_mmd_v1_6.opening_trade.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.opening_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.opening_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Order Number
cnsx_cse2_retransmission_mmd_v1_6.order_number = {}

-- Size: Order Number
cnsx_cse2_retransmission_mmd_v1_6.order_number.size = 18

-- Display: Order Number
cnsx_cse2_retransmission_mmd_v1_6.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
cnsx_cse2_retransmission_mmd_v1_6.order_number.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.order_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Verb
cnsx_cse2_retransmission_mmd_v1_6.order_verb = {}

-- Size: Order Verb
cnsx_cse2_retransmission_mmd_v1_6.order_verb.size = 1

-- Display: Order Verb
cnsx_cse2_retransmission_mmd_v1_6.order_verb.display = function(value)
  if value == "B" then
    return "Order Verb: Buy (B)"
  end
  if value == "S" then
    return "Order Verb: Sell (S)"
  end

  return "Order Verb: Unknown("..value..")"
end

-- Dissect: Order Verb
cnsx_cse2_retransmission_mmd_v1_6.order_verb.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.order_verb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.order_verb.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_verb, range, value, display)

  return offset + length, value
end

-- Password
cnsx_cse2_retransmission_mmd_v1_6.password = {}

-- Size: Password
cnsx_cse2_retransmission_mmd_v1_6.password.size = 16

-- Display: Password
cnsx_cse2_retransmission_mmd_v1_6.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cnsx_cse2_retransmission_mmd_v1_6.password.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.password, range, value, display)

  return offset + length, value
end

-- Previous Closing Price
cnsx_cse2_retransmission_mmd_v1_6.previous_closing_price = {}

-- Size: Previous Closing Price
cnsx_cse2_retransmission_mmd_v1_6.previous_closing_price.size = 4

-- Display: Previous Closing Price
cnsx_cse2_retransmission_mmd_v1_6.previous_closing_price.display = function(value)
  return "Previous Closing Price: "..value
end

-- Translate: Previous Closing Price
cnsx_cse2_retransmission_mmd_v1_6.previous_closing_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Previous Closing Price
cnsx_cse2_retransmission_mmd_v1_6.previous_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.previous_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse2_retransmission_mmd_v1_6.previous_closing_price.translate(raw)
  local display = cnsx_cse2_retransmission_mmd_v1_6.previous_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.previous_closing_price, range, value, display)

  return offset + length, value
end

-- Price
cnsx_cse2_retransmission_mmd_v1_6.price = {}

-- Size: Price
cnsx_cse2_retransmission_mmd_v1_6.price.size = 4

-- Display: Price
cnsx_cse2_retransmission_mmd_v1_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cnsx_cse2_retransmission_mmd_v1_6.price.translate = function(raw)
  return raw/10000
end

-- Dissect: Price
cnsx_cse2_retransmission_mmd_v1_6.price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.price.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = cnsx_cse2_retransmission_mmd_v1_6.price.translate(raw)
  local display = cnsx_cse2_retransmission_mmd_v1_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.price, range, value, display)

  return offset + length, value
end

-- Priority Timestamp
cnsx_cse2_retransmission_mmd_v1_6.priority_timestamp = {}

-- Size: Priority Timestamp
cnsx_cse2_retransmission_mmd_v1_6.priority_timestamp.size = 8

-- Dissect: Priority Timestamp
cnsx_cse2_retransmission_mmd_v1_6.priority_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.priority_timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cnsx_cse2_retransmission_mmd_v1_6.fields.priority_timestamp
  if cnsx_cse2_retransmission_mmd_v1_6.absolute_time_base == 1 then field = omi_cnsx_cse2_retransmission_mmd_v1_6.fields.priority_timestamp_utc end

  local seconds = (value / UInt64(1000)):tonumber()
  local nanos = (value % UInt64(1000)):tonumber() * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Quantity
cnsx_cse2_retransmission_mmd_v1_6.quantity = {}

-- Size: Quantity
cnsx_cse2_retransmission_mmd_v1_6.quantity.size = 4

-- Display: Quantity
cnsx_cse2_retransmission_mmd_v1_6.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cnsx_cse2_retransmission_mmd_v1_6.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reason
cnsx_cse2_retransmission_mmd_v1_6.reason = {}

-- Size: Reason
cnsx_cse2_retransmission_mmd_v1_6.reason.size = 1

-- Display: Reason
cnsx_cse2_retransmission_mmd_v1_6.reason.display = function(value)
  if value == "S" then
    return "Reason: Supervisory The Trade Was Manually Broken By The Exchange (S)"
  end
  if value == "A" then
    return "Reason: Amended (A)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
cnsx_cse2_retransmission_mmd_v1_6.reason.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.reason, range, value, display)

  return offset + length, value
end

-- Retransmission Status
cnsx_cse2_retransmission_mmd_v1_6.retransmission_status = {}

-- Size: Retransmission Status
cnsx_cse2_retransmission_mmd_v1_6.retransmission_status.size = 1

-- Display: Retransmission Status
cnsx_cse2_retransmission_mmd_v1_6.retransmission_status.display = function(value)
  if value == "Y" then
    return "Retransmission Status: Retransmission Will Follow (Y)"
  end
  if value == "N" then
    return "Retransmission Status: Request Ignored (N)"
  end

  return "Retransmission Status: Unknown("..value..")"
end

-- Dissect: Retransmission Status
cnsx_cse2_retransmission_mmd_v1_6.retransmission_status.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.retransmission_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.retransmission_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.retransmission_status, range, value, display)

  return offset + length, value
end

-- Sec Name
cnsx_cse2_retransmission_mmd_v1_6.sec_name = {}

-- Size: Sec Name
cnsx_cse2_retransmission_mmd_v1_6.sec_name.size = 15

-- Display: Sec Name
cnsx_cse2_retransmission_mmd_v1_6.sec_name.display = function(value)
  return "Sec Name: "..value
end

-- Dissect: Sec Name
cnsx_cse2_retransmission_mmd_v1_6.sec_name.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.sec_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.sec_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.sec_name, range, value, display)

  return offset + length, value
end

-- Second
cnsx_cse2_retransmission_mmd_v1_6.second = {}

-- Size: Second
cnsx_cse2_retransmission_mmd_v1_6.second.size = 4

-- Store: Second
cnsx_cse2_retransmission_mmd_v1_6.second.current = nil

-- Generated: Second
cnsx_cse2_retransmission_mmd_v1_6.second.generated = function(value, range, packet, parent)
  local display = cnsx_cse2_retransmission_mmd_v1_6.second.display(value)
  local second = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
cnsx_cse2_retransmission_mmd_v1_6.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
cnsx_cse2_retransmission_mmd_v1_6.second.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.second, range, value, display)

  return offset + length, value
end

-- Sets The Last Price
cnsx_cse2_retransmission_mmd_v1_6.sets_the_last_price = {}

-- Size: Sets The Last Price
cnsx_cse2_retransmission_mmd_v1_6.sets_the_last_price.size = 1

-- Display: Sets The Last Price
cnsx_cse2_retransmission_mmd_v1_6.sets_the_last_price.display = function(value)
  if value == "Y" then
    return "Sets The Last Price: Last Sale (Y)"
  end
  if value == "N" then
    return "Sets The Last Price: Not Last Sale (N)"
  end

  return "Sets The Last Price: Unknown("..value..")"
end

-- Dissect: Sets The Last Price
cnsx_cse2_retransmission_mmd_v1_6.sets_the_last_price.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.sets_the_last_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.sets_the_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.sets_the_last_price, range, value, display)

  return offset + length, value
end

-- Settlement Term
cnsx_cse2_retransmission_mmd_v1_6.settlement_term = {}

-- Size: Settlement Term
cnsx_cse2_retransmission_mmd_v1_6.settlement_term.size = 8

-- Display: Settlement Term
cnsx_cse2_retransmission_mmd_v1_6.settlement_term.display = function(value)
  return "Settlement Term: "..value
end

-- Dissect: Settlement Term
cnsx_cse2_retransmission_mmd_v1_6.settlement_term.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.settlement_term.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.settlement_term.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.settlement_term, range, value, display)

  return offset + length, value
end

-- Spin Status
cnsx_cse2_retransmission_mmd_v1_6.spin_status = {}

-- Size: Spin Status
cnsx_cse2_retransmission_mmd_v1_6.spin_status.size = 1

-- Display: Spin Status
cnsx_cse2_retransmission_mmd_v1_6.spin_status.display = function(value)
  if value == "S" then
    return "Spin Status: Spin Acknowledged (S)"
  end
  if value == "E" then
    return "Spin Status: End Of Spin (E)"
  end

  return "Spin Status: Unknown("..value..")"
end

-- Dissect: Spin Status
cnsx_cse2_retransmission_mmd_v1_6.spin_status.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.spin_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.spin_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.spin_status, range, value, display)

  return offset + length, value
end

-- Start Sequence
cnsx_cse2_retransmission_mmd_v1_6.start_sequence = {}

-- Size: Start Sequence
cnsx_cse2_retransmission_mmd_v1_6.start_sequence.size = 4

-- Display: Start Sequence
cnsx_cse2_retransmission_mmd_v1_6.start_sequence.display = function(value)
  return "Start Sequence: "..value
end

-- Dissect: Start Sequence
cnsx_cse2_retransmission_mmd_v1_6.start_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.start_sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.start_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.start_sequence, range, value, display)

  return offset + length, value
end

-- Stock Group
cnsx_cse2_retransmission_mmd_v1_6.stock_group = {}

-- Size: Stock Group
cnsx_cse2_retransmission_mmd_v1_6.stock_group.size = 8

-- Display: Stock Group
cnsx_cse2_retransmission_mmd_v1_6.stock_group.display = function(value)
  if value == 1 then
    return "Stock Group: CSE Listed Securities (1)"
  end
  if value == 2 then
    return "Stock Group: Other Canadian Listed Securities (2)"
  end

  return "Stock Group: Unknown("..value..")"
end

-- Dissect: Stock Group
cnsx_cse2_retransmission_mmd_v1_6.stock_group.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.stock_group.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cnsx_cse2_retransmission_mmd_v1_6.stock_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Sub Length
cnsx_cse2_retransmission_mmd_v1_6.sub_length = {}

-- Size: Sub Length
cnsx_cse2_retransmission_mmd_v1_6.sub_length.size = 1

-- Display: Sub Length
cnsx_cse2_retransmission_mmd_v1_6.sub_length.display = function(value)
  return "Sub Length: "..value
end

-- Dissect: Sub Length
cnsx_cse2_retransmission_mmd_v1_6.sub_length.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.sub_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.sub_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.sub_length, range, value, display)

  return offset + length, value
end

-- Symbol
cnsx_cse2_retransmission_mmd_v1_6.symbol = {}

-- Size: Symbol
cnsx_cse2_retransmission_mmd_v1_6.symbol.size = 12

-- Display: Symbol
cnsx_cse2_retransmission_mmd_v1_6.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cnsx_cse2_retransmission_mmd_v1_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Time Offset
cnsx_cse2_retransmission_mmd_v1_6.time_offset = {}

-- Size: Time Offset
cnsx_cse2_retransmission_mmd_v1_6.time_offset.size = 4

-- Display: Time Offset
cnsx_cse2_retransmission_mmd_v1_6.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cnsx_cse2_retransmission_mmd_v1_6.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.time_offset.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cnsx_cse2_retransmission_mmd_v1_6.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trade Attribute
cnsx_cse2_retransmission_mmd_v1_6.trade_attribute = {}

-- Size: Trade Attribute
cnsx_cse2_retransmission_mmd_v1_6.trade_attribute.size = 1

-- Display: Trade Attribute
cnsx_cse2_retransmission_mmd_v1_6.trade_attribute.display = function(value)
  if value == "B" then
    return "Trade Attribute: By Pass Order (B)"
  end
  if value == " " then
    return "Trade Attribute: Default (<whitespace>)"
  end

  return "Trade Attribute: Unknown("..value..")"
end

-- Dissect: Trade Attribute
cnsx_cse2_retransmission_mmd_v1_6.trade_attribute.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.trade_attribute.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.trade_attribute.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.trade_attribute, range, value, display)

  return offset + length, value
end

-- Trading State
cnsx_cse2_retransmission_mmd_v1_6.trading_state = {}

-- Size: Trading State
cnsx_cse2_retransmission_mmd_v1_6.trading_state.size = 1

-- Display: Trading State
cnsx_cse2_retransmission_mmd_v1_6.trading_state.display = function(value)
  if value == "N" then
    return "Trading State: Normal Trading (N)"
  end
  if value == "V" then
    return "Trading State: Suspend Trading (V)"
  end
  if value == "H" then
    return "Trading State: Halt (H)"
  end

  return "Trading State: Unknown("..value..")"
end

-- Dissect: Trading State
cnsx_cse2_retransmission_mmd_v1_6.trading_state.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cnsx_cse2_retransmission_mmd_v1_6.trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.trading_state, range, value, display)

  return offset + length, value
end

-- User Id
cnsx_cse2_retransmission_mmd_v1_6.user_id = {}

-- Size: User Id
cnsx_cse2_retransmission_mmd_v1_6.user_id.size = 16

-- Display: User Id
cnsx_cse2_retransmission_mmd_v1_6.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
cnsx_cse2_retransmission_mmd_v1_6.user_id.dissect = function(buffer, offset, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.user_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cnsx_cse2_retransmission_mmd_v1_6.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.user_id, range, value, display)

  return offset + length, value
end

-- Timestamp
cnsx_cse2_retransmission_mmd_v1_6.timestamp = {}

-- Translate: Timestamp
cnsx_cse2_retransmission_mmd_v1_6.timestamp.translate = function(time_offset, stored_second)
  return UInt64.new(stored_second * 1000000000 + time_offset)
end

-- Display: Timestamp
cnsx_cse2_retransmission_mmd_v1_6.timestamp.display = function(time_offset, stored_second, packet)
  -- Raw display mode
  if cnsx_cse2_retransmission_mmd_v1_6.timestamp_format == 0 then
    return "Timestamp: "..(stored_second * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cnsx_cse2_retransmission_mmd_v1_6.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cnsx_cse2_retransmission_mmd_v1_6.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_second

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_second)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cnsx_cse2_retransmission_mmd_v1_6.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = cnsx_cse2_retransmission_mmd_v1_6.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:uint()
  local value = cnsx_cse2_retransmission_mmd_v1_6.timestamp.translate(time_offset, stored_second)
  local display = cnsx_cse2_retransmission_mmd_v1_6.timestamp.display(time_offset, stored_second, packet)
  parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.timestamp, range, value, display)

  cnsx_cse2_retransmission_mmd_v1_6.second.generated(stored_second, range, packet, parent)

  display = cnsx_cse2_retransmission_mmd_v1_6.time_offset.display(time_offset)
  parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect = function(buffer, offset, packet, parent)
  if cnsx_cse2_retransmission_mmd_v1_6.format_timestamp then
    local stored_second = cnsx_cse2_retransmission_mmd_v1_6.second.current

    if stored_second ~= nil then
      return cnsx_cse2_retransmission_mmd_v1_6.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return cnsx_cse2_retransmission_mmd_v1_6.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cnsx Cse2 Retransmission Mmd 1.6
-----------------------------------------------------------------------

-- Heartbeat Message
cnsx_cse2_retransmission_mmd_v1_6.heartbeat_message = {}

-- Size: Heartbeat Message
cnsx_cse2_retransmission_mmd_v1_6.heartbeat_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.client_identifier.size

-- Display: Heartbeat Message
cnsx_cse2_retransmission_mmd_v1_6.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
cnsx_cse2_retransmission_mmd_v1_6.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Integer
  index, client_identifier = cnsx_cse2_retransmission_mmd_v1_6.client_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
cnsx_cse2_retransmission_mmd_v1_6.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.heartbeat_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Response Message
cnsx_cse2_retransmission_mmd_v1_6.spin_response_message = {}

-- Size: Spin Response Message
cnsx_cse2_retransmission_mmd_v1_6.spin_response_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.client_identifier.size + 
  cnsx_cse2_retransmission_mmd_v1_6.spin_status.size

-- Display: Spin Response Message
cnsx_cse2_retransmission_mmd_v1_6.spin_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Response Message
cnsx_cse2_retransmission_mmd_v1_6.spin_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Integer
  index, client_identifier = cnsx_cse2_retransmission_mmd_v1_6.client_identifier.dissect(buffer, index, packet, parent)

  -- Spin Status: Alphanumeric
  index, spin_status = cnsx_cse2_retransmission_mmd_v1_6.spin_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Response Message
cnsx_cse2_retransmission_mmd_v1_6.spin_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.spin_response_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.spin_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.spin_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.spin_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Spin Request Message
cnsx_cse2_retransmission_mmd_v1_6.spin_request_message = {}

-- Size: Spin Request Message
cnsx_cse2_retransmission_mmd_v1_6.spin_request_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.client_identifier.size

-- Display: Spin Request Message
cnsx_cse2_retransmission_mmd_v1_6.spin_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spin Request Message
cnsx_cse2_retransmission_mmd_v1_6.spin_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Identifier: Integer
  index, client_identifier = cnsx_cse2_retransmission_mmd_v1_6.client_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spin Request Message
cnsx_cse2_retransmission_mmd_v1_6.spin_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.spin_request_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.spin_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.spin_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.spin_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Response Message
cnsx_cse2_retransmission_mmd_v1_6.retransmission_response_message = {}

-- Size: Retransmission Response Message
cnsx_cse2_retransmission_mmd_v1_6.retransmission_response_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.start_sequence.size + 
  cnsx_cse2_retransmission_mmd_v1_6.number_of_messages.size + 
  cnsx_cse2_retransmission_mmd_v1_6.retransmission_status.size

-- Display: Retransmission Response Message
cnsx_cse2_retransmission_mmd_v1_6.retransmission_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Response Message
cnsx_cse2_retransmission_mmd_v1_6.retransmission_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence: Integer
  index, start_sequence = cnsx_cse2_retransmission_mmd_v1_6.start_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Messages: Integer
  index, number_of_messages = cnsx_cse2_retransmission_mmd_v1_6.number_of_messages.dissect(buffer, index, packet, parent)

  -- Retransmission Status: Alphanumeric
  index, retransmission_status = cnsx_cse2_retransmission_mmd_v1_6.retransmission_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Response Message
cnsx_cse2_retransmission_mmd_v1_6.retransmission_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.retransmission_response_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.retransmission_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.retransmission_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.retransmission_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
cnsx_cse2_retransmission_mmd_v1_6.retransmission_request_message = {}

-- Size: Retransmission Request Message
cnsx_cse2_retransmission_mmd_v1_6.retransmission_request_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.start_sequence.size + 
  cnsx_cse2_retransmission_mmd_v1_6.number_of_messages.size

-- Display: Retransmission Request Message
cnsx_cse2_retransmission_mmd_v1_6.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
cnsx_cse2_retransmission_mmd_v1_6.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence: Integer
  index, start_sequence = cnsx_cse2_retransmission_mmd_v1_6.start_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Messages: Integer
  index, number_of_messages = cnsx_cse2_retransmission_mmd_v1_6.number_of_messages.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
cnsx_cse2_retransmission_mmd_v1_6.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.retransmission_request_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cnsx_cse2_retransmission_mmd_v1_6.login_response_message = {}

-- Size: Login Response Message
cnsx_cse2_retransmission_mmd_v1_6.login_response_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.user_id.size + 
  cnsx_cse2_retransmission_mmd_v1_6.login_status.size

-- Display: Login Response Message
cnsx_cse2_retransmission_mmd_v1_6.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cnsx_cse2_retransmission_mmd_v1_6.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alphanumeric
  index, user_id = cnsx_cse2_retransmission_mmd_v1_6.user_id.dissect(buffer, index, packet, parent)

  -- Login Status: Alphanumeric
  index, login_status = cnsx_cse2_retransmission_mmd_v1_6.login_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cnsx_cse2_retransmission_mmd_v1_6.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.login_response_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
cnsx_cse2_retransmission_mmd_v1_6.login_request_message = {}

-- Size: Login Request Message
cnsx_cse2_retransmission_mmd_v1_6.login_request_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.user_id.size + 
  cnsx_cse2_retransmission_mmd_v1_6.password.size

-- Display: Login Request Message
cnsx_cse2_retransmission_mmd_v1_6.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
cnsx_cse2_retransmission_mmd_v1_6.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: Alphanumeric
  index, user_id = cnsx_cse2_retransmission_mmd_v1_6.user_id.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cnsx_cse2_retransmission_mmd_v1_6.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
cnsx_cse2_retransmission_mmd_v1_6.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.login_request_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- General Message
cnsx_cse2_retransmission_mmd_v1_6.general_message = {}

-- Size: General Message
cnsx_cse2_retransmission_mmd_v1_6.general_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.message_text.size

-- Display: General Message
cnsx_cse2_retransmission_mmd_v1_6.general_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: General Message
cnsx_cse2_retransmission_mmd_v1_6.general_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Message Text: Alphanumeric
  index, message_text = cnsx_cse2_retransmission_mmd_v1_6.message_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: General Message
cnsx_cse2_retransmission_mmd_v1_6.general_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.general_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.general_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.general_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.general_message.fields(buffer, offset, packet, parent)
  end
end

-- Closing Price Message
cnsx_cse2_retransmission_mmd_v1_6.closing_price_message = {}

-- Size: Closing Price Message
cnsx_cse2_retransmission_mmd_v1_6.closing_price_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.symbol.size + 
  cnsx_cse2_retransmission_mmd_v1_6.price.size

-- Display: Closing Price Message
cnsx_cse2_retransmission_mmd_v1_6.closing_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Closing Price Message
cnsx_cse2_retransmission_mmd_v1_6.closing_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse2_retransmission_mmd_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cnsx_cse2_retransmission_mmd_v1_6.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Closing Price Message
cnsx_cse2_retransmission_mmd_v1_6.closing_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.closing_price_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.closing_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.closing_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.closing_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Offer Message
cnsx_cse2_retransmission_mmd_v1_6.best_bid_offer_message = {}

-- Size: Best Bid Offer Message
cnsx_cse2_retransmission_mmd_v1_6.best_bid_offer_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.symbol.size + 
  cnsx_cse2_retransmission_mmd_v1_6.best_bid.size + 
  cnsx_cse2_retransmission_mmd_v1_6.best_bid_size.size + 
  cnsx_cse2_retransmission_mmd_v1_6.best_offer.size + 
  cnsx_cse2_retransmission_mmd_v1_6.best_offer_size.size + 
  cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size

-- Display: Best Bid Offer Message
cnsx_cse2_retransmission_mmd_v1_6.best_bid_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Offer Message
cnsx_cse2_retransmission_mmd_v1_6.best_bid_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse2_retransmission_mmd_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Best Bid: Integer
  index, best_bid = cnsx_cse2_retransmission_mmd_v1_6.best_bid.dissect(buffer, index, packet, parent)

  -- Best Bid Size: Integer
  index, best_bid_size = cnsx_cse2_retransmission_mmd_v1_6.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Offer: Integer
  index, best_offer = cnsx_cse2_retransmission_mmd_v1_6.best_offer.dissect(buffer, index, packet, parent)

  -- Best Offer Size: Integer
  index, best_offer_size = cnsx_cse2_retransmission_mmd_v1_6.best_offer_size.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Offer Message
cnsx_cse2_retransmission_mmd_v1_6.best_bid_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.best_bid_offer_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.best_bid_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.best_bid_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.best_bid_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replace Message
cnsx_cse2_retransmission_mmd_v1_6.order_replace_message = {}

-- Size: Order Replace Message
cnsx_cse2_retransmission_mmd_v1_6.order_replace_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.order_number.size + 
  cnsx_cse2_retransmission_mmd_v1_6.quantity.size + 
  cnsx_cse2_retransmission_mmd_v1_6.price.size + 
  cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size

-- Display: Order Replace Message
cnsx_cse2_retransmission_mmd_v1_6.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
cnsx_cse2_retransmission_mmd_v1_6.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Alphanumeric
  index, order_number = cnsx_cse2_retransmission_mmd_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = cnsx_cse2_retransmission_mmd_v1_6.quantity.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cnsx_cse2_retransmission_mmd_v1_6.price.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
cnsx_cse2_retransmission_mmd_v1_6.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_replace_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
cnsx_cse2_retransmission_mmd_v1_6.order_delete_message = {}

-- Size: Order Delete Message
cnsx_cse2_retransmission_mmd_v1_6.order_delete_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.order_number.size + 
  cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size

-- Display: Order Delete Message
cnsx_cse2_retransmission_mmd_v1_6.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
cnsx_cse2_retransmission_mmd_v1_6.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Alphanumeric
  index, order_number = cnsx_cse2_retransmission_mmd_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
cnsx_cse2_retransmission_mmd_v1_6.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_delete_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
cnsx_cse2_retransmission_mmd_v1_6.broken_trade_message = {}

-- Size: Broken Trade Message
cnsx_cse2_retransmission_mmd_v1_6.broken_trade_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.match_number.size + 
  cnsx_cse2_retransmission_mmd_v1_6.reason.size + 
  cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size

-- Display: Broken Trade Message
cnsx_cse2_retransmission_mmd_v1_6.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
cnsx_cse2_retransmission_mmd_v1_6.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Match Number: Alphanumeric
  index, match_number = cnsx_cse2_retransmission_mmd_v1_6.match_number.dissect(buffer, index, packet, parent)

  -- Reason: Alphanumeric
  index, reason = cnsx_cse2_retransmission_mmd_v1_6.reason.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
cnsx_cse2_retransmission_mmd_v1_6.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.broken_trade_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
cnsx_cse2_retransmission_mmd_v1_6.trade_message = {}

-- Size: Trade Message
cnsx_cse2_retransmission_mmd_v1_6.trade_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.executed_quantity.size + 
  cnsx_cse2_retransmission_mmd_v1_6.symbol.size + 
  cnsx_cse2_retransmission_mmd_v1_6.execution_price.size + 
  cnsx_cse2_retransmission_mmd_v1_6.match_number.size + 
  cnsx_cse2_retransmission_mmd_v1_6.firm_id.size + 
  cnsx_cse2_retransmission_mmd_v1_6.contra_firm_id.size + 
  cnsx_cse2_retransmission_mmd_v1_6.settlement_term.size + 
  cnsx_cse2_retransmission_mmd_v1_6.trade_attribute.size + 
  cnsx_cse2_retransmission_mmd_v1_6.cross_type.size + 
  cnsx_cse2_retransmission_mmd_v1_6.odd_lot_flag.size + 
  cnsx_cse2_retransmission_mmd_v1_6.sets_the_last_price.size + 
  cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size + 
  cnsx_cse2_retransmission_mmd_v1_6.opening_trade.size + 
  cnsx_cse2_retransmission_mmd_v1_6.ccp_session_trade.size + 
  cnsx_cse2_retransmission_mmd_v1_6.moc_trade_marker.size

-- Display: Trade Message
cnsx_cse2_retransmission_mmd_v1_6.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
cnsx_cse2_retransmission_mmd_v1_6.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = cnsx_cse2_retransmission_mmd_v1_6.executed_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse2_retransmission_mmd_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Execution Price: Integer
  index, execution_price = cnsx_cse2_retransmission_mmd_v1_6.execution_price.dissect(buffer, index, packet, parent)

  -- Match Number: Alphanumeric
  index, match_number = cnsx_cse2_retransmission_mmd_v1_6.match_number.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = cnsx_cse2_retransmission_mmd_v1_6.firm_id.dissect(buffer, index, packet, parent)

  -- Contra Firm Id: Alphanumeric
  index, contra_firm_id = cnsx_cse2_retransmission_mmd_v1_6.contra_firm_id.dissect(buffer, index, packet, parent)

  -- Settlement Term: Alphanumeric
  index, settlement_term = cnsx_cse2_retransmission_mmd_v1_6.settlement_term.dissect(buffer, index, packet, parent)

  -- Trade Attribute: Alphanumeric
  index, trade_attribute = cnsx_cse2_retransmission_mmd_v1_6.trade_attribute.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = cnsx_cse2_retransmission_mmd_v1_6.cross_type.dissect(buffer, index, packet, parent)

  -- Odd Lot Flag: Alphanumeric
  index, odd_lot_flag = cnsx_cse2_retransmission_mmd_v1_6.odd_lot_flag.dissect(buffer, index, packet, parent)

  -- Sets The Last Price: Alphanumeric
  index, sets_the_last_price = cnsx_cse2_retransmission_mmd_v1_6.sets_the_last_price.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.dissect(buffer, index, packet, parent)

  -- Opening Trade: Alphanumeric
  index, opening_trade = cnsx_cse2_retransmission_mmd_v1_6.opening_trade.dissect(buffer, index, packet, parent)

  -- Ccp Session Trade: Alphanumeric
  index, ccp_session_trade = cnsx_cse2_retransmission_mmd_v1_6.ccp_session_trade.dissect(buffer, index, packet, parent)

  -- Moc Trade Marker: Alphanumeric
  index, moc_trade_marker = cnsx_cse2_retransmission_mmd_v1_6.moc_trade_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
cnsx_cse2_retransmission_mmd_v1_6.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.trade_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
cnsx_cse2_retransmission_mmd_v1_6.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
cnsx_cse2_retransmission_mmd_v1_6.order_executed_with_price_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.order_number.size + 
  cnsx_cse2_retransmission_mmd_v1_6.executed_quantity.size + 
  cnsx_cse2_retransmission_mmd_v1_6.match_number.size + 
  cnsx_cse2_retransmission_mmd_v1_6.execution_price.size + 
  cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size

-- Display: Order Executed With Price Message
cnsx_cse2_retransmission_mmd_v1_6.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
cnsx_cse2_retransmission_mmd_v1_6.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Alphanumeric
  index, order_number = cnsx_cse2_retransmission_mmd_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = cnsx_cse2_retransmission_mmd_v1_6.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Alphanumeric
  index, match_number = cnsx_cse2_retransmission_mmd_v1_6.match_number.dissect(buffer, index, packet, parent)

  -- Execution Price: Integer
  index, execution_price = cnsx_cse2_retransmission_mmd_v1_6.execution_price.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
cnsx_cse2_retransmission_mmd_v1_6.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cnsx_cse2_retransmission_mmd_v1_6.order_executed_message = {}

-- Size: Order Executed Message
cnsx_cse2_retransmission_mmd_v1_6.order_executed_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.order_number.size + 
  cnsx_cse2_retransmission_mmd_v1_6.executed_quantity.size + 
  cnsx_cse2_retransmission_mmd_v1_6.match_number.size + 
  cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size

-- Display: Order Executed Message
cnsx_cse2_retransmission_mmd_v1_6.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cnsx_cse2_retransmission_mmd_v1_6.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Alphanumeric
  index, order_number = cnsx_cse2_retransmission_mmd_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Integer
  index, executed_quantity = cnsx_cse2_retransmission_mmd_v1_6.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Number: Alphanumeric
  index, match_number = cnsx_cse2_retransmission_mmd_v1_6.match_number.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cnsx_cse2_retransmission_mmd_v1_6.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.order_executed_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
cnsx_cse2_retransmission_mmd_v1_6.add_order_message = {}

-- Size: Add Order Message
cnsx_cse2_retransmission_mmd_v1_6.add_order_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.order_number.size + 
  cnsx_cse2_retransmission_mmd_v1_6.order_verb.size + 
  cnsx_cse2_retransmission_mmd_v1_6.quantity.size + 
  cnsx_cse2_retransmission_mmd_v1_6.symbol.size + 
  cnsx_cse2_retransmission_mmd_v1_6.price.size + 
  cnsx_cse2_retransmission_mmd_v1_6.firm_id.size + 
  cnsx_cse2_retransmission_mmd_v1_6.settlement_term.size + 
  cnsx_cse2_retransmission_mmd_v1_6.odd_lot_flag.size + 
  cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size + 
  cnsx_cse2_retransmission_mmd_v1_6.priority_timestamp.size

-- Display: Add Order Message
cnsx_cse2_retransmission_mmd_v1_6.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
cnsx_cse2_retransmission_mmd_v1_6.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Order Number: Alphanumeric
  index, order_number = cnsx_cse2_retransmission_mmd_v1_6.order_number.dissect(buffer, index, packet, parent)

  -- Order Verb: Alphanumeric
  index, order_verb = cnsx_cse2_retransmission_mmd_v1_6.order_verb.dissect(buffer, index, packet, parent)

  -- Quantity: Integer
  index, quantity = cnsx_cse2_retransmission_mmd_v1_6.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse2_retransmission_mmd_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Price: Integer
  index, price = cnsx_cse2_retransmission_mmd_v1_6.price.dissect(buffer, index, packet, parent)

  -- Firm Id: Alphanumeric
  index, firm_id = cnsx_cse2_retransmission_mmd_v1_6.firm_id.dissect(buffer, index, packet, parent)

  -- Settlement Term: Alphanumeric
  index, settlement_term = cnsx_cse2_retransmission_mmd_v1_6.settlement_term.dissect(buffer, index, packet, parent)

  -- Odd Lot Flag: Alphanumeric
  index, odd_lot_flag = cnsx_cse2_retransmission_mmd_v1_6.odd_lot_flag.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.dissect(buffer, index, packet, parent)

  -- Priority Timestamp: Integer
  index, priority_timestamp = cnsx_cse2_retransmission_mmd_v1_6.priority_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
cnsx_cse2_retransmission_mmd_v1_6.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.add_order_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
cnsx_cse2_retransmission_mmd_v1_6.trading_action_message = {}

-- Size: Trading Action Message
cnsx_cse2_retransmission_mmd_v1_6.trading_action_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.symbol.size + 
  cnsx_cse2_retransmission_mmd_v1_6.trading_state.size + 
  cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size

-- Display: Trading Action Message
cnsx_cse2_retransmission_mmd_v1_6.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
cnsx_cse2_retransmission_mmd_v1_6.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse2_retransmission_mmd_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Trading State: Alphanumeric
  index, trading_state = cnsx_cse2_retransmission_mmd_v1_6.trading_state.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
cnsx_cse2_retransmission_mmd_v1_6.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.trading_action_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Dynamics Message
cnsx_cse2_retransmission_mmd_v1_6.symbol_dynamics_message = {}

-- Size: Symbol Dynamics Message
cnsx_cse2_retransmission_mmd_v1_6.symbol_dynamics_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.symbol.size + 
  cnsx_cse2_retransmission_mmd_v1_6.settlement_term.size + 
  cnsx_cse2_retransmission_mmd_v1_6.gmf_setting.size + 
  cnsx_cse2_retransmission_mmd_v1_6.gmf_volume.size + 
  cnsx_cse2_retransmission_mmd_v1_6.anonymous_setting.size + 
  cnsx_cse2_retransmission_mmd_v1_6.moc_eligible.size

-- Display: Symbol Dynamics Message
cnsx_cse2_retransmission_mmd_v1_6.symbol_dynamics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Dynamics Message
cnsx_cse2_retransmission_mmd_v1_6.symbol_dynamics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse2_retransmission_mmd_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Settlement Term: Alphanumeric
  index, settlement_term = cnsx_cse2_retransmission_mmd_v1_6.settlement_term.dissect(buffer, index, packet, parent)

  -- Gmf Setting: Alphanumeric
  index, gmf_setting = cnsx_cse2_retransmission_mmd_v1_6.gmf_setting.dissect(buffer, index, packet, parent)

  -- Gmf Volume: Integer
  index, gmf_volume = cnsx_cse2_retransmission_mmd_v1_6.gmf_volume.dissect(buffer, index, packet, parent)

  -- Anonymous Setting: Alphanumeric
  index, anonymous_setting = cnsx_cse2_retransmission_mmd_v1_6.anonymous_setting.dissect(buffer, index, packet, parent)

  -- Moc Eligible: Alphanumeric
  index, moc_eligible = cnsx_cse2_retransmission_mmd_v1_6.moc_eligible.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Dynamics Message
cnsx_cse2_retransmission_mmd_v1_6.symbol_dynamics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.symbol_dynamics_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.symbol_dynamics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.symbol_dynamics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.symbol_dynamics_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Directory Message
cnsx_cse2_retransmission_mmd_v1_6.symbol_directory_message = {}

-- Size: Symbol Directory Message
cnsx_cse2_retransmission_mmd_v1_6.symbol_directory_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.symbol.size + 
  cnsx_cse2_retransmission_mmd_v1_6.cusip.size + 
  cnsx_cse2_retransmission_mmd_v1_6.sec_name.size + 
  cnsx_cse2_retransmission_mmd_v1_6.currency.size + 
  cnsx_cse2_retransmission_mmd_v1_6.stock_group.size + 
  cnsx_cse2_retransmission_mmd_v1_6.listing.size + 
  cnsx_cse2_retransmission_mmd_v1_6.expiry.size + 
  cnsx_cse2_retransmission_mmd_v1_6.lot_size.size + 
  cnsx_cse2_retransmission_mmd_v1_6.settlement_term.size + 
  cnsx_cse2_retransmission_mmd_v1_6.listing_market.size + 
  cnsx_cse2_retransmission_mmd_v1_6.previous_closing_price.size + 
  cnsx_cse2_retransmission_mmd_v1_6.listing_tier.size + 
  cnsx_cse2_retransmission_mmd_v1_6.market_maker_name.size + 
  cnsx_cse2_retransmission_mmd_v1_6.market_maker_phone_number.size + 
  cnsx_cse2_retransmission_mmd_v1_6.full_sec_name.size

-- Display: Symbol Directory Message
cnsx_cse2_retransmission_mmd_v1_6.symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Directory Message
cnsx_cse2_retransmission_mmd_v1_6.symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cnsx_cse2_retransmission_mmd_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Cusip: Alphanumeric
  index, cusip = cnsx_cse2_retransmission_mmd_v1_6.cusip.dissect(buffer, index, packet, parent)

  -- Sec Name: Alphanumeric
  index, sec_name = cnsx_cse2_retransmission_mmd_v1_6.sec_name.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cnsx_cse2_retransmission_mmd_v1_6.currency.dissect(buffer, index, packet, parent)

  -- Stock Group: Integer
  index, stock_group = cnsx_cse2_retransmission_mmd_v1_6.stock_group.dissect(buffer, index, packet, parent)

  -- Listing: Integer
  index, listing = cnsx_cse2_retransmission_mmd_v1_6.listing.dissect(buffer, index, packet, parent)

  -- Expiry: Integer
  index, expiry = cnsx_cse2_retransmission_mmd_v1_6.expiry.dissect(buffer, index, packet, parent)

  -- Lot Size: Integer
  index, lot_size = cnsx_cse2_retransmission_mmd_v1_6.lot_size.dissect(buffer, index, packet, parent)

  -- Settlement Term: Alphanumeric
  index, settlement_term = cnsx_cse2_retransmission_mmd_v1_6.settlement_term.dissect(buffer, index, packet, parent)

  -- Listing Market: Alphanumeric
  index, listing_market = cnsx_cse2_retransmission_mmd_v1_6.listing_market.dissect(buffer, index, packet, parent)

  -- Previous Closing Price: Integer
  index, previous_closing_price = cnsx_cse2_retransmission_mmd_v1_6.previous_closing_price.dissect(buffer, index, packet, parent)

  -- Listing Tier: Integer
  index, listing_tier = cnsx_cse2_retransmission_mmd_v1_6.listing_tier.dissect(buffer, index, packet, parent)

  -- Market Maker Name: Alphanumeric
  index, market_maker_name = cnsx_cse2_retransmission_mmd_v1_6.market_maker_name.dissect(buffer, index, packet, parent)

  -- Market Maker Phone Number: Alphanumeric
  index, market_maker_phone_number = cnsx_cse2_retransmission_mmd_v1_6.market_maker_phone_number.dissect(buffer, index, packet, parent)

  -- Full Sec Name: Alphanumeric
  index, full_sec_name = cnsx_cse2_retransmission_mmd_v1_6.full_sec_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Directory Message
cnsx_cse2_retransmission_mmd_v1_6.symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.symbol_directory_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
cnsx_cse2_retransmission_mmd_v1_6.system_event_message = {}

-- Size: System Event Message
cnsx_cse2_retransmission_mmd_v1_6.system_event_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.time_offset.size + 
  cnsx_cse2_retransmission_mmd_v1_6.group.size + 
  cnsx_cse2_retransmission_mmd_v1_6.event_code.size + 
  cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.size

-- Display: System Event Message
cnsx_cse2_retransmission_mmd_v1_6.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
cnsx_cse2_retransmission_mmd_v1_6.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Integer
  index, time_offset = cnsx_cse2_retransmission_mmd_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Group: Integer
  index, group = cnsx_cse2_retransmission_mmd_v1_6.group.dissect(buffer, index, packet, parent)

  -- Event Code: Alphanumeric
  index, event_code = cnsx_cse2_retransmission_mmd_v1_6.event_code.dissect(buffer, index, packet, parent)

  -- Exchange Timestamp: Integer
  index, exchange_timestamp = cnsx_cse2_retransmission_mmd_v1_6.exchange_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
cnsx_cse2_retransmission_mmd_v1_6.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.system_event_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cnsx_cse2_retransmission_mmd_v1_6.time_message = {}

-- Size: Time Message
cnsx_cse2_retransmission_mmd_v1_6.time_message.size =
  cnsx_cse2_retransmission_mmd_v1_6.second.size + 
  cnsx_cse2_retransmission_mmd_v1_6.millisecond.size

-- Display: Time Message
cnsx_cse2_retransmission_mmd_v1_6.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cnsx_cse2_retransmission_mmd_v1_6.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = cnsx_cse2_retransmission_mmd_v1_6.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  cnsx_cse2_retransmission_mmd_v1_6.second.current = second

  if not packet.visited then
    cnsx_cse2_retransmission_mmd_v1_6.conversation.current.second.last = second
  end

  -- Millisecond: Integer
  index, millisecond = cnsx_cse2_retransmission_mmd_v1_6.millisecond.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cnsx_cse2_retransmission_mmd_v1_6.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.time_message, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cnsx_cse2_retransmission_mmd_v1_6.payload = {}

-- Dissect: Payload
cnsx_cse2_retransmission_mmd_v1_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == "T" then
    return cnsx_cse2_retransmission_mmd_v1_6.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return cnsx_cse2_retransmission_mmd_v1_6.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Directory Message
  if message_type == "R" then
    return cnsx_cse2_retransmission_mmd_v1_6.symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Dynamics Message
  if message_type == "O" then
    return cnsx_cse2_retransmission_mmd_v1_6.symbol_dynamics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return cnsx_cse2_retransmission_mmd_v1_6.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return cnsx_cse2_retransmission_mmd_v1_6.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return cnsx_cse2_retransmission_mmd_v1_6.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return cnsx_cse2_retransmission_mmd_v1_6.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return cnsx_cse2_retransmission_mmd_v1_6.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if message_type == "B" then
    return cnsx_cse2_retransmission_mmd_v1_6.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return cnsx_cse2_retransmission_mmd_v1_6.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return cnsx_cse2_retransmission_mmd_v1_6.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Offer Message
  if message_type == "Q" then
    return cnsx_cse2_retransmission_mmd_v1_6.best_bid_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Closing Price Message
  if message_type == "F" then
    return cnsx_cse2_retransmission_mmd_v1_6.closing_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect General Message
  if message_type == "G" then
    return cnsx_cse2_retransmission_mmd_v1_6.general_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Message
  if message_type == "l" then
    return cnsx_cse2_retransmission_mmd_v1_6.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == "a" then
    return cnsx_cse2_retransmission_mmd_v1_6.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == "r" then
    return cnsx_cse2_retransmission_mmd_v1_6.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Response Message
  if message_type == "b" then
    return cnsx_cse2_retransmission_mmd_v1_6.retransmission_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Request Message
  if message_type == "s" then
    return cnsx_cse2_retransmission_mmd_v1_6.spin_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spin Response Message
  if message_type == "c" then
    return cnsx_cse2_retransmission_mmd_v1_6.spin_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if message_type == "h" then
    return cnsx_cse2_retransmission_mmd_v1_6.heartbeat_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cnsx_cse2_retransmission_mmd_v1_6.message_header = {}

-- Size: Message Header
cnsx_cse2_retransmission_mmd_v1_6.message_header.size =
  cnsx_cse2_retransmission_mmd_v1_6.sub_length.size + 
  cnsx_cse2_retransmission_mmd_v1_6.message_type.size

-- Display: Message Header
cnsx_cse2_retransmission_mmd_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cnsx_cse2_retransmission_mmd_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Length: Binary
  index, sub_length = cnsx_cse2_retransmission_mmd_v1_6.sub_length.dissect(buffer, index, packet, parent)

  -- Message Type: Alphanumeric
  index, message_type = cnsx_cse2_retransmission_mmd_v1_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cnsx_cse2_retransmission_mmd_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.message_header, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cnsx_cse2_retransmission_mmd_v1_6.message = {}

-- Display: Message
cnsx_cse2_retransmission_mmd_v1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cnsx_cse2_retransmission_mmd_v1_6.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cnsx_cse2_retransmission_mmd_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 22 branches
  index = cnsx_cse2_retransmission_mmd_v1_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cnsx_cse2_retransmission_mmd_v1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.message, buffer(offset, 0))
    local current = cnsx_cse2_retransmission_mmd_v1_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cnsx_cse2_retransmission_mmd_v1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cnsx_cse2_retransmission_mmd_v1_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Block Header
cnsx_cse2_retransmission_mmd_v1_6.block_header = {}

-- Size: Block Header
cnsx_cse2_retransmission_mmd_v1_6.block_header.size =
  cnsx_cse2_retransmission_mmd_v1_6.block_length.size + 
  cnsx_cse2_retransmission_mmd_v1_6.block_number_of_messages.size + 
  cnsx_cse2_retransmission_mmd_v1_6.block_start_sequence.size

-- Display: Block Header
cnsx_cse2_retransmission_mmd_v1_6.block_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
cnsx_cse2_retransmission_mmd_v1_6.block_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: Binary
  index, block_length = cnsx_cse2_retransmission_mmd_v1_6.block_length.dissect(buffer, index, packet, parent)

  -- Block Number Of Messages: Binary
  index, block_number_of_messages = cnsx_cse2_retransmission_mmd_v1_6.block_number_of_messages.dissect(buffer, index, packet, parent)

  -- Block Start Sequence: Binary
  index, block_start_sequence = cnsx_cse2_retransmission_mmd_v1_6.block_start_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
cnsx_cse2_retransmission_mmd_v1_6.block_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.block_header, buffer(offset, 0))
    local index = cnsx_cse2_retransmission_mmd_v1_6.block_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cnsx_cse2_retransmission_mmd_v1_6.block_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cnsx_cse2_retransmission_mmd_v1_6.block_header.fields(buffer, offset, packet, parent)
  end
end

-- Block
cnsx_cse2_retransmission_mmd_v1_6.block = {}

-- Display: Block
cnsx_cse2_retransmission_mmd_v1_6.block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block
cnsx_cse2_retransmission_mmd_v1_6.block.fields = function(buffer, offset, packet, parent, size_of_block)
  local index = offset

  -- Block Header: Struct of 3 fields
  index, block_header = cnsx_cse2_retransmission_mmd_v1_6.block_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Block Number Of Messages
  local block_number_of_messages = buffer(index - 5, 1):uint()

  -- Repeating: Message
  for message_index = 1, block_number_of_messages do

    -- Dependency element: Sub Length
    local sub_length = buffer(index, 1):uint()

    -- Runtime Size Of: Message
    index, message = cnsx_cse2_retransmission_mmd_v1_6.message.dissect(buffer, index, packet, parent, sub_length, message_index)
  end

  return index
end

-- Dissect: Block
cnsx_cse2_retransmission_mmd_v1_6.block.dissect = function(buffer, offset, packet, parent, size_of_block)
  local index = offset + size_of_block

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6.fields.block, buffer(offset, 0))
    local current = cnsx_cse2_retransmission_mmd_v1_6.block.fields(buffer, offset, packet, parent, size_of_block)
    parent:set_len(size_of_block)
    local display = cnsx_cse2_retransmission_mmd_v1_6.block.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cnsx_cse2_retransmission_mmd_v1_6.block.fields(buffer, offset, packet, parent, size_of_block)

    return index
  end
end

-- Remaining Bytes For: Block
local block_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < cnsx_cse2_retransmission_mmd_v1_6.block_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
cnsx_cse2_retransmission_mmd_v1_6.packet = {}

-- Verify required size of Tcp packet
cnsx_cse2_retransmission_mmd_v1_6.packet.requiredsize = function(buffer)
  return buffer:len() >= cnsx_cse2_retransmission_mmd_v1_6.block_header.size
end

-- Dissect Packet
cnsx_cse2_retransmission_mmd_v1_6.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cnsx_cse2_retransmission_mmd_v1_6.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  cnsx_cse2_retransmission_mmd_v1_6.second.current = data.second.frames[packet.number]
  cnsx_cse2_retransmission_mmd_v1_6.conversation.current = data

  local index = 0

  -- Dependency for Block
  local end_of_payload = buffer:len()

  -- Block: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_block = block_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_block):tvb()
      index = cnsx_cse2_retransmission_mmd_v1_6.block.dissect(frame, index, packet, parent, size_of_block)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cnsx_cse2_retransmission_mmd_v1_6.init()
  cnsx_cse2_retransmission_mmd_v1_6.second.current = nil
  cnsx_cse2_retransmission_mmd_v1_6.conversation.current = nil
  cnsx_cse2_retransmission_mmd_v1_6.conversation.flows = {}
end

-- Dissector for Cnsx Cse2 Retransmission Mmd 1.6
function omi_cnsx_cse2_retransmission_mmd_v1_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cnsx_cse2_retransmission_mmd_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_cnsx_cse2_retransmission_mmd_v1_6, buffer(), omi_cnsx_cse2_retransmission_mmd_v1_6.description, "("..buffer:len().." Bytes)")
  return cnsx_cse2_retransmission_mmd_v1_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cnsx Cse2 Retransmission Mmd 1.6 (Tcp)
local function omi_cnsx_cse2_retransmission_mmd_v1_6_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cnsx_cse2_retransmission_mmd_v1_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cnsx_cse2_retransmission_mmd_v1_6
  omi_cnsx_cse2_retransmission_mmd_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cnsx Cse2 Retransmission Mmd 1.6
omi_cnsx_cse2_retransmission_mmd_v1_6:register_heuristic("tcp", omi_cnsx_cse2_retransmission_mmd_v1_6_tcp_heuristic)

-- Register Cnsx Cse2 Retransmission Mmd 1.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cnsx_cse2_retransmission_mmd_v1_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Canadian Securities Exchange
--   Version: 1.6
--   Date: Friday, November 7, 2025
--   Specification: CSE2_Multicast_Market_Data_Programmers_Guide_1.6.pdf
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
