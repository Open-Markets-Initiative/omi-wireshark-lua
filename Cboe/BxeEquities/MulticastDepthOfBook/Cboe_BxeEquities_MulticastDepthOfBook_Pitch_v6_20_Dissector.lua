-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe BxeEquities MulticastDepthOfBook Pitch 6.20 Protocol
local omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20 = Proto("Omi.Cboe.BxeEquities.MulticastDepthOfBook.Pitch.v6.20", "Cboe BxeEquities MulticastDepthOfBook Pitch 6.20")

-- Protocol table
local cboe_bxeequities_multicastdepthofbook_pitch_v6_20 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe BxeEquities MulticastDepthOfBook Pitch 6.20 Fields
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.add_flags = ProtoField.new("Add Flags", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.addflags", ftypes.STRING)
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.algorithmicindicator", ftypes.STRING, nil, nil, nil, "MMT Level 3.9")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.algorithmic_trade = ProtoField.new("Algorithmic Trade", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.algorithmictrade", ftypes.STRING, nil, nil, nil, "MMT Level 3.9")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.auction_type = ProtoField.new("Auction Type", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.auctiontype", ftypes.STRING, nil, nil, nil, "O = Opening Auction C = Closing Auction H = Halt Auction V = Volatility Auction P = Periodic Auction")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.bats_trade_timing_indicator = ProtoField.new("Bats Trade Timing Indicator", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.batstradetimingindicator", ftypes.STRING, nil, nil, nil, "‘1’ The trade was reported to Bats ‘late’, ‘2’ The trade was reported to Bats out of the Main Session, ‘3’The trade was reported to Bats late and out of the Main Session ‘-’ otherwise. NOTE:2and3are not valid values on the Trade Reporting Facility.")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.benchmark_reference_price_indicator = ProtoField.new("Benchmark Reference Price Indicator", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.benchmarkreferencepriceindicator", ftypes.STRING, nil, nil, nil, "MMT Level 3.5")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.cancelled_shares_long = ProtoField.new("Cancelled Shares Long", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.cancelledshareslong", ftypes.UINT32, nil, nil, nil, "Number of shares cancelled")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.cancelled_shares_short = ProtoField.new("Cancelled Shares Short", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.cancelledsharesshort", ftypes.UINT16, nil, nil, nil, "Number of shares cancelled")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.crossing_trade = ProtoField.new("Crossing Trade", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.crossingtrade", ftypes.STRING, nil, nil, nil, "MMT Level 3.3")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.currency = ProtoField.new("Currency", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.currency", ftypes.STRING, nil, nil, nil, "Traded currency.")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.deferral_or_enrichement_type = ProtoField.new("Deferral Or Enrichement Type", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.deferralorenrichementtype", ftypes.STRING, nil, nil, nil, "MMT Level 4.2")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.duplicativeindicator", ftypes.STRING, nil, nil, nil, "MMT Level 5")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.ex_cum_dividend = ProtoField.new("Ex Cum Dividend", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.excumdividend", ftypes.STRING, nil, nil, nil, "MMT Level 3.6")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.executedshares", ftypes.UINT32, nil, nil, nil, "Number of shares executed")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.execution_flags = ProtoField.new("Execution Flags", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.executionflags", ftypes.STRING)
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.execution_id = ProtoField.new("Execution Id", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.executionid", ftypes.UINT64, nil, nil, nil, "Bats generated day-unique execution identifier of this execution. Execution Id is also referenced in the Trade Break Message.")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.executionvenue", ftypes.STRING, nil, nil, nil, "The venue on which the trade executed, when applicable. This will contain the MIC representing the venue on which the trade occurred, where applicable. e.g. for Bats NT trades, this shall be BATE or CHIX as applicable. This will contain SINT if the trade occurred on a Systematic Internaliser or XOFF if OTC. Bats LIS trades have the value LISX.")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.extended_trade_flags = ProtoField.new("Extended Trade Flags", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.extendedtradeflags", ftypes.STRING)
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.includes_primary = ProtoField.new("Includes Primary", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.includesprimary", ftypes.STRING, nil, nil, nil, "Indicates whether the Bats EBBO used to collar this update includes the Primary Market quotes: P = Includes Primary N = Excludes Primary - = Not specified")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Price at which the auction would match if executed at the time of the message")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.indicative_shares = ProtoField.new("Indicative Shares", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.indicativeshares", ftypes.UINT32, nil, nil, nil, "Number of shares at the Indicative Price")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.length = ProtoField.new("Length", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.length", ftypes.UINT16, nil, nil, nil, "Length of entire block of messages. Includes this header and Message Count messages to follow")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.market_mechanism = ProtoField.new("Market Mechanism", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.marketmechanism", ftypes.STRING, nil, nil, nil, "MMT Level 1")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_count = ProtoField.new("Message Count", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages to follow this header")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_length = ProtoField.new("Message Length", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.messagelength", ftypes.UINT8, nil, nil, nil, "Current Pitch message length")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_type = ProtoField.new("Message Type", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.modification_indicator = ProtoField.new("Modification Indicator", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.modificationindicator", ftypes.STRING, nil, nil, nil, "MMT Level 3.4")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.negotiated_trade = ProtoField.new("Negotiated Trade", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.negotiatedtrade", ftypes.STRING, nil, nil, nil, "MMT Level 3.2")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.off_book_automated_indicator = ProtoField.new("Off Book Automated Indicator", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.offbookautomatedindicator", ftypes.STRING, nil, nil, nil, "MMT Level 3.7")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.order_id = ProtoField.new("Order Id", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.orderid", ftypes.UINT64, nil, nil, nil, "Day-specific identifier assigned to this order")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.outside_tolerance = ProtoField.new("Outside Tolerance", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.outsidetolerance", ftypes.STRING, nil, nil, nil, "Indicates whether the price on this update is outside the Bats EBBO collar: O = Outside tolerance I = Inside tolerance - = Not specified")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.participant_id = ProtoField.new("Participant Id", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.participantid", ftypes.STRING, nil, nil, nil, "Attributes this quote to a particular participant.")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.price_determination = ProtoField.new("Price Determination", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.pricedetermination", ftypes.STRING, nil, nil, nil, "0 = Normal 1 = Manual (Price override by Market Supervision)")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.price_formation_discovery_process = ProtoField.new("Price Formation Discovery Process", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.priceformationdiscoveryprocess", ftypes.STRING, nil, nil, nil, "MMT Level 3.8")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.price_long = ProtoField.new("Price Long", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.pricelong", ftypes.DOUBLE, nil, nil, nil, "The limit order price")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.price_short = ProtoField.new("Price Short", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.priceshort", ftypes.DOUBLE, nil, nil, nil, "The limit order price")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.publication_mode_deferral_reason = ProtoField.new("Publication Mode Deferral Reason", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.publicationmodedeferralreason", ftypes.STRING, nil, nil, nil, "MMT Level 4.1")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.quantitylong", ftypes.UINT32, nil, nil, nil, "Number of shares being added to the book (may be less than the number entered)")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.quantityshort", ftypes.UINT16, nil, nil, nil, "Number of shares being added to the book (may be less than the number entered)")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.reference_price = ProtoField.new("Reference Price", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.referenceprice", ftypes.DOUBLE, nil, nil, nil, "Reference price used in tie-breaker situations")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.remaining_shares = ProtoField.new("Remaining Shares", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.remainingshares", ftypes.UINT32, nil, nil, nil, "Number of shares remaining after the execution")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.reserved3", ftypes.STRING, nil, nil, nil, "Reserved")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.sequence = ProtoField.new("Sequence", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.sequence", ftypes.UINT32, nil, nil, nil, "Sequence Number of the first message to follow this header")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.shares_extended = ProtoField.new("Shares Extended", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.sharesextended", ftypes.UINT64, nil, nil, nil, "Number of shares executed")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.shares_long = ProtoField.new("Shares Long", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.shareslong", ftypes.UINT32, nil, nil, nil, "Number of shares associated with this order after this modify (may be less than the number of shares entered)")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.shares_short = ProtoField.new("Shares Short", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.sharesshort", ftypes.UINT16, nil, nil, nil, "Number of shares associated with this order after this modify (may be less than the number of shares entered)")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.si_quote = ProtoField.new("Si Quote", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.siquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "‘SI Quote’ indicator. If set, indicates this Add represents an ”SI Quote”.")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.sideindicator", ftypes.STRING, nil, nil, nil, "B = Buy Order S = Sell Order")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.special_dividend = ProtoField.new("Special Dividend", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.specialdividend", ftypes.STRING, nil, nil, nil, "MMT Level 3.6")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.statistic_type = ProtoField.new("Statistic Type", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.statistictype", ftypes.STRING, nil, nil, nil, "C = Closing Price H = High Price L = Low Price O = Opening Price P = Previous Closing Price")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.status = ProtoField.new("Status", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.status", ftypes.STRING, nil, nil, nil, "T = Trading R = Off-Book Reporting C = Closed S = Suspension N = No Reference Price V = Volatility Interruption O = Opening Auction E = Closing Auction H = Halt M = Market Order Imbalance Extension P = Price Monitoring Extension")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.symbol_alphanumeric_6 = ProtoField.new("Symbol Alphanumeric 6", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.symbolalphanumeric6", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.symbol_long = ProtoField.new("Symbol Long", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.symbollong", ftypes.STRING, nil, nil, nil, "Symbol in ISIN")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.symbol_short = ProtoField.new("Symbol Short", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.symbolshort", ftypes.STRING, nil, nil, nil, "Symbol right padded with spaces")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.time = ProtoField.new("Time", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.time", ftypes.UINT32, nil, nil, nil, "Number of whole seconds from midnight London time")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.time_offset = ProtoField.new("Time Offset", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.timeoffset", ftypes.UINT32, nil, nil, nil, "Nanosecond offset from last unit timestamp")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_flags = ProtoField.new("Trade Flags", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.tradeflags", ftypes.STRING)
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_id = ProtoField.new("Trade Id", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.tradeid", ftypes.UINT64, nil, nil, nil, "Bats generated identifier of this trade. This identifier is guaranteed to be unique for at least 7 calendar days.")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_timestamp = ProtoField.new("Trade Timestamp", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.tradetimestamp", ftypes.UINT64, nil, nil, nil, "Date/Time on which the trade occurred, encoded as the number of nanoseconds since the January 1st 1970 UTC (also known as the Unix epoch).")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trading_mode = ProtoField.new("Trading Mode", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.tradingmode", ftypes.STRING, nil, nil, nil, "MMT Level 2")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.transactioncategory", ftypes.STRING, nil, nil, nil, "MMT Level 3.1")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.unit = ProtoField.new("Unit", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.unit", ftypes.UINT8, nil, nil, nil, "Unit that applies to messages included in this header")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.unused_1 = ProtoField.new("Unused 1", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.unused1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Reserved")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.unused_6 = ProtoField.new("Unused 6", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.unused6", ftypes.UINT8, nil, base.DEC, 0xFC, "Reserved")

-- Cboe BxeEquities MulticastDepthOfBook Pitch 6.20 Framing
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message = ProtoField.new("Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.message", ftypes.STRING)
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_header = ProtoField.new("Message Header", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.messageheader", ftypes.STRING)
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.packet = ProtoField.new("Packet", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.packet", ftypes.STRING, nil, nil, nil, "Pitch Udp Packet")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.packet_header = ProtoField.new("Packet Header", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.packetheader", ftypes.STRING)

-- Cboe BxeEquities MulticastDepthOfBook 6.20 Application Messages
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.addorderexpandedmessage", ftypes.STRING, nil, nil, nil, "Add Order — Expanded")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.addorderlongmessage", ftypes.STRING, nil, nil, nil, "Add Order — Long")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.addordershortmessage", ftypes.STRING, nil, nil, nil, "Add Order — Short")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.auctionsummarymessage", ftypes.STRING)
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.auctionupdatemessage", ftypes.STRING)
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.deleteordermessage", ftypes.STRING, nil, nil, nil, "Delete Order")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.endofsessionmessage", ftypes.STRING, nil, nil, nil, "End of Session")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.modifyorderlongmessage", ftypes.STRING, nil, nil, nil, "Modify Order — Long")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.modifyordershortmessage", ftypes.STRING, nil, nil, nil, "Modify Order — Short")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.orderexecutedatpricesizemessage", ftypes.STRING, nil, nil, nil, "Order Executed at Price/Size")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.orderexecutedmessage", ftypes.STRING, nil, nil, nil, "Order Executed")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.reducesizelongmessage", ftypes.STRING, nil, nil, nil, "Reduce Size — Long")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.reducesizeshortmessage", ftypes.STRING, nil, nil, nil, "Reduce Size — Short")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.statistics_message = ProtoField.new("Statistics Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.statisticsmessage", ftypes.STRING)
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.time_message = ProtoField.new("Time Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.timemessage", ftypes.STRING, nil, nil, nil, "Time")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_extended_message = ProtoField.new("Trade Extended Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.tradeextendedmessage", ftypes.STRING, nil, nil, nil, "Trade — Extended")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.tradelongmessage", ftypes.STRING, nil, nil, nil, "Trade — Long")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.tradeshortmessage", ftypes.STRING, nil, nil, nil, "Trade — Short")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_unknown_symbol_message = ProtoField.new("Trade Unknown Symbol Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.tradeunknownsymbolmessage", ftypes.STRING, nil, nil, nil, "Trade — Unknown Symbol")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.tradingstatusmessage", ftypes.STRING, nil, nil, nil, "Trading Status")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.unitclearmessage", ftypes.STRING, nil, nil, nil, "Unit Clear")

-- Cboe BxeEquities MulticastDepthOfBook Pitch 6.20 Generated Fields
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_index = ProtoField.new("Message Index", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.messageindex", ftypes.UINT16)
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.messagesequencenumber", ftypes.UINT64)
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.timestamp = ProtoField.new("Timestamp", "cboe.bxeequities.multicastdepthofbook.pitch.v6.20.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe BxeEquities MulticastDepthOfBook Pitch 6.20 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp_format = 2

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.format_timestamp = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe BxeEquities MulticastDepthOfBook Pitch 6.20 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Cboe BxeEquities MulticastDepthOfBook Pitch 6.20 Show Options
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")

omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.timestamp_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", timestamp_format_enum, false)

-- Handle changed preferences
function omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_application_messages then
    show.application_messages = omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_headers then
    show.headers = omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_headers
  end
  if show.structs ~= omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_structs then
    show.structs = omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_indexes then
    show.indexes = omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_indexes
  end
  if show.sequences ~= omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_sequences then
    show.sequences = omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.show_sequences
  end
  if cboe_bxeequities_multicastdepthofbook_pitch_v6_20.format_timestamp ~= omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.format_timestamp then
    cboe_bxeequities_multicastdepthofbook_pitch_v6_20.format_timestamp = omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.format_timestamp
  end
  if cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp_format ~= omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.timestamp_format then
    cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp_format = omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation = {}
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.data = function(packet)
  local key = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.key(packet)
  local data = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.current = nil


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
-- Cboe BxeEquities MulticastDepthOfBook Pitch 6.20 Fields
-----------------------------------------------------------------------

-- Algorithmic Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_indicator = {}

-- Size: Algorithmic Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_indicator.size = 1

-- Display: Algorithmic Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_indicator.display = function(value)
  return "Algorithmic Indicator: "..value
end

-- Dissect: Algorithmic Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Algorithmic Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade = {}

-- Size: Algorithmic Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade.size = 1

-- Display: Algorithmic Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade.labels = {
  ["H"] = "Algorithmic Trade: Algorithmic Trade (H)",
  ["-"] = "Algorithmic Trade: Non Algorithmic Trade (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade.labels[value] or "Algorithmic Trade: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.algorithmic_trade, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type = {}

-- Size: Auction Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type.size = 1

-- Display: Auction Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type.labels = {
  ["O"] = "Auction Type: Opening Auction (O)",
  ["C"] = "Auction Type: Closing Auction (C)",
  ["H"] = "Auction Type: Halt Auction (H)",
  ["V"] = "Auction Type: Volatility Auction (V)",
  ["P"] = "Auction Type: Periodic Auction (P)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type.labels[value] or "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bats Trade Timing Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator = {}

-- Size: Bats Trade Timing Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator.size = 1

-- Display: Bats Trade Timing Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator.labels = {
  ["1"] = "Bats Trade Timing Indicator: The Trade Was Reported To Bats Late (1)",
  ["2"] = "Bats Trade Timing Indicator: The Trade Was Reported To Bats Out Of The Main Session (2)",
  ["3"] = "Bats Trade Timing Indicator: The Trade Was Reported To Bats Late And Out Of The Main Session (3)",
  ["-"] = "Bats Trade Timing Indicator: Otherwise Note 2and 3are Not Valid Values On The Trade Reporting Facility (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator.labels[value] or "Bats Trade Timing Indicator: Unknown("..value..")"
end

-- Dissect: Bats Trade Timing Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.bats_trade_timing_indicator, range, value, display)

  return offset + length, value
end

-- Benchmark Reference Price Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator = {}

-- Size: Benchmark Reference Price Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator.size = 1

-- Display: Benchmark Reference Price Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator.labels = {
  ["B"] = "Benchmark Reference Price Indicator: Benchmark Trade If Optionally Set By Reporting Party (B)",
  ["S"] = "Benchmark Reference Price Indicator: Reference Price Trade (S)",
  ["-"] = "Benchmark Reference Price Indicator: Not Specified (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator.labels[value] or "Benchmark Reference Price Indicator: Unknown("..value..")"
end

-- Dissect: Benchmark Reference Price Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.benchmark_reference_price_indicator, range, value, display)

  return offset + length, value
end

-- Cancelled Shares Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_long = {}

-- Size: Cancelled Shares Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_long.size = 4

-- Display: Cancelled Shares Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_long.display = function(value)
  return "Cancelled Shares Long: "..value
end

-- Dissect: Cancelled Shares Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.cancelled_shares_long, range, value, display)

  return offset + length, value
end

-- Cancelled Shares Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_short = {}

-- Size: Cancelled Shares Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_short.size = 2

-- Display: Cancelled Shares Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_short.display = function(value)
  return "Cancelled Shares Short: "..value
end

-- Dissect: Cancelled Shares Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.cancelled_shares_short, range, value, display)

  return offset + length, value
end

-- Crossing Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.crossing_trade = {}

-- Size: Crossing Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.crossing_trade.size = 1

-- Display: Crossing Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.crossing_trade.labels = {
  ["X"] = "Crossing Trade: Crossing Trade (X)",
  ["-"] = "Crossing Trade: Not Specified (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.crossing_trade.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.crossing_trade.labels[value] or "Crossing Trade: Unknown("..value..")"
end

-- Dissect: Crossing Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.crossing_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.crossing_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.crossing_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.crossing_trade, range, value, display)

  return offset + length, value
end

-- Currency
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.currency = {}

-- Size: Currency
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.currency.size = 3

-- Display: Currency
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.currency, range, value, display)

  return offset + length, value
end

-- Deferral Or Enrichement Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.deferral_or_enrichement_type = {}

-- Size: Deferral Or Enrichement Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.deferral_or_enrichement_type.size = 1

-- Display: Deferral Or Enrichement Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.deferral_or_enrichement_type.labels = {
  ["1"] = "Deferral Or Enrichement Type: Limited Details Trade (1)",
  ["2"] = "Deferral Or Enrichement Type: Daily Aggregated Trade (2)",
  ["3"] = "Deferral Or Enrichement Type: Volume Omission Trade (3)",
  ["4"] = "Deferral Or Enrichement Type: Four Weeks Aggregation Trade (4)",
  ["5"] = "Deferral Or Enrichement Type: Indefinite Aggregation Trade (5)",
  ["6"] = "Deferral Or Enrichement Type: Volume Omission Trade Eligible For Subsequent Enrichment In Aggregated Form (6)",
  ["7"] = "Deferral Or Enrichement Type: Full Details Of Earlier Limited Details Trade (7)",
  ["8"] = "Deferral Or Enrichement Type: Full Details Of Earlier Daily Aggregated Trade (8)",
  ["9"] = "Deferral Or Enrichement Type: Full Details Of Earlier Volume Omission Trade (9)",
  ["V"] = "Deferral Or Enrichement Type: Full Details Of Four Weeks Aggregation Trade (V)",
  ["W"] = "Deferral Or Enrichement Type: Full Details Of Earlier Volume Omission Trade Eligible For Subsequent Enrichment In Aggregated Form (W)",
  ["-"] = "Deferral Or Enrichement Type: Not Applicable (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.deferral_or_enrichement_type.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.deferral_or_enrichement_type.labels[value] or "Deferral Or Enrichement Type: Unknown("..value..")"
end

-- Dissect: Deferral Or Enrichement Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.deferral_or_enrichement_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.deferral_or_enrichement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.deferral_or_enrichement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.deferral_or_enrichement_type, range, value, display)

  return offset + length, value
end

-- Duplicative Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.duplicative_indicator = {}

-- Size: Duplicative Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.duplicative_indicator.size = 1

-- Display: Duplicative Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.duplicative_indicator.labels = {
  ["1"] = "Duplicative Indicator: Duplicative Trade Report (1)",
  ["-"] = "Duplicative Indicator: Unique Trade Report (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.duplicative_indicator.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.duplicative_indicator.labels[value] or "Duplicative Indicator: Unknown("..value..")"
end

-- Dissect: Duplicative Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.duplicative_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Ex Cum Dividend
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.ex_cum_dividend = {}

-- Size: Ex Cum Dividend
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.ex_cum_dividend.size = 1

-- Display: Ex Cum Dividend
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.ex_cum_dividend.labels = {
  ["E"] = "Ex Cum Dividend: Ex Cum Special Dividend If Optionally Set By Reporting Party (E)",
  ["-"] = "Ex Cum Dividend: Not Specified (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.ex_cum_dividend.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.ex_cum_dividend.labels[value] or "Ex Cum Dividend: Unknown("..value..")"
end

-- Dissect: Ex Cum Dividend
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.ex_cum_dividend.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.ex_cum_dividend.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.ex_cum_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.ex_cum_dividend, range, value, display)

  return offset + length, value
end

-- Executed Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.executed_shares = {}

-- Size: Executed Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.executed_shares.size = 4

-- Display: Executed Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.executed_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id = {}

-- Size: Execution Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.size = 8

-- Display: Execution Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Execution Venue
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_venue = {}

-- Size: Execution Venue
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_venue.size = 4

-- Display: Execution Venue
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_venue.display = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Includes Primary
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.includes_primary = {}

-- Size: Includes Primary
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.includes_primary.size = 1

-- Display: Includes Primary
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.includes_primary.labels = {
  ["P"] = "Includes Primary: Includes Primary (P)",
  ["N"] = "Includes Primary: Excludes Primary (N)",
  ["-"] = "Includes Primary: Not Specified (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.includes_primary.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.includes_primary.labels[value] or "Includes Primary: Unknown("..value..")"
end

-- Dissect: Includes Primary
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.includes_primary.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.includes_primary.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.includes_primary.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.includes_primary, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_price = {}

-- Size: Indicative Price
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_price.size = 8

-- Display: Indicative Price
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_price.translate(raw)
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Indicative Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_shares = {}

-- Size: Indicative Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_shares.size = 4

-- Display: Indicative Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_shares.display = function(value)
  return "Indicative Shares: "..value
end

-- Dissect: Indicative Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.indicative_shares, range, value, display)

  return offset + length, value
end

-- Length
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.length = {}

-- Size: Length
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.length.size = 2

-- Display: Length
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.length, range, value, display)

  return offset + length, value
end

-- Market Mechanism
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism = {}

-- Size: Market Mechanism
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.size = 1

-- Display: Market Mechanism
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.labels = {
  ["1"] = "Market Mechanism: Central Limit Order Book (1)",
  ["2"] = "Market Mechanism: Quote Driven Market (2)",
  ["3"] = "Market Mechanism: Dark Order Book (3)",
  ["4"] = "Market Mechanism: Off Book (4)",
  ["5"] = "Market Mechanism: Periodic Auction (5)",
  ["6"] = "Market Mechanism: Request For Quotes 7 Any Other Including Hybrid (6)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.labels[value] or "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_count = {}

-- Size: Message Count
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_count.size = 1

-- Display: Message Count
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_length = {}

-- Size: Message Length
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_length.size = 1

-- Display: Message Length
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_type = {}

-- Size: Message Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_type.size = 1

-- Display: Message Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_type.display = function(value)
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
  if value == 0x32 then
    return "Message Type: Trade Extended Message (0x32)"
  end
  if value == 0x35 then
    return "Message Type: Trade Unknown Symbol Message (0x35)"
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
  if value == 0xAC then
    return "Message Type: Auction Update Message (0xAC)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end

  return "Message Type: Unknown("..string.format("0x%02X", value)..")"
end

-- Dissect: Message Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_type, range, value, display)

  return offset + length, value
end

-- Modification Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modification_indicator = {}

-- Size: Modification Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modification_indicator.size = 1

-- Display: Modification Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modification_indicator.labels = {
  ["A"] = "Modification Indicator: Indicates A Modification Of A Previously Reported Trade (A)",
  ["C"] = "Modification Indicator: Indicates A Cancellation Of A Previously Reported Trade (C)",
  ["-"] = "Modification Indicator: Not Specified (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modification_indicator.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modification_indicator.labels[value] or "Modification Indicator: Unknown("..value..")"
end

-- Dissect: Modification Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modification_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Negotiated Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.negotiated_trade = {}

-- Size: Negotiated Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.negotiated_trade.size = 1

-- Display: Negotiated Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.negotiated_trade.labels = {
  ["1"] = "Negotiated Trade: Negotiated Trade In Liquid Financial Instruments (1)",
  ["2"] = "Negotiated Trade: Negotiated Trade In Illiquid Financial Instruments (2)",
  ["3"] = "Negotiated Trade: Negotiated Trade Subject To Conditions Other Than The Current Market Price (3)",
  ["N"] = "Negotiated Trade: Negotiated Trade Where None Of The Above Apply (N)",
  ["4"] = "Negotiated Trade: Pre Trade Transparency Waiver For Illiquid Instrument On An Si (4)",
  ["5"] = "Negotiated Trade: Pre Trade Transparency Waiver For Above Standard Market Size On An Si 6 Pre Trade Transparency Waivers For Illiquid Instrument On An Si And Above Standard Market Size On An Si (5)",
  ["-"] = "Negotiated Trade: Not Specified (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.negotiated_trade.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.negotiated_trade.labels[value] or "Negotiated Trade: Unknown("..value..")"
end

-- Dissect: Negotiated Trade
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.negotiated_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.negotiated_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.negotiated_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.negotiated_trade, range, value, display)

  return offset + length, value
end

-- Off Book Automated Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.off_book_automated_indicator = {}

-- Size: Off Book Automated Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.off_book_automated_indicator.size = 1

-- Display: Off Book Automated Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.off_book_automated_indicator.labels = {
  ["Q"] = "Off Book Automated Indicator: Automated (Q)",
  ["M"] = "Off Book Automated Indicator: Manual (M)",
  ["-"] = "Off Book Automated Indicator: Not Specified (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.off_book_automated_indicator.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.off_book_automated_indicator.labels[value] or "Off Book Automated Indicator: Unknown("..value..")"
end

-- Dissect: Off Book Automated Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.off_book_automated_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.off_book_automated_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.off_book_automated_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.off_book_automated_indicator, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id = {}

-- Size: Order Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size = 8

-- Display: Order Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.order_id, range, value, display)

  return offset + length, value
end

-- Outside Tolerance
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.outside_tolerance = {}

-- Size: Outside Tolerance
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.outside_tolerance.size = 1

-- Display: Outside Tolerance
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.outside_tolerance.labels = {
  ["O"] = "Outside Tolerance: Outside Tolerance (O)",
  ["I"] = "Outside Tolerance: Inside Tolerance (I)",
  ["-"] = "Outside Tolerance: Not Specified (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.outside_tolerance.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.outside_tolerance.labels[value] or "Outside Tolerance: Unknown("..value..")"
end

-- Dissect: Outside Tolerance
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.outside_tolerance.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.outside_tolerance.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.outside_tolerance.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.outside_tolerance, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.participant_id = {}

-- Size: Participant Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.participant_id.size = 4

-- Display: Participant Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price Determination
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_determination = {}

-- Size: Price Determination
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_determination.size = 1

-- Display: Price Determination
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_determination.labels = {
  ["0"] = "Price Determination: Normal (0)",
  ["1"] = "Price Determination: Manual Price Override By Market Supervision (1)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_determination.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_determination.labels[value] or "Price Determination: Unknown("..value..")"
end

-- Dissect: Price Determination
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_determination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_determination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_determination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.price_determination, range, value, display)

  return offset + length, value
end

-- Price Formation Discovery Process
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_formation_discovery_process = {}

-- Size: Price Formation Discovery Process
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_formation_discovery_process.size = 1

-- Display: Price Formation Discovery Process
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_formation_discovery_process.labels = {
  ["P"] = "Price Formation Discovery Process: Standard Trade For The Specified Market Mechanism Or Trading Mode (P)",
  ["T"] = "Price Formation Discovery Process: Non Price Forming Trade Formerly Known As Technical Trade (T)",
  ["J"] = "Price Formation Discovery Process: Trade Not Contributing To Price Discovery Process Formerly Technical Trade N Price Is Currently Not Available But Pending (J)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_formation_discovery_process.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_formation_discovery_process.labels[value] or "Price Formation Discovery Process: Unknown("..value..")"
end

-- Dissect: Price Formation Discovery Process
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_formation_discovery_process.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_formation_discovery_process.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_formation_discovery_process.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.price_formation_discovery_process, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long = {}

-- Size: Price Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.size = 8

-- Display: Price Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.translate(raw)
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short = {}

-- Size: Price Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.size = 2

-- Display: Price Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.translate(raw)
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.price_short, range, value, display)

  return offset + length, value
end

-- Publication Mode Deferral Reason
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.publication_mode_deferral_reason = {}

-- Size: Publication Mode Deferral Reason
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.publication_mode_deferral_reason.size = 1

-- Display: Publication Mode Deferral Reason
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.publication_mode_deferral_reason.labels = {
  ["1"] = "Publication Mode Deferral Reason: Trade Report Reported Late Without Permitted Deferral (1)",
  ["2"] = "Publication Mode Deferral Reason: Deferral Trade For Large In Scale (2)",
  ["3"] = "Publication Mode Deferral Reason: Deferral Trade For Illiquid Instrument (3)",
  ["4"] = "Publication Mode Deferral Reason: Deferral Trade For Size Specific 5 Deferral Trade For Illiquid Instrument And Size Specific 6 Deferral Trade For Illiquid Instrument And Large In Scale (4)",
  ["-"] = "Publication Mode Deferral Reason: Not Specified Immediate Publication (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.publication_mode_deferral_reason.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.publication_mode_deferral_reason.labels[value] or "Publication Mode Deferral Reason: Unknown("..value..")"
end

-- Dissect: Publication Mode Deferral Reason
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.publication_mode_deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.publication_mode_deferral_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.publication_mode_deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.publication_mode_deferral_reason, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_long = {}

-- Size: Quantity Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_long.size = 4

-- Display: Quantity Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_short = {}

-- Size: Quantity Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_short.size = 2

-- Display: Quantity Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reference_price = {}

-- Size: Reference Price
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reference_price.size = 8

-- Display: Reference Price
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reference_price.translate(raw)
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remaining Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.remaining_shares = {}

-- Size: Remaining Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.remaining_shares.size = 4

-- Display: Remaining Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.remaining_shares.display = function(value)
  return "Remaining Shares: "..value
end

-- Dissect: Remaining Shares
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.remaining_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.remaining_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.remaining_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.remaining_shares, range, value, display)

  return offset + length, value
end

-- Reserved 3
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reserved_3 = {}

-- Size: Reserved 3
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reserved_3.size = 3

-- Display: Reserved 3
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.sequence = {}

-- Size: Sequence
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.sequence.size = 4

-- Display: Sequence
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.sequence, range, value, display)

  return offset + length, value
end

-- Shares Extended
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_extended = {}

-- Size: Shares Extended
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_extended.size = 8

-- Display: Shares Extended
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_extended.display = function(value)
  return "Shares Extended: "..value
end

-- Dissect: Shares Extended
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_extended.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.shares_extended, range, value, display)

  return offset + length, value
end

-- Shares Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long = {}

-- Size: Shares Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long.size = 4

-- Display: Shares Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long.display = function(value)
  return "Shares Long: "..value
end

-- Dissect: Shares Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.shares_long, range, value, display)

  return offset + length, value
end

-- Shares Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_short = {}

-- Size: Shares Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_short.size = 2

-- Display: Shares Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_short.display = function(value)
  return "Shares Short: "..value
end

-- Dissect: Shares Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.shares_short, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator = {}

-- Size: Side Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.size = 1

-- Display: Side Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.labels = {
  ["B"] = "Side Indicator: Buy Order (B)",
  ["S"] = "Side Indicator: Sell Order (S)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.labels[value] or "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Special Dividend
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.special_dividend = {}

-- Size: Special Dividend
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.special_dividend.size = 1

-- Display: Special Dividend
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.special_dividend.display = function(value)
  return "Special Dividend: "..value
end

-- Dissect: Special Dividend
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.special_dividend.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.special_dividend.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.special_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.special_dividend, range, value, display)

  return offset + length, value
end

-- Statistic Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistic_type = {}

-- Size: Statistic Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistic_type.size = 1

-- Display: Statistic Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistic_type.labels = {
  ["C"] = "Statistic Type: Closing Price (C)",
  ["H"] = "Statistic Type: High Price (H)",
  ["L"] = "Statistic Type: Low Price (L)",
  ["O"] = "Statistic Type: Opening Price (O)",
  ["P"] = "Statistic Type: Previous Closing Price (P)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistic_type.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistic_type.labels[value] or "Statistic Type: Unknown("..value..")"
end

-- Dissect: Statistic Type
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistic_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistic_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistic_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Status
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.status = {}

-- Size: Status
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.status.size = 1

-- Display: Status
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.status.labels = {
  ["T"] = "Status: Trading (T)",
  ["R"] = "Status: Off Book Reporting (R)",
  ["C"] = "Status: Closed (C)",
  ["S"] = "Status: Suspension (S)",
  ["N"] = "Status: No Reference Price (N)",
  ["V"] = "Status: Volatility Interruption (V)",
  ["O"] = "Status: Opening Auction (O)",
  ["E"] = "Status: Closing Auction (E)",
  ["H"] = "Status: Halt (H)",
  ["M"] = "Status: Market Order Imbalance Extension (M)",
  ["P"] = "Status: Price Monitoring Extension (P)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.status.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.status.labels[value] or "Status: Unknown("..value..")"
end

-- Dissect: Status
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol Alphanumeric 6
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_alphanumeric_6 = {}

-- Size: Symbol Alphanumeric 6
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_alphanumeric_6.size = 6

-- Display: Symbol Alphanumeric 6
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_alphanumeric_6.display = function(value)
  return "Symbol Alphanumeric 6: "..value
end

-- Dissect: Symbol Alphanumeric 6
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_alphanumeric_6.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_alphanumeric_6.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_alphanumeric_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.symbol_alphanumeric_6, range, value, display)

  return offset + length, value
end

-- Symbol Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_long = {}

-- Size: Symbol Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_long.size = 12

-- Display: Symbol Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_long.display = function(value)
  return "Symbol Long: "..value
end

-- Dissect: Symbol Long
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.symbol_long, range, value, display)

  return offset + length, value
end

-- Symbol Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short = {}

-- Size: Symbol Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.size = 8

-- Display: Symbol Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.display = function(value)
  return "Symbol Short: "..value
end

-- Dissect: Symbol Short
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.symbol_short, range, value, display)

  return offset + length, value
end

-- Time
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time = {}

-- Size: Time
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.size = 4

-- Store: Time
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.current = nil

-- Generated: Time
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.generated = function(value, range, packet, parent)
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.display(value)
  local time = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset = {}

-- Size: Time Offset
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size = 4

-- Display: Time Offset
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trade Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_id = {}

-- Size: Trade Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_id.size = 8

-- Display: Trade Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Timestamp
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_timestamp = {}

-- Size: Trade Timestamp
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_timestamp.size = 8

-- Display: Trade Timestamp
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_timestamp.display = function(value)
  return "Trade Timestamp: "..value
end

-- Dissect: Trade Timestamp
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_timestamp, range, value, display)

  return offset + length, value
end

-- Trading Mode
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode = {}

-- Size: Trading Mode
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.size = 1

-- Display: Trading Mode
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.labels = {
  ["1"] = "Trading Mode: Undefined Auction (1)",
  ["2"] = "Trading Mode: Continuous Trading (2)",
  ["3"] = "Trading Mode: At Market Close Trading (3)",
  ["4"] = "Trading Mode: Out Of Main Session (4)",
  ["5"] = "Trading Mode: Trade Reporting On Exchange (5)",
  ["6"] = "Trading Mode: Trade Reporting Off Exchange (6)",
  ["7"] = "Trading Mode: Trade Reporting Systematic Internalizer (7)",
  ["O"] = "Trading Mode: Scheduled Opening Auction (O)",
  ["K"] = "Trading Mode: Scheduled Closing Auction (K)",
  ["I"] = "Trading Mode: Scheduled Intraday Auction (I)",
  ["U"] = "Trading Mode: Unscheduled Auction (U)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.labels[value] or "Trading Mode: Unknown("..value..")"
end

-- Dissect: Trading Mode
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Transaction Category
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category = {}

-- Size: Transaction Category
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category.size = 1

-- Display: Transaction Category
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category.labels = {
  ["D"] = "Transaction Category: Dark Trade (D)",
  ["R"] = "Transaction Category: Trade That Has Received Price Improvement (R)",
  ["Z"] = "Transaction Category: Packaged Trade (Z)",
  ["Y"] = "Transaction Category: Exchange For Physicals Trade (Y)",
  ["-"] = "Transaction Category: None Of The Above Apply (-)",
}

cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category.display = function(value)
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category.labels[value] or "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Unit
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit = {}

-- Size: Unit
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit.size = 1

-- Display: Unit
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.unit, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp = {}

-- Translate: Timestamp
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (the day the frame that carried it settled on)
  if cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - stored_time) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", midnight + stored_time)..string.format("%09d", time_offset)
    end
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.translate(time_offset, stored_time)
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.display(time_offset, stored_time, packet)
  parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.timestamp, range, value, display)

  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.generated(stored_time, range, packet, parent)

  display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.display(time_offset)
  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect = function(buffer, offset, packet, parent)
  if cboe_bxeequities_multicastdepthofbook_pitch_v6_20.format_timestamp then
    local stored_time = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.current

    if stored_time ~= nil then
      return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.composite(buffer, offset, stored_time, packet, parent)
    end
  end

  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe BxeEquities MulticastDepthOfBook Pitch 6.20
-----------------------------------------------------------------------

-- Auction Summary Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_summary_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long.size

-- Display: Auction Summary Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.dissect(buffer, index, packet, parent)

  -- Shares Long: Binary
  index, shares_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_update_message = {}

-- Size: Auction Update Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_update_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reference_price.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_price.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_shares.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.outside_tolerance.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.includes_primary.size

-- Display: Auction Update Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reference_price.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Long Price
  index, indicative_price = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_price.dissect(buffer, index, packet, parent)

  -- Indicative Shares: Binary
  index, indicative_shares = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.indicative_shares.dissect(buffer, index, packet, parent)

  -- Outside Tolerance: Alphanumeric
  index, outside_tolerance = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.outside_tolerance.dissect(buffer, index, packet, parent)

  -- Includes Primary: Alphanumeric
  index, includes_primary = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.includes_primary.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistics_message = {}

-- Size: Statistics Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistics_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistic_type.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_determination.size

-- Display: Statistics Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.dissect(buffer, index, packet, parent)

  -- Statistic Type: Alphanumeric
  index, statistic_type = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistic_type.dissect(buffer, index, packet, parent)

  -- Price Determination: Alphanumeric
  index, price_determination = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_determination.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.statistics_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_status_message = {}

-- Size: Trading Status Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_status_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.status.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reserved_3.size

-- Display: Trading Status Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.dissect(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.status.dissect(buffer, index, packet, parent)

  -- Reserved 3: Alpha
  index, reserved_3 = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.end_of_session_message = {}

-- Size: End Of Session Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.end_of_session_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size

-- Display: End Of Session Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Extended Trade Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags = {}

-- Size: Extended Trade Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.negotiated_trade.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.crossing_trade.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modification_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.special_dividend.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.off_book_automated_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_formation_discovery_process.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.publication_mode_deferral_reason.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.deferral_or_enrichement_type.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.duplicative_indicator.size

-- Display: Extended Trade Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extended Trade Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: Alphanumeric
  index, market_mechanism = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alphanumeric
  index, trading_mode = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alphanumeric
  index, transaction_category = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiated Trade: Alphanumeric
  index, negotiated_trade = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.negotiated_trade.dissect(buffer, index, packet, parent)

  -- Crossing Trade: Alphanumeric
  index, crossing_trade = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.crossing_trade.dissect(buffer, index, packet, parent)

  -- Modification Indicator: Alphanumeric
  index, modification_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modification_indicator.dissect(buffer, index, packet, parent)

  -- Benchmark Reference Price Indicator: Alphanumeric
  index, benchmark_reference_price_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend: Alphanumeric
  index, special_dividend = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.special_dividend.dissect(buffer, index, packet, parent)

  -- Off Book Automated Indicator: Alphanumeric
  index, off_book_automated_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.off_book_automated_indicator.dissect(buffer, index, packet, parent)

  -- Price Formation Discovery Process: Alphanumeric
  index, price_formation_discovery_process = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_formation_discovery_process.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: Alphanumeric
  index, algorithmic_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Publication Mode Deferral Reason: Alphanumeric
  index, publication_mode_deferral_reason = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.publication_mode_deferral_reason.dissect(buffer, index, packet, parent)

  -- Deferral Or Enrichement Type: Alphanumeric
  index, deferral_or_enrichement_type = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.deferral_or_enrichement_type.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: Alphanumeric
  index, duplicative_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.duplicative_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Trade Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.extended_trade_flags, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags.fields(buffer, offset, packet, parent)
  end
end

-- Trade Unknown Symbol Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_unknown_symbol_message = {}

-- Size: Trade Unknown Symbol Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_unknown_symbol_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_extended.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_timestamp.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_venue.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.currency.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags.size

-- Display: Trade Unknown Symbol Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_unknown_symbol_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Unknown Symbol Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_unknown_symbol_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Shares Extended: Binary
  index, shares_extended = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_extended.dissect(buffer, index, packet, parent)

  -- Symbol Long: Alphanumeric
  index, symbol_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: Binary
  index, trade_timestamp = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Execution Venue: Alphanumeric
  index, execution_venue = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_venue.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.currency.dissect(buffer, index, packet, parent)

  -- Bats Trade Timing Indicator: Alphanumeric
  index, bats_trade_timing_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator.dissect(buffer, index, packet, parent)

  -- Extended Trade Flags: Struct of 14 fields
  index, extended_trade_flags = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Unknown Symbol Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_unknown_symbol_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_unknown_symbol_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_unknown_symbol_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_unknown_symbol_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_unknown_symbol_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Extended Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_extended_message = {}

-- Size: Trade Extended Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_extended_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_extended.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_timestamp.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_venue.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.currency.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags.size

-- Display: Trade Extended Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Extended Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Shares Extended: Binary
  index, shares_extended = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_extended.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Timestamp: Binary
  index, trade_timestamp = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_timestamp.dissect(buffer, index, packet, parent)

  -- Execution Venue: Alphanumeric
  index, execution_venue = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_venue.dissect(buffer, index, packet, parent)

  -- Currency: Alphanumeric
  index, currency = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.currency.dissect(buffer, index, packet, parent)

  -- Bats Trade Timing Indicator: Alphanumeric
  index, bats_trade_timing_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.bats_trade_timing_indicator.dissect(buffer, index, packet, parent)

  -- Extended Trade Flags: Struct of 14 fields
  index, extended_trade_flags = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.extended_trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Extended Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_extended_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags = {}

-- Size: Trade Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade.size

-- Display: Trade Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: Alphanumeric
  index, market_mechanism = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alphanumeric
  index, trading_mode = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: Alphanumeric
  index, transaction_category = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.transaction_category.dissect(buffer, index, packet, parent)

  -- Benchmark Reference Price Indicator: Alphanumeric
  index, benchmark_reference_price_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.benchmark_reference_price_indicator.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade: Alphanumeric
  index, algorithmic_trade = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_flags, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_short_message = {}

-- Size: Trade Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_short_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_alphanumeric_6.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags.size

-- Display: Trade Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Short: Binary
  index, shares_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_short.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 6: Alphanumeric
  index, symbol_alphanumeric_6 = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_long_message = {}

-- Size: Trade Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_long_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags.size

-- Display: Trade Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.dissect(buffer, index, packet, parent)

  -- Shares Long: Binary
  index, shares_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.delete_order_message = {}

-- Size: Delete Order Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.delete_order_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size

-- Display: Delete Order Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_short_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.size

-- Display: Modify Order Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  -- Shares Short: Binary
  index, shares_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_long_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.size

-- Display: Modify Order Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  -- Shares Long: Binary
  index, shares_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.shares_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_short_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_short.size

-- Display: Reduce Size Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  -- Cancelled Shares Short: Binary
  index, cancelled_shares_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_long_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_long.size

-- Display: Reduce Size Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  -- Cancelled Shares Long: Binary
  index, cancelled_shares_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.cancelled_shares_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags = {}

-- Size: Execution Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.ex_cum_dividend.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade.size

-- Display: Execution Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Mechanism: Alphanumeric
  index, market_mechanism = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: Alphanumeric
  index, trading_mode = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_mode.dissect(buffer, index, packet, parent)

  -- Ex Cum Dividend: Alphanumeric
  index, ex_cum_dividend = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.ex_cum_dividend.dissect(buffer, index, packet, parent)

  -- Algorithmic Trade: Alphanumeric
  index, algorithmic_trade = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.algorithmic_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.execution_flags, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_at_price_size_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.executed_shares.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.remaining_shares.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags.size

-- Display: Order Executed At Price Size Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  -- Executed Shares: Binary
  index, executed_shares = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.executed_shares.dissect(buffer, index, packet, parent)

  -- Remaining Shares: Binary
  index, remaining_shares = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.remaining_shares.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_message = {}

-- Size: Order Executed Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.executed_shares.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags.size

-- Display: Order Executed Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  -- Executed Shares: Binary
  index, executed_shares = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.executed_shares.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_id.dissect(buffer, index, packet, parent)

  -- Execution Flags: Struct of 4 fields
  index, execution_flags = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_flags = {}

-- Size: Add Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_flags.size = 1

-- Display: Add Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Si Quote flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Si Quote"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_flags.bits = function(range, value, packet, parent)

  -- Unused 1: 1 Bit
  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.unused_1, range, value)

  -- Si Quote: 1 Bit
  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.si_quote, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.unused_6, range, value)
end

-- Dissect: Add Flags
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.add_flags, range, display)

  if show.structs then
    cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Expanded Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_expanded_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_flags.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.participant_id.size

-- Display: Add Order Expanded Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 3 fields
  index, add_flags = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_short_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_alphanumeric_6.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.size

-- Display: Add Order Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol Alphanumeric 6: Alphanumeric
  index, symbol_alphanumeric_6 = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_alphanumeric_6.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_long_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_long.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.size

-- Display: Add Order Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.quantity_long.dissect(buffer, index, packet, parent)

  -- Symbol Short: Alphanumeric
  index, symbol_short = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.symbol_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.price_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit_clear_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_offset.size

-- Display: Unit Clear Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_message = {}

-- Size: Time Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_message.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.size

-- Display: Time Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.current = time

  if not packet.visited then
    cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.time_message, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.payload = {}

-- Dissect: Payload
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x40 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2f then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x41 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Extended Message
  if message_type == 0x32 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Unknown Symbol Message
  if message_type == 0x35 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trade_unknown_symbol_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.end_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x34 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0xAC then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.auction_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_header = {}

-- Size: Message Header
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_header.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_length.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_type.size

-- Display: Message Header
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, message_type = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_header, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message = {}

-- Read runtime size of: Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_sequence ~= nil then
    local sequence = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message_sequence_number, UInt64.new(cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.message, buffer(offset, 0))
    local current = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.heartbeat = {}

-- Display: Heartbeat
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.messages = {}

-- Dispatch: Messages
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.messages.dispatch = {
  [0] = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.heartbeat.dissect,
}

-- Dissect: Messages
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_header = {}

-- Size: Packet Header
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_header.size =
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.length.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_count.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit.size + 
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.sequence.size

-- Display: Packet Header
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.message_count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.sequence.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_sequence = sequence

  return index
end

-- Dissect: Packet Header
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.fields.packet_header, buffer(offset, 0))
    local index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet = {}

-- Verify required size of Udp packet
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_header.size
end

-- Dissect Packet
cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.current = data.time.frames[packet.number]
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_bxeequities_multicastdepthofbook_pitch_v6_20.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.init()
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.time.current = nil
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.current = nil
  cboe_bxeequities_multicastdepthofbook_pitch_v6_20.conversation.flows = {}
end

-- Dissector for Cboe BxeEquities MulticastDepthOfBook Pitch 6.20
function omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20, buffer(), omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.description, "("..buffer:len().." Bytes)")
  return cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe BxeEquities MulticastDepthOfBook Pitch 6.20 (Udp)
local function omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_bxeequities_multicastdepthofbook_pitch_v6_20.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20
  omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe BxeEquities MulticastDepthOfBook Pitch 6.20
omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20:register_heuristic("udp", omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20_udp_heuristic)

-- Register Cboe BxeEquities MulticastDepthOfBook Pitch 6.20 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_bxeequities_multicastdepthofbook_pitch_v6_20)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 6.20
--   Since: 6.16
--   Date: Monday, August 14, 2017
--   Specification: BATS_Europe_MC_PITCH_Specification.pdf
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
