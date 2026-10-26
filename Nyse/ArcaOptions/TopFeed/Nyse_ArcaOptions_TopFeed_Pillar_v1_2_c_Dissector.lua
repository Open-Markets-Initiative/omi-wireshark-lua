-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse ArcaOptions TopFeed Pillar 1.2.c Protocol
local omi_nyse_arcaoptions_topfeed_pillar_v1_2_c = Proto("Omi.Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c", "Nyse ArcaOptions TopFeed Pillar 1.2.c")

-- Protocol table
local nyse_arcaoptions_topfeed_pillar_v1_2_c = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse ArcaOptions TopFeed Pillar 1.2.c Fields
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ask_customer_volume = ProtoField.new("Ask Customer Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.c.askcustomervolume", ftypes.UINT32, nil, nil, nil, "Total quantity of customer orders at the Ask price")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ask_price = ProtoField.new("Ask Price", "nyse.arcaoptions.topfeed.pillar.v1.2.c.askprice", ftypes.INT32, nil, nil, nil, "The Ask price. Use the Price scale from the Series Index message.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.c.askvolume", ftypes.UINT32, nil, nil, nil, "Total quantity available at the above Ask price")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.auction_id = ProtoField.new("Auction Id", "nyse.arcaoptions.topfeed.pillar.v1.2.c.auctionid", ftypes.UINT64, nil, nil, nil, "Auction ID for CUBE/COA")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.auction_interest_clearing_price = ProtoField.new("Auction Interest Clearing Price", "nyse.arcaoptions.topfeed.pillar.v1.2.c.auctioninterestclearingprice", ftypes.INT32, nil, nil, nil, "The price at which all eligible auction-only interest would trade, subject to auction collars.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.auction_status = ProtoField.new("Auction Status", "nyse.arcaoptions.topfeed.pillar.v1.2.c.auctionstatus", ftypes.UINT8, nil, nil, nil, "Indicates whether the auction will run")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.auction_type = ProtoField.new("Auction Type", "nyse.arcaoptions.topfeed.pillar.v1.2.c.auctiontype", ftypes.STRING, nil, nil, nil, "AuctionType")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.c.beginseqnum", ftypes.UINT32, nil, nil, nil, "The beginning sequence number of the range of messages to be retransmitted.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.bid_customer_volume = ProtoField.new("Bid Customer Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.c.bidcustomervolume", ftypes.UINT32, nil, nil, nil, "Total quantity of customer orders at the Bid price")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.bid_price = ProtoField.new("Bid Price", "nyse.arcaoptions.topfeed.pillar.v1.2.c.bidprice", ftypes.INT32, nil, nil, nil, "The Bid price. Use the Price scale from the Series Index message.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.c.bidvolume", ftypes.UINT32, nil, nil, nil, "Total quantity available at the above Bid price.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.capacity = ProtoField.new("Capacity", "nyse.arcaoptions.topfeed.pillar.v1.2.c.capacity", ftypes.STRING, nil, nil, nil, "Customer or Firm capacity specified with the order. Values include:")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.channel_id = ProtoField.new("Channel Id", "nyse.arcaoptions.topfeed.pillar.v1.2.c.channelid", ftypes.UINT8, nil, nil, nil, "The ID of the multicast channel over which the packet was sent.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.close = ProtoField.new("Close", "nyse.arcaoptions.topfeed.pillar.v1.2.c.close", ftypes.INT32, nil, nil, nil, "The Last price of the series for the day. Use the Price scale from the series index mapping.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.closing_only_indicator = ProtoField.new("Closing Only Indicator", "nyse.arcaoptions.topfeed.pillar.v1.2.c.closingonlyindicator", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.arcaoptions.topfeed.pillar.v1.2.c.continuousbookclearingprice", ftypes.INT32, nil, nil, nil, "The price at which all interest on the book can trade, including auction and imbalance offset interest, and disregarding auction collars.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "nyse.arcaoptions.topfeed.pillar.v1.2.c.contractmultiplier", ftypes.UINT16, nil, nil, nil, "Number of Underlying shares per option contract")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.correction_condition = ProtoField.new("Correction Condition", "nyse.arcaoptions.topfeed.pillar.v1.2.c.correctioncondition", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.arcaoptions.topfeed.pillar.v1.2.c.currentrefreshpkt", ftypes.UINT16, nil, nil, nil, "The current refresh packet in the update")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.arcaoptions.topfeed.pillar.v1.2.c.deliveryflag", ftypes.UINT8, nil, nil, nil, "A flag that indicates whether this is an original, retransmitted, or ‘replayed’ message")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.c.endseqnum", ftypes.UINT32, nil, nil, nil, "The end sequence number of the range of messages to be retransmitted.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.arcaoptions.topfeed.pillar.v1.2.c.exchangecode", ftypes.STRING, nil, nil, nil, "For listed equity markets, the market where this symbol is listed")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.full_refresh_header = ProtoField.new("Full Refresh Header", "nyse.arcaoptions.topfeed.pillar.v1.2.c.fullrefreshheader", ftypes.STRING, nil, nil, nil, "Sequence number fields that only the full Refresh Header carries.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.arcaoptions.topfeed.pillar.v1.2.c.haltcondition", ftypes.STRING, nil, nil, nil, "Halt condition indicator")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.high_price = ProtoField.new("High Price", "nyse.arcaoptions.topfeed.pillar.v1.2.c.highprice", ftypes.INT32, nil, nil, nil, "The Highest price of the series for the day. Use the Price scale from the series mapping index.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.id = ProtoField.new("Id", "nyse.arcaoptions.topfeed.pillar.v1.2.c.id", ftypes.UINT32, nil, nil, nil, "ID of the originating Matching Engine partition to which this message applies")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.arcaoptions.topfeed.pillar.v1.2.c.imbalanceside", ftypes.STRING, nil, nil, nil, "The side of the TotalImbalanceQty")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.arcaoptions.topfeed.pillar.v1.2.c.indicativematchprice", ftypes.INT32, nil, nil, nil, "The price at which the highest number of contracts would trade, subject to auction collars. It includes the non-displayed quantity of Reserve Orders. See Information on Auctions for details.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.c.lastseqnum", ftypes.UINT32, nil, nil, nil, "The last sequence number sent on the channel for any symbol. The refresh is the state of the order book as of this sequence number.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.c.lastsymbolseqnum", ftypes.UINT32, nil, nil, nil, "The last symbol sequence number sent for this symbol. The refresh is the symbol state of this symbol as of this symbol sequence number.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.lot_size = ProtoField.new("Lot Size", "nyse.arcaoptions.topfeed.pillar.v1.2.c.lotsize", ftypes.UINT16, nil, nil, nil, "Round lot size in shares.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.low_price = ProtoField.new("Low Price", "nyse.arcaoptions.topfeed.pillar.v1.2.c.lowprice", ftypes.INT32, nil, nil, nil, "The Lowest price of the series for the day. Use the Price scale from the series mapping index.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.arcaoptions.topfeed.pillar.v1.2.c.lowercollar", ftypes.INT32, nil, nil, nil, "Legal width offer for option")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.market_id = ProtoField.new("Market Id", "nyse.arcaoptions.topfeed.pillar.v1.2.c.marketid", ftypes.UINT16, nil, nil, nil, "ID of the Originating Market")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.arcaoptions.topfeed.pillar.v1.2.c.marketimbalanceqty", ftypes.UINT32, nil, nil, nil, "The total market order imbalance quantity at the Indicative Match Price.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.market_state = ProtoField.new("Market State", "nyse.arcaoptions.topfeed.pillar.v1.2.c.marketstate", ftypes.STRING, nil, nil, nil, "The current Market State, which this msg updates if the Security Status field contains a Market State Code.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.maturity_date = ProtoField.new("Maturity Date", "nyse.arcaoptions.topfeed.pillar.v1.2.c.maturitydate", ftypes.STRING, nil, nil, nil, "Option maturity date - YYMMDD")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_size = ProtoField.new("Message Size", "nyse.arcaoptions.topfeed.pillar.v1.2.c.messagesize", ftypes.UINT16, nil, nil, nil, "The size of this message in bytes")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_type = ProtoField.new("Message Type", "nyse.arcaoptions.topfeed.pillar.v1.2.c.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.arcaoptions.topfeed.pillar.v1.2.c.nanoseconds", ftypes.UINT32, nil, nil, nil, "The nanosecond offset from the Send Time")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.c.nextsourceseqnum", ftypes.UINT32, nil, nil, nil, "The sequence number in the next message for this symbol")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.arcaoptions.topfeed.pillar.v1.2.c.numbermsgs", ftypes.UINT8, nil, nil, nil, "The number of messages in this packet")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.offical = ProtoField.new("Offical", "nyse.arcaoptions.topfeed.pillar.v1.2.c.offical", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.open = ProtoField.new("Open", "nyse.arcaoptions.topfeed.pillar.v1.2.c.open", ftypes.INT32, nil, nil, nil, "The First price of the series for the day. Use the Price scale from the series mapping index.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.opening = ProtoField.new("Opening", "nyse.arcaoptions.topfeed.pillar.v1.2.c.opening", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.option_symbol_root = ProtoField.new("Option Symbol Root", "nyse.arcaoptions.topfeed.pillar.v1.2.c.optionsymbolroot", ftypes.STRING, nil, nil, nil, "Root symbol for options in OCC symbology")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.original_trade_id = ProtoField.new("Original Trade Id", "nyse.arcaoptions.topfeed.pillar.v1.2.c.originaltradeid", ftypes.UINT32, nil, nil, nil, "The original TradeID of the Trade being cancelled.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.arcaoptions.topfeed.pillar.v1.2.c.pairedqty", ftypes.UINT32, nil, nil, nil, "The number of contracts paired off at the Indicative Match Price.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.participant = ProtoField.new("Participant", "nyse.arcaoptions.topfeed.pillar.v1.2.c.participant", ftypes.UINT32, nil, nil, nil, "OCC Number for the Clearing firm specified with the order.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.arcaoptions.topfeed.pillar.v1.2.c.pktsize", ftypes.UINT16, nil, nil, nil, "The size of the packet in bytes, including this 16 byte packet header")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.arcaoptions.topfeed.pillar.v1.2.c.prevcloseprice", ftypes.UINT32, nil, nil, nil, "The previous day’s closing price for this security.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.c.prevclosevolume", ftypes.UINT32, nil, nil, nil, "The previous day’s closing volume for the security.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.price = ProtoField.new("Price", "nyse.arcaoptions.topfeed.pillar.v1.2.c.price", ftypes.INT32, nil, nil, nil, "The price of the Trade. Use the Price scale from the series index mapping.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.price_1 = ProtoField.new("Price 1", "nyse.arcaoptions.topfeed.pillar.v1.2.c.price1", ftypes.UINT32, nil, nil, nil, "Default value is 0")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.price_2 = ProtoField.new("Price 2", "nyse.arcaoptions.topfeed.pillar.v1.2.c.price2", ftypes.UINT32, nil, nil, nil, "Default value is 0")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.arcaoptions.topfeed.pillar.v1.2.c.priceresolution", ftypes.UINT8, nil, nil, nil, "All Penny, Penny/Nickel, Nickel/Dime")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.arcaoptions.topfeed.pillar.v1.2.c.pricescalecode", ftypes.UINT8, nil, nil, nil, "Specifies placement of the decimal point in price fields for this security.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.product_id = ProtoField.new("Product Id", "nyse.arcaoptions.topfeed.pillar.v1.2.c.productid", ftypes.UINT8, nil, nil, nil, "The unique ID for this NYSE feed listed in the feed’s client specification.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.put_or_call = ProtoField.new("Put Or Call", "nyse.arcaoptions.topfeed.pillar.v1.2.c.putorcall", ftypes.UINT8, nil, nil, nil, "Option Type")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.arcaoptions.topfeed.pillar.v1.2.c.quotecondition", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.c.requestseqnum", ftypes.UINT32, nil, nil, nil, "The sequence number of the request message sent by the client.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.arcaoptions.topfeed.pillar.v1.2.c.reserved1", ftypes.BYTES, nil, nil, nil, "This field is reserved for future use")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.arcaoptions.topfeed.pillar.v1.2.c.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.reserved_3 = ProtoField.new("Reserved 3", "nyse.arcaoptions.topfeed.pillar.v1.2.c.reserved3", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.arcaoptions.topfeed.pillar.v1.2.c.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.reserved_6 = ProtoField.new("Reserved 6", "nyse.arcaoptions.topfeed.pillar.v1.2.c.reserved6", ftypes.BYTES, nil, nil, nil, "Reserved for future use.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.arcaoptions.topfeed.pillar.v1.2.c.retransmitmethod", ftypes.UINT8, nil, nil, nil, "The delivery method for the requested symbol index mapping information.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.rfq_status = ProtoField.new("Rfq Status", "nyse.arcaoptions.topfeed.pillar.v1.2.c.rfqstatus", ftypes.STRING, nil, nil, nil, "This status field is used for CUBE/COA (Type = C).")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.round_lot = ProtoField.new("Round Lot", "nyse.arcaoptions.topfeed.pillar.v1.2.c.roundlot", ftypes.STRING, nil, nil, nil, "Round Lots Accepted")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.second_reserved_4 = ProtoField.new("Second Reserved 4", "nyse.arcaoptions.topfeed.pillar.v1.2.c.secondreserved4", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.seconds = ProtoField.new("Seconds", "nyse.arcaoptions.topfeed.pillar.v1.2.c.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds since Jan 1, 1970 00:00:00 UTC")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.seconds_utc = ProtoField.new("Seconds", "nyse.arcaoptions.topfeed.pillar.v1.2.c.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds since Jan 1, 1970 00:00:00 UTC")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.security_status = ProtoField.new("Security Status", "nyse.arcaoptions.topfeed.pillar.v1.2.c.securitystatus", ftypes.STRING, nil, nil, nil, "The new status that this security is transitioning to.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.security_type = ProtoField.new("Security Type", "nyse.arcaoptions.topfeed.pillar.v1.2.c.securitytype", ftypes.STRING, nil, nil, nil, "Type of Security used by Arca, National and American")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.send_time = ProtoField.new("Send Time", "nyse.arcaoptions.topfeed.pillar.v1.2.c.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time when this packet was published to the multicast channel")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.send_time_utc = ProtoField.new("Send Time", "nyse.arcaoptions.topfeed.pillar.v1.2.c.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time when this packet was published to the multicast channel")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.seq_num = ProtoField.new("Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.c.seqnum", ftypes.UINT32, nil, nil, nil, "The message sequence number of the first message in this packet")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series = ProtoField.new("Series", "nyse.arcaoptions.topfeed.pillar.v1.2.c.series", ftypes.STRING, nil, nil, nil, "Settlement related conditions. Valid values:")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series_index = ProtoField.new("Series Index", "nyse.arcaoptions.topfeed.pillar.v1.2.c.seriesindex", ftypes.UINT32, nil, nil, nil, "The unique ID of this series for all products within this market")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series_seq_num = ProtoField.new("Series Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.c.seriesseqnum", ftypes.UINT32, nil, nil, nil, "The unique ID of this message in the sequence of messages published for this specific series")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series_status = ProtoField.new("Series Status", "nyse.arcaoptions.topfeed.pillar.v1.2.c.seriesstatus", ftypes.STRING, nil, nil, nil, "The new status that this series is transitioning to")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series_type = ProtoField.new("Series Type", "nyse.arcaoptions.topfeed.pillar.v1.2.c.seriestype", ftypes.UINT8, nil, nil, nil, "Identifies series type")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.session_state = ProtoField.new("Session State", "nyse.arcaoptions.topfeed.pillar.v1.2.c.sessionstate", ftypes.UINT8, nil, nil, nil, "Unused")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.side = ProtoField.new("Side", "nyse.arcaoptions.topfeed.pillar.v1.2.c.side", ftypes.STRING, nil, nil, nil, "Side of the RFQ")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.source_id = ProtoField.new("Source Id", "nyse.arcaoptions.topfeed.pillar.v1.2.c.sourceid", ftypes.STRING, nil, nil, nil, "The ID of the client requesting this retransmission . This field is up to 9 characters, null terminated.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.source_time = ProtoField.new("Source Time", "nyse.arcaoptions.topfeed.pillar.v1.2.c.sourcetime", ftypes.UINT32, nil, nil, nil, "The time when this msg was generated in the order book, in seconds since Jan 1, 1970 00:00:00 UTC.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.arcaoptions.topfeed.pillar.v1.2.c.sourcetimens", ftypes.UINT32, nil, nil, nil, "The nanosecond offset from the SourceTime")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ssr_state = ProtoField.new("Ssr State", "nyse.arcaoptions.topfeed.pillar.v1.2.c.ssrstate", ftypes.STRING, nil, nil, nil, "The current SSR state, which this msg updates if the Security Status field contains an SSR Code. Valid")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.arcaoptions.topfeed.pillar.v1.2.c.ssrtriggeringexchangeid", ftypes.STRING, nil, nil, nil, "This field is only populated when securityStatus = A and this security is listed on this exchange. Otherwise it is defaulted to 0x20.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.c.ssrtriggeringvolume", ftypes.UINT32, nil, nil, nil, "This field is only populated when securityStatus = A and this security is listed on this exchange")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.status = ProtoField.new("Status", "nyse.arcaoptions.topfeed.pillar.v1.2.c.status", ftypes.STRING, nil, nil, nil, "The reason why the request was rejected.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.strike_price = ProtoField.new("Strike Price", "nyse.arcaoptions.topfeed.pillar.v1.2.c.strikeprice", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol = ProtoField.new("Symbol", "nyse.arcaoptions.topfeed.pillar.v1.2.c.symbol", ftypes.STRING, nil, nil, nil, "Null-terminated ASCII symbol in NYSE Symbology.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.arcaoptions.topfeed.pillar.v1.2.c.symbolindex", ftypes.UINT32, nil, nil, nil, "The unique ID of this symbol for all products within this market. This ID cannot be used to cross reference a security between markets.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.arcaoptions.topfeed.pillar.v1.2.c.symbolseqnum", ftypes.UINT32, nil, nil, nil, "The unique ID of this message in the sequence of messages published for this specific symbol.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.system_id = ProtoField.new("System Id", "nyse.arcaoptions.topfeed.pillar.v1.2.c.systemid", ftypes.UINT8, nil, nil, nil, "ID of the Originating matching engine server.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.time = ProtoField.new("Time", "nyse.arcaoptions.topfeed.pillar.v1.2.c.time", ftypes.UINT32, nil, nil, nil, "Format : HHMMSSmmm (mmm = milliseconds)")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.arcaoptions.topfeed.pillar.v1.2.c.totalimbalanceqty", ftypes.UINT32, nil, nil, nil, "The total imbalance quantity at the Indicative Match Price.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.total_quantity = ProtoField.new("Total Quantity", "nyse.arcaoptions.topfeed.pillar.v1.2.c.totalquantity", ftypes.UINT32)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.arcaoptions.topfeed.pillar.v1.2.c.totalrefreshpkts", ftypes.UINT16, nil, nil, nil, "The total number of refresh packets you should expect in the update")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.total_volume = ProtoField.new("Total Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.c.totalvolume", ftypes.UINT32, nil, nil, nil, "The cumulative volume for the outright series throughout the day.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.trade_condition = ProtoField.new("Trade Condition", "nyse.arcaoptions.topfeed.pillar.v1.2.c.tradecondition", ftypes.STRING)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.trade_id = ProtoField.new("Trade Id", "nyse.arcaoptions.topfeed.pillar.v1.2.c.tradeid", ftypes.UINT32, nil, nil, nil, "Unique identifier for this trade.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.transaction = ProtoField.new("Transaction", "nyse.arcaoptions.topfeed.pillar.v1.2.c.transaction", ftypes.STRING, nil, nil, nil, "Settlement related conditions. Valid values:")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.type = ProtoField.new("Type", "nyse.arcaoptions.topfeed.pillar.v1.2.c.type", ftypes.STRING, nil, nil, nil, "Order Type of CUBE/Bold/COA")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.underlying_index = ProtoField.new("Underlying Index", "nyse.arcaoptions.topfeed.pillar.v1.2.c.underlyingindex", ftypes.UINT32, nil, nil, nil, "Underlying stock mapping index")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nyse.arcaoptions.topfeed.pillar.v1.2.c.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Underlying symbol for options in NYSE symbology")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.arcaoptions.topfeed.pillar.v1.2.c.uppercollar", ftypes.INT32, nil, nil, nil, "Legal width bid for option")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.volume = ProtoField.new("Volume", "nyse.arcaoptions.topfeed.pillar.v1.2.c.volume", ftypes.UINT32, nil, nil, nil, "The volume of the trade in contracts.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.working_price = ProtoField.new("Working Price", "nyse.arcaoptions.topfeed.pillar.v1.2.c.workingprice", ftypes.INT32, nil, nil, nil, "RFQ Price")

-- Nyse ArcaOptions TopFeed Pillar 1.2.c Framing
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message = ProtoField.new("Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.message", ftypes.STRING, nil, nil, nil, "Pillar message")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_header = ProtoField.new("Message Header", "nyse.arcaoptions.topfeed.pillar.v1.2.c.messageheader", ftypes.STRING, nil, nil, nil, "Pillar message header")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.packet = ProtoField.new("Packet", "nyse.arcaoptions.topfeed.pillar.v1.2.c.packet", ftypes.STRING, nil, nil, nil, "Pillar common client udp packet")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.packet_header = ProtoField.new("Packet Header", "nyse.arcaoptions.topfeed.pillar.v1.2.c.packetheader", ftypes.STRING, nil, nil, nil, "Pillar common client udp packet header")

-- Nyse ArcaOptions TopFeed 1.2.c Session Messages
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.heartbeat = ProtoField.new("Heartbeat", "nyse.arcaoptions.topfeed.pillar.v1.2.c.heartbeat", ftypes.BYTES, nil, nil, nil, "Pillar heartbeat, a packet header with no messages behind it")

-- Nyse ArcaOptions TopFeed 1.2.c Application Messages
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.heartbeatresponsemessage", ftypes.STRING, nil, nil, nil, "Clients who remain connected to the Retransmission Server intraday must respond to a Heartbeat with a Heartbeat Response message within 5 seconds. If no timely client response is received, the connection will be closed.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.messageunavailablemessage", ftypes.STRING, nil, nil, nil, "This message will be sent over the Retransmission multicast channels to inform clients of unavailability of a range of messages (or part of a range) for which they may have requested a retransmission.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_imbalance_message = ProtoField.new("Options Imbalance Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.optionsimbalancemessage", ftypes.STRING, nil, nil, nil, "Options Imbalance messages are published once a second during opening and reopening auctions to update price and volume information")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_quote_message = ProtoField.new("Options Quote Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.optionsquotemessage", ftypes.STRING, nil, nil, nil, "An Options quote message is sent when any event results in a new top of book value on either side of the market")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_status_message = ProtoField.new("Options Status Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.optionsstatusmessage", ftypes.STRING, nil, nil, nil, "This message informs clients of changes in the status of a specific option outright series and complex series")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_trade_cancel_message = ProtoField.new("Options Trade Cancel Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.optionstradecancelmessage", ftypes.STRING, nil, nil, nil, "In the event that an earlier trade has been reported in error, an Options Trade Cancel message is sent")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_trade_correction_message = ProtoField.new("Options Trade Correction Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.optionstradecorrectionmessage", ftypes.STRING, nil, nil, nil, "In the event that an earlier trade has been reported with one or multiple fields in error")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_trade_message = ProtoField.new("Options Trade Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.optionstrademessage", ftypes.STRING, nil, nil, nil, "An Options Trade message is sent when there is an execution on the order book.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.outright_series_index_mapping_message = ProtoField.new("Outright Series Index Mapping Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.outrightseriesindexmappingmessage", ftypes.STRING, nil, nil, nil, "This message is published over the real-time data channels at system startup or in the context of a refresh sequence after a Matching Engine or PILLAR Publisher failover.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.outright_series_summary_message = ProtoField.new("Outright Series Summary Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.outrightseriessummarymessage", ftypes.STRING, nil, nil, nil, "The Series Summary message will provide the following trade statistics per series: high, low, open, close and total volume")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.refreshheadermessage", ftypes.STRING, nil, nil, nil, "The first message in each packet of refresh messages published over the Refresh multicast channels is of this type.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.refreshrequestmessage", ftypes.STRING, nil, nil, nil, "Clients who have experienced a failure and need a refresh of the state of one or all symbols in a specific channel should send a Retransmission Request message via TCP to the Request Controller. A Request Response message will be sent over the TCP connection back to the client, and if the request was valid, the requested message(s) will be published over the relevant Refresh multicast channel.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.requestresponsemessage", ftypes.STRING, nil, nil, nil, "This message will be sent immediately via TCP/IP in response to the client’s request for retransmission, refresh or Symbol Mapping messages.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.retransmissionrequestmessage", ftypes.STRING, nil, nil, nil, "Clients who have experienced a sequence number gap and need a retransmission of the missed messages should send a Retransmission Request message via TCP to the Request Controller. A Request Response message will be sent over the TCP connection back to the client, and if the request was valid, the requested message(s) will be re-published over the relevant Retransmission multicast channel.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.securitystatusmessage", ftypes.STRING, nil, nil, nil, "This message informs clients of changes in the status of a specific security, such as Trading Halts, Short Sale Restriction state changes, etc.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.sequencenumberresetmessage", ftypes.STRING, nil, nil, nil, "This message is sent to reset the Message Sequence Number at start of day, or in response to failures.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series_rfq_message = ProtoField.new("Series Rfq Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.seriesrfqmessage", ftypes.STRING, nil, nil, nil, "The Request for Series RFQ message is published for outright series.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.symbolclearmessage", ftypes.STRING, nil, nil, nil, "In case of a failure and recovery of a Matching Engine or an XDP Publisher, the publisher may send a full state refresh for every symbol affected. This kind of unrequested refresh is preceded by a Symbol Clear message. The client should react to receipt of a Symbol Clear message by clearing all state information for the specified symbol in anticipation of receiving a full state refresh.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.symbolindexmappingmessage", ftypes.STRING, nil, nil, nil, "This message is published over the real-time data channels at system startup or in the context of a refresh sequence after a Matching Engine or XDP Publisher failover. It provides referential data for a single specified symbol.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.symbolindexmappingrequestmessage", ftypes.STRING, nil, nil, nil, "This message is sent by clients via TCP/IP requesting the Symbol Index Mapping messages for one or all symbols in a specified channel.")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.time_reference_message = ProtoField.new("Time Reference Message", "nyse.arcaoptions.topfeed.pillar.v1.2.c.timereferencemessage", ftypes.STRING, nil, nil, nil, "This message is sent at the start of every second during periods of active data publication")

-- Nyse ArcaOptions TopFeed Pillar 1.2.c Generated Fields
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_index = ProtoField.new("Message Index", "nyse.arcaoptions.topfeed.pillar.v1.2.c.messageindex", ftypes.UINT16)
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nyse.arcaoptions.topfeed.pillar.v1.2.c.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nyse ArcaOptions TopFeed Pillar 1.2.c Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nyse_arcaoptions_topfeed_pillar_v1_2_c.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse ArcaOptions TopFeed Pillar 1.2.c Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nyse ArcaOptions TopFeed Pillar 1.2.c Show Options
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_application_messages then
    show.application_messages = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_application_messages
  end
  if show.headers ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_headers then
    show.headers = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_headers
  end
  if show.structs ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_structs then
    show.structs = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_structs
  end
  if show.indexes ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_indexes then
    show.indexes = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_indexes
  end
  if show.sequences ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_sequences then
    show.sequences = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.show_sequences
  end
  if nyse_arcaoptions_topfeed_pillar_v1_2_c.absolute_time_base ~= omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.absolute_time_base then
    nyse_arcaoptions_topfeed_pillar_v1_2_c.absolute_time_base = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Nyse ArcaOptions TopFeed Pillar 1.2.c Fields
-----------------------------------------------------------------------

-- Ask Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_customer_volume = {}

-- Size: Ask Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_customer_volume.size = 4

-- Display: Ask Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_customer_volume.display = function(value)
  return "Ask Customer Volume: "..value
end

-- Dissect: Ask Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ask_customer_volume, range, value, display)

  return offset + length, value
end

-- Ask Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_price = {}

-- Size: Ask Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_price.size = 4

-- Display: Ask Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_volume = {}

-- Size: Ask Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_volume.size = 4

-- Display: Ask Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Auction Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_id = {}

-- Size: Auction Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_id.size = 8

-- Display: Auction Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Interest Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_interest_clearing_price = {}

-- Size: Auction Interest Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_interest_clearing_price.size = 4

-- Display: Auction Interest Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_interest_clearing_price.display = function(value)
  return "Auction Interest Clearing Price: "..value
end

-- Dissect: Auction Interest Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_interest_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_interest_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_interest_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.auction_interest_clearing_price, range, value, display)

  return offset + length, value
end

-- Auction Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_status = {}

-- Size: Auction Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_status.size = 1

-- Display: Auction Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_status.labels = {
  [0] = "Auction Status: Usual (0)",
  [4] = "Auction Status: Legal Width Quote Does Not Exist (4)",
  [5] = "Auction Status: Market Maker Quote Is Not Received (5)",
}

nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_status.display = function(value)
  return nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_status.labels[value] or "Auction Status: Unknown("..value..")"
end

-- Dissect: Auction Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_type = {}

-- Size: Auction Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_type.size = 1

-- Display: Auction Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Auction Type: No Value"
  end

  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "H" then
    return "Auction Type: Reopening (H)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Bid Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_customer_volume = {}

-- Size: Bid Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_customer_volume.size = 4

-- Display: Bid Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_customer_volume.display = function(value)
  return "Bid Customer Volume: "..value
end

-- Dissect: Bid Customer Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.bid_customer_volume, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_price = {}

-- Size: Bid Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_price.size = 4

-- Display: Bid Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_volume = {}

-- Size: Bid Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_volume.size = 4

-- Display: Bid Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Capacity
nyse_arcaoptions_topfeed_pillar_v1_2_c.capacity = {}

-- Size: Capacity
nyse_arcaoptions_topfeed_pillar_v1_2_c.capacity.size = 1

-- Display: Capacity
nyse_arcaoptions_topfeed_pillar_v1_2_c.capacity.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Capacity: No Value"
  end

  if value == " " then
    return "Capacity: Not Specified (<whitespace>)"
  end
  if value == "0" then
    return "Capacity: Customer (0)"
  end
  if value == "1" then
    return "Capacity: Firm (1)"
  end
  if value == "2" then
    return "Capacity: Broker Dealer (2)"
  end
  if value == "3" then
    return "Capacity: Market Maker (3)"
  end
  if value == "8" then
    return "Capacity: Professional Customer (8)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
nyse_arcaoptions_topfeed_pillar_v1_2_c.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.capacity, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id = {}

-- Size: Channel Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.size = 1

-- Display: Channel Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Close
nyse_arcaoptions_topfeed_pillar_v1_2_c.close = {}

-- Size: Close
nyse_arcaoptions_topfeed_pillar_v1_2_c.close.size = 4

-- Display: Close
nyse_arcaoptions_topfeed_pillar_v1_2_c.close.display = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_arcaoptions_topfeed_pillar_v1_2_c.close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.close.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.close, range, value, display)

  return offset + length, value
end

-- Closing Only Indicator
nyse_arcaoptions_topfeed_pillar_v1_2_c.closing_only_indicator = {}

-- Size: Closing Only Indicator
nyse_arcaoptions_topfeed_pillar_v1_2_c.closing_only_indicator.size = 1

-- Display: Closing Only Indicator
nyse_arcaoptions_topfeed_pillar_v1_2_c.closing_only_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Closing Only Indicator: No Value"
  end

  if value == "0" then
    return "Closing Only Indicator: Standard Series (0)"
  end
  if value == "1" then
    return "Closing Only Indicator: Call (1)"
  end

  return "Closing Only Indicator: Unknown("..value..")"
end

-- Dissect: Closing Only Indicator
nyse_arcaoptions_topfeed_pillar_v1_2_c.closing_only_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.closing_only_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.closing_only_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.closing_only_indicator, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.continuous_book_clearing_price = {}

-- Size: Continuous Book Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
nyse_arcaoptions_topfeed_pillar_v1_2_c.contract_multiplier = {}

-- Size: Contract Multiplier
nyse_arcaoptions_topfeed_pillar_v1_2_c.contract_multiplier.size = 2

-- Display: Contract Multiplier
nyse_arcaoptions_topfeed_pillar_v1_2_c.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
nyse_arcaoptions_topfeed_pillar_v1_2_c.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_arcaoptions_topfeed_pillar_v1_2_c.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_arcaoptions_topfeed_pillar_v1_2_c.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_arcaoptions_topfeed_pillar_v1_2_c.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_arcaoptions_topfeed_pillar_v1_2_c.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_arcaoptions_topfeed_pillar_v1_2_c.delivery_flag = {}

-- Size: Delivery Flag
nyse_arcaoptions_topfeed_pillar_v1_2_c.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_arcaoptions_topfeed_pillar_v1_2_c.delivery_flag.labels = {
  [1] = "Delivery Flag: Heartbeat (1)",
  [10] = "Delivery Flag: Pillar Failover (10)",
  [11] = "Delivery Flag: Original Message (11)",
  [12] = "Delivery Flag: Sequence Number Reset Message (12)",
  [13] = "Delivery Flag: One Retransmission Packet (13)",
  [15] = "Delivery Flag: Retransmission Sequence Message (15)",
  [17] = "Delivery Flag: One Refresh Packet (17)",
  [18] = "Delivery Flag: Refresh Sequence Start (18)",
  [19] = "Delivery Flag: Refresh Sequence Message (19)",
  [20] = "Delivery Flag: Refresh Sequence End (20)",
  [21] = "Delivery Flag: Message Unavailable (21)",
}

nyse_arcaoptions_topfeed_pillar_v1_2_c.delivery_flag.display = function(value)
  return nyse_arcaoptions_topfeed_pillar_v1_2_c.delivery_flag.labels[value] or "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
nyse_arcaoptions_topfeed_pillar_v1_2_c.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num = {}

-- Size: End Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num.size = 4

-- Display: End Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_arcaoptions_topfeed_pillar_v1_2_c.exchange_code = {}

-- Size: Exchange Code
nyse_arcaoptions_topfeed_pillar_v1_2_c.exchange_code.size = 1

-- Display: Exchange Code
nyse_arcaoptions_topfeed_pillar_v1_2_c.exchange_code.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exchange Code: No Value"
  end

  if value == "A" then
    return "Exchange Code: Nyse American (A)"
  end
  if value == "L" then
    return "Exchange Code: Ltse (L)"
  end
  if value == "N" then
    return "Exchange Code: Nyse (N)"
  end
  if value == "P" then
    return "Exchange Code: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Exchange Code: Nasdaq (Q)"
  end
  if value == "V" then
    return "Exchange Code: Iex (V)"
  end
  if value == "Z" then
    return "Exchange Code: Cboe (Z)"
  end
  if value == " " then
    return "Exchange Code: Otc Or Indexed Product (<whitespace>)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_arcaoptions_topfeed_pillar_v1_2_c.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.exchange_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.halt_condition = {}

-- Size: Halt Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.halt_condition.size = 1

-- Display: Halt Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.halt_condition.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Halt Condition: No Value"
  end

  if value == "~" then
    return "Halt Condition: Security Not Delayed Or Halted (~)"
  end
  if value == "D" then
    return "Halt Condition: News Released (D)"
  end
  if value == "I" then
    return "Halt Condition: Order Imbalance (I)"
  end
  if value == "P" then
    return "Halt Condition: News Pending (P)"
  end
  if value == "M" then
    return "Halt Condition: Luld Pause (M)"
  end
  if value == "X" then
    return "Halt Condition: Equipment Changeover (X)"
  end
  if value == "A" then
    return "Halt Condition: Additional Information Requested (A)"
  end
  if value == "C" then
    return "Halt Condition: Regulatory Concern (C)"
  end
  if value == "E" then
    return "Halt Condition: Merger Effective (E)"
  end
  if value == "F" then
    return "Halt Condition: Etf Component Prices Not Available (F)"
  end
  if value == "N" then
    return "Halt Condition: Corporate Action (N)"
  end
  if value == "O" then
    return "Halt Condition: New Security Offering (O)"
  end
  if value == "V" then
    return "Halt Condition: Intraday Indicative Value Not Available (V)"
  end
  if value == "1" then
    return "Halt Condition: Market Wide Circuit Breaker Halt Level 1 (1)"
  end
  if value == "2" then
    return "Halt Condition: Market Wide Circuit Breaker Halt Level 2 (2)"
  end
  if value == "3" then
    return "Halt Condition: Market Wide Circuit Breaker Halt Level 3 (3)"
  end

  return "Halt Condition: Unknown("..value..")"
end

-- Dissect: Halt Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.halt_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- High Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.high_price = {}

-- Size: High Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.high_price.size = 4

-- Display: High Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.high_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.high_price, range, value, display)

  return offset + length, value
end

-- Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.id = {}

-- Size: Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.id.size = 4

-- Display: Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.id, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_arcaoptions_topfeed_pillar_v1_2_c.imbalance_side = {}

-- Size: Imbalance Side
nyse_arcaoptions_topfeed_pillar_v1_2_c.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_arcaoptions_topfeed_pillar_v1_2_c.imbalance_side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Imbalance Side: No Value"
  end

  if value == "B" then
    return "Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Imbalance Side: No Imbalance (<whitespace>)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
nyse_arcaoptions_topfeed_pillar_v1_2_c.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.imbalance_side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Indicative Match Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.indicative_match_price = {}

-- Size: Indicative Match Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.indicative_match_price.size = 4

-- Display: Indicative Match Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.indicative_match_price.display = function(value)
  return "Indicative Match Price: "..value
end

-- Dissect: Indicative Match Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.indicative_match_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.indicative_match_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.indicative_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.last_seq_num = {}

-- Size: Last Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.lot_size = {}

-- Size: Lot Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.lot_size.size = 2

-- Display: Lot Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Low Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.low_price = {}

-- Size: Low Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.low_price.size = 4

-- Display: Low Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.low_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Collar
nyse_arcaoptions_topfeed_pillar_v1_2_c.lower_collar = {}

-- Size: Lower Collar
nyse_arcaoptions_topfeed_pillar_v1_2_c.lower_collar.size = 4

-- Display: Lower Collar
nyse_arcaoptions_topfeed_pillar_v1_2_c.lower_collar.display = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_arcaoptions_topfeed_pillar_v1_2_c.lower_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.lower_collar.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.lower_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id = {}

-- Size: Market Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id.size = 2

-- Display: Market Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id.labels = {
  [1] = "Market Id: Nyse Equities (1)",
  [3] = "Market Id: Nyse Arca Equities (3)",
  [4] = "Market Id: Nyse Arca Options (4)",
  [8] = "Market Id: Nyse American Options (8)",
  [9] = "Market Id: Nyse American Equities (9)",
  [10] = "Market Id: Nyse National Equities (10)",
  [11] = "Market Id: Nyse Chicago (11)",
}

nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id.display = function(value)
  return nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id.labels[value] or "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Market State
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_state = {}

-- Size: Market State
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_state.size = 1

-- Display: Market State
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_state.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Market State: No Value"
  end

  if value == "P" then
    return "Market State: Preopening (P)"
  end
  if value == "E" then
    return "Market State: Early Session (E)"
  end
  if value == "O" then
    return "Market State: Core Session (O)"
  end
  if value == "L" then
    return "Market State: Late Session (L)"
  end
  if value == "X" then
    return "Market State: Closed (X)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
nyse_arcaoptions_topfeed_pillar_v1_2_c.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.market_state.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.market_state, range, value, display)

  return offset + length, value
end

-- Maturity Date
nyse_arcaoptions_topfeed_pillar_v1_2_c.maturity_date = {}

-- Size: Maturity Date
nyse_arcaoptions_topfeed_pillar_v1_2_c.maturity_date.size = 6

-- Display: Maturity Date
nyse_arcaoptions_topfeed_pillar_v1_2_c.maturity_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
nyse_arcaoptions_topfeed_pillar_v1_2_c.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.maturity_date.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_size = {}

-- Size: Message Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_size.size = 2

-- Display: Message Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_type = {}

-- Size: Message Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_type.size = 2

-- Display: Message Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_type.labels = {
  [1] = "Message Type: Sequence Number Reset Message (1)",
  [2] = "Message Type: Time Reference Message (2)",
  [3] = "Message Type: Symbol Index Mapping Message (3)",
  [10] = "Message Type: Retransmission Request Message (10)",
  [11] = "Message Type: Request Response Message (11)",
  [12] = "Message Type: Heartbeat Response Message (12)",
  [13] = "Message Type: Symbol Index Mapping Request Message (13)",
  [15] = "Message Type: Refresh Request Message (15)",
  [31] = "Message Type: Message Unavailable Message (31)",
  [32] = "Message Type: Symbol Clear Message (32)",
  [34] = "Message Type: Security Status Message (34)",
  [35] = "Message Type: Refresh Header Message (35)",
  [50] = "Message Type: Outright Series Index Mapping Message (50)",
  [51] = "Message Type: Options Status Message (51)",
  [340] = "Message Type: Options Quote Message (340)",
  [320] = "Message Type: Options Trade Message (320)",
  [321] = "Message Type: Options Trade Cancel Message (321)",
  [322] = "Message Type: Options Trade Correction Message (322)",
  [305] = "Message Type: Options Imbalance Message (305)",
  [307] = "Message Type: Series Rfq Message (307)",
  [323] = "Message Type: Outright Series Summary Message (323)",
}

nyse_arcaoptions_topfeed_pillar_v1_2_c.message_type.display = function(value)
  return nyse_arcaoptions_topfeed_pillar_v1_2_c.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_arcaoptions_topfeed_pillar_v1_2_c.nanoseconds = {}

-- Size: Nanoseconds
nyse_arcaoptions_topfeed_pillar_v1_2_c.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_arcaoptions_topfeed_pillar_v1_2_c.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_arcaoptions_topfeed_pillar_v1_2_c.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_arcaoptions_topfeed_pillar_v1_2_c.number_msgs = {}

-- Size: Number Msgs
nyse_arcaoptions_topfeed_pillar_v1_2_c.number_msgs.size = 1

-- Display: Number Msgs
nyse_arcaoptions_topfeed_pillar_v1_2_c.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_arcaoptions_topfeed_pillar_v1_2_c.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Offical
nyse_arcaoptions_topfeed_pillar_v1_2_c.offical = {}

-- Size: Offical
nyse_arcaoptions_topfeed_pillar_v1_2_c.offical.size = 1

-- Display: Offical
nyse_arcaoptions_topfeed_pillar_v1_2_c.offical.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Offical: No Value"
  end

  return "Offical: "..value
end

-- Dissect: Offical
nyse_arcaoptions_topfeed_pillar_v1_2_c.offical.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.offical.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.offical.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.offical, range, value, display)

  return offset + length, value
end

-- Open
nyse_arcaoptions_topfeed_pillar_v1_2_c.open = {}

-- Size: Open
nyse_arcaoptions_topfeed_pillar_v1_2_c.open.size = 4

-- Display: Open
nyse_arcaoptions_topfeed_pillar_v1_2_c.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_arcaoptions_topfeed_pillar_v1_2_c.open.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.open.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.open, range, value, display)

  return offset + length, value
end

-- Opening
nyse_arcaoptions_topfeed_pillar_v1_2_c.opening = {}

-- Size: Opening
nyse_arcaoptions_topfeed_pillar_v1_2_c.opening.size = 1

-- Display: Opening
nyse_arcaoptions_topfeed_pillar_v1_2_c.opening.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Opening: No Value"
  end

  if value == " " then
    return "Opening: None (<whitespace>)"
  end
  if value == "O" then
    return "Opening: Market Center Opening Trade (O)"
  end
  if value == "5" then
    return "Opening: Reopening Trade (5)"
  end

  return "Opening: Unknown("..value..")"
end

-- Dissect: Opening
nyse_arcaoptions_topfeed_pillar_v1_2_c.opening.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.opening.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.opening.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.opening, range, value, display)

  return offset + length, value
end

-- Option Symbol Root
nyse_arcaoptions_topfeed_pillar_v1_2_c.option_symbol_root = {}

-- Size: Option Symbol Root
nyse_arcaoptions_topfeed_pillar_v1_2_c.option_symbol_root.size = 6

-- Display: Option Symbol Root
nyse_arcaoptions_topfeed_pillar_v1_2_c.option_symbol_root.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Option Symbol Root: No Value"
  end

  return "Option Symbol Root: "..value
end

-- Dissect: Option Symbol Root
nyse_arcaoptions_topfeed_pillar_v1_2_c.option_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.option_symbol_root.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.option_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.option_symbol_root, range, value, display)

  return offset + length, value
end

-- Original Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.original_trade_id = {}

-- Size: Original Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.original_trade_id.size = 4

-- Display: Original Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.paired_qty = {}

-- Size: Paired Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.paired_qty.size = 4

-- Display: Paired Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Participant
nyse_arcaoptions_topfeed_pillar_v1_2_c.participant = {}

-- Size: Participant
nyse_arcaoptions_topfeed_pillar_v1_2_c.participant.size = 4

-- Display: Participant
nyse_arcaoptions_topfeed_pillar_v1_2_c.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nyse_arcaoptions_topfeed_pillar_v1_2_c.participant.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.participant.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.participant, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.pkt_size = {}

-- Size: Pkt Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.pkt_size.size = 2

-- Display: Pkt Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_arcaoptions_topfeed_pillar_v1_2_c.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_price = {}

-- Size: Prev Close Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.price = {}

-- Size: Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.price.size = 4

-- Display: Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_1 = {}

-- Size: Price 1
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_1.size = 4

-- Display: Price 1
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_2 = {}

-- Size: Price 2
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_2.size = 4

-- Display: Price 2
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_resolution = {}

-- Size: Price Resolution
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_resolution.size = 1

-- Display: Price Resolution
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_resolution.labels = {
  [0] = "Price Resolution: All Penny (0)",
  [1] = "Price Resolution: Penny Nickel (1)",
  [5] = "Price Resolution: Nickel Dime (5)",
}

nyse_arcaoptions_topfeed_pillar_v1_2_c.price_resolution.display = function(value)
  return nyse_arcaoptions_topfeed_pillar_v1_2_c.price_resolution.labels[value] or "Price Resolution: Unknown("..value..")"
end

-- Dissect: Price Resolution
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code = {}

-- Size: Price Scale Code
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code.labels = {
  [6] = "Price Scale Code: Low Priced Securities (6)",
  [4] = "Price Scale Code: Medium Priced Securities (4)",
  [3] = "Price Scale Code: High Priced Securities (3)",
}

nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code.display = function(value)
  return nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code.labels[value] or "Price Scale Code: Unknown("..value..")"
end

-- Dissect: Price Scale Code
nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id = {}

-- Size: Product Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.size = 1

-- Display: Product Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.product_id, range, value, display)

  return offset + length, value
end

-- Put Or Call
nyse_arcaoptions_topfeed_pillar_v1_2_c.put_or_call = {}

-- Size: Put Or Call
nyse_arcaoptions_topfeed_pillar_v1_2_c.put_or_call.size = 1

-- Display: Put Or Call
nyse_arcaoptions_topfeed_pillar_v1_2_c.put_or_call.labels = {
  [0] = "Put Or Call: Put (0)",
  [1] = "Put Or Call: Call (1)",
}

nyse_arcaoptions_topfeed_pillar_v1_2_c.put_or_call.display = function(value)
  return nyse_arcaoptions_topfeed_pillar_v1_2_c.put_or_call.labels[value] or "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nyse_arcaoptions_topfeed_pillar_v1_2_c.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.quote_condition = {}

-- Size: Quote Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.quote_condition.size = 1

-- Display: Quote Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.quote_condition.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Quote Condition: No Value"
  end

  if value == "1" then
    return "Quote Condition: Regular Trading (1)"
  end
  if value == "2" then
    return "Quote Condition: Rotation (2)"
  end
  if value == "3" then
    return "Quote Condition: Trading Halted (3)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.quote_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.request_seq_num = {}

-- Size: Request Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1 = {}

-- Size: Reserved 1
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.size = 1

-- Display: Reserved 1
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_2 = {}

-- Size: Reserved 2
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_2.size = 2

-- Display: Reserved 2
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 3
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_3 = {}

-- Size: Reserved 3
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_3.size = 3

-- Display: Reserved 3
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4 = {}

-- Size: Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4.size = 4

-- Display: Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 6
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_6 = {}

-- Size: Reserved 6
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_6.size = 6

-- Display: Reserved 6
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_6.display = function(value)
  return "Reserved 6: "..value
end

-- Dissect: Reserved 6
nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_6.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.reserved_6, range, value, display)

  return offset + length, value
end

-- Retransmit Method
nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmit_method = {}

-- Size: Retransmit Method
nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmit_method.display = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Rfq Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.rfq_status = {}

-- Size: Rfq Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.rfq_status.size = 1

-- Display: Rfq Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.rfq_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Rfq Status: No Value"
  end

  if value == "O" then
    return "Rfq Status: Start (O)"
  end
  if value == "Q" then
    return "Rfq Status: End (Q)"
  end

  return "Rfq Status: Unknown("..value..")"
end

-- Dissect: Rfq Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.rfq_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.rfq_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.rfq_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.rfq_status, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_arcaoptions_topfeed_pillar_v1_2_c.round_lot = {}

-- Size: Round Lot
nyse_arcaoptions_topfeed_pillar_v1_2_c.round_lot.size = 1

-- Display: Round Lot
nyse_arcaoptions_topfeed_pillar_v1_2_c.round_lot.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Round Lot: No Value"
  end

  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_arcaoptions_topfeed_pillar_v1_2_c.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.round_lot.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Second Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_c.second_reserved_4 = {}

-- Size: Second Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_c.second_reserved_4.size = 4

-- Display: Second Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_c.second_reserved_4.display = function(value)
  return "Second Reserved 4: "..value
end

-- Dissect: Second Reserved 4
nyse_arcaoptions_topfeed_pillar_v1_2_c.second_reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.second_reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.second_reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.second_reserved_4, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_arcaoptions_topfeed_pillar_v1_2_c.seconds = {}

-- Size: Seconds
nyse_arcaoptions_topfeed_pillar_v1_2_c.seconds.size = 4

-- Dissect: Seconds
nyse_arcaoptions_topfeed_pillar_v1_2_c.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.seconds
  if nyse_arcaoptions_topfeed_pillar_v1_2_c.absolute_time_base == 1 then field = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Security Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status = {}

-- Size: Security Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status.size = 1

-- Display: Security Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Status: No Value"
  end

  if value == "4" then
    return "Security Status: Trading Halt (4)"
  end
  if value == "5" then
    return "Security Status: Resume (5)"
  end
  if value == "6" then
    return "Security Status: Suspend (6)"
  end
  if value == "A" then
    return "Security Status: Short Sale Restriction Activated Day 1 (A)"
  end
  if value == "C" then
    return "Security Status: Short Sale Restriction Continued Day 2 (C)"
  end
  if value == "D" then
    return "Security Status: Short Sale Restriction Deactivated (D)"
  end
  if value == "P" then
    return "Security Status: Preopening (P)"
  end
  if value == "B" then
    return "Security Status: Begin Accepting Orders (B)"
  end
  if value == "E" then
    return "Security Status: Early Session (E)"
  end
  if value == "O" then
    return "Security Status: Core Session (O)"
  end
  if value == "L" then
    return "Security Status: Late Session (L)"
  end
  if value == "X" then
    return "Security Status: Closed (X)"
  end
  if value == "I" then
    return "Security Status: Halt Resume Price Indication (I)"
  end
  if value == "G" then
    return "Security Status: Pre Opening Price Indication (G)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_type = {}

-- Size: Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_type.size = 1

-- Display: Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Type: No Value"
  end

  if value == "A" then
    return "Security Type: Adr (A)"
  end
  if value == "C" then
    return "Security Type: Common Stock (C)"
  end
  if value == "D" then
    return "Security Type: Debentures (D)"
  end
  if value == "E" then
    return "Security Type: Etf (E)"
  end
  if value == "F" then
    return "Security Type: Foreign (F)"
  end
  if value == "H" then
    return "Security Type: Us Depositary Shares (H)"
  end
  if value == "I" then
    return "Security Type: Units (I)"
  end
  if value == "L" then
    return "Security Type: Index Linked Notes (L)"
  end
  if value == "M" then
    return "Security Type: Miscliquid Trust (M)"
  end
  if value == "O" then
    return "Security Type: Ordinary Shares (O)"
  end
  if value == "P" then
    return "Security Type: Preferred Stock (P)"
  end
  if value == "R" then
    return "Security Type: Rights (R)"
  end
  if value == "S" then
    return "Security Type: Shares Of Beneficiary Interest (S)"
  end
  if value == "T" then
    return "Security Type: Test (T)"
  end
  if value == "U" then
    return "Security Type: Closed End Fund (U)"
  end
  if value == "W" then
    return "Security Type: Warrant (W)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.security_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.security_type, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.seq_num = {}

-- Size: Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.seq_num.size = 4

-- Display: Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Series
nyse_arcaoptions_topfeed_pillar_v1_2_c.series = {}

-- Size: Series
nyse_arcaoptions_topfeed_pillar_v1_2_c.series.size = 1

-- Display: Series
nyse_arcaoptions_topfeed_pillar_v1_2_c.series.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Series: No Value"
  end

  if value == "a" then
    return "Series: Cube (a)"
  end
  if value == "c" then
    return "Series: Occ (c)"
  end
  if value == "e" then
    return "Series: Floor Trade (e)"
  end
  if value == "I" then
    return "Series: Other Outright Series (I)"
  end
  if value == "S" then
    return "Series: Iso Sweep (S)"
  end
  if value == "D" then
    return "Series: After 90 Seconds (D)"
  end
  if value == "f" then
    return "Series: Other Complex Orders (f)"
  end
  if value == "g" then
    return "Series: Complex Cube (g)"
  end
  if value == "H" then
    return "Series: Complex Qcc Order (H)"
  end
  if value == "i" then
    return "Series: Complex Floor Order (i)"
  end
  if value == "j" then
    return "Series: Complex Order Trading With The Outright Series (j)"
  end
  if value == "m" then
    return "Series: Complex Order To Outright Series Orderfloor Trade (m)"
  end
  if value == "p" then
    return "Series: Complex Order With Stock To Complex Order With Stock Floor Trade (p)"
  end
  if value == "s" then
    return "Series: Complex Order With Stock To Outright Series Order Floor Trade (s)"
  end

  return "Series: Unknown("..value..")"
end

-- Dissect: Series
nyse_arcaoptions_topfeed_pillar_v1_2_c.series.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.series.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series, range, value, display)

  return offset + length, value
end

-- Series Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index = {}

-- Size: Series Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.size = 4

-- Display: Series Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.display = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series_index, range, value, display)

  return offset + length, value
end

-- Series Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num = {}

-- Size: Series Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.size = 4

-- Display: Series Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.display = function(value)
  return "Series Seq Num: "..value
end

-- Dissect: Series Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series_seq_num, range, value, display)

  return offset + length, value
end

-- Series Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_status = {}

-- Size: Series Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_status.size = 1

-- Display: Series Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Series Status: No Value"
  end

  if value == "4" then
    return "Series Status: Trading Halt (4)"
  end
  if value == "5" then
    return "Series Status: Resume (5)"
  end
  if value == "6" then
    return "Series Status: Suspend (6)"
  end
  if value == "P" then
    return "Series Status: Preopening (P)"
  end
  if value == "B" then
    return "Series Status: Begin Accepting Orders (B)"
  end
  if value == "O" then
    return "Series Status: Core Session (O)"
  end
  if value == "X" then
    return "Series Status: Closed (X)"
  end

  return "Series Status: Unknown("..value..")"
end

-- Dissect: Series Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series_status, range, value, display)

  return offset + length, value
end

-- Series Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_type = {}

-- Size: Series Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_type.size = 1

-- Display: Series Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_type.labels = {
  [0] = "Series Type: Standard (0)",
  [1] = "Series Type: Flex (1)",
  [2] = "Series Type: Flex Percentage (2)",
}

nyse_arcaoptions_topfeed_pillar_v1_2_c.series_type.display = function(value)
  return nyse_arcaoptions_topfeed_pillar_v1_2_c.series_type.labels[value] or "Series Type: Unknown("..value..")"
end

-- Dissect: Series Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series_type, range, value, display)

  return offset + length, value
end

-- Session State
nyse_arcaoptions_topfeed_pillar_v1_2_c.session_state = {}

-- Size: Session State
nyse_arcaoptions_topfeed_pillar_v1_2_c.session_state.size = 1

-- Display: Session State
nyse_arcaoptions_topfeed_pillar_v1_2_c.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_arcaoptions_topfeed_pillar_v1_2_c.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.session_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.session_state, range, value, display)

  return offset + length, value
end

-- Side
nyse_arcaoptions_topfeed_pillar_v1_2_c.side = {}

-- Size: Side
nyse_arcaoptions_topfeed_pillar_v1_2_c.side.size = 1

-- Display: Side
nyse_arcaoptions_topfeed_pillar_v1_2_c.side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_arcaoptions_topfeed_pillar_v1_2_c.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.side, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id = {}

-- Size: Source Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.size = 10

-- Display: Source Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time = {}

-- Size: Source Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size = 4

-- Display: Source Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns = {}

-- Size: Source Time Ns
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_state = {}

-- Size: Ssr State
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_state.size = 1

-- Display: Ssr State
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_state.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ssr State: No Value"
  end

  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_state.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ssr Triggering Exchange Id: No Value"
  end

  if value == "A" then
    return "Ssr Triggering Exchange Id: Nyse American (A)"
  end
  if value == "B" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx Bx (B)"
  end
  if value == "C" then
    return "Ssr Triggering Exchange Id: Nyse National (C)"
  end
  if value == "D" then
    return "Ssr Triggering Exchange Id: Finra (D)"
  end
  if value == "I" then
    return "Ssr Triggering Exchange Id: Ise (I)"
  end
  if value == "J" then
    return "Ssr Triggering Exchange Id: Edga (J)"
  end
  if value == "K" then
    return "Ssr Triggering Exchange Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Ssr Triggering Exchange Id: Ltse (L)"
  end
  if value == "M" then
    return "Ssr Triggering Exchange Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "Ssr Triggering Exchange Id: Nyse (N)"
  end
  if value == "P" then
    return "Ssr Triggering Exchange Id: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Ssr Triggering Exchange Id: Nasdaq (Q)"
  end
  if value == "S" then
    return "Ssr Triggering Exchange Id: Cts (S)"
  end
  if value == "T" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx (T)"
  end
  if value == "V" then
    return "Ssr Triggering Exchange Id: Iex (V)"
  end
  if value == "W" then
    return "Ssr Triggering Exchange Id: Cbsx (W)"
  end
  if value == "X" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx Psx (X)"
  end
  if value == "Y" then
    return "Ssr Triggering Exchange Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Ssr Triggering Exchange Id: Cboe Bzx (Z)"
  end
  if value == "H" then
    return "Ssr Triggering Exchange Id: Miax (H)"
  end
  if value == "U" then
    return "Ssr Triggering Exchange Id: Memx (U)"
  end
  if value == " " then
    return "Ssr Triggering Exchange Id: No Value (<whitespace>)"
  end

  return "Ssr Triggering Exchange Id: Unknown("..value..")"
end

-- Dissect: Ssr Triggering Exchange Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.status = {}

-- Size: Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.status.size = 1

-- Display: Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Status: No Value"
  end

  if value == "0" then
    return "Status: Accepted (0)"
  end
  if value == "1" then
    return "Status: Rejected (1)"
  end
  if value == "2" then
    return "Status: Invalid Sequence Range (2)"
  end
  if value == "3" then
    return "Status: Maximum Sequence Range (3)"
  end
  if value == "4" then
    return "Status: Maximum Request In A Day (4)"
  end
  if value == "5" then
    return "Status: Maximum Refresh Requests In A Day (5)"
  end
  if value == "6" then
    return "Status: Old Seq Num Ttl (6)"
  end
  if value == "7" then
    return "Status: Invalid Channel Id (7)"
  end
  if value == "8" then
    return "Status: Invalid Product Id (8)"
  end
  if value == "9" then
    return "Status: Invalid Msg Type Or Msg Size (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_arcaoptions_topfeed_pillar_v1_2_c.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.status, range, value, display)

  return offset + length, value
end

-- Strike Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.strike_price = {}

-- Size: Strike Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.strike_price.size = 10

-- Display: Strike Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.strike_price.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.strike_price.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol = {}

-- Size: Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol.size = 11

-- Display: Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index = {}

-- Size: Symbol Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.size = 4

-- Display: Symbol Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.system_id = {}

-- Size: System Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.system_id.size = 1

-- Display: System Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.time = {}

-- Size: Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.time.size = 4

-- Display: Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.time.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Time: No Value"
  end

  local hour = math.floor(value / 10000000)
  local minute = math.floor(value / 100000) % 100
  local second = math.floor(value / 1000) % 100
  local millisecond = value % 1000

  return string.format("Time: %02d:%02d:%02d.%03d", hour, minute, second, millisecond)
end

-- Dissect: Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.time, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Total Quantity
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_quantity = {}

-- Size: Total Quantity
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_quantity.size = 4

-- Display: Total Quantity
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_quantity.display = function(value)
  return "Total Quantity: "..value
end

-- Dissect: Total Quantity
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.total_quantity, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Total Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_volume = {}

-- Size: Total Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_volume.size = 4

-- Display: Total Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_id = {}

-- Size: Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_id.size = 4

-- Display: Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Transaction
nyse_arcaoptions_topfeed_pillar_v1_2_c.transaction = {}

-- Size: Transaction
nyse_arcaoptions_topfeed_pillar_v1_2_c.transaction.size = 1

-- Display: Transaction
nyse_arcaoptions_topfeed_pillar_v1_2_c.transaction.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Transaction: No Value"
  end

  if value == "H" then
    return "Transaction: Opening Trade In Sequence (H)"
  end
  if value == "F" then
    return "Transaction: Opening Trade Out Of Sequence (F)"
  end
  if value == "D" then
    return "Transaction: In Sequence (D)"
  end
  if value == "B" then
    return "Transaction: Out Of Sequence (B)"
  end

  return "Transaction: Unknown("..value..")"
end

-- Dissect: Transaction
nyse_arcaoptions_topfeed_pillar_v1_2_c.transaction.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.transaction.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.transaction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.transaction, range, value, display)

  return offset + length, value
end

-- Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.type = {}

-- Size: Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.type.size = 1

-- Display: Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Type: No Value"
  end

  if value == "P" then
    return "Type: Price Improvement (P)"
  end
  if value == "F" then
    return "Type: Facilitation (F)"
  end
  if value == "S" then
    return "Type: Solicitation (S)"
  end
  if value == "B" then
    return "Type: Bold (B)"
  end
  if value == "C" then
    return "Type: Coa (C)"
  end

  return "Type: Unknown("..value..")"
end

-- Dissect: Type
nyse_arcaoptions_topfeed_pillar_v1_2_c.type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.type, range, value, display)

  return offset + length, value
end

-- Underlying Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_index = {}

-- Size: Underlying Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_index.size = 4

-- Display: Underlying Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_index.display = function(value)
  return "Underlying Index: "..value
end

-- Dissect: Underlying Index
nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.underlying_index, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_symbol = {}

-- Size: Underlying Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_symbol.size = 11

-- Display: Underlying Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_symbol.size
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

  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Upper Collar
nyse_arcaoptions_topfeed_pillar_v1_2_c.upper_collar = {}

-- Size: Upper Collar
nyse_arcaoptions_topfeed_pillar_v1_2_c.upper_collar.size = 4

-- Display: Upper Collar
nyse_arcaoptions_topfeed_pillar_v1_2_c.upper_collar.display = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_arcaoptions_topfeed_pillar_v1_2_c.upper_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.upper_collar.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.upper_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.volume = {}

-- Size: Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.volume.size = 4

-- Display: Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_arcaoptions_topfeed_pillar_v1_2_c.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.volume, range, value, display)

  return offset + length, value
end

-- Working Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.working_price = {}

-- Size: Working Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.working_price.size = 4

-- Display: Working Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.working_price.display = function(value)
  return "Working Price: "..value
end

-- Dissect: Working Price
nyse_arcaoptions_topfeed_pillar_v1_2_c.working_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.working_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse ArcaOptions TopFeed Pillar 1.2.c
-----------------------------------------------------------------------

-- Outright Series Summary Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_summary_message = {}

-- Size: Outright Series Summary Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_summary_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.high_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.low_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.open.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.close.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.total_volume.size

-- Display: Outright Series Summary Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Series Summary Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- High Price: Signed Binary
  index, high_price = nyse_arcaoptions_topfeed_pillar_v1_2_c.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Signed Binary
  index, low_price = nyse_arcaoptions_topfeed_pillar_v1_2_c.low_price.dissect(buffer, index, packet, parent)

  -- Open: Signed Binary
  index, open = nyse_arcaoptions_topfeed_pillar_v1_2_c.open.dissect(buffer, index, packet, parent)

  -- Close: Signed Binary
  index, close = nyse_arcaoptions_topfeed_pillar_v1_2_c.close.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Summary Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.outright_series_summary_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Rfq Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_rfq_message = {}

-- Size: Series Rfq Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_rfq_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.side.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.type.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.capacity.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.total_quantity.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.working_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.participant.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.rfq_status.size

-- Display: Series Rfq Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Rfq Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_arcaoptions_topfeed_pillar_v1_2_c.side.dissect(buffer, index, packet, parent)

  -- Type: ASCII
  index, type = nyse_arcaoptions_topfeed_pillar_v1_2_c.type.dissect(buffer, index, packet, parent)

  -- Capacity: ASCII
  index, capacity = nyse_arcaoptions_topfeed_pillar_v1_2_c.capacity.dissect(buffer, index, packet, parent)

  -- Total Quantity: Binary
  index, total_quantity = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_quantity.dissect(buffer, index, packet, parent)

  -- Working Price: Signed Binary
  index, working_price = nyse_arcaoptions_topfeed_pillar_v1_2_c.working_price.dissect(buffer, index, packet, parent)

  -- Participant: Binary
  index, participant = nyse_arcaoptions_topfeed_pillar_v1_2_c.participant.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_id.dissect(buffer, index, packet, parent)

  -- Rfq Status: ASCII
  index, rfq_status = nyse_arcaoptions_topfeed_pillar_v1_2_c.rfq_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Rfq Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.series_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.series_rfq_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.series_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Imbalance Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_imbalance_message = {}

-- Size: Options Imbalance Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_imbalance_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.paired_qty.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.total_imbalance_qty.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.market_imbalance_qty.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_2.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_type.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.imbalance_side.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.continuous_book_clearing_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_interest_clearing_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.second_reserved_4.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.indicative_match_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.upper_collar.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.lower_collar.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_status.size

-- Display: Options Imbalance Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Imbalance Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4.dissect(buffer, index, packet, parent)

  -- Paired Qty: Binary
  index, paired_qty = nyse_arcaoptions_topfeed_pillar_v1_2_c.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: Binary
  index, total_imbalance_qty = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: Binary
  index, market_imbalance_qty = nyse_arcaoptions_topfeed_pillar_v1_2_c.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_2.dissect(buffer, index, packet, parent)

  -- Auction Type: ASCII
  index, auction_type = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: ASCII
  index, imbalance_side = nyse_arcaoptions_topfeed_pillar_v1_2_c.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: Signed Binary
  index, continuous_book_clearing_price = nyse_arcaoptions_topfeed_pillar_v1_2_c.continuous_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Auction Interest Clearing Price: Signed Binary
  index, auction_interest_clearing_price = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_interest_clearing_price.dissect(buffer, index, packet, parent)

  -- Second Reserved 4: Binary
  index, second_reserved_4 = nyse_arcaoptions_topfeed_pillar_v1_2_c.second_reserved_4.dissect(buffer, index, packet, parent)

  -- Indicative Match Price: Signed Binary
  index, indicative_match_price = nyse_arcaoptions_topfeed_pillar_v1_2_c.indicative_match_price.dissect(buffer, index, packet, parent)

  -- Upper Collar: Signed Binary
  index, upper_collar = nyse_arcaoptions_topfeed_pillar_v1_2_c.upper_collar.dissect(buffer, index, packet, parent)

  -- Lower Collar: Signed Binary
  index, lower_collar = nyse_arcaoptions_topfeed_pillar_v1_2_c.lower_collar.dissect(buffer, index, packet, parent)

  -- Auction Status: Binary
  index, auction_status = nyse_arcaoptions_topfeed_pillar_v1_2_c.auction_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Imbalance Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_imbalance_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.options_imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Correction Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.correction_condition = {}

-- Size: Correction Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.correction_condition.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.transaction.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_3.size

-- Display: Correction Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.correction_condition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Correction Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.correction_condition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction: ASCII
  index, transaction = nyse_arcaoptions_topfeed_pillar_v1_2_c.transaction.dissect(buffer, index, packet, parent)

  -- Reserved 3: ASCII
  index, reserved_3 = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Correction Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.correction_condition.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.correction_condition, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.correction_condition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.correction_condition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.correction_condition.fields(buffer, offset, packet, parent)
  end
end

-- Options Trade Correction Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_correction_message = {}

-- Size: Options Trade Correction Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_correction_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.original_trade_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.correction_condition.size

-- Display: Options Trade Correction Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Correction Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.original_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Signed Binary
  index, price = nyse_arcaoptions_topfeed_pillar_v1_2_c.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_arcaoptions_topfeed_pillar_v1_2_c.volume.dissect(buffer, index, packet, parent)

  -- Correction Condition: Struct of 2 fields
  index, correction_condition = nyse_arcaoptions_topfeed_pillar_v1_2_c.correction_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Correction Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_trade_correction_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Trade Cancel Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_cancel_message = {}

-- Size: Options Trade Cancel Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_cancel_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.original_trade_id.size

-- Display: Options Trade Cancel Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Cancel Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.original_trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Cancel Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_trade_cancel_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_condition = {}

-- Size: Trade Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_condition.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.opening.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.offical.size

-- Display: Trade Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_condition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_condition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series: ASCII
  index, series = nyse_arcaoptions_topfeed_pillar_v1_2_c.series.dissect(buffer, index, packet, parent)

  -- Opening: ASCII
  index, opening = nyse_arcaoptions_topfeed_pillar_v1_2_c.opening.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.dissect(buffer, index, packet, parent)

  -- Offical: ASCII
  index, offical = nyse_arcaoptions_topfeed_pillar_v1_2_c.offical.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Condition
nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_condition.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.trade_condition, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_condition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_condition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_condition.fields(buffer, offset, packet, parent)
  end
end

-- Options Trade Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_message = {}

-- Size: Options Trade Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_condition.size

-- Display: Options Trade Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Signed Binary
  index, price = nyse_arcaoptions_topfeed_pillar_v1_2_c.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_arcaoptions_topfeed_pillar_v1_2_c.volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Struct of 4 fields
  index, trade_condition = nyse_arcaoptions_topfeed_pillar_v1_2_c.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_trade_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Quote Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_quote_message = {}

-- Size: Options Quote Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_quote_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.quote_condition.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_customer_volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_customer_volume.size

-- Display: Options Quote Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Quote Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Price: Signed Binary
  index, ask_price = nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: Binary
  index, ask_volume = nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: Signed Binary
  index, bid_price = nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: Binary
  index, bid_volume = nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_arcaoptions_topfeed_pillar_v1_2_c.quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.dissect(buffer, index, packet, parent)

  -- Ask Customer Volume: Binary
  index, ask_customer_volume = nyse_arcaoptions_topfeed_pillar_v1_2_c.ask_customer_volume.dissect(buffer, index, packet, parent)

  -- Bid Customer Volume: Binary
  index, bid_customer_volume = nyse_arcaoptions_topfeed_pillar_v1_2_c.bid_customer_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Quote Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_quote_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.options_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_status_message = {}

-- Size: Options Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_status_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_status.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.market_state.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.halt_condition.size

-- Display: Options Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: Binary
  index, series_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_seq_num.dissect(buffer, index, packet, parent)

  -- Series Status: ASCII
  index, series_status = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_status.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_arcaoptions_topfeed_pillar_v1_2_c.market_state.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_arcaoptions_topfeed_pillar_v1_2_c.halt_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.options_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.options_status_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.options_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Outright Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_index_mapping_message = {}

-- Size: Outright Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.series_type.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.system_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.option_symbol_root.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_symbol.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.contract_multiplier.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.maturity_date.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.put_or_call.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.strike_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.closing_only_indicator.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.size

-- Display: Outright Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: Binary
  index, series_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_index.dissect(buffer, index, packet, parent)

  -- Series Type: Binary
  index, series_type = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_type.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.system_id.dissect(buffer, index, packet, parent)

  -- Option Symbol Root: ASCII
  index, option_symbol_root = nyse_arcaoptions_topfeed_pillar_v1_2_c.option_symbol_root.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: ASCII
  index, underlying_symbol = nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Index: Binary
  index, underlying_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.underlying_index.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: Binary
  index, contract_multiplier = nyse_arcaoptions_topfeed_pillar_v1_2_c.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Maturity Date: ASCII
  index, maturity_date = nyse_arcaoptions_topfeed_pillar_v1_2_c.maturity_date.dissect(buffer, index, packet, parent)

  -- Put Or Call: Binary
  index, put_or_call = nyse_arcaoptions_topfeed_pillar_v1_2_c.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: ASCII
  index, strike_price = nyse_arcaoptions_topfeed_pillar_v1_2_c.strike_price.dissect(buffer, index, packet, parent)

  -- Closing Only Indicator: ASCII
  index, closing_only_indicator = nyse_arcaoptions_topfeed_pillar_v1_2_c.closing_only_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.outright_series_index_mapping_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Full Refresh Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.full_refresh_header = {}

-- Size: Full Refresh Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.full_refresh_header.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.last_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.last_symbol_seq_num.size

-- Display: Full Refresh Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.full_refresh_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Refresh Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.full_refresh_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Binary
  index, last_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: Binary
  index, last_symbol_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Refresh Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.full_refresh_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.full_refresh_header, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.full_refresh_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.full_refresh_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.full_refresh_header.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_header_message = {}

-- Calculate size of: Refresh Header Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_header_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arcaoptions_topfeed_pillar_v1_2_c.current_refresh_pkt.size

  index = index + nyse_arcaoptions_topfeed_pillar_v1_2_c.total_refresh_pkts.size

  local current_refresh_pkt = buffer(offset + 0, 2):le_uint()

  if current_refresh_pkt == 1 then
    index = index + nyse_arcaoptions_topfeed_pillar_v1_2_c.full_refresh_header.size

  end

  return index
end

-- Display: Refresh Header Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: Binary
  index, current_refresh_pkt = nyse_arcaoptions_topfeed_pillar_v1_2_c.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: Binary
  index, total_refresh_pkts = nyse_arcaoptions_topfeed_pillar_v1_2_c.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Full Refresh Header
  local full_refresh_header = nil

  local full_refresh_header_exists = current_refresh_pkt == 1

  if full_refresh_header_exists then
    index, full_refresh_header = nyse_arcaoptions_topfeed_pillar_v1_2_c.full_refresh_header.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Refresh Header Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status_message = {}

-- Size: Security Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.halt_condition.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.price_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.price_2.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_state.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.market_state.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.session_state.size

-- Display: Security Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_arcaoptions_topfeed_pillar_v1_2_c.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: Binary
  index, price_1 = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_arcaoptions_topfeed_pillar_v1_2_c.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_arcaoptions_topfeed_pillar_v1_2_c.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_arcaoptions_topfeed_pillar_v1_2_c.market_state.dissect(buffer, index, packet, parent)

  -- Session State: Binary
  index, session_state = nyse_arcaoptions_topfeed_pillar_v1_2_c.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.security_status_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_clear_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: Binary
  index, next_source_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_unavailable_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.size

-- Display: Message Unavailable Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_request_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.size

-- Display: Refresh Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: Binary
  index, retransmit_method = nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat_response_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.size

-- Display: Heartbeat Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.request_response_message = {}

-- Size: Request Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.request_response_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.request_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.status.size

-- Display: Request Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: Binary
  index, request_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  -- Status: ASCII
  index, status = nyse_arcaoptions_topfeed_pillar_v1_2_c.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.request_response_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmission_request_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.size

-- Display: Retransmission Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.system_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.exchange_code.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.security_type.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.lot_size.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_price.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_volume.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.price_resolution.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.round_lot.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_6.size

-- Display: Symbol Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_arcaoptions_topfeed_pillar_v1_2_c.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_arcaoptions_topfeed_pillar_v1_2_c.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_arcaoptions_topfeed_pillar_v1_2_c.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_arcaoptions_topfeed_pillar_v1_2_c.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_arcaoptions_topfeed_pillar_v1_2_c.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_arcaoptions_topfeed_pillar_v1_2_c.round_lot.dissect(buffer, index, packet, parent)

  -- Reserved 6: Binary
  index, reserved_6 = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Reference Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.time_reference_message = {}

-- Size: Time Reference Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.time_reference_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size

-- Display: Time Reference Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_arcaoptions_topfeed_pillar_v1_2_c.id.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_arcaoptions_topfeed_pillar_v1_2_c.reserved_4.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.time_reference_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.sequence_number_reset_message.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.size

-- Display: Sequence Number Reset Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_arcaoptions_topfeed_pillar_v1_2_c.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_arcaoptions_topfeed_pillar_v1_2_c.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_arcaoptions_topfeed_pillar_v1_2_c.payload = {}

-- Dispatch: Payload
nyse_arcaoptions_topfeed_pillar_v1_2_c.payload.dispatch = {
  [1] = nyse_arcaoptions_topfeed_pillar_v1_2_c.sequence_number_reset_message.dissect,
  [2] = nyse_arcaoptions_topfeed_pillar_v1_2_c.time_reference_message.dissect,
  [3] = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_message.dissect,
  [10] = nyse_arcaoptions_topfeed_pillar_v1_2_c.retransmission_request_message.dissect,
  [11] = nyse_arcaoptions_topfeed_pillar_v1_2_c.request_response_message.dissect,
  [12] = nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat_response_message.dissect,
  [13] = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_index_mapping_request_message.dissect,
  [15] = nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_request_message.dissect,
  [31] = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_unavailable_message.dissect,
  [32] = nyse_arcaoptions_topfeed_pillar_v1_2_c.symbol_clear_message.dissect,
  [34] = nyse_arcaoptions_topfeed_pillar_v1_2_c.security_status_message.dissect,
  [35] = nyse_arcaoptions_topfeed_pillar_v1_2_c.refresh_header_message.dissect,
  [50] = nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_index_mapping_message.dissect,
  [51] = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_status_message.dissect,
  [340] = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_quote_message.dissect,
  [320] = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_message.dissect,
  [321] = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_cancel_message.dissect,
  [322] = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_trade_correction_message.dissect,
  [305] = nyse_arcaoptions_topfeed_pillar_v1_2_c.options_imbalance_message.dissect,
  [307] = nyse_arcaoptions_topfeed_pillar_v1_2_c.series_rfq_message.dissect,
  [323] = nyse_arcaoptions_topfeed_pillar_v1_2_c.outright_series_summary_message.dissect,
}

-- Dissect: Payload
nyse_arcaoptions_topfeed_pillar_v1_2_c.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nyse_arcaoptions_topfeed_pillar_v1_2_c.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_header = {}

-- Size: Message Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_header.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.message_size.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.message_type.size

-- Display: Message Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, message_type = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_header, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.message = {}

-- Read runtime size of: Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Size
  local message_size = buffer(offset, 2):le_uint()

  return message_size
end

-- Display: Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_sequence ~= nil then
    local sequence = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message_sequence_number, UInt64.new(nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_arcaoptions_topfeed_pillar_v1_2_c.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = nyse_arcaoptions_topfeed_pillar_v1_2_c.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_arcaoptions_topfeed_pillar_v1_2_c.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nyse_arcaoptions_topfeed_pillar_v1_2_c.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.message, buffer(offset, 0))
    local current = nyse_arcaoptions_topfeed_pillar_v1_2_c.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arcaoptions_topfeed_pillar_v1_2_c.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat = {}

-- Display: Heartbeat
nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nyse_arcaoptions_topfeed_pillar_v1_2_c.messages = {}

-- Dispatch: Messages
nyse_arcaoptions_topfeed_pillar_v1_2_c.messages.dispatch = {
  [1] = nyse_arcaoptions_topfeed_pillar_v1_2_c.heartbeat.dissect,
}

-- Dissect: Messages
nyse_arcaoptions_topfeed_pillar_v1_2_c.messages.dissect = function(buffer, offset, packet, parent, delivery_flag)
  local dissect = nyse_arcaoptions_topfeed_pillar_v1_2_c.messages.dispatch[delivery_flag]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, number_msgs do

    -- Dependency element: Message Size
    local message_size = buffer(offset, 2):le_uint()

    -- Message: Struct of 2 fields
    offset = nyse_arcaoptions_topfeed_pillar_v1_2_c.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Send Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.send_time = {}

-- Size: Send Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.send_time.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.seconds.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.nanoseconds.size

-- Display: Send Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.send_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Send Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_arcaoptions_topfeed_pillar_v1_2_c.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_arcaoptions_topfeed_pillar_v1_2_c.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_arcaoptions_topfeed_pillar_v1_2_c.send_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local seconds = buffer(offset, 4):le_uint()
    local nanoseconds = buffer(offset + 4, 4):le_uint()
    local length = nyse_arcaoptions_topfeed_pillar_v1_2_c.send_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.send_time
    if nyse_arcaoptions_topfeed_pillar_v1_2_c.absolute_time_base == 1 then field = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.send_time_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(seconds, nanoseconds))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.send_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_header = {}

-- Size: Packet Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_header.size =
  nyse_arcaoptions_topfeed_pillar_v1_2_c.pkt_size.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.delivery_flag.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.number_msgs.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.seq_num.size + 
  nyse_arcaoptions_topfeed_pillar_v1_2_c.send_time.size

-- Display: Packet Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_arcaoptions_topfeed_pillar_v1_2_c.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_arcaoptions_topfeed_pillar_v1_2_c.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_arcaoptions_topfeed_pillar_v1_2_c.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_arcaoptions_topfeed_pillar_v1_2_c.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_arcaoptions_topfeed_pillar_v1_2_c.send_time.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_sequence = seq_num

  return index
end

-- Dissect: Packet Header
nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.fields.packet_header, buffer(offset, 0))
    local index = nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_arcaoptions_topfeed_pillar_v1_2_c.packet = {}

-- Verify required size of Udp packet
nyse_arcaoptions_topfeed_pillar_v1_2_c.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_header.size
end

-- Dissect Packet
nyse_arcaoptions_topfeed_pillar_v1_2_c.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_arcaoptions_topfeed_pillar_v1_2_c.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Delivery Flag
  local delivery_flag = buffer(index - 14, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = nyse_arcaoptions_topfeed_pillar_v1_2_c.messages.dissect(buffer, index, packet, parent, delivery_flag)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.init()
end

-- Dissector for Nyse ArcaOptions TopFeed Pillar 1.2.c
function omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c, buffer(), omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.description, "("..buffer:len().." Bytes)")
  return nyse_arcaoptions_topfeed_pillar_v1_2_c.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse ArcaOptions TopFeed Pillar 1.2.c (Udp)
local function omi_nyse_arcaoptions_topfeed_pillar_v1_2_c_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_arcaoptions_topfeed_pillar_v1_2_c.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_arcaoptions_topfeed_pillar_v1_2_c
  omi_nyse_arcaoptions_topfeed_pillar_v1_2_c.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse ArcaOptions TopFeed Pillar 1.2.c
omi_nyse_arcaoptions_topfeed_pillar_v1_2_c:register_heuristic("udp", omi_nyse_arcaoptions_topfeed_pillar_v1_2_c_udp_heuristic)

-- Register Nyse ArcaOptions TopFeed Pillar 1.2.c for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nyse_arcaoptions_topfeed_pillar_v1_2_c)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.2.c
--   Since: 1.2.b
--   Date: Monday, March 21, 2022
--   Specification: PILLAR_TOP_Client_Specification.pdf
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
