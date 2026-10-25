-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C1Options MulticastDepthOfBook Pitch 2.39.4 Protocol
local omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4 = Proto("Omi.Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4", "Cboe C1Options MulticastDepthOfBook Pitch 2.39.4")

-- Protocol table
local cboe_c1options_multicastdepthofbook_pitch_v2_39_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C1Options MulticastDepthOfBook Pitch 2.39.4 Fields
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.add_flags = ProtoField.new("Add Flags", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.addflags", ftypes.STRING, nil, nil, nil, "Add Flags bitfield struct")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.auctionendoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last timestamp")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_id = ProtoField.new("Auction Id", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.auctionid", ftypes.UINT64, nil, nil, nil, "Day specific identifier assigned to this auction.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.auctiononlyprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction book would match using only Eligible Auction Orders")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_type = ProtoField.new("Auction Type", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.auctiontype", ftypes.STRING, nil, nil, nil, "Auction type value")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.buyshares", ftypes.UINT32, nil, nil, nil, "Number of shares on buy side at the Reference Price.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.canceled_long_quantity = ProtoField.new("Canceled Long Quantity", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.canceledlongquantity", ftypes.UINT32, nil, nil, nil, "Number of shares/contracts canceled")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.canceled_short_quantity = ProtoField.new("Canceled Short Quantity", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.canceledshortquantity", ftypes.UINT16, nil, nil, nil, "Number of shares/contracts canceled")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.contracts = ProtoField.new("Contracts", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.contracts", ftypes.UINT32, nil, nil, nil, "Number of contracts available in the auction.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.customerindicator", ftypes.STRING, nil, nil, nil, "BZX/EDGX Options Only (space filled on C2 Options and all equities markets). N = Non-Customer C = Customer")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.display = ProtoField.new("Display", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.display", ftypes.UINT8, {[0]="Not Aggregated", [1]="Aggregated"}, base.DEC, 0x01, "Display bits")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.executedquantity", ftypes.UINT32, nil, nil, nil, "Number of shares/contracts executed")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.execution_id = ProtoField.new("Execution Id", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.executionid", ftypes.UINT64, nil, nil, nil, "Cboe generated day-unique execution identifier of this execution. Execution Id is also referenced in the Trade Break message")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.expanded_symbol = ProtoField.new("Expanded Symbol", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.expandedsymbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.feedsymbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction book and the continuous book would match.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.length = ProtoField.new("Length", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.long_price = ProtoField.new("Long Price", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.longprice", ftypes.DOUBLE, nil, nil, nil, "The limit order price")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.long_quantity = ProtoField.new("Long Quantity", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.longquantity", ftypes.UINT32, nil, nil, nil, "Number of shares/contracts being added to the book (may be less than the number entered).")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.maintain_priority = ProtoField.new("Maintain Priority", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.maintainpriority", ftypes.UINT8, {[0]="Reset Priority", [1]="Maintain Priority"}, base.DEC, 0x02, "Maintain Priority bits")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_count = ProtoField.new("Message Count", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_length = ProtoField.new("Message Length", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_type = ProtoField.new("Message Type", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.modify_flags = ProtoField.new("Modify Flags", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.modifyflags", ftypes.STRING, nil, nil, nil, "Modify Flags bit field struct")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.order_id = ProtoField.new("Order Id", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.orderid", ftypes.UINT64, nil, nil, nil, "Day-specific identifier assigned to this order")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.osisymbol", ftypes.STRING)
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.participant_id = ProtoField.new("Participant Id", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.participantid", ftypes.STRING, nil, nil, nil, "Optionally specified. If specified, MPID (equities) or Executing Broker (options) of firm attributed to this quote. Alternatively “RTAL” for retail specified orders (equities). Space filled otherwise.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reference_price = ProtoField.new("Reference Price", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.referenceprice", ftypes.DOUBLE, nil, nil, nil, "BBO Collared auction price")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.regshoaction", ftypes.STRING, nil, nil, nil, "0, 1")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.remainingquantity", ftypes.UINT32, nil, nil, nil, "Number of shares/contracts remaining after the execution")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reserved_6 = ProtoField.new("Reserved 6", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC, "Reserved 6 Bits")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reserved_7 = ProtoField.new("Reserved 7", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE, "Reserved 7 Bits")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.retailpriceimprovement", ftypes.STRING, nil, nil, nil, "Retail price improvement value")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.sellshares", ftypes.UINT32, nil, nil, nil, "Number of shares on sell side at the Reference Price.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.sequence = ProtoField.new("Sequence", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.sequence", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.shares = ProtoField.new("Shares", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.shares", ftypes.UINT32, nil, nil, nil, "Cumulative number of shares executed during the auction.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.short_price = ProtoField.new("Short Price", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.shortprice", ftypes.DOUBLE, nil, nil, nil, "The limit order price")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.short_quantity = ProtoField.new("Short Quantity", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.shortquantity", ftypes.UINT16, nil, nil, nil, "Number of shares/contracts being added to the book (may be less than the number entered).")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.sideindicator", ftypes.STRING, nil, nil, nil, "B = Buy Order S = Sell Order")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.stocksymbol", ftypes.STRING, nil, nil, nil, "Stock Symbol right padded with spaces.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.symbol = ProtoField.new("Symbol", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.symbol", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.symbolcondition", ftypes.STRING, nil, nil, nil, "N = Normal, C = Closing Only")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.time = ProtoField.new("Time", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.time", ftypes.UINT32, nil, nil, nil, "Number of whole seconds from midnight Eastern Time")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.time_offset = ProtoField.new("Time Offset", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.tradecondition", ftypes.STRING, nil, nil, nil, "Options Only (byte not sent in Equities) (Space): Normal Trade S: Spread trade")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trading_status = ProtoField.new("Trading Status", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.tradingstatus", ftypes.STRING, nil, nil, nil, "A, H, Q, S, T")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.unit = ProtoField.new("Unit", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")

-- Cboe C1Options MulticastDepthOfBook Pitch 2.39.4 Framing
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message = ProtoField.new("Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.message", ftypes.STRING)
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_header = ProtoField.new("Message Header", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.messageheader", ftypes.STRING)
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.packet = ProtoField.new("Packet", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.packet", ftypes.STRING, nil, nil, nil, "Pitch Udp Packet")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.packet_header = ProtoField.new("Packet Header", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.packetheader", ftypes.STRING)

-- Cboe C1Options MulticastDepthOfBook 2.39.4 Application Messages
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.addorderexpandedmessage", ftypes.STRING, nil, nil, nil, "An Add Order message represents a newly accepted visible order on the Cboe book. Expanded version accommodates larger symbol sizes possible through the ISRA plan.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.addorderlongmessage", ftypes.STRING, nil, nil, nil, "An Add Order message represents a newly accepted visible order on the Cboe book.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.addordershortmessage", ftypes.STRING, nil, nil, nil, "An Add Order message represents a newly accepted visible order on the Cboe book.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.auctioncancelmessage", ftypes.STRING, nil, nil, nil, "Auction Cancel messages are used to disseminate the cancelation of an earlier Auction Notification message as a result of a user cancelation of the original order, a user modification request to change the price or increase the original order quantity, a fading of the NBBO or to cancel any remaining order quantity from the original Auction Notification following the auction termination.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.auctionnotificationmessage", ftypes.STRING, nil, nil, nil, "Auction Notification messages are used to disseminate order details of an auction.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.auctionsummarymessage", ftypes.STRING, nil, nil, nil, "Auction Summary messages are used to disseminate the results of an auction of a Cboe listed security.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.auctiontrademessage", ftypes.STRING, nil, nil, nil, "Auction Trade messages are used to disseminate executions resulting from an options auction.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.auctionupdatemessage", ftypes.STRING, nil, nil, nil, "Auction Update messages are used to disseminate Cboe price and size information during auctions for Cboe listed securities and for Cboe Market Close (CMC) crosses.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.deleteordermessage", ftypes.STRING, nil, nil, nil, "The Delete Order message is sent whenever an open order is completely canceled. The Order Id refers to the Order Id of the original Add Order message.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.endofsessionmessage", ftypes.STRING, nil, nil, nil, "The End of Session message is sent for each unit when the unit shuts down. No more sequenced messages will be delivered for this unit, but heartbeats from the unit may be received.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.modifyorderlongmessage", ftypes.STRING, nil, nil, nil, "The Modify Order message is sent whenever an open order is visibly modified. The Order Id refers to the Order Id of the original Add Order message.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.modifyordershortmessage", ftypes.STRING, nil, nil, nil, "The Modify Order message is sent whenever an open order is visibly modified. The Order Id refers to the Order Id of the original Add Order message.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.orderexecutedatpricesizemessage", ftypes.STRING, nil, nil, nil, "Order Executed at Price/Size messages are sent when a visible order on the Cboe book is executed in whole or in part at a different price than the limit price on the original Add Order message or the limit order price in the latest Modify Order message referencing the Order Id.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Order Executed messages are sent when a visible order on the Cboe book is executed in whole or in part.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.reducesizelongmessage", ftypes.STRING, nil, nil, nil, "Reduce Size messages are sent when a visible order on the Cboe book is partially reduced.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.reducesizeshortmessage", ftypes.STRING, nil, nil, nil, "Reduce Size messages are sent when a visible order on the Cboe book is partially reduced.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.retailpriceimprovementmessage", ftypes.STRING, nil, nil, nil, "The Retail Price Improvement message is only available on the BYX Exchange.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.symbolmappingmessage", ftypes.STRING, nil, nil, nil, "A Symbol Mapping message is used to map the 6 character multicast feed symbol field to an OSI symbol. These messages are not sequenced (sequence = 0) and are sent continuously through the day at variable rates as bandwidth allows.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.time_message = ProtoField.new("Time Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.timemessage", ftypes.STRING, nil, nil, nil, "A Time message is sent whenever the source time for a unit passes over a second boundary.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.tradebreakmessage", ftypes.STRING, nil, nil, nil, "The Trade Break message is sent whenever an execution on Cboe is broken.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trade_expanded_message = ProtoField.new("Trade Expanded Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.tradeexpandedmessage", ftypes.STRING, nil, nil, nil, "The Trade message provides information about executions of non-displayed orders on the Cboe book and routed executions to other trading centers.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.tradelongmessage", ftypes.STRING, nil, nil, nil, "The Trade message provides information about executions of non-displayed orders on the Cboe book and routed executions to other trading centers.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.tradeshortmessage", ftypes.STRING, nil, nil, nil, "The Trade message provides information about executions of non-displayed orders on the Cboe book and routed executions to other trading centers.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "The Trading Status message is used to indicate the current trading status of a security. A Trading Status message will be sent whenever a security’s trading status changes.")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.unitclearmessage", ftypes.STRING, nil, nil, nil, "The Unit Clear message instructs feed recipients to clear all orders for the Cboe book in the unit specified in the Sequenced Unit Header. This message will be sent at startup each day.")

-- Cboe C1Options MulticastDepthOfBook Pitch 2.39.4 Generated Fields
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_index = ProtoField.new("Message Index", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.messageindex", ftypes.UINT16)
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.messagesequencenumber", ftypes.UINT64)
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.timestamp = ProtoField.new("Timestamp", "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe C1Options MulticastDepthOfBook Pitch 2.39.4 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp_format = 2

-- Hours behind UTC (America/New_York) for midnight calculation
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.utc_offset_hours = 5

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C1Options MulticastDepthOfBook Pitch 2.39.4 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Cboe C1Options MulticastDepthOfBook Pitch 2.39.4 Show Options
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.timestamp_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", timestamp_format_enum, false)
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (America/New_York) for midnight calculation")

-- Handle changed preferences
function omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_application_messages then
    show.application_messages = omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_headers then
    show.headers = omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_headers
  end
  if show.structs ~= omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_structs then
    show.structs = omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_indexes then
    show.indexes = omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_sequences then
    show.sequences = omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.show_sequences
  end
  if cboe_c1options_multicastdepthofbook_pitch_v2_39_4.format_timestamp ~= omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.format_timestamp then
    cboe_c1options_multicastdepthofbook_pitch_v2_39_4.format_timestamp = omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.format_timestamp
  end
  if cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp_format ~= omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.timestamp_format then
    cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp_format = omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.timestamp_format
  end
  if cboe_c1options_multicastdepthofbook_pitch_v2_39_4.utc_offset_hours ~= omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.utc_offset_hours then
    cboe_c1options_multicastdepthofbook_pitch_v2_39_4.utc_offset_hours = omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation = {}
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.data = function(packet)
  local key = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.key(packet)
  local data = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.current = nil


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
-- Cboe C1Options MulticastDepthOfBook Pitch 2.39.4 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_end_offset = {}

-- Size: Auction End Offset
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id = {}

-- Size: Auction Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id.size = 8

-- Display: Auction Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_only_price = {}

-- Size: Auction Only Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_only_price.translate(raw)
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type = {}

-- Size: Auction Type
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.size = 1

-- Display: Auction Type
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.labels = {
  ["O"] = "Auction Type: Opening (O)",
  ["C"] = "Auction Type: Closing (C)",
  ["H"] = "Auction Type: Halt (H)",
  ["I"] = "Auction Type: Ipo (I)",
  ["M"] = "Auction Type: Close (M)",
  ["T"] = "Auction Type: Sum (T)",
  ["B"] = "Auction Type: Bam (B)",
}

cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.display = function(value)
  return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.labels[value] or "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.buy_shares = {}

-- Size: Buy Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.buy_shares.size = 4

-- Display: Buy Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.buy_shares.display = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.buy_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.buy_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.buy_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Canceled Long Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_long_quantity = {}

-- Size: Canceled Long Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_long_quantity.size = 4

-- Display: Canceled Long Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_long_quantity.display = function(value)
  return "Canceled Long Quantity: "..value
end

-- Dissect: Canceled Long Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_long_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_long_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_long_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.canceled_long_quantity, range, value, display)

  return offset + length, value
end

-- Canceled Short Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_short_quantity = {}

-- Size: Canceled Short Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_short_quantity.size = 2

-- Display: Canceled Short Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_short_quantity.display = function(value)
  return "Canceled Short Quantity: "..value
end

-- Dissect: Canceled Short Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_short_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_short_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_short_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.canceled_short_quantity, range, value, display)

  return offset + length, value
end

-- Contracts
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.contracts = {}

-- Size: Contracts
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.contracts.size = 4

-- Display: Contracts
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.contracts.display = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.contracts, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator = {}

-- Size: Customer Indicator
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator.labels = {
  ["N"] = "Customer Indicator: Non Customer (N)",
  ["C"] = "Customer Indicator: Customer (C)",
}

cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator.display = function(value)
  return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator.labels[value] or "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.executed_quantity = {}

-- Size: Executed Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id = {}

-- Size: Execution Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.size = 8

-- Display: Execution Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expanded Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol = {}

-- Size: Expanded Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.size = 8

-- Display: Expanded Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.display = function(value)
  return "Expanded Symbol: "..value
end

-- Dissect: Expanded Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.expanded_symbol, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.feed_symbol = {}

-- Size: Feed Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.indicative_price = {}

-- Size: Indicative Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.indicative_price.size = 8

-- Display: Indicative Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.indicative_price.translate(raw)
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Length
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.length = {}

-- Size: Length
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.length.size = 2

-- Display: Length
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.length, range, value, display)

  return offset + length, value
end

-- Long Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price = {}

-- Size: Long Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.size = 8

-- Display: Long Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.display = function(value)
  return "Long Price: "..value
end

-- Translate: Long Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Long Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.translate(raw)
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.long_price, range, value, display)

  return offset + length, value
end

-- Long Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity = {}

-- Size: Long Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.size = 4

-- Display: Long Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.display = function(value)
  return "Long Quantity: "..value
end

-- Dissect: Long Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.long_quantity, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_count = {}

-- Size: Message Count
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_count.size = 1

-- Display: Message Count
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_length = {}

-- Size: Message Length
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_length.size = 1

-- Display: Message Length
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_type = {}

-- Size: Message Type
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_type.size = 1

-- Display: Message Type
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_type.labels = {
  [0x20] = "Message Type: Time Message (0x20)",
  [0x97] = "Message Type: Unit Clear Message (0x97)",
  [0x21] = "Message Type: Add Order Long Message (0x21)",
  [0x22] = "Message Type: Add Order Short Message (0x22)",
  [0x2F] = "Message Type: Add Order Expanded Message (0x2F)",
  [0x23] = "Message Type: Order Executed Message (0x23)",
  [0x24] = "Message Type: Order Executed At Price Size Message (0x24)",
  [0x25] = "Message Type: Reduce Size Long Message (0x25)",
  [0x26] = "Message Type: Reduce Size Short Message (0x26)",
  [0x27] = "Message Type: Modify Order Long Message (0x27)",
  [0x28] = "Message Type: Modify Order Short Message (0x28)",
  [0x29] = "Message Type: Delete Order Message (0x29)",
  [0x2A] = "Message Type: Trade Long Message (0x2A)",
  [0x2B] = "Message Type: Trade Short Message (0x2B)",
  [0x30] = "Message Type: Trade Expanded Message (0x30)",
  [0x2C] = "Message Type: Trade Break Message (0x2C)",
  [0x2D] = "Message Type: End Of Session Message (0x2D)",
  [0x2E] = "Message Type: Symbol Mapping Message (0x2E)",
  [0x31] = "Message Type: Trading Status Message (0x31)",
  [0x95] = "Message Type: Auction Update Message (0x95)",
  [0x96] = "Message Type: Auction Summary Message (0x96)",
  [0xAD] = "Message Type: Auction Notification Message (0xAD)",
  [0xAE] = "Message Type: Auction Cancel Message (0xAE)",
  [0xAF] = "Message Type: Auction Trade Message (0xAF)",
  [0x98] = "Message Type: Retail Price Improvement Message (0x98)",
}

cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_type.display = function(value)
  return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_type.labels[value] or "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id = {}

-- Size: Order Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size = 8

-- Display: Order Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.osi_symbol = {}

-- Size: Osi Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.participant_id = {}

-- Size: Participant Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.participant_id.size = 4

-- Display: Participant Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reference_price = {}

-- Size: Reference Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reference_price.size = 8

-- Display: Reference Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reference_price.translate(raw)
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reg_sho_action.labels = {
  ["0"] = "Reg Sho Action: No Price Test In Effect (0)",
  ["1"] = "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)",
}

cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reg_sho_action.display = function(value)
  return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reg_sho_action.labels[value] or "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reserved_1 = {}

-- Size: Reserved 1
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reserved_1.size = 1

-- Display: Reserved 1
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement.labels = {
  ["B"] = "Retail Price Improvement: Buy Side (B)",
  ["S"] = "Retail Price Improvement: Sell Side (S)",
  ["A"] = "Retail Price Improvement: Buy And Sell (A)",
  ["N"] = "Retail Price Improvement: No Rpi (N)",
}

cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement.display = function(value)
  return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement.labels[value] or "Retail Price Improvement: Unknown("..value..")"
end

-- Dissect: Retail Price Improvement
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.second_reserved_1 = {}

-- Size: Second Reserved 1
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.second_reserved_1.size = 1

-- Display: Second Reserved 1
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Sell Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sell_shares = {}

-- Size: Sell Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sell_shares.size = 4

-- Display: Sell Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sell_shares.display = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sell_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sell_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sell_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sequence = {}

-- Size: Sequence
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sequence.size = 4

-- Display: Sequence
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.sequence, range, value, display)

  return offset + length, value
end

-- Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.shares = {}

-- Size: Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.shares.size = 4

-- Display: Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.shares, range, value, display)

  return offset + length, value
end

-- Short Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price = {}

-- Size: Short Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.size = 2

-- Display: Short Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.display = function(value)
  return "Short Price: "..value
end

-- Translate: Short Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.translate = function(raw)
  return raw/100
end

-- Dissect: Short Price
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.translate(raw)
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.short_price, range, value, display)

  return offset + length, value
end

-- Short Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity = {}

-- Size: Short Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity.size = 2

-- Display: Short Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity.display = function(value)
  return "Short Quantity: "..value
end

-- Dissect: Short Quantity
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.short_quantity, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator = {}

-- Size: Side Indicator
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.size = 1

-- Display: Side Indicator
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.labels = {
  ["B"] = "Side Indicator: Buy Order (B)",
  ["S"] = "Side Indicator: Sell Order (S)",
}

cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.display = function(value)
  return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.labels[value] or "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Stock Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.stock_symbol = {}

-- Size: Stock Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.stock_symbol.size = 8

-- Display: Stock Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol = {}

-- Size: Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.size = 6

-- Display: Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_condition = {}

-- Size: Symbol Condition
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_condition.labels = {
  ["N"] = "Symbol Condition: Normal (N)",
  ["C"] = "Symbol Condition: Closing Only (C)",
}

cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_condition.display = function(value)
  return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_condition.labels[value] or "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time = {}

-- Size: Time
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.size = 4

-- Store: Time
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.current = nil

-- Generated: Time
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.generated = function(value, range, packet, parent)
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.display(value)
  local time = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset = {}

-- Size: Time Offset
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size = 4

-- Display: Time Offset
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition = {}

-- Size: Trade Condition
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.size = 1

-- Display: Trade Condition
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.display = function(value)
  if value == " " then
    return "Trade Condition: Normal Trade (<whitespace>)"
  end
  if value == "S" then
    return "Trade Condition: Spread Trade (S)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status = {}

-- Size: Trading Status
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status.size = 1

-- Display: Trading Status
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status.labels = {
  ["A"] = "Trading Status: Accepting Orders (A)",
  ["H"] = "Trading Status: Halted (H)",
  ["Q"] = "Trading Status: Quote Only (Q)",
  ["S"] = "Trading Status: Exchange Specific Suspension (S)",
  ["T"] = "Trading Status: Trading (T)",
}

cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status.display = function(value)
  return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit = {}

-- Size: Unit
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit.size = 1

-- Display: Unit
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.unit, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp = {}

-- Translate: Timestamp
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_time

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.translate(time_offset, stored_time)
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.display(time_offset, stored_time, packet)
  parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.timestamp, range, value, display)

  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.generated(stored_time, range, packet, parent)

  display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.display(time_offset)
  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect = function(buffer, offset, packet, parent)
  if cboe_c1options_multicastdepthofbook_pitch_v2_39_4.format_timestamp then
    local stored_time = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.current

    if stored_time ~= nil then
      return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.composite(buffer, offset, stored_time, packet, parent)
    end
  end

  return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe C1Options MulticastDepthOfBook Pitch 2.39.4
-----------------------------------------------------------------------

-- Retail Price Improvement Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement_message = {}

-- Size: Retail Price Improvement Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement.size

-- Display: Retail Price Improvement Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: Printable ASCII
  index, expanded_symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: Alphanumeric
  index, retail_price_improvement = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_trade_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.contracts.size

-- Display: Auction Trade Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Contracts: Binary
  index, contracts = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_cancel_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id.size

-- Display: Auction Cancel Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_notification_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.contracts.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.participant_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_end_offset.size

-- Display: Auction Notification Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Contracts: Binary
  index, contracts = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.contracts.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_end_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_summary_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.stock_symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.shares.size

-- Display: Auction Summary Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Printable ASCII
  index, stock_symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Shares: Binary
  index, shares = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_update_message = {}

-- Size: Auction Update Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_update_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.stock_symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reference_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.buy_shares.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sell_shares.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.indicative_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_only_price.size

-- Display: Auction Update Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Printable ASCII
  index, stock_symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Shares: Binary
  index, buy_shares = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Binary
  index, sell_shares = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Long Price
  index, indicative_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Long Price
  index, auction_only_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_only_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status_message = {}

-- Size: Trading Status Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reg_sho_action.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reserved_1.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.second_reserved_1.size

-- Display: Trading Status Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: Printable ASCII
  index, expanded_symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reserved_1.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: Alphanumeric
  index, second_reserved_1 = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.second_reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_mapping_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.feed_symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.osi_symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_condition.size

-- Display: Symbol Mapping Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.end_of_session_message = {}

-- Size: End Of Session Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.end_of_session_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size

-- Display: End Of Session Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_break_message = {}

-- Size: Trade Break Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_break_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.size

-- Display: Trade Break Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Expanded Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_expanded_message = {}

-- Size: Trade Expanded Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_expanded_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.size

-- Display: Trade Expanded Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Expanded Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: Binary
  index, long_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: Printable ASCII
  index, expanded_symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Expanded Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trade_expanded_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_short_message = {}

-- Size: Trade Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_short_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.size

-- Display: Trade Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Short Quantity: Binary
  index, short_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Short Price: Binary Short Price
  index, short_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_long_message = {}

-- Size: Trade Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_long_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.size

-- Display: Trade Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: Binary
  index, long_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.delete_order_message = {}

-- Size: Delete Order Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.delete_order_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size

-- Display: Delete Order Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Flags
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags = {}

-- Size: Modify Flags
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags.size = 1

-- Display: Modify Flags
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Display flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Display"
  end
  -- Is Maintain Priority flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Maintain Priority"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Flags
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags.bits = function(range, value, packet, parent)

  -- Display: 1 Bit Enum with 2 values
  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.display, range, value)

  -- Maintain Priority: 1 Bit Enum with 2 values
  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.maintain_priority, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reserved_6, range, value)
end

-- Dissect: Modify Flags
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.modify_flags, range, display)

  if show.structs then
    cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_short_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags.size

-- Display: Modify Order Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Short Quantity: Binary
  index, short_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity.dissect(buffer, index, packet, parent)

  -- Short Price: Binary Short Price
  index, short_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_long_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags.size

-- Display: Modify Order Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Long Quantity: Binary
  index, long_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_short_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_short_quantity.size

-- Display: Reduce Size Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Short Quantity: Binary
  index, canceled_short_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_short_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_long_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_long_quantity.size

-- Display: Reduce Size Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Long Quantity: Binary
  index, canceled_long_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.canceled_long_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_at_price_size_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.executed_quantity.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.remaining_quantity.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.size

-- Display: Order Executed At Price Size Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary
  index, remaining_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_message = {}

-- Size: Order Executed Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.executed_quantity.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.size

-- Display: Order Executed Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Flags
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags = {}

-- Size: Add Flags
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.size = 1

-- Display: Add Flags
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Display flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Display"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Flags
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.bits = function(range, value, packet, parent)

  -- Display: 1 Bit Enum with 2 values
  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.display, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.reserved_7, range, value)
end

-- Dissect: Add Flags
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.add_flags, range, display)

  if show.structs then
    cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Expanded Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_expanded_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.participant_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator.size

-- Display: Add Order Expanded Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: Binary
  index, long_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: Printable ASCII
  index, expanded_symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_short_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.size

-- Display: Add Order Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Short Quantity: Binary
  index, short_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Short Price: Binary Short Price
  index, short_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.short_price.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_long_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.size

-- Display: Add Order Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: Binary
  index, long_quantity = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Price: Binary Long Price
  index, long_price = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit_clear_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_offset.size

-- Display: Unit Clear Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_message = {}

-- Size: Time Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_message.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.size

-- Display: Time Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.current = time

  if not packet.visited then
    cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.time_message, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.payload = {}

-- Dissect: Payload
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.payload.dispatch = {
  [0x20] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time_message.dissect,
  [0x97] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit_clear_message.dissect,
  [0x21] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_long_message.dissect,
  [0x22] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_short_message.dissect,
  [0x2F] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.add_order_expanded_message.dissect,
  [0x23] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_message.dissect,
  [0x24] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.order_executed_at_price_size_message.dissect,
  [0x25] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_long_message.dissect,
  [0x26] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.reduce_size_short_message.dissect,
  [0x27] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_long_message.dissect,
  [0x28] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.modify_order_short_message.dissect,
  [0x29] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.delete_order_message.dissect,
  [0x2A] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_long_message.dissect,
  [0x2B] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_short_message.dissect,
  [0x30] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_expanded_message.dissect,
  [0x2C] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trade_break_message.dissect,
  [0x2D] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.end_of_session_message.dissect,
  [0x2E] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.symbol_mapping_message.dissect,
  [0x31] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.trading_status_message.dissect,
  [0x95] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_update_message.dissect,
  [0x96] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_summary_message.dissect,
  [0xAD] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_notification_message.dissect,
  [0xAE] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_cancel_message.dissect,
  [0xAF] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.auction_trade_message.dissect,
  [0x98] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.retail_price_improvement_message.dissect,
}

cboe_c1options_multicastdepthofbook_pitch_v2_39_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_header = {}

-- Size: Message Header
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_header.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_length.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_type.size

-- Display: Message Header
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_header, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message = {}

-- Read runtime size of: Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message_sequence_number, UInt64.new(cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.message, buffer(offset, 0))
    local current = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.heartbeat = {}

-- Display: Heartbeat
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.messages = {}

-- Dissect: Messages
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.messages.dispatch = {
  [0] = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.heartbeat.dissect,
}

cboe_c1options_multicastdepthofbook_pitch_v2_39_4.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_header = {}

-- Size: Packet Header
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_header.size =
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.length.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_count.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit.size + 
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sequence.size

-- Display: Packet Header
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.fields.packet_header, buffer(offset, 0))
    local index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet = {}

-- Verify required size of Udp packet
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_header.size
end

-- Dissect Packet
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.current = data.time.frames[packet.number]
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_c1options_multicastdepthofbook_pitch_v2_39_4.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.init()
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.time.current = nil
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.current = nil
  cboe_c1options_multicastdepthofbook_pitch_v2_39_4.conversation.flows = {}
end

-- Dissector for Cboe C1Options MulticastDepthOfBook Pitch 2.39.4
function omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4, buffer(), omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.description, "("..buffer:len().." Bytes)")
  return cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end

  local message_count = buffer(2, 1):le_uint()

  -- Heartbeat
  if message_count == 0 then
    return true
  end

  -- Message: carries the application messages, which tell this protocol from others sharing the session framing
  if buffer:len() < 10 then
    return false
  end

  local message_type = buffer(9, 1):le_uint()

  -- Time Message
  if message_type == 0x20 then
    return true
  end

  -- Unit Clear Message
  if message_type == 0x97 then
    return true
  end

  -- Add Order Long Message
  if message_type == 0x21 then
    return true
  end

  -- Add Order Short Message
  if message_type == 0x22 then
    return true
  end

  -- Add Order Expanded Message
  if message_type == 0x2F then
    return true
  end

  -- Order Executed Message
  if message_type == 0x23 then
    return true
  end

  -- Order Executed At Price Size Message
  if message_type == 0x24 then
    return true
  end

  -- Reduce Size Long Message
  if message_type == 0x25 then
    return true
  end

  -- Reduce Size Short Message
  if message_type == 0x26 then
    return true
  end

  -- Modify Order Long Message
  if message_type == 0x27 then
    return true
  end

  -- Modify Order Short Message
  if message_type == 0x28 then
    return true
  end

  -- Delete Order Message
  if message_type == 0x29 then
    return true
  end

  -- Trade Long Message
  if message_type == 0x2A then
    return true
  end

  -- Trade Short Message
  if message_type == 0x2B then
    return true
  end

  -- Trade Expanded Message
  if message_type == 0x30 then
    return true
  end

  -- Trade Break Message
  if message_type == 0x2C then
    return true
  end

  -- End Of Session Message
  if message_type == 0x2D then
    return true
  end

  -- Symbol Mapping Message
  if message_type == 0x2E then
    return true
  end

  -- Trading Status Message
  if message_type == 0x31 then
    return true
  end

  -- Auction Update Message
  if message_type == 0x95 then
    return true
  end

  -- Auction Summary Message
  if message_type == 0x96 then
    return true
  end

  -- Auction Notification Message
  if message_type == 0xAD then
    return true
  end

  -- Auction Cancel Message
  if message_type == 0xAE then
    return true
  end

  -- Auction Trade Message
  if message_type == 0xAF then
    return true
  end

  -- Retail Price Improvement Message
  if message_type == 0x98 then
    return true
  end


  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe C1Options MulticastDepthOfBook Pitch 2.39.4 (Udp)
local function omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not cboe_c1options_multicastdepthofbook_pitch_v2_39_4.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4
  omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C1Options MulticastDepthOfBook Pitch 2.39.4
omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4:register_heuristic("udp", omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4_udp_heuristic)

-- Register Cboe C1Options MulticastDepthOfBook Pitch 2.39.4 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_c1options_multicastdepthofbook_pitch_v2_39_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.39.4
--   Date: Tuesday, August 21, 2018
--   Specification: BATS US Equities Options Multicast PITCH Specification.pdf
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
