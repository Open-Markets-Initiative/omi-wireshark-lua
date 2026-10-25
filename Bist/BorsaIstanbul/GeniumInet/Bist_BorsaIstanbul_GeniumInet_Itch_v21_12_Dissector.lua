-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bist BorsaIstanbul GeniumInet Itch 21.12 Protocol
local omi_bist_borsaistanbul_geniuminet_itch_v21_12 = Proto("Omi.Bist.BorsaIstanbul.GeniumInet.Itch.v21.12", "Bist BorsaIstanbul GeniumInet Itch 21.12")

-- Protocol table
local bist_borsaistanbul_geniuminet_itch_v21_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bist BorsaIstanbul GeniumInet Itch 21.12 Fields
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.available_ask_quantity_at_equilibrium_price = ProtoField.new("Available Ask Quantity At Equilibrium Price", "bist.borsaistanbul.geniuminet.itch.v21.12.availableaskquantityatequilibriumprice", ftypes.UINT64, nil, nil, nil, "Quantity at equilibrium price on the ask side")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.available_bid_quantity_at_equilibrium_price = ProtoField.new("Available Bid Quantity At Equilibrium Price", "bist.borsaistanbul.geniuminet.itch.v21.12.availablebidquantityatequilibriumprice", ftypes.UINT64, nil, nil, nil, "Quantity at equilibrium price on the bid side")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.bait_implied_order = ProtoField.new("Bait Implied Order", "bist.borsaistanbul.geniuminet.itch.v21.12.baitimpliedorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000, "Bait/implied order")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.best_ask_price = ProtoField.new("Best Ask Price", "bist.borsaistanbul.geniuminet.itch.v21.12.bestaskprice", ftypes.INT32)
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "bist.borsaistanbul.geniuminet.itch.v21.12.bestaskquantity", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.best_bid_price = ProtoField.new("Best Bid Price", "bist.borsaistanbul.geniuminet.itch.v21.12.bestbidprice", ftypes.INT32)
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "bist.borsaistanbul.geniuminet.itch.v21.12.bestbidquantity", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.block_lot_size = ProtoField.new("Block Lot Size", "bist.borsaistanbul.geniuminet.itch.v21.12.blocklotsize", ftypes.UINT32, nil, nil, nil, "Indicates the number of securities that represents a block lot for the order book. A value of 0 indicates that this lot type is undefined for the order book")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.combination_order_book_id = ProtoField.new("Combination Order Book Id", "bist.borsaistanbul.geniuminet.itch.v21.12.combinationorderbookid", ftypes.UINT32, nil, nil, nil, "Denotes the primary identifier of the combination order book")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.combo_group_id = ProtoField.new("Combo Group Id", "bist.borsaistanbul.geniuminet.itch.v21.12.combogroupid", ftypes.UINT32, nil, nil, nil, "Used to group combination order book executions and the trades in the constituent order books together")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.decimals_in_nominal_value = ProtoField.new("Decimals In Nominal Value", "bist.borsaistanbul.geniuminet.itch.v21.12.decimalsinnominalvalue", ftypes.UINT16, nil, nil, nil, "Number of decimals in Nominal Value")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.decimals_in_price = ProtoField.new("Decimals In Price", "bist.borsaistanbul.geniuminet.itch.v21.12.decimalsinprice", ftypes.UINT16, nil, nil, nil, "Number of decimals used in price for this order book. A value of 256 means that the instrument is traded in fractions (each fraction is 1/256)")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.decimals_in_strike_price = ProtoField.new("Decimals In Strike Price", "bist.borsaistanbul.geniuminet.itch.v21.12.decimalsinstrikeprice", ftypes.UINT16, nil, nil, nil, "Number of decimals used in Strike Price for this order book. Only applicable for derivative instruments")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "bist.borsaistanbul.geniuminet.itch.v21.12.equilibriumprice", ftypes.INT32, nil, nil, nil, "Equilibrium Price. If bit 31 is set (MIN_INT) it means that no price is available")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.event_code = ProtoField.new("Event Code", "bist.borsaistanbul.geniuminet.itch.v21.12.eventcode", ftypes.STRING, nil, nil, nil, "The system supports the following event codes on a daily basis")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.executed_quantity = ProtoField.new("Executed Quantity", "bist.borsaistanbul.geniuminet.itch.v21.12.executedquantity", ftypes.UINT64, nil, nil, nil, "The quantity being executed")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.expiration_date = ProtoField.new("Expiration Date", "bist.borsaistanbul.geniuminet.itch.v21.12.expirationdate", ftypes.UINT32, nil, nil, nil, "Date of order expiration. Only applicable for derivative instruments. Valid format is YYYYMMDD")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.financial_product = ProtoField.new("Financial Product", "bist.borsaistanbul.geniuminet.itch.v21.12.financialproduct", ftypes.UINT8, nil, nil, nil, "Financial product type of the order book")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.isin = ProtoField.new("Isin", "bist.borsaistanbul.geniuminet.itch.v21.12.isin", ftypes.STRING, nil, nil, nil, "ISIN code identifying security")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.leg_order_book_id = ProtoField.new("Leg Order Book Id", "bist.borsaistanbul.geniuminet.itch.v21.12.legorderbookid", ftypes.UINT32, nil, nil, nil, "Order book ID of the leg instrument")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.leg_ratio = ProtoField.new("Leg Ratio", "bist.borsaistanbul.geniuminet.itch.v21.12.legratio", ftypes.UINT32)
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.leg_side = ProtoField.new("Leg Side", "bist.borsaistanbul.geniuminet.itch.v21.12.legside", ftypes.STRING, nil, nil, nil, "Leg side of the combination")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.long_name = ProtoField.new("Long Name", "bist.borsaistanbul.geniuminet.itch.v21.12.longname", ftypes.STRING, nil, nil, nil, "Human-readable long name of security")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.lot_type = ProtoField.new("Lot Type", "bist.borsaistanbul.geniuminet.itch.v21.12.lottype", ftypes.UINT8)
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.match_id = ProtoField.new("Match Id", "bist.borsaistanbul.geniuminet.itch.v21.12.matchid", ftypes.UINT64, nil, nil, nil, "Assigned by the system to each match executed")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_count = ProtoField.new("Message Count", "bist.borsaistanbul.geniuminet.itch.v21.12.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_length = ProtoField.new("Message Length", "bist.borsaistanbul.geniuminet.itch.v21.12.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_type = ProtoField.new("Message Type", "bist.borsaistanbul.geniuminet.itch.v21.12.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.nanoseconds = ProtoField.new("Nanoseconds", "bist.borsaistanbul.geniuminet.itch.v21.12.nanoseconds", ftypes.UINT32, nil, nil, nil, "Nanoseconds portion of the timestamp")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.new_order_book_position = ProtoField.new("New Order Book Position", "bist.borsaistanbul.geniuminet.itch.v21.12.neworderbookposition", ftypes.UINT32, nil, nil, nil, "New rank within order book. Superseded by ranking time/ranking sequence number logic; not shown in current ranking logic")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.nominal_value = ProtoField.new("Nominal Value", "bist.borsaistanbul.geniuminet.itch.v21.12.nominalvalue", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.number_of_legs = ProtoField.new("Number Of Legs", "bist.borsaistanbul.geniuminet.itch.v21.12.numberoflegs", ftypes.UINT8, nil, nil, nil, "Number of legs. Only applicable for combination instruments")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.occurred_at_cross = ProtoField.new("Occurred At Cross", "bist.borsaistanbul.geniuminet.itch.v21.12.occurredatcross", ftypes.STRING, nil, nil, nil, "Whether the trade occurred at the cross")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "bist.borsaistanbul.geniuminet.itch.v21.12.oddlotsize", ftypes.UINT32, nil, nil, nil, "Indicates the number of securities that represents an odd lot for the order book. A value of 0 indicates that this lot type is undefined for the order book")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_attributes = ProtoField.new("Order Attributes", "bist.borsaistanbul.geniuminet.itch.v21.12.orderattributes", ftypes.STRING, nil, nil, nil, "Additional order attributes. Applicable types may be defined by the marketplace")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_book_id = ProtoField.new("Order Book Id", "bist.borsaistanbul.geniuminet.itch.v21.12.orderbookid", ftypes.UINT32, nil, nil, nil, "Denotes the primary identifier of an order book. Expired Order book IDs may be reused for new instruments.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_id = ProtoField.new("Order Id", "bist.borsaistanbul.geniuminet.itch.v21.12.orderid", ftypes.UINT64, nil, nil, nil, "The identifier assigned to the new order. Only unique per order book and side")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.participant_id = ProtoField.new("Participant Id", "bist.borsaistanbul.geniuminet.itch.v21.12.participantid", ftypes.STRING, nil, nil, nil, "Market participant identifier associated with the entered order")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.price = ProtoField.new("Price", "bist.borsaistanbul.geniuminet.itch.v21.12.price", ftypes.INT32, nil, nil, nil, "The display price of the new order. If bit 31 is set (MIN_INT), this represents a market order")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.price_from = ProtoField.new("Price From", "bist.borsaistanbul.geniuminet.itch.v21.12.pricefrom", ftypes.INT32, nil, nil, nil, "Start of price range for this entry")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.price_to = ProtoField.new("Price To", "bist.borsaistanbul.geniuminet.itch.v21.12.priceto", ftypes.INT32, nil, nil, nil, "End of price range for this entry. Zero (0) means infinity")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.printable = ProtoField.new("Printable", "bist.borsaistanbul.geniuminet.itch.v21.12.printable", ftypes.STRING, nil, nil, nil, "Indicates if the trade should be included in trade tickers and volume calculations")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.put_or_call = ProtoField.new("Put Or Call", "bist.borsaistanbul.geniuminet.itch.v21.12.putorcall", ftypes.UINT8, nil, nil, nil, "Option type. A value of 0 indicates that Put or Call is undefined for the order book")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.quantity = ProtoField.new("Quantity", "bist.borsaistanbul.geniuminet.itch.v21.12.quantity", ftypes.UINT64, nil, nil, nil, "The visible quantity of the order. Orders with an undisclosed quantity will have this field set to 0")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.ranking_sequence_number = ProtoField.new("Ranking Sequence Number", "bist.borsaistanbul.geniuminet.itch.v21.12.rankingsequencenumber", ftypes.UINT32, nil, nil, nil, "Transaction-based and sequential number starting from 1. Used only in ranking logic with ranking time. Does not show order book position")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.ranking_time = ProtoField.new("Ranking Time", "bist.borsaistanbul.geniuminet.itch.v21.12.rankingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Ranking timestamp, in nanoseconds")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.ranking_time_utc = ProtoField.new("Ranking Time", "bist.borsaistanbul.geniuminet.itch.v21.12.rankingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Ranking timestamp, in nanoseconds")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.ranking_type = ProtoField.new("Ranking Type", "bist.borsaistanbul.geniuminet.itch.v21.12.rankingtype", ftypes.UINT8, nil, nil, nil, "Specifies what ranking type should be used. 1 = Price Time")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.reserved_13 = ProtoField.new("Reserved 13", "bist.borsaistanbul.geniuminet.itch.v21.12.reserved13", ftypes.UINT16, nil, base.DEC, 0x1FFF, "Reserved")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.reserved_14 = ProtoField.new("Reserved 14", "bist.borsaistanbul.geniuminet.itch.v21.12.reserved14", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.reserved_2 = ProtoField.new("Reserved 2", "bist.borsaistanbul.geniuminet.itch.v21.12.reserved2", ftypes.UINT16, nil, base.DEC, 0xC000, "Reserved")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.reserved_4 = ProtoField.new("Reserved 4", "bist.borsaistanbul.geniuminet.itch.v21.12.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.round_lot_size = ProtoField.new("Round Lot Size", "bist.borsaistanbul.geniuminet.itch.v21.12.roundlotsize", ftypes.UINT32, nil, nil, nil, "Indicates the quantity that represents a round lot for the issue")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.second = ProtoField.new("Second", "bist.borsaistanbul.geniuminet.itch.v21.12.second", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Unix seconds")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.second_utc = ProtoField.new("Second", "bist.borsaistanbul.geniuminet.itch.v21.12.second.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Unix seconds")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.sequence_number = ProtoField.new("Sequence Number", "bist.borsaistanbul.geniuminet.itch.v21.12.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.session = ProtoField.new("Session", "bist.borsaistanbul.geniuminet.itch.v21.12.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "bist.borsaistanbul.geniuminet.itch.v21.12.shortsalerestriction", ftypes.UINT8, nil, nil, nil, "Specifies Short Sell status and what Short Sell validation rule should be used")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.side = ProtoField.new("Side", "bist.borsaistanbul.geniuminet.itch.v21.12.side", ftypes.STRING, nil, nil, nil, "Buy or sell order")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.state_name = ProtoField.new("State Name", "bist.borsaistanbul.geniuminet.itch.v21.12.statename", ftypes.STRING, nil, nil, nil, "Name of Order Book State")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.strike_price = ProtoField.new("Strike Price", "bist.borsaistanbul.geniuminet.itch.v21.12.strikeprice", ftypes.INT32, nil, nil, nil, "Only applicable for derivative instruments")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.symbol = ProtoField.new("Symbol", "bist.borsaistanbul.geniuminet.itch.v21.12.symbol", ftypes.STRING, nil, nil, nil, "Security short name")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.tick_size = ProtoField.new("Tick Size", "bist.borsaistanbul.geniuminet.itch.v21.12.ticksize", ftypes.UINT64, nil, nil, nil, "Tick Size for the given price range")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.trade_price = ProtoField.new("Trade Price", "bist.borsaistanbul.geniuminet.itch.v21.12.tradeprice", ftypes.INT32, nil, nil, nil, "Execution price")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.trading_currency = ProtoField.new("Trading Currency", "bist.borsaistanbul.geniuminet.itch.v21.12.tradingcurrency", ftypes.STRING)
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.underlying_order_book_id = ProtoField.new("Underlying Order Book Id", "bist.borsaistanbul.geniuminet.itch.v21.12.underlyingorderbookid", ftypes.UINT32, nil, nil, nil, "Order book ID of underlying instrument. Only applicable for derivative instruments except for combinations")

-- Bist BorsaIstanbul GeniumInet Itch 21.12 Framing
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message = ProtoField.new("Message", "bist.borsaistanbul.geniuminet.itch.v21.12.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_header = ProtoField.new("Message Header", "bist.borsaistanbul.geniuminet.itch.v21.12.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.packet = ProtoField.new("Packet", "bist.borsaistanbul.geniuminet.itch.v21.12.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.packet_header = ProtoField.new("Packet Header", "bist.borsaistanbul.geniuminet.itch.v21.12.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Bist BorsaIstanbul GeniumInet 21.12 Application Messages
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.add_order_no_mpid_attribution = ProtoField.new("Add Order No Mpid Attribution", "bist.borsaistanbul.geniuminet.itch.v21.12.addordernompidattribution", ftypes.STRING, nil, nil, nil, "Indicates that a new order has been accepted by the Genium INET Trading system and was added to the displayable book. Generated for unattributed orders. The message includes an Order ID that is unique per order book and side.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.add_order_with_mpid_attribution = ProtoField.new("Add Order With Mpid Attribution", "bist.borsaistanbul.geniuminet.itch.v21.12.addorderwithmpidattribution", ftypes.STRING, nil, nil, nil, "Note: This message is not used, it remains in the ITCH specification for future reference and is not applicable for BIST markets. Would be generated for attributed orders and quotations entered into the Genium INET Trading system.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.combination_order_book_leg = ProtoField.new("Combination Order Book Leg", "bist.borsaistanbul.geniuminet.itch.v21.12.combinationorderbookleg", ftypes.STRING, nil, nil, nil, "Provides a mapping between a combination order book and one of the combination leg order books. One message is generated per leg that the combination consists of.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.equilibrium_price_update = ProtoField.new("Equilibrium Price Update", "bist.borsaistanbul.geniuminet.itch.v21.12.equilibriumpriceupdate", ftypes.STRING, nil, nil, nil, "Used when auctions occur. Provides the changes in equilibrium price. Markets by order dissemination may be disabled during auctions by configuration.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_book_directory = ProtoField.new("Order Book Directory", "bist.borsaistanbul.geniuminet.itch.v21.12.orderbookdirectory", ftypes.STRING, nil, nil, nil, "At the start of each trading day, Order book directory messages are disseminated for all active securities, including halted securities. Intra-day transmissions may occur when new order books are added or updates to existing order books occur.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_book_flush_message = ProtoField.new("Order Book Flush Message", "bist.borsaistanbul.geniuminet.itch.v21.12.orderbookflushmessage", ftypes.STRING, nil, nil, nil, "Sent whenever an order book is flushed. All remaining orders are no longer accessible and should be removed from the book. Markets by order dissemination may be disabled during auctions by configuration; in such cases every existing order of the order book is removed by this message immediately prior to the auction. Owners of these orders must not interpret this as order cancellations, and should use the private order flow to determine the state of their orders.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_book_state_message = ProtoField.new("Order Book State Message", "bist.borsaistanbul.geniuminet.itch.v21.12.orderbookstatemessage", ftypes.STRING, nil, nil, nil, "Relays information on order book state changes.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_delete_message = ProtoField.new("Order Delete Message", "bist.borsaistanbul.geniuminet.itch.v21.12.orderdeletemessage", ftypes.STRING, nil, nil, nil, "Sent whenever an order on the book is being deleted. There will be no remaining quantity, so the order should be removed from the book. Normally, no Order Delete message is sent when an order is completely filled.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_executed_message = ProtoField.new("Order Executed Message", "bist.borsaistanbul.geniuminet.itch.v21.12.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Sent whenever an order on the book is executed in whole or in part. Modify Order messages always include the Order ID, Order book ID and Side of the Add Order to which the update applies.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "bist.borsaistanbul.geniuminet.itch.v21.12.orderexecutedwithpricemessage", ftypes.STRING, nil, nil, nil, "Sent in the relatively rare event that an order on the book is executed in whole or in part with a price different than the initial display price. Combination orders on the book that execute will always be represented by this message, with the Printable flag set to N; leg trades are published with the Trade message and are printable.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_replace_message = ProtoField.new("Order Replace Message", "bist.borsaistanbul.geniuminet.itch.v21.12.orderreplacemessage", ftypes.STRING, nil, nil, nil, "Note: This message is not used, it remains in the ITCH specification for future reference and is not applicable for BIST markets. A replace of an existing order would be represented by an Order Delete Message followed by an Order Add Message but the original order ID would remain. This message would be sent whenever an order on the book has been cancel-replaced. The Side and Order book ID remain the same as the original order.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.seconds_message = ProtoField.new("Seconds Message", "bist.borsaistanbul.geniuminet.itch.v21.12.secondsmessage", ftypes.STRING, nil, nil, nil, "Sent every second for which at least one ITCH message is being generated. Contains the number of seconds since the start of 1970-01-01 00:00:00 UTC, also called Unix Time.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.short_sell_status = ProtoField.new("Short Sell Status", "bist.borsaistanbul.geniuminet.itch.v21.12.shortsellstatus", ftypes.STRING, nil, nil, nil, "Indicates the short sell rules of an order book. Sent for order books which might have short sell allowing prior to the start of system. If an order book is absent from this message, clients should assume that the order book has no short selling rules at the start-of-day reference data messages. If short sell rules change during the day for an order book, this message will be re-sent for that order book.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.system_event_message = ProtoField.new("System Event Message", "bist.borsaistanbul.geniuminet.itch.v21.12.systemeventmessage", ftypes.STRING, nil, nil, nil, "Used to signal a market or data feed handler event.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.tick_size_table_entry = ProtoField.new("Tick Size Table Entry", "bist.borsaistanbul.geniuminet.itch.v21.12.ticksizetableentry", ftypes.STRING, nil, nil, nil, "Contains information on a tick size for a price range. Together, all Tick Size messages with the same order book ID form a complete Tick Size Table.")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.trade_message = ProtoField.new("Trade Message", "bist.borsaistanbul.geniuminet.itch.v21.12.trademessage", ftypes.STRING, nil, nil, nil, "Designed to provide execution details for normal match events involving non-displayable order types. Also used to publish individual cross trades. Since no Add Order Message is generated when a non-displayed order is initially received, the Order Executed message cannot be used for all matches; the Trade Message reports a match for a non-displayable order in the book. Trade Messages should be included in trade tickers as well as volume and other market statistics.")

-- Bist BorsaIstanbul GeniumInet 21.12 Session Messages
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.end_of_session = ProtoField.new("End Of Session", "bist.borsaistanbul.geniuminet.itch.v21.12.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.heartbeat = ProtoField.new("Heartbeat", "bist.borsaistanbul.geniuminet.itch.v21.12.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Bist BorsaIstanbul GeniumInet Itch 21.12 Generated Fields
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_index = ProtoField.new("Message Index", "bist.borsaistanbul.geniuminet.itch.v21.12.messageindex", ftypes.UINT16)
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "bist.borsaistanbul.geniuminet.itch.v21.12.messagesequencenumber", ftypes.UINT64)
omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.timestamp = ProtoField.new("Timestamp", "bist.borsaistanbul.geniuminet.itch.v21.12.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Bist BorsaIstanbul GeniumInet Itch 21.12 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
bist_borsaistanbul_geniuminet_itch_v21_12.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
bist_borsaistanbul_geniuminet_itch_v21_12.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bist BorsaIstanbul GeniumInet Itch 21.12 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Bist BorsaIstanbul GeniumInet Itch 21.12 Show Options
omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_application_messages then
    show.application_messages = omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_application_messages
  end
  if show.headers ~= omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_headers then
    show.headers = omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_headers
  end
  if show.structs ~= omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_structs then
    show.structs = omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_structs
  end
  if show.indexes ~= omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_indexes then
    show.indexes = omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_indexes
  end
  if show.sequences ~= omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_sequences then
    show.sequences = omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.show_sequences
  end
  if bist_borsaistanbul_geniuminet_itch_v21_12.format_timestamp ~= omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.format_timestamp then
    bist_borsaistanbul_geniuminet_itch_v21_12.format_timestamp = omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.format_timestamp
  end
  if bist_borsaistanbul_geniuminet_itch_v21_12.absolute_time_base ~= omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.absolute_time_base then
    bist_borsaistanbul_geniuminet_itch_v21_12.absolute_time_base = omi_bist_borsaistanbul_geniuminet_itch_v21_12.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
bist_borsaistanbul_geniuminet_itch_v21_12.conversation = {}
bist_borsaistanbul_geniuminet_itch_v21_12.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
bist_borsaistanbul_geniuminet_itch_v21_12.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
bist_borsaistanbul_geniuminet_itch_v21_12.conversation.data = function(packet)
  local key = bist_borsaistanbul_geniuminet_itch_v21_12.conversation.key(packet)
  local data = bist_borsaistanbul_geniuminet_itch_v21_12.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} } }
    bist_borsaistanbul_geniuminet_itch_v21_12.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
bist_borsaistanbul_geniuminet_itch_v21_12.conversation.current = nil


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
-- Bist BorsaIstanbul GeniumInet Itch 21.12 Fields
-----------------------------------------------------------------------

-- Available Ask Quantity At Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.available_ask_quantity_at_equilibrium_price = {}

-- Size: Available Ask Quantity At Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.available_ask_quantity_at_equilibrium_price.size = 8

-- Display: Available Ask Quantity At Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.available_ask_quantity_at_equilibrium_price.display = function(value)
  return "Available Ask Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Ask Quantity At Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.available_ask_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.available_ask_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.available_ask_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.available_ask_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Available Bid Quantity At Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.available_bid_quantity_at_equilibrium_price = {}

-- Size: Available Bid Quantity At Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.available_bid_quantity_at_equilibrium_price.size = 8

-- Display: Available Bid Quantity At Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.available_bid_quantity_at_equilibrium_price.display = function(value)
  return "Available Bid Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Bid Quantity At Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.available_bid_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.available_bid_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.available_bid_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.available_bid_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Best Ask Price
bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_price = {}

-- Size: Best Ask Price
bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_price.size = 4

-- Display: Best Ask Price
bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_price.display = function(value)
  return "Best Ask Price: "..value
end

-- Dissect: Best Ask Price
bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Ask Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_quantity = {}

-- Size: Best Ask Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_quantity.size = 8

-- Display: Best Ask Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_quantity.display = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Best Bid Price
bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_price = {}

-- Size: Best Bid Price
bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_price.size = 4

-- Display: Best Bid Price
bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_quantity = {}

-- Size: Best Bid Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_quantity.size = 8

-- Display: Best Bid Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_quantity.display = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Block Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.block_lot_size = {}

-- Size: Block Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.block_lot_size.size = 4

-- Display: Block Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Combination Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_id = {}

-- Size: Combination Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_id.size = 4

-- Display: Combination Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_id.display = function(value)
  return "Combination Order Book Id: "..value
end

-- Dissect: Combination Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.combination_order_book_id, range, value, display)

  return offset + length, value
end

-- Combo Group Id
bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id = {}

-- Size: Combo Group Id
bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id.size = 4

-- Display: Combo Group Id
bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id.display = function(value)
  return "Combo Group Id: "..value
end

-- Dissect: Combo Group Id
bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.combo_group_id, range, value, display)

  return offset + length, value
end

-- Decimals In Nominal Value
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_nominal_value = {}

-- Size: Decimals In Nominal Value
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_nominal_value.size = 2

-- Display: Decimals In Nominal Value
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_nominal_value.display = function(value)
  return "Decimals In Nominal Value: "..value
end

-- Dissect: Decimals In Nominal Value
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Decimals In Price
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_price = {}

-- Size: Decimals In Price
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_price.size = 2

-- Display: Decimals In Price
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_price.display = function(value)
  return "Decimals In Price: "..value
end

-- Dissect: Decimals In Price
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.decimals_in_price, range, value, display)

  return offset + length, value
end

-- Decimals In Strike Price
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_strike_price = {}

-- Size: Decimals In Strike Price
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_strike_price.size = 2

-- Display: Decimals In Strike Price
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_strike_price.display = function(value)
  return "Decimals In Strike Price: "..value
end

-- Dissect: Decimals In Strike Price
bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.decimals_in_strike_price, range, value, display)

  return offset + length, value
end

-- Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price = {}

-- Size: Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price.size = 4

-- Display: Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price.display = function(value)
  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Event Code
bist_borsaistanbul_geniuminet_itch_v21_12.event_code = {}

-- Size: Event Code
bist_borsaistanbul_geniuminet_itch_v21_12.event_code.size = 1

-- Display: Event Code
bist_borsaistanbul_geniuminet_itch_v21_12.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["C"] = "Event Code: End Of Messages (C)",
}

bist_borsaistanbul_geniuminet_itch_v21_12.event_code.display = function(value)
  return bist_borsaistanbul_geniuminet_itch_v21_12.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
bist_borsaistanbul_geniuminet_itch_v21_12.event_code.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.event_code.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.executed_quantity = {}

-- Size: Executed Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.executed_quantity.size = 8

-- Display: Executed Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Expiration Date
bist_borsaistanbul_geniuminet_itch_v21_12.expiration_date = {}

-- Size: Expiration Date
bist_borsaistanbul_geniuminet_itch_v21_12.expiration_date.size = 4

-- Display: Expiration Date
bist_borsaistanbul_geniuminet_itch_v21_12.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
bist_borsaistanbul_geniuminet_itch_v21_12.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Financial Product
bist_borsaistanbul_geniuminet_itch_v21_12.financial_product = {}

-- Size: Financial Product
bist_borsaistanbul_geniuminet_itch_v21_12.financial_product.size = 1

-- Display: Financial Product
bist_borsaistanbul_geniuminet_itch_v21_12.financial_product.labels = {
  [1] = "Financial Product: Option (1)",
  [2] = "Financial Product: Forward (2)",
  [3] = "Financial Product: Future (3)",
  [4] = "Financial Product: Fra (4)",
  [5] = "Financial Product: Cash (5)",
  [6] = "Financial Product: Payment (6)",
  [7] = "Financial Product: Exchange Rate (7)",
  [8] = "Financial Product: Interest Rate Swap (8)",
  [9] = "Financial Product: Repo (9)",
  [10] = "Financial Product: Synthetic Box Leg Or Reference (10)",
  [11] = "Financial Product: Standard Combination (11)",
  [12] = "Financial Product: Guarantee (12)",
  [13] = "Financial Product: Otc General (13)",
  [14] = "Financial Product: Equity Warrant (14)",
  [15] = "Financial Product: Security Lending (15)",
  [18] = "Financial Product: Certificate (18)",
}

bist_borsaistanbul_geniuminet_itch_v21_12.financial_product.display = function(value)
  return bist_borsaistanbul_geniuminet_itch_v21_12.financial_product.labels[value] or "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
bist_borsaistanbul_geniuminet_itch_v21_12.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Isin
bist_borsaistanbul_geniuminet_itch_v21_12.isin = {}

-- Size: Isin
bist_borsaistanbul_geniuminet_itch_v21_12.isin.size = 12

-- Display: Isin
bist_borsaistanbul_geniuminet_itch_v21_12.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
bist_borsaistanbul_geniuminet_itch_v21_12.isin.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.isin, range, value, display)

  return offset + length, value
end

-- Leg Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.leg_order_book_id = {}

-- Size: Leg Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.leg_order_book_id.size = 4

-- Display: Leg Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.leg_order_book_id.display = function(value)
  return "Leg Order Book Id: "..value
end

-- Dissect: Leg Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.leg_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.leg_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.leg_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.leg_order_book_id, range, value, display)

  return offset + length, value
end

-- Leg Ratio
bist_borsaistanbul_geniuminet_itch_v21_12.leg_ratio = {}

-- Size: Leg Ratio
bist_borsaistanbul_geniuminet_itch_v21_12.leg_ratio.size = 4

-- Display: Leg Ratio
bist_borsaistanbul_geniuminet_itch_v21_12.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
bist_borsaistanbul_geniuminet_itch_v21_12.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
bist_borsaistanbul_geniuminet_itch_v21_12.leg_side = {}

-- Size: Leg Side
bist_borsaistanbul_geniuminet_itch_v21_12.leg_side.size = 1

-- Display: Leg Side
bist_borsaistanbul_geniuminet_itch_v21_12.leg_side.labels = {
  ["B"] = "Leg Side: As Defined (B)",
  ["C"] = "Leg Side: Opposite (C)",
}

bist_borsaistanbul_geniuminet_itch_v21_12.leg_side.display = function(value)
  return bist_borsaistanbul_geniuminet_itch_v21_12.leg_side.labels[value] or "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
bist_borsaistanbul_geniuminet_itch_v21_12.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.leg_side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Long Name
bist_borsaistanbul_geniuminet_itch_v21_12.long_name = {}

-- Size: Long Name
bist_borsaistanbul_geniuminet_itch_v21_12.long_name.size = 32

-- Display: Long Name
bist_borsaistanbul_geniuminet_itch_v21_12.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
bist_borsaistanbul_geniuminet_itch_v21_12.long_name.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.long_name, range, value, display)

  return offset + length, value
end

-- Lot Type
bist_borsaistanbul_geniuminet_itch_v21_12.lot_type = {}

-- Size: Lot Type
bist_borsaistanbul_geniuminet_itch_v21_12.lot_type.size = 1

-- Display: Lot Type
bist_borsaistanbul_geniuminet_itch_v21_12.lot_type.labels = {
  [2] = "Lot Type: Round Lot (2)",
}

bist_borsaistanbul_geniuminet_itch_v21_12.lot_type.display = function(value)
  return bist_borsaistanbul_geniuminet_itch_v21_12.lot_type.labels[value] or "Lot Type: Unknown("..value..")"
end

-- Dissect: Lot Type
bist_borsaistanbul_geniuminet_itch_v21_12.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.lot_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Match Id
bist_borsaistanbul_geniuminet_itch_v21_12.match_id = {}

-- Size: Match Id
bist_borsaistanbul_geniuminet_itch_v21_12.match_id.size = 8

-- Display: Match Id
bist_borsaistanbul_geniuminet_itch_v21_12.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
bist_borsaistanbul_geniuminet_itch_v21_12.match_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.match_id, range, value, display)

  return offset + length, value
end

-- Message Count
bist_borsaistanbul_geniuminet_itch_v21_12.message_count = {}

-- Size: Message Count
bist_borsaistanbul_geniuminet_itch_v21_12.message_count.size = 2

-- Display: Message Count
bist_borsaistanbul_geniuminet_itch_v21_12.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
bist_borsaistanbul_geniuminet_itch_v21_12.message_count.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
bist_borsaistanbul_geniuminet_itch_v21_12.message_length = {}

-- Size: Message Length
bist_borsaistanbul_geniuminet_itch_v21_12.message_length.size = 2

-- Display: Message Length
bist_borsaistanbul_geniuminet_itch_v21_12.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
bist_borsaistanbul_geniuminet_itch_v21_12.message_length.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
bist_borsaistanbul_geniuminet_itch_v21_12.message_type = {}

-- Size: Message Type
bist_borsaistanbul_geniuminet_itch_v21_12.message_type.size = 1

-- Display: Message Type
bist_borsaistanbul_geniuminet_itch_v21_12.message_type.labels = {
  ["T"] = "Message Type: Seconds Message (T)",
  ["R"] = "Message Type: Order Book Directory (R)",
  ["M"] = "Message Type: Combination Order Book Leg (M)",
  ["L"] = "Message Type: Tick Size Table Entry (L)",
  ["V"] = "Message Type: Short Sell Status (V)",
  ["S"] = "Message Type: System Event Message (S)",
  ["O"] = "Message Type: Order Book State Message (O)",
  ["A"] = "Message Type: Add Order No Mpid Attribution (A)",
  ["F"] = "Message Type: Add Order With Mpid Attribution (F)",
  ["E"] = "Message Type: Order Executed Message (E)",
  ["C"] = "Message Type: Order Executed With Price Message (C)",
  ["U"] = "Message Type: Order Replace Message (U)",
  ["D"] = "Message Type: Order Delete Message (D)",
  ["Y"] = "Message Type: Order Book Flush Message (Y)",
  ["P"] = "Message Type: Trade Message (P)",
  ["Z"] = "Message Type: Equilibrium Price Update (Z)",
}

bist_borsaistanbul_geniuminet_itch_v21_12.message_type.display = function(value)
  return bist_borsaistanbul_geniuminet_itch_v21_12.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
bist_borsaistanbul_geniuminet_itch_v21_12.message_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds = {}

-- Size: Nanoseconds
bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size = 4

-- Display: Nanoseconds
bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Order Book Position
bist_borsaistanbul_geniuminet_itch_v21_12.new_order_book_position = {}

-- Size: New Order Book Position
bist_borsaistanbul_geniuminet_itch_v21_12.new_order_book_position.size = 4

-- Display: New Order Book Position
bist_borsaistanbul_geniuminet_itch_v21_12.new_order_book_position.display = function(value)
  return "New Order Book Position: "..value
end

-- Dissect: New Order Book Position
bist_borsaistanbul_geniuminet_itch_v21_12.new_order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.new_order_book_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.new_order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.new_order_book_position, range, value, display)

  return offset + length, value
end

-- Nominal Value
bist_borsaistanbul_geniuminet_itch_v21_12.nominal_value = {}

-- Size: Nominal Value
bist_borsaistanbul_geniuminet_itch_v21_12.nominal_value.size = 8

-- Display: Nominal Value
bist_borsaistanbul_geniuminet_itch_v21_12.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
bist_borsaistanbul_geniuminet_itch_v21_12.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Legs
bist_borsaistanbul_geniuminet_itch_v21_12.number_of_legs = {}

-- Size: Number Of Legs
bist_borsaistanbul_geniuminet_itch_v21_12.number_of_legs.size = 1

-- Display: Number Of Legs
bist_borsaistanbul_geniuminet_itch_v21_12.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
bist_borsaistanbul_geniuminet_itch_v21_12.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Occurred At Cross
bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross = {}

-- Size: Occurred At Cross
bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross.size = 1

-- Display: Occurred At Cross
bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross.labels = {
  ["N"] = "Occurred At Cross: No (N)",
  ["Y"] = "Occurred At Cross: Yes (Y)",
}

bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross.display = function(value)
  return bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross.labels[value] or "Occurred At Cross: Unknown("..value..")"
end

-- Dissect: Occurred At Cross
bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.occurred_at_cross, range, value, display)

  return offset + length, value
end

-- Odd Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.odd_lot_size = {}

-- Size: Odd Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.odd_lot_size.size = 4

-- Display: Odd Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.odd_lot_size.display = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.odd_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.odd_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.odd_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id = {}

-- Size: Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size = 4

-- Display: Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Order Id
bist_borsaistanbul_geniuminet_itch_v21_12.order_id = {}

-- Size: Order Id
bist_borsaistanbul_geniuminet_itch_v21_12.order_id.size = 8

-- Display: Order Id
bist_borsaistanbul_geniuminet_itch_v21_12.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
bist_borsaistanbul_geniuminet_itch_v21_12.order_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_id, range, value, display)

  return offset + length, value
end

-- Participant Id
bist_borsaistanbul_geniuminet_itch_v21_12.participant_id = {}

-- Size: Participant Id
bist_borsaistanbul_geniuminet_itch_v21_12.participant_id.size = 7

-- Display: Participant Id
bist_borsaistanbul_geniuminet_itch_v21_12.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
bist_borsaistanbul_geniuminet_itch_v21_12.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price
bist_borsaistanbul_geniuminet_itch_v21_12.price = {}

-- Size: Price
bist_borsaistanbul_geniuminet_itch_v21_12.price.size = 4

-- Display: Price
bist_borsaistanbul_geniuminet_itch_v21_12.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
bist_borsaistanbul_geniuminet_itch_v21_12.price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.price, range, value, display)

  return offset + length, value
end

-- Price From
bist_borsaistanbul_geniuminet_itch_v21_12.price_from = {}

-- Size: Price From
bist_borsaistanbul_geniuminet_itch_v21_12.price_from.size = 4

-- Display: Price From
bist_borsaistanbul_geniuminet_itch_v21_12.price_from.display = function(value)
  return "Price From: "..value
end

-- Dissect: Price From
bist_borsaistanbul_geniuminet_itch_v21_12.price_from.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.price_from, range, value, display)

  return offset + length, value
end

-- Price To
bist_borsaistanbul_geniuminet_itch_v21_12.price_to = {}

-- Size: Price To
bist_borsaistanbul_geniuminet_itch_v21_12.price_to.size = 4

-- Display: Price To
bist_borsaistanbul_geniuminet_itch_v21_12.price_to.display = function(value)
  return "Price To: "..value
end

-- Dissect: Price To
bist_borsaistanbul_geniuminet_itch_v21_12.price_to.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.price_to, range, value, display)

  return offset + length, value
end

-- Printable
bist_borsaistanbul_geniuminet_itch_v21_12.printable = {}

-- Size: Printable
bist_borsaistanbul_geniuminet_itch_v21_12.printable.size = 1

-- Display: Printable
bist_borsaistanbul_geniuminet_itch_v21_12.printable.labels = {
  ["N"] = "Printable: Non Printable (N)",
  ["Y"] = "Printable: Printable (Y)",
}

bist_borsaistanbul_geniuminet_itch_v21_12.printable.display = function(value)
  return bist_borsaistanbul_geniuminet_itch_v21_12.printable.labels[value] or "Printable: Unknown("..value..")"
end

-- Dissect: Printable
bist_borsaistanbul_geniuminet_itch_v21_12.printable.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.printable.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.printable, range, value, display)

  return offset + length, value
end

-- Put Or Call
bist_borsaistanbul_geniuminet_itch_v21_12.put_or_call = {}

-- Size: Put Or Call
bist_borsaistanbul_geniuminet_itch_v21_12.put_or_call.size = 1

-- Display: Put Or Call
bist_borsaistanbul_geniuminet_itch_v21_12.put_or_call.labels = {
  [0] = "Put Or Call: Undefined (0)",
  [1] = "Put Or Call: Call (1)",
  [2] = "Put Or Call: Put (2)",
}

bist_borsaistanbul_geniuminet_itch_v21_12.put_or_call.display = function(value)
  return bist_borsaistanbul_geniuminet_itch_v21_12.put_or_call.labels[value] or "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
bist_borsaistanbul_geniuminet_itch_v21_12.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.quantity = {}

-- Size: Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.quantity.size = 8

-- Display: Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
bist_borsaistanbul_geniuminet_itch_v21_12.quantity.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.quantity, range, value, display)

  return offset + length, value
end

-- Ranking Sequence Number
bist_borsaistanbul_geniuminet_itch_v21_12.ranking_sequence_number = {}

-- Size: Ranking Sequence Number
bist_borsaistanbul_geniuminet_itch_v21_12.ranking_sequence_number.size = 4

-- Display: Ranking Sequence Number
bist_borsaistanbul_geniuminet_itch_v21_12.ranking_sequence_number.display = function(value)
  return "Ranking Sequence Number: "..value
end

-- Dissect: Ranking Sequence Number
bist_borsaistanbul_geniuminet_itch_v21_12.ranking_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.ranking_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.ranking_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.ranking_sequence_number, range, value, display)

  return offset + length, value
end

-- Ranking Time
bist_borsaistanbul_geniuminet_itch_v21_12.ranking_time = {}

-- Size: Ranking Time
bist_borsaistanbul_geniuminet_itch_v21_12.ranking_time.size = 8

-- Dissect: Ranking Time
bist_borsaistanbul_geniuminet_itch_v21_12.ranking_time.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.ranking_time.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.ranking_time
  if bist_borsaistanbul_geniuminet_itch_v21_12.absolute_time_base == 1 then field = omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.ranking_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ranking Type
bist_borsaistanbul_geniuminet_itch_v21_12.ranking_type = {}

-- Size: Ranking Type
bist_borsaistanbul_geniuminet_itch_v21_12.ranking_type.size = 1

-- Display: Ranking Type
bist_borsaistanbul_geniuminet_itch_v21_12.ranking_type.labels = {
  [1] = "Ranking Type: Price Time (1)",
}

bist_borsaistanbul_geniuminet_itch_v21_12.ranking_type.display = function(value)
  return bist_borsaistanbul_geniuminet_itch_v21_12.ranking_type.labels[value] or "Ranking Type: Unknown("..value..")"
end

-- Dissect: Ranking Type
bist_borsaistanbul_geniuminet_itch_v21_12.ranking_type.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.ranking_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.ranking_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.ranking_type, range, value, display)

  return offset + length, value
end

-- Reserved 14
bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14 = {}

-- Size: Reserved 14
bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14.size = 14

-- Display: Reserved 14
bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14.display = function(value)
  return "Reserved 14: "..value
end

-- Dissect: Reserved 14
bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.reserved_14, range, value, display)

  return offset + length, value
end

-- Reserved 4
bist_borsaistanbul_geniuminet_itch_v21_12.reserved_4 = {}

-- Size: Reserved 4
bist_borsaistanbul_geniuminet_itch_v21_12.reserved_4.size = 4

-- Display: Reserved 4
bist_borsaistanbul_geniuminet_itch_v21_12.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
bist_borsaistanbul_geniuminet_itch_v21_12.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Round Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.round_lot_size = {}

-- Size: Round Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.round_lot_size.size = 4

-- Display: Round Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
bist_borsaistanbul_geniuminet_itch_v21_12.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Second
bist_borsaistanbul_geniuminet_itch_v21_12.second = {}

-- Size: Second
bist_borsaistanbul_geniuminet_itch_v21_12.second.size = 4

-- Store: Second
bist_borsaistanbul_geniuminet_itch_v21_12.second.current = nil

-- Generated: Second
bist_borsaistanbul_geniuminet_itch_v21_12.second.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.second
  if bist_borsaistanbul_geniuminet_itch_v21_12.absolute_time_base == 1 then field = omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.second_utc end
  local second = parent:add(field, range, NSTime.new(value, 0))
  second:set_generated()
end

-- Dissect: Second
bist_borsaistanbul_geniuminet_itch_v21_12.second.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.second.size
  local range = buffer(offset, length)
  local value = range:uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.second
  if bist_borsaistanbul_geniuminet_itch_v21_12.absolute_time_base == 1 then field = omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.second_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
bist_borsaistanbul_geniuminet_itch_v21_12.sequence_number = {}

-- Size: Sequence Number
bist_borsaistanbul_geniuminet_itch_v21_12.sequence_number.size = 8

-- Display: Sequence Number
bist_borsaistanbul_geniuminet_itch_v21_12.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
bist_borsaistanbul_geniuminet_itch_v21_12.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
bist_borsaistanbul_geniuminet_itch_v21_12.session = {}

-- Size: Session
bist_borsaistanbul_geniuminet_itch_v21_12.session.size = 10

-- Display: Session
bist_borsaistanbul_geniuminet_itch_v21_12.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
bist_borsaistanbul_geniuminet_itch_v21_12.session.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.session.size
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

  local display = bist_borsaistanbul_geniuminet_itch_v21_12.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.session, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction
bist_borsaistanbul_geniuminet_itch_v21_12.short_sale_restriction = {}

-- Size: Short Sale Restriction
bist_borsaistanbul_geniuminet_itch_v21_12.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
bist_borsaistanbul_geniuminet_itch_v21_12.short_sale_restriction.labels = {
  [0] = "Short Sale Restriction: No Restrictions (0)",
  [1] = "Short Sale Restriction: Short Selling Not Allowed (1)",
  [2] = "Short Sale Restriction: Short Selling Allowed With Up Tick Rule (2)",
}

bist_borsaistanbul_geniuminet_itch_v21_12.short_sale_restriction.display = function(value)
  return bist_borsaistanbul_geniuminet_itch_v21_12.short_sale_restriction.labels[value] or "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
bist_borsaistanbul_geniuminet_itch_v21_12.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Side
bist_borsaistanbul_geniuminet_itch_v21_12.side = {}

-- Size: Side
bist_borsaistanbul_geniuminet_itch_v21_12.side.size = 1

-- Display: Side
bist_borsaistanbul_geniuminet_itch_v21_12.side.labels = {
  ["B"] = "Side: Buy Order (B)",
  ["S"] = "Side: Sell Order (S)",
}

bist_borsaistanbul_geniuminet_itch_v21_12.side.display = function(value)
  return bist_borsaistanbul_geniuminet_itch_v21_12.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
bist_borsaistanbul_geniuminet_itch_v21_12.side.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.side.size
  local range = buffer(offset, length)
  local value = range:string(ENC_ISO_8859_1)
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.side, range, value, display)

  return offset + length, value
end

-- State Name
bist_borsaistanbul_geniuminet_itch_v21_12.state_name = {}

-- Size: State Name
bist_borsaistanbul_geniuminet_itch_v21_12.state_name.size = 20

-- Display: State Name
bist_borsaistanbul_geniuminet_itch_v21_12.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
bist_borsaistanbul_geniuminet_itch_v21_12.state_name.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.state_name, range, value, display)

  return offset + length, value
end

-- Strike Price
bist_borsaistanbul_geniuminet_itch_v21_12.strike_price = {}

-- Size: Strike Price
bist_borsaistanbul_geniuminet_itch_v21_12.strike_price.size = 4

-- Display: Strike Price
bist_borsaistanbul_geniuminet_itch_v21_12.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
bist_borsaistanbul_geniuminet_itch_v21_12.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
bist_borsaistanbul_geniuminet_itch_v21_12.symbol = {}

-- Size: Symbol
bist_borsaistanbul_geniuminet_itch_v21_12.symbol.size = 32

-- Display: Symbol
bist_borsaistanbul_geniuminet_itch_v21_12.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
bist_borsaistanbul_geniuminet_itch_v21_12.symbol.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tick Size
bist_borsaistanbul_geniuminet_itch_v21_12.tick_size = {}

-- Size: Tick Size
bist_borsaistanbul_geniuminet_itch_v21_12.tick_size.size = 8

-- Display: Tick Size
bist_borsaistanbul_geniuminet_itch_v21_12.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
bist_borsaistanbul_geniuminet_itch_v21_12.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Trade Price
bist_borsaistanbul_geniuminet_itch_v21_12.trade_price = {}

-- Size: Trade Price
bist_borsaistanbul_geniuminet_itch_v21_12.trade_price.size = 4

-- Display: Trade Price
bist_borsaistanbul_geniuminet_itch_v21_12.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
bist_borsaistanbul_geniuminet_itch_v21_12.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trading Currency
bist_borsaistanbul_geniuminet_itch_v21_12.trading_currency = {}

-- Size: Trading Currency
bist_borsaistanbul_geniuminet_itch_v21_12.trading_currency.size = 3

-- Display: Trading Currency
bist_borsaistanbul_geniuminet_itch_v21_12.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
bist_borsaistanbul_geniuminet_itch_v21_12.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_ISO_8859_1))
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Underlying Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.underlying_order_book_id = {}

-- Size: Underlying Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.underlying_order_book_id.size = 4

-- Display: Underlying Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.underlying_order_book_id.display = function(value)
  return "Underlying Order Book Id: "..value
end

-- Dissect: Underlying Order Book Id
bist_borsaistanbul_geniuminet_itch_v21_12.underlying_order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.underlying_order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.underlying_order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.underlying_order_book_id, range, value, display)

  return offset + length, value
end

-- Timestamp
bist_borsaistanbul_geniuminet_itch_v21_12.timestamp = {}

-- Translate: Timestamp
bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second * 1000000000 + nanoseconds)
end

-- Display: Timestamp
bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.display = function(nanoseconds, stored_second)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_second)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:uint()
  local value = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.translate(nanoseconds, stored_second)
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.timestamp, range, value, display)

  bist_borsaistanbul_geniuminet_itch_v21_12.second.generated(stored_second, range, packet, parent)

  display = bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.display(nanoseconds)
  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect = function(buffer, offset, packet, parent)
  if bist_borsaistanbul_geniuminet_itch_v21_12.format_timestamp then
    local stored_second = bist_borsaistanbul_geniuminet_itch_v21_12.second.current

    if stored_second ~= nil then
      return bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Bist BorsaIstanbul GeniumInet Itch 21.12
-----------------------------------------------------------------------

-- Equilibrium Price Update
bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price_update = {}

-- Size: Equilibrium Price Update
bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price_update.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.available_bid_quantity_at_equilibrium_price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.available_ask_quantity_at_equilibrium_price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_quantity.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_quantity.size

-- Display: Equilibrium Price Update
bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Update
bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- Available Bid Quantity At Equilibrium Price: Numeric
  index, available_bid_quantity_at_equilibrium_price = bist_borsaistanbul_geniuminet_itch_v21_12.available_bid_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Available Ask Quantity At Equilibrium Price: Numeric
  index, available_ask_quantity_at_equilibrium_price = bist_borsaistanbul_geniuminet_itch_v21_12.available_ask_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price
  index, equilibrium_price = bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Best Bid Price: Price
  index, best_bid_price = bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Ask Price: Price
  index, best_ask_price = bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Bid Quantity: Numeric
  index, best_bid_quantity = bist_borsaistanbul_geniuminet_itch_v21_12.best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Best Ask Quantity: Numeric
  index, best_ask_quantity = bist_borsaistanbul_geniuminet_itch_v21_12.best_ask_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Update
bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price_update.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.equilibrium_price_update, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price_update.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
bist_borsaistanbul_geniuminet_itch_v21_12.trade_message = {}

-- Size: Trade Message
bist_borsaistanbul_geniuminet_itch_v21_12.trade_message.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.match_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.side.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.quantity.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.trade_price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.printable.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross.size

-- Display: Trade Message
bist_borsaistanbul_geniuminet_itch_v21_12.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
bist_borsaistanbul_geniuminet_itch_v21_12.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = bist_borsaistanbul_geniuminet_itch_v21_12.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_itch_v21_12.side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = bist_borsaistanbul_geniuminet_itch_v21_12.quantity.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = bist_borsaistanbul_geniuminet_itch_v21_12.trade_price.dissect(buffer, index, packet, parent)

  -- Reserved 14: Reserved
  index, reserved_14 = bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = bist_borsaistanbul_geniuminet_itch_v21_12.printable.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: Alpha
  index, occurred_at_cross = bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
bist_borsaistanbul_geniuminet_itch_v21_12.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.trade_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Flush Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_flush_message = {}

-- Size: Order Book Flush Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_flush_message.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size

-- Display: Order Book Flush Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_flush_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Flush Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_flush_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Flush Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_flush_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_book_flush_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_flush_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_flush_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.order_book_flush_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Delete Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_delete_message = {}

-- Size: Order Delete Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_delete_message.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.side.size

-- Display: Order Delete Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_itch_v21_12.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_delete_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Attributes
bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes = {}

-- Size: Order Attributes
bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.size = 2

-- Display: Order Attributes
bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Bait Implied Order flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Bait Implied Order"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Attributes
bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.bits = function(range, value, packet, parent)

  -- Reserved 13: 13 Bit
  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.reserved_13, range, value)

  -- Bait Implied Order: 1 Bit
  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.bait_implied_order, range, value)

  -- Reserved 2: 2 Bit
  parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.reserved_2, range, value)
end

-- Dissect: Order Attributes
bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.dissect = function(buffer, offset, packet, parent)
  local size = bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.display(range, value, packet, parent)
  local element = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_attributes, range, display)

  if show.structs then
    bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Replace Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_replace_message = {}

-- Size: Order Replace Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_replace_message.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.side.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.new_order_book_position.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.quantity.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.size

-- Display: Order Replace Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_itch_v21_12.side.dissect(buffer, index, packet, parent)

  -- New Order Book Position: Numeric
  index, new_order_book_position = bist_borsaistanbul_geniuminet_itch_v21_12.new_order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = bist_borsaistanbul_geniuminet_itch_v21_12.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bist_borsaistanbul_geniuminet_itch_v21_12.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 3 fields
  index, order_attributes = bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_replace_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_with_price_message.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.side.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.executed_quantity.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.match_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.trade_price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.printable.size

-- Display: Order Executed With Price Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_itch_v21_12.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = bist_borsaistanbul_geniuminet_itch_v21_12.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = bist_borsaistanbul_geniuminet_itch_v21_12.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id.dissect(buffer, index, packet, parent)

  -- Reserved 14: Reserved
  index, reserved_14 = bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = bist_borsaistanbul_geniuminet_itch_v21_12.trade_price.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: Alpha
  index, occurred_at_cross = bist_borsaistanbul_geniuminet_itch_v21_12.occurred_at_cross.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = bist_borsaistanbul_geniuminet_itch_v21_12.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_message = {}

-- Size: Order Executed Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_message.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.side.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.executed_quantity.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.match_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14.size

-- Display: Order Executed Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_itch_v21_12.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = bist_borsaistanbul_geniuminet_itch_v21_12.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = bist_borsaistanbul_geniuminet_itch_v21_12.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = bist_borsaistanbul_geniuminet_itch_v21_12.combo_group_id.dissect(buffer, index, packet, parent)

  -- Reserved 14: Reserved
  index, reserved_14 = bist_borsaistanbul_geniuminet_itch_v21_12.reserved_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_executed_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order With Mpid Attribution
bist_borsaistanbul_geniuminet_itch_v21_12.add_order_with_mpid_attribution = {}

-- Size: Add Order With Mpid Attribution
bist_borsaistanbul_geniuminet_itch_v21_12.add_order_with_mpid_attribution.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.side.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.reserved_4.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.quantity.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.lot_type.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.participant_id.size

-- Display: Add Order With Mpid Attribution
bist_borsaistanbul_geniuminet_itch_v21_12.add_order_with_mpid_attribution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order With Mpid Attribution
bist_borsaistanbul_geniuminet_itch_v21_12.add_order_with_mpid_attribution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_itch_v21_12.side.dissect(buffer, index, packet, parent)

  -- Reserved 4: Reserved
  index, reserved_4 = bist_borsaistanbul_geniuminet_itch_v21_12.reserved_4.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = bist_borsaistanbul_geniuminet_itch_v21_12.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bist_borsaistanbul_geniuminet_itch_v21_12.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 3 fields
  index, order_attributes = bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = bist_borsaistanbul_geniuminet_itch_v21_12.lot_type.dissect(buffer, index, packet, parent)

  -- Participant Id: Alpha
  index, participant_id = bist_borsaistanbul_geniuminet_itch_v21_12.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid Attribution
bist_borsaistanbul_geniuminet_itch_v21_12.add_order_with_mpid_attribution.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.add_order_with_mpid_attribution, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.add_order_with_mpid_attribution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.add_order_with_mpid_attribution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.add_order_with_mpid_attribution.fields(buffer, offset, packet, parent)
  end
end

-- Add Order No Mpid Attribution
bist_borsaistanbul_geniuminet_itch_v21_12.add_order_no_mpid_attribution = {}

-- Size: Add Order No Mpid Attribution
bist_borsaistanbul_geniuminet_itch_v21_12.add_order_no_mpid_attribution.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.side.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.ranking_sequence_number.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.quantity.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.lot_type.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.ranking_time.size

-- Display: Add Order No Mpid Attribution
bist_borsaistanbul_geniuminet_itch_v21_12.add_order_no_mpid_attribution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Mpid Attribution
bist_borsaistanbul_geniuminet_itch_v21_12.add_order_no_mpid_attribution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = bist_borsaistanbul_geniuminet_itch_v21_12.side.dissect(buffer, index, packet, parent)

  -- Ranking Sequence Number: Numeric
  index, ranking_sequence_number = bist_borsaistanbul_geniuminet_itch_v21_12.ranking_sequence_number.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = bist_borsaistanbul_geniuminet_itch_v21_12.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bist_borsaistanbul_geniuminet_itch_v21_12.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 3 fields
  index, order_attributes = bist_borsaistanbul_geniuminet_itch_v21_12.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = bist_borsaistanbul_geniuminet_itch_v21_12.lot_type.dissect(buffer, index, packet, parent)

  -- Ranking Time: Numeric
  index, ranking_time = bist_borsaistanbul_geniuminet_itch_v21_12.ranking_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid Attribution
bist_borsaistanbul_geniuminet_itch_v21_12.add_order_no_mpid_attribution.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.add_order_no_mpid_attribution, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.add_order_no_mpid_attribution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.add_order_no_mpid_attribution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.add_order_no_mpid_attribution.fields(buffer, offset, packet, parent)
  end
end

-- Order Book State Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_state_message = {}

-- Size: Order Book State Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_state_message.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.state_name.size

-- Display: Order Book State Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = bist_borsaistanbul_geniuminet_itch_v21_12.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_book_state_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
bist_borsaistanbul_geniuminet_itch_v21_12.system_event_message = {}

-- Size: System Event Message
bist_borsaistanbul_geniuminet_itch_v21_12.system_event_message.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.event_code.size

-- Display: System Event Message
bist_borsaistanbul_geniuminet_itch_v21_12.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
bist_borsaistanbul_geniuminet_itch_v21_12.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = bist_borsaistanbul_geniuminet_itch_v21_12.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
bist_borsaistanbul_geniuminet_itch_v21_12.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.system_event_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sell Status
bist_borsaistanbul_geniuminet_itch_v21_12.short_sell_status = {}

-- Size: Short Sell Status
bist_borsaistanbul_geniuminet_itch_v21_12.short_sell_status.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.short_sale_restriction.size

-- Display: Short Sell Status
bist_borsaistanbul_geniuminet_itch_v21_12.short_sell_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Sell Status
bist_borsaistanbul_geniuminet_itch_v21_12.short_sell_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: Numeric
  index, short_sale_restriction = bist_borsaistanbul_geniuminet_itch_v21_12.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Sell Status
bist_borsaistanbul_geniuminet_itch_v21_12.short_sell_status.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.short_sell_status, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.short_sell_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.short_sell_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.short_sell_status.fields(buffer, offset, packet, parent)
  end
end

-- Tick Size Table Entry
bist_borsaistanbul_geniuminet_itch_v21_12.tick_size_table_entry = {}

-- Size: Tick Size Table Entry
bist_borsaistanbul_geniuminet_itch_v21_12.tick_size_table_entry.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.tick_size.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.price_from.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.price_to.size

-- Display: Tick Size Table Entry
bist_borsaistanbul_geniuminet_itch_v21_12.tick_size_table_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Table Entry
bist_borsaistanbul_geniuminet_itch_v21_12.tick_size_table_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Numeric
  index, tick_size = bist_borsaistanbul_geniuminet_itch_v21_12.tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = bist_borsaistanbul_geniuminet_itch_v21_12.price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = bist_borsaistanbul_geniuminet_itch_v21_12.price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Table Entry
bist_borsaistanbul_geniuminet_itch_v21_12.tick_size_table_entry.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.tick_size_table_entry, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.tick_size_table_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.tick_size_table_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.tick_size_table_entry.fields(buffer, offset, packet, parent)
  end
end

-- Combination Order Book Leg
bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_leg = {}

-- Size: Combination Order Book Leg
bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_leg.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.leg_order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.leg_side.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.leg_ratio.size

-- Display: Combination Order Book Leg
bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Book Leg
bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_leg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Combination Order Book Id: Numeric
  index, combination_order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Order Book Id: Numeric
  index, leg_order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.leg_order_book_id.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = bist_borsaistanbul_geniuminet_itch_v21_12.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Numeric
  index, leg_ratio = bist_borsaistanbul_geniuminet_itch_v21_12.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Leg
bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_leg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.combination_order_book_leg, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_leg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_leg.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_directory = {}

-- Size: Order Book Directory
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_directory.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.nanoseconds.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.symbol.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.long_name.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.isin.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.financial_product.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.trading_currency.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_nominal_value.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.odd_lot_size.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.round_lot_size.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.block_lot_size.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.nominal_value.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.number_of_legs.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.underlying_order_book_id.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.strike_price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.expiration_date.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_strike_price.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.put_or_call.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.ranking_type.size

-- Display: Order Book Directory
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Numeric
  index, nanoseconds = bist_borsaistanbul_geniuminet_itch_v21_12.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = bist_borsaistanbul_geniuminet_itch_v21_12.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = bist_borsaistanbul_geniuminet_itch_v21_12.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = bist_borsaistanbul_geniuminet_itch_v21_12.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = bist_borsaistanbul_geniuminet_itch_v21_12.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = bist_borsaistanbul_geniuminet_itch_v21_12.trading_currency.dissect(buffer, index, packet, parent)

  -- Decimals In Price: Numeric
  index, decimals_in_price = bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_price.dissect(buffer, index, packet, parent)

  -- Decimals In Nominal Value: Numeric
  index, decimals_in_nominal_value = bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: Numeric
  index, odd_lot_size = bist_borsaistanbul_geniuminet_itch_v21_12.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = bist_borsaistanbul_geniuminet_itch_v21_12.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = bist_borsaistanbul_geniuminet_itch_v21_12.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = bist_borsaistanbul_geniuminet_itch_v21_12.nominal_value.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric
  index, number_of_legs = bist_borsaistanbul_geniuminet_itch_v21_12.number_of_legs.dissect(buffer, index, packet, parent)

  -- Underlying Order Book Id: Numeric
  index, underlying_order_book_id = bist_borsaistanbul_geniuminet_itch_v21_12.underlying_order_book_id.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = bist_borsaistanbul_geniuminet_itch_v21_12.strike_price.dissect(buffer, index, packet, parent)

  -- Expiration Date: Numeric
  index, expiration_date = bist_borsaistanbul_geniuminet_itch_v21_12.expiration_date.dissect(buffer, index, packet, parent)

  -- Decimals In Strike Price: Numeric
  index, decimals_in_strike_price = bist_borsaistanbul_geniuminet_itch_v21_12.decimals_in_strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Numeric
  index, put_or_call = bist_borsaistanbul_geniuminet_itch_v21_12.put_or_call.dissect(buffer, index, packet, parent)

  -- Ranking Type: Numeric
  index, ranking_type = bist_borsaistanbul_geniuminet_itch_v21_12.ranking_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory
bist_borsaistanbul_geniuminet_itch_v21_12.order_book_directory.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.order_book_directory, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.order_book_directory.fields(buffer, offset, packet, parent)
  end
end

-- Seconds Message
bist_borsaistanbul_geniuminet_itch_v21_12.seconds_message = {}

-- Size: Seconds Message
bist_borsaistanbul_geniuminet_itch_v21_12.seconds_message.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.second.size

-- Display: Seconds Message
bist_borsaistanbul_geniuminet_itch_v21_12.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
bist_borsaistanbul_geniuminet_itch_v21_12.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Numeric
  index, second = bist_borsaistanbul_geniuminet_itch_v21_12.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  bist_borsaistanbul_geniuminet_itch_v21_12.second.current = second

  if not packet.visited then
    bist_borsaistanbul_geniuminet_itch_v21_12.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Seconds Message
bist_borsaistanbul_geniuminet_itch_v21_12.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.seconds_message, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bist_borsaistanbul_geniuminet_itch_v21_12.payload = {}

-- Dissect: Payload
bist_borsaistanbul_geniuminet_itch_v21_12.payload.dispatch = {
  ["T"] = bist_borsaistanbul_geniuminet_itch_v21_12.seconds_message.dissect,
  ["R"] = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_directory.dissect,
  ["M"] = bist_borsaistanbul_geniuminet_itch_v21_12.combination_order_book_leg.dissect,
  ["L"] = bist_borsaistanbul_geniuminet_itch_v21_12.tick_size_table_entry.dissect,
  ["V"] = bist_borsaistanbul_geniuminet_itch_v21_12.short_sell_status.dissect,
  ["S"] = bist_borsaistanbul_geniuminet_itch_v21_12.system_event_message.dissect,
  ["O"] = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_state_message.dissect,
  ["A"] = bist_borsaistanbul_geniuminet_itch_v21_12.add_order_no_mpid_attribution.dissect,
  ["F"] = bist_borsaistanbul_geniuminet_itch_v21_12.add_order_with_mpid_attribution.dissect,
  ["E"] = bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_message.dissect,
  ["C"] = bist_borsaistanbul_geniuminet_itch_v21_12.order_executed_with_price_message.dissect,
  ["U"] = bist_borsaistanbul_geniuminet_itch_v21_12.order_replace_message.dissect,
  ["D"] = bist_borsaistanbul_geniuminet_itch_v21_12.order_delete_message.dissect,
  ["Y"] = bist_borsaistanbul_geniuminet_itch_v21_12.order_book_flush_message.dissect,
  ["P"] = bist_borsaistanbul_geniuminet_itch_v21_12.trade_message.dissect,
  ["Z"] = bist_borsaistanbul_geniuminet_itch_v21_12.equilibrium_price_update.dissect,
}

bist_borsaistanbul_geniuminet_itch_v21_12.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = bist_borsaistanbul_geniuminet_itch_v21_12.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bist_borsaistanbul_geniuminet_itch_v21_12.message_header = {}

-- Size: Message Header
bist_borsaistanbul_geniuminet_itch_v21_12.message_header.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.message_length.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.message_type.size

-- Display: Message Header
bist_borsaistanbul_geniuminet_itch_v21_12.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bist_borsaistanbul_geniuminet_itch_v21_12.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = bist_borsaistanbul_geniuminet_itch_v21_12.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 16 values
  index, message_type = bist_borsaistanbul_geniuminet_itch_v21_12.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bist_borsaistanbul_geniuminet_itch_v21_12.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_header, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
bist_borsaistanbul_geniuminet_itch_v21_12.message = {}

-- Read runtime size of: Message
bist_borsaistanbul_geniuminet_itch_v21_12.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
bist_borsaistanbul_geniuminet_itch_v21_12.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
bist_borsaistanbul_geniuminet_itch_v21_12.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and bist_borsaistanbul_geniuminet_itch_v21_12.packet_sequence ~= nil then
    local sequence = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message_sequence_number, UInt64.new(bist_borsaistanbul_geniuminet_itch_v21_12.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = bist_borsaistanbul_geniuminet_itch_v21_12.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 16 branches
  index = bist_borsaistanbul_geniuminet_itch_v21_12.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
bist_borsaistanbul_geniuminet_itch_v21_12.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = bist_borsaistanbul_geniuminet_itch_v21_12.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.message, buffer(offset, 0))
    local current = bist_borsaistanbul_geniuminet_itch_v21_12.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    bist_borsaistanbul_geniuminet_itch_v21_12.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
bist_borsaistanbul_geniuminet_itch_v21_12.end_of_session = {}

-- Display: End Of Session
bist_borsaistanbul_geniuminet_itch_v21_12.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
bist_borsaistanbul_geniuminet_itch_v21_12.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
bist_borsaistanbul_geniuminet_itch_v21_12.heartbeat = {}

-- Display: Heartbeat
bist_borsaistanbul_geniuminet_itch_v21_12.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
bist_borsaistanbul_geniuminet_itch_v21_12.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = bist_borsaistanbul_geniuminet_itch_v21_12.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
bist_borsaistanbul_geniuminet_itch_v21_12.messages = {}

-- Dissect: Messages
bist_borsaistanbul_geniuminet_itch_v21_12.messages.dispatch = {
  [0] = bist_borsaistanbul_geniuminet_itch_v21_12.heartbeat.dissect,
  [65535] = bist_borsaistanbul_geniuminet_itch_v21_12.end_of_session.dissect,
}

bist_borsaistanbul_geniuminet_itch_v21_12.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = bist_borsaistanbul_geniuminet_itch_v21_12.messages.dispatch[message_count]
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
    offset = bist_borsaistanbul_geniuminet_itch_v21_12.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
bist_borsaistanbul_geniuminet_itch_v21_12.packet_header = {}

-- Size: Packet Header
bist_borsaistanbul_geniuminet_itch_v21_12.packet_header.size =
  bist_borsaistanbul_geniuminet_itch_v21_12.session.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.sequence_number.size + 
  bist_borsaistanbul_geniuminet_itch_v21_12.message_count.size

-- Display: Packet Header
bist_borsaistanbul_geniuminet_itch_v21_12.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
bist_borsaistanbul_geniuminet_itch_v21_12.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = bist_borsaistanbul_geniuminet_itch_v21_12.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = bist_borsaistanbul_geniuminet_itch_v21_12.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = bist_borsaistanbul_geniuminet_itch_v21_12.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  bist_borsaistanbul_geniuminet_itch_v21_12.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
bist_borsaistanbul_geniuminet_itch_v21_12.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12.fields.packet_header, buffer(offset, 0))
    local index = bist_borsaistanbul_geniuminet_itch_v21_12.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bist_borsaistanbul_geniuminet_itch_v21_12.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bist_borsaistanbul_geniuminet_itch_v21_12.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
bist_borsaistanbul_geniuminet_itch_v21_12.packet = {}

-- Verify required size of Udp packet
bist_borsaistanbul_geniuminet_itch_v21_12.packet.requiredsize = function(buffer)
  return buffer:len() >= bist_borsaistanbul_geniuminet_itch_v21_12.packet_header.size
end

-- Dissect Packet
bist_borsaistanbul_geniuminet_itch_v21_12.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = bist_borsaistanbul_geniuminet_itch_v21_12.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  bist_borsaistanbul_geniuminet_itch_v21_12.second.current = data.second.frames[packet.number]
  bist_borsaistanbul_geniuminet_itch_v21_12.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = bist_borsaistanbul_geniuminet_itch_v21_12.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = bist_borsaistanbul_geniuminet_itch_v21_12.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bist_borsaistanbul_geniuminet_itch_v21_12.init()
  bist_borsaistanbul_geniuminet_itch_v21_12.second.current = nil
  bist_borsaistanbul_geniuminet_itch_v21_12.conversation.current = nil
  bist_borsaistanbul_geniuminet_itch_v21_12.conversation.flows = {}
end

-- Dissector for Bist BorsaIstanbul GeniumInet Itch 21.12
function omi_bist_borsaistanbul_geniuminet_itch_v21_12.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bist_borsaistanbul_geniuminet_itch_v21_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_bist_borsaistanbul_geniuminet_itch_v21_12, buffer(), omi_bist_borsaistanbul_geniuminet_itch_v21_12.description, "("..buffer:len().." Bytes)")
  return bist_borsaistanbul_geniuminet_itch_v21_12.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
bist_borsaistanbul_geniuminet_itch_v21_12.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_count = buffer(18, 2):uint()

  -- Heartbeat
  if message_count == 0 then
    return true
  end

  -- End Of Session
  if message_count == 65535 then
    return true
  end

  -- Message: carries the application messages, which tell this protocol from others sharing the session framing
  if buffer:len() < 23 then
    return false
  end

  local message_type = buffer(22, 1):string()

  -- Seconds Message
  if message_type == "T" then
    return true
  end

  -- Order Book Directory
  if message_type == "R" then
    return true
  end

  -- Combination Order Book Leg
  if message_type == "M" then
    return true
  end

  -- Tick Size Table Entry
  if message_type == "L" then
    return true
  end

  -- Short Sell Status
  if message_type == "V" then
    return true
  end

  -- System Event Message
  if message_type == "S" then
    return true
  end

  -- Order Book State Message
  if message_type == "O" then
    return true
  end

  -- Add Order No Mpid Attribution
  if message_type == "A" then
    return true
  end

  -- Add Order With Mpid Attribution
  if message_type == "F" then
    return true
  end

  -- Order Executed Message
  if message_type == "E" then
    return true
  end

  -- Order Executed With Price Message
  if message_type == "C" then
    return true
  end

  -- Order Replace Message
  if message_type == "U" then
    return true
  end

  -- Order Delete Message
  if message_type == "D" then
    return true
  end

  -- Order Book Flush Message
  if message_type == "Y" then
    return true
  end

  -- Trade Message
  if message_type == "P" then
    return true
  end

  -- Equilibrium Price Update
  if message_type == "Z" then
    return true
  end


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bist BorsaIstanbul GeniumInet Itch 21.12 (Udp)
local function omi_bist_borsaistanbul_geniuminet_itch_v21_12_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bist_borsaistanbul_geniuminet_itch_v21_12.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not bist_borsaistanbul_geniuminet_itch_v21_12.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bist_borsaistanbul_geniuminet_itch_v21_12
  omi_bist_borsaistanbul_geniuminet_itch_v21_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bist BorsaIstanbul GeniumInet Itch 21.12
omi_bist_borsaistanbul_geniuminet_itch_v21_12:register_heuristic("udp", omi_bist_borsaistanbul_geniuminet_itch_v21_12_udp_heuristic)

-- Register Bist BorsaIstanbul GeniumInet Itch 21.12 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_bist_borsaistanbul_geniuminet_itch_v21_12)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Borsa İstanbul A.Ş.
--   Version: 21.12
--   Date: Friday, February 28, 2025
--   Specification: bistech-itch-protocol-specification.pdf
--   Specification: moldudp64-protocol-specification.pdf
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
