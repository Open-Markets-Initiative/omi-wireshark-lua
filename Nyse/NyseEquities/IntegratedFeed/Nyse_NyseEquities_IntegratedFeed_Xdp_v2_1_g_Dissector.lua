-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NyseEquities IntegratedFeed Xdp 2.1.g Protocol
local omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g = Proto("Omi.Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g", "Nyse NyseEquities IntegratedFeed Xdp 2.1.g")

-- Protocol table
local nyse_nyseequities_integratedfeed_xdp_v2_1_g = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NyseEquities IntegratedFeed Xdp 2.1.g Fields
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.auction_status = ProtoField.new("Auction Status", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.auctionstatus", ftypes.UINT8, nil, nil, nil, "Indicates whether the auction will run")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.auction_time = ProtoField.new("Auction Time", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.auctiontime", ftypes.UINT16, nil, nil, nil, "Projected Auction Time (hhmm)")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.auction_type = ProtoField.new("Auction Type", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.auctiontype", ftypes.STRING, nil, nil, nil, "Type of auction")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.beginseqnum", ftypes.UINT32, nil, nil, nil, "The beginning sequence number of the range of messages to be retransmitted.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.channel_id = ProtoField.new("Channel Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.channelid", ftypes.UINT8, nil, nil, nil, "The ID of the multicast channel over which the packet was sent.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.close = ProtoField.new("Close", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.close", ftypes.UINT32, nil, nil, nil, "The exchange Closing price of this stock for the day. Use the Price Scale in the symbol index msg.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.closing_only_clearing_price = ProtoField.new("Closing Only Clearing Price", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.closingonlyclearingprice", ftypes.UINT32, nil, nil, nil, "For Pillar-powered markets, the price at which all eligible auction-only interest would trade, subject to auction collars For NYSE, the price closest to the reference price where the imbalance of closing-only interest is 0. If a closing-only clearing price is not reached, it is defaulted to 0.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.continuous_book_clearing_price = ProtoField.new("Continuous Book Clearing Price", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.continuousbookclearingprice", ftypes.UINT32, nil, nil, nil, "For Pillar-powered markets, the price at which all interest on the book can trade, including auction and imbalance offset interest, and disregarding auction collars. For NYSE, the indicative matching price, i.e. the price closest to the reference price where the imbalance is 0. If a continuous book clearing price is not reached, it is defaulted to 0.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.cross_id = ProtoField.new("Cross Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.crossid", ftypes.UINT32, nil, nil, nil, "Unique identifier for this Cross Trade. Used in Cross Correction message to identify the Cross Trade to correct.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.cross_type = ProtoField.new("Cross Type", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.crosstype", ftypes.STRING, nil, nil, nil, "Reason for the crossing auction.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.currentrefreshpkt", ftypes.UINT16, nil, nil, nil, "The current refresh packet in the update")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.db_exec_id = ProtoField.new("Db Exec Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.dbexecid", ftypes.UINT32, nil, nil, nil, "For Pillar-powered markets, unused, defaulted to 0. For NYSE Tape A symbols, DB ExecID is assigned by the matching engine to all orders that participated in this trade event.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.deliveryflag", ftypes.UINT8, nil, nil, nil, "A flag that indicates whether this is an original, retransmitted, or ‘replayed’ message.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.endseqnum", ftypes.UINT32, nil, nil, nil, "The end sequence number of the range of messages to be retransmitted.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.exchangecode", ftypes.STRING, nil, nil, nil, "For listed equity markets, the market where this symbol is listed")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.firm_id = ProtoField.new("Firm Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.firmid", ftypes.STRING, nil, nil, nil, "The market participant’s firm ID. Blank-filled if a firm ID was not specified.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.freeze_status = ProtoField.new("Freeze Status", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.freezestatus", ftypes.UINT8, nil, nil, nil, "Freeze status code")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.full_refresh_header = ProtoField.new("Full Refresh Header", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.fullrefreshheader", ftypes.STRING, nil, nil, nil, "Sequence number fields that only the full Refresh Header carries.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.haltcondition", ftypes.STRING, nil, nil, nil, "Halt condition indicator")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.high_price = ProtoField.new("High Price", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.highprice", ftypes.UINT32, nil, nil, nil, "The exchange high price of this stock for the day. Use the Price Scale in the symbol index msg.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.id = ProtoField.new("Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.id", ftypes.UINT32, nil, nil, nil, "ID of the originating Matching Engine partition to which this message applies.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.imbalanceside", ftypes.STRING, nil, nil, nil, "The side of the TotalImbalanceQty")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.indicative_match_price = ProtoField.new("Indicative Match Price", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.indicativematchprice", ftypes.UINT32, nil, nil, nil, "For Pillar-powered markets, the price that has the highest executable volume of auction-eligible shares, subject to auction collars. It includes the non-displayed quantity of Reserve Orders.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.lastseqnum", ftypes.UINT32, nil, nil, nil, "The last sequence number sent on the channel for any symbol. The refresh is the state of the order book as of this sequence number.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.lastsymbolseqnum", ftypes.UINT32, nil, nil, nil, "The last symbol sequence number sent for this symbol. The refresh is the symbol state of this symbol as of this symbol sequence number.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.lot_size = ProtoField.new("Lot Size", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.lotsize", ftypes.UINT16, nil, nil, nil, "Round lot size in shares.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.low_price = ProtoField.new("Low Price", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.lowprice", ftypes.UINT32, nil, nil, nil, "The exchange Low price of this stock for the day. Use the Price Scale in the symbol index msg.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.lower_collar = ProtoField.new("Lower Collar", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.lowercollar", ftypes.UINT32, nil, nil, nil, "If the IndicativeMatchPrice is not strictly between the UpperCollar and the LowerCollar, special auction rules apply. See Rule 7.35P for details.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.market_id = ProtoField.new("Market Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.marketid", ftypes.UINT16, nil, nil, nil, "ID of the Originating Market")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.marketimbalanceqty", ftypes.UINT32, nil, nil, nil, "For Pillar-powered markets, the total market order imbalance quantity at the Indicative Match Price.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.market_state = ProtoField.new("Market State", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.marketstate", ftypes.STRING, nil, nil, nil, "The current Market State, which this msg updates if the Security Status field contains a Market State Code.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_count = ProtoField.new("Message Count", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.messagecount", ftypes.UINT8, nil, nil, nil, "The number of messages in this packet")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_size = ProtoField.new("Message Size", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.messagesize", ftypes.UINT16, nil, nil, nil, "The size of this message in bytes")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_type = ProtoField.new("Message Type", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.mpv = ProtoField.new("Mpv", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.mpv", ftypes.UINT16, nil, nil, nil, "The minimum increment for a trade price, in 100ths of a cent. Typically 1, or $0.0001, but for some Tick Pilot stocks, can be 500, or $0.05.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.nanoseconds", ftypes.UINT32, nil, nil, nil, "The nanosecond offset from the Send Time")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.new_order_id = ProtoField.new("New Order Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.neworderid", ftypes.UINT64, nil, nil, nil, "The new Order ID of the replacement order")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.new_price_parity_splits = ProtoField.new("New Price Parity Splits", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.newpriceparitysplits", ftypes.UINT8, nil, nil, nil, "Resulting number of splits at the new price. Defaulted to 0. Future use by NYSE only.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.nextsourceseqnum", ftypes.UINT32, nil, nil, nil, "The sequence number in the next message for this symbol")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.num_extensions = ProtoField.new("Num Extensions", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.numextensions", ftypes.UINT8, nil, nil, nil, "Number of times the halt period has been extended")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.num_parity_splits = ProtoField.new("Num Parity Splits", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.numparitysplits", ftypes.UINT8, nil, nil, nil, "Resulting number of splits at this price level Defaulted to 0. Future use by NYSE only.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.open = ProtoField.new("Open", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.open", ftypes.UINT32, nil, nil, nil, "The exchange Opening price of this stock for the day. Use the Price Scale in the symbol index msg.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.order_id = ProtoField.new("Order Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.orderid", ftypes.UINT64, nil, nil, nil, "The unique ID assigned by the matching engine to this order . Can be used to match this message to the gateway Order Report.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.packet_size = ProtoField.new("Packet Size", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.packetsize", ftypes.UINT16, nil, nil, nil, "The size of the packet in bytes, including this 16 byte packet header")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.pairedqty", ftypes.UINT32, nil, nil, nil, "For Pillar-powered markets, the number of shares paired off at the Indicative Match Price. For NYSE, the number of shares paired off at the Reference Price, truncated to the nearest round lot quantity.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.position_change = ProtoField.new("Position Change", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.positionchange", ftypes.UINT8, nil, nil, nil, "Currently defaulted to 0.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.prevcloseprice", ftypes.UINT32, nil, nil, nil, "The previous day’s closing price for this security.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.prevclosevolume", ftypes.UINT32, nil, nil, nil, "The previous day’s closing volume for the security.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.prev_price_parity_splits = ProtoField.new("Prev Price Parity Splits", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.prevpriceparitysplits", ftypes.UINT8, nil, nil, nil, "Resulting number of splits at the previous price Defaulted to 0. Future use by NYSE only.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.price = ProtoField.new("Price", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.price", ftypes.UINT32, nil, nil, nil, "The order price. Use with the Price Scale from the symbol-mapping index.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.price_1 = ProtoField.new("Price 1", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.price1", ftypes.UINT32, nil, nil, nil, "Default value is 0")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.price_2 = ProtoField.new("Price 2", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.price2", ftypes.UINT32, nil, nil, nil, "Default value is 0")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.priceresolution", ftypes.UINT8, nil, nil, nil, "All Penny, Penny/Nickel, Nickel/Dime")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.pricescalecode", ftypes.UINT8, nil, nil, nil, "Specifies placement of the decimal point in price fields for this security.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.printable_flag = ProtoField.new("Printable Flag", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.printableflag", ftypes.UINT8, nil, nil, nil, "Printable flag values")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.product_id = ProtoField.new("Product Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.productid", ftypes.UINT8, nil, nil, nil, "The unique ID for this NYSE feed listed in the feed’s client specification.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.reference_price = ProtoField.new("Reference Price", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.referenceprice", ftypes.UINT32, nil, nil, nil, "For Pillar-powered markets, the Reference Price is used to calculate the Indicative Match Price. For NYSE Tape A symbols, the Reference Price is the Last Sale if the last sale is at or between the current best quote.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.requestseqnum", ftypes.UINT32, nil, nil, nil, "The sequence number of the request message sent by the client.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.reserved1", ftypes.BYTES, nil, nil, nil, "This field is reserved for future use")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved for future use. Disregard any content.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.reserved4", ftypes.BYTES, nil, nil, nil, "Future use. Any field content should be ignored.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.retransmitmethod", ftypes.UINT8, nil, nil, nil, "The delivery method for the requested symbol index mapping information.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.round_lot = ProtoField.new("Round Lot", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.roundlot", ftypes.STRING, nil, nil, nil, "Round Lots Accepted")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.rpi_indicator = ProtoField.new("Rpi Indicator", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.rpiindicator", ftypes.STRING, nil, nil, nil, "The side(s) where Retail Price Improvement orders (RPI orders) exist.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.seconds = ProtoField.new("Seconds", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.seconds", ftypes.UINT32, nil, nil, nil, "The time when this packet was published to the multicast channel, in seconds since Jan 1, 1970 00:00:00 UTC.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.security_status = ProtoField.new("Security Status", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.securitystatus", ftypes.STRING, nil, nil, nil, "The new status that this security is transitioning to.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.security_type = ProtoField.new("Security Type", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.securitytype", ftypes.STRING, nil, nil, nil, "Type of Security used by Arca, National and American")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.send_time = ProtoField.new("Send Time", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time when this packet was published to the multicast channel")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.send_time_utc = ProtoField.new("Send Time", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time when this packet was published to the multicast channel")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sequencenumber", ftypes.UINT32, nil, nil, nil, "The message sequence number of the first message in this packet")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.session_state = ProtoField.new("Session State", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sessionstate", ftypes.STRING, nil, nil, nil, "Unused. Defaulted to 0x00.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.side = ProtoField.new("Side", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.side", ftypes.STRING, nil, nil, nil, "The side of the order. Valid values: ‘B’ – Buy ‘S’ – Sell")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.source_id = ProtoField.new("Source Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourceid", ftypes.STRING, nil, nil, nil, "The ID of the client requesting this retransmission . This field is up to 9 characters, null terminated.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.source_time = ProtoField.new("Source Time", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetime", ftypes.UINT32, nil, nil, nil, "The time when this msg was generated in the order book, in seconds since Jan 1, 1970 00:00:00 UTC.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimens", ftypes.UINT32, nil, nil, nil, "The nanosecond offset from the SourceTime")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.ssr_filing_price = ProtoField.new("Ssr Filing Price", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.ssrfilingprice", ftypes.UINT32, nil, nil, nil, "For Pillar-powered markets, not supported and defaulted to 0. For NYSE, the price at which Sell Short interest in the opening auction will be filed if a Sell Short Restriction is in effect for the security.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.ssr_state = ProtoField.new("Ssr State", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.ssrstate", ftypes.STRING, nil, nil, nil, "The current SSR state, which this msg updates if the Security Status field contains an SSR Code. Valid")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.ssrtriggeringexchangeid", ftypes.STRING, nil, nil, nil, "This field is only populated when securityStatus = A and this security is listed on this exchange. Otherwise it is defaulted to 0x20.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.ssrtriggeringvolume", ftypes.UINT32, nil, nil, nil, "This field is only populated when securityStatus = A and this security is listed on this exchange")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.status = ProtoField.new("Status", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.status", ftypes.STRING, nil, nil, nil, "The reason why the request was rejected.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol = ProtoField.new("Symbol", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbol", ftypes.STRING, nil, nil, nil, "Null-terminated ASCII symbol in NYSE Symbology.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindex", ftypes.UINT32, nil, nil, nil, "The unique ID of this symbol for all products within this market. This ID cannot be used to cross reference a security between markets.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolseqnum", ftypes.UINT32, nil, nil, nil, "Reserved for future use. Ignore any content. This usage will become standard across all products in future releases.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.system_id = ProtoField.new("System Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.systemid", ftypes.UINT8, nil, nil, nil, "ID of the Originating matching engine server.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.time = ProtoField.new("Time", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.time", ftypes.UINT32, nil, nil, nil, "Format : HHMMSSmmm (mmm = milliseconds)")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.totalimbalanceqty", ftypes.UINT32, nil, nil, nil, "For Pillar-powered markets, the total imbalance quantity at the Indicative Match Price. For NYSE, the total imbalance quantity at the Reference Price, truncated to the round lot.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.totalrefreshpkts", ftypes.UINT16, nil, nil, nil, "The total number of refresh packets you should expect in the update")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.total_volume = ProtoField.new("Total Volume", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.totalvolume", ftypes.UINT32, nil, nil, nil, "The exchange cumulative volume for the stock throughout the day.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.trade_id = ProtoField.new("Trade Id", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.tradeid", ftypes.UINT32, nil, nil, nil, "The TradeID of the original Trade or Execution message to be cancelled.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.unitoftrade", ftypes.UINT16, nil, nil, nil, "This field specifies the security Unit of Trade in shares. Valid values are 1, 10, 50 and 100")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.upper_collar = ProtoField.new("Upper Collar", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.uppercollar", ftypes.UINT32, nil, nil, nil, "If the IndicativeMatchPrice is not strictly between the UpperCollar and the LowerCollar, special auction rules apply. See Rule 7.35P for details.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.volume = ProtoField.new("Volume", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.volume", ftypes.UINT32, nil, nil, nil, "The order quantity in shares")

-- Nyse NyseEquities IntegratedFeed Xdp 2.1.g Framing
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message = ProtoField.new("Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.message", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_header = ProtoField.new("Message Header", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.messageheader", ftypes.STRING)
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.packet = ProtoField.new("Packet", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.packet", ftypes.STRING, nil, nil, nil, "Xdp Udp Packet")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.packet_header = ProtoField.new("Packet Header", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.packetheader", ftypes.STRING)

-- Nyse NyseEquities IntegratedFeed 2.1.g Application Messages
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.add_order_message = ProtoField.new("Add Order Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.addordermessage", ftypes.STRING, nil, nil, nil, "An Add Order message is published when a new visible order has been received and added to the book. The Order ID is assigned by the matching engine and is good for today only. It is unique across all markets, except that for NYSE Tape A symbols, it is only unique per matching engine instance.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.add_order_refresh_message = ProtoField.new("Add Order Refresh Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.addorderrefreshmessage", ftypes.STRING, nil, nil, nil, "The Add Order Refresh message can be sent in either of two contexts: 1) If a client sends a Refresh Request to the Request Controller, an Add Order Refresh message is sent over the Refresh channels as part of the refresh response for every order currently sitting on the book. 2) If NYSE Operations refreshes a symbol, a Symbol Clear message is published, followed by a full refresh. The refresh includes an Add Order Refresh message for every order currently sitting on the book of the symbol.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.cross_correction_message = ProtoField.new("Cross Correction Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.crosscorrectionmessage", ftypes.STRING, nil, nil, nil, "In the event that an earlier Cross Trade has been reported in error, a Cross Correction message is sent.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.crosstrademessage", ftypes.STRING, nil, nil, nil, "A Cross Trade message is published on completion of a crossing auction, and shows the bulk volume that traded in the auction. The Reason Code field indicates the auction type. Additionally, a non-printable Order Execution or Trade message will be published for each order that traded.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.delete_order_message = ProtoField.new("Delete Order Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.deleteordermessage", ftypes.STRING, nil, nil, nil, "A Delete Order message is published when an order is taken off of the book for any reason except for full execution, in which case an Order Execution message is sent.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.heartbeatresponsemessage", ftypes.STRING, nil, nil, nil, "Clients who remain connected to the Retransmission Server intraday must respond to a Heartbeat with a Heartbeat Response message within 5 seconds. If no timely client response is received, the connection will be closed.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.imbalancemessage", ftypes.STRING, nil, nil, nil, "Imbalance messages are sent periodically during auctions to update price and volume information. If there is no change to the calculated fields, no message will be generated.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.messageunavailablemessage", ftypes.STRING, nil, nil, nil, "This message will be sent over the Retransmission multicast channels to inform clients of unavailability of a range of messages (or part of a range) for which they may have requested a retransmission.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.modify_order_message = ProtoField.new("Modify Order Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.modifyordermessage", ftypes.STRING, nil, nil, nil, "A Modify Order message is sent when the price or volume of an order is changed due to an event other than a cancel-replace, or full or partial execution. The content of the price and volume fields represent the new values after modification.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.non_displayed_trade_message = ProtoField.new("Non Displayed Trade Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.nondisplayedtrademessage", ftypes.STRING, nil, nil, nil, "An Non Displayed Trade message is sent as a result of a match between two non-displayed orders.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.order_execution_message = ProtoField.new("Order Execution Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.orderexecutionmessage", ftypes.STRING, nil, nil, nil, "An Order Execution message is sent when an order is partially or fully executed.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.refreshheadermessage", ftypes.STRING, nil, nil, nil, "The first message in each packet of refresh messages published over the Refresh multicast channels is of this type.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.refreshrequestmessage", ftypes.STRING, nil, nil, nil, "Clients who have experienced a failure and need a refresh of the state of one or all symbols in a specific channel should send a Retransmission Request message via TCP to the Request Controller. A Request Response message will be sent over the TCP connection back to the client, and if the request was valid, the requested message(s) will be published over the relevant Refresh multicast channel.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.replace_order_message = ProtoField.new("Replace Order Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.replaceordermessage", ftypes.STRING, nil, nil, nil, "A Replace Order message is published when a cancel/replace order is received and executed. The sitting order is replaced with a new one containing the same symbol, side and attribution, a new Order ID, and the price and size specified. The sitting order must be removed from the book and replaced with the new order.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.requestresponsemessage", ftypes.STRING, nil, nil, nil, "This message will be sent immediately via TCP/IP in response to the client’s request for retransmission, refresh or Symbol Mapping messages.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.retailpriceimprovementmessage", ftypes.STRING, nil, nil, nil, "Published when RPI interest (hidden retail price improvement interest) is added or removed between the best bid and best offer price. When all RPI interest for this security is removed from the book, An RPI message with RPIIndicator = ' ' (space character) is published.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.retransmissionrequestmessage", ftypes.STRING, nil, nil, nil, "Clients who have experienced a sequence number gap and need a retransmission of the missed messages should send a Retransmission Request message via TCP to the Request Controller. A Request Response message will be sent over the TCP connection back to the client, and if the request was valid, the requested message(s) will be re-published over the relevant Retransmission multicast channel.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.securitystatusmessage", ftypes.STRING, nil, nil, nil, "This message informs clients of changes in the status of a specific security, such as Trading Halts, Short Sale Restriction state changes, etc.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sequencenumberresetmessage", ftypes.STRING, nil, nil, nil, "This message is sent to reset the Message Sequence Number at start of day, or in response to failures.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimereferencemessage", ftypes.STRING, nil, nil, nil, "This message is sent at the start of every second during periods of active data publication.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.stock_summary_message = ProtoField.new("Stock Summary Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.stocksummarymessage", ftypes.STRING, nil, nil, nil, "On a separate channel from the main feed, the Stock Summary channel, a Stock Summary message per symbol is sent every 60 seconds. The message is sent regardless of whether there has been a change to the symbol in the last 60 seconds or not.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolclearmessage", ftypes.STRING, nil, nil, nil, "In case of a failure and recovery of a Matching Engine or an XDP Publisher, the publisher may send a full state refresh for every symbol affected. This kind of unrequested refresh is preceded by a Symbol Clear message. The client should react to receipt of a Symbol Clear message by clearing all state information for the specified symbol in anticipation of receiving a full state refresh.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindexmappingmessage", ftypes.STRING, nil, nil, nil, "This message is published over the real-time data channels at system startup or in the context of a refresh sequence after a Matching Engine or XDP Publisher failover. It provides referential data for a single specified symbol.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindexmappingrequestmessage", ftypes.STRING, nil, nil, nil, "This message is sent by clients via TCP/IP requesting the Symbol Index Mapping messages for one or all symbols in a specified channel.")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.tradecancelmessage", ftypes.STRING, nil, nil, nil, "In the event that an earlier trade has been reported in error, a Trade Cancel message is sent. This occurs whether the initial report was an Order Execution or a Non-Displayed Trade message.")

-- Nyse NyseEquities IntegratedFeed Xdp 2.1.g Generated Fields
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_index = ProtoField.new("Message Index", "nyse.nyseequities.integratedfeed.xdp.v2.1.g.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Nyse NyseEquities IntegratedFeed Xdp 2.1.g Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nyse_nyseequities_integratedfeed_xdp_v2_1_g.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse NyseEquities IntegratedFeed Xdp 2.1.g Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Nyse NyseEquities IntegratedFeed Xdp 2.1.g Show Options
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_application_messages then
    show.application_messages = omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_application_messages
  end
  if show.headers ~= omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_headers then
    show.headers = omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_headers
  end
  if show.structs ~= omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_structs then
    show.structs = omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_structs
  end
  if show.indexes ~= omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_indexes then
    show.indexes = omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.show_indexes
  end
  if nyse_nyseequities_integratedfeed_xdp_v2_1_g.absolute_time_base ~= omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.absolute_time_base then
    nyse_nyseequities_integratedfeed_xdp_v2_1_g.absolute_time_base = omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.prefs.absolute_time_base
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


-----------------------------------------------------------------------
-- Nyse NyseEquities IntegratedFeed Xdp 2.1.g Fields
-----------------------------------------------------------------------

-- Auction Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_status = {}

-- Size: Auction Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_status.size = 1

-- Display: Auction Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_status.display = function(value)
  if value == 0 then
    return "Auction Status: Will Run Open Close (0)"
  end
  if value == 1 then
    return "Auction Status: Will Run Interest (1)"
  end
  if value == 2 then
    return "Auction Status: Will Not Run Imbalance (2)"
  end
  if value == 3 then
    return "Auction Status: Will Not Run Transition To Closing (3)"
  end

  return "Auction Status: Unknown("..value..")"
end

-- Dissect: Auction Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Auction Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_time = {}

-- Size: Auction Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_time.size = 2

-- Display: Auction Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_time.display = function(value)
  return "Auction Time: "..value
end

-- Dissect: Auction Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.auction_time, range, value, display)

  return offset + length, value
end

-- Auction Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_type = {}

-- Size: Auction Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_type.size = 1

-- Display: Auction Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Auction Type: No Value"
  end

  if value == "O" then
    return "Auction Type: Early Opening (O)"
  end
  if value == "M" then
    return "Auction Type: Core Opening (M)"
  end
  if value == "H" then
    return "Auction Type: Reopening (H)"
  end
  if value == "C" then
    return "Auction Type: Closing (C)"
  end
  if value == "R" then
    return "Auction Type: Regulatory Imbalance (R)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id = {}

-- Size: Channel Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.size = 1

-- Display: Channel Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Close
nyse_nyseequities_integratedfeed_xdp_v2_1_g.close = {}

-- Size: Close
nyse_nyseequities_integratedfeed_xdp_v2_1_g.close.size = 4

-- Display: Close
nyse_nyseequities_integratedfeed_xdp_v2_1_g.close.display = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_nyseequities_integratedfeed_xdp_v2_1_g.close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.close, range, value, display)

  return offset + length, value
end

-- Closing Only Clearing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.closing_only_clearing_price = {}

-- Size: Closing Only Clearing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.closing_only_clearing_price.size = 4

-- Display: Closing Only Clearing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.closing_only_clearing_price.display = function(value)
  return "Closing Only Clearing Price: "..value
end

-- Dissect: Closing Only Clearing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.closing_only_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.closing_only_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.closing_only_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.closing_only_clearing_price, range, value, display)

  return offset + length, value
end

-- Continuous Book Clearing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.continuous_book_clearing_price = {}

-- Size: Continuous Book Clearing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.continuous_book_clearing_price.size = 4

-- Display: Continuous Book Clearing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.continuous_book_clearing_price.display = function(value)
  return "Continuous Book Clearing Price: "..value
end

-- Dissect: Continuous Book Clearing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.continuous_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.continuous_book_clearing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.continuous_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.continuous_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Cross Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_id = {}

-- Size: Cross Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_id.size = 4

-- Display: Cross Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_type = {}

-- Size: Cross Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_type.size = 1

-- Display: Cross Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cross Type: No Value"
  end

  if value == "E" then
    return "Cross Type: Early Opening (E)"
  end
  if value == "O" then
    return "Cross Type: Opening (O)"
  end
  if value == "5" then
    return "Cross Type: Reopening (5)"
  end
  if value == "6" then
    return "Cross Type: Closing (6)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_nyseequities_integratedfeed_xdp_v2_1_g.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_nyseequities_integratedfeed_xdp_v2_1_g.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_nyseequities_integratedfeed_xdp_v2_1_g.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_nyseequities_integratedfeed_xdp_v2_1_g.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Db Exec Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.db_exec_id = {}

-- Size: Db Exec Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.db_exec_id.size = 4

-- Display: Db Exec Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.db_exec_id.display = function(value)
  return "Db Exec Id: "..value
end

-- Dissect: Db Exec Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.db_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.db_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.db_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.db_exec_id, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_nyseequities_integratedfeed_xdp_v2_1_g.delivery_flag = {}

-- Size: Delivery Flag
nyse_nyseequities_integratedfeed_xdp_v2_1_g.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_nyseequities_integratedfeed_xdp_v2_1_g.delivery_flag.display = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: Xdp Failover (10)"
  end
  if value == 11 then
    return "Delivery Flag: Original Message (11)"
  end
  if value == 12 then
    return "Delivery Flag: Sequence Number Reset Message (12)"
  end
  if value == 13 then
    return "Delivery Flag: One Retransmission Packet (13)"
  end
  if value == 15 then
    return "Delivery Flag: Retransmission Sequence Message (15)"
  end
  if value == 17 then
    return "Delivery Flag: One Refresh Packet (17)"
  end
  if value == 18 then
    return "Delivery Flag: Refresh Sequence Start (18)"
  end
  if value == 19 then
    return "Delivery Flag: Refresh Sequence Message (19)"
  end
  if value == 20 then
    return "Delivery Flag: Refresh Sequence End (20)"
  end
  if value == 21 then
    return "Delivery Flag: Message Unavailable (21)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
nyse_nyseequities_integratedfeed_xdp_v2_1_g.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num = {}

-- Size: End Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num.size = 4

-- Display: End Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_nyseequities_integratedfeed_xdp_v2_1_g.exchange_code = {}

-- Size: Exchange Code
nyse_nyseequities_integratedfeed_xdp_v2_1_g.exchange_code.size = 1

-- Display: Exchange Code
nyse_nyseequities_integratedfeed_xdp_v2_1_g.exchange_code.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exchange Code: No Value"
  end

  if value == "A" then
    return "Exchange Code: Nyse American (A)"
  end
  if value == "C" then
    return "Exchange Code: Nyse National (C)"
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
    return "Exchange Code: Bats (Z)"
  end
  if value == "B" then
    return "Exchange Code: Global Otc (B)"
  end
  if value == "U" then
    return "Exchange Code: Otcbb (U)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_nyseequities_integratedfeed_xdp_v2_1_g.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.exchange_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Firm Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.firm_id = {}

-- Size: Firm Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.firm_id.size = 5

-- Display: Firm Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.firm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Freeze Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.freeze_status = {}

-- Size: Freeze Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.freeze_status.size = 1

-- Display: Freeze Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.freeze_status.display = function(value)
  if value == 0 then
    return "Freeze Status: No Imbalance Freeze (0)"
  end
  if value == 1 then
    return "Freeze Status: Imbalance Freeze (1)"
  end

  return "Freeze Status: Unknown("..value..")"
end

-- Dissect: Freeze Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.freeze_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.freeze_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.freeze_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.freeze_status, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_nyseequities_integratedfeed_xdp_v2_1_g.halt_condition = {}

-- Size: Halt Condition
nyse_nyseequities_integratedfeed_xdp_v2_1_g.halt_condition.size = 1

-- Display: Halt Condition
nyse_nyseequities_integratedfeed_xdp_v2_1_g.halt_condition.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Halt Condition: No Value"
  end

  if value == "~" then
    return "Halt Condition: Security Not Delayedhalted (~)"
  end
  if value == " " then
    return "Halt Condition: Not Delayedhalted Nyse Tape A Only (<whitespace>)"
  end
  if value == "D" then
    return "Halt Condition: News Dissemination (D)"
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
  if value == "S" then
    return "Halt Condition: Related Security Not Used (S)"
  end
  if value == "X" then
    return "Halt Condition: Equipment Changeover (X)"
  end
  if value == "Z" then
    return "Halt Condition: No Open No Resume (Z)"
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
nyse_nyseequities_integratedfeed_xdp_v2_1_g.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.halt_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- High Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.high_price = {}

-- Size: High Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.high_price.size = 4

-- Display: High Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.high_price, range, value, display)

  return offset + length, value
end

-- Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.id = {}

-- Size: Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.id.size = 4

-- Display: Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.id, range, value, display)

  return offset + length, value
end

-- Imbalance Side
nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_side = {}

-- Size: Imbalance Side
nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_side.size = 1

-- Display: Imbalance Side
nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Imbalance Side: No Value"
  end

  if value == " " then
    return "Imbalance Side: No Imbalance (<whitespace>)"
  end
  if value == "B" then
    return "Imbalance Side: Buy Side (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell Side (S)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Indicative Match Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.indicative_match_price = {}

-- Size: Indicative Match Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.indicative_match_price.size = 4

-- Display: Indicative Match Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.indicative_match_price.display = function(value)
  return "Indicative Match Price: "..value
end

-- Dissect: Indicative Match Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.indicative_match_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.indicative_match_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.indicative_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.indicative_match_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_seq_num = {}

-- Size: Last Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.lot_size = {}

-- Size: Lot Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.lot_size.size = 2

-- Display: Lot Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Low Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.low_price = {}

-- Size: Low Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.low_price.size = 4

-- Display: Low Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lower Collar
nyse_nyseequities_integratedfeed_xdp_v2_1_g.lower_collar = {}

-- Size: Lower Collar
nyse_nyseequities_integratedfeed_xdp_v2_1_g.lower_collar.size = 4

-- Display: Lower Collar
nyse_nyseequities_integratedfeed_xdp_v2_1_g.lower_collar.display = function(value)
  return "Lower Collar: "..value
end

-- Dissect: Lower Collar
nyse_nyseequities_integratedfeed_xdp_v2_1_g.lower_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.lower_collar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.lower_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_id = {}

-- Size: Market Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_id.size = 2

-- Display: Market Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_id.display = function(value)
  if value == 1 then
    return "Market Id: Nyse Equities (1)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca Equities (3)"
  end
  if value == 4 then
    return "Market Id: Nyse Arca Options (4)"
  end
  if value == 5 then
    return "Market Id: Nyse Bonds (5)"
  end
  if value == 6 then
    return "Market Id: Global Otc (6)"
  end
  if value == 8 then
    return "Market Id: Nyse Amex Options (8)"
  end
  if value == 9 then
    return "Market Id: Nyse American Equities (9)"
  end
  if value == 10 then
    return "Market Id: Nyse National Equities (10)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Market State
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_state = {}

-- Size: Market State
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_state.size = 1

-- Display: Market State
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_state.display = function(value)
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
nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_state.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_count = {}

-- Size: Message Count
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_count.size = 1

-- Display: Message Count
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_size = {}

-- Size: Message Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_size.size = 2

-- Display: Message Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_type = {}

-- Size: Message Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_type.size = 2

-- Display: Message Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Message Type: Source Time Reference Message (2)"
  end
  if value == 3 then
    return "Message Type: Symbol Index Mapping Message (3)"
  end
  if value == 10 then
    return "Message Type: Retransmission Request Message (10)"
  end
  if value == 11 then
    return "Message Type: Request Response Message (11)"
  end
  if value == 12 then
    return "Message Type: Heartbeat Response Message (12)"
  end
  if value == 13 then
    return "Message Type: Symbol Index Mapping Request Message (13)"
  end
  if value == 15 then
    return "Message Type: Refresh Request Message (15)"
  end
  if value == 31 then
    return "Message Type: Message Unavailable Message (31)"
  end
  if value == 32 then
    return "Message Type: Symbol Clear Message (32)"
  end
  if value == 34 then
    return "Message Type: Security Status Message (34)"
  end
  if value == 35 then
    return "Message Type: Refresh Header Message (35)"
  end
  if value == 100 then
    return "Message Type: Add Order Message (100)"
  end
  if value == 101 then
    return "Message Type: Modify Order Message (101)"
  end
  if value == 104 then
    return "Message Type: Replace Order Message (104)"
  end
  if value == 102 then
    return "Message Type: Delete Order Message (102)"
  end
  if value == 112 then
    return "Message Type: Trade Cancel Message (112)"
  end
  if value == 111 then
    return "Message Type: Cross Trade Message (111)"
  end
  if value == 113 then
    return "Message Type: Cross Correction Message (113)"
  end
  if value == 114 then
    return "Message Type: Retail Price Improvement Message (114)"
  end
  if value == 106 then
    return "Message Type: Add Order Refresh Message (106)"
  end
  if value == 105 then
    return "Message Type: Imbalance Message (105)"
  end
  if value == 103 then
    return "Message Type: Order Execution Message (103)"
  end
  if value == 110 then
    return "Message Type: Non Displayed Trade Message (110)"
  end
  if value == 223 then
    return "Message Type: Stock Summary Message (223)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_nyseequities_integratedfeed_xdp_v2_1_g.mpv = {}

-- Size: Mpv
nyse_nyseequities_integratedfeed_xdp_v2_1_g.mpv.size = 2

-- Display: Mpv
nyse_nyseequities_integratedfeed_xdp_v2_1_g.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_nyseequities_integratedfeed_xdp_v2_1_g.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_nyseequities_integratedfeed_xdp_v2_1_g.nanoseconds = {}

-- Size: Nanoseconds
nyse_nyseequities_integratedfeed_xdp_v2_1_g.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_nyseequities_integratedfeed_xdp_v2_1_g.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_nyseequities_integratedfeed_xdp_v2_1_g.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- New Order Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_order_id = {}

-- Size: New Order Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_order_id.size = 8

-- Display: New Order Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_order_id.display = function(value)
  return "New Order Id: "..value
end

-- Dissect: New Order Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.new_order_id, range, value, display)

  return offset + length, value
end

-- New Price Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_price_parity_splits = {}

-- Size: New Price Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_price_parity_splits.size = 1

-- Display: New Price Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_price_parity_splits.display = function(value)
  return "New Price Parity Splits: "..value
end

-- Dissect: New Price Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_price_parity_splits.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_price_parity_splits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_price_parity_splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.new_price_parity_splits, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Num Extensions
nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_extensions = {}

-- Size: Num Extensions
nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_extensions.size = 1

-- Display: Num Extensions
nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_extensions.display = function(value)
  return "Num Extensions: "..value
end

-- Dissect: Num Extensions
nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_extensions.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_extensions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.num_extensions, range, value, display)

  return offset + length, value
end

-- Num Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits = {}

-- Size: Num Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.size = 1

-- Display: Num Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.display = function(value)
  return "Num Parity Splits: "..value
end

-- Dissect: Num Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.num_parity_splits, range, value, display)

  return offset + length, value
end

-- Open
nyse_nyseequities_integratedfeed_xdp_v2_1_g.open = {}

-- Size: Open
nyse_nyseequities_integratedfeed_xdp_v2_1_g.open.size = 4

-- Display: Open
nyse_nyseequities_integratedfeed_xdp_v2_1_g.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_nyseequities_integratedfeed_xdp_v2_1_g.open.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.open.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.open, range, value, display)

  return offset + length, value
end

-- Order Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id = {}

-- Size: Order Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.size = 8

-- Display: Order Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.order_id, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_size = {}

-- Size: Packet Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_size.size = 2

-- Display: Packet Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Paired Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.paired_qty = {}

-- Size: Paired Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.paired_qty.size = 4

-- Display: Paired Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Position Change
nyse_nyseequities_integratedfeed_xdp_v2_1_g.position_change = {}

-- Size: Position Change
nyse_nyseequities_integratedfeed_xdp_v2_1_g.position_change.size = 1

-- Display: Position Change
nyse_nyseequities_integratedfeed_xdp_v2_1_g.position_change.display = function(value)
  if value == 0 then
    return "Position Change: Kept (0)"
  end
  if value == 1 then
    return "Position Change: Lost (1)"
  end

  return "Position Change: Unknown("..value..")"
end

-- Dissect: Position Change
nyse_nyseequities_integratedfeed_xdp_v2_1_g.position_change.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.position_change.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.position_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.position_change, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_price = {}

-- Size: Prev Close Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Prev Price Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_price_parity_splits = {}

-- Size: Prev Price Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_price_parity_splits.size = 1

-- Display: Prev Price Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_price_parity_splits.display = function(value)
  return "Prev Price Parity Splits: "..value
end

-- Dissect: Prev Price Parity Splits
nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_price_parity_splits.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_price_parity_splits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_price_parity_splits.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.prev_price_parity_splits, range, value, display)

  return offset + length, value
end

-- Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price = {}

-- Size: Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.size = 4

-- Display: Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_1 = {}

-- Size: Price 1
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_1.size = 4

-- Display: Price 1
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_2 = {}

-- Size: Price 2
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_2.size = 4

-- Display: Price 2
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_resolution = {}

-- Size: Price Resolution
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_resolution.size = 1

-- Display: Price Resolution
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_resolution.display = function(value)
  if value == 0 then
    return "Price Resolution: All Penny (0)"
  end
  if value == 1 then
    return "Price Resolution: Penny Nickel (1)"
  end
  if value == 5 then
    return "Price Resolution: Nickel Dime (5)"
  end

  return "Price Resolution: Unknown("..value..")"
end

-- Dissect: Price Resolution
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_scale_code = {}

-- Size: Price Scale Code
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Printable Flag
nyse_nyseequities_integratedfeed_xdp_v2_1_g.printable_flag = {}

-- Size: Printable Flag
nyse_nyseequities_integratedfeed_xdp_v2_1_g.printable_flag.size = 1

-- Display: Printable Flag
nyse_nyseequities_integratedfeed_xdp_v2_1_g.printable_flag.display = function(value)
  if value == 0 then
    return "Printable Flag: Not Printed (0)"
  end
  if value == 1 then
    return "Printable Flag: Printed (1)"
  end

  return "Printable Flag: Unknown("..value..")"
end

-- Dissect: Printable Flag
nyse_nyseequities_integratedfeed_xdp_v2_1_g.printable_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.printable_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.printable_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.printable_flag, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id = {}

-- Size: Product Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.size = 1

-- Display: Product Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.product_id, range, value, display)

  return offset + length, value
end

-- Reference Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reference_price = {}

-- Size: Reference Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reference_price.size = 4

-- Display: Reference Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reference_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_seq_num = {}

-- Size: Request Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_1 = {}

-- Size: Reserved 1
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_1.size = 1

-- Display: Reserved 1
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_2 = {}

-- Size: Reserved 2
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_2.size = 2

-- Display: Reserved 2
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_4 = {}

-- Size: Reserved 4
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_4.size = 4

-- Display: Reserved 4
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Retransmit Method
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmit_method = {}

-- Size: Retransmit Method
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmit_method.display = function(value)
  if value == 0 then
    return "Retransmit Method: Udp (0)"
  end

  return "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_nyseequities_integratedfeed_xdp_v2_1_g.round_lot = {}

-- Size: Round Lot
nyse_nyseequities_integratedfeed_xdp_v2_1_g.round_lot.size = 1

-- Display: Round Lot
nyse_nyseequities_integratedfeed_xdp_v2_1_g.round_lot.display = function(value)
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
nyse_nyseequities_integratedfeed_xdp_v2_1_g.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.round_lot.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Rpi Indicator
nyse_nyseequities_integratedfeed_xdp_v2_1_g.rpi_indicator = {}

-- Size: Rpi Indicator
nyse_nyseequities_integratedfeed_xdp_v2_1_g.rpi_indicator.size = 1

-- Display: Rpi Indicator
nyse_nyseequities_integratedfeed_xdp_v2_1_g.rpi_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Rpi Indicator: No Value"
  end

  if value == " " then
    return "Rpi Indicator: No Retail Interest (<whitespace>)"
  end
  if value == "A" then
    return "Rpi Indicator: Interest On Bid (A)"
  end
  if value == "B" then
    return "Rpi Indicator: Interest On Offer (B)"
  end
  if value == "C" then
    return "Rpi Indicator: Interest On Bid And Offer (C)"
  end

  return "Rpi Indicator: Unknown("..value..")"
end

-- Dissect: Rpi Indicator
nyse_nyseequities_integratedfeed_xdp_v2_1_g.rpi_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.rpi_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.rpi_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.rpi_indicator, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_nyseequities_integratedfeed_xdp_v2_1_g.seconds = {}

-- Size: Seconds
nyse_nyseequities_integratedfeed_xdp_v2_1_g.seconds.size = 4

-- Display: Seconds
nyse_nyseequities_integratedfeed_xdp_v2_1_g.seconds.display = function(value)
  -- Parse unix seconds timestamp
  return "Seconds: "..os.date("%Y-%m-%d %H:%M:%S", value)
end

-- Dissect: Seconds
nyse_nyseequities_integratedfeed_xdp_v2_1_g.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status = {}

-- Size: Security Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status.size = 1

-- Display: Security Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Status: No Value"
  end

  if value == "3" then
    return "Security Status: Opening Delay (3)"
  end
  if value == "4" then
    return "Security Status: Trading Halt (4)"
  end
  if value == "5" then
    return "Security Status: Resume (5)"
  end
  if value == "6" then
    return "Security Status: No Openno Resume (6)"
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
  if value == "E" then
    return "Security Status: Early Session (E)"
  end
  if value == "O" then
    return "Security Status: Core Session (O)"
  end
  if value == "L" then
    return "Security Status: Late Session Non Nyse Only (L)"
  end
  if value == "X" then
    return "Security Status: Closed (X)"
  end
  if value == "T" then
    return "Security Status: Time (T)"
  end
  if value == "I" then
    return "Security Status: Price Indication (I)"
  end
  if value == "G" then
    return "Security Status: Pre Opening Price Indication (G)"
  end
  if value == "R" then
    return "Security Status: Rule 15 Indication (R)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_type = {}

-- Size: Security Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_type.size = 1

-- Display: Security Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Type: No Value"
  end

  if value == "A" then
    return "Security Type: Common Stock (A)"
  end
  if value == "B" then
    return "Security Type: Preferred Stock (B)"
  end
  if value == "C" then
    return "Security Type: Warrant (C)"
  end
  if value == "D" then
    return "Security Type: Right (D)"
  end
  if value == "E" then
    return "Security Type: Corporate Bond (E)"
  end
  if value == "F" then
    return "Security Type: Treasury Bond (F)"
  end
  if value == "G" then
    return "Security Type: Structured Product (G)"
  end
  if value == "H" then
    return "Security Type: Adr Common (H)"
  end
  if value == "I" then
    return "Security Type: Adr Preferred (I)"
  end
  if value == "J" then
    return "Security Type: Adr Warrants (J)"
  end
  if value == "K" then
    return "Security Type: Adr Rights (K)"
  end
  if value == "L" then
    return "Security Type: Adr Corporate Bond (L)"
  end
  if value == "M" then
    return "Security Type: Ny Registered Share (M)"
  end
  if value == "N" then
    return "Security Type: Global Registered Share (N)"
  end
  if value == "O" then
    return "Security Type: Index (O)"
  end
  if value == "P" then
    return "Security Type: Fund (P)"
  end
  if value == "Q" then
    return "Security Type: Basket (Q)"
  end
  if value == "R" then
    return "Security Type: Unit (R)"
  end
  if value == "S" then
    return "Security Type: Liquidating Trust (S)"
  end
  if value == "U" then
    return "Security Type: Unknown (U)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number = {}

-- Size: Sequence Number
nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number.size = 4

-- Display: Sequence Number
nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session State
nyse_nyseequities_integratedfeed_xdp_v2_1_g.session_state = {}

-- Size: Session State
nyse_nyseequities_integratedfeed_xdp_v2_1_g.session_state.size = 1

-- Display: Session State
nyse_nyseequities_integratedfeed_xdp_v2_1_g.session_state.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Session State: No Value"
  end

  return "Session State: "..value
end

-- Dissect: Session State
nyse_nyseequities_integratedfeed_xdp_v2_1_g.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.session_state.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.session_state, range, value, display)

  return offset + length, value
end

-- Side
nyse_nyseequities_integratedfeed_xdp_v2_1_g.side = {}

-- Size: Side
nyse_nyseequities_integratedfeed_xdp_v2_1_g.side.size = 1

-- Display: Side
nyse_nyseequities_integratedfeed_xdp_v2_1_g.side.display = function(value)
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
nyse_nyseequities_integratedfeed_xdp_v2_1_g.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.side, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id = {}

-- Size: Source Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.size = 10

-- Display: Source Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.size
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

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time = {}

-- Size: Source Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.size = 4

-- Display: Source Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns = {}

-- Size: Source Time Ns
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr Filing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_filing_price = {}

-- Size: Ssr Filing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_filing_price.size = 4

-- Display: Ssr Filing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_filing_price.display = function(value)
  return "Ssr Filing Price: "..value
end

-- Dissect: Ssr Filing Price
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_filing_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_filing_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_filing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.ssr_filing_price, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_state = {}

-- Size: Ssr State
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_state.size = 1

-- Display: Ssr State
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_state.display = function(value)
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
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_state.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_exchange_id.display = function(value)
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
    return "Ssr Triggering Exchange Id: Edgx (K)"
  end
  if value == "M" then
    return "Ssr Triggering Exchange Id: Chx (M)"
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
    return "Ssr Triggering Exchange Id: Bats Y (Y)"
  end
  if value == "Z" then
    return "Ssr Triggering Exchange Id: Bats (Z)"
  end
  if value == " " then
    return "Ssr Triggering Exchange Id: No Value (<whitespace>)"
  end

  return "Ssr Triggering Exchange Id: Unknown("..value..")"
end

-- Dissect: Ssr Triggering Exchange Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.status = {}

-- Size: Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.status.size = 1

-- Display: Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Status: No Value"
  end

  if value == "0" then
    return "Status: Message Was Accepted (0)"
  end
  if value == "1" then
    return "Status: Rejected Due To An Invalid Source Id (1)"
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
    return "Status: Invalid Msg Type Or Msg Size Mismatch (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_nyseequities_integratedfeed_xdp_v2_1_g.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol = {}

-- Size: Symbol
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol.size = 11

-- Display: Symbol
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol.size
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

  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index = {}

-- Size: Symbol Index
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size = 4

-- Display: Symbol Index
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.system_id = {}

-- Size: System Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.system_id.size = 1

-- Display: System Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.time = {}

-- Size: Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.time.size = 4

-- Display: Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.time.display = function(value)
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
nyse_nyseequities_integratedfeed_xdp_v2_1_g.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.time, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Total Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_volume = {}

-- Size: Total Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_volume.size = 4

-- Display: Total Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id = {}

-- Size: Trade Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id.size = 4

-- Display: Trade Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_nyseequities_integratedfeed_xdp_v2_1_g.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_nyseequities_integratedfeed_xdp_v2_1_g.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_nyseequities_integratedfeed_xdp_v2_1_g.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_nyseequities_integratedfeed_xdp_v2_1_g.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Upper Collar
nyse_nyseequities_integratedfeed_xdp_v2_1_g.upper_collar = {}

-- Size: Upper Collar
nyse_nyseequities_integratedfeed_xdp_v2_1_g.upper_collar.size = 4

-- Display: Upper Collar
nyse_nyseequities_integratedfeed_xdp_v2_1_g.upper_collar.display = function(value)
  return "Upper Collar: "..value
end

-- Dissect: Upper Collar
nyse_nyseequities_integratedfeed_xdp_v2_1_g.upper_collar.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.upper_collar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.upper_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume = {}

-- Size: Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.size = 4

-- Display: Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse NyseEquities IntegratedFeed Xdp 2.1.g
-----------------------------------------------------------------------

-- Stock Summary Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.stock_summary_message = {}

-- Size: Stock Summary Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.stock_summary_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.high_price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.low_price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.open.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.close.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_volume.size

-- Display: Stock Summary Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.stock_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Summary Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.stock_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- High Price: Binary
  index, high_price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Binary
  index, low_price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.low_price.dissect(buffer, index, packet, parent)

  -- Open: Binary
  index, open = nyse_nyseequities_integratedfeed_xdp_v2_1_g.open.dissect(buffer, index, packet, parent)

  -- Close: Binary
  index, close = nyse_nyseequities_integratedfeed_xdp_v2_1_g.close.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Summary Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.stock_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.stock_summary_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.stock_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.stock_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.stock_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Non Displayed Trade Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.non_displayed_trade_message = {}

-- Size: Non Displayed Trade Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.non_displayed_trade_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.printable_flag.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.db_exec_id.size

-- Display: Non Displayed Trade Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.non_displayed_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Non Displayed Trade Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.non_displayed_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.dissect(buffer, index, packet, parent)

  -- Printable Flag: Binary
  index, printable_flag = nyse_nyseequities_integratedfeed_xdp_v2_1_g.printable_flag.dissect(buffer, index, packet, parent)

  -- Db Exec Id: Binary
  index, db_exec_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.db_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Non Displayed Trade Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.non_displayed_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.non_displayed_trade_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.non_displayed_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.non_displayed_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.non_displayed_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_execution_message = {}

-- Size: Order Execution Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_execution_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.printable_flag.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.db_exec_id.size

-- Display: Order Execution Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.dissect(buffer, index, packet, parent)

  -- Printable Flag: Binary
  index, printable_flag = nyse_nyseequities_integratedfeed_xdp_v2_1_g.printable_flag.dissect(buffer, index, packet, parent)

  -- Num Parity Splits: Binary
  index, num_parity_splits = nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.dissect(buffer, index, packet, parent)

  -- Db Exec Id: Binary
  index, db_exec_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.db_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.order_execution_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_message = {}

-- Size: Imbalance Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.reference_price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.paired_qty.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_imbalance_qty.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_imbalance_qty.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_time.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_type.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_side.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.continuous_book_clearing_price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.closing_only_clearing_price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_filing_price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.indicative_match_price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.upper_collar.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.lower_collar.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_status.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.freeze_status.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_extensions.size

-- Display: Imbalance Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary
  index, reference_price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reference_price.dissect(buffer, index, packet, parent)

  -- Paired Qty: Binary
  index, paired_qty = nyse_nyseequities_integratedfeed_xdp_v2_1_g.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: Binary
  index, total_imbalance_qty = nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: Binary
  index, market_imbalance_qty = nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Auction Time: Binary
  index, auction_time = nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_time.dissect(buffer, index, packet, parent)

  -- Auction Type: ASCII
  index, auction_type = nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_type.dissect(buffer, index, packet, parent)

  -- Imbalance Side: ASCII
  index, imbalance_side = nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_side.dissect(buffer, index, packet, parent)

  -- Continuous Book Clearing Price: Binary
  index, continuous_book_clearing_price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.continuous_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Closing Only Clearing Price: Binary
  index, closing_only_clearing_price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.closing_only_clearing_price.dissect(buffer, index, packet, parent)

  -- Ssr Filing Price: Binary
  index, ssr_filing_price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_filing_price.dissect(buffer, index, packet, parent)

  -- Indicative Match Price: Binary
  index, indicative_match_price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.indicative_match_price.dissect(buffer, index, packet, parent)

  -- Upper Collar: Binary
  index, upper_collar = nyse_nyseequities_integratedfeed_xdp_v2_1_g.upper_collar.dissect(buffer, index, packet, parent)

  -- Lower Collar: Binary
  index, lower_collar = nyse_nyseequities_integratedfeed_xdp_v2_1_g.lower_collar.dissect(buffer, index, packet, parent)

  -- Auction Status: Binary
  index, auction_status = nyse_nyseequities_integratedfeed_xdp_v2_1_g.auction_status.dissect(buffer, index, packet, parent)

  -- Freeze Status: Binary
  index, freeze_status = nyse_nyseequities_integratedfeed_xdp_v2_1_g.freeze_status.dissect(buffer, index, packet, parent)

  -- Num Extensions: Binary
  index, num_extensions = nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_extensions.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.imbalance_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Refresh Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_refresh_message = {}

-- Size: Add Order Refresh Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_refresh_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.side.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.firm_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.size

-- Display: Add Order Refresh Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_refresh_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Refresh Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_refresh_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_nyseequities_integratedfeed_xdp_v2_1_g.side.dissect(buffer, index, packet, parent)

  -- Firm Id: ASCII
  index, firm_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.firm_id.dissect(buffer, index, packet, parent)

  -- Num Parity Splits: Binary
  index, num_parity_splits = nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Refresh Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_refresh_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.add_order_refresh_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_refresh_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_refresh_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_refresh_message.fields(buffer, offset, packet, parent)
  end
end

-- Retail Price Improvement Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retail_price_improvement_message = {}

-- Size: Retail Price Improvement Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retail_price_improvement_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.rpi_indicator.size

-- Display: Retail Price Improvement Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Rpi Indicator: ASCII
  index, rpi_indicator = nyse_nyseequities_integratedfeed_xdp_v2_1_g.rpi_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Correction Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_correction_message = {}

-- Size: Cross Correction Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_correction_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.size

-- Display: Cross Correction Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Correction Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Cross Id: Binary
  index, cross_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_id.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Correction Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.cross_correction_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Trade Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_trade_message = {}

-- Size: Cross Trade Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_trade_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_type.size

-- Display: Cross Trade Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Trade Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Cross Id: Binary
  index, cross_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.dissect(buffer, index, packet, parent)

  -- Cross Type: ASCII
  index, cross_type = nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.cross_trade_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_cancel_message = {}

-- Size: Trade Cancel Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_cancel_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id.size

-- Display: Trade Cancel Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.trade_cancel_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.delete_order_message = {}

-- Size: Delete Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.delete_order_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.size

-- Display: Delete Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.dissect(buffer, index, packet, parent)

  -- Num Parity Splits: Binary
  index, num_parity_splits = nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.delete_order_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.replace_order_message = {}

-- Size: Replace Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.replace_order_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_order_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_price_parity_splits.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_price_parity_splits.size

-- Display: Replace Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.dissect(buffer, index, packet, parent)

  -- New Order Id: Binary
  index, new_order_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_order_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.dissect(buffer, index, packet, parent)

  -- Prev Price Parity Splits: Binary
  index, prev_price_parity_splits = nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_price_parity_splits.dissect(buffer, index, packet, parent)

  -- New Price Parity Splits: Binary
  index, new_price_parity_splits = nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_price_parity_splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.replace_order_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.modify_order_message = {}

-- Size: Modify Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.modify_order_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.position_change.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_price_parity_splits.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_price_parity_splits.size

-- Display: Modify Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.dissect(buffer, index, packet, parent)

  -- Position Change: Binary
  index, position_change = nyse_nyseequities_integratedfeed_xdp_v2_1_g.position_change.dissect(buffer, index, packet, parent)

  -- Prev Price Parity Splits: Binary
  index, prev_price_parity_splits = nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_price_parity_splits.dissect(buffer, index, packet, parent)

  -- New Price Parity Splits: Binary
  index, new_price_parity_splits = nyse_nyseequities_integratedfeed_xdp_v2_1_g.new_price_parity_splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.modify_order_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_message = {}

-- Size: Add Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.side.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.firm_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.size

-- Display: Add Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nyseequities_integratedfeed_xdp_v2_1_g.volume.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_nyseequities_integratedfeed_xdp_v2_1_g.side.dissect(buffer, index, packet, parent)

  -- Firm Id: ASCII
  index, firm_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.firm_id.dissect(buffer, index, packet, parent)

  -- Num Parity Splits: Binary
  index, num_parity_splits = nyse_nyseequities_integratedfeed_xdp_v2_1_g.num_parity_splits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.add_order_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Full Refresh Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.full_refresh_header = {}

-- Size: Full Refresh Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.full_refresh_header.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_symbol_seq_num.size

-- Display: Full Refresh Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.full_refresh_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Refresh Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.full_refresh_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Binary
  index, last_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: Binary
  index, last_symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Refresh Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.full_refresh_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.full_refresh_header, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.full_refresh_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.full_refresh_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.full_refresh_header.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_header_message = {}

-- Calculate size of: Refresh Header Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_header_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_nyseequities_integratedfeed_xdp_v2_1_g.current_refresh_pkt.size

  index = index + nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_refresh_pkts.size

  local current_refresh_pkt = buffer(offset + 0, 2):le_uint()

  if current_refresh_pkt == 1 then
    index = index + nyse_nyseequities_integratedfeed_xdp_v2_1_g.full_refresh_header.size

  end

  return index
end

-- Display: Refresh Header Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: Binary
  index, current_refresh_pkt = nyse_nyseequities_integratedfeed_xdp_v2_1_g.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: Binary
  index, total_refresh_pkts = nyse_nyseequities_integratedfeed_xdp_v2_1_g.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Full Refresh Header
  local full_refresh_header = nil

  local full_refresh_header_exists = current_refresh_pkt == 1

  if full_refresh_header_exists then
    index, full_refresh_header = nyse_nyseequities_integratedfeed_xdp_v2_1_g.full_refresh_header.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Refresh Header Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status_message = {}

-- Size: Security Status Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.halt_condition.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_4.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_1.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_2.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_exchange_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_volume.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.time.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_state.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_state.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.session_state.size

-- Display: Security Status Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_nyseequities_integratedfeed_xdp_v2_1_g.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: reserved
  index, reserved_4 = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: Binary
  index, price_1 = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_nyseequities_integratedfeed_xdp_v2_1_g.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_nyseequities_integratedfeed_xdp_v2_1_g.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_state.dissect(buffer, index, packet, parent)

  -- Session State: ASCII
  index, session_state = nyse_nyseequities_integratedfeed_xdp_v2_1_g.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.security_status_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_clear_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: Binary
  index, next_source_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_unavailable_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.size

-- Display: Message Unavailable Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_request_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.size

-- Display: Refresh Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_request_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: Binary
  index, retransmit_method = nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.heartbeat_response_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.size

-- Display: Heartbeat Response Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_response_message = {}

-- Size: Request Response Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_response_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.status.size

-- Display: Request Response Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: Binary
  index, request_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.dissect(buffer, index, packet, parent)

  -- Status: ASCII
  index, status = nyse_nyseequities_integratedfeed_xdp_v2_1_g.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.request_response_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmission_request_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.size

-- Display: Retransmission Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_1.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.system_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.exchange_code.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_scale_code.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_type.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.lot_size.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_price.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_volume.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_resolution.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.round_lot.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.mpv.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.unit_of_trade.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: reserved
  index, reserved_1 = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_nyseequities_integratedfeed_xdp_v2_1_g.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_nyseequities_integratedfeed_xdp_v2_1_g.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_nyseequities_integratedfeed_xdp_v2_1_g.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_nyseequities_integratedfeed_xdp_v2_1_g.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_nyseequities_integratedfeed_xdp_v2_1_g.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: Binary
  index, mpv = nyse_nyseequities_integratedfeed_xdp_v2_1_g.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: Binary
  index, unit_of_trade = nyse_nyseequities_integratedfeed_xdp_v2_1_g.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: reserved
  index, reserved_2 = nyse_nyseequities_integratedfeed_xdp_v2_1_g.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_reference_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.size

-- Display: Source Time Reference Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number_reset_message.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.size

-- Display: Sequence Number Reset Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nyseequities_integratedfeed_xdp_v2_1_g.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_nyseequities_integratedfeed_xdp_v2_1_g.payload = {}

-- Dissect: Payload
nyse_nyseequities_integratedfeed_xdp_v2_1_g.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 100 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 101 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if message_type == 104 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 102 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == 112 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if message_type == 111 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Correction Message
  if message_type == 113 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.cross_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Message
  if message_type == 114 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.retail_price_improvement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Refresh Message
  if message_type == 106 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.add_order_refresh_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if message_type == 105 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.imbalance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 103 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Non Displayed Trade Message
  if message_type == 110 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.non_displayed_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Summary Message
  if message_type == 223 then
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.stock_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_header = {}

-- Size: Message Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_header.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_size.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_type.size

-- Display: Message Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_header, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message = {}

-- Display: Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_nyseequities_integratedfeed_xdp_v2_1_g.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.message, buffer(offset, 0))
    local current = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_integratedfeed_xdp_v2_1_g.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.send_time = {}

-- Size: Send Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.send_time.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.seconds.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.nanoseconds.size

-- Display: Send Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.send_time.display = function(packet, parent, value)
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
nyse_nyseequities_integratedfeed_xdp_v2_1_g.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_nyseequities_integratedfeed_xdp_v2_1_g.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_nyseequities_integratedfeed_xdp_v2_1_g.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_nyseequities_integratedfeed_xdp_v2_1_g.send_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local seconds = buffer(offset, 4):le_uint()
    local nanoseconds = buffer(offset + 4, 4):le_uint()
    local length = nyse_nyseequities_integratedfeed_xdp_v2_1_g.send_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.send_time
    if nyse_nyseequities_integratedfeed_xdp_v2_1_g.absolute_time_base == 1 then field = omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.send_time_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(seconds, nanoseconds))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.send_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_header = {}

-- Size: Packet Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_header.size =
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_size.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.delivery_flag.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_count.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number.size + 
  nyse_nyseequities_integratedfeed_xdp_v2_1_g.send_time.size

-- Display: Packet Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_nyseequities_integratedfeed_xdp_v2_1_g.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_nyseequities_integratedfeed_xdp_v2_1_g.sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_nyseequities_integratedfeed_xdp_v2_1_g.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.fields.packet_header, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet = {}

-- Verify required size of Udp packet
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_header.size
end

-- Dissect Packet
nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_nyseequities_integratedfeed_xdp_v2_1_g.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.init()
end

-- Dissector for Nyse NyseEquities IntegratedFeed Xdp 2.1.g
function omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g, buffer(), omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.description, "("..buffer:len().." Bytes)")
  return nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse NyseEquities IntegratedFeed Xdp 2.1.g (Udp)
local function omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nyseequities_integratedfeed_xdp_v2_1_g.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g
  omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse NyseEquities IntegratedFeed Xdp 2.1.g
omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g:register_heuristic("udp", omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g_udp_heuristic)

-- Register Nyse NyseEquities IntegratedFeed Xdp 2.1.g for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nyse_nyseequities_integratedfeed_xdp_v2_1_g)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.1.g
--   Since: 2.1.b
--   Date: Monday, January 29, 2018
--   Specification: XDP_Integrated_Feed_Client_Specification_v2.1g.pdf
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
