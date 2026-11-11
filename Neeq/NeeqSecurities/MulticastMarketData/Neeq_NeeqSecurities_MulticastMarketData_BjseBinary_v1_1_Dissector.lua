-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1 Protocol
local omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1 = Proto("Omi.Neeq.NeeqSecurities.MulticastMarketData.BjseBinary.v1.1", "Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1")

-- Protocol table
local neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1 Fields
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.appl_beg_seq_num = ProtoField.new("Appl Beg Seq Num", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.applbegseqnum", ftypes.INT64, nil, nil, nil, "Starting sequence number, effective when ResendType = 1")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.appl_end_seq_num = ProtoField.new("Appl End Seq Num", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.applendseqnum", ftypes.INT64, nil, nil, nil, "Ending sequence number, effective when ResendType = 1; when 0 the gateway sets it to the highest sequence number of the channel it holds in memory")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.appl_last_seq_num = ProtoField.new("Appl Last Seq Num", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.appllastseqnum", ftypes.INT64, nil, nil, nil, "Sequence number of the last market data message")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.applseqnum", ftypes.INT64, nil, nil, nil, "Message sequence number, counting from 1")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.ask_appl_seq_num = ProtoField.new("Ask Appl Seq Num", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.askapplseqnum", ftypes.INT64, nil, nil, nil, "Sell order index, counting from 1; 0 means no corresponding order")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.auction_value_trade = ProtoField.new("Auction Value Trade", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.auctionvaluetrade", ftypes.DOUBLE, nil, nil, nil, "Matching trade value")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.auction_volume_trade = ProtoField.new("Auction Volume Trade", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.auctionvolumetrade", ftypes.DOUBLE, nil, nil, nil, "Matching trade volume")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.bid_appl_seq_num = ProtoField.new("Bid Appl Seq Num", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.bidapplseqnum", ftypes.INT64, nil, nil, nil, "Buy order index, counting from 1; 0 means no corresponding order")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.body_length = ProtoField.new("Body Length", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.bodylength", ftypes.UINT32, nil, nil, nil, "The length of a message body")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.businessrejectreason", ftypes.UINT16, nil, nil, nil, "Reject reason")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.businessrejectrefid", ftypes.STRING, nil, nil, nil, "Business layer ID of the rejected message")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.business_reject_text = ProtoField.new("Business Reject Text", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.businessrejecttext", ftypes.STRING, nil, nil, nil, "Reject reason text, up to 50 bytes that may include Chinese characters")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.channel = ProtoField.new("Channel", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.channel", ftypes.UINT16, nil, nil, nil, "Channel number; channels in the same market are not repeated and the data content of one channel is in order")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.channel_no = ProtoField.new("Channel No", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.channelno", ftypes.UINT16, nil, nil, nil, "Channel code")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.checksum = ProtoField.new("Checksum", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.checksum", ftypes.UINT32, nil, nil, nil, "Adler32 checksum calculated from the start of the packet header to the end of the packet body")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.compress = ProtoField.new("Compress", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.compress", ftypes.UINT16, {[0]="No Compression", [1]="Zlib Compression", [2]="Reserved 2", [3]="Reserved 3"}, base.DEC, 0x0C00, "The mark of compression applied to the packet body")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.compressed_size = ProtoField.new("Compressed Size", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.compressedsize", ftypes.UINT32, nil, nil, nil, "The length of the transmitted packet body after compression")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.confirm_id = ProtoField.new("Confirm Id", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.confirmid", ftypes.UINT32, nil, nil, nil, "Trade agreement number")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.encrypted_size = ProtoField.new("Encrypted Size", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.encryptedsize", ftypes.UINT32, nil, nil, nil, "The length of the transmitted packet body after encryption")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.encryption = ProtoField.new("Encryption", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.encryption", ftypes.UINT16, {[0]="No Encryption", [1]="User Defined Encryption", [2]="Reserved 2", [3]="Reserved 3"}, base.DEC, 0x0300, "The mark of encryption applied to the packet body")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.end_of_channel = ProtoField.new("End Of Channel", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.endofchannel", ftypes.UINT16, nil, nil, nil, "End of channel flag")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.exec_type = ProtoField.new("Exec Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.exectype", ftypes.STRING, nil, nil, nil, "Execution type")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.expiration_days = ProtoField.new("Expiration Days", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.expirationdays", ftypes.UINT16, nil, nil, nil, "Term in days")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.expiration_type = ProtoField.new("Expiration Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.expirationtype", ftypes.UINT8, nil, nil, nil, "Term type")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.flag = ProtoField.new("Flag", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.flag", ftypes.STRING, nil, nil, nil, "Flag bits identifying packet attributes, most significant bit first")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.header_size = ProtoField.new("Header Size", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.headersize", ftypes.UINT8, nil, nil, nil, "The length of the entire packet header, counted in 4 byte words from Protocol to the end of Padding")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.headline = ProtoField.new("Headline", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.headline", ftypes.STRING, nil, nil, nil, "Announcement title, up to 128 bytes that may include Chinese characters")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.index_md_entries = ProtoField.new("Index Md Entries", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.indexmdentries", ftypes.STRING, nil, nil, nil, "Market data entries giving the index points")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_entries = ProtoField.new("Md Entries", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.mdentries", ftypes.STRING, nil, nil, nil, "Market data entries disclosing the order book, with the orders at each price level nested inside")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_entry_px = ProtoField.new("Md Entry Px", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.mdentrypx", ftypes.DOUBLE, nil, nil, nil, "Price, N18(5)")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_entry_size = ProtoField.new("Md Entry Size", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.mdentrysize", ftypes.DOUBLE, nil, nil, nil, "Quantity. In a spot bond trading snapshot the last price entry (MDEntryType 2) uses it for the trading method that produced the price: 0.001 = matching, 0.002 = click, 0.003 = negotiated, 0.004 = inquiry, 0.005 = bidding")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_entry_type = ProtoField.new("Md Entry Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.mdentrytype", ftypes.STRING, nil, nil, nil, "Market data entry type")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_price_level = ProtoField.new("Md Price Level", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.mdpricelevel", ftypes.UINT16, nil, nil, nil, "Bid or offer book level")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_stream_i_ds = ProtoField.new("Md Stream I Ds", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.mdstreamids", ftypes.STRING, nil, nil, nil, "One entry per market data category carried on the channel")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_stream_id = ProtoField.new("Md Stream Id", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.mdstreamid", ftypes.STRING, nil, nil, nil, "Market data category")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.mddp_market_id = ProtoField.new("Mddp Market Id", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.mddpmarketid", ftypes.UINT16, nil, nil, nil, "Market identifier, a reserved field currently fixed as 1. Qualified with the Mddp prefix because the Bjse Binary payload declares its own MarketID, a Char[8] market code, and an unqualified name merges with it")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.message_block = ProtoField.new("Message Block", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.messageblock", ftypes.STRING, nil, nil, nil, "Bjse Mddp message block, an optional table of message lengths followed by the application messages; this is the packet body proper, named apart from the Packet Body branch that selects it")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.message_length = ProtoField.new("Message Length", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.messagelength", ftypes.UINT32, nil, nil, nil, "The length in bytes of one application message in the packet body")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.message_lengths = ProtoField.new("Message Lengths", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.messagelengths", ftypes.STRING, nil, nil, nil, "Table giving the length of each application message in the packet, letting a receiver split messages without parsing them")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.msg_count = ProtoField.new("Msg Count", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.msgcount", ftypes.UINT16, nil, nil, nil, "The count of application messages carried in the packet body")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.msg_header = ProtoField.new("Msg Header", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.msgheader", ftypes.UINT16, {[0]="Absence Of Leader Length", [1]="Existence Of Leader Length"}, base.DEC, 0x0080, "Leader length flag, marking the presence of the Message Lengths table ahead of the messages")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.msg_type = ProtoField.new("Msg Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.msgtype", ftypes.UINT32, nil, nil, nil, "Type of a message")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.news_id = ProtoField.new("News Id", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.newsid", ftypes.STRING, nil, nil, nil, "Announcement identifier, effective when ResendType = 2; an empty string requests the announcement summary")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.news_type = ProtoField.new("News Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.newstype", ftypes.UINT8, nil, nil, nil, "Announcement type")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.no_md_entries = ProtoField.new("No Md Entries", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.nomdentries", ftypes.UINT32, nil, nil, nil, "Number of market data entries")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.no_md_stream_id = ProtoField.new("No Md Stream Id", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.nomdstreamid", ftypes.UINT32, nil, nil, nil, "Number of market data categories")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.no_orders = ProtoField.new("No Orders", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.noorders", ftypes.UINT32, nil, nil, nil, "Number of orders disclosed at the price level; 0 means not disclosed")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.no_sub_trading_phase_codes = ProtoField.new("No Sub Trading Phase Codes", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.nosubtradingphasecodes", ftypes.UINT32, nil, nil, nil, "Number of trading phase subdivisions, reserved")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.no_switch = ProtoField.new("No Switch", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.noswitch", ftypes.UINT32, nil, nil, nil, "Number of switches")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.num_trades = ProtoField.new("Num Trades", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.numtrades", ftypes.INT64, nil, nil, nil, "Number of trades")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.number_of_orders = ProtoField.new("Number Of Orders", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.numberoforders", ftypes.INT64, nil, nil, nil, "Total number of orders at the price level; 0 means not disclosed")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.ord_type = ProtoField.new("Ord Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.ordtype", ftypes.STRING, nil, nil, nil, "Order type")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.order_qty = ProtoField.new("Order Qty", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.orderqty", ftypes.DOUBLE, nil, nil, nil, "Order quantity")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.orders = ProtoField.new("Orders", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.orders", ftypes.STRING, nil, nil, nil, "The individual order quantities disclosed at this price level")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.orig_time = ProtoField.new("Orig Time", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.origtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the channel heartbeat was generated")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.orig_time_utc = ProtoField.new("Orig Time", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.origtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the channel heartbeat was generated")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.original_size = ProtoField.new("Original Size", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.originalsize", ftypes.UINT32, nil, nil, nil, "The length of the packet body before compression and encryption")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.packet_trailer = ProtoField.new("Packet Trailer", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.packettrailer", ftypes.STRING, nil, nil, nil, "Bjse Mddp Packet Trailer, transmitted without encryption")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.packet_type = ProtoField.new("Packet Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.packettype", ftypes.UINT16, {[0]="Management Packet", [1]="Application Packet"}, base.DEC, 0x6000, "Mark of packet type")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.padding = ProtoField.new("Padding", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.padding", ftypes.BYTES, nil, nil, nil, "Byte aligned padding, meaningless, ensuring the length of the packet header is an integer multiple of 4 bytes")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.poss_dup_flag = ProtoField.new("Poss Dup Flag", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.possdupflag", ftypes.UINT16, {[0]="Not Possible Duplicate Packet", [1]="Possible Duplicate Packet"}, base.DEC, 0x8000, "Identifies the data in the packet as possible duplicate data, when Seq Num may be less than the expected sequence number")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.pre_close_px = ProtoField.new("Pre Close Px", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.preclosepx", ftypes.DOUBLE, nil, nil, nil, "Previous close price")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.price = ProtoField.new("Price", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.price", ftypes.DOUBLE, nil, nil, nil, "Order price")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.protocol = ProtoField.new("Protocol", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.protocol", ftypes.UINT8, nil, nil, nil, "Protocol identifier, fixed as 0xFF")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.raw_data = ProtoField.new("Raw Data", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.rawdata", ftypes.BYTES, nil, nil, nil, "Binary data, its length given by the leading RawDataLength")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.raw_data_format = ProtoField.new("Raw Data Format", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.rawdataformat", ftypes.STRING, nil, nil, nil, "Binary data format, such as TXT, PDF or DOC")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.raw_data_length = ProtoField.new("Raw Data Length", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.rawdatalength", ftypes.UINT32, nil, nil, nil, "Binary data length")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.refmsgtype", ftypes.UINT32, nil, nil, nil, "Message type of the rejected message")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.refseqnum", ftypes.INT64, nil, nil, nil, "Sequence number of the rejected message")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.reject_text = ProtoField.new("Reject Text", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.rejecttext", ftypes.STRING, nil, nil, nil, "Effective only on the gateway reply; when the request is rejected, the error code is returned here")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.resend_by_seq_num = ProtoField.new("Resend By Seq Num", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.resendbyseqnum", ftypes.UINT16, {[0]="Not Support", [1]="Support"}, base.DEC, 0x1000, "Whether the sender supports resending by the Seq Num of the packet")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.resend_status = ProtoField.new("Resend Status", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.resendstatus", ftypes.UINT8, nil, nil, nil, "Retransmission status, effective only on the gateway reply")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.resend_type = ProtoField.new("Resend Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.resendtype", ftypes.UINT8, nil, nil, nil, "Retransmission type")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.reserved_06 = ProtoField.new("Reserved 06", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.reserved06", ftypes.UINT16, nil, base.DEC, 0x007F, "Reserved")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_id = ProtoField.new("Security Id", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.securityid", ftypes.STRING, nil, nil, nil, "Security code, six digits behind two leading spaces")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_id_source = ProtoField.new("Security Id Source", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.securityidsource", ftypes.STRING, nil, nil, nil, "Security code source, behind one leading space")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_switch_status = ProtoField.new("Security Switch Status", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.securityswitchstatus", ftypes.UINT16, nil, nil, nil, "Switch status")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_switch_type = ProtoField.new("Security Switch Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.securityswitchtype", ftypes.UINT16, nil, nil, nil, "Switch type")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_symbol = ProtoField.new("Security Symbol", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.securitysymbol", ftypes.STRING, nil, nil, nil, "Security short name")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.sender_id = ProtoField.new("Sender Id", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.senderid", ftypes.UINT8, nil, nil, nil, "Identifies different senders on the same multicast address and port")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.seq_num = ProtoField.new("Seq Num", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.seqnum", ftypes.INT64, nil, nil, nil, "Sequence number of the packet, maintained per sender per channel and advancing by one for each message carried")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.settl_period = ProtoField.new("Settl Period", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.settlperiod", ftypes.STRING, nil, nil, nil, "Settlement period")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.settl_type = ProtoField.new("Settl Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.settltype", ftypes.STRING, nil, nil, nil, "Settlement method")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.side = ProtoField.new("Side", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.side", ftypes.STRING)
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.stock_num = ProtoField.new("Stock Num", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.stocknum", ftypes.UINT32, nil, nil, nil, "Number of securities")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_code = ProtoField.new("Sub Trading Phase Code", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.subtradingphasecode", ftypes.STRING, nil, nil, nil, "Trading phase code of the trading type")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_codes = ProtoField.new("Sub Trading Phase Codes", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.subtradingphasecodes", ftypes.STRING, nil, nil, nil, "One entry per trading phase subdivision, giving its code and trading type")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.switch = ProtoField.new("Switch", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.switch", ftypes.STRING, nil, nil, nil, "One entry per security switch, giving its type and status")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.total_value_trade = ProtoField.new("Total Value Trade", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.totalvaluetrade", ftypes.DOUBLE, nil, nil, nil, "Total trade value")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.total_volume_trade = ProtoField.new("Total Volume Trade", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.totalvolumetrade", ftypes.DOUBLE, nil, nil, nil, "Total trade volume")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trade_money = ProtoField.new("Trade Money", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.trademoney", ftypes.DOUBLE, nil, nil, nil, "Trade value in yuan")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trade_price = ProtoField.new("Trade Price", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.tradeprice", ftypes.DOUBLE)
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trade_qty = ProtoField.new("Trade Qty", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.tradeqty", ftypes.DOUBLE, nil, nil, nil, "Trade quantity")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trade_time = ProtoField.new("Trade Time", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.tradetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of the most recent trade")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trade_time_utc = ProtoField.new("Trade Time", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.tradetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of the most recent trade")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trading_phase_code = ProtoField.new("Trading Phase Code", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.tradingphasecode", ftypes.STRING, nil, nil, nil, "Trading phase code of the product. Only the first two characters are used: character 0 is the phase, S = start before the open, O = opening call auction, T = continuous trading, E = closed, H = temporary halt, V = volatility interruption; character 1 is 0 = cannot trade normally (before the open, suspended all day or after the close) or 1 = can trade normally")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trading_type = ProtoField.new("Trading Type", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.tradingtype", ftypes.UINT8)
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.transact_time = ProtoField.new("Transact Time", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Order time")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.transact_time_utc = ProtoField.new("Transact Time", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Order time")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.version = ProtoField.new("Version", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.version", ftypes.UINT8, nil, nil, nil, "Protocol version number, currently 0x01")

-- Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1 Framing
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.message_header = ProtoField.new("Message Header", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Bjse Binary message header, defining the type and body length of a message")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.messages = ProtoField.new("Messages", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.messages", ftypes.STRING, nil, nil, nil, "Bjse Binary application messages carried by this packet; messages are never transmitted across packets")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.packet = ProtoField.new("Packet", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.packet", ftypes.STRING, nil, nil, nil, "Bjse Mddp Multicast Packet")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.packet_header = ProtoField.new("Packet Header", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.packetheader", ftypes.STRING, nil, nil, nil, "Bjse Mddp Packet Header, transmitted without encryption")

-- Neeq NeeqSecurities MulticastMarketData 1.1 Application Messages
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.agreement_trading_order_tick_message = ProtoField.new("Agreement Trading Order Tick Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.agreementtradingordertickmessage", ftypes.STRING, nil, nil, nil, "Order tick of agreement trading on the trading support platform, market data category 021, published in real time; not yet enabled.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.announcement_message = ProtoField.new("Announcement Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.announcementmessage", ftypes.STRING, nil, nil, nil, "Carries an announcement file; an empty NewsID marks the announcement summary, a text list of NewsNo, NewsID, Headline, RawDataLength, OrigTime and NewsType for every announcement issued. Under the multicast distribution protocol with announcement landing enabled, each announcement is sent as a summary that carries no content and has RawDataLength fixed to 0, its content being stored as a file.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.auction_trading_snapshot_message = ProtoField.new("Auction Trading Snapshot Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.auctiontradingsnapshotmessage", ftypes.STRING, nil, nil, nil, "Snapshot of centralized auction trading of stocks, convertible bonds and other cash products, market data category 020, published every 3 seconds; not yet enabled.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.bond_spot_matching_large_order_tick_message = ProtoField.new("Bond Spot Matching Large Order Tick Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.bondspotmatchinglargeordertickmessage", ftypes.STRING, nil, nil, nil, "Order tick of large lot matching in spot bond trading, market data category 011, published in real time.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.bond_spot_matching_large_trade_tick_message = ProtoField.new("Bond Spot Matching Large Trade Tick Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.bondspotmatchinglargetradetickmessage", ftypes.STRING, nil, nil, nil, "Trade tick of large lot matching in spot bond trading, market data category 011, published in real time.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.bond_spot_negotiated_trade_tick_message = ProtoField.new("Bond Spot Negotiated Trade Tick Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.bondspotnegotiatedtradetickmessage", ftypes.STRING, nil, nil, nil, "Trade tick of negotiated trading in spot bond trading, market data category 012, published in real time.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.bond_spot_trading_snapshot_message = ProtoField.new("Bond Spot Trading Snapshot Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.bondspottradingsnapshotmessage", ftypes.STRING, nil, nil, nil, "Snapshot of spot bond trading, market data category 010, published every 3 seconds.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.business_reject_message = ProtoField.new("Business Reject Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.businessrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an application message that satisfies the session layer rules but not the business layer rules, mainly an invalid retransmission request.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.channel_heartbeat_message = ProtoField.new("Channel Heartbeat Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.channelheartbeatmessage", ftypes.STRING, nil, nil, nil, "Sent on a market data channel every 3 seconds, carrying the sequence number of the last tick message on the channel.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.index_snapshot_message = ProtoField.new("Index Snapshot Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.indexsnapshotmessage", ftypes.STRING, nil, nil, nil, "Snapshot of Beijing Stock Exchange indices and volume statistics, market data category 030, published every 3 seconds; not yet enabled.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.retransmission_message = ProtoField.new("Retransmission Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.retransmissionmessage", ftypes.STRING, nil, nil, nil, "Sent by the Vendor Supplied System to request tick data or announcements again; the gateway returns the data and then the same message type to mark the retransmission complete or report why it failed, so both sides transmit this message type.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.securities_lending_order_tick_message = ProtoField.new("Securities Lending Order Tick Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.securitieslendingordertickmessage", ftypes.STRING, nil, nil, nil, "Order tick of refinancing securities lending, market data category 023, published in real time; not yet enabled.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.securities_lending_trade_tick_message = ProtoField.new("Securities Lending Trade Tick Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.securitieslendingtradetickmessage", ftypes.STRING, nil, nil, nil, "Trade tick of refinancing securities lending, market data category 023, published in real time; it has no extension fields and is not yet enabled.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_real_time_status_message = ProtoField.new("Security Real Time Status Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.securityrealtimestatusmessage", ftypes.STRING, nil, nil, nil, "Real time status of a security, published every 10 minutes; the switch types are not yet enabled.")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.snapshot_channel_statistics_message = ProtoField.new("Snapshot Channel Statistics Message", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.snapshotchannelstatisticsmessage", ftypes.STRING, nil, nil, nil, "Sent by each snapshot channel every 15 seconds.")

-- Neeq NeeqSecurities MulticastMarketData 1.1 Session Messages
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.data_flow_end = ProtoField.new("Data Flow End", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.dataflowend", ftypes.BYTES, nil, nil, nil, "A special data flow heartbeat packet informing the receiver that all service data on the current data flow has been sent, marked by a Msg Count of 0xFFFF on a non zero Channel")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.data_flow_heartbeat = ProtoField.new("Data Flow Heartbeat", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.dataflowheartbeat", ftypes.BYTES, nil, nil, nil, "Sent periodically on a data flow whose Resend By Seq Num flag is set, to inform the receiver of the sequence number of the last data message sent on the flow; the Seq Num is 0 when no application message has been sent. It has no packet body")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.multicast_heartbeat = ProtoField.new("Multicast Heartbeat", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.multicastheartbeat", ftypes.BYTES, nil, nil, nil, "Sent every 5 seconds on a multicast flow carrying no application data so a receiver can detect the status of the multicast channel; it has no packet body and can be discarded on receipt. Failure to receive any data within 3 heartbeat periods indicates the multicast source is faulty")

-- Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1 Generated Fields
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.index_md_entries_index = ProtoField.new("Index Md Entries Index", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.indexmdentriesindex", ftypes.UINT16)
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_entries_index = ProtoField.new("Md Entries Index", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.mdentriesindex", ftypes.UINT16)
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_stream_i_ds_index = ProtoField.new("Md Stream I Ds Index", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.mdstreamidsindex", ftypes.UINT16)
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.message_lengths_index = ProtoField.new("Message Lengths Index", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.messagelengthsindex", ftypes.UINT16)
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.messages_index = ProtoField.new("Messages Index", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.messagesindex", ftypes.UINT16)
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.orders_index = ProtoField.new("Orders Index", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.ordersindex", ftypes.UINT16)
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_codes_index = ProtoField.new("Sub Trading Phase Codes Index", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.subtradingphasecodesindex", ftypes.UINT16)
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.switch_index = ProtoField.new("Switch Index", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.switchindex", ftypes.UINT16)
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.messages_sequence_number = ProtoField.new("Messages Sequence Number", "neeq.neeqsecurities.multicastmarketdata.bjsebinary.v1.1.messagessequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding = ENC_GB18030

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1 Element Dissection Options
show.application_messages = true
show.structs = true
show.repeating_groups = true
show.headers = true
show.padding = false
show.indexes = true
show.sequences = true

-- Register Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1 Show Options
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_application_messages then
    show.application_messages = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_headers then
    show.headers = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_headers
  end
  if show.padding ~= omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_padding then
    show.padding = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_padding
  end
  if show.repeating_groups ~= omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_repeating_groups then
    show.repeating_groups = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_repeating_groups
  end
  if show.structs ~= omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_structs then
    show.structs = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_indexes then
    show.indexes = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_indexes
  end
  if show.sequences ~= omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_sequences then
    show.sequences = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.show_sequences
  end
  if neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.timestamp_format ~= omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.timestamp_format then
    neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.timestamp_format = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.prefs.timestamp_format
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

-- trim leading spaces
trim_left_spaces = function(str)
  local start = 1

  while start <= str:len() and str:byte(start) == 0x20 do
    start = start + 1
  end

  return str:sub(start)
end


-- Zlib decompression: wireshark built in inflate (uncompress_zlib from 4.4, uncompress before)
local function zlib_decompress(range)
  local ok, decompressed = pcall(function() return range:uncompress_zlib("Decompressed") end)

  if ok then
    return decompressed
  end

  return range:uncompress("Decompressed")
end
-----------------------------------------------------------------------
-- Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1 Fields
-----------------------------------------------------------------------

-- Appl Beg Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_beg_seq_num = {}

-- Size: Appl Beg Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_beg_seq_num.size = 8

-- Display: Appl Beg Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_beg_seq_num.display = function(value)
  return "Appl Beg Seq Num: "..value
end

-- Dissect: Appl Beg Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_beg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_beg_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_beg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.appl_beg_seq_num, range, value, display)

  return offset + length, value
end

-- Appl End Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_end_seq_num = {}

-- Size: Appl End Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_end_seq_num.size = 8

-- Display: Appl End Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_end_seq_num.display = function(value)
  return "Appl End Seq Num: "..value
end

-- Dissect: Appl End Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_end_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.appl_end_seq_num, range, value, display)

  return offset + length, value
end

-- Appl Last Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_last_seq_num = {}

-- Size: Appl Last Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_last_seq_num.size = 8

-- Display: Appl Last Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_last_seq_num.display = function(value)
  return "Appl Last Seq Num: "..value
end

-- Dissect: Appl Last Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.appl_last_seq_num, range, value, display)

  return offset + length, value
end

-- Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num = {}

-- Size: Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.size = 8

-- Display: Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.display = function(value)
  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Ask Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num = {}

-- Size: Ask Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num.size = 8

-- Display: Ask Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num.display = function(value)
  return "Ask Appl Seq Num: "..value
end

-- Dissect: Ask Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.ask_appl_seq_num, range, value, display)

  return offset + length, value
end

-- Auction Value Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_value_trade = {}

-- Size: Auction Value Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_value_trade.size = 8

-- Display: Auction Value Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_value_trade.display = function(value)
  return "Auction Value Trade: "..value
end

-- Translate: Auction Value Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_value_trade.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Auction Value Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_value_trade.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_value_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_value_trade.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_value_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.auction_value_trade, range, value, display)

  return offset + length, value
end

-- Auction Volume Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_volume_trade = {}

-- Size: Auction Volume Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_volume_trade.size = 8

-- Display: Auction Volume Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_volume_trade.display = function(value)
  return "Auction Volume Trade: "..value
end

-- Translate: Auction Volume Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_volume_trade.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Auction Volume Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_volume_trade.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_volume_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_volume_trade.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_volume_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.auction_volume_trade, range, value, display)

  return offset + length, value
end

-- Bid Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num = {}

-- Size: Bid Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num.size = 8

-- Display: Bid Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num.display = function(value)
  return "Bid Appl Seq Num: "..value
end

-- Dissect: Bid Appl Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.bid_appl_seq_num, range, value, display)

  return offset + length, value
end

-- Body Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.body_length = {}

-- Size: Body Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.body_length.size = 4

-- Display: Body Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.body_length.display = function(value)
  return "Body Length: "..value
end

-- Dissect: Body Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.body_length.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.body_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.body_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.body_length, range, value, display)

  return offset + length, value
end

-- Business Reject Reason
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_reason = {}

-- Size: Business Reject Reason
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_reason.size = 2

-- Display: Business Reject Reason
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_reason.display = function(value)
  return "Business Reject Reason: "..value
end

-- Dissect: Business Reject Reason
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Business Reject Ref Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_ref_id = {}

-- Size: Business Reject Ref Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_ref_id.size = 10

-- Display: Business Reject Ref Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_ref_id.display = function(value)
  return "Business Reject Ref Id: "..value
end

-- Dissect: Business Reject Ref Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_ref_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.business_reject_ref_id, range, value, display)

  return offset + length, value
end

-- Business Reject Text
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_text = {}

-- Size: Business Reject Text
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_text.size = 50

-- Display: Business Reject Text
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_text.display = function(value)
  return "Business Reject Text: "..value
end

-- Dissect: Business Reject Text
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_text.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.business_reject_text, range, value, display)

  return offset + length, value
end

-- Channel
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel = {}

-- Size: Channel
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel.size = 2

-- Display: Channel
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel.display = function(value)
  return "Channel: "..value
end

-- Dissect: Channel
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.channel, range, value, display)

  return offset + length, value
end

-- Channel No
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no = {}

-- Size: Channel No
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size = 2

-- Display: Channel No
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.display = function(value)
  return "Channel No: "..value
end

-- Dissect: Channel No
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.channel_no, range, value, display)

  return offset + length, value
end

-- Checksum
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.checksum = {}

-- Size: Checksum
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.checksum.size = 4

-- Display: Checksum
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.checksum.display = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.checksum.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.checksum, range, value, display)

  return offset + length, value
end

-- Compressed Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.compressed_size = {}

-- Size: Compressed Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.compressed_size.size = 4

-- Display: Compressed Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.compressed_size.display = function(value)
  return "Compressed Size: "..value
end

-- Dissect: Compressed Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.compressed_size.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.compressed_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.compressed_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.compressed_size, range, value, display)

  return offset + length, value
end

-- Confirm Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.confirm_id = {}

-- Size: Confirm Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.confirm_id.size = 4

-- Display: Confirm Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.confirm_id.display = function(value)
  return "Confirm Id: "..value
end

-- Dissect: Confirm Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.confirm_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.confirm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.confirm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.confirm_id, range, value, display)

  return offset + length, value
end

-- Encrypted Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.encrypted_size = {}

-- Size: Encrypted Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.encrypted_size.size = 4

-- Display: Encrypted Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.encrypted_size.display = function(value)
  return "Encrypted Size: "..value
end

-- Dissect: Encrypted Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.encrypted_size.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.encrypted_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.encrypted_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.encrypted_size, range, value, display)

  return offset + length, value
end

-- End Of Channel
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.end_of_channel = {}

-- Size: End Of Channel
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.end_of_channel.size = 2

-- Display: End Of Channel
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.end_of_channel.labels = {
  [0] = "End Of Channel: No (0)",
  [1] = "End Of Channel: Yes (1)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.end_of_channel.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.end_of_channel.labels[value] or "End Of Channel: Unknown("..value..")"
end

-- Dissect: End Of Channel
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.end_of_channel.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.end_of_channel.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.end_of_channel.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.end_of_channel, range, value, display)

  return offset + length, value
end

-- Exec Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type = {}

-- Size: Exec Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.size = 1

-- Display: Exec Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.labels = {
  ["4"] = "Exec Type: Cancelled (4)",
  ["F"] = "Exec Type: Trade (F)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.labels[value] or "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Expiration Days
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_days = {}

-- Size: Expiration Days
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_days.size = 2

-- Display: Expiration Days
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_days.display = function(value)
  return "Expiration Days: "..value
end

-- Dissect: Expiration Days
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_days.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.expiration_days, range, value, display)

  return offset + length, value
end

-- Expiration Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_type = {}

-- Size: Expiration Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_type.size = 1

-- Display: Expiration Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_type.labels = {
  [1] = "Expiration Type: Fixed Term (1)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_type.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_type.labels[value] or "Expiration Type: Unknown("..value..")"
end

-- Dissect: Expiration Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.expiration_type, range, value, display)

  return offset + length, value
end

-- Header Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.header_size = {}

-- Size: Header Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.header_size.size = 1

-- Display: Header Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.header_size.display = function(value)
  return "Header Size: "..value
end

-- Dissect: Header Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.header_size.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.header_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.header_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.header_size, range, value, display)

  return offset + length, value
end

-- Headline
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.headline = {}

-- Size: Headline
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.headline.size = 128

-- Display: Headline
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.headline.display = function(value)
  return "Headline: "..value
end

-- Dissect: Headline
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.headline.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.headline.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.headline.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.headline, range, value, display)

  return offset + length, value
end

-- Md Entry Px
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px = {}

-- Size: Md Entry Px
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px.size = 8

-- Display: Md Entry Px
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px.display = function(value)
  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Md Entry Px
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Md Entry Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_size = {}

-- Size: Md Entry Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_size.size = 8

-- Display: Md Entry Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_size.display = function(value)
  return "Md Entry Size: "..value
end

-- Translate: Md Entry Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_size.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Md Entry Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_size.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_size.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Md Entry Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type = {}

-- Size: Md Entry Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type.size = 2

-- Display: Md Entry Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type.labels = {
  ["0"] = "Md Entry Type: Bid (0)",
  ["1"] = "Md Entry Type: Offer (1)",
  ["2"] = "Md Entry Type: Last Price (2)",
  ["3"] = "Md Entry Type: Current Index (3)",
  ["4"] = "Md Entry Type: Opening Price (4)",
  ["5"] = "Md Entry Type: Closing Price (5)",
  ["7"] = "Md Entry Type: High Price (7)",
  ["8"] = "Md Entry Type: Low Price (8)",
  ["9"] = "Md Entry Type: Weighted Average Price (9)",
  ["x1"] = "Md Entry Type: Change One (x1)",
  ["x2"] = "Md Entry Type: Change Two (x2)",
  ["x3"] = "Md Entry Type: Bid Summary (x3)",
  ["x4"] = "Md Entry Type: Offer Summary (x4)",
  ["x5"] = "Md Entry Type: Matching Last Price Or Price Earnings Ratio One (x5)",
  ["x6"] = "Md Entry Type: Price Earnings Ratio Two (x6)",
  ["xa"] = "Md Entry Type: Previous Closing Index (xa)",
  ["xb"] = "Md Entry Type: Opening Index (xb)",
  ["xc"] = "Md Entry Type: High Index (xc)",
  ["xd"] = "Md Entry Type: Low Index (xd)",
  ["xl"] = "Md Entry Type: Closing Index (xl)",
  ["xm"] = "Md Entry Type: Closing Index Two (xm)",
  ["xn"] = "Md Entry Type: Closing Index Reserved (xn)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type.labels[value] or "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Md Price Level
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_price_level = {}

-- Size: Md Price Level
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_price_level.size = 2

-- Display: Md Price Level
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_price_level.display = function(value)
  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_price_level.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_price_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Md Stream Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id = {}

-- Size: Md Stream Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size = 3

-- Display: Md Stream Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.labels = {
  ["010"] = "Md Stream Id: Bond Spot Trading Snapshot (010)",
  ["011"] = "Md Stream Id: Bond Spot Matching Large Lot Tick (011)",
  ["012"] = "Md Stream Id: Bond Spot Negotiated Trade Tick (012)",
  ["020"] = "Md Stream Id: Centralized Auction Snapshot (020)",
  ["021"] = "Md Stream Id: Agreement Trading Tick (021)",
  ["022"] = "Md Stream Id: Market Making Tick (022)",
  ["023"] = "Md Stream Id: Securities Lending Tick (023)",
  ["024"] = "Md Stream Id: Non Public Transfer Tick (024)",
  ["030"] = "Md Stream Id: Index Snapshot (030)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.labels[value] or "Md Stream Id: Unknown("..value..")"
end

-- Dissect: Md Stream Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_stream_id, range, value, display)

  return offset + length, value
end

-- Mddp Market Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.mddp_market_id = {}

-- Size: Mddp Market Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.mddp_market_id.size = 2

-- Display: Mddp Market Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.mddp_market_id.display = function(value)
  return "Mddp Market Id: "..value
end

-- Dissect: Mddp Market Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.mddp_market_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.mddp_market_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.mddp_market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.mddp_market_id, range, value, display)

  return offset + length, value
end

-- Message Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_length = {}

-- Size: Message Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_length.size = 4

-- Display: Message Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Msg Count
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_count = {}

-- Size: Msg Count
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_count.size = 2

-- Display: Msg Count
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_type = {}

-- Size: Msg Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_type.size = 4

-- Display: Msg Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_type.labels = {
  [301000] = "Msg Type: Channel Heartbeat Message (301000)",
  [302000] = "Msg Type: Retransmission Message (302000)",
  [303000] = "Msg Type: Snapshot Channel Statistics Message (303000)",
  [8] = "Msg Type: Business Reject Message (8)",
  [304000] = "Msg Type: Security Real Time Status Message (304000)",
  [305000] = "Msg Type: Announcement Message (305000)",
  [306001] = "Msg Type: Bond Spot Trading Snapshot Message (306001)",
  [306002] = "Msg Type: Auction Trading Snapshot Message (306002)",
  [306003] = "Msg Type: Index Snapshot Message (306003)",
  [307011] = "Msg Type: Bond Spot Matching Large Order Tick Message (307011)",
  [307021] = "Msg Type: Agreement Trading Order Tick Message (307021)",
  [307023] = "Msg Type: Securities Lending Order Tick Message (307023)",
  [308011] = "Msg Type: Bond Spot Matching Large Trade Tick Message (308011)",
  [308012] = "Msg Type: Bond Spot Negotiated Trade Tick Message (308012)",
  [308023] = "Msg Type: Securities Lending Trade Tick Message (308023)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_type.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- News Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_id = {}

-- Size: News Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_id.size = 16

-- Display: News Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_id.display = function(value)
  return "News Id: "..value
end

-- Dissect: News Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.news_id, range, value, display)

  return offset + length, value
end

-- News Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_type = {}

-- Size: News Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_type.size = 1

-- Display: News Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_type.labels = {
  [1] = "News Type: Information Announcement (1)",
  [2] = "News Type: Listed Company Information (2)",
  [3] = "News Type: Urgent Announcement (3)",
  [4] = "News Type: Securities Company Information (4)",
  [5] = "News Type: Other Announcement (5)",
  [6] = "News Type: Stock Temporary Halt Announcement (6)",
  [7] = "News Type: Bond Temporary Halt Announcement (7)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_type.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_type.labels[value] or "News Type: Unknown("..value..")"
end

-- Dissect: News Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.news_type, range, value, display)

  return offset + length, value
end

-- No Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries = {}

-- Size: No Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries.size = 4

-- Display: No Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries.display = function(value)
  return "No Md Entries: "..value
end

-- Dissect: No Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.no_md_entries, range, value, display)

  return offset + length, value
end

-- No Md Stream Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_stream_id = {}

-- Size: No Md Stream Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_stream_id.size = 4

-- Display: No Md Stream Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_stream_id.display = function(value)
  return "No Md Stream Id: "..value
end

-- Dissect: No Md Stream Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_stream_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_stream_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.no_md_stream_id, range, value, display)

  return offset + length, value
end

-- No Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_orders = {}

-- Size: No Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_orders.size = 4

-- Display: No Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_orders.display = function(value)
  return "No Orders: "..value
end

-- Dissect: No Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_orders.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.no_orders, range, value, display)

  return offset + length, value
end

-- No Sub Trading Phase Codes
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes = {}

-- Size: No Sub Trading Phase Codes
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.size = 4

-- Display: No Sub Trading Phase Codes
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.display = function(value)
  return "No Sub Trading Phase Codes: "..value
end

-- Dissect: No Sub Trading Phase Codes
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.no_sub_trading_phase_codes, range, value, display)

  return offset + length, value
end

-- No Switch
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_switch = {}

-- Size: No Switch
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_switch.size = 4

-- Display: No Switch
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_switch.display = function(value)
  return "No Switch: "..value
end

-- Dissect: No Switch
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_switch.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_switch.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_switch.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.no_switch, range, value, display)

  return offset + length, value
end

-- Num Trades
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades = {}

-- Size: Num Trades
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades.size = 8

-- Display: Num Trades
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades.display = function(value)
  return "Num Trades: "..value
end

-- Dissect: Num Trades
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.num_trades, range, value, display)

  return offset + length, value
end

-- Number Of Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.number_of_orders = {}

-- Size: Number Of Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.number_of_orders.size = 8

-- Display: Number Of Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Ord Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ord_type = {}

-- Size: Ord Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ord_type.size = 1

-- Display: Ord Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ord_type.labels = {
  ["1"] = "Ord Type: Market (1)",
  ["2"] = "Ord Type: Limit (2)",
  ["U"] = "Ord Type: Best Own Side (U)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ord_type.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ord_type.labels[value] or "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ord_type.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Qty
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty = {}

-- Size: Order Qty
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.size = 8

-- Display: Order Qty
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Translate: Order Qty
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Order Qty
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Orig Time
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time = {}

-- Size: Orig Time
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.size = 8

-- Dissect: Orig Time
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.orig_time
  if neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.timestamp_format == 3 then field = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.orig_time_utc end

  local millis = packed % 1000
  local civil = math.floor(packed / 1000)
  local year = math.floor(civil / 10000000000)
  local month = math.floor(civil / 100000000) % 100
  local day = math.floor(civil / 1000000) % 100
  local hour = math.floor(civil / 10000) % 100
  local minute = math.floor(civil / 100) % 100
  local second = civil % 100

  if month < 1 or month > 12 or day < 1 or day > 31 then
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Orig Time: " .. tostring(packed))
    return offset + length, packed
  end

  -- Days since the Unix epoch, by civil date arithmetic, in Utc
  local y = year - (month <= 2 and 1 or 0)
  local era = math.floor((y >= 0 and y or y - 399) / 400)
  local yoe = y - era * 400
  local doy = math.floor((153 * (month + (month > 2 and -3 or 9)) + 2) / 5) + day - 1
  local doe = yoe * 365 + math.floor(yoe / 4) - math.floor(yoe / 100) + doy
  local days = era * 146097 + doe - 719468

  local seconds = days * 86400 + hour * 3600 + minute * 60 + second
  local nanos = millis * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, packed
end

-- Original Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.original_size = {}

-- Size: Original Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.original_size.size = 4

-- Display: Original Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.original_size.display = function(value)
  return "Original Size: "..value
end

-- Dissect: Original Size
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.original_size.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.original_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.original_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.original_size, range, value, display)

  return offset + length, value
end

-- Padding
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.padding = {}

-- Size: Padding
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.padding.size = 0

-- Display: Padding
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.padding.display = function(value)
  return "Padding: "..value
end

-- Dissect: Padding
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.padding.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.padding.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.padding, range, value, display)

  return offset + length, value
end

-- Pre Close Px
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px = {}

-- Size: Pre Close Px
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.size = 8

-- Display: Pre Close Px
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.display = function(value)
  return "Pre Close Px: "..value
end

-- Translate: Pre Close Px
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Pre Close Px
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.pre_close_px, range, value, display)

  return offset + length, value
end

-- Price
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price = {}

-- Size: Price
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.size = 8

-- Display: Price
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Price
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Protocol
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.protocol = {}

-- Size: Protocol
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.protocol.size = 1

-- Display: Protocol
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.protocol.display = function(value)
  return "Protocol: "..value
end

-- Dissect: Protocol
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.protocol.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.protocol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.protocol, range, value, display)

  return offset + length, value
end

-- Raw Data
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data = {}

-- Display: Raw Data
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data.display = function(value)
  return "Raw Data: "..value
end

-- Dissect runtime sized field: Raw Data
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data.display(value, packet, parent, size)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.raw_data, range, value, display)

  return offset + size, value
end

-- Raw Data Format
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_format = {}

-- Size: Raw Data Format
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_format.size = 8

-- Display: Raw Data Format
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_format.display = function(value)
  return "Raw Data Format: "..value
end

-- Dissect: Raw Data Format
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_format.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_format.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_format.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.raw_data_format, range, value, display)

  return offset + length, value
end

-- Raw Data Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_length = {}

-- Size: Raw Data Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_length.size = 4

-- Display: Raw Data Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_length.display = function(value)
  return "Raw Data Length: "..value
end

-- Dissect: Raw Data Length
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_length.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.raw_data_length, range, value, display)

  return offset + length, value
end

-- Ref Msg Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_msg_type = {}

-- Size: Ref Msg Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_msg_type.size = 4

-- Display: Ref Msg Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_msg_type.display = function(value)
  return "Ref Msg Type: "..value
end

-- Dissect: Ref Msg Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Ref Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_seq_num = {}

-- Size: Ref Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_seq_num.size = 8

-- Display: Ref Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_seq_num.display = function(value)
  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.ref_seq_num, range, value, display)

  return offset + length, value
end

-- Reject Text
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.reject_text = {}

-- Size: Reject Text
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.reject_text.size = 16

-- Display: Reject Text
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.reject_text.display = function(value)
  return "Reject Text: "..value
end

-- Dissect: Reject Text
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.reject_text.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.reject_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.reject_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.reject_text, range, value, display)

  return offset + length, value
end

-- Resend Status
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_status = {}

-- Size: Resend Status
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_status.size = 1

-- Display: Resend Status
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_status.labels = {
  [1] = "Resend Status: Complete (1)",
  [2] = "Resend Status: Partially Complete (2)",
  [3] = "Resend Status: No Permission (3)",
  [4] = "Resend Status: Data Unavailable (4)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_status.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_status.labels[value] or "Resend Status: Unknown("..value..")"
end

-- Dissect: Resend Status
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_status.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.resend_status, range, value, display)

  return offset + length, value
end

-- Resend Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_type = {}

-- Size: Resend Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_type.size = 1

-- Display: Resend Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_type.labels = {
  [1] = "Resend Type: Tick Data (1)",
  [2] = "Resend Type: Announcement (2)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_type.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_type.labels[value] or "Resend Type: Unknown("..value..")"
end

-- Dissect: Resend Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.resend_type, range, value, display)

  return offset + length, value
end

-- Security Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id = {}

-- Size: Security Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size = 8

-- Display: Security Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Id Source
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source = {}

-- Size: Security Id Source
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size = 4

-- Display: Security Id Source
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.labels = {
  ["106"] = "Security Id Source: Beijing Stock Exchange (106)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.labels[value] or "Security Id Source: Unknown("..value..")"
end

-- Dissect: Security Id Source
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_id_source, range, value, display)

  return offset + length, value
end

-- Security Switch Status
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_status = {}

-- Size: Security Switch Status
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_status.size = 2

-- Display: Security Switch Status
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_status.labels = {
  [0] = "Security Switch Status: No (0)",
  [1] = "Security Switch Status: Yes (1)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_status.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_status.labels[value] or "Security Switch Status: Unknown("..value..")"
end

-- Dissect: Security Switch Status
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_status.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_switch_status, range, value, display)

  return offset + length, value
end

-- Security Switch Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_type = {}

-- Size: Security Switch Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_type.size = 2

-- Display: Security Switch Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_type.labels = {
  [1] = "Security Switch Type: Margin Buy (1)",
  [2] = "Security Switch Type: Short Sell (2)",
  [5] = "Security Switch Type: Subscription (5)",
  [6] = "Security Switch Type: Conversion (6)",
  [7] = "Security Switch Type: Put Back (7)",
  [14] = "Security Switch Type: Tender Offer Acceptance (14)",
  [15] = "Security Switch Type: Tender Offer Withdrawal (15)",
  [22] = "Security Switch Type: Voting Right (22)",
  [23] = "Security Switch Type: Stock Pledged Repo (23)",
  [27] = "Security Switch Type: Market Maker Quotation (27)",
  [34] = "Security Switch Type: Put Back Cancellation (34)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_type.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_type.labels[value] or "Security Switch Type: Unknown("..value..")"
end

-- Dissect: Security Switch Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_switch_type, range, value, display)

  return offset + length, value
end

-- Security Symbol
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_symbol = {}

-- Size: Security Symbol
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_symbol.size = 40

-- Display: Security Symbol
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sender Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sender_id = {}

-- Size: Sender Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sender_id.size = 1

-- Display: Sender Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sender_id.display = function(value)
  return "Sender Id: "..value
end

-- Dissect: Sender Id
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sender_id.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sender_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sender_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.sender_id, range, value, display)

  return offset + length, value
end

-- Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.seq_num = {}

-- Size: Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.seq_num.size = 8

-- Display: Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Settl Period
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period = {}

-- Size: Settl Period
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.size = 1

-- Display: Settl Period
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.labels = {
  ["0"] = "Settl Period: T Plus 0 (0)",
  ["1"] = "Settl Period: T Plus 1 (1)",
  ["2"] = "Settl Period: T Plus 2 (2)",
  ["3"] = "Settl Period: T Plus 3 (3)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.labels[value] or "Settl Period: Unknown("..value..")"
end

-- Dissect: Settl Period
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.settl_period, range, value, display)

  return offset + length, value
end

-- Settl Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type = {}

-- Size: Settl Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.size = 1

-- Display: Settl Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.labels = {
  ["1"] = "Settl Type: Gross (1)",
  ["2"] = "Settl Type: Multilateral Net (2)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.labels[value] or "Settl Type: Unknown("..value..")"
end

-- Dissect: Settl Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.settl_type, range, value, display)

  return offset + length, value
end

-- Side
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side = {}

-- Size: Side
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.size = 1

-- Display: Side
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.labels = {
  ["1"] = "Side: Buy (1)",
  ["2"] = "Side: Sell (2)",
  ["G"] = "Side: Borrow (G)",
  ["F"] = "Side: Lend (F)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.size
  local range = buffer(offset, length)
  local value = range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Stock Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.stock_num = {}

-- Size: Stock Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.stock_num.size = 4

-- Display: Stock Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.stock_num.display = function(value)
  return "Stock Num: "..value
end

-- Dissect: Stock Num
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.stock_num.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.stock_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.stock_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.stock_num, range, value, display)

  return offset + length, value
end

-- Sub Trading Phase Code
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_code = {}

-- Size: Sub Trading Phase Code
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_code.size = 8

-- Display: Sub Trading Phase Code
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_code.display = function(value)
  return "Sub Trading Phase Code: "..value
end

-- Dissect: Sub Trading Phase Code
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_code.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_code, range, value, display)

  return offset + length, value
end

-- Total Value Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade = {}

-- Size: Total Value Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.size = 8

-- Display: Total Value Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.display = function(value)
  return "Total Value Trade: "..value
end

-- Translate: Total Value Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Total Value Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.total_value_trade, range, value, display)

  return offset + length, value
end

-- Total Volume Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade = {}

-- Size: Total Volume Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.size = 8

-- Display: Total Volume Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.display = function(value)
  return "Total Volume Trade: "..value
end

-- Translate: Total Volume Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Total Volume Trade
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.total_volume_trade, range, value, display)

  return offset + length, value
end

-- Trade Money
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money = {}

-- Size: Trade Money
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.size = 8

-- Display: Trade Money
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.display = function(value)
  return "Trade Money: "..value
end

-- Translate: Trade Money
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Trade Money
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trade_money, range, value, display)

  return offset + length, value
end

-- Trade Price
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price = {}

-- Size: Trade Price
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.size = 8

-- Display: Trade Price
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Trade Price
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Qty
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty = {}

-- Size: Trade Qty
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.size = 8

-- Display: Trade Qty
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.display = function(value)
  return "Trade Qty: "..value
end

-- Translate: Trade Qty
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Trade Qty
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.translate(raw)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trade_qty, range, value, display)

  return offset + length, value
end

-- Trade Time
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_time = {}

-- Size: Trade Time
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_time.size = 8

-- Dissect: Trade Time
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trade_time
  if neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.timestamp_format == 3 then field = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trade_time_utc end

  local millis = packed % 1000
  local civil = math.floor(packed / 1000)
  local year = math.floor(civil / 10000000000)
  local month = math.floor(civil / 100000000) % 100
  local day = math.floor(civil / 1000000) % 100
  local hour = math.floor(civil / 10000) % 100
  local minute = math.floor(civil / 100) % 100
  local second = civil % 100

  if month < 1 or month > 12 or day < 1 or day > 31 then
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Trade Time: " .. tostring(packed))
    return offset + length, packed
  end

  -- Days since the Unix epoch, by civil date arithmetic, in Utc
  local y = year - (month <= 2 and 1 or 0)
  local era = math.floor((y >= 0 and y or y - 399) / 400)
  local yoe = y - era * 400
  local doy = math.floor((153 * (month + (month > 2 and -3 or 9)) + 2) / 5) + day - 1
  local doe = yoe * 365 + math.floor(yoe / 4) - math.floor(yoe / 100) + doy
  local days = era * 146097 + doe - 719468

  local seconds = days * 86400 + hour * 3600 + minute * 60 + second
  local nanos = millis * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, packed
end

-- Trading Phase Code
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code = {}

-- Size: Trading Phase Code
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.size = 8

-- Display: Trading Phase Code
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.display = function(value)
  return "Trading Phase Code: "..value
end

-- Dissect: Trading Phase Code
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.text_encoding))
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trading_phase_code, range, value, display)

  return offset + length, value
end

-- Trading Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_type = {}

-- Size: Trading Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_type.size = 1

-- Display: Trading Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_type.labels = {
  [1] = "Trading Type: Matching Trade (1)",
  [2] = "Trading Type: Click Trade (2)",
  [3] = "Trading Type: Negotiated Trade (3)",
  [4] = "Trading Type: Inquiry Trade (4)",
  [5] = "Trading Type: Bidding Trade (5)",
}

neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_type.display = function(value)
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_type.labels[value] or "Trading Type: Unknown("..value..")"
end

-- Dissect: Trading Type
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_type.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.trading_type, range, value, display)

  return offset + length, value
end

-- Transact Time
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time = {}

-- Size: Transact Time
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.size = 8

-- Dissect: Transact Time
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.transact_time
  if neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.timestamp_format == 3 then field = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.transact_time_utc end

  local millis = packed % 1000
  local civil = math.floor(packed / 1000)
  local year = math.floor(civil / 10000000000)
  local month = math.floor(civil / 100000000) % 100
  local day = math.floor(civil / 1000000) % 100
  local hour = math.floor(civil / 10000) % 100
  local minute = math.floor(civil / 100) % 100
  local second = civil % 100

  if month < 1 or month > 12 or day < 1 or day > 31 then
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Transact Time: " .. tostring(packed))
    return offset + length, packed
  end

  -- Days since the Unix epoch, by civil date arithmetic, in Utc
  local y = year - (month <= 2 and 1 or 0)
  local era = math.floor((y >= 0 and y or y - 399) / 400)
  local yoe = y - era * 400
  local doy = math.floor((153 * (month + (month > 2 and -3 or 9)) + 2) / 5) + day - 1
  local doe = yoe * 365 + math.floor(yoe / 4) - math.floor(yoe / 100) + doy
  local days = era * 146097 + doe - 719468

  local seconds = days * 86400 + hour * 3600 + minute * 60 + second
  local nanos = millis * 1000000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, packed
end

-- Version
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.version = {}

-- Size: Version
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.version.size = 1

-- Display: Version
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.version.dissect = function(buffer, offset, packet, parent)
  local length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1
-----------------------------------------------------------------------

-- Packet Trailer
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_trailer = {}

-- Size: Packet Trailer
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_trailer.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.checksum.size

-- Display: Packet Trailer
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_trailer.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Trailer
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_trailer.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Checksum: uInt32
  index, checksum = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Trailer
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_trailer.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.packet_trailer, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_trailer.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_trailer.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_trailer.fields(buffer, offset, packet, parent)
  end
end

-- Securities Lending Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message = {}

-- Size: Securities Lending Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.size

-- Display: Securities Lending Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Lending Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Appl Seq Num: SeqNum
  index, ask_appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Qty: Qty
  index, trade_qty = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.dissect(buffer, index, packet, parent)

  -- Trade Money: Amt
  index, trade_money = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Lending Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.securities_lending_trade_tick_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Negotiated Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message = {}

-- Size: Bond Spot Negotiated Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.size

-- Display: Bond Spot Negotiated Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Negotiated Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Appl Seq Num: SeqNum
  index, ask_appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Qty: Qty
  index, trade_qty = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.dissect(buffer, index, packet, parent)

  -- Trade Money: Amt
  index, trade_money = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- Settl Period: char
  index, settl_period = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.dissect(buffer, index, packet, parent)

  -- Settl Type: char
  index, settl_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Negotiated Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.bond_spot_negotiated_trade_tick_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Matching Large Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message = {}

-- Size: Bond Spot Matching Large Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.size

-- Display: Bond Spot Matching Large Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Matching Large Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Appl Seq Num: SeqNum
  index, ask_appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ask_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Qty: Qty
  index, trade_qty = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_qty.dissect(buffer, index, packet, parent)

  -- Trade Money: Amt
  index, trade_money = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_money.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- Settl Period: char
  index, settl_period = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.dissect(buffer, index, packet, parent)

  -- Settl Type: char
  index, settl_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Matching Large Trade Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.bond_spot_matching_large_trade_tick_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Lending Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message = {}

-- Size: Securities Lending Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_days.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_type.size

-- Display: Securities Lending Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Lending Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- Expiration Days: uInt16
  index, expiration_days = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_days.dissect(buffer, index, packet, parent)

  -- Expiration Type: uInt8
  index, expiration_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.expiration_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Lending Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.securities_lending_order_tick_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Agreement Trading Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message = {}

-- Size: Agreement Trading Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.confirm_id.size

-- Display: Agreement Trading Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Agreement Trading Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Agreement Trading Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.agreement_trading_order_tick_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Matching Large Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message = {}

-- Size: Bond Spot Matching Large Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ord_type.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.size

-- Display: Bond Spot Matching Large Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Matching Large Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Settl Type: char
  index, settl_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_type.dissect(buffer, index, packet, parent)

  -- Settl Period: char
  index, settl_period = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.settl_period.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Matching Large Order Tick Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.bond_spot_matching_large_order_tick_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_md_entries = {}

-- Size: Index Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_md_entries.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px.size

-- Display: Index Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_md_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_md_entries.fields = function(buffer, offset, packet, parent, index_md_entries_index)
  local index = offset

  -- Implicit Index Md Entries Index
  if index_md_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.index_md_entries_index, index_md_entries_index)
    iteration:set_generated()
  end

  -- Md Entry Type: char[2]
  index, md_entry_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Int64
  index, md_entry_px = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_md_entries.dissect = function(buffer, offset, packet, parent, index_md_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.index_md_entries, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_md_entries.fields(buffer, offset, packet, parent, index_md_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_md_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_md_entries.fields(buffer, offset, packet, parent, index_md_entries_index)
  end
end

-- Index Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_snapshot_message = {}

-- Calculate size of: Index Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries.size

  -- Calculate field size from count
  local index_md_entries_count = buffer(offset + index - 4, 4):uint()
  index = index + index_md_entries_count * 10

  return index
end

-- Display: Index Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: char[8]
  index, trading_phase_code = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Pre Close Px: Price
  index, pre_close_px = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Amt
  index, total_volume_trade = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Index Md Entries
  for index_md_entries_index = 1, no_md_entries do
    index, index_md_entries = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_md_entries.dissect(buffer, index, packet, parent, index_md_entries_index)
  end

  return index
end

-- Dissect: Index Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.index_snapshot_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orders = {}

-- Size: Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orders.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.size

-- Display: Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orders.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orders.fields = function(buffer, offset, packet, parent, orders_index)
  local index = offset

  -- Implicit Orders Index
  if orders_index ~= nil and show.indexes then
    local iteration = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.orders_index, orders_index)
    iteration:set_generated()
  end

  -- Order Qty: Qty
  index, order_qty = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orders.dissect = function(buffer, offset, packet, parent, orders_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.orders, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orders.fields(buffer, offset, packet, parent, orders_index)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orders.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orders.fields(buffer, offset, packet, parent, orders_index)
  end
end

-- Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries = {}

-- Calculate size of: Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries.size = function(buffer, offset)
  local index = 0

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_size.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_price_level.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.number_of_orders.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_orders.size

  -- Calculate field size from count
  local orders_count = buffer(offset + index - 4, 4):uint()
  index = index + orders_count * 8

  return index
end

-- Display: Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries.fields = function(buffer, offset, packet, parent, md_entries_index)
  local index = offset

  -- Implicit Md Entries Index
  if md_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_entries_index, md_entries_index)
    iteration:set_generated()
  end

  -- Md Entry Type: char[2]
  index, md_entry_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Int64
  index, md_entry_px = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: Amt
  index, md_entry_size = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Price Level: uInt16
  index, md_price_level = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_price_level.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Int64
  index, number_of_orders = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.number_of_orders.dissect(buffer, index, packet, parent)

  -- No Orders: NumInGroup
  index, no_orders = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_orders.dissect(buffer, index, packet, parent)

  -- Repeating: Orders
  for orders_index = 1, no_orders do
    index, orders = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orders.dissect(buffer, index, packet, parent, orders_index)
  end

  return index
end

-- Dissect: Md Entries
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries.dissect = function(buffer, offset, packet, parent, md_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_entries, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries.fields(buffer, offset, packet, parent, md_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries.fields(buffer, offset, packet, parent, md_entries_index)
  end
end

-- Auction Trading Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message = {}

-- Calculate size of: Auction Trading Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries.size

  -- Calculate field size from count
  local md_entries_count = buffer(offset + index - 4, 4):uint()
  for i = 1, md_entries_count do
    index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries.size(buffer, offset + index)
  end
  return index
end

-- Display: Auction Trading Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trading Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: char[8]
  index, trading_phase_code = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Pre Close Px: Price
  index, pre_close_px = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Amt
  index, total_volume_trade = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entries
  for md_entries_index = 1, no_md_entries do
    index, md_entries = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries.dissect(buffer, index, packet, parent, md_entries_index)
  end

  return index
end

-- Dissect: Auction Trading Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.auction_trading_snapshot_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Sub Trading Phase Codes
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_codes = {}

-- Size: Sub Trading Phase Codes
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_code.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_type.size

-- Display: Sub Trading Phase Codes
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sub Trading Phase Codes
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.fields = function(buffer, offset, packet, parent, sub_trading_phase_codes_index)
  local index = offset

  -- Implicit Sub Trading Phase Codes Index
  if sub_trading_phase_codes_index ~= nil and show.indexes then
    local iteration = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_codes_index, sub_trading_phase_codes_index)
    iteration:set_generated()
  end

  -- Sub Trading Phase Code: char[8]
  index, sub_trading_phase_code = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_code.dissect(buffer, index, packet, parent)

  -- Trading Type: uInt8
  index, trading_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sub Trading Phase Codes
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.dissect = function(buffer, offset, packet, parent, sub_trading_phase_codes_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_codes, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.fields(buffer, offset, packet, parent, sub_trading_phase_codes_index)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.fields(buffer, offset, packet, parent, sub_trading_phase_codes_index)
  end
end

-- Bond Spot Trading Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message = {}

-- Calculate size of: Bond Spot Trading Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries.size

  -- Calculate field size from count
  local md_entries_count = buffer(offset + index - 4, 4):uint()
  for i = 1, md_entries_count do
    index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries.size(buffer, offset + index)
  end
  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.size

  -- Calculate field size from count
  local sub_trading_phase_codes_count = buffer(offset + index - 4, 4):uint()
  index = index + sub_trading_phase_codes_count * 9

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_volume_trade.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_value_trade.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_time.size

  return index
end

-- Display: Bond Spot Trading Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Trading Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: char[8]
  index, trading_phase_code = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Pre Close Px: Price
  index, pre_close_px = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.pre_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Amt
  index, total_volume_trade = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entries
  for md_entries_index = 1, no_md_entries do
    index, md_entries = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_entries.dissect(buffer, index, packet, parent, md_entries_index)
  end

  -- No Sub Trading Phase Codes: NumInGroup
  index, no_sub_trading_phase_codes = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.dissect(buffer, index, packet, parent)

  -- Repeating: Sub Trading Phase Codes
  for sub_trading_phase_codes_index = 1, no_sub_trading_phase_codes do
    index, sub_trading_phase_codes = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.dissect(buffer, index, packet, parent, sub_trading_phase_codes_index)
  end

  -- Auction Volume Trade: Amt
  index, auction_volume_trade = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_volume_trade.dissect(buffer, index, packet, parent)

  -- Auction Value Trade: Amt
  index, auction_value_trade = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_value_trade.dissect(buffer, index, packet, parent)

  -- Trade Time: LocalTimestamp
  index, trade_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Trading Snapshot Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.bond_spot_trading_snapshot_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Announcement Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.announcement_message = {}

-- Calculate size of: Announcement Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.announcement_message.size = function(buffer, offset)
  local index = 0

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_id.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.headline.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_type.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_format.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_length.size

  -- Parse runtime size of: Raw Data
  index = index + buffer(offset + index - 4, 4):uint()

  return index
end

-- Display: Announcement Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.announcement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Announcement Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.announcement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- News Id: char[16]
  index, news_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_id.dissect(buffer, index, packet, parent)

  -- Headline: char[128]
  index, headline = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.headline.dissect(buffer, index, packet, parent)

  -- News Type: uInt8
  index, news_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_type.dissect(buffer, index, packet, parent)

  -- Raw Data Format: char[8]
  index, raw_data_format = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_format.dissect(buffer, index, packet, parent)

  -- Raw Data Length: Length
  index, raw_data_length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Raw Data
  index, raw_data = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.raw_data.dissect(buffer, index, packet, parent, raw_data_length)

  return index
end

-- Dissect: Announcement Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.announcement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.announcement_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.announcement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.announcement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.announcement_message.fields(buffer, offset, packet, parent)
  end
end

-- Switch
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.switch = {}

-- Size: Switch
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.switch.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_type.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_status.size

-- Display: Switch
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.switch.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Switch
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.switch.fields = function(buffer, offset, packet, parent, switch_index)
  local index = offset

  -- Implicit Switch Index
  if switch_index ~= nil and show.indexes then
    local iteration = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.switch_index, switch_index)
    iteration:set_generated()
  end

  -- Security Switch Type: uInt16
  index, security_switch_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_type.dissect(buffer, index, packet, parent)

  -- Security Switch Status: Boolean
  index, security_switch_status = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_switch_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Switch
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.switch.dissect = function(buffer, offset, packet, parent, switch_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.switch, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.switch.fields(buffer, offset, packet, parent, switch_index)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.switch.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.switch.fields(buffer, offset, packet, parent, switch_index)
  end
end

-- Security Real Time Status Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_real_time_status_message = {}

-- Calculate size of: Security Real Time Status Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_real_time_status_message.size = function(buffer, offset)
  local index = 0

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_symbol.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_switch.size

  -- Calculate field size from count
  local switch_count = buffer(offset + index - 4, 4):uint()
  index = index + switch_count * 4

  return index
end

-- Display: Security Real Time Status Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_real_time_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Real Time Status Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_real_time_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Security Symbol: char[40]
  index, security_symbol = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_symbol.dissect(buffer, index, packet, parent)

  -- No Switch: NumInGroup
  index, no_switch = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_switch.dissect(buffer, index, packet, parent)

  -- Repeating: Switch
  for switch_index = 1, no_switch do
    index, switch = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.switch.dissect(buffer, index, packet, parent, switch_index)
  end

  return index
end

-- Dissect: Security Real Time Status Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_real_time_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.security_real_time_status_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_real_time_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_real_time_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_real_time_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Reject Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_message = {}

-- Size: Business Reject Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_message.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_msg_type.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_ref_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_reason.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_text.size

-- Display: Business Reject Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Reject Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ref Seq Num: SeqNum
  index, ref_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_seq_num.dissect(buffer, index, packet, parent)

  -- Ref Msg Type: uInt32
  index, ref_msg_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.ref_msg_type.dissect(buffer, index, packet, parent)

  -- Business Reject Ref Id: char[10]
  index, business_reject_ref_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_ref_id.dissect(buffer, index, packet, parent)

  -- Business Reject Reason: uInt16
  index, business_reject_reason = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_reason.dissect(buffer, index, packet, parent)

  -- Business Reject Text: char[50]
  index, business_reject_text = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Reject Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.business_reject_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Stream I Ds
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_i_ds = {}

-- Size: Md Stream I Ds
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_i_ds.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.stock_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.size

-- Display: Md Stream I Ds
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_i_ds.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Stream I Ds
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_i_ds.fields = function(buffer, offset, packet, parent, md_stream_i_ds_index)
  local index = offset

  -- Implicit Md Stream I Ds Index
  if md_stream_i_ds_index ~= nil and show.indexes then
    local iteration = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_stream_i_ds_index, md_stream_i_ds_index)
    iteration:set_generated()
  end

  -- Md Stream Id: char[3]
  index, md_stream_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Stock Num: uInt32
  index, stock_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.stock_num.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: char[8]
  index, trading_phase_code = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.trading_phase_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Stream I Ds
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_i_ds.dissect = function(buffer, offset, packet, parent, md_stream_i_ds_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.md_stream_i_ds, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_i_ds.fields(buffer, offset, packet, parent, md_stream_i_ds_index)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_i_ds.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_i_ds.fields(buffer, offset, packet, parent, md_stream_i_ds_index)
  end
end

-- Snapshot Channel Statistics Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message = {}

-- Calculate size of: Snapshot Channel Statistics Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.size = function(buffer, offset)
  local index = 0

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_stream_id.size

  -- Calculate field size from count
  local md_stream_i_ds_count = buffer(offset + index - 4, 4):uint()
  index = index + md_stream_i_ds_count * 15

  return index
end

-- Display: Snapshot Channel Statistics Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Channel Statistics Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- No Md Stream Id: NumInGroup
  index, no_md_stream_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.no_md_stream_id.dissect(buffer, index, packet, parent)

  -- Repeating: Md Stream I Ds
  for md_stream_i_ds_index = 1, no_md_stream_id do
    index, md_stream_i_ds = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.md_stream_i_ds.dissect(buffer, index, packet, parent, md_stream_i_ds_index)
  end

  return index
end

-- Dissect: Snapshot Channel Statistics Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.snapshot_channel_statistics_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.retransmission_message = {}

-- Size: Retransmission Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.retransmission_message.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_type.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_beg_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_end_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_id.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_status.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.reject_text.size

-- Display: Retransmission Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.retransmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.retransmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Resend Type: uInt8
  index, resend_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_type.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Beg Seq Num: SeqNum
  index, appl_beg_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_beg_seq_num.dissect(buffer, index, packet, parent)

  -- Appl End Seq Num: SeqNum
  index, appl_end_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_end_seq_num.dissect(buffer, index, packet, parent)

  -- News Id: char[16]
  index, news_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.news_id.dissect(buffer, index, packet, parent)

  -- Resend Status: uInt8
  index, resend_status = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.resend_status.dissect(buffer, index, packet, parent)

  -- Reject Text: char[16]
  index, reject_text = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.reject_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.retransmission_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.retransmission_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.retransmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.retransmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.retransmission_message.fields(buffer, offset, packet, parent)
  end
end

-- Channel Heartbeat Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_heartbeat_message = {}

-- Size: Channel Heartbeat Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_heartbeat_message.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_last_seq_num.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.end_of_channel.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.size

-- Display: Channel Heartbeat Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Heartbeat Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Last Seq Num: SeqNum
  index, appl_last_seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.appl_last_seq_num.dissect(buffer, index, packet, parent)

  -- End Of Channel: Boolean
  index, end_of_channel = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.end_of_channel.dissect(buffer, index, packet, parent)

  -- Orig Time: LocalTimestamp
  index, orig_time = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Heartbeat Message
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.channel_heartbeat_message, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.payload = {}

-- Dispatch: Payload
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.payload.dispatch = {
  [301000] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel_heartbeat_message.dissect,
  [302000] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.retransmission_message.dissect,
  [303000] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.dissect,
  [8] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.business_reject_message.dissect,
  [304000] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.security_real_time_status_message.dissect,
  [305000] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.announcement_message.dissect,
  [306001] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.dissect,
  [306002] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.dissect,
  [306003] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.index_snapshot_message.dissect,
  [307011] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.dissect,
  [307021] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.dissect,
  [307023] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.dissect,
  [308011] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.dissect,
  [308012] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.dissect,
  [308023] = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.dissect,
}

-- Dissect: Payload
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_header = {}

-- Size: Message Header
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_header.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_type.size + 
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.body_length.size

-- Display: Message Header
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: uInt32
  index, msg_type = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_type.dissect(buffer, index, packet, parent)

  -- Body Length: uInt32
  index, body_length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.body_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.message_header, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Messages
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.messages = {}

-- Calculate size of: Messages
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.messages.size = function(buffer, offset)
  local index = 0

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 4):uint()

  return index
end

-- Display: Messages
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.messages.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Messages
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.messages.fields = function(buffer, offset, packet, parent, messages_index)
  local index = offset

  -- Implicit Messages Index
  if messages_index ~= nil and show.indexes then
    local iteration = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.messages_index, messages_index)
    iteration:set_generated()
  end

  -- Implicit Messages Sequence Number
  if messages_index ~= nil and show.sequences and neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_sequence ~= nil then
    local sequence = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.messages_sequence_number, UInt64.new(neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_sequence + messages_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 8, 4):uint()

  -- Payload: Runtime Type with 15 branches
  index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Messages
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.messages.dissect = function(buffer, offset, packet, parent, messages_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.messages, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.messages.fields(buffer, offset, packet, parent, messages_index)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.messages.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.messages.fields(buffer, offset, packet, parent, messages_index)
  end
end

-- Message Lengths
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_lengths = {}

-- Size: Message Lengths
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_lengths.size =
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_length.size

-- Display: Message Lengths
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_lengths.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Lengths
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_lengths.fields = function(buffer, offset, packet, parent, message_lengths_index)
  local index = offset

  -- Implicit Message Lengths Index
  if message_lengths_index ~= nil and show.indexes then
    local iteration = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.message_lengths_index, message_lengths_index)
    iteration:set_generated()
  end

  -- Message Length: uInt32
  index, message_length = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Lengths
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_lengths.dissect = function(buffer, offset, packet, parent, message_lengths_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.message_lengths, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_lengths.fields(buffer, offset, packet, parent, message_lengths_index)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_lengths.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_lengths.fields(buffer, offset, packet, parent, message_lengths_index)
  end
end

-- Message Block
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_block = {}

-- Size of Message Block: not written, it needs Flag, Msg Count passed down from Packet

-- Display: Message Block
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Block
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_block.fields = function(buffer, offset, packet, parent, flag, msg_count)
  local index = offset

  -- Runtime optional field: Message Lengths
  local message_lengths = nil

  local message_lengths_exists = bit.rshift(bit.band(flag, 0x0080), 7) == 1

  if message_lengths_exists then

    -- Repeating: Message Lengths
    for message_lengths_index = 1, msg_count do
      index, message_lengths = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_lengths.dissect(buffer, index, packet, parent, message_lengths_index)
    end
  end

  -- Repeating: Messages
  for messages_index = 1, msg_count do
    index, messages = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.messages.dissect(buffer, index, packet, parent, messages_index)
  end

  return index
end

-- Dissect: Message Block
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_block.dissect = function(buffer, offset, packet, parent, flag, msg_count)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.message_block, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_block.fields(buffer, offset, packet, parent, flag, msg_count)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_block.fields(buffer, offset, packet, parent, flag, msg_count)
  end
end

-- Data Flow Heartbeat
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.data_flow_heartbeat = {}

-- Display: Data Flow Heartbeat
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.data_flow_heartbeat.display = function(packet, parent, length)
  return "Data Flow Heartbeat"
end


-- Dissect: Data Flow Heartbeat
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.data_flow_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.data_flow_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Data Flow End
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.data_flow_end = {}

-- Display: Data Flow End
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.data_flow_end.display = function(packet, parent, length)
  return "Data Flow End"
end


-- Dissect: Data Flow End
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.data_flow_end.dissect = function(buffer, offset, packet, parent)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.data_flow_end.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Multicast Heartbeat
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.multicast_heartbeat = {}

-- Display: Multicast Heartbeat
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.multicast_heartbeat.display = function(packet, parent, length)
  return "Multicast Heartbeat"
end


-- Dissect: Multicast Heartbeat
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.multicast_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.multicast_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Packet Body
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_body = {}

-- Dissect: Packet Body
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_body.dissect = function(buffer, offset, packet, parent, channel, msg_count, flag, msg_count)
  -- Dissect Multicast Heartbeat
  if channel == 0 then
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.multicast_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Data Flow End
  if msg_count == 65535 then
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.data_flow_end.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Data Flow Heartbeat
  if msg_count == 0 then
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.data_flow_heartbeat.dissect(buffer, offset, packet, parent)
  end

  -- Dissect Message Block
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.message_block.dissect(buffer, offset, packet, parent, flag, msg_count)
end

-- Flag
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.flag = {}

-- Size: Flag
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.flag.size = 2

-- Display: Flag
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.flag.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Poss Dup Flag flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Poss Dup Flag"
  end
  -- Is Resend By Seq Num flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Resend By Seq Num"
  end
  -- Is Msg Header flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Msg Header"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flag
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.flag.bits = function(range, value, packet, parent)

  -- Poss Dup Flag: 1 Bit Enum with 2 values
  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.poss_dup_flag, range, value)

  -- Packet Type: 2 Bit Enum with 2 values
  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.packet_type, range, value)

  -- Resend By Seq Num: 1 Bit Enum with 2 values
  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.resend_by_seq_num, range, value)

  -- Compress: 2 Bit Enum with 4 values
  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.compress, range, value)

  -- Encryption: 2 Bit Enum with 4 values
  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.encryption, range, value)

  -- Msg Header: 1 Bit Enum with 2 values
  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.msg_header, range, value)

  -- Reserved 06: 7 Bit
  parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.reserved_06, range, value)
end

-- Dissect: Flag
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.flag.dissect = function(buffer, offset, packet, parent)
  local size = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.flag.size
  local range = buffer(offset, size)
  local value = range:uint()
  local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.flag.display(range, value, packet, parent)
  local element = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.flag, range, display)

  if show.structs then
    neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.flag.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Packet Header
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_header = {}

-- Calculate size of: Packet Header
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.protocol.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.version.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.header_size.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sender_id.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.mddp_market_id.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.seq_num.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_count.size

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.flag.size

  local flag = buffer(offset + 18, 2):uint()

  if bit.rshift(bit.band(flag, 0x0C00), 10) > 0 then
    index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.original_size.size

  end

  local flag = buffer(offset + 18, 2):uint()

  if bit.rshift(bit.band(flag, 0x0C00), 10) > 0 then
    index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.compressed_size.size

  end

  local flag = buffer(offset + 18, 2):uint()

  if bit.rshift(bit.band(flag, 0x0300), 8) > 0 then
    index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.encrypted_size.size

  end

  index = index + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.padding.size

  return index
end

-- Display: Packet Header
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol: uInt8
  index, protocol = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.protocol.dissect(buffer, index, packet, parent)

  -- Version: uInt8
  index, version = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.version.dissect(buffer, index, packet, parent)

  -- Header Size: uInt8
  index, header_size = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.header_size.dissect(buffer, index, packet, parent)

  -- Sender Id: uInt8
  index, sender_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sender_id.dissect(buffer, index, packet, parent)

  -- Mddp Market Id: uInt16
  index, mddp_market_id = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.mddp_market_id.dissect(buffer, index, packet, parent)

  -- Channel: uInt16
  index, channel = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel.dissect(buffer, index, packet, parent)

  -- Seq Num: Int64
  index, seq_num = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.seq_num.dissect(buffer, index, packet, parent)

  -- Msg Count: uInt16
  index, msg_count = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_count.dissect(buffer, index, packet, parent)

  -- Flag: Struct of 7 fields
  index, flag = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.flag.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Original Size
  local original_size = nil

  local original_size_exists = bit.rshift(bit.band(flag, 0x0C00), 10) > 0

  if original_size_exists then
    index, original_size = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.original_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Compressed Size
  local compressed_size = nil

  local compressed_size_exists = bit.rshift(bit.band(flag, 0x0C00), 10) > 0

  if compressed_size_exists then
    index, compressed_size = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.compressed_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Encrypted Size
  local encrypted_size = nil

  local encrypted_size_exists = bit.rshift(bit.band(flag, 0x0300), 8) > 0

  if encrypted_size_exists then
    index, encrypted_size = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.encrypted_size.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Padding
  local padding = nil

  local padding_exists = (index % 4 ~= 0)

  if padding_exists then
    index, padding = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.padding.dissect(buffer, index, packet, parent)
  end

  -- Sequence base for the packet's messages
  neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_sequence = seq_num

  return index
end

-- Dissect: Packet Header
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.fields.packet_header, buffer(offset, 0))
    local index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet = {}

-- Verify required size of Udp packet
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.protocol.size + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.version.size + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.header_size.size + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.sender_id.size + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.mddp_market_id.size + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.channel.size + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.seq_num.size + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.msg_count.size + neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.flag.size
end

-- Dissect Packet
neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0
  local flag = buffer(18, 2):uint()
  local msg_count = buffer(16, 2):uint()

  -- Packet Header: Struct of 13 fields
  index, packet_header = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Channel
  local channel = buffer(offset + 6, 2):uint()

  -- Dependency element: Msg Count
  local msg_count = buffer(offset + 16, 2):uint()

  -- Packet Body: Runtime Type with 4 branches
  index = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_body.dissect(buffer, index, packet, parent, channel, msg_count, flag, msg_count)

  -- Packet Trailer: Struct of 1 fields
  index, packet_trailer = neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet_trailer.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.init()
end

-- Dissector for Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1
function omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1, buffer(), omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.description, "("..buffer:len().." Bytes)")
  return neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1 (Udp)
local function omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1
  omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1
omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1:register_heuristic("udp", omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1_udp_heuristic)

-- Register Neeq NeeqSecurities MulticastMarketData BjseBinary 1.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_neeq_neeqsecurities_multicastmarketdata_bjsebinary_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Equities Exchange and Quotations
--   Version: 1.1
--   Date: Wednesday, December 31, 2025
--   Specification: 20250812182320_fau0f6i7bk.pdf
--   Specification: 20251231194517_82kitaljxu.pdf
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
