-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CxeEquities MulticastDepthOfBook Pitch 6.2 Protocol
local omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2 = Proto("Omi.Cboe.CxeEquities.MulticastDepthOfBook.Pitch.v6.2", "Cboe CxeEquities MulticastDepthOfBook Pitch 6.2")

-- Protocol table
local cboe_cxeequities_multicastdepthofbook_pitch_v6_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CxeEquities MulticastDepthOfBook Pitch 6.2 Fields
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.add_flags = ProtoField.new("Add Flags", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.addflags", ftypes.STRING)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.auction_type = ProtoField.new("Auction Type", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.auctiontype", ftypes.STRING, nil, nil, nil, "O = Opening Auction C = Closing Auction H = Halt Auction V = Volatility Auction")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.bats_trade_timing_indicator = ProtoField.new("Bats Trade Timing Indicator", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.batstradetimingindicator", ftypes.STRING, nil, nil, nil, "MMT Level n/a")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.bats_transaction_sub_category = ProtoField.new("Bats Transaction Sub Category", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.batstransactionsubcategory", ftypes.STRING, nil, nil, nil, "MMT Level n/a")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.benchmark_indicator = ProtoField.new("Benchmark Indicator", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.benchmarkindicator", ftypes.STRING, nil, nil, nil, "MMT Level 3.5")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.buyshares", ftypes.UINT32, nil, nil, nil, "Number of shares on the buy side at the Indicative Price")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.cancelled_shares_long = ProtoField.new("Cancelled Shares Long", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.cancelledshareslong", ftypes.UINT32, nil, nil, nil, "Number of shares cancelled")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.cancelled_shares_short = ProtoField.new("Cancelled Shares Short", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.cancelledsharesshort", ftypes.UINT16, nil, nil, nil, "Number of shares cancelled")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.crossing_trade = ProtoField.new("Crossing Trade", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.crossingtrade", ftypes.STRING, nil, nil, nil, "MMT Level 3.3")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.currency = ProtoField.new("Currency", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.currency", ftypes.STRING, nil, nil, nil, "Traded currency.")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.ex_cum_dividend = ProtoField.new("Ex Cum Dividend", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.excumdividend", ftypes.STRING, nil, nil, nil, "MMT Level 3.6")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.executedshares", ftypes.UINT32, nil, nil, nil, "Number of shares executed")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.execution_flags = ProtoField.new("Execution Flags", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.executionflags", ftypes.STRING)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.execution_id = ProtoField.new("Execution Id", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.executionid", ftypes.UINT64, nil, nil, nil, "BATS Chi-X Europe generated day-unique execution identifier of this execution. Execution Id is also referenced in the Trade Break Message.")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.executionvenue", ftypes.STRING, nil, nil, nil, "The venue on which the trade executed, when applicable. This will contain the MIC representing the venue on which the trade occurred, where applicable. e.g. for BATS Chi-X Europe NT trades, this shall be BATE or CHIX as applicable. Where no MIC is applicable, this field will be blank. A special value of AUT can be used to identify OTC trades executed in an automated manner.")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.indicativeprice", ftypes.UINT64, nil, nil, nil, "Price at which the auction would match if executed at the time of the message")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.length = ProtoField.new("Length", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.market_mechanism = ProtoField.new("Market Mechanism", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.marketmechanism", ftypes.STRING, nil, nil, nil, "MMT Level 1")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_count = ProtoField.new("Message Count", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_length = ProtoField.new("Message Length", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_type = ProtoField.new("Message Type", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.modification_indicator = ProtoField.new("Modification Indicator", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.modificationindicator", ftypes.STRING, nil, nil, nil, "MMT Level 3.4")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.negotiated_trade = ProtoField.new("Negotiated Trade", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.negotiatedtrade", ftypes.STRING, nil, nil, nil, "MMT Level 3.2")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.order_id = ProtoField.new("Order Id", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.orderid", ftypes.UINT64, nil, nil, nil, "Day-specific identifier assigned to this order")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.participant_id = ProtoField.new("Participant Id", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.participantid", ftypes.STRING, nil, nil, nil, "Attributes this quote to a particular participant.")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.price_binary_8 = ProtoField.new("Price Binary 8", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.pricebinary8", ftypes.UINT64, nil, nil, nil, "Auction price")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.price_determination = ProtoField.new("Price Determination", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.pricedetermination", ftypes.STRING, nil, nil, nil, "0 = Normal 1 = Manual (Price override by Market Supervision)")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.price_long = ProtoField.new("Price Long", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.pricelong", ftypes.DOUBLE, nil, nil, nil, "The limit order price")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.price_short = ProtoField.new("Price Short", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.priceshort", ftypes.DOUBLE, nil, nil, nil, "The limit order price")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.publication_mode = ProtoField.new("Publication Mode", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.publicationmode", ftypes.STRING, nil, nil, nil, "MMT Level 4")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.quantitylong", ftypes.UINT32, nil, nil, nil, "Number of shares being added to the book (may be less than the number entered)")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.quantityshort", ftypes.UINT16, nil, nil, nil, "Number of shares being added to the book (may be less than the number entered)")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.reference_price = ProtoField.new("Reference Price", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.referenceprice", ftypes.UINT64)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.remaining_shares = ProtoField.new("Remaining Shares", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.remainingshares", ftypes.UINT32, nil, nil, nil, "Number of shares remaining after the execution")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.reserved3", ftypes.STRING, nil, nil, nil, "Reserved")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.reserved_8 = ProtoField.new("Reserved 8", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.reserved8", ftypes.UINT64)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.sellshares", ftypes.UINT32, nil, nil, nil, "Number of shares on the sell side at the Indicative Price")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.sequence = ProtoField.new("Sequence", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.sequence", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.shares_extended = ProtoField.new("Shares Extended", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.sharesextended", ftypes.UINT64, nil, nil, nil, "Number of shares executed")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.shares_long = ProtoField.new("Shares Long", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.shareslong", ftypes.UINT32, nil, nil, nil, "Number of shares associated with this order after this modify (may be less than the number of shares entered)")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.shares_short = ProtoField.new("Shares Short", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.sharesshort", ftypes.UINT16, nil, nil, nil, "Number of shares associated with this order after this modify (may be less than the number of shares entered)")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.si_quote = ProtoField.new("Si Quote", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.siquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "‘SI Quote’ indicator. If set, indicates this Add represents an ”SI Quote”.")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.sideindicator", ftypes.STRING, nil, nil, nil, "B = Buy Order S = Sell Order")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.statistic_type = ProtoField.new("Statistic Type", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.statistictype", ftypes.STRING, nil, nil, nil, "C = Closing Price H = High Price L = Low Price O = Opening Price P = Previous Closing Price")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.status = ProtoField.new("Status", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.status", ftypes.STRING, nil, nil, nil, "T = Trading R = Off-Book Reporting C = Closed S = Suspension N = No Reference Price V = Volatility Interruption O = Opening Auction E = Closing Auction H = Halt M = Market Order Imbalance Extension P = Price Monitoring Extension")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.symbol_alphanumeric_6 = ProtoField.new("Symbol Alphanumeric 6", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.symbolalphanumeric6", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.symbolshort", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.time = ProtoField.new("Time", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.time", ftypes.UINT32, nil, nil, nil, "Number of whole seconds from midnight London time")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.time_offset = ProtoField.new("Time Offset", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.tradeflags", ftypes.STRING)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_id = ProtoField.new("Trade Id", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.tradeid", ftypes.UINT64, nil, nil, nil, "BATS Chi-X Europe generated identifier of this trade. This identifier is guaranteed to be unique for at least 7 calendar days.")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_report_flags = ProtoField.new("Trade Report Flags", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.tradereportflags", ftypes.STRING)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_timestamp = ProtoField.new("Trade Timestamp", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.tradetimestamp", ftypes.UINT64, nil, nil, nil, "Date/Time on which the trade occurred, encoded as the number of nanoseconds since the January 1st 1970 UTC (also known as the Unix epoch).")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trading_mode = ProtoField.new("Trading Mode", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.tradingmode", ftypes.STRING, nil, nil, nil, "MMT Level 2")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.transactioncategory", ftypes.STRING, nil, nil, nil, "MMT Level 3.1")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.unit = ProtoField.new("Unit", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.unused_1 = ProtoField.new("Unused 1", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.unused1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Reserved")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.unused_6 = ProtoField.new("Unused 6", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.unused6", ftypes.UINT8, nil, base.DEC, 0xFC, "Reserved")

-- Cboe CxeEquities MulticastDepthOfBook Pitch 6.2 Framing
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message = ProtoField.new("Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.message", ftypes.STRING)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_header = ProtoField.new("Message Header", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.messageheader", ftypes.STRING)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.packet = ProtoField.new("Packet", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.packet", ftypes.STRING, nil, nil, nil, "Pitch Udp Packet")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.packet_header = ProtoField.new("Packet Header", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.packetheader", ftypes.STRING)

-- Cboe CxeEquities MulticastDepthOfBook 6.2 Application Messages
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.addorderexpandedmessage", ftypes.STRING, nil, nil, nil, "Add Order — Expanded")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.addorderlongmessage", ftypes.STRING, nil, nil, nil, "Add Order — Long")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.addordershortmessage", ftypes.STRING, nil, nil, nil, "Add Order — Short")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.auctionsummarymessage", ftypes.STRING)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.auctionupdatemessage", ftypes.STRING)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.deleteordermessage", ftypes.STRING, nil, nil, nil, "Delete Order")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.endofsessionmessage", ftypes.STRING, nil, nil, nil, "End of Session")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.modifyorderlongmessage", ftypes.STRING, nil, nil, nil, "Modify Order — Long")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.modifyordershortmessage", ftypes.STRING, nil, nil, nil, "Modify Order — Short")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.orderexecutedatpricesizemessage", ftypes.STRING, nil, nil, nil, "Order Executed at Price/Size")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Order Executed")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.reducesizelongmessage", ftypes.STRING, nil, nil, nil, "Reduce Size — Long")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.reducesizeshortmessage", ftypes.STRING, nil, nil, nil, "Reduce Size — Short")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.statistics_message = ProtoField.new("Statistics Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.statisticsmessage", ftypes.STRING)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.time_message = ProtoField.new("Time Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.timemessage", ftypes.STRING, nil, nil, nil, "Time")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.tradebreakmessage", ftypes.STRING, nil, nil, nil, "Trade Break")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.tradelongmessage", ftypes.STRING, nil, nil, nil, "Trade — Long")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_report_message = ProtoField.new("Trade Report Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.tradereportmessage", ftypes.STRING)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.tradeshortmessage", ftypes.STRING, nil, nil, nil, "Trade — Short")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "Trading Status")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.unitclearmessage", ftypes.STRING, nil, nil, nil, "Unit Clear")

-- Cboe CxeEquities MulticastDepthOfBook Pitch 6.2 Generated Fields
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_index = ProtoField.new("Message Index", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.messageindex", ftypes.UINT16)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.messagesequencenumber", ftypes.UINT64)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.timestamp = ProtoField.new("Timestamp", "cboe.cxeequities.multicastdepthofbook.pitch.v6.2.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe CxeEquities MulticastDepthOfBook Pitch 6.2 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp_format = 2

-- Hours behind UTC (EST) for midnight calculation
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.utc_offset_hours = 5

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CxeEquities MulticastDepthOfBook Pitch 6.2 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Cboe CxeEquities MulticastDepthOfBook Pitch 6.2 Show Options
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.timestamp_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", timestamp_format_enum, false)
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_application_messages then
    show.application_messages = omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_headers then
    show.headers = omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_headers
  end
  if show.structs ~= omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_structs then
    show.structs = omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_indexes then
    show.indexes = omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_sequences then
    show.sequences = omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.show_sequences
  end
  if cboe_cxeequities_multicastdepthofbook_pitch_v6_2.format_timestamp ~= omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.format_timestamp then
    cboe_cxeequities_multicastdepthofbook_pitch_v6_2.format_timestamp = omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.format_timestamp
  end
  if cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp_format ~= omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.timestamp_format then
    cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp_format = omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.timestamp_format
  end
  if cboe_cxeequities_multicastdepthofbook_pitch_v6_2.utc_offset_hours ~= omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.utc_offset_hours then
    cboe_cxeequities_multicastdepthofbook_pitch_v6_2.utc_offset_hours = omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation = {}
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.data = function(packet)
  local key = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.key(packet)
  local data = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.current = nil


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
-- Cboe CxeEquities MulticastDepthOfBook Pitch 6.2 Fields
-----------------------------------------------------------------------

-- Auction Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_type = {}

-- Size: Auction Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_type.size = 1

-- Display: Auction Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "H" then
    return "Auction Type: Halt Auction (H)"
  end
  if value == "V" then
    return "Auction Type: Volatility Auction (V)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bats Trade Timing Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_trade_timing_indicator = {}

-- Size: Bats Trade Timing Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_trade_timing_indicator.size = 1

-- Display: Bats Trade Timing Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_trade_timing_indicator.display = function(value)
  if value == "1" then
    return "Bats Trade Timing Indicator: The Trade Was Reported To Bats Chi X Europe Late (1)"
  end
  if value == "2" then
    return "Bats Trade Timing Indicator: The Trade Was Reported To Bats Chi X Europe Out Of The Main Session (2)"
  end
  if value == "-" then
    return "Bats Trade Timing Indicator: Otherwise Note This Flag Is Not Defined By Mmt (-)"
  end

  return "Bats Trade Timing Indicator: Unknown("..value..")"
end

-- Dissect: Bats Trade Timing Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_trade_timing_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_trade_timing_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_trade_timing_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.bats_trade_timing_indicator, range, value, display)

  return offset + length, value
end

-- Bats Transaction Sub Category
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_transaction_sub_category = {}

-- Size: Bats Transaction Sub Category
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_transaction_sub_category.size = 1

-- Display: Bats Transaction Sub Category
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_transaction_sub_category.display = function(value)
  if value == "-" then
    return "Bats Transaction Sub Category: Not Defined Note This Flag Is Not Defined By Mmt And Is Reserved For Future Use (-)"
  end

  return "Bats Transaction Sub Category: Unknown("..value..")"
end

-- Dissect: Bats Transaction Sub Category
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_transaction_sub_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_transaction_sub_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_transaction_sub_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.bats_transaction_sub_category, range, value, display)

  return offset + length, value
end

-- Benchmark Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.benchmark_indicator = {}

-- Size: Benchmark Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.benchmark_indicator.size = 1

-- Display: Benchmark Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.benchmark_indicator.display = function(value)
  if value == "B" then
    return "Benchmark Indicator: Benchmark Trade If Optionally Set By Reporting Party (B)"
  end
  if value == "-" then
    return "Benchmark Indicator: Not Specified (-)"
  end

  return "Benchmark Indicator: Unknown("..value..")"
end

-- Dissect: Benchmark Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.benchmark_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.benchmark_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.benchmark_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Buy Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.buy_shares = {}

-- Size: Buy Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.buy_shares.size = 4

-- Display: Buy Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.buy_shares.display = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.buy_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.buy_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.buy_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Cancelled Shares Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_long = {}

-- Size: Cancelled Shares Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_long.size = 4

-- Display: Cancelled Shares Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_long.display = function(value)
  return "Cancelled Shares Long: "..value
end

-- Dissect: Cancelled Shares Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.cancelled_shares_long, range, value, display)

  return offset + length, value
end

-- Cancelled Shares Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_short = {}

-- Size: Cancelled Shares Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_short.size = 2

-- Display: Cancelled Shares Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_short.display = function(value)
  return "Cancelled Shares Short: "..value
end

-- Dissect: Cancelled Shares Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.cancelled_shares_short, range, value, display)

  return offset + length, value
end

-- Crossing Trade
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.crossing_trade = {}

-- Size: Crossing Trade
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.crossing_trade.size = 1

-- Display: Crossing Trade
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.crossing_trade.display = function(value)
  if value == "X" then
    return "Crossing Trade: Crossing Trade (X)"
  end
  if value == "-" then
    return "Crossing Trade: Not Specified (-)"
  end

  return "Crossing Trade: Unknown("..value..")"
end

-- Dissect: Crossing Trade
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.crossing_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.crossing_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.crossing_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.crossing_trade, range, value, display)

  return offset + length, value
end

-- Currency
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.currency = {}

-- Size: Currency
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.currency.size = 3

-- Display: Currency
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.currency, range, value, display)

  return offset + length, value
end

-- Ex Cum Dividend
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend = {}

-- Size: Ex Cum Dividend
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend.size = 1

-- Display: Ex Cum Dividend
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend.display = function(value)
  if value == "E" then
    return "Ex Cum Dividend: Ex Cum Dividend If Optionally Set By Reporting Party (E)"
  end
  if value == "-" then
    return "Ex Cum Dividend: Not Specified (-)"
  end

  return "Ex Cum Dividend: Unknown("..value..")"
end

-- Dissect: Ex Cum Dividend
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.ex_cum_dividend, range, value, display)

  return offset + length, value
end

-- Executed Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.executed_shares = {}

-- Size: Executed Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.executed_shares.size = 4

-- Display: Executed Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.executed_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id = {}

-- Size: Execution Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.size = 8

-- Display: Execution Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Execution Venue
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_venue = {}

-- Size: Execution Venue
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_venue.size = 4

-- Display: Execution Venue
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_venue.display = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.indicative_price = {}

-- Size: Indicative Price
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.indicative_price.size = 8

-- Display: Indicative Price
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.indicative_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Length
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.length = {}

-- Size: Length
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.length.size = 2

-- Display: Length
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.length, range, value, display)

  return offset + length, value
end

-- Market Mechanism
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism = {}

-- Size: Market Mechanism
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism.size = 1

-- Display: Market Mechanism
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism.display = function(value)
  if value == "1" then
    return "Market Mechanism: Central Limit Order Book (1)"
  end
  if value == "2" then
    return "Market Mechanism: Quote Driven Market (2)"
  end
  if value == "3" then
    return "Market Mechanism: Dark Order Book (3)"
  end
  if value == "4" then
    return "Market Mechanism: Off Book (4)"
  end

  return "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_count = {}

-- Size: Message Count
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_count.size = 1

-- Display: Message Count
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_length = {}

-- Size: Message Length
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_length.size = 1

-- Display: Message Length
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_type = {}

-- Size: Message Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_type.size = 1

-- Display: Message Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0x40 then
    return "Message Type: Add Order Long Message (0x40)"
  end
  if value == 0x22 then
    return "Message Type: Add Order Short Message (0x22)"
  end
  if value == 0x2f then
    return "Message Type: Add Order Expanded Message (0x2f)"
  end
  if value == 0x23 then
    return "Message Type: Order Executed Message (0x23)"
  end
  if value == 0x24 then
    return "Message Type: Order Executed At Price Size Message (0x24)"
  end
  if value == 0x25 then
    return "Message Type: Reduce Size Long Message (0x25)"
  end
  if value == 0x26 then
    return "Message Type: Reduce Size Short Message (0x26)"
  end
  if value == 0x27 then
    return "Message Type: Modify Order Long Message (0x27)"
  end
  if value == 0x28 then
    return "Message Type: Modify Order Short Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: Delete Order Message (0x29)"
  end
  if value == 0x41 then
    return "Message Type: Trade Long Message (0x41)"
  end
  if value == 0x2B then
    return "Message Type: Trade Short Message (0x2B)"
  end
  if value == 0x2C then
    return "Message Type: Trade Break Message (0x2C)"
  end
  if value == 0x32 then
    return "Message Type: Trade Report Message (0x32)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0x34 then
    return "Message Type: Statistics Message (0x34)"
  end
  if value == 0x95 then
    return "Message Type: Auction Update Message (0x95)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Modification Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modification_indicator = {}

-- Size: Modification Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modification_indicator.size = 1

-- Display: Modification Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modification_indicator.display = function(value)
  if value == "A" then
    return "Modification Indicator: Indicates A Modification Of A Previously Reported Trade (A)"
  end
  if value == "C" then
    return "Modification Indicator: Indicates A Cancellation Of A Previously Reported Trade (C)"
  end
  if value == "-" then
    return "Modification Indicator: Not Specified (-)"
  end

  return "Modification Indicator: Unknown("..value..")"
end

-- Dissect: Modification Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modification_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Negotiated Trade
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.negotiated_trade = {}

-- Size: Negotiated Trade
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.negotiated_trade.size = 1

-- Display: Negotiated Trade
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.negotiated_trade.display = function(value)
  if value == "N" then
    return "Negotiated Trade: Negotiated Trade (N)"
  end
  if value == "-" then
    return "Negotiated Trade: Not Specified (-)"
  end

  return "Negotiated Trade: Unknown("..value..")"
end

-- Dissect: Negotiated Trade
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.negotiated_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.negotiated_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.negotiated_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.negotiated_trade, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id = {}

-- Size: Order Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size = 8

-- Display: Order Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.participant_id = {}

-- Size: Participant Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.participant_id.size = 4

-- Display: Participant Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price Binary 8
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_binary_8 = {}

-- Size: Price Binary 8
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_binary_8.size = 8

-- Display: Price Binary 8
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_binary_8.display = function(value)
  return "Price Binary 8: "..value
end

-- Dissect: Price Binary 8
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_binary_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_binary_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_binary_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.price_binary_8, range, value, display)

  return offset + length, value
end

-- Price Determination
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_determination = {}

-- Size: Price Determination
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_determination.size = 1

-- Display: Price Determination
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_determination.display = function(value)
  if value == "0" then
    return "Price Determination: Normal (0)"
  end
  if value == "1" then
    return "Price Determination: Manual Price Override By Market Supervision (1)"
  end

  return "Price Determination: Unknown("..value..")"
end

-- Dissect: Price Determination
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_determination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_determination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_determination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.price_determination, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long = {}

-- Size: Price Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.size = 8

-- Display: Price Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.translate(raw)
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short = {}

-- Size: Price Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.size = 2

-- Display: Price Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.translate(raw)
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.price_short, range, value, display)

  return offset + length, value
end

-- Publication Mode
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.publication_mode = {}

-- Size: Publication Mode
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.publication_mode.size = 1

-- Display: Publication Mode
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.publication_mode.display = function(value)
  if value == "1" then
    return "Publication Mode: Trade Report Has Been Delayed At The Request Of The Reporting Party (1)"
  end
  if value == "-" then
    return "Publication Mode: Not Specified (-)"
  end

  return "Publication Mode: Unknown("..value..")"
end

-- Dissect: Publication Mode
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.publication_mode.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.publication_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.publication_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.publication_mode, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_long = {}

-- Size: Quantity Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_long.size = 4

-- Display: Quantity Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_short = {}

-- Size: Quantity Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_short.size = 2

-- Display: Quantity Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reference_price = {}

-- Size: Reference Price
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reference_price.size = 8

-- Display: Reference Price
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reference_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remaining Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.remaining_shares = {}

-- Size: Remaining Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.remaining_shares.size = 4

-- Display: Remaining Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.remaining_shares.display = function(value)
  return "Remaining Shares: "..value
end

-- Dissect: Remaining Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.remaining_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.remaining_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.remaining_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.remaining_shares, range, value, display)

  return offset + length, value
end

-- Reserved 3
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_3 = {}

-- Size: Reserved 3
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_3.size = 3

-- Display: Reserved 3
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 8
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_8 = {}

-- Size: Reserved 8
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_8.size = 8

-- Display: Reserved 8
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_8.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Sell Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sell_shares = {}

-- Size: Sell Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sell_shares.size = 4

-- Display: Sell Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sell_shares.display = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sell_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sell_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sell_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sequence = {}

-- Size: Sequence
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sequence.size = 4

-- Display: Sequence
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.sequence, range, value, display)

  return offset + length, value
end

-- Shares Extended
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_extended = {}

-- Size: Shares Extended
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_extended.size = 8

-- Display: Shares Extended
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_extended.display = function(value)
  return "Shares Extended: "..value
end

-- Dissect: Shares Extended
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_extended.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.shares_extended, range, value, display)

  return offset + length, value
end

-- Shares Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long = {}

-- Size: Shares Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long.size = 4

-- Display: Shares Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long.display = function(value)
  return "Shares Long: "..value
end

-- Dissect: Shares Long
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.shares_long, range, value, display)

  return offset + length, value
end

-- Shares Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_short = {}

-- Size: Shares Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_short.size = 2

-- Display: Shares Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_short.display = function(value)
  return "Shares Short: "..value
end

-- Dissect: Shares Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.shares_short, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator = {}

-- Size: Side Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.size = 1

-- Display: Side Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Statistic Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistic_type = {}

-- Size: Statistic Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistic_type.size = 1

-- Display: Statistic Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistic_type.display = function(value)
  if value == "C" then
    return "Statistic Type: Closing Price (C)"
  end
  if value == "H" then
    return "Statistic Type: High Price (H)"
  end
  if value == "L" then
    return "Statistic Type: Low Price (L)"
  end
  if value == "O" then
    return "Statistic Type: Opening Price (O)"
  end
  if value == "P" then
    return "Statistic Type: Previous Closing Price (P)"
  end

  return "Statistic Type: Unknown("..value..")"
end

-- Dissect: Statistic Type
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistic_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistic_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistic_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Status
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.status = {}

-- Size: Status
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.status.size = 1

-- Display: Status
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.status.display = function(value)
  if value == "T" then
    return "Status: Trading (T)"
  end
  if value == "R" then
    return "Status: Off Book Reporting (R)"
  end
  if value == "C" then
    return "Status: Closed (C)"
  end
  if value == "S" then
    return "Status: Suspension (S)"
  end
  if value == "N" then
    return "Status: No Reference Price (N)"
  end
  if value == "V" then
    return "Status: Volatility Interruption (V)"
  end
  if value == "O" then
    return "Status: Opening Auction (O)"
  end
  if value == "E" then
    return "Status: Closing Auction (E)"
  end
  if value == "H" then
    return "Status: Halt (H)"
  end
  if value == "M" then
    return "Status: Market Order Imbalance Extension (M)"
  end
  if value == "P" then
    return "Status: Price Monitoring Extension (P)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol Alphanumeric 6
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_alphanumeric_6 = {}

-- Size: Symbol Alphanumeric 6
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_alphanumeric_6.size = 6

-- Display: Symbol Alphanumeric 6
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_alphanumeric_6.display = function(value)
  return "Symbol Alphanumeric 6: "..value
end

-- Dissect: Symbol Alphanumeric 6
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_alphanumeric_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_alphanumeric_6.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_alphanumeric_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.symbol_alphanumeric_6, range, value, display)

  return offset + length, value
end

-- Symbol Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short = {}

-- Size: Symbol Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.size = 8

-- Display: Symbol Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Time
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time = {}

-- Size: Time
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.size = 4

-- Store: Time
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.current = nil

-- Generated: Time
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.generated = function(value, range, packet, parent)
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.display(value)
  local time = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset = {}

-- Size: Time Offset
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size = 4

-- Display: Time Offset
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trade Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_id = {}

-- Size: Trade Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_id.size = 8

-- Display: Trade Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Timestamp
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_timestamp = {}

-- Size: Trade Timestamp
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_timestamp.size = 8

-- Display: Trade Timestamp
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_timestamp.display = function(value)
  return "Trade Timestamp: "..value
end

-- Dissect: Trade Timestamp
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_timestamp, range, value, display)

  return offset + length, value
end

-- Trading Mode
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode = {}

-- Size: Trading Mode
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode.size = 1

-- Display: Trading Mode
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode.display = function(value)
  if value == "2" then
    return "Trading Mode: Continuous Trading (2)"
  end
  if value == "3" then
    return "Trading Mode: At Market Close Trading (3)"
  end
  if value == "4" then
    return "Trading Mode: Out Of Main Session (4)"
  end
  if value == "5" then
    return "Trading Mode: Trade Reporting On Exchange (5)"
  end
  if value == "6" then
    return "Trading Mode: Trade Reporting Off Exchange (6)"
  end
  if value == "7" then
    return "Trading Mode: Trade Reporting Systematic Internalizer (7)"
  end
  if value == "O" then
    return "Trading Mode: Scheduled Opening Auction (O)"
  end
  if value == "K" then
    return "Trading Mode: Scheduled Closing Auction (K)"
  end
  if value == "I" then
    return "Trading Mode: Scheduled Intraday Auction (I)"
  end
  if value == "U" then
    return "Trading Mode: Unscheduled Auction (U)"
  end

  return "Trading Mode: Unknown("..value..")"
end

-- Dissect: Trading Mode
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Transaction Category
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.transaction_category = {}

-- Size: Transaction Category
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.transaction_category.size = 1

-- Display: Transaction Category
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.transaction_category.display = function(value)
  if value == "P" then
    return "Transaction Category: Plain Vanilla Trade (P)"
  end
  if value == "D" then
    return "Transaction Category: Dark Trade (D)"
  end
  if value == "T" then
    return "Transaction Category: Technical Trade (T)"
  end
  if value == "G" then
    return "Transaction Category: Giveup Givein Trade (G)"
  end
  if value == "F" then
    return "Transaction Category: Trade With Conditions (F)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Unit
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit = {}

-- Size: Unit
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit.size = 1

-- Display: Unit
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.unit, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp = {}

-- Translate: Timestamp
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_time

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.translate(time_offset, stored_time)
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.display(time_offset, stored_time, packet)
  parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.timestamp, range, value, display)

  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.generated(stored_time, range, packet, parent)

  display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.display(time_offset)
  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect = function(buffer, offset, packet, parent)
  if cboe_cxeequities_multicastdepthofbook_pitch_v6_2.format_timestamp then
    local stored_time = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.current

    if stored_time ~= nil then
      return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.composite(buffer, offset, stored_time, packet, parent)
    end
  end

  return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe CxeEquities MulticastDepthOfBook Pitch 6.2
-----------------------------------------------------------------------

-- Auction Summary Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_summary_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_type.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_binary_8.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long.size

-- Display: Auction Summary Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_type.dissect(buffer, index, packet, parent)

  -- Price Binary 8: Binary
  index, price_binary_8 = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_binary_8.dissect(buffer, index, packet, parent)

  -- Shares Long: Binary
  index, shares_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_update_message = {}

-- Size: Auction Update Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_update_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_type.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reference_price.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.buy_shares.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sell_shares.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.indicative_price.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_8.size

-- Display: Auction Update Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary
  index, reference_price = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Shares: Binary
  index, buy_shares = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: Binary
  index, sell_shares = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary
  index, indicative_price = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.indicative_price.dissect(buffer, index, packet, parent)

  -- Reserved 8: Binary
  index, reserved_8 = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistics_message = {}

-- Size: Statistics Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistics_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistic_type.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_determination.size

-- Display: Statistics Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.dissect(buffer, index, packet, parent)

  -- Statistic Type: Alphanumeric
  index, statistic_type = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistic_type.dissect(buffer, index, packet, parent)

  -- Price Determination: Alphanumeric
  index, price_determination = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_determination.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.statistics_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_status_message = {}

-- Size: Trading Status Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_status_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.status.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_3.size

-- Display: Trading Status Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.status.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.end_of_session_message = {}

-- Size: End Of Session Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.end_of_session_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size

-- Display: End Of Session Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_flags = {}

-- Size: Trade Report Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_flags.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_trade_timing_indicator.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.transaction_category.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.negotiated_trade.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.crossing_trade.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modification_indicator.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.benchmark_indicator.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.publication_mode.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_transaction_sub_category.size

-- Display: Trade Report Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bats Trade Timing Indicator: Alphanumeric
  index, bats_trade_timing_indicator = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_trade_timing_indicator.dissect(buffer, index, packet, parent)

  -- Market Mechanism: Alphanumeric
  index, market_mechanism = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alphanumeric
  index, trading_mode = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alphanumeric
  index, transaction_category = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiated Trade: Alphanumeric
  index, negotiated_trade = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.negotiated_trade.dissect(buffer, index, packet, parent)

  -- Crossing Trade: Alphanumeric
  index, crossing_trade = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.crossing_trade.dissect(buffer, index, packet, parent)

  -- Modification Indicator: Alphanumeric
  index, modification_indicator = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modification_indicator.dissect(buffer, index, packet, parent)

  -- Benchmark Indicator: Alphanumeric
  index, benchmark_indicator = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.benchmark_indicator.dissect(buffer, index, packet, parent)

  -- Ex Cum Dividend: Alphanumeric
  index, ex_cum_dividend = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend.dissect(buffer, index, packet, parent)

  -- Publication Mode: Alphanumeric
  index, publication_mode = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.publication_mode.dissect(buffer, index, packet, parent)

  -- Bats Transaction Sub Category: Alphanumeric
  index, bats_transaction_sub_category = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.bats_transaction_sub_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_flags.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_report_flags, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_flags.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_message = {}

-- Size: Trade Report Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_extended.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_timestamp.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_venue.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.currency.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_flags.size

-- Display: Trade Report Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Shares Extended: Binary
  index, shares_extended = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_extended.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: Binary
  index, trade_timestamp = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Execution Venue: Alphanumeric
  index, execution_venue = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_venue.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.currency.dissect(buffer, index, packet, parent)

  -- Trade Report Flags: Struct of 11 fields
  index, trade_report_flags = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_report_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_break_message = {}

-- Size: Trade Break Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_break_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.size

-- Display: Trade Break Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags = {}

-- Size: Trade Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.transaction_category.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend.size

-- Display: Trade Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: Alphanumeric
  index, market_mechanism = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alphanumeric
  index, trading_mode = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alphanumeric
  index, transaction_category = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.transaction_category.dissect(buffer, index, packet, parent)

  -- Ex Cum Dividend: Alphanumeric
  index, ex_cum_dividend = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_flags, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_short_message = {}

-- Size: Trade Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_short_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_alphanumeric_6.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags.size

-- Display: Trade Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Short: Binary
  index, shares_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_short.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 6: Alphanumeric
  index, symbol_alphanumeric_6 = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 4 fields
  index, trade_flags = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_long_message = {}

-- Size: Trade Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_long_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags.size

-- Display: Trade Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Long: Binary
  index, shares_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 4 fields
  index, trade_flags = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.delete_order_message = {}

-- Size: Delete Order Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.delete_order_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size

-- Display: Delete Order Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_short_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.size

-- Display: Modify Order Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  -- Shares Short: Binary
  index, shares_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_long_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.size

-- Display: Modify Order Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  -- Shares Long: Binary
  index, shares_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.shares_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_short_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_short.size

-- Display: Reduce Size Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  -- Cancelled Shares Short: Binary
  index, cancelled_shares_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_long_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_long.size

-- Display: Reduce Size Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  -- Cancelled Shares Long: Binary
  index, cancelled_shares_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.cancelled_shares_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags = {}

-- Size: Execution Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend.size

-- Display: Execution Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: Alphanumeric
  index, market_mechanism = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alphanumeric
  index, trading_mode = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_mode.dissect(buffer, index, packet, parent)

  -- Ex Cum Dividend: Alphanumeric
  index, ex_cum_dividend = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.ex_cum_dividend.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.execution_flags, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_at_price_size_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.executed_shares.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.remaining_shares.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags.size

-- Display: Order Executed At Price Size Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  -- Executed Shares: Binary
  index, executed_shares = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.executed_shares.dissect(buffer, index, packet, parent)

  -- Remaining Shares: Binary
  index, remaining_shares = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.remaining_shares.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 3 fields
  index, execution_flags = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_message = {}

-- Size: Order Executed Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.executed_shares.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags.size

-- Display: Order Executed Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  -- Executed Shares: Binary
  index, executed_shares = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.executed_shares.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_id.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 3 fields
  index, execution_flags = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_flags = {}

-- Size: Add Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_flags.size = 1

-- Display: Add Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unused 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Unused 1"
  end
  -- Is Si Quote flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Si Quote"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_flags.bits = function(range, value, packet, parent)

  -- Unused 1: 1 Bit
  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.unused_1, range, value)

  -- Si Quote: 1 Bit
  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.si_quote, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.unused_6, range, value)
end

-- Dissect: Add Flags
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.add_flags, range, display)

  if show.structs then
    cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Expanded Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_expanded_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_long.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_flags.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.participant_id.size

-- Display: Add Order Expanded Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_short_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_alphanumeric_6.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.size

-- Display: Add Order Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 6: Alphanumeric
  index, symbol_alphanumeric_6 = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_long_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_long.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.size

-- Display: Add Order Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit_clear_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_offset.size

-- Display: Unit Clear Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_message = {}

-- Size: Time Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_message.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.size

-- Display: Time Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.current = time

  if not packet.visited then
    cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.time_message, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.payload = {}

-- Dissect: Payload
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x40 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2f then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x41 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == 0x32 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.end_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x34 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0x95 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.auction_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_header = {}

-- Size: Message Header
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_header.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_length.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_type.size

-- Display: Message Header
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, message_type = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_header, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message = {}

-- Read runtime size of: Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message_sequence_number, UInt64.new(cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.message, buffer(offset, 0))
    local current = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.heartbeat = {}

-- Display: Heartbeat
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.messages = {}

-- Dissect: Messages
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_header = {}

-- Size: Packet Header
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_header.size =
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.length.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_count.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit.size + 
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sequence.size

-- Display: Packet Header
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.fields.packet_header, buffer(offset, 0))
    local index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet = {}

-- Verify required size of Udp packet
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_header.size
end

-- Dissect Packet
cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.current = data.time.frames[packet.number]
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_cxeequities_multicastdepthofbook_pitch_v6_2.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.init()
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.time.current = nil
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.current = nil
  cboe_cxeequities_multicastdepthofbook_pitch_v6_2.conversation.flows = {}
end

-- Dissector for Cboe CxeEquities MulticastDepthOfBook Pitch 6.2
function omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2, buffer(), omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.description, "("..buffer:len().." Bytes)")
  return cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe CxeEquities MulticastDepthOfBook Pitch 6.2 (Udp)
local function omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cxeequities_multicastdepthofbook_pitch_v6_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2
  omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CxeEquities MulticastDepthOfBook Pitch 6.2
omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2:register_heuristic("udp", omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2_udp_heuristic)

-- Register Cboe CxeEquities MulticastDepthOfBook Pitch 6.2 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_cxeequities_multicastdepthofbook_pitch_v6_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 6.2
--   Since: 6.0
--   Date: Tuesday, January 21, 2014
--   Specification: BATS_Europe_MC_PITCH_Specification_Effective.pdf
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
