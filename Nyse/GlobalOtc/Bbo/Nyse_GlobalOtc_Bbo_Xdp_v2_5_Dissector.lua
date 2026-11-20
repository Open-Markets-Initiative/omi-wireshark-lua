-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse GlobalOtc Bbo Xdp 2.5 Protocol
local omi_nyse_globalotc_bbo_xdp_v2_5 = Proto("Omi.Nyse.GlobalOtc.Bbo.Xdp.v2.5", "Nyse GlobalOtc Bbo Xdp 2.5")

-- Protocol table
local nyse_globalotc_bbo_xdp_v2_5 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse GlobalOtc Bbo Xdp 2.5 Fields
omi_nyse_globalotc_bbo_xdp_v2_5.fields.ask_price = ProtoField.new("Ask Price", "nyse.globalotc.bbo.xdp.v2.5.askprice", ftypes.UINT32, nil, nil, nil, "The Ask price. Use the Price scale from the Symbol Index message.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.globalotc.bbo.xdp.v2.5.askvolume", ftypes.UINT32, nil, nil, nil, "The aggregate size at the ask price.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.globalotc.bbo.xdp.v2.5.beginseqnum", ftypes.UINT32, nil, nil, nil, "The beginning sequence number of the range of messages to be retransmitted.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.bid_price = ProtoField.new("Bid Price", "nyse.globalotc.bbo.xdp.v2.5.bidprice", ftypes.UINT32, nil, nil, nil, "The Bid price. Use the Price scale from the Symbol Index message.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.globalotc.bbo.xdp.v2.5.bidvolume", ftypes.UINT32, nil, nil, nil, "The aggregate size at the bid price.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.channel_id = ProtoField.new("Channel Id", "nyse.globalotc.bbo.xdp.v2.5.channelid", ftypes.UINT8, nil, nil, nil, "The ID of the multicast channel over which the packet was sent.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.globalotc.bbo.xdp.v2.5.currentrefreshpkt", ftypes.UINT16, nil, nil, nil, "The current refresh packet in the update")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.globalotc.bbo.xdp.v2.5.deliveryflag", ftypes.UINT8, nil, nil, nil, "A flag that indicates whether this is an original, retransmitted, or ‘replayed’ message.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.globalotc.bbo.xdp.v2.5.endseqnum", ftypes.UINT32, nil, nil, nil, "The end sequence number of the range of messages to be retransmitted.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.globalotc.bbo.xdp.v2.5.exchangecode", ftypes.STRING, nil, nil, nil, "For listed equity markets, the market where this symbol is listed")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.full_refresh_header = ProtoField.new("Full Refresh Header", "nyse.globalotc.bbo.xdp.v2.5.fullrefreshheader", ftypes.STRING, nil, nil, nil, "Sequence number fields that only the full Refresh Header carries.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.globalotc.bbo.xdp.v2.5.haltcondition", ftypes.STRING, nil, nil, nil, "Halt condition indicator")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.id = ProtoField.new("Id", "nyse.globalotc.bbo.xdp.v2.5.id", ftypes.UINT32, nil, nil, nil, "ID of the originating Matching Engine partition to which this message applies.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.globalotc.bbo.xdp.v2.5.lastseqnum", ftypes.UINT32, nil, nil, nil, "The last sequence number sent on the channel for any symbol. The refresh is the state of the order book as of this sequence number.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.globalotc.bbo.xdp.v2.5.lastsymbolseqnum", ftypes.UINT32, nil, nil, nil, "The last symbol sequence number sent for this symbol. The refresh is the symbol state of this symbol as of this symbol sequence number.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.lot_size = ProtoField.new("Lot Size", "nyse.globalotc.bbo.xdp.v2.5.lotsize", ftypes.UINT16, nil, nil, nil, "Round lot size in shares.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.market_id = ProtoField.new("Market Id", "nyse.globalotc.bbo.xdp.v2.5.marketid", ftypes.UINT16, nil, nil, nil, "ID of the Originating Market")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.market_state = ProtoField.new("Market State", "nyse.globalotc.bbo.xdp.v2.5.marketstate", ftypes.STRING, nil, nil, nil, "The current Market State, which this msg updates if the Security Status field contains a Market State Code.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_count = ProtoField.new("Message Count", "nyse.globalotc.bbo.xdp.v2.5.messagecount", ftypes.UINT8, nil, nil, nil, "The number of messages in this packet")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_size = ProtoField.new("Message Size", "nyse.globalotc.bbo.xdp.v2.5.messagesize", ftypes.UINT16, nil, nil, nil, "The size of this message in bytes")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_type = ProtoField.new("Message Type", "nyse.globalotc.bbo.xdp.v2.5.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.mpv = ProtoField.new("Mpv", "nyse.globalotc.bbo.xdp.v2.5.mpv", ftypes.UINT16, nil, nil, nil, "The minimum increment for a trade price, in 100ths of a cent. Typically 1, or $0.0001, but for some Tick Pilot stocks, can be 500, or $0.05.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.globalotc.bbo.xdp.v2.5.nanoseconds", ftypes.UINT32, nil, nil, nil, "The nanosecond offset from the Send Time")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.globalotc.bbo.xdp.v2.5.nextsourceseqnum", ftypes.UINT32, nil, nil, nil, "The sequence number in the next message for this symbol")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.packet_size = ProtoField.new("Packet Size", "nyse.globalotc.bbo.xdp.v2.5.packetsize", ftypes.UINT16, nil, nil, nil, "The size of the packet in bytes, including this 16 byte packet header")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.globalotc.bbo.xdp.v2.5.prevcloseprice", ftypes.UINT32, nil, nil, nil, "The previous day’s closing price for this security.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.globalotc.bbo.xdp.v2.5.prevclosevolume", ftypes.UINT32, nil, nil, nil, "The previous day’s closing volume for the security.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_1 = ProtoField.new("Price 1", "nyse.globalotc.bbo.xdp.v2.5.price1", ftypes.UINT32, nil, nil, nil, "Default value is 0")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_2 = ProtoField.new("Price 2", "nyse.globalotc.bbo.xdp.v2.5.price2", ftypes.UINT32, nil, nil, nil, "Default value is 0")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.globalotc.bbo.xdp.v2.5.priceresolution", ftypes.UINT8, nil, nil, nil, "All Penny, Penny/Nickel, Nickel/Dime")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.globalotc.bbo.xdp.v2.5.pricescalecode", ftypes.UINT8, nil, nil, nil, "Specifies placement of the decimal point in price fields for this security.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.product_id = ProtoField.new("Product Id", "nyse.globalotc.bbo.xdp.v2.5.productid", ftypes.UINT8, nil, nil, nil, "The unique ID for this NYSE feed listed in the feed’s client specification.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.globalotc.bbo.xdp.v2.5.quotecondition", ftypes.STRING, nil, nil, nil, "Quote condition values. For Global OTC, only condition R is applicable.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.globalotc.bbo.xdp.v2.5.requestseqnum", ftypes.UINT32, nil, nil, nil, "The sequence number of the request message sent by the client.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.globalotc.bbo.xdp.v2.5.reserved1", ftypes.BYTES, nil, nil, nil, "This field is reserved for future use")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.globalotc.bbo.xdp.v2.5.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved for future use. Disregard any content.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.globalotc.bbo.xdp.v2.5.reserved4", ftypes.BYTES, nil, nil, nil, "Future use. Any field content should be ignored.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.globalotc.bbo.xdp.v2.5.retransmitmethod", ftypes.UINT8, nil, nil, nil, "The delivery method for the requested symbol index mapping information.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.round_lot = ProtoField.new("Round Lot", "nyse.globalotc.bbo.xdp.v2.5.roundlot", ftypes.STRING, nil, nil, nil, "Round Lots Accepted")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.seconds_utc = ProtoField.new("Seconds", "nyse.globalotc.bbo.xdp.v2.5.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time when this packet was published to the multicast channel, in seconds since Jan 1, 1970 00:00:00 UTC.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.seconds = ProtoField.new("Seconds", "nyse.globalotc.bbo.xdp.v2.5.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time when this packet was published to the multicast channel, in seconds since Jan 1, 1970 00:00:00 UTC.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.security_status = ProtoField.new("Security Status", "nyse.globalotc.bbo.xdp.v2.5.securitystatus", ftypes.STRING, nil, nil, nil, "The new status that this security is transitioning to.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.security_type = ProtoField.new("Security Type", "nyse.globalotc.bbo.xdp.v2.5.securitytype", ftypes.STRING, nil, nil, nil, "Type of Security used by Arca, National and American")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.send_time_utc = ProtoField.new("Send Time", "nyse.globalotc.bbo.xdp.v2.5.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time when this packet was published to the multicast channel")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.send_time = ProtoField.new("Send Time", "nyse.globalotc.bbo.xdp.v2.5.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time when this packet was published to the multicast channel")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.globalotc.bbo.xdp.v2.5.sequencenumber", ftypes.UINT32, nil, nil, nil, "The message sequence number of the first message in this packet")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.session_state = ProtoField.new("Session State", "nyse.globalotc.bbo.xdp.v2.5.sessionstate", ftypes.STRING, nil, nil, nil, "Unused. Defaulted to 0x00.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_id = ProtoField.new("Source Id", "nyse.globalotc.bbo.xdp.v2.5.sourceid", ftypes.STRING, nil, nil, nil, "The ID of the client requesting this retransmission . This field is up to 9 characters, null terminated.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_time_utc = ProtoField.new("Source Time", "nyse.globalotc.bbo.xdp.v2.5.sourcetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time when this msg was generated in the order book, in seconds since Jan 1, 1970 00:00:00 UTC.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_time = ProtoField.new("Source Time", "nyse.globalotc.bbo.xdp.v2.5.sourcetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time when this msg was generated in the order book, in seconds since Jan 1, 1970 00:00:00 UTC.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.globalotc.bbo.xdp.v2.5.sourcetimens", ftypes.UINT32, nil, nil, nil, "The nanosecond offset from the SourceTime")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.ssr_state = ProtoField.new("Ssr State", "nyse.globalotc.bbo.xdp.v2.5.ssrstate", ftypes.STRING, nil, nil, nil, "The current SSR state, which this msg updates if the Security Status field contains an SSR Code. Valid")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.globalotc.bbo.xdp.v2.5.ssrtriggeringexchangeid", ftypes.STRING, nil, nil, nil, "This field is only populated when securityStatus = A and this security is listed on this exchange. Otherwise it is defaulted to 0x20.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.globalotc.bbo.xdp.v2.5.ssrtriggeringvolume", ftypes.UINT32, nil, nil, nil, "This field is only populated when securityStatus = A and this security is listed on this exchange")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.status = ProtoField.new("Status", "nyse.globalotc.bbo.xdp.v2.5.status", ftypes.STRING, nil, nil, nil, "The reason why the request was rejected.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol = ProtoField.new("Symbol", "nyse.globalotc.bbo.xdp.v2.5.symbol", ftypes.STRING, nil, nil, nil, "Null-terminated ASCII symbol in NYSE Symbology.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.globalotc.bbo.xdp.v2.5.symbolindex", ftypes.UINT32, nil, nil, nil, "The unique ID of this symbol for all products within this market. This ID cannot be used to cross reference a security between markets.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.globalotc.bbo.xdp.v2.5.symbolseqnum", ftypes.UINT32, nil, nil, nil, "Reserved for future use. Ignore any content. This usage will become standard across all products in future releases.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.system_id = ProtoField.new("System Id", "nyse.globalotc.bbo.xdp.v2.5.systemid", ftypes.UINT8, nil, nil, nil, "ID of the Originating matching engine server.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.time = ProtoField.new("Time", "nyse.globalotc.bbo.xdp.v2.5.time", ftypes.UINT32, nil, nil, nil, "Format : HHMMSSmmm (mmm = milliseconds)")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.globalotc.bbo.xdp.v2.5.totalrefreshpkts", ftypes.UINT16, nil, nil, nil, "The total number of refresh packets you should expect in the update")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.trading_session = ProtoField.new("Trading Session", "nyse.globalotc.bbo.xdp.v2.5.tradingsession", ftypes.UINT8, nil, nil, nil, "Trading session value")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.globalotc.bbo.xdp.v2.5.unitoftrade", ftypes.UINT16, nil, nil, nil, "This field specifies the security Unit of Trade in shares. Valid values are 1, 10, 50 and 100")

-- Nyse GlobalOtc Bbo Xdp 2.5 Framing
omi_nyse_globalotc_bbo_xdp_v2_5.fields.message = ProtoField.new("Message", "nyse.globalotc.bbo.xdp.v2.5.message", ftypes.STRING)
omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_header = ProtoField.new("Message Header", "nyse.globalotc.bbo.xdp.v2.5.messageheader", ftypes.STRING)
omi_nyse_globalotc_bbo_xdp_v2_5.fields.packet = ProtoField.new("Packet", "nyse.globalotc.bbo.xdp.v2.5.packet", ftypes.STRING, nil, nil, nil, "Xdp Udp Packet")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.packet_header = ProtoField.new("Packet Header", "nyse.globalotc.bbo.xdp.v2.5.packetheader", ftypes.STRING)

-- Nyse GlobalOtc Bbo 2.5 Application Messages
omi_nyse_globalotc_bbo_xdp_v2_5.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.globalotc.bbo.xdp.v2.5.heartbeatresponsemessage", ftypes.STRING, nil, nil, nil, "Clients who remain connected to the Retransmission Server intraday must respond to a Heartbeat with a Heartbeat Response message within 5 seconds. If no timely client response is received, the connection will be closed.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.globalotc.bbo.xdp.v2.5.messageunavailablemessage", ftypes.STRING, nil, nil, nil, "This message will be sent over the Retransmission multicast channels to inform clients of unavailability of a range of messages (or part of a range) for which they may have requested a retransmission.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.quote_message = ProtoField.new("Quote Message", "nyse.globalotc.bbo.xdp.v2.5.quotemessage", ftypes.STRING, nil, nil, nil, "A quote message is sent when any event results in a new top of book value on either side of the market.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.globalotc.bbo.xdp.v2.5.refreshheadermessage", ftypes.STRING, nil, nil, nil, "The first message in each packet of refresh messages published over the Refresh multicast channels is of this type.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.globalotc.bbo.xdp.v2.5.refreshrequestmessage", ftypes.STRING, nil, nil, nil, "Clients who have experienced a failure and need a refresh of the state of one or all symbols in a specific channel should send a Retransmission Request message via TCP to the Request Controller. A Request Response message will be sent over the TCP connection back to the client, and if the request was valid, the requested message(s) will be published over the relevant Refresh multicast channel.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.globalotc.bbo.xdp.v2.5.requestresponsemessage", ftypes.STRING, nil, nil, nil, "This message will be sent immediately via TCP/IP in response to the client’s request for retransmission, refresh or Symbol Mapping messages.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.globalotc.bbo.xdp.v2.5.retransmissionrequestmessage", ftypes.STRING, nil, nil, nil, "Clients who have experienced a sequence number gap and need a retransmission of the missed messages should send a Retransmission Request message via TCP to the Request Controller. A Request Response message will be sent over the TCP connection back to the client, and if the request was valid, the requested message(s) will be re-published over the relevant Retransmission multicast channel.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.globalotc.bbo.xdp.v2.5.securitystatusmessage", ftypes.STRING, nil, nil, nil, "This message informs clients of changes in the status of a specific security, such as Trading Halts, Short Sale Restriction state changes, etc.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.globalotc.bbo.xdp.v2.5.sequencenumberresetmessage", ftypes.STRING, nil, nil, nil, "This message is sent to reset the Message Sequence Number at start of day, or in response to failures.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.globalotc.bbo.xdp.v2.5.sourcetimereferencemessage", ftypes.STRING, nil, nil, nil, "This message is sent at the start of every second during periods of active data publication.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.globalotc.bbo.xdp.v2.5.symbolclearmessage", ftypes.STRING, nil, nil, nil, "In case of a failure and recovery of a Matching Engine or an XDP Publisher, the publisher may send a full state refresh for every symbol affected. This kind of unrequested refresh is preceded by a Symbol Clear message. The client should react to receipt of a Symbol Clear message by clearing all state information for the specified symbol in anticipation of receiving a full state refresh.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.globalotc.bbo.xdp.v2.5.symbolindexmappingmessage", ftypes.STRING, nil, nil, nil, "This message is published over the real-time data channels at system startup or in the context of a refresh sequence after a Matching Engine or XDP Publisher failover. It provides referential data for a single specified symbol.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.globalotc.bbo.xdp.v2.5.symbolindexmappingrequestmessage", ftypes.STRING, nil, nil, nil, "This message is sent by clients via TCP/IP requesting the Symbol Index Mapping messages for one or all symbols in a specified channel.")
omi_nyse_globalotc_bbo_xdp_v2_5.fields.trading_session_change_message = ProtoField.new("Trading Session Change Message", "nyse.globalotc.bbo.xdp.v2.5.tradingsessionchangemessage", ftypes.STRING, nil, nil, nil, "This message announces the start of a new trading session for a specified symbol.")

-- Nyse GlobalOtc Bbo Xdp 2.5 Generated Fields
omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_index = ProtoField.new("Message Index", "nyse.globalotc.bbo.xdp.v2.5.messageindex", ftypes.UINT16)
omi_nyse_globalotc_bbo_xdp_v2_5.fields.ask_price_calculate = ProtoField.new("Ask Price Calculate", "nyse.globalotc.bbo.xdp.v2.5.askpricecalculate", ftypes.DOUBLE)
omi_nyse_globalotc_bbo_xdp_v2_5.fields.bid_price_calculate = ProtoField.new("Bid Price Calculate", "nyse.globalotc.bbo.xdp.v2.5.bidpricecalculate", ftypes.DOUBLE)
omi_nyse_globalotc_bbo_xdp_v2_5.fields.prev_close_price_calculate = ProtoField.new("Prev Close Price Calculate", "nyse.globalotc.bbo.xdp.v2.5.prevclosepricecalculate", ftypes.DOUBLE)
omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_1_calculate = ProtoField.new("Price 1 Calculate", "nyse.globalotc.bbo.xdp.v2.5.price1calculate", ftypes.DOUBLE)
omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_2_calculate = ProtoField.new("Price 2 Calculate", "nyse.globalotc.bbo.xdp.v2.5.price2calculate", ftypes.DOUBLE)
omi_nyse_globalotc_bbo_xdp_v2_5.fields.timestamp = ProtoField.new("Timestamp", "nyse.globalotc.bbo.xdp.v2.5.timestamp", ftypes.UINT64)

-- Nyse GlobalOtc Bbo Xdp 2.5 Expert Info
nyse_globalotc_bbo_xdp_v2_5.experts = {}
nyse_globalotc_bbo_xdp_v2_5.experts.undecoded = ProtoExpert.new("nyse.globalotc.bbo.xdp.v2.5.undecoded", "Fields run past the size the wire gives them", expert.group.MALFORMED, expert.severity.ERROR)
omi_nyse_globalotc_bbo_xdp_v2_5.experts = { nyse_globalotc_bbo_xdp_v2_5.experts.undecoded }

-----------------------------------------------------------------------
-- Nyse GlobalOtc Bbo Xdp 2.5 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "DateTime Local", 2 },
  { 3, "DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
nyse_globalotc_bbo_xdp_v2_5.timestamp_format = 3

-- Prev Close Price Calculate format (true = decimal-scaled, false = raw mantissa)
nyse_globalotc_bbo_xdp_v2_5.format_decimals = true


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse GlobalOtc Bbo Xdp 2.5 Element Dissection Options
show.records = true
show.structs = true
show.application_messages = true
show.headers = true
show.padding = false
show.indexes = true

-- Register Nyse GlobalOtc Bbo Xdp 2.5 Show Options
omi_nyse_globalotc_bbo_xdp_v2_5.prefs.resolve_records = Pref.bool("Symbol Index Mapping Message", show.records, "Cache records and resolve cross-packet lookups")
omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nyse_globalotc_bbo_xdp_v2_5.prefs.format_decimals = Pref.bool("Format Decimals", true, "Format decimal-scaled fields as scaled values (off = raw mantissa)")

omi_nyse_globalotc_bbo_xdp_v2_5.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_nyse_globalotc_bbo_xdp_v2_5.prefs_changed()

  -- Check if preferences have changed
  if show.records ~= omi_nyse_globalotc_bbo_xdp_v2_5.prefs.resolve_records then
    show.records = omi_nyse_globalotc_bbo_xdp_v2_5.prefs.resolve_records
  end
  if show.application_messages ~= omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_application_messages then
    show.application_messages = omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_application_messages
  end
  if show.headers ~= omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_headers then
    show.headers = omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_headers
  end
  if show.padding ~= omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_padding then
    show.padding = omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_padding
  end
  if show.structs ~= omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_structs then
    show.structs = omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_structs
  end
  if show.indexes ~= omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_indexes then
    show.indexes = omi_nyse_globalotc_bbo_xdp_v2_5.prefs.show_indexes
  end
  if nyse_globalotc_bbo_xdp_v2_5.format_decimals ~= omi_nyse_globalotc_bbo_xdp_v2_5.prefs.format_decimals then
    nyse_globalotc_bbo_xdp_v2_5.format_decimals = omi_nyse_globalotc_bbo_xdp_v2_5.prefs.format_decimals
  end
  if nyse_globalotc_bbo_xdp_v2_5.timestamp_format ~= omi_nyse_globalotc_bbo_xdp_v2_5.prefs.timestamp_format then
    nyse_globalotc_bbo_xdp_v2_5.timestamp_format = omi_nyse_globalotc_bbo_xdp_v2_5.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nyse_globalotc_bbo_xdp_v2_5.conversation = {}
nyse_globalotc_bbo_xdp_v2_5.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
nyse_globalotc_bbo_xdp_v2_5.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nyse_globalotc_bbo_xdp_v2_5.conversation.data = function(packet)
  local key = nyse_globalotc_bbo_xdp_v2_5.conversation.key(packet)
  local data = nyse_globalotc_bbo_xdp_v2_5.conversation.flows[key]
  if data == nil then
    data = { source_time = { last = nil, frames = {} }, price_scale_code = { last = nil, frames = {} }, symbol_index_mapping_message = {} }
    nyse_globalotc_bbo_xdp_v2_5.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nyse_globalotc_bbo_xdp_v2_5.conversation.current = nil


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------


-- Mark a sized group whose fields read past its end; raise any other failure as it was
local function undecoded(failure, parent, expert, text)
  if not string.find(tostring(failure), "Range is out of bounds", 1, true) then
    error(failure, 0)
  end

  parent:add_proto_expert_info(expert, text)
end
-----------------------------------------------------------------------
-- Nyse GlobalOtc Bbo Xdp 2.5 Fields
-----------------------------------------------------------------------

-- Ask Price
nyse_globalotc_bbo_xdp_v2_5.ask_price = {}

-- Size: Ask Price
nyse_globalotc_bbo_xdp_v2_5.ask_price.size = 4

-- Display: Ask Price
nyse_globalotc_bbo_xdp_v2_5.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_globalotc_bbo_xdp_v2_5.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.ask_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_globalotc_bbo_xdp_v2_5.ask_volume = {}

-- Size: Ask Volume
nyse_globalotc_bbo_xdp_v2_5.ask_volume.size = 4

-- Display: Ask Volume
nyse_globalotc_bbo_xdp_v2_5.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_globalotc_bbo_xdp_v2_5.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_globalotc_bbo_xdp_v2_5.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_globalotc_bbo_xdp_v2_5.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_globalotc_bbo_xdp_v2_5.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_globalotc_bbo_xdp_v2_5.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_globalotc_bbo_xdp_v2_5.bid_price = {}

-- Size: Bid Price
nyse_globalotc_bbo_xdp_v2_5.bid_price.size = 4

-- Display: Bid Price
nyse_globalotc_bbo_xdp_v2_5.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_globalotc_bbo_xdp_v2_5.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.bid_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_globalotc_bbo_xdp_v2_5.bid_volume = {}

-- Size: Bid Volume
nyse_globalotc_bbo_xdp_v2_5.bid_volume.size = 4

-- Display: Bid Volume
nyse_globalotc_bbo_xdp_v2_5.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_globalotc_bbo_xdp_v2_5.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_globalotc_bbo_xdp_v2_5.channel_id = {}

-- Size: Channel Id
nyse_globalotc_bbo_xdp_v2_5.channel_id.size = 1

-- Display: Channel Id
nyse_globalotc_bbo_xdp_v2_5.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_globalotc_bbo_xdp_v2_5.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.channel_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_globalotc_bbo_xdp_v2_5.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_globalotc_bbo_xdp_v2_5.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_globalotc_bbo_xdp_v2_5.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_globalotc_bbo_xdp_v2_5.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_globalotc_bbo_xdp_v2_5.delivery_flag = {}

-- Size: Delivery Flag
nyse_globalotc_bbo_xdp_v2_5.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_globalotc_bbo_xdp_v2_5.delivery_flag.labels = {
  [1] = "Delivery Flag: Heartbeat (1)",
  [10] = "Delivery Flag: Xdp Failover (10)",
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

nyse_globalotc_bbo_xdp_v2_5.delivery_flag.display = function(value)
  return nyse_globalotc_bbo_xdp_v2_5.delivery_flag.labels[value] or "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
nyse_globalotc_bbo_xdp_v2_5.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_globalotc_bbo_xdp_v2_5.end_seq_num = {}

-- Size: End Seq Num
nyse_globalotc_bbo_xdp_v2_5.end_seq_num.size = 4

-- Display: End Seq Num
nyse_globalotc_bbo_xdp_v2_5.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_globalotc_bbo_xdp_v2_5.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_globalotc_bbo_xdp_v2_5.exchange_code = {}

-- Size: Exchange Code
nyse_globalotc_bbo_xdp_v2_5.exchange_code.size = 1

-- Display: Exchange Code
nyse_globalotc_bbo_xdp_v2_5.exchange_code.display = function(value)
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
nyse_globalotc_bbo_xdp_v2_5.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.exchange_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_globalotc_bbo_xdp_v2_5.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_globalotc_bbo_xdp_v2_5.halt_condition = {}

-- Size: Halt Condition
nyse_globalotc_bbo_xdp_v2_5.halt_condition.size = 1

-- Display: Halt Condition
nyse_globalotc_bbo_xdp_v2_5.halt_condition.display = function(value)
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
nyse_globalotc_bbo_xdp_v2_5.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.halt_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_globalotc_bbo_xdp_v2_5.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Id
nyse_globalotc_bbo_xdp_v2_5.id = {}

-- Size: Id
nyse_globalotc_bbo_xdp_v2_5.id.size = 4

-- Display: Id
nyse_globalotc_bbo_xdp_v2_5.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_globalotc_bbo_xdp_v2_5.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.id, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_globalotc_bbo_xdp_v2_5.last_seq_num = {}

-- Size: Last Seq Num
nyse_globalotc_bbo_xdp_v2_5.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_globalotc_bbo_xdp_v2_5.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_globalotc_bbo_xdp_v2_5.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_globalotc_bbo_xdp_v2_5.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_globalotc_bbo_xdp_v2_5.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_globalotc_bbo_xdp_v2_5.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_globalotc_bbo_xdp_v2_5.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_globalotc_bbo_xdp_v2_5.lot_size = {}

-- Size: Lot Size
nyse_globalotc_bbo_xdp_v2_5.lot_size.size = 2

-- Display: Lot Size
nyse_globalotc_bbo_xdp_v2_5.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_globalotc_bbo_xdp_v2_5.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_globalotc_bbo_xdp_v2_5.market_id = {}

-- Size: Market Id
nyse_globalotc_bbo_xdp_v2_5.market_id.size = 2

-- Display: Market Id
nyse_globalotc_bbo_xdp_v2_5.market_id.labels = {
  [1] = "Market Id: Nyse Equities (1)",
  [3] = "Market Id: Nyse Arca Equities (3)",
  [4] = "Market Id: Nyse Arca Options (4)",
  [5] = "Market Id: Nyse Bonds (5)",
  [6] = "Market Id: Global Otc (6)",
  [8] = "Market Id: Nyse Amex Options (8)",
  [9] = "Market Id: Nyse American Equities (9)",
  [10] = "Market Id: Nyse National Equities (10)",
}

nyse_globalotc_bbo_xdp_v2_5.market_id.display = function(value)
  return nyse_globalotc_bbo_xdp_v2_5.market_id.labels[value] or "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_globalotc_bbo_xdp_v2_5.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market State
nyse_globalotc_bbo_xdp_v2_5.market_state = {}

-- Size: Market State
nyse_globalotc_bbo_xdp_v2_5.market_state.size = 1

-- Display: Market State
nyse_globalotc_bbo_xdp_v2_5.market_state.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Market State: No Value"
  end

  return "Market State: "..value
end

-- Dissect: Market State
nyse_globalotc_bbo_xdp_v2_5.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.market_state.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_globalotc_bbo_xdp_v2_5.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_globalotc_bbo_xdp_v2_5.message_count = {}

-- Size: Message Count
nyse_globalotc_bbo_xdp_v2_5.message_count.size = 1

-- Display: Message Count
nyse_globalotc_bbo_xdp_v2_5.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_globalotc_bbo_xdp_v2_5.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_globalotc_bbo_xdp_v2_5.message_size = {}

-- Size: Message Size
nyse_globalotc_bbo_xdp_v2_5.message_size.size = 2

-- Display: Message Size
nyse_globalotc_bbo_xdp_v2_5.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_globalotc_bbo_xdp_v2_5.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_globalotc_bbo_xdp_v2_5.message_type = {}

-- Size: Message Type
nyse_globalotc_bbo_xdp_v2_5.message_type.size = 2

-- Display: Message Type
nyse_globalotc_bbo_xdp_v2_5.message_type.labels = {
  [1] = "Message Type: Sequence Number Reset Message (1)",
  [2] = "Message Type: Source Time Reference Message (2)",
  [3] = "Message Type: Symbol Index Mapping Message (3)",
  [10] = "Message Type: Retransmission Request Message (10)",
  [11] = "Message Type: Request Response Message (11)",
  [12] = "Message Type: Heartbeat Response Message (12)",
  [13] = "Message Type: Symbol Index Mapping Request Message (13)",
  [15] = "Message Type: Refresh Request Message (15)",
  [31] = "Message Type: Message Unavailable Message (31)",
  [32] = "Message Type: Symbol Clear Message (32)",
  [33] = "Message Type: Trading Session Change Message (33)",
  [34] = "Message Type: Security Status Message (34)",
  [35] = "Message Type: Refresh Header Message (35)",
  [140] = "Message Type: Quote Message (140)",
}

nyse_globalotc_bbo_xdp_v2_5.message_type.display = function(value)
  return nyse_globalotc_bbo_xdp_v2_5.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_globalotc_bbo_xdp_v2_5.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_globalotc_bbo_xdp_v2_5.mpv = {}

-- Size: Mpv
nyse_globalotc_bbo_xdp_v2_5.mpv.size = 2

-- Display: Mpv
nyse_globalotc_bbo_xdp_v2_5.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_globalotc_bbo_xdp_v2_5.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_globalotc_bbo_xdp_v2_5.nanoseconds = {}

-- Size: Nanoseconds
nyse_globalotc_bbo_xdp_v2_5.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_globalotc_bbo_xdp_v2_5.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_globalotc_bbo_xdp_v2_5.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_globalotc_bbo_xdp_v2_5.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_globalotc_bbo_xdp_v2_5.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_globalotc_bbo_xdp_v2_5.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_globalotc_bbo_xdp_v2_5.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_globalotc_bbo_xdp_v2_5.packet_size = {}

-- Size: Packet Size
nyse_globalotc_bbo_xdp_v2_5.packet_size.size = 2

-- Display: Packet Size
nyse_globalotc_bbo_xdp_v2_5.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_globalotc_bbo_xdp_v2_5.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_globalotc_bbo_xdp_v2_5.prev_close_price = {}

-- Size: Prev Close Price
nyse_globalotc_bbo_xdp_v2_5.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_globalotc_bbo_xdp_v2_5.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_globalotc_bbo_xdp_v2_5.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_globalotc_bbo_xdp_v2_5.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_globalotc_bbo_xdp_v2_5.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_globalotc_bbo_xdp_v2_5.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_globalotc_bbo_xdp_v2_5.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_globalotc_bbo_xdp_v2_5.price_1 = {}

-- Size: Price 1
nyse_globalotc_bbo_xdp_v2_5.price_1.size = 4

-- Display: Price 1
nyse_globalotc_bbo_xdp_v2_5.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_globalotc_bbo_xdp_v2_5.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_globalotc_bbo_xdp_v2_5.price_2 = {}

-- Size: Price 2
nyse_globalotc_bbo_xdp_v2_5.price_2.size = 4

-- Display: Price 2
nyse_globalotc_bbo_xdp_v2_5.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_globalotc_bbo_xdp_v2_5.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_globalotc_bbo_xdp_v2_5.price_resolution = {}

-- Size: Price Resolution
nyse_globalotc_bbo_xdp_v2_5.price_resolution.size = 1

-- Display: Price Resolution
nyse_globalotc_bbo_xdp_v2_5.price_resolution.display = function(value)
  return "Price Resolution: "..value
end

-- Dissect: Price Resolution
nyse_globalotc_bbo_xdp_v2_5.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.price_resolution.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_globalotc_bbo_xdp_v2_5.price_scale_code = {}

-- Size: Price Scale Code
nyse_globalotc_bbo_xdp_v2_5.price_scale_code.size = 1

-- Store: Price Scale Code
nyse_globalotc_bbo_xdp_v2_5.price_scale_code.current = nil

-- Generated: Price Scale Code
nyse_globalotc_bbo_xdp_v2_5.price_scale_code.generated = function(value, range, packet, parent)
  local display = nyse_globalotc_bbo_xdp_v2_5.price_scale_code.display(value)
  local price_scale_code = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_scale_code, range, value, display)
  price_scale_code:set_generated()
end

-- Display: Price Scale Code
nyse_globalotc_bbo_xdp_v2_5.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_globalotc_bbo_xdp_v2_5.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_globalotc_bbo_xdp_v2_5.product_id = {}

-- Size: Product Id
nyse_globalotc_bbo_xdp_v2_5.product_id.size = 1

-- Display: Product Id
nyse_globalotc_bbo_xdp_v2_5.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_globalotc_bbo_xdp_v2_5.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.product_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.product_id, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_globalotc_bbo_xdp_v2_5.quote_condition = {}

-- Size: Quote Condition
nyse_globalotc_bbo_xdp_v2_5.quote_condition.size = 1

-- Display: Quote Condition
nyse_globalotc_bbo_xdp_v2_5.quote_condition.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Quote Condition: No Value"
  end

  if value == "C" then
    return "Quote Condition: Closing (C)"
  end
  if value == "O" then
    return "Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Quote (R)"
  end
  if value == "W" then
    return "Quote Condition: Slow On The Bid And Ask (W)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_globalotc_bbo_xdp_v2_5.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.quote_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_globalotc_bbo_xdp_v2_5.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_globalotc_bbo_xdp_v2_5.request_seq_num = {}

-- Size: Request Seq Num
nyse_globalotc_bbo_xdp_v2_5.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_globalotc_bbo_xdp_v2_5.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_globalotc_bbo_xdp_v2_5.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_globalotc_bbo_xdp_v2_5.reserved_1 = {}

-- Size: Reserved 1
nyse_globalotc_bbo_xdp_v2_5.reserved_1.size = 1

-- Display: Reserved 1
nyse_globalotc_bbo_xdp_v2_5.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_globalotc_bbo_xdp_v2_5.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_globalotc_bbo_xdp_v2_5.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.reserved_1, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 2
nyse_globalotc_bbo_xdp_v2_5.reserved_2 = {}

-- Size: Reserved 2
nyse_globalotc_bbo_xdp_v2_5.reserved_2.size = 2

-- Display: Reserved 2
nyse_globalotc_bbo_xdp_v2_5.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_globalotc_bbo_xdp_v2_5.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_globalotc_bbo_xdp_v2_5.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.reserved_2, range, range:raw(), display)

  return offset + length, value
end

-- Reserved 4
nyse_globalotc_bbo_xdp_v2_5.reserved_4 = {}

-- Size: Reserved 4
nyse_globalotc_bbo_xdp_v2_5.reserved_4.size = 4

-- Display: Reserved 4
nyse_globalotc_bbo_xdp_v2_5.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_globalotc_bbo_xdp_v2_5.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_globalotc_bbo_xdp_v2_5.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.reserved_4, range, range:raw(), display)

  return offset + length, value
end

-- Retransmit Method
nyse_globalotc_bbo_xdp_v2_5.retransmit_method = {}

-- Size: Retransmit Method
nyse_globalotc_bbo_xdp_v2_5.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_globalotc_bbo_xdp_v2_5.retransmit_method.labels = {
  [0] = "Retransmit Method: Udp (0)",
}

nyse_globalotc_bbo_xdp_v2_5.retransmit_method.display = function(value)
  return nyse_globalotc_bbo_xdp_v2_5.retransmit_method.labels[value] or "Retransmit Method: Unknown("..value..")"
end

-- Dissect: Retransmit Method
nyse_globalotc_bbo_xdp_v2_5.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_globalotc_bbo_xdp_v2_5.round_lot = {}

-- Size: Round Lot
nyse_globalotc_bbo_xdp_v2_5.round_lot.size = 1

-- Display: Round Lot
nyse_globalotc_bbo_xdp_v2_5.round_lot.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Round Lot: No Value"
  end

  return "Round Lot: "..value
end

-- Dissect: Round Lot
nyse_globalotc_bbo_xdp_v2_5.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.round_lot.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_globalotc_bbo_xdp_v2_5.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_globalotc_bbo_xdp_v2_5.seconds = {}

-- Size: Seconds
nyse_globalotc_bbo_xdp_v2_5.seconds.size = 4

-- Dissect: Seconds
nyse_globalotc_bbo_xdp_v2_5.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nyse_globalotc_bbo_xdp_v2_5.fields.seconds
  if nyse_globalotc_bbo_xdp_v2_5.timestamp_format == 3 then field = omi_nyse_globalotc_bbo_xdp_v2_5.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Security Status
nyse_globalotc_bbo_xdp_v2_5.security_status = {}

-- Size: Security Status
nyse_globalotc_bbo_xdp_v2_5.security_status.size = 1

-- Display: Security Status
nyse_globalotc_bbo_xdp_v2_5.security_status.display = function(value)
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
    return "Security Status: Pre Opening (P)"
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
nyse_globalotc_bbo_xdp_v2_5.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.security_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_globalotc_bbo_xdp_v2_5.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_globalotc_bbo_xdp_v2_5.security_type = {}

-- Size: Security Type
nyse_globalotc_bbo_xdp_v2_5.security_type.size = 1

-- Display: Security Type
nyse_globalotc_bbo_xdp_v2_5.security_type.display = function(value)
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
nyse_globalotc_bbo_xdp_v2_5.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.security_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_globalotc_bbo_xdp_v2_5.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_globalotc_bbo_xdp_v2_5.sequence_number = {}

-- Size: Sequence Number
nyse_globalotc_bbo_xdp_v2_5.sequence_number.size = 4

-- Display: Sequence Number
nyse_globalotc_bbo_xdp_v2_5.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_globalotc_bbo_xdp_v2_5.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session State
nyse_globalotc_bbo_xdp_v2_5.session_state = {}

-- Size: Session State
nyse_globalotc_bbo_xdp_v2_5.session_state.size = 1

-- Display: Session State
nyse_globalotc_bbo_xdp_v2_5.session_state.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Session State: No Value"
  end

  return "Session State: "..value
end

-- Dissect: Session State
nyse_globalotc_bbo_xdp_v2_5.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.session_state.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_globalotc_bbo_xdp_v2_5.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.session_state, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_globalotc_bbo_xdp_v2_5.source_id = {}

-- Size: Source Id
nyse_globalotc_bbo_xdp_v2_5.source_id.size = 10

-- Display: Source Id
nyse_globalotc_bbo_xdp_v2_5.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_globalotc_bbo_xdp_v2_5.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.source_id.size
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

  local display = nyse_globalotc_bbo_xdp_v2_5.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_globalotc_bbo_xdp_v2_5.source_time = {}

-- Size: Source Time
nyse_globalotc_bbo_xdp_v2_5.source_time.size = 4

-- Store: Source Time
nyse_globalotc_bbo_xdp_v2_5.source_time.current = nil

-- Generated: Source Time
nyse_globalotc_bbo_xdp_v2_5.source_time.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_time
  if nyse_globalotc_bbo_xdp_v2_5.timestamp_format == 3 then field = omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_time_utc end
  local source_time = parent:add(field, range, NSTime.new(value, 0))
  source_time:set_generated()
end

-- Dissect: Source Time
nyse_globalotc_bbo_xdp_v2_5.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_time
  if nyse_globalotc_bbo_xdp_v2_5.timestamp_format == 3 then field = omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_time_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Source Time Ns
nyse_globalotc_bbo_xdp_v2_5.source_time_ns = {}

-- Size: Source Time Ns
nyse_globalotc_bbo_xdp_v2_5.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_globalotc_bbo_xdp_v2_5.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_globalotc_bbo_xdp_v2_5.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_globalotc_bbo_xdp_v2_5.ssr_state = {}

-- Size: Ssr State
nyse_globalotc_bbo_xdp_v2_5.ssr_state.size = 1

-- Display: Ssr State
nyse_globalotc_bbo_xdp_v2_5.ssr_state.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ssr State: No Value"
  end

  return "Ssr State: "..value
end

-- Dissect: Ssr State
nyse_globalotc_bbo_xdp_v2_5.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.ssr_state.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_globalotc_bbo_xdp_v2_5.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_exchange_id.display = function(value)
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
nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Status
nyse_globalotc_bbo_xdp_v2_5.status = {}

-- Size: Status
nyse_globalotc_bbo_xdp_v2_5.status.size = 1

-- Display: Status
nyse_globalotc_bbo_xdp_v2_5.status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Status: No Value"
  end

  return "Status: "..value
end

-- Dissect: Status
nyse_globalotc_bbo_xdp_v2_5.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = nyse_globalotc_bbo_xdp_v2_5.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_globalotc_bbo_xdp_v2_5.symbol = {}

-- Size: Symbol
nyse_globalotc_bbo_xdp_v2_5.symbol.size = 11

-- Display: Symbol
nyse_globalotc_bbo_xdp_v2_5.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_globalotc_bbo_xdp_v2_5.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.symbol.size
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

  local display = nyse_globalotc_bbo_xdp_v2_5.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_globalotc_bbo_xdp_v2_5.symbol_index = {}

-- Size: Symbol Index
nyse_globalotc_bbo_xdp_v2_5.symbol_index.size = 4

-- Lookup: Symbol Index
nyse_globalotc_bbo_xdp_v2_5.symbol_index.lookup = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.symbol_index.display(value, buffer, offset, packet, parent)

  if not show.records then
    nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.current = nil
    parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_index, range, value, display)

    return offset + length, value
  end

  -- Lookup Symbol Index Mapping Message record
  local record = nyse_globalotc_bbo_xdp_v2_5.conversation.current.symbol_index_mapping_message[value]

  -- The record as it stood at this frame, however often it is dissected again
  while record ~= nil and record.record_frame > packet.number do
    record = record.record_previous
  end

  -- A key with no record clears the last one, so nothing reads another key's values
  nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.current = record

  local field_tree = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_index, range, value, display)

  if record ~= nil then
    if record.symbol ~= nil then
      local entry_symbol = field_tree:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol, record.symbol)
      entry_symbol:set_generated()
    end
    if record.price_scale_code ~= nil then
      local entry_price_scale_code = field_tree:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_scale_code, record.price_scale_code)
      entry_price_scale_code:set_generated()
    end
  end

  return offset + length, value, record
end

-- Display: Symbol Index
nyse_globalotc_bbo_xdp_v2_5.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_globalotc_bbo_xdp_v2_5.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_globalotc_bbo_xdp_v2_5.system_id = {}

-- Size: System Id
nyse_globalotc_bbo_xdp_v2_5.system_id.size = 1

-- Display: System Id
nyse_globalotc_bbo_xdp_v2_5.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_globalotc_bbo_xdp_v2_5.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.system_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_globalotc_bbo_xdp_v2_5.time = {}

-- Size: Time
nyse_globalotc_bbo_xdp_v2_5.time.size = 4

-- Display: Time
nyse_globalotc_bbo_xdp_v2_5.time.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Time: Not Applicable"
  end

  local hour = math.floor(value / 10000000)
  local minute = math.floor(value / 100000) % 100
  local second = math.floor(value / 1000) % 100
  local millisecond = value % 1000

  return string.format("Time: %02d:%02d:%02d.%03d", hour, minute, second, millisecond)
end

-- Dissect: Time
nyse_globalotc_bbo_xdp_v2_5.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.time, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_globalotc_bbo_xdp_v2_5.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_globalotc_bbo_xdp_v2_5.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_globalotc_bbo_xdp_v2_5.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_globalotc_bbo_xdp_v2_5.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Trading Session
nyse_globalotc_bbo_xdp_v2_5.trading_session = {}

-- Size: Trading Session
nyse_globalotc_bbo_xdp_v2_5.trading_session.size = 1

-- Display: Trading Session
nyse_globalotc_bbo_xdp_v2_5.trading_session.display = function(value)
  return "Trading Session: "..value
end

-- Dissect: Trading Session
nyse_globalotc_bbo_xdp_v2_5.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.trading_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_globalotc_bbo_xdp_v2_5.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_globalotc_bbo_xdp_v2_5.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_globalotc_bbo_xdp_v2_5.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_globalotc_bbo_xdp_v2_5.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_globalotc_bbo_xdp_v2_5.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Ask Price Calculate
nyse_globalotc_bbo_xdp_v2_5.ask_price_calculate = {}

-- Display: Ask Price Calculate
nyse_globalotc_bbo_xdp_v2_5.ask_price_calculate.display = function(value)
  return "Ask Price Calculate: " .. string.format("%.15g", value)
end

-- Composite: Ask Price Calculate
nyse_globalotc_bbo_xdp_v2_5.ask_price_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.ask_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_uint()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_globalotc_bbo_xdp_v2_5.ask_price_calculate.display(value)
  local field_tree = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.ask_price_calculate, range, value, display)
  local mantissa_display = nyse_globalotc_bbo_xdp_v2_5.ask_price.display(mantissa)

  field_tree:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.ask_price, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Ask Price Calculate
nyse_globalotc_bbo_xdp_v2_5.ask_price_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_globalotc_bbo_xdp_v2_5.format_decimals then
    local record = nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_globalotc_bbo_xdp_v2_5.ask_price_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_globalotc_bbo_xdp_v2_5.ask_price.dissect(buffer, offset, packet, parent)
end

-- Bid Price Calculate
nyse_globalotc_bbo_xdp_v2_5.bid_price_calculate = {}

-- Display: Bid Price Calculate
nyse_globalotc_bbo_xdp_v2_5.bid_price_calculate.display = function(value)
  return "Bid Price Calculate: " .. string.format("%.15g", value)
end

-- Composite: Bid Price Calculate
nyse_globalotc_bbo_xdp_v2_5.bid_price_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.bid_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_uint()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_globalotc_bbo_xdp_v2_5.bid_price_calculate.display(value)
  local field_tree = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.bid_price_calculate, range, value, display)
  local mantissa_display = nyse_globalotc_bbo_xdp_v2_5.bid_price.display(mantissa)

  field_tree:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.bid_price, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Bid Price Calculate
nyse_globalotc_bbo_xdp_v2_5.bid_price_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_globalotc_bbo_xdp_v2_5.format_decimals then
    local record = nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_globalotc_bbo_xdp_v2_5.bid_price_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_globalotc_bbo_xdp_v2_5.bid_price.dissect(buffer, offset, packet, parent)
end

-- Prev Close Price Calculate
nyse_globalotc_bbo_xdp_v2_5.prev_close_price_calculate = {}

-- Display: Prev Close Price Calculate
nyse_globalotc_bbo_xdp_v2_5.prev_close_price_calculate.display = function(value)
  return "Prev Close Price Calculate: " .. string.format("%.15g", value)
end

-- Composite: Prev Close Price Calculate
nyse_globalotc_bbo_xdp_v2_5.prev_close_price_calculate.composite = function(buffer, offset, stored_price_scale_code, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.prev_close_price.size
  local range = buffer(offset, length)
  local mantissa = range:le_uint()
  local value = mantissa / (10 ^ stored_price_scale_code)
  local display = nyse_globalotc_bbo_xdp_v2_5.prev_close_price_calculate.display(value)
  local field_tree = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.prev_close_price_calculate, range, value, display)
  local mantissa_display = nyse_globalotc_bbo_xdp_v2_5.prev_close_price.display(mantissa)

  field_tree:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.prev_close_price, range, mantissa, mantissa_display)

  local stored_price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(stored_price_scale_code))
  stored_price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Prev Close Price Calculate
nyse_globalotc_bbo_xdp_v2_5.prev_close_price_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_globalotc_bbo_xdp_v2_5.format_decimals then
    local stored_price_scale_code = nyse_globalotc_bbo_xdp_v2_5.price_scale_code.current

    if stored_price_scale_code ~= nil then
      return nyse_globalotc_bbo_xdp_v2_5.prev_close_price_calculate.composite(buffer, offset, stored_price_scale_code, packet, parent)
    end
  end

  return nyse_globalotc_bbo_xdp_v2_5.prev_close_price.dissect(buffer, offset, packet, parent)
end

-- Price 1 Calculate
nyse_globalotc_bbo_xdp_v2_5.price_1_calculate = {}

-- Display: Price 1 Calculate
nyse_globalotc_bbo_xdp_v2_5.price_1_calculate.display = function(value)
  return "Price 1 Calculate: " .. string.format("%.15g", value)
end

-- Composite: Price 1 Calculate
nyse_globalotc_bbo_xdp_v2_5.price_1_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.price_1.size
  local range = buffer(offset, length)
  local mantissa = range:le_uint()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_globalotc_bbo_xdp_v2_5.price_1_calculate.display(value)
  local field_tree = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_1_calculate, range, value, display)
  local mantissa_display = nyse_globalotc_bbo_xdp_v2_5.price_1.display(mantissa)

  field_tree:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_1, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Price 1 Calculate
nyse_globalotc_bbo_xdp_v2_5.price_1_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_globalotc_bbo_xdp_v2_5.format_decimals then
    local record = nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_globalotc_bbo_xdp_v2_5.price_1_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_globalotc_bbo_xdp_v2_5.price_1.dissect(buffer, offset, packet, parent)
end

-- Price 2 Calculate
nyse_globalotc_bbo_xdp_v2_5.price_2_calculate = {}

-- Display: Price 2 Calculate
nyse_globalotc_bbo_xdp_v2_5.price_2_calculate.display = function(value)
  return "Price 2 Calculate: " .. string.format("%.15g", value)
end

-- Composite: Price 2 Calculate
nyse_globalotc_bbo_xdp_v2_5.price_2_calculate.composite = function(buffer, offset, record, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.price_2.size
  local range = buffer(offset, length)
  local mantissa = range:le_uint()
  local value = mantissa / (10 ^ record.price_scale_code)
  local display = nyse_globalotc_bbo_xdp_v2_5.price_2_calculate.display(value)
  local field_tree = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_2_calculate, range, value, display)
  local mantissa_display = nyse_globalotc_bbo_xdp_v2_5.price_2.display(mantissa)

  field_tree:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.price_2, range, mantissa, mantissa_display)

  local price_scale_code_entry = field_tree:add("Price Scale Code: " .. tostring(record.price_scale_code))
  price_scale_code_entry:set_generated()

  return offset + length, value
end

-- Dissect: Price 2 Calculate
nyse_globalotc_bbo_xdp_v2_5.price_2_calculate.dissect = function(buffer, offset, packet, parent)
  if nyse_globalotc_bbo_xdp_v2_5.format_decimals then
    local record = nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.current
    if record ~= nil and record.price_scale_code ~= nil then
      return nyse_globalotc_bbo_xdp_v2_5.price_2_calculate.composite(buffer, offset, record, packet, parent)
    end
  end

  return nyse_globalotc_bbo_xdp_v2_5.price_2.dissect(buffer, offset, packet, parent)
end

-- Timestamp
nyse_globalotc_bbo_xdp_v2_5.timestamp = {}

-- Translate: Timestamp
nyse_globalotc_bbo_xdp_v2_5.timestamp.translate = function(source_time_ns, stored_source_time)
  return UInt64.new(stored_source_time) * 1000000000 + source_time_ns
end

-- Display: Timestamp
nyse_globalotc_bbo_xdp_v2_5.timestamp.display = function(source_time_ns, stored_source_time)
  -- An offset the Field epoch leaves unbounded carries whole seconds of its own
  local seconds = stored_source_time + math.floor(source_time_ns / 1000000000)
  local fraction = source_time_ns % 1000000000

  local format = nyse_globalotc_bbo_xdp_v2_5.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
  return "Timestamp: "..os.date(format, seconds)..string.format("%09d", fraction)
end

-- Composite: Timestamp
nyse_globalotc_bbo_xdp_v2_5.timestamp.composite = function(buffer, offset, stored_source_time, packet, parent)
  local length = nyse_globalotc_bbo_xdp_v2_5.source_time_ns.size
  local range = buffer(offset, length)
  local source_time_ns = range:le_uint()
  local value = nyse_globalotc_bbo_xdp_v2_5.timestamp.translate(source_time_ns, stored_source_time)
  local display = nyse_globalotc_bbo_xdp_v2_5.timestamp.display(source_time_ns, stored_source_time, packet)
  parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.timestamp, range, value, display)

  nyse_globalotc_bbo_xdp_v2_5.source_time.generated(stored_source_time, range, packet, parent)

  display = nyse_globalotc_bbo_xdp_v2_5.source_time_ns.display(source_time_ns)
  parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_time_ns, range, source_time_ns, display)

  return offset + length, value
end

-- Dissect: Timestamp
nyse_globalotc_bbo_xdp_v2_5.timestamp.dissect = function(buffer, offset, packet, parent)
  if nyse_globalotc_bbo_xdp_v2_5.timestamp_format ~= 0 then
    local stored_source_time = nyse_globalotc_bbo_xdp_v2_5.source_time.current

    if stored_source_time ~= nil then
      return nyse_globalotc_bbo_xdp_v2_5.timestamp.composite(buffer, offset, stored_source_time, packet, parent)
    end
  end

  return nyse_globalotc_bbo_xdp_v2_5.source_time_ns.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nyse GlobalOtc Bbo Xdp 2.5
-----------------------------------------------------------------------

-- Quote Message
nyse_globalotc_bbo_xdp_v2_5.quote_message = {}

-- Size: Quote Message
nyse_globalotc_bbo_xdp_v2_5.quote_message.size =
  nyse_globalotc_bbo_xdp_v2_5.source_time_ns.size + 
  nyse_globalotc_bbo_xdp_v2_5.symbol_index.size + 
  nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.ask_price.size + 
  nyse_globalotc_bbo_xdp_v2_5.ask_volume.size + 
  nyse_globalotc_bbo_xdp_v2_5.bid_price.size + 
  nyse_globalotc_bbo_xdp_v2_5.bid_volume.size + 
  nyse_globalotc_bbo_xdp_v2_5.quote_condition.size + 
  nyse_globalotc_bbo_xdp_v2_5.reserved_4.size

-- Display: Quote Message
nyse_globalotc_bbo_xdp_v2_5.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
nyse_globalotc_bbo_xdp_v2_5.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_globalotc_bbo_xdp_v2_5.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_globalotc_bbo_xdp_v2_5.symbol_index.lookup(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Price: Binary
  index, ask_price = nyse_globalotc_bbo_xdp_v2_5.ask_price_calculate.dissect(buffer, index, packet, parent)

  -- Ask Volume: Binary
  index, ask_volume = nyse_globalotc_bbo_xdp_v2_5.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: Binary
  index, bid_price = nyse_globalotc_bbo_xdp_v2_5.bid_price_calculate.dissect(buffer, index, packet, parent)

  -- Bid Volume: Binary
  index, bid_volume = nyse_globalotc_bbo_xdp_v2_5.bid_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_globalotc_bbo_xdp_v2_5.quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: reserved
  if show.padding then
    index, reserved_4 = nyse_globalotc_bbo_xdp_v2_5.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nyse_globalotc_bbo_xdp_v2_5.reserved_4.size
  end

  return index
end

-- Dissect: Quote Message
nyse_globalotc_bbo_xdp_v2_5.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.quote_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Full Refresh Header
nyse_globalotc_bbo_xdp_v2_5.full_refresh_header = {}

-- Size: Full Refresh Header
nyse_globalotc_bbo_xdp_v2_5.full_refresh_header.size =
  nyse_globalotc_bbo_xdp_v2_5.last_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.last_symbol_seq_num.size

-- Display: Full Refresh Header
nyse_globalotc_bbo_xdp_v2_5.full_refresh_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Full Refresh Header
nyse_globalotc_bbo_xdp_v2_5.full_refresh_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Binary
  index, last_seq_num = nyse_globalotc_bbo_xdp_v2_5.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: Binary
  index, last_symbol_seq_num = nyse_globalotc_bbo_xdp_v2_5.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Refresh Header
nyse_globalotc_bbo_xdp_v2_5.full_refresh_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.full_refresh_header, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.full_refresh_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.full_refresh_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.full_refresh_header.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_globalotc_bbo_xdp_v2_5.refresh_header_message = {}

-- Calculate size of: Refresh Header Message
nyse_globalotc_bbo_xdp_v2_5.refresh_header_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_globalotc_bbo_xdp_v2_5.current_refresh_pkt.size

  index = index + nyse_globalotc_bbo_xdp_v2_5.total_refresh_pkts.size

  local current_refresh_pkt = buffer(offset + 0, 2):le_uint()

  if current_refresh_pkt == 1 then
    index = index + nyse_globalotc_bbo_xdp_v2_5.full_refresh_header.size

  end

  return index
end

-- Display: Refresh Header Message
nyse_globalotc_bbo_xdp_v2_5.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_globalotc_bbo_xdp_v2_5.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: Binary
  index, current_refresh_pkt = nyse_globalotc_bbo_xdp_v2_5.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: Binary
  index, total_refresh_pkts = nyse_globalotc_bbo_xdp_v2_5.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Full Refresh Header
  local full_refresh_header = nil

  local full_refresh_header_exists = current_refresh_pkt == 1

  if full_refresh_header_exists then
    index, full_refresh_header = nyse_globalotc_bbo_xdp_v2_5.full_refresh_header.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Refresh Header Message
nyse_globalotc_bbo_xdp_v2_5.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_globalotc_bbo_xdp_v2_5.security_status_message = {}

-- Size: Security Status Message
nyse_globalotc_bbo_xdp_v2_5.security_status_message.size =
  nyse_globalotc_bbo_xdp_v2_5.source_time.size + 
  nyse_globalotc_bbo_xdp_v2_5.source_time_ns.size + 
  nyse_globalotc_bbo_xdp_v2_5.symbol_index.size + 
  nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.security_status.size + 
  nyse_globalotc_bbo_xdp_v2_5.halt_condition.size + 
  nyse_globalotc_bbo_xdp_v2_5.reserved_4.size + 
  nyse_globalotc_bbo_xdp_v2_5.price_1.size + 
  nyse_globalotc_bbo_xdp_v2_5.price_2.size + 
  nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_exchange_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_volume.size + 
  nyse_globalotc_bbo_xdp_v2_5.time.size + 
  nyse_globalotc_bbo_xdp_v2_5.ssr_state.size + 
  nyse_globalotc_bbo_xdp_v2_5.market_state.size + 
  nyse_globalotc_bbo_xdp_v2_5.session_state.size

-- Display: Security Status Message
nyse_globalotc_bbo_xdp_v2_5.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_globalotc_bbo_xdp_v2_5.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_globalotc_bbo_xdp_v2_5.source_time.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_globalotc_bbo_xdp_v2_5.source_time.current = source_time

  if not packet.visited then
    nyse_globalotc_bbo_xdp_v2_5.conversation.current.source_time.last = source_time
  end

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_globalotc_bbo_xdp_v2_5.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_globalotc_bbo_xdp_v2_5.symbol_index.lookup(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_globalotc_bbo_xdp_v2_5.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_globalotc_bbo_xdp_v2_5.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: reserved
  if show.padding then
    index, reserved_4 = nyse_globalotc_bbo_xdp_v2_5.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + nyse_globalotc_bbo_xdp_v2_5.reserved_4.size
  end

  -- Price 1: Binary
  index, price_1 = nyse_globalotc_bbo_xdp_v2_5.price_1_calculate.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_globalotc_bbo_xdp_v2_5.price_2_calculate.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_globalotc_bbo_xdp_v2_5.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_globalotc_bbo_xdp_v2_5.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_globalotc_bbo_xdp_v2_5.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_globalotc_bbo_xdp_v2_5.market_state.dissect(buffer, index, packet, parent)

  -- Session State: ASCII
  index, session_state = nyse_globalotc_bbo_xdp_v2_5.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_globalotc_bbo_xdp_v2_5.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.security_status_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Change Message
nyse_globalotc_bbo_xdp_v2_5.trading_session_change_message = {}

-- Size: Trading Session Change Message
nyse_globalotc_bbo_xdp_v2_5.trading_session_change_message.size =
  nyse_globalotc_bbo_xdp_v2_5.source_time.size + 
  nyse_globalotc_bbo_xdp_v2_5.source_time_ns.size + 
  nyse_globalotc_bbo_xdp_v2_5.symbol_index.size + 
  nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.trading_session.size

-- Display: Trading Session Change Message
nyse_globalotc_bbo_xdp_v2_5.trading_session_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Change Message
nyse_globalotc_bbo_xdp_v2_5.trading_session_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_globalotc_bbo_xdp_v2_5.source_time.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_globalotc_bbo_xdp_v2_5.source_time.current = source_time

  if not packet.visited then
    nyse_globalotc_bbo_xdp_v2_5.conversation.current.source_time.last = source_time
  end

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_globalotc_bbo_xdp_v2_5.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_globalotc_bbo_xdp_v2_5.symbol_index.lookup(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trading Session: Binary
  index, trading_session = nyse_globalotc_bbo_xdp_v2_5.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Change Message
nyse_globalotc_bbo_xdp_v2_5.trading_session_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.trading_session_change_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.trading_session_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.trading_session_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.trading_session_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_globalotc_bbo_xdp_v2_5.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_globalotc_bbo_xdp_v2_5.symbol_clear_message.size =
  nyse_globalotc_bbo_xdp_v2_5.source_time.size + 
  nyse_globalotc_bbo_xdp_v2_5.source_time_ns.size + 
  nyse_globalotc_bbo_xdp_v2_5.symbol_index.size + 
  nyse_globalotc_bbo_xdp_v2_5.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_globalotc_bbo_xdp_v2_5.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_globalotc_bbo_xdp_v2_5.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_globalotc_bbo_xdp_v2_5.source_time.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_globalotc_bbo_xdp_v2_5.source_time.current = source_time

  if not packet.visited then
    nyse_globalotc_bbo_xdp_v2_5.conversation.current.source_time.last = source_time
  end

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_globalotc_bbo_xdp_v2_5.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_globalotc_bbo_xdp_v2_5.symbol_index.lookup(buffer, index, packet, parent)

  -- Next Source Seq Num: Binary
  index, next_source_seq_num = nyse_globalotc_bbo_xdp_v2_5.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_globalotc_bbo_xdp_v2_5.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_globalotc_bbo_xdp_v2_5.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_globalotc_bbo_xdp_v2_5.message_unavailable_message.size =
  nyse_globalotc_bbo_xdp_v2_5.begin_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.end_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.product_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.channel_id.size

-- Display: Message Unavailable Message
nyse_globalotc_bbo_xdp_v2_5.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_globalotc_bbo_xdp_v2_5.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_globalotc_bbo_xdp_v2_5.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_globalotc_bbo_xdp_v2_5.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_globalotc_bbo_xdp_v2_5.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_globalotc_bbo_xdp_v2_5.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_globalotc_bbo_xdp_v2_5.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
nyse_globalotc_bbo_xdp_v2_5.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_globalotc_bbo_xdp_v2_5.refresh_request_message.size =
  nyse_globalotc_bbo_xdp_v2_5.symbol_index.size + 
  nyse_globalotc_bbo_xdp_v2_5.source_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.product_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.channel_id.size

-- Display: Refresh Request Message
nyse_globalotc_bbo_xdp_v2_5.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_globalotc_bbo_xdp_v2_5.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_globalotc_bbo_xdp_v2_5.symbol_index.lookup(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_globalotc_bbo_xdp_v2_5.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_globalotc_bbo_xdp_v2_5.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_globalotc_bbo_xdp_v2_5.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_globalotc_bbo_xdp_v2_5.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_request_message.size =
  nyse_globalotc_bbo_xdp_v2_5.symbol_index.size + 
  nyse_globalotc_bbo_xdp_v2_5.source_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.product_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.channel_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary (record lookup)
  index, symbol_index, symbol_index_record = nyse_globalotc_bbo_xdp_v2_5.symbol_index.lookup(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_globalotc_bbo_xdp_v2_5.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_globalotc_bbo_xdp_v2_5.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_globalotc_bbo_xdp_v2_5.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: Binary
  index, retransmit_method = nyse_globalotc_bbo_xdp_v2_5.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_globalotc_bbo_xdp_v2_5.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_globalotc_bbo_xdp_v2_5.heartbeat_response_message.size =
  nyse_globalotc_bbo_xdp_v2_5.source_id.size

-- Display: Heartbeat Response Message
nyse_globalotc_bbo_xdp_v2_5.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_globalotc_bbo_xdp_v2_5.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_globalotc_bbo_xdp_v2_5.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_globalotc_bbo_xdp_v2_5.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_globalotc_bbo_xdp_v2_5.request_response_message = {}

-- Size: Request Response Message
nyse_globalotc_bbo_xdp_v2_5.request_response_message.size =
  nyse_globalotc_bbo_xdp_v2_5.request_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.begin_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.end_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.source_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.product_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.channel_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.status.size

-- Display: Request Response Message
nyse_globalotc_bbo_xdp_v2_5.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_globalotc_bbo_xdp_v2_5.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: Binary
  index, request_seq_num = nyse_globalotc_bbo_xdp_v2_5.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_globalotc_bbo_xdp_v2_5.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_globalotc_bbo_xdp_v2_5.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_globalotc_bbo_xdp_v2_5.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_globalotc_bbo_xdp_v2_5.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_globalotc_bbo_xdp_v2_5.channel_id.dissect(buffer, index, packet, parent)

  -- Status: ASCII
  index, status = nyse_globalotc_bbo_xdp_v2_5.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_globalotc_bbo_xdp_v2_5.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.request_response_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_globalotc_bbo_xdp_v2_5.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_globalotc_bbo_xdp_v2_5.retransmission_request_message.size =
  nyse_globalotc_bbo_xdp_v2_5.begin_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.end_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.source_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.product_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.channel_id.size

-- Display: Retransmission Request Message
nyse_globalotc_bbo_xdp_v2_5.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_globalotc_bbo_xdp_v2_5.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_globalotc_bbo_xdp_v2_5.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_globalotc_bbo_xdp_v2_5.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_globalotc_bbo_xdp_v2_5.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_globalotc_bbo_xdp_v2_5.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_globalotc_bbo_xdp_v2_5.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_globalotc_bbo_xdp_v2_5.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.size =
  nyse_globalotc_bbo_xdp_v2_5.symbol_index.size + 
  nyse_globalotc_bbo_xdp_v2_5.symbol.size + 
  nyse_globalotc_bbo_xdp_v2_5.reserved_1.size + 
  nyse_globalotc_bbo_xdp_v2_5.market_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.system_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.exchange_code.size + 
  nyse_globalotc_bbo_xdp_v2_5.price_scale_code.size + 
  nyse_globalotc_bbo_xdp_v2_5.security_type.size + 
  nyse_globalotc_bbo_xdp_v2_5.lot_size.size + 
  nyse_globalotc_bbo_xdp_v2_5.prev_close_price.size + 
  nyse_globalotc_bbo_xdp_v2_5.prev_close_volume.size + 
  nyse_globalotc_bbo_xdp_v2_5.price_resolution.size + 
  nyse_globalotc_bbo_xdp_v2_5.round_lot.size + 
  nyse_globalotc_bbo_xdp_v2_5.mpv.size + 
  nyse_globalotc_bbo_xdp_v2_5.unit_of_trade.size + 
  nyse_globalotc_bbo_xdp_v2_5.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_globalotc_bbo_xdp_v2_5.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_globalotc_bbo_xdp_v2_5.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: reserved
  if show.padding then
    index, reserved_1 = nyse_globalotc_bbo_xdp_v2_5.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + nyse_globalotc_bbo_xdp_v2_5.reserved_1.size
  end

  -- Market Id: Binary
  index, market_id = nyse_globalotc_bbo_xdp_v2_5.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_globalotc_bbo_xdp_v2_5.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_globalotc_bbo_xdp_v2_5.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_globalotc_bbo_xdp_v2_5.price_scale_code.dissect(buffer, index, packet, parent)

  -- Store Price Scale Code Value
  nyse_globalotc_bbo_xdp_v2_5.price_scale_code.current = price_scale_code

  if not packet.visited then
    nyse_globalotc_bbo_xdp_v2_5.conversation.current.price_scale_code.last = price_scale_code
  end

  -- Security Type: ASCII
  index, security_type = nyse_globalotc_bbo_xdp_v2_5.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_globalotc_bbo_xdp_v2_5.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_globalotc_bbo_xdp_v2_5.prev_close_price_calculate.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_globalotc_bbo_xdp_v2_5.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_globalotc_bbo_xdp_v2_5.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_globalotc_bbo_xdp_v2_5.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: Binary
  index, mpv = nyse_globalotc_bbo_xdp_v2_5.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: Binary
  index, unit_of_trade = nyse_globalotc_bbo_xdp_v2_5.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: reserved
  if show.padding then
    index, reserved_2 = nyse_globalotc_bbo_xdp_v2_5.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + nyse_globalotc_bbo_xdp_v2_5.reserved_2.size
  end

  -- Cache Symbol Index Mapping Message record by symbol_index
  if show.records and not packet.visited then
    nyse_globalotc_bbo_xdp_v2_5.conversation.current.symbol_index_mapping_message[symbol_index] = {
      record_frame = packet.number,
      record_previous = nyse_globalotc_bbo_xdp_v2_5.conversation.current.symbol_index_mapping_message[symbol_index],
      symbol_index = symbol_index,
      symbol = symbol,
      price_scale_code = price_scale_code,
    }
  end

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_globalotc_bbo_xdp_v2_5.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_globalotc_bbo_xdp_v2_5.source_time_reference_message.size =
  nyse_globalotc_bbo_xdp_v2_5.id.size + 
  nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.size + 
  nyse_globalotc_bbo_xdp_v2_5.source_time.size

-- Display: Source Time Reference Message
nyse_globalotc_bbo_xdp_v2_5.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_globalotc_bbo_xdp_v2_5.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_globalotc_bbo_xdp_v2_5.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_globalotc_bbo_xdp_v2_5.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_globalotc_bbo_xdp_v2_5.source_time.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_globalotc_bbo_xdp_v2_5.source_time.current = source_time

  if not packet.visited then
    nyse_globalotc_bbo_xdp_v2_5.conversation.current.source_time.last = source_time
  end

  return index
end

-- Dissect: Source Time Reference Message
nyse_globalotc_bbo_xdp_v2_5.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_globalotc_bbo_xdp_v2_5.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_globalotc_bbo_xdp_v2_5.sequence_number_reset_message.size =
  nyse_globalotc_bbo_xdp_v2_5.source_time.size + 
  nyse_globalotc_bbo_xdp_v2_5.source_time_ns.size + 
  nyse_globalotc_bbo_xdp_v2_5.product_id.size + 
  nyse_globalotc_bbo_xdp_v2_5.channel_id.size

-- Display: Sequence Number Reset Message
nyse_globalotc_bbo_xdp_v2_5.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_globalotc_bbo_xdp_v2_5.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_globalotc_bbo_xdp_v2_5.source_time.dissect(buffer, index, packet, parent)

  -- Store Source Time Value
  nyse_globalotc_bbo_xdp_v2_5.source_time.current = source_time

  if not packet.visited then
    nyse_globalotc_bbo_xdp_v2_5.conversation.current.source_time.last = source_time
  end

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_globalotc_bbo_xdp_v2_5.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_globalotc_bbo_xdp_v2_5.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_globalotc_bbo_xdp_v2_5.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_globalotc_bbo_xdp_v2_5.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_globalotc_bbo_xdp_v2_5.payload = {}

-- Dispatch: Payload
nyse_globalotc_bbo_xdp_v2_5.payload.dispatch = {
  [1] = nyse_globalotc_bbo_xdp_v2_5.sequence_number_reset_message.dissect,
  [2] = nyse_globalotc_bbo_xdp_v2_5.source_time_reference_message.dissect,
  [3] = nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_message.dissect,
  [10] = nyse_globalotc_bbo_xdp_v2_5.retransmission_request_message.dissect,
  [11] = nyse_globalotc_bbo_xdp_v2_5.request_response_message.dissect,
  [12] = nyse_globalotc_bbo_xdp_v2_5.heartbeat_response_message.dissect,
  [13] = nyse_globalotc_bbo_xdp_v2_5.symbol_index_mapping_request_message.dissect,
  [15] = nyse_globalotc_bbo_xdp_v2_5.refresh_request_message.dissect,
  [31] = nyse_globalotc_bbo_xdp_v2_5.message_unavailable_message.dissect,
  [32] = nyse_globalotc_bbo_xdp_v2_5.symbol_clear_message.dissect,
  [33] = nyse_globalotc_bbo_xdp_v2_5.trading_session_change_message.dissect,
  [34] = nyse_globalotc_bbo_xdp_v2_5.security_status_message.dissect,
  [35] = nyse_globalotc_bbo_xdp_v2_5.refresh_header_message.dissect,
  [140] = nyse_globalotc_bbo_xdp_v2_5.quote_message.dissect,
}

-- Dissect: Payload
nyse_globalotc_bbo_xdp_v2_5.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nyse_globalotc_bbo_xdp_v2_5.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_globalotc_bbo_xdp_v2_5.message_header = {}

-- Size: Message Header
nyse_globalotc_bbo_xdp_v2_5.message_header.size =
  nyse_globalotc_bbo_xdp_v2_5.message_size.size + 
  nyse_globalotc_bbo_xdp_v2_5.message_type.size

-- Display: Message Header
nyse_globalotc_bbo_xdp_v2_5.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_globalotc_bbo_xdp_v2_5.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_globalotc_bbo_xdp_v2_5.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, message_type = nyse_globalotc_bbo_xdp_v2_5.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_globalotc_bbo_xdp_v2_5.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_header, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_globalotc_bbo_xdp_v2_5.message = {}

-- Display: Message
nyse_globalotc_bbo_xdp_v2_5.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_globalotc_bbo_xdp_v2_5.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_globalotc_bbo_xdp_v2_5.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 14 branches
  index = nyse_globalotc_bbo_xdp_v2_5.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_globalotc_bbo_xdp_v2_5.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Its fields read only its own bytes: a layout running past them is marked, not raised
  local bounded = buffer(0, math.min(index, buffer:len())):tvb()

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.message, buffer(offset, 0))
    local decoded, failure = pcall(nyse_globalotc_bbo_xdp_v2_5.message.fields, bounded, offset, packet, parent, size_of_message, message_index)
    if not decoded then
      undecoded(failure, parent, nyse_globalotc_bbo_xdp_v2_5.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end
    parent:set_len(size_of_message)
    local display = nyse_globalotc_bbo_xdp_v2_5.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    local decoded, failure = pcall(nyse_globalotc_bbo_xdp_v2_5.message.fields, bounded, offset, packet, parent, size_of_message, message_index)
    if not decoded then
      undecoded(failure, parent, nyse_globalotc_bbo_xdp_v2_5.experts.undecoded, "Message does not decode within its "..size_of_message.." bytes")
    end

    return index
  end
end

-- Send Time
nyse_globalotc_bbo_xdp_v2_5.send_time = {}

-- Size: Send Time
nyse_globalotc_bbo_xdp_v2_5.send_time.size =
  nyse_globalotc_bbo_xdp_v2_5.seconds.size + 
  nyse_globalotc_bbo_xdp_v2_5.nanoseconds.size

-- Display: Send Time
nyse_globalotc_bbo_xdp_v2_5.send_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  local format = nyse_globalotc_bbo_xdp_v2_5.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
  return os.date(format, seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Send Time
nyse_globalotc_bbo_xdp_v2_5.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_globalotc_bbo_xdp_v2_5.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_globalotc_bbo_xdp_v2_5.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds) * 1000000000 + nanoseconds

  return index, send_time
end

-- Dissect: Send Time
nyse_globalotc_bbo_xdp_v2_5.send_time.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- An absolute time item carries its value from the moment it is created,
    -- so the parts are read here rather than taken from the fields below it
    local seconds = buffer(offset, 4):le_uint()
    local nanoseconds = buffer(offset + 4, 4):le_uint()
    local length = nyse_globalotc_bbo_xdp_v2_5.send_time.size
    -- A field's absolute time base is fixed when it is declared, so the
    -- protocol declares one per base and the preference picks between them
    local field = omi_nyse_globalotc_bbo_xdp_v2_5.fields.send_time_utc
    if nyse_globalotc_bbo_xdp_v2_5.timestamp_format == 2 then field = omi_nyse_globalotc_bbo_xdp_v2_5.fields.send_time end
    parent = parent:add(field, buffer(offset, length), NSTime.new(seconds, nanoseconds))
    local index = nyse_globalotc_bbo_xdp_v2_5.send_time.fields(buffer, offset, packet, parent)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_globalotc_bbo_xdp_v2_5.packet_header = {}

-- Size: Packet Header
nyse_globalotc_bbo_xdp_v2_5.packet_header.size =
  nyse_globalotc_bbo_xdp_v2_5.packet_size.size + 
  nyse_globalotc_bbo_xdp_v2_5.delivery_flag.size + 
  nyse_globalotc_bbo_xdp_v2_5.message_count.size + 
  nyse_globalotc_bbo_xdp_v2_5.sequence_number.size + 
  nyse_globalotc_bbo_xdp_v2_5.send_time.size

-- Display: Packet Header
nyse_globalotc_bbo_xdp_v2_5.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_globalotc_bbo_xdp_v2_5.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_globalotc_bbo_xdp_v2_5.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_globalotc_bbo_xdp_v2_5.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_globalotc_bbo_xdp_v2_5.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_globalotc_bbo_xdp_v2_5.sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_globalotc_bbo_xdp_v2_5.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_globalotc_bbo_xdp_v2_5.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5.fields.packet_header, buffer(offset, 0))
    local index = nyse_globalotc_bbo_xdp_v2_5.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_globalotc_bbo_xdp_v2_5.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_globalotc_bbo_xdp_v2_5.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_globalotc_bbo_xdp_v2_5.packet = {}

-- Verify required size of Udp packet
nyse_globalotc_bbo_xdp_v2_5.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_globalotc_bbo_xdp_v2_5.packet_header.size
end

-- Dissect Packet
nyse_globalotc_bbo_xdp_v2_5.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nyse_globalotc_bbo_xdp_v2_5.conversation.data(packet)
  if not packet.visited then
    data.source_time.frames[packet.number] = data.source_time.last
    data.source_time.frames[packet.number] = data.source_time.last
    data.price_scale_code.frames[packet.number] = data.price_scale_code.last
    data.source_time.frames[packet.number] = data.source_time.last
    data.source_time.frames[packet.number] = data.source_time.last
    data.source_time.frames[packet.number] = data.source_time.last
  end
  nyse_globalotc_bbo_xdp_v2_5.source_time.current = data.source_time.frames[packet.number]
  nyse_globalotc_bbo_xdp_v2_5.source_time.current = data.source_time.frames[packet.number]
  nyse_globalotc_bbo_xdp_v2_5.price_scale_code.current = data.price_scale_code.frames[packet.number]
  nyse_globalotc_bbo_xdp_v2_5.source_time.current = data.source_time.frames[packet.number]
  nyse_globalotc_bbo_xdp_v2_5.source_time.current = data.source_time.frames[packet.number]
  nyse_globalotc_bbo_xdp_v2_5.source_time.current = data.source_time.frames[packet.number]
  nyse_globalotc_bbo_xdp_v2_5.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_globalotc_bbo_xdp_v2_5.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Stop where the payload ends inside the next size
    if index + 2 > end_of_payload then
      parent:add_proto_expert_info(nyse_globalotc_bbo_xdp_v2_5.experts.undecoded, "Message Size runs past the end of the payload")
      break
    end

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_globalotc_bbo_xdp_v2_5.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_globalotc_bbo_xdp_v2_5.init()
  nyse_globalotc_bbo_xdp_v2_5.source_time.current = nil
  nyse_globalotc_bbo_xdp_v2_5.price_scale_code.current = nil
  nyse_globalotc_bbo_xdp_v2_5.conversation.current = nil
  nyse_globalotc_bbo_xdp_v2_5.conversation.flows = {}
end

-- Dissector for Nyse GlobalOtc Bbo Xdp 2.5
function omi_nyse_globalotc_bbo_xdp_v2_5.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nyse_globalotc_bbo_xdp_v2_5.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_globalotc_bbo_xdp_v2_5, buffer(), omi_nyse_globalotc_bbo_xdp_v2_5.description, "("..buffer:len().." Bytes)")
  return nyse_globalotc_bbo_xdp_v2_5.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nyse_globalotc_bbo_xdp_v2_5.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(18, 2):le_uint()

  -- Sequence Number Reset Message
  if message_type == 1 then
    return true
  end

  -- Source Time Reference Message
  if message_type == 2 then
    return true
  end

  -- Symbol Index Mapping Message
  if message_type == 3 then
    return true
  end

  -- Retransmission Request Message
  if message_type == 10 then
    return true
  end

  -- Request Response Message
  if message_type == 11 then
    return true
  end

  -- Heartbeat Response Message
  if message_type == 12 then
    return true
  end

  -- Symbol Index Mapping Request Message
  if message_type == 13 then
    return true
  end

  -- Refresh Request Message
  if message_type == 15 then
    return true
  end

  -- Message Unavailable Message
  if message_type == 31 then
    return true
  end

  -- Symbol Clear Message
  if message_type == 32 then
    return true
  end

  -- Trading Session Change Message
  if message_type == 33 then
    return true
  end

  -- Security Status Message
  if message_type == 34 then
    return true
  end

  -- Refresh Header Message
  if message_type == 35 then
    return true
  end

  -- Quote Message
  if message_type == 140 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse GlobalOtc Bbo Xdp 2.5 (Udp)
local function omi_nyse_globalotc_bbo_xdp_v2_5_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_globalotc_bbo_xdp_v2_5.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not nyse_globalotc_bbo_xdp_v2_5.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_globalotc_bbo_xdp_v2_5
  omi_nyse_globalotc_bbo_xdp_v2_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse GlobalOtc Bbo Xdp 2.5
omi_nyse_globalotc_bbo_xdp_v2_5:register_heuristic("udp", omi_nyse_globalotc_bbo_xdp_v2_5_udp_heuristic)

-- Register Nyse GlobalOtc Bbo Xdp 2.5 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nyse_globalotc_bbo_xdp_v2_5)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.5
--   Date: Monday, January 21, 2019
--   Specification: global_otc_xdp_bbo_client_specification.pdf
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
