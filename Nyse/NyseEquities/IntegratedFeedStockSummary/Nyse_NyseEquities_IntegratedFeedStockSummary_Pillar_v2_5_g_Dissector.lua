-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g Protocol
local omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g = Proto("Omi.Nyse.NyseEquities.IntegratedFeedStockSummary.Pillar.v2.5.g", "Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g")

-- Protocol table
local nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g Fields
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.channel_id = ProtoField.new("Channel Id", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.channelid", ftypes.UINT8, nil, nil, nil, "The ID of the multicast channel over which the packet was sent.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.close = ProtoField.new("Close", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.close", ftypes.INT32, nil, nil, nil, "The exchange Closing price of this stock for the day. Use the Price Scale in the symbol index msg.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.deliveryflag", ftypes.UINT8, nil, nil, nil, "A flag that indicates whether this is an original, retransmitted, or ‘replayed’ message")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.exchangecode", ftypes.STRING, nil, nil, nil, "For listed equity markets, the market where this symbol is listed.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.haltcondition", ftypes.STRING, nil, nil, nil, "The halt or other condition associated with the security status change.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.high_price = ProtoField.new("High Price", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.highprice", ftypes.INT32, nil, nil, nil, "The exchange high price of this stock for the day. Use the Price Scale in the symbol index msg.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.id = ProtoField.new("Id", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.id", ftypes.UINT32, nil, nil, nil, "ID of the originating Matching Engine partition to which this message applies.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.lot_size = ProtoField.new("Lot Size", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.lotsize", ftypes.UINT16, nil, nil, nil, "Round lot size in shares.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.low_price = ProtoField.new("Low Price", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.lowprice", ftypes.INT32, nil, nil, nil, "The exchange Low price of this stock for the day. Use the Price Scale in the symbol index msg.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.market_id = ProtoField.new("Market Id", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.marketid", ftypes.UINT16, nil, nil, nil, "ID of the Originating Market.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.market_state = ProtoField.new("Market State", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.marketstate", ftypes.STRING, nil, nil, nil, "The current Market State, which this msg updates if the Security Status field contains a Market State Code.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message_size = ProtoField.new("Message Size", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.messagesize", ftypes.UINT16, nil, nil, nil, "The size of this message in bytes")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message_type = ProtoField.new("Message Type", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.mpv = ProtoField.new("Mpv", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.mpv", ftypes.UINT16, nil, nil, nil, "The minimum increment for a trade price, in 100ths of a cent. Typically 1, or $0.0001, but for some Tick Pilot stocks, can be 500, or $0.05.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.nanoseconds", ftypes.UINT32, nil, nil, nil, "The nanosecond offset from the Send Time")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.nextsourceseqnum", ftypes.UINT32, nil, nil, nil, "The sequence number in the next message for this symbol.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.numbermsgs", ftypes.UINT8, nil, nil, nil, "The number of messages in this packet")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.open = ProtoField.new("Open", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.open", ftypes.INT32, nil, nil, nil, "The exchange Opening price of this stock for the day. Use the Price Scale in the symbol index msg.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.pktsize", ftypes.UINT16, nil, nil, nil, "The size of the packet in bytes, including this 16 byte packet header")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.prevcloseprice", ftypes.UINT32, nil, nil, nil, "The previous day's closing price for this security.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.prevclosevolume", ftypes.UINT32, nil, nil, nil, "The previous day's closing volume for the security.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.price_1 = ProtoField.new("Price 1", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.price1", ftypes.UINT32, nil, nil, nil, "Default value is 0. If securityStatus = A and this security is listed on this exchange, then this field is the SSR Triggering Trade Price. If securityStatus = G or I, then this field is the Indication Low Price.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.price_2 = ProtoField.new("Price 2", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.price2", ftypes.UINT32, nil, nil, nil, "Default value is 0. If securityStatus = G or I, then this field is the Indication High Price.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.priceresolution", ftypes.UINT8, nil, nil, nil, "Minimum price increment: 0 - All Penny, 1 - Penny/Nickel, 5 - Nickel/Dime.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.pricescalecode", ftypes.UINT8, nil, nil, nil, "Specifies placement of the decimal point in price fields for this security.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.product_id = ProtoField.new("Product Id", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.productid", ftypes.UINT8, nil, nil, nil, "The unique ID for this NYSE feed listed in the feed's client specification.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.reserved1", ftypes.BYTES, nil, nil, nil, "This field is reserved for future use.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved for future use. Disregard any content.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.reserved4", ftypes.BYTES, nil, nil, nil, "Future use. Any field content should be ignored.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.round_lot = ProtoField.new("Round Lot", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.roundlot", ftypes.STRING, nil, nil, nil, "Round Lots Accepted: Y - Yes, N - No.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.seconds = ProtoField.new("Seconds", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds since Jan 1, 1970 00:00:00 UTC")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.seconds_utc = ProtoField.new("Seconds", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds since Jan 1, 1970 00:00:00 UTC")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.security_status = ProtoField.new("Security Status", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.securitystatus", ftypes.STRING, nil, nil, nil, "The new status that this security is transitioning to.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.security_type = ProtoField.new("Security Type", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.securitytype", ftypes.STRING, nil, nil, nil, "Type of Security used by Pillar-powered markets.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.send_time = ProtoField.new("Send Time", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time when this packet was published to the multicast channel")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.send_time_utc = ProtoField.new("Send Time", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time when this packet was published to the multicast channel")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.seq_num = ProtoField.new("Seq Num", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.seqnum", ftypes.UINT32, nil, nil, nil, "The message sequence number of the first message in this packet")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.session_state = ProtoField.new("Session State", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.sessionstate", ftypes.STRING, nil, nil, nil, "Unused. Defaulted to 0x00.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.source_time = ProtoField.new("Source Time", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.sourcetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time when this msg was generated in the order book, in seconds since Jan 1, 1970 00:00:00 UTC.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.source_time_utc = ProtoField.new("Source Time", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.sourcetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time when this msg was generated in the order book, in seconds since Jan 1, 1970 00:00:00 UTC.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.sourcetimens", ftypes.UINT32, nil, nil, nil, "The nanosecond offset from the SourceTime")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.ssr_state = ProtoField.new("Ssr State", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.ssrstate", ftypes.STRING, nil, nil, nil, "The current SSR state, which this msg updates if the Security Status field contains an SSR Code.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.ssrtriggeringexchangeid", ftypes.STRING, nil, nil, nil, "This field is only populated when securityStatus = A and this security is listed on this exchange. Otherwise it is defaulted to 0x20.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.ssrtriggeringvolume", ftypes.UINT32, nil, nil, nil, "Default value is 0. This field is only populated when securityStatus = A and this security is listed on this exchange.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol = ProtoField.new("Symbol", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.symbol", ftypes.STRING, nil, nil, nil, "Null-terminated ASCII symbol in NYSE Symbology.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.symbolindex", ftypes.UINT32, nil, nil, nil, "The ID of the symbol in the Symbol Index msg")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.symbolseqnum", ftypes.UINT32, nil, nil, nil, "Reserved for future use. Ignore any content.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.system_id = ProtoField.new("System Id", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.systemid", ftypes.UINT8, nil, nil, nil, "ID of the Originating matching engine server.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.time = ProtoField.new("Time", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.time", ftypes.UINT32, nil, nil, nil, "Default value is 0. Format: HHMMSSmmm (mmm = milliseconds). If securityStatus = A and this security is listed on this exchange, then this field is the SSR Trigger Time.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.total_volume = ProtoField.new("Total Volume", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.totalvolume", ftypes.UINT32, nil, nil, nil, "The exchange cumulative volume for the stock throughout the day.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.unitoftrade", ftypes.UINT16, nil, nil, nil, "This field specifies the security Unit of Trade in shares. Valid values are 1, 10, 50 and 100.")

-- Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g Framing
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message = ProtoField.new("Message", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.message", ftypes.STRING, nil, nil, nil, "Pillar message")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message_header = ProtoField.new("Message Header", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.messageheader", ftypes.STRING, nil, nil, nil, "Pillar message header")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.packet = ProtoField.new("Packet", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.packet", ftypes.STRING, nil, nil, nil, "Pillar common client udp packet")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.packet_header = ProtoField.new("Packet Header", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.packetheader", ftypes.STRING, nil, nil, nil, "Pillar common client udp packet header")

-- Nyse NyseEquities IntegratedFeedStockSummary 2.5.g Session Messages
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.heartbeat = ProtoField.new("Heartbeat", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.heartbeat", ftypes.BYTES, nil, nil, nil, "Pillar heartbeat, a packet header with no messages behind it")

-- Nyse NyseEquities IntegratedFeedStockSummary 2.5.g Application Messages
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.securitystatusmessage", ftypes.STRING, nil, nil, nil, "This message informs clients of changes in the status of a specific security, such as Trading Halts, Short Sale Restriction state changes, etc.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.sequencenumberresetmessage", ftypes.STRING, nil, nil, nil, "This message is sent to reset the Message Sequence Number at start of day, or in response to failures.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.sourcetimereferencemessage", ftypes.STRING, nil, nil, nil, "For high-volume feeds, this message is sent at the start of every second during periods of active data publication. The client can concatenate the SourceTime field with the SourceTimeNS field in subsequent market data messages to get full 8-byte Matching Engine event timestamps.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.stock_summary_message = ProtoField.new("Stock Summary Message", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.stocksummarymessage", ftypes.STRING, nil, nil, nil, "A Stock Summary message per symbol is sent every 60 seconds, on a separate Stock Summary channel from the main feed.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.symbolclearmessage", ftypes.STRING, nil, nil, nil, "In case of a failure and recovery of a Matching Engine or an Pillar Publisher, the publisher may send a full state refresh for every symbol affected. This unrequested refresh is preceded by a Symbol Clear message. The client should react to receipt of a Symbol Clear message by clearing all state information for the specified symbol in anticipation of receiving a full state refresh.")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.symbolindexmappingmessage", ftypes.STRING, nil, nil, nil, "This message is published over the real-time data channels at system startup or in the context of a refresh sequence after a Matching Engine or Pillar Publisher failover. It provides referential data for a single specified symbol.")

-- Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g Generated Fields
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message_index = ProtoField.new("Message Index", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.messageindex", ftypes.UINT16)
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.messagesequencenumber", ftypes.UINT64)
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.close_calculate = ProtoField.new("Close Calculate", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.closecalculate", ftypes.DOUBLE)
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.high_price_calculate = ProtoField.new("High Price Calculate", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.highpricecalculate", ftypes.DOUBLE)
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.low_price_calculate = ProtoField.new("Low Price Calculate", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.lowpricecalculate", ftypes.DOUBLE)
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.open_calculate = ProtoField.new("Open Calculate", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.opencalculate", ftypes.DOUBLE)
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.timestamp = ProtoField.new("Timestamp", "nyse.nyseequities.integratedfeedstocksummary.pillar.v2.5.g.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.absolute_time_base = 0

-- Timestamp format (true = decimal-scaled, false = raw mantissa)
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.format_timestamp = true

-- High Price Calculate format (true = decimal-scaled, false = raw mantissa)
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.format_decimals = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g Element Dissection Options
show.records = true
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true
show.sequences = true

-- Register Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g Show Options
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.resolve_records = Pref.bool("Symbol Index Mapping Message", show.records, "Cache records and resolve cross-packet lookups")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.format_timestamp = Pref.bool("Format Timestamp", true, "Compose Timestamp with the stored seconds anchor (off = raw nanoseconds)")
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.format_decimals = Pref.bool("Format Decimals", true, "Format decimal-scaled fields as scaled values (off = raw mantissa)")

omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs_changed()

  -- Check if preferences have changed
  if show.records ~= omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.resolve_records then
    show.records = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.resolve_records
  end
  if show.application_messages ~= omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_application_messages then
    show.application_messages = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_application_messages
  end
  if show.headers ~= omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_headers then
    show.headers = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_headers
  end
  if show.structs ~= omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_structs then
    show.structs = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_structs
  end
  if show.indexes ~= omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_indexes then
    show.indexes = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_indexes
  end
  if show.sequences ~= omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_sequences then
    show.sequences = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.show_sequences
  end
  if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.format_timestamp ~= omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.format_timestamp then
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.format_timestamp = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.format_timestamp
  end
  if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.format_decimals ~= omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.format_decimals then
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.format_decimals = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.format_decimals
  end
  if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.absolute_time_base ~= omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.absolute_time_base then
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.absolute_time_base = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation = {}
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.data = function(packet)
  local key = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.key(packet)
  local data = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.flows[key]
  if data == nil then
    data = { source_time = { last = nil, frames = {} }, symbol_index_mapping_message = {} }
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.current = nil


-----------------------------------------------------------------------
-- Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g Fields
-----------------------------------------------------------------------

-- Channel Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.channel_id = {}

-- Size: Channel Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.channel_id.size = 1

-- Display: Channel Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Close
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close = {}

-- Size: Close
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close.size = 4

-- Display: Close
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close.display = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.close, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.delivery_flag = {}

-- Size: Delivery Flag
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.delivery_flag.display = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: Pillar Failover (10)"
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
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.exchange_code = {}

-- Size: Exchange Code
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.exchange_code.size = 1

-- Display: Exchange Code
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.exchange_code.display = function(value)
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
  if value == "M" then
    return "Exchange Code: Nyse Texas (M)"
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

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.exchange_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.halt_condition = {}

-- Size: Halt Condition
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.halt_condition.size = 1

-- Display: Halt Condition
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.halt_condition.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Halt Condition: No Value"
  end

  if value == "~" then
    return "Halt Condition: Security Not Delayedhalted (~)"
  end
  if value == "D" then
    return "Halt Condition: News Released News Dissemination (D)"
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
  if value == "6" then
    return "Halt Condition: Suspend (6)"
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
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.halt_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- High Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price = {}

-- Size: High Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price.size = 4

-- Display: High Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.high_price, range, value, display)

  return offset + length, value
end

-- Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.id = {}

-- Size: Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.id.size = 4

-- Display: Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.id, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.lot_size = {}

-- Size: Lot Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.lot_size.size = 2

-- Display: Lot Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Low Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price = {}

-- Size: Low Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price.size = 4

-- Display: Low Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.low_price, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_id = {}

-- Size: Market Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_id.size = 2

-- Display: Market Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_id.display = function(value)
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
  if value == 8 then
    return "Market Id: Nyse American Options (8)"
  end
  if value == 9 then
    return "Market Id: Nyse American Equities (9)"
  end
  if value == 10 then
    return "Market Id: Nyse National Equities (10)"
  end
  if value == 11 then
    return "Market Id: Nyse Texas Equities (11)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market State
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_state = {}

-- Size: Market State
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_state.size = 1

-- Display: Market State
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_state.display = function(value)
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
    return "Market State: Late Session Non Nyse Only (L)"
  end
  if value == "X" then
    return "Market State: Closed (X)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_state.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_size = {}

-- Size: Message Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_size.size = 2

-- Display: Message Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_type = {}

-- Size: Message Type
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_type.size = 2

-- Display: Message Type
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Message Type: Source Time Reference Message (2)"
  end
  if value == 3 then
    return "Message Type: Symbol Index Mapping Message (3)"
  end
  if value == 32 then
    return "Message Type: Symbol Clear Message (32)"
  end
  if value == 34 then
    return "Message Type: Security Status Message (34)"
  end
  if value == 223 then
    return "Message Type: Stock Summary Message (223)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.mpv = {}

-- Size: Mpv
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.mpv.size = 2

-- Display: Mpv
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.nanoseconds = {}

-- Size: Nanoseconds
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.number_msgs = {}

-- Size: Number Msgs
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.number_msgs.size = 1

-- Display: Number Msgs
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Open
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open = {}

-- Size: Open
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open.size = 4

-- Display: Open
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.open, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.pkt_size = {}

-- Size: Pkt Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.pkt_size.size = 2

-- Display: Pkt Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_price = {}

-- Size: Prev Close Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_1 = {}

-- Size: Price 1
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_1.size = 4

-- Display: Price 1
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_2 = {}

-- Size: Price 2
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_2.size = 4

-- Display: Price 2
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_resolution = {}

-- Size: Price Resolution
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_resolution.size = 1

-- Display: Price Resolution
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_resolution.display = function(value)
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
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_scale_code = {}

-- Size: Price Scale Code
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.product_id = {}

-- Size: Product Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.product_id.size = 1

-- Display: Product Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.product_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_1 = {}

-- Size: Reserved 1
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_1.size = 1

-- Display: Reserved 1
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_2 = {}

-- Size: Reserved 2
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_2.size = 2

-- Display: Reserved 2
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_4 = {}

-- Size: Reserved 4
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_4.size = 4

-- Display: Reserved 4
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.round_lot = {}

-- Size: Round Lot
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.round_lot.size = 1

-- Display: Round Lot
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.round_lot.display = function(value)
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
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.round_lot.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seconds = {}

-- Size: Seconds
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seconds.size = 4

-- Dissect: Seconds
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.seconds
  if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.absolute_time_base == 1 then field = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Security Status
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status = {}

-- Size: Security Status
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status.size = 1

-- Display: Security Status
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status.display = function(value)
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
    return "Security Status: Late Session Non Nyse Only (L)"
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
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_type = {}

-- Size: Security Type
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_type.size = 1

-- Display: Security Type
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_type.display = function(value)
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
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.security_type, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seq_num = {}

-- Size: Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seq_num.size = 4

-- Display: Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session State
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.session_state = {}

-- Size: Session State
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.session_state.size = 1

-- Display: Session State
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.session_state.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Session State: No Value"
  end

  return "Session State: "..value
end

-- Dissect: Session State
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.session_state.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.session_state, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time = {}

-- Size: Source Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.size = 4

-- Store: Source Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = nil

-- Generated: Source Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.source_time
  if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.absolute_time_base == 1 then field = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.source_time_utc end
  local source_time = parent:add(field, range, NSTime.new(value, 0))
  source_time:set_generated()
end

-- Dissect: Source Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.source_time
  if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.absolute_time_base == 1 then field = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.source_time_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Source Time Ns
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns = {}

-- Size: Source Time Ns
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_state = {}

-- Size: Ssr State
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_state.size = 1

-- Display: Ssr State
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_state.display = function(value)
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
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_state.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_exchange_id.display = function(value)
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
  if value == "G" then
    return "Ssr Triggering Exchange Id: 24X (G)"
  end
  if value == "H" then
    return "Ssr Triggering Exchange Id: Miami Peral (H)"
  end
  if value == "I" then
    return "Ssr Triggering Exchange Id: Nasdaq Ise (I)"
  end
  if value == "J" then
    return "Ssr Triggering Exchange Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Ssr Triggering Exchange Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Ssr Triggering Exchange Id: Ltse (L)"
  end
  if value == "M" then
    return "Ssr Triggering Exchange Id: Nyse Texas (M)"
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
  if value == "T" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx (T)"
  end
  if value == "U" then
    return "Ssr Triggering Exchange Id: Memx (U)"
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
  if value == " " then
    return "Ssr Triggering Exchange Id: No Value (<whitespace>)"
  end

  return "Ssr Triggering Exchange Id: Unknown("..value..")"
end

-- Dissect: Ssr Triggering Exchange Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol = {}

-- Size: Symbol
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol.size = 11

-- Display: Symbol
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol.size
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

  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index = {}

-- Size: Symbol Index
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.size = 4

-- Display: Symbol Index
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol_index, range, value, display)

  return offset + length, value
end


-- Lookup: Symbol Index
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.lookup = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.display(value, buffer, offset, packet, parent)

  if not show.records then
    parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol_index, range, value, display)

    return offset + length, value
  end

  -- Lookup Symbol Index Mapping Message record
  local record = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.current.symbol_index_mapping_message[value]

  local field_tree = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol_index, range, value, display)

  if record ~= nil then
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.current = record
    if record.symbol ~= nil then
      local entry_symbol = field_tree:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol, record.symbol)
      entry_symbol:set_generated()
    end
    if record.price_scale_code ~= nil then
      local entry_price_scale_code = field_tree:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.price_scale_code, record.price_scale_code)
      entry_price_scale_code:set_generated()
    end
  end

  return offset + length, value, record
end

-- Symbol Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.system_id = {}

-- Size: System Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.system_id.size = 1

-- Display: System Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.time = {}

-- Size: Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.time.size = 4

-- Display: Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.time.display = function(value)
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
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.time, range, value, display)

  return offset + length, value
end

-- Total Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.total_volume = {}

-- Size: Total Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.total_volume.size = 4

-- Display: Total Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Close Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close_calculate = {}

-- Display: Close Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close_calculate.display = function(value)
  return "Close Calculate: " .. string.format("%g", value)
end

-- Composite: Close Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close_calculate.display(value)
  local field_tree = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.close_calculate, range, value, display)
  local mantissa_display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close.display(mantissa)

  field_tree:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.close, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Close Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.format_decimals then
    local record = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close.dissect(buffer, offset, packet, parent)
end

-- High Price Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price_calculate = {}

-- Display: High Price Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price_calculate.display = function(value)
  return "High Price Calculate: " .. string.format("%g", value)
end

-- Composite: High Price Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price_calculate.display(value)
  local field_tree = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.high_price_calculate, range, value, display)
  local mantissa_display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price.display(mantissa)

  field_tree:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.high_price, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: High Price Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.format_decimals then
    local record = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price.dissect(buffer, offset, packet, parent)
end

-- Low Price Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price_calculate = {}

-- Display: Low Price Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price_calculate.display = function(value)
  return "Low Price Calculate: " .. string.format("%g", value)
end

-- Composite: Low Price Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price_calculate.display(value)
  local field_tree = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.low_price_calculate, range, value, display)
  local mantissa_display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price.display(mantissa)

  field_tree:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.low_price, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Low Price Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.format_decimals then
    local record = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price.dissect(buffer, offset, packet, parent)
end

-- Open Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open_calculate = {}

-- Display: Open Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open_calculate.display = function(value)
  return "Open Calculate: " .. string.format("%g", value)
end

-- Composite: Open Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open.size
  local range = buffer(offset, length)
  local mantissa = range:le_int()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open_calculate.display(value)
  local field_tree = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.open_calculate, range, value, display)
  local mantissa_display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open.display(mantissa)

  field_tree:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.open, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Open Calculate
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.format_decimals then
    local record = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open.dissect(buffer, offset, packet, parent)
end

-- Timestamp
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp = {}

-- Translate: Timestamp
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp.translate = function(source_time_ns, stored_source_time)
  return UInt64.new(stored_source_time * 1000000000 + source_time_ns)
end

-- Display: Timestamp
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp.display = function(source_time_ns, stored_source_time)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_source_time)..string.format("%09d", source_time_ns)
end

-- Composite: Timestamp
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp.composite = function(buffer, offset, stored_source_time, packet, parent)
  local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.size
  local range = buffer(offset, length)
  local source_time_ns = range:le_uint()
  local value = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp.translate(source_time_ns, stored_source_time)
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp.display(source_time_ns, stored_source_time, packet)
  parent = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.timestamp, range, value, display)

  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.generated(stored_source_time, range, packet, parent)

  display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.display(source_time_ns)
  parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.source_time_ns, range, source_time_ns, display)

  return offset + length, value
end

-- Dissect: Timestamp
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp.dissect = function(buffer, offset, packet, parent)
  if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.format_timestamp then
    local stored_source_time = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current

    if stored_source_time ~= nil then
      return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp.composite(buffer, offset, stored_source_time, packet, parent)
    end
  end

  return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g
-----------------------------------------------------------------------

-- Stock Summary Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.stock_summary_message = {}

-- Size: Stock Summary Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.stock_summary_message.size =
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.total_volume.size

-- Display: Stock Summary Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.stock_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Summary Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.stock_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = source_time

  if not packet.visited then
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.current.source_time.last = source_time
  end

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.lookup(buffer, index, packet, parent)

  -- High Price: Binary
  index, high_price = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.high_price_calculate.dissect(buffer, index, packet, parent)

  -- Low Price: Binary
  index, low_price = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.low_price_calculate.dissect(buffer, index, packet, parent)

  -- Open: Binary
  index, open = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.open_calculate.dissect(buffer, index, packet, parent)

  -- Close: Binary
  index, close = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.close_calculate.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Summary Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.stock_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.stock_summary_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.stock_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.stock_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.stock_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status_message = {}

-- Size: Security Status Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status_message.size =
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.halt_condition.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_4.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_1.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_2.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_exchange_id.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_volume.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.time.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_state.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_state.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.session_state.size

-- Display: Security Status Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = source_time

  if not packet.visited then
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.current.source_time.last = source_time
  end

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.lookup(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: Binary
  index, price_1 = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_state.dissect(buffer, index, packet, parent)

  -- Session State: ASCII
  index, session_state = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.security_status_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_clear_message.size =
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = source_time

  if not packet.visited then
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.current.source_time.last = source_time
  end

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.lookup(buffer, index, packet, parent)

  -- Next Source Seq Num: Binary
  index, next_source_seq_num = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.size =
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_1.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_id.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.system_id.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.exchange_code.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_scale_code.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_type.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.lot_size.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_price.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_volume.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_resolution.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.round_lot.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.mpv.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.unit_of_trade.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: Binary
  index, mpv = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: Binary
  index, unit_of_trade = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.reserved_2.dissect(buffer, index, packet, parent)

  -- Cache Symbol Index Mapping Message record by symbol_index
  if show.records and not packet.visited then
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.current.symbol_index_mapping_message[symbol_index] = {
      symbol_index = symbol_index,
      symbol = symbol,
      price_scale_code = price_scale_code,
    }
  end

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_reference_message.size =
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.id.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_seq_num.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.size

-- Display: Source Time Reference Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = source_time

  if not packet.visited then
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.current.source_time.last = source_time
  end

  return index
end

-- Dissect: Source Time Reference Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.sequence_number_reset_message.size =
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_ns.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.product_id.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.channel_id.size

-- Display: Sequence Number Reset Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = source_time

  if not packet.visited then
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.current.source_time.last = source_time
  end

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.payload = {}

-- Dissect: Payload
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Summary Message
  if message_type == 223 then
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.stock_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_header = {}

-- Size: Message Header
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_header.size =
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_size.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_type.size

-- Display: Message Header
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, message_type = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message_header, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message = {}

-- Read runtime size of: Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Size
  local message_size = buffer(offset, 2):le_uint()

  return message_size
end

-- Display: Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_sequence ~= nil then
    local sequence = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message_sequence_number, UInt64.new(nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 6 branches
  index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.message, buffer(offset, 0))
    local current = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.heartbeat = {}

-- Display: Heartbeat
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.messages = {}

-- Dissect: Messages
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.messages.dissect = function(buffer, offset, packet, parent, delivery_flag)
  -- Dissect Heartbeat
  if delivery_flag == 1 then
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, number_msgs do

    -- Dependency element: Message Size
    local message_size = buffer(offset, 2):le_uint()

    -- Message: Struct of 2 fields
    offset = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Send Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.send_time = {}

-- Size: Send Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.send_time.size =
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seconds.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.nanoseconds.size

-- Display: Send Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.send_time.display = function(packet, parent, value)
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
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.send_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local seconds = buffer(offset, 4):le_uint()
    local nanoseconds = buffer(offset + 4, 4):le_uint()
    local length = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.send_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.send_time
    if nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.absolute_time_base == 1 then field = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.send_time_utc end
    parent = parent:add(field, buffer(offset, length), NSTime.new(seconds, nanoseconds))
    local index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.send_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_header = {}

-- Size: Packet Header
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_header.size =
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.pkt_size.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.delivery_flag.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.number_msgs.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seq_num.size + 
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.send_time.size

-- Display: Packet Header
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.send_time.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_sequence = seq_num

  return index
end

-- Dissect: Packet Header
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.fields.packet_header, buffer(offset, 0))
    local index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet = {}

-- Verify required size of Udp packet
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_header.size
end

-- Dissect Packet
nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.data(packet)
  if not packet.visited then
    data.source_time.frames[packet.number] = data.source_time.last
    data.source_time.frames[packet.number] = data.source_time.last
    data.source_time.frames[packet.number] = data.source_time.last
    data.source_time.frames[packet.number] = data.source_time.last
    data.source_time.frames[packet.number] = data.source_time.last
  end
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = data.source_time.frames[packet.number]
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = data.source_time.frames[packet.number]
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = data.source_time.frames[packet.number]
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = data.source_time.frames[packet.number]
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = data.source_time.frames[packet.number]
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Delivery Flag
  local delivery_flag = buffer(index - 14, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.messages.dissect(buffer, index, packet, parent, delivery_flag)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.init()
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.source_time.current = nil
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.current = nil
  nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.conversation.flows = {}
end

-- Dissector for Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g
function omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g, buffer(), omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.description, "("..buffer:len().." Bytes)")
  return nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g (Udp)
local function omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g
  omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g
omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g:register_heuristic("udp", omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g_udp_heuristic)

-- Register Nyse NyseEquities IntegratedFeedStockSummary Pillar 2.5.g for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nyse_nyseequities_integratedfeedstocksummary_pillar_v2_5_g)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.5.g
--   Date: Thursday, October 23, 2025
--   Specification: NYSE_Pillar_Integrated_Feed_Client_Specification.pdf
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
