-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aix AixMarket GeniumInet Itch 3.0 Protocol
local omi_aix_aixmarket_geniuminet_itch_v3_0 = Proto("Omi.Aix.AixMarket.GeniumInet.Itch.v3.0", "Aix AixMarket GeniumInet Itch 3.0")

-- Protocol table
local aix_aixmarket_geniuminet_itch_v3_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aix AixMarket GeniumInet Itch 3.0 Fields
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.accepted_sequence_number = ProtoField.new("Accepted Sequence Number", "aix.aixmarket.geniuminet.itch.v3.0.acceptedsequencenumber", ftypes.UINT64, nil, nil, nil, "The sequence number in ASCII of the next Sequenced Message to be sent. Left padded with spaces.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.accepted_session = ProtoField.new("Accepted Session", "aix.aixmarket.geniuminet.itch.v3.0.acceptedsession", ftypes.STRING, nil, nil, nil, "The session ID of the session that is now logged into. Left padded with spaces.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.available_ask_quantity_at_equilibrium_price = ProtoField.new("Available Ask Quantity At Equilibrium Price", "aix.aixmarket.geniuminet.itch.v3.0.availableaskquantityatequilibriumprice", ftypes.UINT64, nil, nil, nil, "Quantity at equilibrium price on the ask side.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.available_bid_quantity_at_equilibrium_price = ProtoField.new("Available Bid Quantity At Equilibrium Price", "aix.aixmarket.geniuminet.itch.v3.0.availablebidquantityatequilibriumprice", ftypes.UINT64, nil, nil, nil, "Quantity at equilibrium price on the bid side.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_ask_price = ProtoField.new("Best Ask Price", "aix.aixmarket.geniuminet.itch.v3.0.bestaskprice", ftypes.INT32, nil, nil, nil, "Best Ask Price.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "aix.aixmarket.geniuminet.itch.v3.0.bestaskquantity", ftypes.UINT64, nil, nil, nil, "Best Ask Quantity.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_bid_price = ProtoField.new("Best Bid Price", "aix.aixmarket.geniuminet.itch.v3.0.bestbidprice", ftypes.INT32, nil, nil, nil, "Best Bid Price.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "aix.aixmarket.geniuminet.itch.v3.0.bestbidquantity", ftypes.UINT64, nil, nil, nil, "Best Bid Quantity.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.block_lot_size = ProtoField.new("Block Lot Size", "aix.aixmarket.geniuminet.itch.v3.0.blocklotsize", ftypes.UINT32, nil, nil, nil, "Indicates the number of securities that represents an odd lot for the order book.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.client_packet_type = ProtoField.new("Packet Type", "aix.aixmarket.geniuminet.itch.v3.0.clientpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the client")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.combo_group_id = ProtoField.new("Combo Group Id", "aix.aixmarket.geniuminet.itch.v3.0.combogroupid", ftypes.UINT32, nil, nil, nil, "Used to group combination order book executions and the trades in the constituent order books together.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.debug_text = ProtoField.new("Debug Text", "aix.aixmarket.geniuminet.itch.v3.0.debugtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "aix.aixmarket.geniuminet.itch.v3.0.equilibriumprice", ftypes.INT32, nil, nil, nil, "Equilibrium Price.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.event_code = ProtoField.new("Event Code", "aix.aixmarket.geniuminet.itch.v3.0.eventcode", ftypes.STRING, nil, nil, nil, "The system supports the following event codes on a daily basis.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.executed_quantity = ProtoField.new("Executed Quantity", "aix.aixmarket.geniuminet.itch.v3.0.executedquantity", ftypes.UINT64, nil, nil, nil, "The quantity being executed.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.expiration_date = ProtoField.new("Expiration Date", "aix.aixmarket.geniuminet.itch.v3.0.expirationdate", ftypes.UINT32, nil, nil, nil, "Date of order expiration.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.financial_product = ProtoField.new("Financial Product", "aix.aixmarket.geniuminet.itch.v3.0.financialproduct", ftypes.UINT8, nil, nil, nil, "Financial product type.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.isin = ProtoField.new("Isin", "aix.aixmarket.geniuminet.itch.v3.0.isin", ftypes.STRING, nil, nil, nil, "ISIN code identifying security.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.long_name = ProtoField.new("Long Name", "aix.aixmarket.geniuminet.itch.v3.0.longname", ftypes.STRING, nil, nil, nil, "Human-readable long name of security.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.lot_type = ProtoField.new("Lot Type", "aix.aixmarket.geniuminet.itch.v3.0.lottype", ftypes.UINT8, nil, nil, nil, "Lot type.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.match_id = ProtoField.new("Match Id", "aix.aixmarket.geniuminet.itch.v3.0.matchid", ftypes.UINT64, nil, nil, nil, "Assigned by the system to each match executed.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.nanoseconds = ProtoField.new("Nanoseconds", "aix.aixmarket.geniuminet.itch.v3.0.nanoseconds", ftypes.UINT32, nil, nil, nil, "Nanoseconds portion of the timestamp.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.nominal_value = ProtoField.new("Nominal Value", "aix.aixmarket.geniuminet.itch.v3.0.nominalvalue", ftypes.UINT64, nil, nil, nil, "Nominal value.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "aix.aixmarket.geniuminet.itch.v3.0.numberofdecimalsinnominalvalue", ftypes.UINT16, nil, nil, nil, "Number of decimals in Nominal Value.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "aix.aixmarket.geniuminet.itch.v3.0.numberofdecimalsinprice", ftypes.UINT16, nil, nil, nil, "Number of decimals used in price for this order book.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.number_of_decimals_in_strike_price = ProtoField.new("Number Of Decimals In Strike Price", "aix.aixmarket.geniuminet.itch.v3.0.numberofdecimalsinstrikeprice", ftypes.UINT16, nil, nil, nil, "Number of decimals used in Strike Price for this order book.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.occurred_at_cross = ProtoField.new("Occurred At Cross", "aix.aixmarket.geniuminet.itch.v3.0.occurredatcross", ftypes.STRING, nil, nil, nil, "Indicates whether the trade occurred at the cross.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "aix.aixmarket.geniuminet.itch.v3.0.oddlotsize", ftypes.UINT32, nil, nil, nil, "Indicates the number of securities that represents an odd lot for the order book.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_attributes = ProtoField.new("Order Attributes", "aix.aixmarket.geniuminet.itch.v3.0.orderattributes", ftypes.UINT16, nil, nil, nil, "Order attributes.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_book_id = ProtoField.new("Order Book Id", "aix.aixmarket.geniuminet.itch.v3.0.orderbookid", ftypes.UINT32, nil, nil, nil, "Denotes the primary identifier of an order book.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_id = ProtoField.new("Order Id", "aix.aixmarket.geniuminet.itch.v3.0.orderid", ftypes.UINT64, nil, nil, nil, "The identifier assigned to the new order.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.packet_length = ProtoField.new("Packet Length", "aix.aixmarket.geniuminet.itch.v3.0.packetlength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.password = ProtoField.new("Password", "aix.aixmarket.geniuminet.itch.v3.0.password", ftypes.STRING, nil, nil, nil, "Login password")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price = ProtoField.new("Price", "aix.aixmarket.geniuminet.itch.v3.0.price", ftypes.INT32, nil, nil, nil, "The display price of the new order.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price_from = ProtoField.new("Price From", "aix.aixmarket.geniuminet.itch.v3.0.pricefrom", ftypes.INT32, nil, nil, nil, "Start of price range for this entry.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price_to = ProtoField.new("Price To", "aix.aixmarket.geniuminet.itch.v3.0.priceto", ftypes.INT32, nil, nil, nil, "End of price range for this entry.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.printable = ProtoField.new("Printable", "aix.aixmarket.geniuminet.itch.v3.0.printable", ftypes.STRING, nil, nil, nil, "Indicates if the trade should be included in trade tickers and volume calculations.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.put_or_call = ProtoField.new("Put Or Call", "aix.aixmarket.geniuminet.itch.v3.0.putorcall", ftypes.UINT8, nil, nil, nil, "Option type.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.quantity = ProtoField.new("Quantity", "aix.aixmarket.geniuminet.itch.v3.0.quantity", ftypes.UINT64, nil, nil, nil, "The visible quantity of the order.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.ranking_sequence_number = ProtoField.new("Ranking Sequence Number", "aix.aixmarket.geniuminet.itch.v3.0.rankingsequencenumber", ftypes.UINT32, nil, nil, nil, "Transaction-based and sequential number starting from 1.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.ranking_time = ProtoField.new("Ranking Time", "aix.aixmarket.geniuminet.itch.v3.0.rankingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Ranking timestamp - Nanosecond")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.ranking_time_utc = ProtoField.new("Ranking Time", "aix.aixmarket.geniuminet.itch.v3.0.rankingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Ranking timestamp - Nanosecond")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.ranking_type = ProtoField.new("Ranking Type", "aix.aixmarket.geniuminet.itch.v3.0.rankingtype", ftypes.UINT8, nil, nil, nil, "Specify what ranking type should be used.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "aix.aixmarket.geniuminet.itch.v3.0.rejectreasoncode", ftypes.STRING, nil, nil, nil, "Login Reject Codes")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "aix.aixmarket.geniuminet.itch.v3.0.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies the next sequence number in ASCII the client wants to receive upon connection, or 0 to start receiving the most recently generated message.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.requested_session = ProtoField.new("Requested Session", "aix.aixmarket.geniuminet.itch.v3.0.requestedsession", ftypes.STRING, nil, nil, nil, "Specifies the session the client would like to log into, or all blanks to log into the currently active session.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reserved_1 = ProtoField.new("Reserved 1", "aix.aixmarket.geniuminet.itch.v3.0.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reserved_13 = ProtoField.new("Reserved 13", "aix.aixmarket.geniuminet.itch.v3.0.reserved13", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reserved_14 = ProtoField.new("Reserved 14", "aix.aixmarket.geniuminet.itch.v3.0.reserved14", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reserved_18 = ProtoField.new("Reserved 18", "aix.aixmarket.geniuminet.itch.v3.0.reserved18", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reserved_4 = ProtoField.new("Reserved 4", "aix.aixmarket.geniuminet.itch.v3.0.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "aix.aixmarket.geniuminet.itch.v3.0.roundlotsize", ftypes.UINT32, nil, nil, nil, "Indicates the quantity that represents a round lot for the issue")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.second = ProtoField.new("Second", "aix.aixmarket.geniuminet.itch.v3.0.second", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Unix time (number of seconds since 1970-01-01 00:00:00 UTC)")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.second_utc = ProtoField.new("Second", "aix.aixmarket.geniuminet.itch.v3.0.second.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Unix time (number of seconds since 1970-01-01 00:00:00 UTC)")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "aix.aixmarket.geniuminet.itch.v3.0.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying sequenced message type")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.server_packet_type = ProtoField.new("Packet Type", "aix.aixmarket.geniuminet.itch.v3.0.serverpackettype", ftypes.STRING, nil, nil, nil, "Code identifying this packet type sent by the server")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "aix.aixmarket.geniuminet.itch.v3.0.shortsalerestriction", ftypes.UINT8, nil, nil, nil, "Specify Short Sell status and what Short Sell validation rule that should be used.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.side = ProtoField.new("Side", "aix.aixmarket.geniuminet.itch.v3.0.side", ftypes.STRING, nil, nil, nil, "\"B\" = buy order. \"S\" = sell order.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.state_name = ProtoField.new("State Name", "aix.aixmarket.geniuminet.itch.v3.0.statename", ftypes.STRING, nil, nil, nil, "Name of Order Book State")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.strike_price = ProtoField.new("Strike Price", "aix.aixmarket.geniuminet.itch.v3.0.strikeprice", ftypes.INT32)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.symbol = ProtoField.new("Symbol", "aix.aixmarket.geniuminet.itch.v3.0.symbol", ftypes.STRING, nil, nil, nil, "Security short name.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.tick_size = ProtoField.new("Tick Size", "aix.aixmarket.geniuminet.itch.v3.0.ticksize", ftypes.UINT64, nil, nil, nil, "Tick Size for the given price range.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.trade_price = ProtoField.new("Trade Price", "aix.aixmarket.geniuminet.itch.v3.0.tradeprice", ftypes.INT32)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.trade_report = ProtoField.new("Trade Report", "aix.aixmarket.geniuminet.itch.v3.0.tradereport", ftypes.STRING, nil, nil, nil, "Indicates whether the trade is a matched Trade Report.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.trading_currency = ProtoField.new("Trading Currency", "aix.aixmarket.geniuminet.itch.v3.0.tradingcurrency", ftypes.STRING, nil, nil, nil, "Trading currency.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.underlying_order_book_id = ProtoField.new("Underlying Order Book Id", "aix.aixmarket.geniuminet.itch.v3.0.underlyingorderbookid", ftypes.UINT32, nil, nil, nil, "Order book ID of underlying instrument.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "aix.aixmarket.geniuminet.itch.v3.0.unsequencedmessage", ftypes.BYTES, nil, nil, nil, "The unsequenced (client to server) message carried by the packet, opaque bytes unless an application source dispatches it")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "aix.aixmarket.geniuminet.itch.v3.0.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Value identifying unsequenced message type")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.username = ProtoField.new("Username", "aix.aixmarket.geniuminet.itch.v3.0.username", ftypes.STRING, nil, nil, nil, "Session username")

-- Aix AixMarket GeniumInet Itch 3.0 Framing
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.client_packet = ProtoField.new("Packet", "aix.aixmarket.geniuminet.itch.v3.0.clientpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the client")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.client_packet_header = ProtoField.new("Packet Header", "aix.aixmarket.geniuminet.itch.v3.0.clientpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the client")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "aix.aixmarket.geniuminet.itch.v3.0.clientsoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the client")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.server_packet = ProtoField.new("Packet", "aix.aixmarket.geniuminet.itch.v3.0.serverpacket", ftypes.STRING, nil, nil, nil, "SoupBinTCP Packet sent by the server")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.server_packet_header = ProtoField.new("Packet Header", "aix.aixmarket.geniuminet.itch.v3.0.serverpacketheader", ftypes.STRING, nil, nil, nil, "Packet header of a packet sent by the server")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "aix.aixmarket.geniuminet.itch.v3.0.serversoupbintcppacket", ftypes.STRING, nil, nil, nil, "Soup Bin Tcp Packet sent by the server")

-- Aix AixMarket GeniumInet 3.0 Application Messages
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.add_order_message = ProtoField.new("Add Order Message", "aix.aixmarket.geniuminet.itch.v3.0.addordermessage", ftypes.STRING, nil, nil, nil, "An Add Order Message indicates that a new order has been accepted by the AIX Trading system and was added to the displayable book.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.equilibrium_price_update_message = ProtoField.new("Equilibrium Price Update Message", "aix.aixmarket.geniuminet.itch.v3.0.equilibriumpriceupdatemessage", ftypes.STRING, nil, nil, nil, "This message is used when auctions occur.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_book_directory_message = ProtoField.new("Order Book Directory Message", "aix.aixmarket.geniuminet.itch.v3.0.orderbookdirectorymessage", ftypes.STRING, nil, nil, nil, "At the start of each trading day, Order book directory messages are disseminated for all active securities, including halted securities, in the AIX Trading system.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_book_flush_message = ProtoField.new("Order Book Flush Message", "aix.aixmarket.geniuminet.itch.v3.0.orderbookflushmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order book is flushed.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_book_state_message = ProtoField.new("Order Book State Message", "aix.aixmarket.geniuminet.itch.v3.0.orderbookstatemessage", ftypes.STRING, nil, nil, nil, "The Order book state message relays information on state changes.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_delete_message = ProtoField.new("Order Delete Message", "aix.aixmarket.geniuminet.itch.v3.0.orderdeletemessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is being deleted.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "aix.aixmarket.geniuminet.itch.v3.0.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "This message is sent whenever an order on the book is executed in whole or in part.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "aix.aixmarket.geniuminet.itch.v3.0.orderexecutedwithpricemessage", ftypes.STRING, nil, nil, nil, "This message is sent that an order on the book is executed in whole or in part with a price different than the initial display price.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.seconds_message = ProtoField.new("Seconds Message", "aix.aixmarket.geniuminet.itch.v3.0.secondsmessage", ftypes.STRING, nil, nil, nil, "This message is sent every second for which at least one ITCH message is being generated.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.short_sell_status_message = ProtoField.new("Short Sell Status Message", "aix.aixmarket.geniuminet.itch.v3.0.shortsellstatusmessage", ftypes.STRING, nil, nil, nil, "A Short Sell Status Message indicates the short sell rules of an order book.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.system_event_message = ProtoField.new("System Event Message", "aix.aixmarket.geniuminet.itch.v3.0.systemeventmessage", ftypes.STRING, nil, nil, nil, "The system event message type is used to signal a market or data feed handler event.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.tick_size_table_entry_message = ProtoField.new("Tick Size Table Entry Message", "aix.aixmarket.geniuminet.itch.v3.0.ticksizetableentrymessage", ftypes.STRING, nil, nil, nil, "This message contains information on a tick size for a price range.")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.trade_message = ProtoField.new("Trade Message", "aix.aixmarket.geniuminet.itch.v3.0.trademessage", ftypes.STRING, nil, nil, nil, "The Trade Message is designed to provide execution details for normal match events involving non-displayable order types.")

-- Aix AixMarket GeniumInet 3.0 Session Messages
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.client_heartbeat = ProtoField.new("Client Heartbeat", "aix.aixmarket.geniuminet.itch.v3.0.clientheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client sends a heartbeat to indicate the connection is alive; carries no payload")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.debug_packet = ProtoField.new("Debug Packet", "aix.aixmarket.geniuminet.itch.v3.0.debugpacket", ftypes.STRING, nil, nil, nil, "Debug packets are intended to provide human readable text that may aid in debugging problems")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.end_of_session = ProtoField.new("End Of Session", "aix.aixmarket.geniuminet.itch.v3.0.endofsession", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server signals end of session; client may now disconnect. Carries no payload")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "aix.aixmarket.geniuminet.itch.v3.0.loginacceptedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends a Login Accepted Packet in response to receiving a valid Login Request from the client")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "aix.aixmarket.geniuminet.itch.v3.0.loginrejectedpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP server sends this packet in response to an invalid Login Request Packet from the client")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "aix.aixmarket.geniuminet.itch.v3.0.loginrequestpacket", ftypes.STRING, nil, nil, nil, "The SoupBinTCP client must send a Login Request Packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.logout_request = ProtoField.new("Logout Request", "aix.aixmarket.geniuminet.itch.v3.0.logoutrequest", ftypes.BYTES, nil, nil, nil, "SoupBinTCP client requests session logout; server completes any in-flight messages then closes. Carries no payload")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "aix.aixmarket.geniuminet.itch.v3.0.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Sequenced Data Packets act as an envelope to carry the actual sequenced data messages that are transferred from the server to the client. Each Sequenced Data Packet carries one message from the higher-lever protocol")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.server_heartbeat = ProtoField.new("Server Heartbeat", "aix.aixmarket.geniuminet.itch.v3.0.serverheartbeat", ftypes.BYTES, nil, nil, nil, "SoupBinTCP server sends a heartbeat to indicate the connection is alive; carries no payload")
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "aix.aixmarket.geniuminet.itch.v3.0.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "The Unsequenced Data Packets act as an envelope to carry the actual data messages that are transferred from the client to the server")

-- Aix AixMarket GeniumInet Itch 3.0 Generated Fields
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "aix.aixmarket.geniuminet.itch.v3.0.sequenceddatapacketsequencenumber", ftypes.UINT64)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_best_ask_price = ProtoField.new("Scaled Best Ask Price", "aix.aixmarket.geniuminet.itch.v3.0.scaledbestaskprice", ftypes.DOUBLE)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_best_bid_price = ProtoField.new("Scaled Best Bid Price", "aix.aixmarket.geniuminet.itch.v3.0.scaledbestbidprice", ftypes.DOUBLE)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_equilibrium_price = ProtoField.new("Scaled Equilibrium Price", "aix.aixmarket.geniuminet.itch.v3.0.scaledequilibriumprice", ftypes.DOUBLE)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.timestamp = ProtoField.new("Timestamp", "aix.aixmarket.geniuminet.itch.v3.0.timestamp", ftypes.UINT64)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_nominal_value = ProtoField.new("Scaled Nominal Value", "aix.aixmarket.geniuminet.itch.v3.0.scalednominalvalue", ftypes.DOUBLE)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_price = ProtoField.new("Scaled Price", "aix.aixmarket.geniuminet.itch.v3.0.scaledprice", ftypes.DOUBLE)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_price_from = ProtoField.new("Scaled Price From", "aix.aixmarket.geniuminet.itch.v3.0.scaledpricefrom", ftypes.DOUBLE)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_price_to = ProtoField.new("Scaled Price To", "aix.aixmarket.geniuminet.itch.v3.0.scaledpriceto", ftypes.DOUBLE)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_strike_price = ProtoField.new("Scaled Strike Price", "aix.aixmarket.geniuminet.itch.v3.0.scaledstrikeprice", ftypes.DOUBLE)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_tick_size = ProtoField.new("Scaled Tick Size", "aix.aixmarket.geniuminet.itch.v3.0.scaledticksize", ftypes.DOUBLE)
omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_trade_price = ProtoField.new("Scaled Trade Price", "aix.aixmarket.geniuminet.itch.v3.0.scaledtradeprice", ftypes.DOUBLE)

-- Aix AixMarket GeniumInet Itch 3.0 Expert Info
aix_aixmarket_geniuminet_itch_v3_0.experts = {}
aix_aixmarket_geniuminet_itch_v3_0.experts.not_a_number = ProtoExpert.new("aix.aixmarket.geniuminet.itch.v3.0.notanumber", "Ascii digits field holding no number", expert.group.PROTOCOL, expert.severity.WARN)
omi_aix_aixmarket_geniuminet_itch_v3_0.experts = { aix_aixmarket_geniuminet_itch_v3_0.experts.not_a_number }

-----------------------------------------------------------------------
-- Aix AixMarket GeniumInet Itch 3.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Full DateTime Local", 2 },
  { 3, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
aix_aixmarket_geniuminet_itch_v3_0.timestamp_format = 2

-- Scaled Nominal Value format (true = decimal-scaled, false = raw mantissa)
aix_aixmarket_geniuminet_itch_v3_0.format_decimals = true

-- assumed connection role
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aix AixMarket GeniumInet Itch 3.0 Element Dissection Options
show.records = true
show.application_messages = true
show.structs = true
show.headers = true
show.session_messages = true
show.padding = false
show.sequences = true

-- Register Aix AixMarket GeniumInet Itch 3.0 Show Options
omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.resolve_records = Pref.bool("Order Book Directory Message", show.records, "Cache records and resolve cross-packet lookups")
omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.format_decimals = Pref.bool("Format Decimals", true, "Format decimal-scaled fields as scaled values (off = raw mantissa)")

omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_aix_aixmarket_geniuminet_itch_v3_0.prefs_changed()

  -- Check if preferences have changed
  if show.records ~= omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.resolve_records then
    show.records = omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.resolve_records
  end
  if show.application_messages ~= omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_application_messages then
    show.application_messages = omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_application_messages
  end
  if show.headers ~= omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_headers then
    show.headers = omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_headers
  end
  if show.padding ~= omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_padding then
    show.padding = omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_padding
  end
  if show.session_messages ~= omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_session_messages then
    show.session_messages = omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_session_messages
  end
  if show.structs ~= omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_structs then
    show.structs = omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_structs
  end
  if show.sequences ~= omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_sequences then
    show.sequences = omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.show_sequences
  end
  if aix_aixmarket_geniuminet_itch_v3_0.format_decimals ~= omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.format_decimals then
    aix_aixmarket_geniuminet_itch_v3_0.format_decimals = omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.format_decimals
  end
  if aix_aixmarket_geniuminet_itch_v3_0.timestamp_format ~= omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.timestamp_format then
    aix_aixmarket_geniuminet_itch_v3_0.timestamp_format = omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
aix_aixmarket_geniuminet_itch_v3_0.conversation = {}
aix_aixmarket_geniuminet_itch_v3_0.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
aix_aixmarket_geniuminet_itch_v3_0.stream_frame = nil
aix_aixmarket_geniuminet_itch_v3_0.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
aix_aixmarket_geniuminet_itch_v3_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
aix_aixmarket_geniuminet_itch_v3_0.conversation.data = function(packet)
  local key = aix_aixmarket_geniuminet_itch_v3_0.conversation.key(packet)
  local data = aix_aixmarket_geniuminet_itch_v3_0.conversation.flows[key]
  if data == nil then
    data = { accepted_sequence_number = { last = nil, frames = {} }, second = { last = nil, frames = {} }, order_book_directory_message = {}, sequence = { next = nil, frames = {} } }
    aix_aixmarket_geniuminet_itch_v3_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
aix_aixmarket_geniuminet_itch_v3_0.conversation.current = nil


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

-- ascii digits as an unsigned 64 bit value, nil when the run is no number
ascii_to_uint64 = function(str)
  -- UInt64.new reads a leading zero as octal, so "0045296" would read as 298
  local significant = str:match("^%s*0*(%d+)%s*$")

  if significant == nil then
    return nil
  end

  local value = UInt64.new(significant)

  -- UInt64.new stops at its maximum rather than failing, so a wider run is read back
  if #significant > 19 and tostring(value) ~= significant then
    return nil
  end

  return value
end


-----------------------------------------------------------------------
-- Aix AixMarket GeniumInet Itch 3.0 Fields
-----------------------------------------------------------------------

-- Accepted Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number = {}

-- Size: Accepted Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number.size = 20

-- Display: Accepted Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number.display = function(value)
  return "Accepted Sequence Number: "..value
end

-- Dissect: Accepted Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.accepted_sequence_number, range, value, "Accepted Sequence Number: Not Applicable")
    item:add_proto_expert_info(aix_aixmarket_geniuminet_itch_v3_0.experts.not_a_number, "Accepted Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.accepted_sequence_number, range, value, display)

  return offset + length, value
end

-- Accepted Session
aix_aixmarket_geniuminet_itch_v3_0.accepted_session = {}

-- Size: Accepted Session
aix_aixmarket_geniuminet_itch_v3_0.accepted_session.size = 10

-- Display: Accepted Session
aix_aixmarket_geniuminet_itch_v3_0.accepted_session.display = function(value)
  return "Accepted Session: "..value
end

-- Dissect: Accepted Session
aix_aixmarket_geniuminet_itch_v3_0.accepted_session.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.accepted_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = aix_aixmarket_geniuminet_itch_v3_0.accepted_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.accepted_session, range, value, display)

  return offset + length, value
end

-- Available Ask Quantity At Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.available_ask_quantity_at_equilibrium_price = {}

-- Size: Available Ask Quantity At Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.available_ask_quantity_at_equilibrium_price.size = 8

-- Display: Available Ask Quantity At Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.available_ask_quantity_at_equilibrium_price.display = function(value)
  return "Available Ask Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Ask Quantity At Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.available_ask_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.available_ask_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = aix_aixmarket_geniuminet_itch_v3_0.available_ask_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.available_ask_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Available Bid Quantity At Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.available_bid_quantity_at_equilibrium_price = {}

-- Size: Available Bid Quantity At Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.available_bid_quantity_at_equilibrium_price.size = 8

-- Display: Available Bid Quantity At Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.available_bid_quantity_at_equilibrium_price.display = function(value)
  return "Available Bid Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Bid Quantity At Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.available_bid_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.available_bid_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = aix_aixmarket_geniuminet_itch_v3_0.available_bid_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.available_bid_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Best Ask Price
aix_aixmarket_geniuminet_itch_v3_0.best_ask_price = {}

-- Size: Best Ask Price
aix_aixmarket_geniuminet_itch_v3_0.best_ask_price.size = 4

-- Display: Best Ask Price
aix_aixmarket_geniuminet_itch_v3_0.best_ask_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Best Ask Price: No Value"
  end

  return "Best Ask Price: "..value
end

-- Dissect: Best Ask Price
aix_aixmarket_geniuminet_itch_v3_0.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.best_ask_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = aix_aixmarket_geniuminet_itch_v3_0.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Ask Quantity
aix_aixmarket_geniuminet_itch_v3_0.best_ask_quantity = {}

-- Size: Best Ask Quantity
aix_aixmarket_geniuminet_itch_v3_0.best_ask_quantity.size = 8

-- Display: Best Ask Quantity
aix_aixmarket_geniuminet_itch_v3_0.best_ask_quantity.display = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
aix_aixmarket_geniuminet_itch_v3_0.best_ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.best_ask_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = aix_aixmarket_geniuminet_itch_v3_0.best_ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Best Bid Price
aix_aixmarket_geniuminet_itch_v3_0.best_bid_price = {}

-- Size: Best Bid Price
aix_aixmarket_geniuminet_itch_v3_0.best_bid_price.size = 4

-- Display: Best Bid Price
aix_aixmarket_geniuminet_itch_v3_0.best_bid_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Best Bid Price: No Value"
  end

  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
aix_aixmarket_geniuminet_itch_v3_0.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.best_bid_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = aix_aixmarket_geniuminet_itch_v3_0.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Quantity
aix_aixmarket_geniuminet_itch_v3_0.best_bid_quantity = {}

-- Size: Best Bid Quantity
aix_aixmarket_geniuminet_itch_v3_0.best_bid_quantity.size = 8

-- Display: Best Bid Quantity
aix_aixmarket_geniuminet_itch_v3_0.best_bid_quantity.display = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
aix_aixmarket_geniuminet_itch_v3_0.best_bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.best_bid_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = aix_aixmarket_geniuminet_itch_v3_0.best_bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Block Lot Size
aix_aixmarket_geniuminet_itch_v3_0.block_lot_size = {}

-- Size: Block Lot Size
aix_aixmarket_geniuminet_itch_v3_0.block_lot_size.size = 4

-- Display: Block Lot Size
aix_aixmarket_geniuminet_itch_v3_0.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
aix_aixmarket_geniuminet_itch_v3_0.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Client Packet Type
aix_aixmarket_geniuminet_itch_v3_0.client_packet_type = {}

-- Size: Client Packet Type
aix_aixmarket_geniuminet_itch_v3_0.client_packet_type.size = 1

-- Display: Client Packet Type
aix_aixmarket_geniuminet_itch_v3_0.client_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["L"] = "Packet Type: Login Request Packet (L)",
  ["U"] = "Packet Type: Unsequenced Data Packet (U)",
  ["R"] = "Packet Type: Client Heartbeat Packet (R)",
  ["O"] = "Packet Type: Logout Request Packet (O)",
}

aix_aixmarket_geniuminet_itch_v3_0.client_packet_type.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.client_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
aix_aixmarket_geniuminet_itch_v3_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = aix_aixmarket_geniuminet_itch_v3_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Combo Group Id
aix_aixmarket_geniuminet_itch_v3_0.combo_group_id = {}

-- Size: Combo Group Id
aix_aixmarket_geniuminet_itch_v3_0.combo_group_id.size = 4

-- Display: Combo Group Id
aix_aixmarket_geniuminet_itch_v3_0.combo_group_id.display = function(value)
  return "Combo Group Id: "..value
end

-- Dissect: Combo Group Id
aix_aixmarket_geniuminet_itch_v3_0.combo_group_id.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.combo_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.combo_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.combo_group_id, range, value, display)

  return offset + length, value
end

-- Debug Text
aix_aixmarket_geniuminet_itch_v3_0.debug_text = {}

-- Display: Debug Text
aix_aixmarket_geniuminet_itch_v3_0.debug_text.display = function(value)
  return "Debug Text: "..value
end

-- Dissect runtime sized field: Debug Text
aix_aixmarket_geniuminet_itch_v3_0.debug_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = aix_aixmarket_geniuminet_itch_v3_0.debug_text.display(value, packet, parent, size)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.debug_text, range, value, display)

  return offset + size, value
end

-- Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price = {}

-- Size: Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price.size = 4

-- Display: Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Equilibrium Price: No Value"
  end

  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Event Code
aix_aixmarket_geniuminet_itch_v3_0.event_code = {}

-- Size: Event Code
aix_aixmarket_geniuminet_itch_v3_0.event_code.size = 1

-- Display: Event Code
aix_aixmarket_geniuminet_itch_v3_0.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["C"] = "Event Code: End Of Messages (C)",
}

aix_aixmarket_geniuminet_itch_v3_0.event_code.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
aix_aixmarket_geniuminet_itch_v3_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = aix_aixmarket_geniuminet_itch_v3_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
aix_aixmarket_geniuminet_itch_v3_0.executed_quantity = {}

-- Size: Executed Quantity
aix_aixmarket_geniuminet_itch_v3_0.executed_quantity.size = 8

-- Display: Executed Quantity
aix_aixmarket_geniuminet_itch_v3_0.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
aix_aixmarket_geniuminet_itch_v3_0.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = aix_aixmarket_geniuminet_itch_v3_0.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Expiration Date
aix_aixmarket_geniuminet_itch_v3_0.expiration_date = {}

-- Size: Expiration Date
aix_aixmarket_geniuminet_itch_v3_0.expiration_date.size = 4

-- Display: Expiration Date
aix_aixmarket_geniuminet_itch_v3_0.expiration_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Expiration Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Expiration Date
aix_aixmarket_geniuminet_itch_v3_0.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Financial Product
aix_aixmarket_geniuminet_itch_v3_0.financial_product = {}

-- Size: Financial Product
aix_aixmarket_geniuminet_itch_v3_0.financial_product.size = 1

-- Display: Financial Product
aix_aixmarket_geniuminet_itch_v3_0.financial_product.labels = {
  [1] = "Financial Product: Option (1)",
  [2] = "Financial Product: Forward (2)",
  [3] = "Financial Product: Future (3)",
  [4] = "Financial Product: Fra (4)",
  [5] = "Financial Product: Cash (5)",
  [6] = "Financial Product: Payment (6)",
  [7] = "Financial Product: Exchange Rate (7)",
  [8] = "Financial Product: Interest Rate Swap (8)",
  [9] = "Financial Product: Repo (9)",
  [10] = "Financial Product: Synthetic Box Leg Reference (10)",
  [11] = "Financial Product: Standard Combination (11)",
  [12] = "Financial Product: Guarantee (12)",
  [13] = "Financial Product: Otc General (13)",
  [14] = "Financial Product: Equity Warrant (14)",
  [15] = "Financial Product: Security Lending (15)",
  [18] = "Financial Product: Certificate (18)",
}

aix_aixmarket_geniuminet_itch_v3_0.financial_product.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.financial_product.labels[value] or "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
aix_aixmarket_geniuminet_itch_v3_0.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Isin
aix_aixmarket_geniuminet_itch_v3_0.isin = {}

-- Size: Isin
aix_aixmarket_geniuminet_itch_v3_0.isin.size = 12

-- Display: Isin
aix_aixmarket_geniuminet_itch_v3_0.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
aix_aixmarket_geniuminet_itch_v3_0.isin.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = aix_aixmarket_geniuminet_itch_v3_0.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.isin, range, value, display)

  return offset + length, value
end

-- Long Name
aix_aixmarket_geniuminet_itch_v3_0.long_name = {}

-- Size: Long Name
aix_aixmarket_geniuminet_itch_v3_0.long_name.size = 32

-- Display: Long Name
aix_aixmarket_geniuminet_itch_v3_0.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
aix_aixmarket_geniuminet_itch_v3_0.long_name.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = aix_aixmarket_geniuminet_itch_v3_0.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.long_name, range, value, display)

  return offset + length, value
end

-- Lot Type
aix_aixmarket_geniuminet_itch_v3_0.lot_type = {}

-- Size: Lot Type
aix_aixmarket_geniuminet_itch_v3_0.lot_type.size = 1

-- Display: Lot Type
aix_aixmarket_geniuminet_itch_v3_0.lot_type.labels = {
  [2] = "Lot Type: Round Lot (2)",
}

aix_aixmarket_geniuminet_itch_v3_0.lot_type.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.lot_type.labels[value] or "Lot Type: Unknown("..value..")"
end

-- Dissect: Lot Type
aix_aixmarket_geniuminet_itch_v3_0.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.lot_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Match Id
aix_aixmarket_geniuminet_itch_v3_0.match_id = {}

-- Size: Match Id
aix_aixmarket_geniuminet_itch_v3_0.match_id.size = 8

-- Display: Match Id
aix_aixmarket_geniuminet_itch_v3_0.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
aix_aixmarket_geniuminet_itch_v3_0.match_id.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = aix_aixmarket_geniuminet_itch_v3_0.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Nanoseconds
aix_aixmarket_geniuminet_itch_v3_0.nanoseconds = {}

-- Size: Nanoseconds
aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size = 4

-- Display: Nanoseconds
aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Nominal Value
aix_aixmarket_geniuminet_itch_v3_0.nominal_value = {}

-- Size: Nominal Value
aix_aixmarket_geniuminet_itch_v3_0.nominal_value.size = 8

-- Display: Nominal Value
aix_aixmarket_geniuminet_itch_v3_0.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
aix_aixmarket_geniuminet_itch_v3_0.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = aix_aixmarket_geniuminet_itch_v3_0.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Nominal Value
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_nominal_value = {}

-- Size: Number Of Decimals In Nominal Value
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_nominal_value.size = 2

-- Display: Number Of Decimals In Nominal Value
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_nominal_value.labels = {
  [0] = "Number Of Decimals In Nominal Value: Zero Decimals (0)",
  [1] = "Number Of Decimals In Nominal Value: One Decimals (1)",
  [2] = "Number Of Decimals In Nominal Value: Two Decimals (2)",
  [3] = "Number Of Decimals In Nominal Value: Three Decimals (3)",
  [4] = "Number Of Decimals In Nominal Value: Four Decimals (4)",
  [5] = "Number Of Decimals In Nominal Value: Five Decimals (5)",
  [6] = "Number Of Decimals In Nominal Value: Six Decimals (6)",
  [7] = "Number Of Decimals In Nominal Value: Seven Decimals (7)",
  [8] = "Number Of Decimals In Nominal Value: Eight Decimals (8)",
  [9] = "Number Of Decimals In Nominal Value: Nine Decimals (9)",
}

aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_nominal_value.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_nominal_value.labels[value] or "Number Of Decimals In Nominal Value: Unknown("..value..")"
end

-- Dissect: Number Of Decimals In Nominal Value
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Price
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_price = {}

-- Size: Number Of Decimals In Price
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_price.size = 2

-- Display: Number Of Decimals In Price
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_price.display = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Strike Price
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_strike_price = {}

-- Size: Number Of Decimals In Strike Price
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_strike_price.size = 2

-- Display: Number Of Decimals In Strike Price
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_strike_price.labels = {
  [0] = "Number Of Decimals In Strike Price: Zero Decimals (0)",
  [1] = "Number Of Decimals In Strike Price: One Decimals (1)",
  [2] = "Number Of Decimals In Strike Price: Two Decimals (2)",
  [3] = "Number Of Decimals In Strike Price: Three Decimals (3)",
  [4] = "Number Of Decimals In Strike Price: Four Decimals (4)",
  [5] = "Number Of Decimals In Strike Price: Five Decimals (5)",
  [6] = "Number Of Decimals In Strike Price: Six Decimals (6)",
  [7] = "Number Of Decimals In Strike Price: Seven Decimals (7)",
  [8] = "Number Of Decimals In Strike Price: Eight Decimals (8)",
  [9] = "Number Of Decimals In Strike Price: Nine Decimals (9)",
}

aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_strike_price.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_strike_price.labels[value] or "Number Of Decimals In Strike Price: Unknown("..value..")"
end

-- Dissect: Number Of Decimals In Strike Price
aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.number_of_decimals_in_strike_price, range, value, display)

  return offset + length, value
end

-- Occurred At Cross
aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross = {}

-- Size: Occurred At Cross
aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross.size = 1

-- Display: Occurred At Cross
aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross.labels = {
  ["Y"] = "Occurred At Cross: Trade Occurred At The Cross (Y)",
  ["N"] = "Occurred At Cross: Trade Occurred At Continuous Market (N)",
}

aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross.labels[value] or "Occurred At Cross: Unknown("..value..")"
end

-- Dissect: Occurred At Cross
aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.occurred_at_cross, range, value, display)

  return offset + length, value
end

-- Odd Lot Size
aix_aixmarket_geniuminet_itch_v3_0.odd_lot_size = {}

-- Size: Odd Lot Size
aix_aixmarket_geniuminet_itch_v3_0.odd_lot_size.size = 4

-- Display: Odd Lot Size
aix_aixmarket_geniuminet_itch_v3_0.odd_lot_size.display = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
aix_aixmarket_geniuminet_itch_v3_0.odd_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.odd_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.odd_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Order Attributes
aix_aixmarket_geniuminet_itch_v3_0.order_attributes = {}

-- Size: Order Attributes
aix_aixmarket_geniuminet_itch_v3_0.order_attributes.size = 2

-- Display: Order Attributes
aix_aixmarket_geniuminet_itch_v3_0.order_attributes.labels = {
  [0] = "Order Attributes: Not Applicable (0)",
}

aix_aixmarket_geniuminet_itch_v3_0.order_attributes.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.order_attributes.labels[value] or "Order Attributes: Unknown("..value..")"
end

-- Dissect: Order Attributes
aix_aixmarket_geniuminet_itch_v3_0.order_attributes.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.order_attributes.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.order_attributes.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_attributes, range, value, display)

  return offset + length, value
end

-- Order Book Id
aix_aixmarket_geniuminet_itch_v3_0.order_book_id = {}

-- Size: Order Book Id
aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size = 4

-- Lookup: Order Book Id
aix_aixmarket_geniuminet_itch_v3_0.order_book_id.lookup = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.display(value, buffer, offset, packet, parent)

  if not show.records then
    aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.current = nil
    parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_book_id, range, value, display)

    return offset + length, value
  end

  -- Lookup Order Book Directory Message record
  local record = aix_aixmarket_geniuminet_itch_v3_0.conversation.current.order_book_directory_message[value]

  -- The record as it stood at this frame, however often it is dissected again
  while record ~= nil and record.record_frame > packet.number do
    record = record.record_previous
  end

  -- A key with no record clears the last one, so nothing reads another key's values
  aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.current = record

  local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_book_id, range, value, display)

  if record ~= nil then
    if record.number_of_decimals_in_price ~= nil then
      local entry_number_of_decimals_in_price = field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.number_of_decimals_in_price, record.number_of_decimals_in_price)
      entry_number_of_decimals_in_price:set_generated()
    end
  end

  return offset + length, value, record
end

-- Display: Order Book Id
aix_aixmarket_geniuminet_itch_v3_0.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
aix_aixmarket_geniuminet_itch_v3_0.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Order Id
aix_aixmarket_geniuminet_itch_v3_0.order_id = {}

-- Size: Order Id
aix_aixmarket_geniuminet_itch_v3_0.order_id.size = 8

-- Display: Order Id
aix_aixmarket_geniuminet_itch_v3_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
aix_aixmarket_geniuminet_itch_v3_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = aix_aixmarket_geniuminet_itch_v3_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Length
aix_aixmarket_geniuminet_itch_v3_0.packet_length = {}

-- Size: Packet Length
aix_aixmarket_geniuminet_itch_v3_0.packet_length.size = 2

-- Display: Packet Length
aix_aixmarket_geniuminet_itch_v3_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
aix_aixmarket_geniuminet_itch_v3_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
aix_aixmarket_geniuminet_itch_v3_0.password = {}

-- Size: Password
aix_aixmarket_geniuminet_itch_v3_0.password.size = 10

-- Display: Password
aix_aixmarket_geniuminet_itch_v3_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
aix_aixmarket_geniuminet_itch_v3_0.password.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = aix_aixmarket_geniuminet_itch_v3_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.password, range, value, display)

  return offset + length, value
end

-- Price
aix_aixmarket_geniuminet_itch_v3_0.price = {}

-- Size: Price
aix_aixmarket_geniuminet_itch_v3_0.price.size = 4

-- Display: Price
aix_aixmarket_geniuminet_itch_v3_0.price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Dissect: Price
aix_aixmarket_geniuminet_itch_v3_0.price.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = aix_aixmarket_geniuminet_itch_v3_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price, range, value, display)

  return offset + length, value
end

-- Price From
aix_aixmarket_geniuminet_itch_v3_0.price_from = {}

-- Size: Price From
aix_aixmarket_geniuminet_itch_v3_0.price_from.size = 4

-- Display: Price From
aix_aixmarket_geniuminet_itch_v3_0.price_from.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price From: No Value"
  end

  return "Price From: "..value
end

-- Dissect: Price From
aix_aixmarket_geniuminet_itch_v3_0.price_from.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = aix_aixmarket_geniuminet_itch_v3_0.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price_from, range, value, display)

  return offset + length, value
end

-- Price To
aix_aixmarket_geniuminet_itch_v3_0.price_to = {}

-- Size: Price To
aix_aixmarket_geniuminet_itch_v3_0.price_to.size = 4

-- Display: Price To
aix_aixmarket_geniuminet_itch_v3_0.price_to.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Price To: No Value"
  end

  return "Price To: "..value
end

-- Dissect: Price To
aix_aixmarket_geniuminet_itch_v3_0.price_to.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = aix_aixmarket_geniuminet_itch_v3_0.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price_to, range, value, display)

  return offset + length, value
end

-- Printable
aix_aixmarket_geniuminet_itch_v3_0.printable = {}

-- Size: Printable
aix_aixmarket_geniuminet_itch_v3_0.printable.size = 1

-- Display: Printable
aix_aixmarket_geniuminet_itch_v3_0.printable.labels = {
  ["N"] = "Printable: Non Printable (N)",
  ["Y"] = "Printable: Printable (Y)",
}

aix_aixmarket_geniuminet_itch_v3_0.printable.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.printable.labels[value] or "Printable: Unknown("..value..")"
end

-- Dissect: Printable
aix_aixmarket_geniuminet_itch_v3_0.printable.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.printable.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = aix_aixmarket_geniuminet_itch_v3_0.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.printable, range, value, display)

  return offset + length, value
end

-- Put Or Call
aix_aixmarket_geniuminet_itch_v3_0.put_or_call = {}

-- Size: Put Or Call
aix_aixmarket_geniuminet_itch_v3_0.put_or_call.size = 1

-- Display: Put Or Call
aix_aixmarket_geniuminet_itch_v3_0.put_or_call.labels = {
  [0] = "Put Or Call: Undefined (0)",
  [1] = "Put Or Call: Call (1)",
  [2] = "Put Or Call: Put (2)",
}

aix_aixmarket_geniuminet_itch_v3_0.put_or_call.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.put_or_call.labels[value] or "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
aix_aixmarket_geniuminet_itch_v3_0.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quantity
aix_aixmarket_geniuminet_itch_v3_0.quantity = {}

-- Size: Quantity
aix_aixmarket_geniuminet_itch_v3_0.quantity.size = 8

-- Display: Quantity
aix_aixmarket_geniuminet_itch_v3_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
aix_aixmarket_geniuminet_itch_v3_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = aix_aixmarket_geniuminet_itch_v3_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Ranking Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.ranking_sequence_number = {}

-- Size: Ranking Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.ranking_sequence_number.size = 4

-- Display: Ranking Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.ranking_sequence_number.display = function(value)
  return "Ranking Sequence Number: "..value
end

-- Dissect: Ranking Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.ranking_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.ranking_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.ranking_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.ranking_sequence_number, range, value, display)

  return offset + length, value
end

-- Ranking Time
aix_aixmarket_geniuminet_itch_v3_0.ranking_time = {}

-- Size: Ranking Time
aix_aixmarket_geniuminet_itch_v3_0.ranking_time.size = 8

-- Dissect: Ranking Time
aix_aixmarket_geniuminet_itch_v3_0.ranking_time.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.ranking_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_aix_aixmarket_geniuminet_itch_v3_0.fields.ranking_time
  if aix_aixmarket_geniuminet_itch_v3_0.timestamp_format == 3 then field = omi_aix_aixmarket_geniuminet_itch_v3_0.fields.ranking_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ranking Type
aix_aixmarket_geniuminet_itch_v3_0.ranking_type = {}

-- Size: Ranking Type
aix_aixmarket_geniuminet_itch_v3_0.ranking_type.size = 1

-- Display: Ranking Type
aix_aixmarket_geniuminet_itch_v3_0.ranking_type.labels = {
  [1] = "Ranking Type: Price Time (1)",
}

aix_aixmarket_geniuminet_itch_v3_0.ranking_type.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.ranking_type.labels[value] or "Ranking Type: Unknown("..value..")"
end

-- Dissect: Ranking Type
aix_aixmarket_geniuminet_itch_v3_0.ranking_type.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.ranking_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.ranking_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.ranking_type, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
aix_aixmarket_geniuminet_itch_v3_0.reject_reason_code = {}

-- Size: Reject Reason Code
aix_aixmarket_geniuminet_itch_v3_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
aix_aixmarket_geniuminet_itch_v3_0.reject_reason_code.labels = {
  ["A"] = "Reject Reason Code: Not Authorized (A)",
  ["S"] = "Reject Reason Code: Session Not Available (S)",
}

aix_aixmarket_geniuminet_itch_v3_0.reject_reason_code.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.reject_reason_code.labels[value] or "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
aix_aixmarket_geniuminet_itch_v3_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = aix_aixmarket_geniuminet_itch_v3_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
aix_aixmarket_geniuminet_itch_v3_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = ascii_to_uint64(range:string())

  if value == nil then
    value = UInt64.new("0")
    local item = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.requested_sequence_number, range, value, "Requested Sequence Number: Not Applicable")
    item:add_proto_expert_info(aix_aixmarket_geniuminet_itch_v3_0.experts.not_a_number, "Requested Sequence Number is not a number: '"..range:string().."'")
    return offset + length, value
  end

  local display = aix_aixmarket_geniuminet_itch_v3_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
aix_aixmarket_geniuminet_itch_v3_0.requested_session = {}

-- Size: Requested Session
aix_aixmarket_geniuminet_itch_v3_0.requested_session.size = 10

-- Display: Requested Session
aix_aixmarket_geniuminet_itch_v3_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
aix_aixmarket_geniuminet_itch_v3_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.requested_session.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string())
  local display = aix_aixmarket_geniuminet_itch_v3_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Reserved 1
aix_aixmarket_geniuminet_itch_v3_0.reserved_1 = {}

-- Size: Reserved 1
aix_aixmarket_geniuminet_itch_v3_0.reserved_1.size = 1

-- Display: Reserved 1
aix_aixmarket_geniuminet_itch_v3_0.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
aix_aixmarket_geniuminet_itch_v3_0.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = aix_aixmarket_geniuminet_itch_v3_0.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 13
aix_aixmarket_geniuminet_itch_v3_0.reserved_13 = {}

-- Size: Reserved 13
aix_aixmarket_geniuminet_itch_v3_0.reserved_13.size = 13

-- Display: Reserved 13
aix_aixmarket_geniuminet_itch_v3_0.reserved_13.display = function(value)
  return "Reserved 13: "..value
end

-- Dissect: Reserved 13
aix_aixmarket_geniuminet_itch_v3_0.reserved_13.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.reserved_13.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = aix_aixmarket_geniuminet_itch_v3_0.reserved_13.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reserved_13, range, value, display)

  return offset + length, value
end

-- Reserved 14
aix_aixmarket_geniuminet_itch_v3_0.reserved_14 = {}

-- Size: Reserved 14
aix_aixmarket_geniuminet_itch_v3_0.reserved_14.size = 14

-- Display: Reserved 14
aix_aixmarket_geniuminet_itch_v3_0.reserved_14.display = function(value)
  return "Reserved 14: "..value
end

-- Dissect: Reserved 14
aix_aixmarket_geniuminet_itch_v3_0.reserved_14.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.reserved_14.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = aix_aixmarket_geniuminet_itch_v3_0.reserved_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reserved_14, range, value, display)

  return offset + length, value
end

-- Reserved 18
aix_aixmarket_geniuminet_itch_v3_0.reserved_18 = {}

-- Size: Reserved 18
aix_aixmarket_geniuminet_itch_v3_0.reserved_18.size = 18

-- Display: Reserved 18
aix_aixmarket_geniuminet_itch_v3_0.reserved_18.display = function(value)
  return "Reserved 18: "..value
end

-- Dissect: Reserved 18
aix_aixmarket_geniuminet_itch_v3_0.reserved_18.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.reserved_18.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = aix_aixmarket_geniuminet_itch_v3_0.reserved_18.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reserved_18, range, value, display)

  return offset + length, value
end

-- Reserved 4
aix_aixmarket_geniuminet_itch_v3_0.reserved_4 = {}

-- Size: Reserved 4
aix_aixmarket_geniuminet_itch_v3_0.reserved_4.size = 4

-- Display: Reserved 4
aix_aixmarket_geniuminet_itch_v3_0.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
aix_aixmarket_geniuminet_itch_v3_0.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = aix_aixmarket_geniuminet_itch_v3_0.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Round Lot Size
aix_aixmarket_geniuminet_itch_v3_0.round_lot_size = {}

-- Size: Round Lot Size
aix_aixmarket_geniuminet_itch_v3_0.round_lot_size.size = 4

-- Display: Round Lot Size
aix_aixmarket_geniuminet_itch_v3_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
aix_aixmarket_geniuminet_itch_v3_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Second
aix_aixmarket_geniuminet_itch_v3_0.second = {}

-- Size: Second
aix_aixmarket_geniuminet_itch_v3_0.second.size = 4

-- Store: Second
aix_aixmarket_geniuminet_itch_v3_0.second.current = nil

-- Generated: Second
aix_aixmarket_geniuminet_itch_v3_0.second.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_aix_aixmarket_geniuminet_itch_v3_0.fields.second
  if aix_aixmarket_geniuminet_itch_v3_0.timestamp_format == 3 then field = omi_aix_aixmarket_geniuminet_itch_v3_0.fields.second_utc end
  local second = parent:add(field, range, NSTime.new(value, 0))
  second:set_generated()
end

-- Dissect: Second
aix_aixmarket_geniuminet_itch_v3_0.second.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.second.size
  local range = buffer(offset, length)
  local value = range:uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_aix_aixmarket_geniuminet_itch_v3_0.fields.second
  if aix_aixmarket_geniuminet_itch_v3_0.timestamp_format == 3 then field = omi_aix_aixmarket_geniuminet_itch_v3_0.fields.second_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequenced Message Type
aix_aixmarket_geniuminet_itch_v3_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
aix_aixmarket_geniuminet_itch_v3_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
aix_aixmarket_geniuminet_itch_v3_0.sequenced_message_type.labels = {
  ["T"] = "Sequenced Message Type: Seconds Message (T)",
  ["R"] = "Sequenced Message Type: Order Book Directory Message (R)",
  ["L"] = "Sequenced Message Type: Tick Size Table Entry Message (L)",
  ["V"] = "Sequenced Message Type: Short Sell Status Message (V)",
  ["S"] = "Sequenced Message Type: System Event Message (S)",
  ["O"] = "Sequenced Message Type: Order Book State Message (O)",
  ["A"] = "Sequenced Message Type: Add Order Message (A)",
  ["E"] = "Sequenced Message Type: Order Executed Message (E)",
  ["C"] = "Sequenced Message Type: Order Executed With Price Message (C)",
  ["D"] = "Sequenced Message Type: Order Delete Message (D)",
  ["Y"] = "Sequenced Message Type: Order Book Flush Message (Y)",
  ["P"] = "Sequenced Message Type: Trade Message (P)",
  ["Z"] = "Sequenced Message Type: Equilibrium Price Update Message (Z)",
}

aix_aixmarket_geniuminet_itch_v3_0.sequenced_message_type.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.sequenced_message_type.labels[value] or "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
aix_aixmarket_geniuminet_itch_v3_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = aix_aixmarket_geniuminet_itch_v3_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
aix_aixmarket_geniuminet_itch_v3_0.server_packet_type = {}

-- Size: Server Packet Type
aix_aixmarket_geniuminet_itch_v3_0.server_packet_type.size = 1

-- Display: Server Packet Type
aix_aixmarket_geniuminet_itch_v3_0.server_packet_type.labels = {
  ["+"] = "Packet Type: Debug Packet (+)",
  ["A"] = "Packet Type: Login Accepted Packet (A)",
  ["J"] = "Packet Type: Login Rejected Packet (J)",
  ["S"] = "Packet Type: Sequenced Data Packet (S)",
  ["H"] = "Packet Type: Server Heartbeat Packet (H)",
  ["Z"] = "Packet Type: End Of Session Packet (Z)",
}

aix_aixmarket_geniuminet_itch_v3_0.server_packet_type.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.server_packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
aix_aixmarket_geniuminet_itch_v3_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = aix_aixmarket_geniuminet_itch_v3_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction
aix_aixmarket_geniuminet_itch_v3_0.short_sale_restriction = {}

-- Size: Short Sale Restriction
aix_aixmarket_geniuminet_itch_v3_0.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
aix_aixmarket_geniuminet_itch_v3_0.short_sale_restriction.labels = {
  [0] = "Short Sale Restriction: No Restrictions (0)",
  [1] = "Short Sale Restriction: Short Selling Is Not Allowed (1)",
  [2] = "Short Sale Restriction: Short Selling Is Allowed With Up Tick Rule (2)",
}

aix_aixmarket_geniuminet_itch_v3_0.short_sale_restriction.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.short_sale_restriction.labels[value] or "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
aix_aixmarket_geniuminet_itch_v3_0.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Side
aix_aixmarket_geniuminet_itch_v3_0.side = {}

-- Size: Side
aix_aixmarket_geniuminet_itch_v3_0.side.size = 1

-- Display: Side
aix_aixmarket_geniuminet_itch_v3_0.side.display = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end
  if value == " " then
    return "Side: Blank (<whitespace>)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
aix_aixmarket_geniuminet_itch_v3_0.side.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = aix_aixmarket_geniuminet_itch_v3_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.side, range, value, display)

  return offset + length, value
end

-- State Name
aix_aixmarket_geniuminet_itch_v3_0.state_name = {}

-- Size: State Name
aix_aixmarket_geniuminet_itch_v3_0.state_name.size = 20

-- Display: State Name
aix_aixmarket_geniuminet_itch_v3_0.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
aix_aixmarket_geniuminet_itch_v3_0.state_name.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = aix_aixmarket_geniuminet_itch_v3_0.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.state_name, range, value, display)

  return offset + length, value
end

-- Strike Price
aix_aixmarket_geniuminet_itch_v3_0.strike_price = {}

-- Size: Strike Price
aix_aixmarket_geniuminet_itch_v3_0.strike_price.size = 4

-- Display: Strike Price
aix_aixmarket_geniuminet_itch_v3_0.strike_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
aix_aixmarket_geniuminet_itch_v3_0.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = aix_aixmarket_geniuminet_itch_v3_0.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
aix_aixmarket_geniuminet_itch_v3_0.symbol = {}

-- Size: Symbol
aix_aixmarket_geniuminet_itch_v3_0.symbol.size = 32

-- Display: Symbol
aix_aixmarket_geniuminet_itch_v3_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
aix_aixmarket_geniuminet_itch_v3_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = aix_aixmarket_geniuminet_itch_v3_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Size
aix_aixmarket_geniuminet_itch_v3_0.tick_size = {}

-- Size: Tick Size
aix_aixmarket_geniuminet_itch_v3_0.tick_size.size = 8

-- Display: Tick Size
aix_aixmarket_geniuminet_itch_v3_0.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
aix_aixmarket_geniuminet_itch_v3_0.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = aix_aixmarket_geniuminet_itch_v3_0.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Trade Price
aix_aixmarket_geniuminet_itch_v3_0.trade_price = {}

-- Size: Trade Price
aix_aixmarket_geniuminet_itch_v3_0.trade_price.size = 4

-- Display: Trade Price
aix_aixmarket_geniuminet_itch_v3_0.trade_price.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Trade Price: No Value"
  end

  return "Trade Price: "..value
end

-- Dissect: Trade Price
aix_aixmarket_geniuminet_itch_v3_0.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = aix_aixmarket_geniuminet_itch_v3_0.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Report
aix_aixmarket_geniuminet_itch_v3_0.trade_report = {}

-- Size: Trade Report
aix_aixmarket_geniuminet_itch_v3_0.trade_report.size = 1

-- Display: Trade Report
aix_aixmarket_geniuminet_itch_v3_0.trade_report.labels = {
  ["Y"] = "Trade Report: Matched Trade Report (Y)",
  ["N"] = "Trade Report: Standard Trade (N)",
}

aix_aixmarket_geniuminet_itch_v3_0.trade_report.display = function(value)
  return aix_aixmarket_geniuminet_itch_v3_0.trade_report.labels[value] or "Trade Report: Unknown("..value..")"
end

-- Dissect: Trade Report
aix_aixmarket_geniuminet_itch_v3_0.trade_report.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.trade_report.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = aix_aixmarket_geniuminet_itch_v3_0.trade_report.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.trade_report, range, value, display)

  return offset + length, value
end

-- Trading Currency
aix_aixmarket_geniuminet_itch_v3_0.trading_currency = {}

-- Size: Trading Currency
aix_aixmarket_geniuminet_itch_v3_0.trading_currency.size = 3

-- Display: Trading Currency
aix_aixmarket_geniuminet_itch_v3_0.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
aix_aixmarket_geniuminet_itch_v3_0.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = aix_aixmarket_geniuminet_itch_v3_0.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Underlying Order Book Id
aix_aixmarket_geniuminet_itch_v3_0.underlying_order_book_id = {}

-- Size: Underlying Order Book Id
aix_aixmarket_geniuminet_itch_v3_0.underlying_order_book_id.size = 4

-- Display: Underlying Order Book Id
aix_aixmarket_geniuminet_itch_v3_0.underlying_order_book_id.display = function(value)
  return "Underlying Order Book Id: "..value
end

-- Dissect: Underlying Order Book Id
aix_aixmarket_geniuminet_itch_v3_0.underlying_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.underlying_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aix_aixmarket_geniuminet_itch_v3_0.underlying_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.underlying_order_book_id, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message = {}

-- Display: Unsequenced Message
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
aix_aixmarket_geniuminet_itch_v3_0.username = {}

-- Size: Username
aix_aixmarket_geniuminet_itch_v3_0.username.size = 6

-- Display: Username
aix_aixmarket_geniuminet_itch_v3_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
aix_aixmarket_geniuminet_itch_v3_0.username.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = aix_aixmarket_geniuminet_itch_v3_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.username, range, value, display)

  return offset + length, value
end

-- Scaled Best Ask Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_best_ask_price = {}

-- Display: Scaled Best Ask Price in fractions
aix_aixmarket_geniuminet_itch_v3_0.scaled_best_ask_price.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Best Ask Price: " .. text
end

-- Display: Scaled Best Ask Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_best_ask_price.display = function(value)
  return "Scaled Best Ask Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Best Ask Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_best_ask_price.composite = function(buffer, offset, record, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.best_ask_price.size
  local range = buffer(offset, length)
  local mantissa = range:int()

  if mantissa == -2147483648 then
    local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_best_ask_price, range, 0/0, "Scaled Best Ask Price: No Value")
    local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.best_ask_price.display(mantissa)

    field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_ask_price, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end


  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_best_ask_price.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_best_ask_price.display(value)
  end

  local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_best_ask_price, range, value, display)
  local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.best_ask_price.display(mantissa)

  field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_ask_price, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Best Ask Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_best_ask_price.dissect = function(buffer, offset, packet, parent)
  if aix_aixmarket_geniuminet_itch_v3_0.format_decimals then
    local record = aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return aix_aixmarket_geniuminet_itch_v3_0.scaled_best_ask_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return aix_aixmarket_geniuminet_itch_v3_0.best_ask_price.dissect(buffer, offset, packet, parent)
end

-- Scaled Best Bid Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_best_bid_price = {}

-- Display: Scaled Best Bid Price in fractions
aix_aixmarket_geniuminet_itch_v3_0.scaled_best_bid_price.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Best Bid Price: " .. text
end

-- Display: Scaled Best Bid Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_best_bid_price.display = function(value)
  return "Scaled Best Bid Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Best Bid Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_best_bid_price.composite = function(buffer, offset, record, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.best_bid_price.size
  local range = buffer(offset, length)
  local mantissa = range:int()

  if mantissa == -2147483648 then
    local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_best_bid_price, range, 0/0, "Scaled Best Bid Price: No Value")
    local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.best_bid_price.display(mantissa)

    field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_bid_price, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end


  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_best_bid_price.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_best_bid_price.display(value)
  end

  local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_best_bid_price, range, value, display)
  local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.best_bid_price.display(mantissa)

  field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.best_bid_price, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Best Bid Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_best_bid_price.dissect = function(buffer, offset, packet, parent)
  if aix_aixmarket_geniuminet_itch_v3_0.format_decimals then
    local record = aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return aix_aixmarket_geniuminet_itch_v3_0.scaled_best_bid_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return aix_aixmarket_geniuminet_itch_v3_0.best_bid_price.dissect(buffer, offset, packet, parent)
end

-- Scaled Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_equilibrium_price = {}

-- Display: Scaled Equilibrium Price in fractions
aix_aixmarket_geniuminet_itch_v3_0.scaled_equilibrium_price.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Equilibrium Price: " .. text
end

-- Display: Scaled Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_equilibrium_price.display = function(value)
  return "Scaled Equilibrium Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_equilibrium_price.composite = function(buffer, offset, record, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price.size
  local range = buffer(offset, length)
  local mantissa = range:int()

  if mantissa == -2147483648 then
    local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_equilibrium_price, range, 0/0, "Scaled Equilibrium Price: No Value")
    local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price.display(mantissa)

    field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.equilibrium_price, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end


  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_equilibrium_price.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_equilibrium_price.display(value)
  end

  local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_equilibrium_price, range, value, display)
  local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price.display(mantissa)

  field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.equilibrium_price, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Equilibrium Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  if aix_aixmarket_geniuminet_itch_v3_0.format_decimals then
    local record = aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return aix_aixmarket_geniuminet_itch_v3_0.scaled_equilibrium_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price.dissect(buffer, offset, packet, parent)
end

-- Timestamp
aix_aixmarket_geniuminet_itch_v3_0.timestamp = {}

-- Translate: Timestamp
aix_aixmarket_geniuminet_itch_v3_0.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second) * 1000000000 + nanoseconds
end

-- Display: Timestamp
aix_aixmarket_geniuminet_itch_v3_0.timestamp.display = function(nanoseconds, stored_second)
  -- An offset the Field epoch leaves unbounded carries whole seconds of its own
  local seconds = stored_second + math.floor(nanoseconds / 1000000000)
  local fraction = nanoseconds % 1000000000

  local format = aix_aixmarket_geniuminet_itch_v3_0.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
  return "Timestamp: "..os.date(format, seconds)..string.format("%09d", fraction)
end

-- Composite: Timestamp
aix_aixmarket_geniuminet_itch_v3_0.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = aix_aixmarket_geniuminet_itch_v3_0.timestamp.translate(nanoseconds, stored_second)
  local display = aix_aixmarket_geniuminet_itch_v3_0.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.timestamp, range, value, display)

  aix_aixmarket_geniuminet_itch_v3_0.second.generated(stored_second, range, packet, parent)

  display = aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.display(nanoseconds)
  parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect = function(buffer, offset, packet, parent)
  if aix_aixmarket_geniuminet_itch_v3_0.timestamp_format ~= 0 then
    local stored_second = aix_aixmarket_geniuminet_itch_v3_0.second.current

    if stored_second ~= nil then
      return aix_aixmarket_geniuminet_itch_v3_0.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.dissect(buffer, offset, packet, parent)
end

-- Scaled Nominal Value
aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value = {}

-- Display: Scaled Nominal Value
aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display = function(value)
  return "Scaled Nominal Value: " .. string.format("%.15g", value)
end

-- Display: Scaled Nominal Value with an unrecognised code
aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display_uncoded = function(value)
  return "Scaled Nominal Value: " .. string.format("%.15g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Nominal Value
aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.nominal_value.size
  local range = buffer(offset, length)
  local mantissa = range:uint64()

  local value
  local display
  if number_of_decimals_in_nominal_value == 0 then
    value = mantissa:tonumber()
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display(value)
  elseif number_of_decimals_in_nominal_value == 1 then
    value = mantissa:tonumber() / (10 ^ 1)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display(value)
  elseif number_of_decimals_in_nominal_value == 2 then
    value = mantissa:tonumber() / (10 ^ 2)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display(value)
  elseif number_of_decimals_in_nominal_value == 3 then
    value = mantissa:tonumber() / (10 ^ 3)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display(value)
  elseif number_of_decimals_in_nominal_value == 4 then
    value = mantissa:tonumber() / (10 ^ 4)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display(value)
  elseif number_of_decimals_in_nominal_value == 5 then
    value = mantissa:tonumber() / (10 ^ 5)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display(value)
  elseif number_of_decimals_in_nominal_value == 6 then
    value = mantissa:tonumber() / (10 ^ 6)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display(value)
  elseif number_of_decimals_in_nominal_value == 7 then
    value = mantissa:tonumber() / (10 ^ 7)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display(value)
  elseif number_of_decimals_in_nominal_value == 8 then
    value = mantissa:tonumber() / (10 ^ 8)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display(value)
  elseif number_of_decimals_in_nominal_value == 9 then
    value = mantissa:tonumber() / (10 ^ 9)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display(value)
  else
    value = mantissa:tonumber()
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.display_uncoded(value)
  end

  local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_nominal_value, range, value, display)
  local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.nominal_value.display(mantissa)

  field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.nominal_value, range, mantissa, mantissa_display)

  local number_of_decimals_in_nominal_value_entry = field_tree:add("Number Of Decimals In Nominal Value: " .. tostring(number_of_decimals_in_nominal_value))
  number_of_decimals_in_nominal_value_entry:set_generated()

  return offset + length, value
end

-- Scaled Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_price = {}

-- Display: Scaled Price in fractions
aix_aixmarket_geniuminet_itch_v3_0.scaled_price.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Price: " .. text
end

-- Display: Scaled Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_price.display = function(value)
  return "Scaled Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_price.composite = function(buffer, offset, record, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.price.size
  local range = buffer(offset, length)
  local mantissa = range:int()

  if mantissa == -2147483648 then
    local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_price, range, 0/0, "Scaled Price: No Value")
    local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.price.display(mantissa)

    field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end


  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_price.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_price.display(value)
  end

  local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_price, range, value, display)
  local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.price.display(mantissa)

  field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_price.dissect = function(buffer, offset, packet, parent)
  if aix_aixmarket_geniuminet_itch_v3_0.format_decimals then
    local record = aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return aix_aixmarket_geniuminet_itch_v3_0.scaled_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return aix_aixmarket_geniuminet_itch_v3_0.price.dissect(buffer, offset, packet, parent)
end

-- Scaled Price From
aix_aixmarket_geniuminet_itch_v3_0.scaled_price_from = {}

-- Display: Scaled Price From in fractions
aix_aixmarket_geniuminet_itch_v3_0.scaled_price_from.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Price From: " .. text
end

-- Display: Scaled Price From
aix_aixmarket_geniuminet_itch_v3_0.scaled_price_from.display = function(value)
  return "Scaled Price From: " .. string.format("%.15g", value)
end

-- Composite: Scaled Price From
aix_aixmarket_geniuminet_itch_v3_0.scaled_price_from.composite = function(buffer, offset, record, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.price_from.size
  local range = buffer(offset, length)
  local mantissa = range:int()

  if mantissa == -2147483648 then
    local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_price_from, range, 0/0, "Scaled Price From: No Value")
    local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.price_from.display(mantissa)

    field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price_from, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end


  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_price_from.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_price_from.display(value)
  end

  local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_price_from, range, value, display)
  local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.price_from.display(mantissa)

  field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price_from, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Price From
aix_aixmarket_geniuminet_itch_v3_0.scaled_price_from.dissect = function(buffer, offset, packet, parent)
  if aix_aixmarket_geniuminet_itch_v3_0.format_decimals then
    local record = aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return aix_aixmarket_geniuminet_itch_v3_0.scaled_price_from.composite(buffer, offset, record, packet, parent)
    end
  end

  return aix_aixmarket_geniuminet_itch_v3_0.price_from.dissect(buffer, offset, packet, parent)
end

-- Scaled Price To
aix_aixmarket_geniuminet_itch_v3_0.scaled_price_to = {}

-- Display: Scaled Price To in fractions
aix_aixmarket_geniuminet_itch_v3_0.scaled_price_to.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Price To: " .. text
end

-- Display: Scaled Price To
aix_aixmarket_geniuminet_itch_v3_0.scaled_price_to.display = function(value)
  return "Scaled Price To: " .. string.format("%.15g", value)
end

-- Composite: Scaled Price To
aix_aixmarket_geniuminet_itch_v3_0.scaled_price_to.composite = function(buffer, offset, record, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.price_to.size
  local range = buffer(offset, length)
  local mantissa = range:int()

  if mantissa == -2147483648 then
    local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_price_to, range, 0/0, "Scaled Price To: No Value")
    local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.price_to.display(mantissa)

    field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price_to, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end

  if mantissa == 0 then
    local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_price_to, range, 0/0, "Scaled Price To: Infinity")
    field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price_to, range, mantissa, aix_aixmarket_geniuminet_itch_v3_0.price_to.display(mantissa))

    return offset + length, 0/0
  end


  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_price_to.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_price_to.display(value)
  end

  local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_price_to, range, value, display)
  local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.price_to.display(mantissa)

  field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.price_to, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Price To
aix_aixmarket_geniuminet_itch_v3_0.scaled_price_to.dissect = function(buffer, offset, packet, parent)
  if aix_aixmarket_geniuminet_itch_v3_0.format_decimals then
    local record = aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return aix_aixmarket_geniuminet_itch_v3_0.scaled_price_to.composite(buffer, offset, record, packet, parent)
    end
  end

  return aix_aixmarket_geniuminet_itch_v3_0.price_to.dissect(buffer, offset, packet, parent)
end

-- Scaled Strike Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price = {}

-- Display: Scaled Strike Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display = function(value)
  return "Scaled Strike Price: " .. string.format("%.15g", value)
end

-- Display: Scaled Strike Price with an unrecognised code
aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display_uncoded = function(value)
  return "Scaled Strike Price: " .. string.format("%.15g", value) .. " (unscaled: denominator code not recognised)"
end

-- Composite: Scaled Strike Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.strike_price.size
  local range = buffer(offset, length)
  local mantissa = range:int()
  local number_of_decimals_in_strike_price = buffer(offset + length + aix_aixmarket_geniuminet_itch_v3_0.expiration_date.size, aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_strike_price.size):uint()

  if mantissa == -2147483648 then
    local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_strike_price, range, 0/0, "Scaled Strike Price: No Value")
    field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.strike_price, range, mantissa, aix_aixmarket_geniuminet_itch_v3_0.strike_price.display(mantissa))

    return offset + length, 0/0
  end

  local value
  local display
  if number_of_decimals_in_strike_price == 0 then
    value = mantissa
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display(value)
  elseif number_of_decimals_in_strike_price == 1 then
    value = mantissa / (10 ^ 1)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display(value)
  elseif number_of_decimals_in_strike_price == 2 then
    value = mantissa / (10 ^ 2)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display(value)
  elseif number_of_decimals_in_strike_price == 3 then
    value = mantissa / (10 ^ 3)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display(value)
  elseif number_of_decimals_in_strike_price == 4 then
    value = mantissa / (10 ^ 4)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display(value)
  elseif number_of_decimals_in_strike_price == 5 then
    value = mantissa / (10 ^ 5)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display(value)
  elseif number_of_decimals_in_strike_price == 6 then
    value = mantissa / (10 ^ 6)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display(value)
  elseif number_of_decimals_in_strike_price == 7 then
    value = mantissa / (10 ^ 7)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display(value)
  elseif number_of_decimals_in_strike_price == 8 then
    value = mantissa / (10 ^ 8)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display(value)
  elseif number_of_decimals_in_strike_price == 9 then
    value = mantissa / (10 ^ 9)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display(value)
  else
    value = mantissa
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.display_uncoded(value)
  end

  local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_strike_price, range, value, display)
  local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.strike_price.display(mantissa)

  field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.strike_price, range, mantissa, mantissa_display)

  local number_of_decimals_in_strike_price_entry = field_tree:add("Number Of Decimals In Strike Price: " .. tostring(number_of_decimals_in_strike_price))
  number_of_decimals_in_strike_price_entry:set_generated()

  return offset + length, value
end

-- Scaled Tick Size
aix_aixmarket_geniuminet_itch_v3_0.scaled_tick_size = {}

-- Display: Scaled Tick Size in fractions
aix_aixmarket_geniuminet_itch_v3_0.scaled_tick_size.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Tick Size: " .. text
end

-- Display: Scaled Tick Size
aix_aixmarket_geniuminet_itch_v3_0.scaled_tick_size.display = function(value)
  return "Scaled Tick Size: " .. string.format("%.15g", value)
end

-- Composite: Scaled Tick Size
aix_aixmarket_geniuminet_itch_v3_0.scaled_tick_size.composite = function(buffer, offset, record, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.tick_size.size
  local range = buffer(offset, length)
  local mantissa = range:uint64()

  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa:tonumber() / 256
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_tick_size.display_fraction(value)
  else
    value = mantissa:tonumber() / (10 ^ record.number_of_decimals_in_price)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_tick_size.display(value)
  end

  local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_tick_size, range, value, display)
  local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.tick_size.display(mantissa)

  field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.tick_size, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Tick Size
aix_aixmarket_geniuminet_itch_v3_0.scaled_tick_size.dissect = function(buffer, offset, packet, parent)
  if aix_aixmarket_geniuminet_itch_v3_0.format_decimals then
    local record = aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return aix_aixmarket_geniuminet_itch_v3_0.scaled_tick_size.composite(buffer, offset, record, packet, parent)
    end
  end

  return aix_aixmarket_geniuminet_itch_v3_0.tick_size.dissect(buffer, offset, packet, parent)
end

-- Scaled Trade Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_trade_price = {}

-- Display: Scaled Trade Price in fractions
aix_aixmarket_geniuminet_itch_v3_0.scaled_trade_price.display_fraction = function(value)
  local text = string.format("%.8f", value)
  text = text:gsub("0+$", "")
  text = text:gsub("%.$", "")
  return "Scaled Trade Price: " .. text
end

-- Display: Scaled Trade Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_trade_price.display = function(value)
  return "Scaled Trade Price: " .. string.format("%.15g", value)
end

-- Composite: Scaled Trade Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_trade_price.composite = function(buffer, offset, record, packet, parent)
  local length = aix_aixmarket_geniuminet_itch_v3_0.trade_price.size
  local range = buffer(offset, length)
  local mantissa = range:int()

  if mantissa == -2147483648 then
    local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_trade_price, range, 0/0, "Scaled Trade Price: No Value")
    local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.trade_price.display(mantissa)

    field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.trade_price, range, mantissa, mantissa_display)

    return offset + length, 0/0
  end


  local value
  local display
  if record.number_of_decimals_in_price == 256 then
    value = mantissa / 256
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_trade_price.display_fraction(value)
  else
    value = mantissa / (10 ^ record.number_of_decimals_in_price)
    display = aix_aixmarket_geniuminet_itch_v3_0.scaled_trade_price.display(value)
  end

  local field_tree = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.scaled_trade_price, range, value, display)
  local mantissa_display = aix_aixmarket_geniuminet_itch_v3_0.trade_price.display(mantissa)

  field_tree:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.trade_price, range, mantissa, mantissa_display)

  local number_of_decimals_in_price_entry = field_tree:add("Number Of Decimals In Price: " .. tostring(record.number_of_decimals_in_price))
  number_of_decimals_in_price_entry:set_generated()

  return offset + length, value
end

-- Dissect: Scaled Trade Price
aix_aixmarket_geniuminet_itch_v3_0.scaled_trade_price.dissect = function(buffer, offset, packet, parent)
  if aix_aixmarket_geniuminet_itch_v3_0.format_decimals then
    local record = aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.current
    if record ~= nil and record.number_of_decimals_in_price ~= nil then
      return aix_aixmarket_geniuminet_itch_v3_0.scaled_trade_price.composite(buffer, offset, record, packet, parent)
    end
  end

  return aix_aixmarket_geniuminet_itch_v3_0.trade_price.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Aix AixMarket GeniumInet Itch 3.0
-----------------------------------------------------------------------

-- End Of Session
aix_aixmarket_geniuminet_itch_v3_0.end_of_session = {}

-- Display: End Of Session
aix_aixmarket_geniuminet_itch_v3_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
aix_aixmarket_geniuminet_itch_v3_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = aix_aixmarket_geniuminet_itch_v3_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
aix_aixmarket_geniuminet_itch_v3_0.server_heartbeat = {}

-- Display: Server Heartbeat
aix_aixmarket_geniuminet_itch_v3_0.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
aix_aixmarket_geniuminet_itch_v3_0.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = aix_aixmarket_geniuminet_itch_v3_0.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Equilibrium Price Update Message
aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price_update_message = {}

-- Size: Equilibrium Price Update Message
aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price_update_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.available_bid_quantity_at_equilibrium_price.size + 
  aix_aixmarket_geniuminet_itch_v3_0.available_ask_quantity_at_equilibrium_price.size + 
  aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price.size + 
  aix_aixmarket_geniuminet_itch_v3_0.best_bid_price.size + 
  aix_aixmarket_geniuminet_itch_v3_0.best_ask_price.size + 
  aix_aixmarket_geniuminet_itch_v3_0.best_bid_quantity.size + 
  aix_aixmarket_geniuminet_itch_v3_0.best_ask_quantity.size

-- Display: Equilibrium Price Update Message
aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Update Message
aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.lookup(buffer, index, packet, parent)

  -- Available Bid Quantity At Equilibrium Price: Numeric
  index, available_bid_quantity_at_equilibrium_price = aix_aixmarket_geniuminet_itch_v3_0.available_bid_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Available Ask Quantity At Equilibrium Price: Numeric
  index, available_ask_quantity_at_equilibrium_price = aix_aixmarket_geniuminet_itch_v3_0.available_ask_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price
  index, equilibrium_price = aix_aixmarket_geniuminet_itch_v3_0.scaled_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price
  index, best_bid_price = aix_aixmarket_geniuminet_itch_v3_0.scaled_best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Ask Price: Price
  index, best_ask_price = aix_aixmarket_geniuminet_itch_v3_0.scaled_best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Bid Quantity: Numeric
  index, best_bid_quantity = aix_aixmarket_geniuminet_itch_v3_0.best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Best Ask Quantity: Numeric
  index, best_ask_quantity = aix_aixmarket_geniuminet_itch_v3_0.best_ask_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Update Message
aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.equilibrium_price_update_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
aix_aixmarket_geniuminet_itch_v3_0.trade_message = {}

-- Size: Trade Message
aix_aixmarket_geniuminet_itch_v3_0.trade_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.match_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.combo_group_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.side.size + 
  aix_aixmarket_geniuminet_itch_v3_0.quantity.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.trade_price.size + 
  aix_aixmarket_geniuminet_itch_v3_0.trade_report.size + 
  aix_aixmarket_geniuminet_itch_v3_0.reserved_13.size + 
  aix_aixmarket_geniuminet_itch_v3_0.printable.size + 
  aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross.size

-- Display: Trade Message
aix_aixmarket_geniuminet_itch_v3_0.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
aix_aixmarket_geniuminet_itch_v3_0.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = aix_aixmarket_geniuminet_itch_v3_0.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = aix_aixmarket_geniuminet_itch_v3_0.combo_group_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = aix_aixmarket_geniuminet_itch_v3_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = aix_aixmarket_geniuminet_itch_v3_0.quantity.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.lookup(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = aix_aixmarket_geniuminet_itch_v3_0.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Trade Report: Alpha
  index, trade_report = aix_aixmarket_geniuminet_itch_v3_0.trade_report.dissect(buffer, index, packet, parent)

  -- Reserved 13: Reserved
  if show.padding then
    index, reserved_13 = aix_aixmarket_geniuminet_itch_v3_0.reserved_13.dissect(buffer, index, packet, parent)
  else
    index = index + aix_aixmarket_geniuminet_itch_v3_0.reserved_13.size
  end

  -- Printable: Alpha
  index, printable = aix_aixmarket_geniuminet_itch_v3_0.printable.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: Alpha
  index, occurred_at_cross = aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
aix_aixmarket_geniuminet_itch_v3_0.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.trade_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Flush Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_flush_message = {}

-- Size: Order Book Flush Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_flush_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size

-- Display: Order Book Flush Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_flush_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Flush Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_flush_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.lookup(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Flush Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_flush_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_book_flush_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.order_book_flush_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.order_book_flush_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.order_book_flush_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
aix_aixmarket_geniuminet_itch_v3_0.order_delete_message = {}

-- Size: Order Delete Message
aix_aixmarket_geniuminet_itch_v3_0.order_delete_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.side.size

-- Display: Order Delete Message
aix_aixmarket_geniuminet_itch_v3_0.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
aix_aixmarket_geniuminet_itch_v3_0.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = aix_aixmarket_geniuminet_itch_v3_0.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.lookup(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = aix_aixmarket_geniuminet_itch_v3_0.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
aix_aixmarket_geniuminet_itch_v3_0.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_delete_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
aix_aixmarket_geniuminet_itch_v3_0.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
aix_aixmarket_geniuminet_itch_v3_0.order_executed_with_price_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.side.size + 
  aix_aixmarket_geniuminet_itch_v3_0.executed_quantity.size + 
  aix_aixmarket_geniuminet_itch_v3_0.match_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.reserved_18.size + 
  aix_aixmarket_geniuminet_itch_v3_0.trade_price.size + 
  aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross.size + 
  aix_aixmarket_geniuminet_itch_v3_0.printable.size

-- Display: Order Executed With Price Message
aix_aixmarket_geniuminet_itch_v3_0.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
aix_aixmarket_geniuminet_itch_v3_0.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = aix_aixmarket_geniuminet_itch_v3_0.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.lookup(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = aix_aixmarket_geniuminet_itch_v3_0.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = aix_aixmarket_geniuminet_itch_v3_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = aix_aixmarket_geniuminet_itch_v3_0.match_id.dissect(buffer, index, packet, parent)

  -- Reserved 18: Reserved
  if show.padding then
    index, reserved_18 = aix_aixmarket_geniuminet_itch_v3_0.reserved_18.dissect(buffer, index, packet, parent)
  else
    index = index + aix_aixmarket_geniuminet_itch_v3_0.reserved_18.size
  end

  -- Trade Price: Price
  index, trade_price = aix_aixmarket_geniuminet_itch_v3_0.scaled_trade_price.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: Alpha
  index, occurred_at_cross = aix_aixmarket_geniuminet_itch_v3_0.occurred_at_cross.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = aix_aixmarket_geniuminet_itch_v3_0.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
aix_aixmarket_geniuminet_itch_v3_0.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
aix_aixmarket_geniuminet_itch_v3_0.order_executed_message = {}

-- Size: Order Executed Message
aix_aixmarket_geniuminet_itch_v3_0.order_executed_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.side.size + 
  aix_aixmarket_geniuminet_itch_v3_0.executed_quantity.size + 
  aix_aixmarket_geniuminet_itch_v3_0.match_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.reserved_4.size + 
  aix_aixmarket_geniuminet_itch_v3_0.reserved_14.size

-- Display: Order Executed Message
aix_aixmarket_geniuminet_itch_v3_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
aix_aixmarket_geniuminet_itch_v3_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = aix_aixmarket_geniuminet_itch_v3_0.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.lookup(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = aix_aixmarket_geniuminet_itch_v3_0.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = aix_aixmarket_geniuminet_itch_v3_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = aix_aixmarket_geniuminet_itch_v3_0.match_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: Reserved
  if show.padding then
    index, reserved_4 = aix_aixmarket_geniuminet_itch_v3_0.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + aix_aixmarket_geniuminet_itch_v3_0.reserved_4.size
  end

  -- Reserved 14: Reserved
  if show.padding then
    index, reserved_14 = aix_aixmarket_geniuminet_itch_v3_0.reserved_14.dissect(buffer, index, packet, parent)
  else
    index = index + aix_aixmarket_geniuminet_itch_v3_0.reserved_14.size
  end

  return index
end

-- Dissect: Order Executed Message
aix_aixmarket_geniuminet_itch_v3_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_executed_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
aix_aixmarket_geniuminet_itch_v3_0.add_order_message = {}

-- Size: Add Order Message
aix_aixmarket_geniuminet_itch_v3_0.add_order_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.side.size + 
  aix_aixmarket_geniuminet_itch_v3_0.ranking_sequence_number.size + 
  aix_aixmarket_geniuminet_itch_v3_0.quantity.size + 
  aix_aixmarket_geniuminet_itch_v3_0.price.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_attributes.size + 
  aix_aixmarket_geniuminet_itch_v3_0.lot_type.size + 
  aix_aixmarket_geniuminet_itch_v3_0.ranking_time.size

-- Display: Add Order Message
aix_aixmarket_geniuminet_itch_v3_0.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
aix_aixmarket_geniuminet_itch_v3_0.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = aix_aixmarket_geniuminet_itch_v3_0.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.lookup(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = aix_aixmarket_geniuminet_itch_v3_0.side.dissect(buffer, index, packet, parent)

  -- Ranking Sequence Number: Numeric
  index, ranking_sequence_number = aix_aixmarket_geniuminet_itch_v3_0.ranking_sequence_number.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = aix_aixmarket_geniuminet_itch_v3_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = aix_aixmarket_geniuminet_itch_v3_0.scaled_price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Numeric
  index, order_attributes = aix_aixmarket_geniuminet_itch_v3_0.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = aix_aixmarket_geniuminet_itch_v3_0.lot_type.dissect(buffer, index, packet, parent)

  -- Ranking Time: Numeric
  index, ranking_time = aix_aixmarket_geniuminet_itch_v3_0.ranking_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
aix_aixmarket_geniuminet_itch_v3_0.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.add_order_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book State Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_state_message = {}

-- Size: Order Book State Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_state_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.state_name.size

-- Display: Order Book State Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.lookup(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = aix_aixmarket_geniuminet_itch_v3_0.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_book_state_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
aix_aixmarket_geniuminet_itch_v3_0.system_event_message = {}

-- Size: System Event Message
aix_aixmarket_geniuminet_itch_v3_0.system_event_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.event_code.size

-- Display: System Event Message
aix_aixmarket_geniuminet_itch_v3_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
aix_aixmarket_geniuminet_itch_v3_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = aix_aixmarket_geniuminet_itch_v3_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
aix_aixmarket_geniuminet_itch_v3_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.system_event_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sell Status Message
aix_aixmarket_geniuminet_itch_v3_0.short_sell_status_message = {}

-- Size: Short Sell Status Message
aix_aixmarket_geniuminet_itch_v3_0.short_sell_status_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.short_sale_restriction.size

-- Display: Short Sell Status Message
aix_aixmarket_geniuminet_itch_v3_0.short_sell_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Sell Status Message
aix_aixmarket_geniuminet_itch_v3_0.short_sell_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.lookup(buffer, index, packet, parent)

  -- Short Sale Restriction: Numeric
  index, short_sale_restriction = aix_aixmarket_geniuminet_itch_v3_0.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Sell Status Message
aix_aixmarket_geniuminet_itch_v3_0.short_sell_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.short_sell_status_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.short_sell_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.short_sell_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.short_sell_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size Table Entry Message
aix_aixmarket_geniuminet_itch_v3_0.tick_size_table_entry_message = {}

-- Size: Tick Size Table Entry Message
aix_aixmarket_geniuminet_itch_v3_0.tick_size_table_entry_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.tick_size.size + 
  aix_aixmarket_geniuminet_itch_v3_0.price_from.size + 
  aix_aixmarket_geniuminet_itch_v3_0.price_to.size

-- Display: Tick Size Table Entry Message
aix_aixmarket_geniuminet_itch_v3_0.tick_size_table_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Table Entry Message
aix_aixmarket_geniuminet_itch_v3_0.tick_size_table_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric (record lookup)
  index, order_book_id, order_book_id_record = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.lookup(buffer, index, packet, parent)

  -- Tick Size: Numeric
  index, tick_size = aix_aixmarket_geniuminet_itch_v3_0.scaled_tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = aix_aixmarket_geniuminet_itch_v3_0.scaled_price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = aix_aixmarket_geniuminet_itch_v3_0.scaled_price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Table Entry Message
aix_aixmarket_geniuminet_itch_v3_0.tick_size_table_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.tick_size_table_entry_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.tick_size_table_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.tick_size_table_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.tick_size_table_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message = {}

-- Size: Order Book Directory Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.nanoseconds.size + 
  aix_aixmarket_geniuminet_itch_v3_0.order_book_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.symbol.size + 
  aix_aixmarket_geniuminet_itch_v3_0.long_name.size + 
  aix_aixmarket_geniuminet_itch_v3_0.isin.size + 
  aix_aixmarket_geniuminet_itch_v3_0.financial_product.size + 
  aix_aixmarket_geniuminet_itch_v3_0.trading_currency.size + 
  aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_price.size + 
  aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_nominal_value.size + 
  aix_aixmarket_geniuminet_itch_v3_0.odd_lot_size.size + 
  aix_aixmarket_geniuminet_itch_v3_0.round_lot_size.size + 
  aix_aixmarket_geniuminet_itch_v3_0.block_lot_size.size + 
  aix_aixmarket_geniuminet_itch_v3_0.nominal_value.size + 
  aix_aixmarket_geniuminet_itch_v3_0.reserved_1.size + 
  aix_aixmarket_geniuminet_itch_v3_0.underlying_order_book_id.size + 
  aix_aixmarket_geniuminet_itch_v3_0.strike_price.size + 
  aix_aixmarket_geniuminet_itch_v3_0.expiration_date.size + 
  aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_strike_price.size + 
  aix_aixmarket_geniuminet_itch_v3_0.put_or_call.size + 
  aix_aixmarket_geniuminet_itch_v3_0.ranking_type.size

-- Display: Order Book Directory Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = aix_aixmarket_geniuminet_itch_v3_0.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = aix_aixmarket_geniuminet_itch_v3_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = aix_aixmarket_geniuminet_itch_v3_0.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = aix_aixmarket_geniuminet_itch_v3_0.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = aix_aixmarket_geniuminet_itch_v3_0.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = aix_aixmarket_geniuminet_itch_v3_0.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = aix_aixmarket_geniuminet_itch_v3_0.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: Numeric
  index, number_of_decimals_in_price = aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: Numeric
  index, number_of_decimals_in_nominal_value = aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: Numeric
  index, odd_lot_size = aix_aixmarket_geniuminet_itch_v3_0.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = aix_aixmarket_geniuminet_itch_v3_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = aix_aixmarket_geniuminet_itch_v3_0.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = aix_aixmarket_geniuminet_itch_v3_0.scaled_nominal_value.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  if show.padding then
    index, reserved_1 = aix_aixmarket_geniuminet_itch_v3_0.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + aix_aixmarket_geniuminet_itch_v3_0.reserved_1.size
  end

  -- Underlying Order Book Id: Numeric
  index, underlying_order_book_id = aix_aixmarket_geniuminet_itch_v3_0.underlying_order_book_id.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = aix_aixmarket_geniuminet_itch_v3_0.scaled_strike_price.dissect(buffer, index, packet, parent)

  -- Expiration Date: Numeric
  index, expiration_date = aix_aixmarket_geniuminet_itch_v3_0.expiration_date.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Strike Price: Numeric
  index, number_of_decimals_in_strike_price = aix_aixmarket_geniuminet_itch_v3_0.number_of_decimals_in_strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Numeric
  index, put_or_call = aix_aixmarket_geniuminet_itch_v3_0.put_or_call.dissect(buffer, index, packet, parent)

  -- Ranking Type: Numeric
  index, ranking_type = aix_aixmarket_geniuminet_itch_v3_0.ranking_type.dissect(buffer, index, packet, parent)

  -- Cache Order Book Directory Message record by order_book_id
  if show.records and not packet.visited then
    aix_aixmarket_geniuminet_itch_v3_0.conversation.current.order_book_directory_message[order_book_id] = {
      record_frame = packet.number,
      record_previous = aix_aixmarket_geniuminet_itch_v3_0.conversation.current.order_book_directory_message[order_book_id],
      order_book_id = order_book_id,
      number_of_decimals_in_price = number_of_decimals_in_price,
    }
  end

  return index
end

-- Dissect: Order Book Directory Message
aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.order_book_directory_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
aix_aixmarket_geniuminet_itch_v3_0.seconds_message = {}

-- Size: Seconds Message
aix_aixmarket_geniuminet_itch_v3_0.seconds_message.size =
  aix_aixmarket_geniuminet_itch_v3_0.second.size

-- Display: Seconds Message
aix_aixmarket_geniuminet_itch_v3_0.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
aix_aixmarket_geniuminet_itch_v3_0.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = aix_aixmarket_geniuminet_itch_v3_0.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  aix_aixmarket_geniuminet_itch_v3_0.second.current = second

  if not packet.visited then
    aix_aixmarket_geniuminet_itch_v3_0.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Seconds Message
aix_aixmarket_geniuminet_itch_v3_0.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.seconds_message, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
aix_aixmarket_geniuminet_itch_v3_0.sequenced_message = {}

-- Dispatch: Sequenced Message
aix_aixmarket_geniuminet_itch_v3_0.sequenced_message.dispatch = {
  ["T"] = aix_aixmarket_geniuminet_itch_v3_0.seconds_message.dissect,
  ["R"] = aix_aixmarket_geniuminet_itch_v3_0.order_book_directory_message.dissect,
  ["L"] = aix_aixmarket_geniuminet_itch_v3_0.tick_size_table_entry_message.dissect,
  ["V"] = aix_aixmarket_geniuminet_itch_v3_0.short_sell_status_message.dissect,
  ["S"] = aix_aixmarket_geniuminet_itch_v3_0.system_event_message.dissect,
  ["O"] = aix_aixmarket_geniuminet_itch_v3_0.order_book_state_message.dissect,
  ["A"] = aix_aixmarket_geniuminet_itch_v3_0.add_order_message.dissect,
  ["E"] = aix_aixmarket_geniuminet_itch_v3_0.order_executed_message.dissect,
  ["C"] = aix_aixmarket_geniuminet_itch_v3_0.order_executed_with_price_message.dissect,
  ["D"] = aix_aixmarket_geniuminet_itch_v3_0.order_delete_message.dissect,
  ["Y"] = aix_aixmarket_geniuminet_itch_v3_0.order_book_flush_message.dissect,
  ["P"] = aix_aixmarket_geniuminet_itch_v3_0.trade_message.dissect,
  ["Z"] = aix_aixmarket_geniuminet_itch_v3_0.equilibrium_price_update_message.dissect,
}

-- Dissect: Sequenced Message
aix_aixmarket_geniuminet_itch_v3_0.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  local dissect = aix_aixmarket_geniuminet_itch_v3_0.sequenced_message.dispatch[sequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
aix_aixmarket_geniuminet_itch_v3_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
aix_aixmarket_geniuminet_itch_v3_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
aix_aixmarket_geniuminet_itch_v3_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
aix_aixmarket_geniuminet_itch_v3_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = aix_aixmarket_geniuminet_itch_v3_0.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number.current)
      end
      local value = flow.sequence.next
      if value ~= nil then
        if memo == nil then
          memo = {}
          flow.sequence.frames[packet.number] = memo
        end
        memo[#memo + 1] = value
        flow.sequence.next = value + 1
        if show.sequences then
          local sequence = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if aix_aixmarket_geniuminet_itch_v3_0.stream_frame ~= packet.number or aix_aixmarket_geniuminet_itch_v3_0.stream_occurrence >= #memo then
          aix_aixmarket_geniuminet_itch_v3_0.stream_frame = packet.number
          aix_aixmarket_geniuminet_itch_v3_0.stream_occurrence = 0
        end
        aix_aixmarket_geniuminet_itch_v3_0.stream_occurrence = aix_aixmarket_geniuminet_itch_v3_0.stream_occurrence + 1
        local value = memo[aix_aixmarket_geniuminet_itch_v3_0.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 13 values
  index, sequenced_message_type = aix_aixmarket_geniuminet_itch_v3_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 13 branches
  index = aix_aixmarket_geniuminet_itch_v3_0.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
aix_aixmarket_geniuminet_itch_v3_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = aix_aixmarket_geniuminet_itch_v3_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = aix_aixmarket_geniuminet_itch_v3_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = aix_aixmarket_geniuminet_itch_v3_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aix_aixmarket_geniuminet_itch_v3_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
aix_aixmarket_geniuminet_itch_v3_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
aix_aixmarket_geniuminet_itch_v3_0.login_rejected_packet.size =
  aix_aixmarket_geniuminet_itch_v3_0.reject_reason_code.size

-- Display: Login Rejected Packet
aix_aixmarket_geniuminet_itch_v3_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
aix_aixmarket_geniuminet_itch_v3_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String Enum with 2 values
  index, reject_reason_code = aix_aixmarket_geniuminet_itch_v3_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
aix_aixmarket_geniuminet_itch_v3_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
aix_aixmarket_geniuminet_itch_v3_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
aix_aixmarket_geniuminet_itch_v3_0.login_accepted_packet.size =
  aix_aixmarket_geniuminet_itch_v3_0.accepted_session.size + 
  aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number.size

-- Display: Login Accepted Packet
aix_aixmarket_geniuminet_itch_v3_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
aix_aixmarket_geniuminet_itch_v3_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Accepted Session: 10 Byte Ascii String
  index, accepted_session = aix_aixmarket_geniuminet_itch_v3_0.accepted_session.dissect(buffer, index, packet, parent)

  -- Accepted Sequence Number: 20 Byte Ascii String
  index, accepted_sequence_number = aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number.dissect(buffer, index, packet, parent)

  -- Store Accepted Sequence Number Value
  aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number.current = accepted_sequence_number

  if not packet.visited then
    aix_aixmarket_geniuminet_itch_v3_0.conversation.current.accepted_sequence_number.last = accepted_sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
aix_aixmarket_geniuminet_itch_v3_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
aix_aixmarket_geniuminet_itch_v3_0.debug_packet = {}

-- Calculate size of: Debug Packet
aix_aixmarket_geniuminet_itch_v3_0.debug_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Debug Text
  index = index + buffer(offset + index - 3, 2):uint()

  return index
end

-- Display: Debug Packet
aix_aixmarket_geniuminet_itch_v3_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
aix_aixmarket_geniuminet_itch_v3_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Debug Text
  local size_of_debug_text = packet_length - 1

  -- Debug Text: 0 Byte Ascii String
  index, debug_text = aix_aixmarket_geniuminet_itch_v3_0.debug_text.dissect(buffer, index, packet, parent, size_of_debug_text)

  return index
end

-- Dissect: Debug Packet
aix_aixmarket_geniuminet_itch_v3_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.debug_packet, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
aix_aixmarket_geniuminet_itch_v3_0.server_payload = {}

-- Dispatch: Server Payload
aix_aixmarket_geniuminet_itch_v3_0.server_payload.dispatch = {
  ["+"] = aix_aixmarket_geniuminet_itch_v3_0.debug_packet.dissect,
  ["A"] = aix_aixmarket_geniuminet_itch_v3_0.login_accepted_packet.dissect,
  ["J"] = aix_aixmarket_geniuminet_itch_v3_0.login_rejected_packet.dissect,
  ["S"] = aix_aixmarket_geniuminet_itch_v3_0.sequenced_data_packet.dissect,
  ["H"] = aix_aixmarket_geniuminet_itch_v3_0.server_heartbeat.dissect,
  ["Z"] = aix_aixmarket_geniuminet_itch_v3_0.end_of_session.dissect,
}

-- Dissect: Server Payload
aix_aixmarket_geniuminet_itch_v3_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  local dissect = aix_aixmarket_geniuminet_itch_v3_0.server_payload.dispatch[server_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
aix_aixmarket_geniuminet_itch_v3_0.server_packet_header = {}

-- Size: Server Packet Header
aix_aixmarket_geniuminet_itch_v3_0.server_packet_header.size =
  aix_aixmarket_geniuminet_itch_v3_0.packet_length.size + 
  aix_aixmarket_geniuminet_itch_v3_0.server_packet_type.size

-- Display: Server Packet Header
aix_aixmarket_geniuminet_itch_v3_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
aix_aixmarket_geniuminet_itch_v3_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = aix_aixmarket_geniuminet_itch_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = aix_aixmarket_geniuminet_itch_v3_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
aix_aixmarket_geniuminet_itch_v3_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.server_packet_header, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
aix_aixmarket_geniuminet_itch_v3_0.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
aix_aixmarket_geniuminet_itch_v3_0.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
aix_aixmarket_geniuminet_itch_v3_0.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = aix_aixmarket_geniuminet_itch_v3_0.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = aix_aixmarket_geniuminet_itch_v3_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
aix_aixmarket_geniuminet_itch_v3_0.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = aix_aixmarket_geniuminet_itch_v3_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = aix_aixmarket_geniuminet_itch_v3_0.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aix_aixmarket_geniuminet_itch_v3_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < aix_aixmarket_geniuminet_itch_v3_0.server_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
aix_aixmarket_geniuminet_itch_v3_0.server_packet = {}

-- Verify required size of Tcp packet
aix_aixmarket_geniuminet_itch_v3_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= aix_aixmarket_geniuminet_itch_v3_0.server_packet_header.size
end

-- Dissect Server Packet
aix_aixmarket_geniuminet_itch_v3_0.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = aix_aixmarket_geniuminet_itch_v3_0.conversation.data(packet)
  if not packet.visited then
    data.accepted_sequence_number.frames[packet.number] = data.accepted_sequence_number.last
    data.second.frames[packet.number] = data.second.last
  end
  aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number.current = data.accepted_sequence_number.frames[packet.number]
  aix_aixmarket_geniuminet_itch_v3_0.second.current = data.second.frames[packet.number]
  aix_aixmarket_geniuminet_itch_v3_0.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_server_soup_bin_tcp_packet):tvb()
      index = aix_aixmarket_geniuminet_itch_v3_0.server_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_server_soup_bin_tcp_packet)
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

-- Logout Request
aix_aixmarket_geniuminet_itch_v3_0.logout_request = {}

-- Display: Logout Request
aix_aixmarket_geniuminet_itch_v3_0.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
aix_aixmarket_geniuminet_itch_v3_0.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = aix_aixmarket_geniuminet_itch_v3_0.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
aix_aixmarket_geniuminet_itch_v3_0.client_heartbeat = {}

-- Display: Client Heartbeat
aix_aixmarket_geniuminet_itch_v3_0.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
aix_aixmarket_geniuminet_itch_v3_0.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = aix_aixmarket_geniuminet_itch_v3_0.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = aix_aixmarket_geniuminet_itch_v3_0.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
aix_aixmarket_geniuminet_itch_v3_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = aix_aixmarket_geniuminet_itch_v3_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = aix_aixmarket_geniuminet_itch_v3_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = aix_aixmarket_geniuminet_itch_v3_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aix_aixmarket_geniuminet_itch_v3_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
aix_aixmarket_geniuminet_itch_v3_0.login_request_packet = {}

-- Size: Login Request Packet
aix_aixmarket_geniuminet_itch_v3_0.login_request_packet.size =
  aix_aixmarket_geniuminet_itch_v3_0.username.size + 
  aix_aixmarket_geniuminet_itch_v3_0.password.size + 
  aix_aixmarket_geniuminet_itch_v3_0.requested_session.size + 
  aix_aixmarket_geniuminet_itch_v3_0.requested_sequence_number.size

-- Display: Login Request Packet
aix_aixmarket_geniuminet_itch_v3_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
aix_aixmarket_geniuminet_itch_v3_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = aix_aixmarket_geniuminet_itch_v3_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = aix_aixmarket_geniuminet_itch_v3_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = aix_aixmarket_geniuminet_itch_v3_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = aix_aixmarket_geniuminet_itch_v3_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
aix_aixmarket_geniuminet_itch_v3_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.login_request_packet, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
aix_aixmarket_geniuminet_itch_v3_0.client_payload = {}

-- Dispatch: Client Payload
aix_aixmarket_geniuminet_itch_v3_0.client_payload.dispatch = {
  ["+"] = aix_aixmarket_geniuminet_itch_v3_0.debug_packet.dissect,
  ["L"] = aix_aixmarket_geniuminet_itch_v3_0.login_request_packet.dissect,
  ["U"] = aix_aixmarket_geniuminet_itch_v3_0.unsequenced_data_packet.dissect,
  ["R"] = aix_aixmarket_geniuminet_itch_v3_0.client_heartbeat.dissect,
  ["O"] = aix_aixmarket_geniuminet_itch_v3_0.logout_request.dissect,
}

-- Dissect: Client Payload
aix_aixmarket_geniuminet_itch_v3_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  local dissect = aix_aixmarket_geniuminet_itch_v3_0.client_payload.dispatch[client_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
aix_aixmarket_geniuminet_itch_v3_0.client_packet_header = {}

-- Size: Client Packet Header
aix_aixmarket_geniuminet_itch_v3_0.client_packet_header.size =
  aix_aixmarket_geniuminet_itch_v3_0.packet_length.size + 
  aix_aixmarket_geniuminet_itch_v3_0.client_packet_type.size

-- Display: Client Packet Header
aix_aixmarket_geniuminet_itch_v3_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
aix_aixmarket_geniuminet_itch_v3_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = aix_aixmarket_geniuminet_itch_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = aix_aixmarket_geniuminet_itch_v3_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
aix_aixmarket_geniuminet_itch_v3_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.client_packet_header, buffer(offset, 0))
    local index = aix_aixmarket_geniuminet_itch_v3_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aix_aixmarket_geniuminet_itch_v3_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aix_aixmarket_geniuminet_itch_v3_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
aix_aixmarket_geniuminet_itch_v3_0.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
aix_aixmarket_geniuminet_itch_v3_0.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
aix_aixmarket_geniuminet_itch_v3_0.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = aix_aixmarket_geniuminet_itch_v3_0.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = aix_aixmarket_geniuminet_itch_v3_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
aix_aixmarket_geniuminet_itch_v3_0.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = aix_aixmarket_geniuminet_itch_v3_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = aix_aixmarket_geniuminet_itch_v3_0.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aix_aixmarket_geniuminet_itch_v3_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < aix_aixmarket_geniuminet_itch_v3_0.client_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
aix_aixmarket_geniuminet_itch_v3_0.client_packet = {}

-- Verify required size of Tcp packet
aix_aixmarket_geniuminet_itch_v3_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= aix_aixmarket_geniuminet_itch_v3_0.client_packet_header.size
end

-- Dissect Client Packet
aix_aixmarket_geniuminet_itch_v3_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_client_soup_bin_tcp_packet):tvb()
      index = aix_aixmarket_geniuminet_itch_v3_0.client_soup_bin_tcp_packet.dissect(frame, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_aix_aixmarket_geniuminet_itch_v3_0.init()
  aix_aixmarket_geniuminet_itch_v3_0.accepted_sequence_number.current = nil
  aix_aixmarket_geniuminet_itch_v3_0.second.current = nil
  aix_aixmarket_geniuminet_itch_v3_0.conversation.current = nil
  aix_aixmarket_geniuminet_itch_v3_0.conversation.flows = {}
end

-- Connection roles for Aix AixMarket GeniumInet Itch 3.0: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local source = endpoint(packet.src, packet.src_port)
  local destination = endpoint(packet.dst, packet.dst_port)

  if source < destination then
    return source.." "..destination
  end

  return destination.." "..source
end


-- Connection role of the frame's sender
aix_aixmarket_geniuminet_itch_v3_0.role = function(packet)
  if omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.acceptor_port

  if acceptor_port ~= 0 and packet.dst_port == acceptor_port then
    return "initiator"
  end

  if acceptor_port ~= 0 and packet.src_port == acceptor_port then
    return "acceptor"
  end

  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)

  if initiators[key] == nil then
    initiators[key] = sender
  end

  local sender_initiated = initiators[key] == sender

  if omi_aix_aixmarket_geniuminet_itch_v3_0.prefs.swap_sides then
    sender_initiated = not sender_initiated
  end

  if swapped[key] then
    sender_initiated = not sender_initiated
  end

  if sender_initiated then
    return "initiator"
  end

  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
aix_aixmarket_geniuminet_itch_v3_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Aix AixMarket GeniumInet Itch 3.0
function omi_aix_aixmarket_geniuminet_itch_v3_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_aix_aixmarket_geniuminet_itch_v3_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_aix_aixmarket_geniuminet_itch_v3_0, buffer(), omi_aix_aixmarket_geniuminet_itch_v3_0.description, "("..buffer:len().." Bytes)")
  local role = aix_aixmarket_geniuminet_itch_v3_0.role(packet)

  if role == "initiator" then
    return aix_aixmarket_geniuminet_itch_v3_0.client_packet.dissect(buffer, packet, protocol)
  end

  return aix_aixmarket_geniuminet_itch_v3_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
aix_aixmarket_geniuminet_itch_v3_0.client_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local client_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if client_packet_type == "+" then
    return true
  end

  -- Login Request Packet
  if client_packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet
  if client_packet_type == "U" then
    return true
  end

  -- Client Heartbeat
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request
  if client_packet_type == "O" then
    return true
  end

  return false
end

-- Fingerprint of Server Packet: would its message dispatch accept this frame?
aix_aixmarket_geniuminet_itch_v3_0.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local server_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if server_packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if server_packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if server_packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet
  if server_packet_type == "S" then
    return true
  end

  -- Server Heartbeat
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session
  if server_packet_type == "Z" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Aix AixMarket GeniumInet Itch 3.0 (Tcp)
local function omi_aix_aixmarket_geniuminet_itch_v3_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aix_aixmarket_geniuminet_itch_v3_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp client packet message dispatch
  if not aix_aixmarket_geniuminet_itch_v3_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aix_aixmarket_geniuminet_itch_v3_0
  omi_aix_aixmarket_geniuminet_itch_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Aix AixMarket GeniumInet Itch 3.0 (Tcp)
local function omi_aix_aixmarket_geniuminet_itch_v3_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aix_aixmarket_geniuminet_itch_v3_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp server packet message dispatch
  if not aix_aixmarket_geniuminet_itch_v3_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aix_aixmarket_geniuminet_itch_v3_0
  omi_aix_aixmarket_geniuminet_itch_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Aix AixMarket GeniumInet Itch 3.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_aix_aixmarket_geniuminet_itch_v3_0_tcp_heuristic(buffer, packet, parent)
  local role = aix_aixmarket_geniuminet_itch_v3_0.role(packet)
  local initiator = omi_aix_aixmarket_geniuminet_itch_v3_0_tcp_initiator_heuristic
  local acceptor = omi_aix_aixmarket_geniuminet_itch_v3_0_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  aix_aixmarket_geniuminet_itch_v3_0.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  aix_aixmarket_geniuminet_itch_v3_0.swap(packet)

  return false
end

-- Register Heuristics for Aix AixMarket GeniumInet Itch 3.0
omi_aix_aixmarket_geniuminet_itch_v3_0:register_heuristic("tcp", omi_aix_aixmarket_geniuminet_itch_v3_0_tcp_heuristic)

-- Register Aix AixMarket GeniumInet Itch 3.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_aix_aixmarket_geniuminet_itch_v3_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Astana International Exchange
--   Version: 3.0
--   Date: Thursday, June 4, 2026
--   Specification: new_ITCH_ProtSpec_AIX_v3.pdf
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
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
