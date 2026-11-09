-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Bjse BjseSecurities TcpMarketData BjseBinary 1.1 Protocol
local omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1 = Proto("Omi.Bjse.BjseSecurities.TcpMarketData.BjseBinary.v1.1", "Bjse BjseSecurities TcpMarketData BjseBinary 1.1")

-- Protocol table
local bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Bjse BjseSecurities TcpMarketData BjseBinary 1.1 Fields
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.appl_beg_seq_num = ProtoField.new("Appl Beg Seq Num", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.applbegseqnum", ftypes.INT64, nil, nil, nil, "Starting sequence number, effective when ResendType = 1")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.appl_end_seq_num = ProtoField.new("Appl End Seq Num", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.applendseqnum", ftypes.INT64, nil, nil, nil, "Ending sequence number, effective when ResendType = 1; when 0 the gateway sets it to the highest sequence number of the channel it holds in memory")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.appl_last_seq_num = ProtoField.new("Appl Last Seq Num", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.appllastseqnum", ftypes.INT64, nil, nil, nil, "Sequence number of the last market data message")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.applseqnum", ftypes.INT64, nil, nil, nil, "Message sequence number, counting from 1")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.ask_appl_seq_num = ProtoField.new("Ask Appl Seq Num", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.askapplseqnum", ftypes.INT64, nil, nil, nil, "Sell order index, counting from 1; 0 means no corresponding order")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.auction_value_trade = ProtoField.new("Auction Value Trade", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.auctionvaluetrade", ftypes.DOUBLE, nil, nil, nil, "Matching trade value")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.auction_volume_trade = ProtoField.new("Auction Volume Trade", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.auctionvolumetrade", ftypes.DOUBLE, nil, nil, nil, "Matching trade volume")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.bid_appl_seq_num = ProtoField.new("Bid Appl Seq Num", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.bidapplseqnum", ftypes.INT64, nil, nil, nil, "Buy order index, counting from 1; 0 means no corresponding order")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.body_length = ProtoField.new("Body Length", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.bodylength", ftypes.UINT32, nil, nil, nil, "The length of a message body")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.businessrejectreason", ftypes.UINT16, nil, nil, nil, "Reject reason")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.businessrejectrefid", ftypes.STRING, nil, nil, nil, "Business layer ID of the rejected message")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.business_reject_text = ProtoField.new("Business Reject Text", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.businessrejecttext", ftypes.STRING, nil, nil, nil, "Reject reason text, up to 50 bytes that may include Chinese characters")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.channel_no = ProtoField.new("Channel No", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.channelno", ftypes.UINT16, nil, nil, nil, "Channel code")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.checksum = ProtoField.new("Checksum", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.checksum", ftypes.UINT32, nil, nil, nil, "The checksum of a message, the sum of every byte from the start of the message header through the end of the message body taken modulo 256")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.confirm_id = ProtoField.new("Confirm Id", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.confirmid", ftypes.UINT32, nil, nil, nil, "Trade agreement number")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.default_appl_ver_id = ProtoField.new("Default Appl Ver Id", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.defaultapplverid", ftypes.STRING, nil, nil, nil, "Binary protocol version, in the form n.xy; the communication version of this specification is 1.00")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.end_of_channel = ProtoField.new("End Of Channel", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.endofchannel", ftypes.UINT16, nil, nil, nil, "End of channel flag")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.exec_type = ProtoField.new("Exec Type", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.exectype", ftypes.STRING, nil, nil, nil, "Execution type")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.expiration_days = ProtoField.new("Expiration Days", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.expirationdays", ftypes.UINT16, nil, nil, nil, "Term in days")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.expiration_type = ProtoField.new("Expiration Type", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.expirationtype", ftypes.UINT8, nil, nil, nil, "Term type")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.headline = ProtoField.new("Headline", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.headline", ftypes.STRING, nil, nil, nil, "Announcement title, up to 128 bytes that may include Chinese characters")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.heartbtint", ftypes.INT32, nil, nil, nil, "Heartbeat interval in seconds, provided to the gateway by the Vendor Supplied System at logon")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.index_md_entries = ProtoField.new("Index Md Entries", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.indexmdentries", ftypes.STRING, nil, nil, nil, "Market data entries giving the index points")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_entries = ProtoField.new("Md Entries", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.mdentries", ftypes.STRING, nil, nil, nil, "Market data entries disclosing the order book, with the orders at each price level nested inside")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_entry_px = ProtoField.new("Md Entry Px", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.mdentrypx", ftypes.DOUBLE, nil, nil, nil, "Price, N18(5)")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_entry_size = ProtoField.new("Md Entry Size", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.mdentrysize", ftypes.DOUBLE, nil, nil, nil, "Quantity. In a spot bond trading snapshot the last price entry (MDEntryType 2) uses it for the trading method that produced the price: 0.001 = matching, 0.002 = click, 0.003 = negotiated, 0.004 = inquiry, 0.005 = bidding")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_entry_type = ProtoField.new("Md Entry Type", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.mdentrytype", ftypes.STRING, nil, nil, nil, "Market data entry type")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_price_level = ProtoField.new("Md Price Level", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.mdpricelevel", ftypes.UINT16, nil, nil, nil, "Bid or offer book level")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_stream_i_ds = ProtoField.new("Md Stream I Ds", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.mdstreamids", ftypes.STRING, nil, nil, nil, "One entry per market data category carried on the channel")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_stream_id = ProtoField.new("Md Stream Id", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.mdstreamid", ftypes.STRING, nil, nil, nil, "Market data category")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.message_tail = ProtoField.new("Message Tail", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.messagetail", ftypes.STRING, nil, nil, nil, "Bjse Bjqg Message Tail, defining the checksum of a message, transmitted without encryption")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.msg_type = ProtoField.new("Msg Type", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.msgtype", ftypes.UINT32, nil, nil, nil, "Type of a message")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.news_id = ProtoField.new("News Id", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.newsid", ftypes.STRING, nil, nil, nil, "Announcement identifier, effective when ResendType = 2; an empty string requests the announcement summary")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.news_type = ProtoField.new("News Type", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.newstype", ftypes.UINT8, nil, nil, nil, "Announcement type")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.no_md_entries = ProtoField.new("No Md Entries", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.nomdentries", ftypes.UINT32, nil, nil, nil, "Number of market data entries")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.no_md_stream_id = ProtoField.new("No Md Stream Id", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.nomdstreamid", ftypes.UINT32, nil, nil, nil, "Number of market data categories")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.no_orders = ProtoField.new("No Orders", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.noorders", ftypes.UINT32, nil, nil, nil, "Number of orders disclosed at the price level; 0 means not disclosed")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.no_sub_trading_phase_codes = ProtoField.new("No Sub Trading Phase Codes", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.nosubtradingphasecodes", ftypes.UINT32, nil, nil, nil, "Number of trading phase subdivisions, reserved")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.no_switch = ProtoField.new("No Switch", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.noswitch", ftypes.UINT32, nil, nil, nil, "Number of switches")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.num_trades = ProtoField.new("Num Trades", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.numtrades", ftypes.INT64, nil, nil, nil, "Number of trades")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.number_of_orders = ProtoField.new("Number Of Orders", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.numberoforders", ftypes.INT64, nil, nil, nil, "Total number of orders at the price level; 0 means not disclosed")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.ord_type = ProtoField.new("Ord Type", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.ordtype", ftypes.STRING, nil, nil, nil, "Order type")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.order_qty = ProtoField.new("Order Qty", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.orderqty", ftypes.DOUBLE, nil, nil, nil, "Order quantity")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.orders = ProtoField.new("Orders", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.orders", ftypes.STRING, nil, nil, nil, "The individual order quantities disclosed at this price level")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.orig_time = ProtoField.new("Orig Time", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.origtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time the channel heartbeat was generated")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.orig_time_utc = ProtoField.new("Orig Time", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.origtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time the channel heartbeat was generated")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.password = ProtoField.new("Password", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.password", ftypes.STRING)
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.pre_close_px = ProtoField.new("Pre Close Px", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.preclosepx", ftypes.DOUBLE, nil, nil, nil, "Previous close price")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.price = ProtoField.new("Price", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.price", ftypes.DOUBLE, nil, nil, nil, "Order price")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.raw_data = ProtoField.new("Raw Data", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.rawdata", ftypes.BYTES, nil, nil, nil, "Binary data, its length given by the leading RawDataLength")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.raw_data_format = ProtoField.new("Raw Data Format", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.rawdataformat", ftypes.STRING, nil, nil, nil, "Binary data format, such as TXT, PDF or DOC")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.raw_data_length = ProtoField.new("Raw Data Length", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.rawdatalength", ftypes.UINT32, nil, nil, nil, "Binary data length")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.refmsgtype", ftypes.UINT32, nil, nil, nil, "Message type of the rejected message")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.refseqnum", ftypes.INT64, nil, nil, nil, "Sequence number of the rejected message")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.reject_text = ProtoField.new("Reject Text", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.rejecttext", ftypes.STRING, nil, nil, nil, "Effective only on the gateway reply; when the request is rejected, the error code is returned here")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.resend_status = ProtoField.new("Resend Status", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.resendstatus", ftypes.UINT8, nil, nil, nil, "Retransmission status, effective only on the gateway reply")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.resend_type = ProtoField.new("Resend Type", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.resendtype", ftypes.UINT8, nil, nil, nil, "Retransmission type")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_id = ProtoField.new("Security Id", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.securityid", ftypes.STRING, nil, nil, nil, "Security code, six digits behind two leading spaces")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_id_source = ProtoField.new("Security Id Source", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.securityidsource", ftypes.STRING, nil, nil, nil, "Security code source, behind one leading space")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_switch_status = ProtoField.new("Security Switch Status", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.securityswitchstatus", ftypes.UINT16, nil, nil, nil, "Switch status")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_switch_type = ProtoField.new("Security Switch Type", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.securityswitchtype", ftypes.UINT16, nil, nil, nil, "Switch type")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_symbol = ProtoField.new("Security Symbol", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.securitysymbol", ftypes.STRING, nil, nil, nil, "Security short name")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.sendercompid", ftypes.STRING, nil, nil, nil, "Sender code")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.session_status = ProtoField.new("Session Status", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.sessionstatus", ftypes.INT32, nil, nil, nil, "Session status at logout")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.settl_period = ProtoField.new("Settl Period", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.settlperiod", ftypes.STRING, nil, nil, nil, "Settlement period")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.settl_type = ProtoField.new("Settl Type", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.settltype", ftypes.STRING, nil, nil, nil, "Settlement method")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.side = ProtoField.new("Side", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.side", ftypes.STRING)
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.stock_num = ProtoField.new("Stock Num", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.stocknum", ftypes.UINT32, nil, nil, nil, "Number of securities")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_code = ProtoField.new("Sub Trading Phase Code", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.subtradingphasecode", ftypes.STRING, nil, nil, nil, "Trading phase code of the trading type")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_codes = ProtoField.new("Sub Trading Phase Codes", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.subtradingphasecodes", ftypes.STRING, nil, nil, nil, "One entry per trading phase subdivision, giving its code and trading type")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.switch = ProtoField.new("Switch", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.switch", ftypes.STRING, nil, nil, nil, "One entry per security switch, giving its type and status")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.target_comp_id = ProtoField.new("Target Comp Id", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.targetcompid", ftypes.STRING, nil, nil, nil, "Receiver code")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.text = ProtoField.new("Text", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.text", ftypes.STRING, nil, nil, nil, "Further explanation of the logout reason, up to 200 bytes that may include Chinese characters")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.total_value_trade = ProtoField.new("Total Value Trade", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.totalvaluetrade", ftypes.DOUBLE, nil, nil, nil, "Total trade value")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.total_volume_trade = ProtoField.new("Total Volume Trade", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.totalvolumetrade", ftypes.DOUBLE, nil, nil, nil, "Total trade volume")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trade_money = ProtoField.new("Trade Money", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.trademoney", ftypes.DOUBLE, nil, nil, nil, "Trade value in yuan")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trade_price = ProtoField.new("Trade Price", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.tradeprice", ftypes.DOUBLE)
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trade_qty = ProtoField.new("Trade Qty", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.tradeqty", ftypes.DOUBLE, nil, nil, nil, "Trade quantity")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trade_time = ProtoField.new("Trade Time", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.tradetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of the most recent trade")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trade_time_utc = ProtoField.new("Trade Time", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.tradetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of the most recent trade")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trading_phase_code = ProtoField.new("Trading Phase Code", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.tradingphasecode", ftypes.STRING, nil, nil, nil, "Trading phase code of the product. Only the first two characters are used: character 0 is the phase, S = start before the open, O = opening call auction, T = continuous trading, E = closed, H = temporary halt, V = volatility interruption; character 1 is 0 = cannot trade normally (before the open, suspended all day or after the close) or 1 = can trade normally")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trading_type = ProtoField.new("Trading Type", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.tradingtype", ftypes.UINT8)
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.transact_time = ProtoField.new("Transact Time", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Order time")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.transact_time_utc = ProtoField.new("Transact Time", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Order time")

-- Bjse BjseSecurities TcpMarketData BjseBinary 1.1 Framing
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.message = ProtoField.new("Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.message", ftypes.STRING, nil, nil, nil, "Bjse Bjqg Session Message")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.message_header = ProtoField.new("Message Header", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.messageheader", ftypes.STRING, nil, nil, nil, "Bjse Bjqg Message Header, defining the type and body length of a message, transmitted without encryption")

-- Bjse BjseSecurities TcpMarketData 1.1 Application Messages
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.agreement_trading_order_tick_message = ProtoField.new("Agreement Trading Order Tick Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.agreementtradingordertickmessage", ftypes.STRING, nil, nil, nil, "Order tick of agreement trading on the trading support platform, market data category 021, published in real time; not yet enabled.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.announcement_message = ProtoField.new("Announcement Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.announcementmessage", ftypes.STRING, nil, nil, nil, "Carries an announcement file; an empty NewsID marks the announcement summary, a text list of NewsNo, NewsID, Headline, RawDataLength, OrigTime and NewsType for every announcement issued. Under the multicast distribution protocol with announcement landing enabled, each announcement is sent as a summary that carries no content and has RawDataLength fixed to 0, its content being stored as a file.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.auction_trading_snapshot_message = ProtoField.new("Auction Trading Snapshot Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.auctiontradingsnapshotmessage", ftypes.STRING, nil, nil, nil, "Snapshot of centralized auction trading of stocks, convertible bonds and other cash products, market data category 020, published every 3 seconds; not yet enabled.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.bond_spot_matching_large_order_tick_message = ProtoField.new("Bond Spot Matching Large Order Tick Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.bondspotmatchinglargeordertickmessage", ftypes.STRING, nil, nil, nil, "Order tick of large lot matching in spot bond trading, market data category 011, published in real time.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.bond_spot_matching_large_trade_tick_message = ProtoField.new("Bond Spot Matching Large Trade Tick Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.bondspotmatchinglargetradetickmessage", ftypes.STRING, nil, nil, nil, "Trade tick of large lot matching in spot bond trading, market data category 011, published in real time.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.bond_spot_negotiated_trade_tick_message = ProtoField.new("Bond Spot Negotiated Trade Tick Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.bondspotnegotiatedtradetickmessage", ftypes.STRING, nil, nil, nil, "Trade tick of negotiated trading in spot bond trading, market data category 012, published in real time.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.bond_spot_trading_snapshot_message = ProtoField.new("Bond Spot Trading Snapshot Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.bondspottradingsnapshotmessage", ftypes.STRING, nil, nil, nil, "Snapshot of spot bond trading, market data category 010, published every 3 seconds.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.business_reject_message = ProtoField.new("Business Reject Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.businessrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an application message that satisfies the session layer rules but not the business layer rules, mainly an invalid retransmission request.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.channel_heartbeat_message = ProtoField.new("Channel Heartbeat Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.channelheartbeatmessage", ftypes.STRING, nil, nil, nil, "Sent on a market data channel every 3 seconds, carrying the sequence number of the last tick message on the channel.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "Sent by either side when it is idle so that the other can check the Tcp connection, so both sides transmit this message type. BodyLength is 0 and the message carries no body.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.index_snapshot_message = ProtoField.new("Index Snapshot Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.indexsnapshotmessage", ftypes.STRING, nil, nil, nil, "Snapshot of Beijing Stock Exchange indices and volume statistics, market data category 030, published every 3 seconds; not yet enabled.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.logon_message = ProtoField.new("Logon Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.logonmessage", ftypes.STRING, nil, nil, nil, "The first message the Vendor Supplied System sends to the market quotation gateway, which confirms a successful logon with a Logon of its own, so both sides transmit this message type.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.logout_message = ProtoField.new("Logout Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.logoutmessage", ftypes.STRING, nil, nil, nil, "Sent by the gateway to refuse a logon request it does not accept; the Vendor Supplied System may also send it to end the connection, so both sides transmit this message type.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.retransmission_message = ProtoField.new("Retransmission Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.retransmissionmessage", ftypes.STRING, nil, nil, nil, "Sent by the Vendor Supplied System to request tick data or announcements again; the gateway returns the data and then the same message type to mark the retransmission complete or report why it failed, so both sides transmit this message type.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.securities_lending_order_tick_message = ProtoField.new("Securities Lending Order Tick Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.securitieslendingordertickmessage", ftypes.STRING, nil, nil, nil, "Order tick of refinancing securities lending, market data category 023, published in real time; not yet enabled.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.securities_lending_trade_tick_message = ProtoField.new("Securities Lending Trade Tick Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.securitieslendingtradetickmessage", ftypes.STRING, nil, nil, nil, "Trade tick of refinancing securities lending, market data category 023, published in real time; it has no extension fields and is not yet enabled.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_real_time_status_message = ProtoField.new("Security Real Time Status Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.securityrealtimestatusmessage", ftypes.STRING, nil, nil, nil, "Real time status of a security, published every 10 minutes; the switch types are not yet enabled.")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.snapshot_channel_statistics_message = ProtoField.new("Snapshot Channel Statistics Message", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.snapshotchannelstatisticsmessage", ftypes.STRING, nil, nil, nil, "Sent by each snapshot channel every 15 seconds.")

-- Bjse BjseSecurities TcpMarketData BjseBinary 1.1 Generated Fields
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.index_md_entries_index = ProtoField.new("Index Md Entries Index", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.indexmdentriesindex", ftypes.UINT16)
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_entries_index = ProtoField.new("Md Entries Index", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.mdentriesindex", ftypes.UINT16)
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_stream_i_ds_index = ProtoField.new("Md Stream I Ds Index", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.mdstreamidsindex", ftypes.UINT16)
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.orders_index = ProtoField.new("Orders Index", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.ordersindex", ftypes.UINT16)
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_codes_index = ProtoField.new("Sub Trading Phase Codes Index", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.subtradingphasecodesindex", ftypes.UINT16)
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.switch_index = ProtoField.new("Switch Index", "bjse.bjsesecurities.tcpmarketdata.bjsebinary.v1.1.switchindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Bjse BjseSecurities TcpMarketData BjseBinary 1.1 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Bjse BjseSecurities TcpMarketData BjseBinary 1.1 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Bjse BjseSecurities TcpMarketData BjseBinary 1.1 Show Options
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_application_messages then
    show.application_messages = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_application_messages
  end
  if show.headers ~= omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_headers then
    show.headers = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_headers
  end
  if show.repeating_groups ~= omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_repeating_groups then
    show.repeating_groups = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_repeating_groups
  end
  if show.structs ~= omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_structs then
    show.structs = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_structs
  end
  if show.indexes ~= omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_indexes then
    show.indexes = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.show_indexes
  end
  if bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.timestamp_format ~= omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.timestamp_format then
    bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.timestamp_format = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.prefs.timestamp_format
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


-----------------------------------------------------------------------
-- Bjse BjseSecurities TcpMarketData BjseBinary 1.1 Fields
-----------------------------------------------------------------------

-- Appl Beg Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_beg_seq_num = {}

-- Size: Appl Beg Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_beg_seq_num.size = 8

-- Display: Appl Beg Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_beg_seq_num.display = function(value)
  return "Appl Beg Seq Num: "..value
end

-- Dissect: Appl Beg Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_beg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_beg_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_beg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.appl_beg_seq_num, range, value, display)

  return offset + length, value
end

-- Appl End Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_end_seq_num = {}

-- Size: Appl End Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_end_seq_num.size = 8

-- Display: Appl End Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_end_seq_num.display = function(value)
  return "Appl End Seq Num: "..value
end

-- Dissect: Appl End Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_end_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.appl_end_seq_num, range, value, display)

  return offset + length, value
end

-- Appl Last Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_last_seq_num = {}

-- Size: Appl Last Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_last_seq_num.size = 8

-- Display: Appl Last Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_last_seq_num.display = function(value)
  return "Appl Last Seq Num: "..value
end

-- Dissect: Appl Last Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.appl_last_seq_num, range, value, display)

  return offset + length, value
end

-- Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num = {}

-- Size: Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.size = 8

-- Display: Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.display = function(value)
  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Ask Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num = {}

-- Size: Ask Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num.size = 8

-- Display: Ask Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num.display = function(value)
  return "Ask Appl Seq Num: "..value
end

-- Dissect: Ask Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.ask_appl_seq_num, range, value, display)

  return offset + length, value
end

-- Auction Value Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_value_trade = {}

-- Size: Auction Value Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_value_trade.size = 8

-- Display: Auction Value Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_value_trade.display = function(value)
  return "Auction Value Trade: "..value
end

-- Translate: Auction Value Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_value_trade.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Auction Value Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_value_trade.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_value_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_value_trade.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_value_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.auction_value_trade, range, value, display)

  return offset + length, value
end

-- Auction Volume Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_volume_trade = {}

-- Size: Auction Volume Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_volume_trade.size = 8

-- Display: Auction Volume Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_volume_trade.display = function(value)
  return "Auction Volume Trade: "..value
end

-- Translate: Auction Volume Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_volume_trade.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Auction Volume Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_volume_trade.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_volume_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_volume_trade.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_volume_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.auction_volume_trade, range, value, display)

  return offset + length, value
end

-- Bid Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num = {}

-- Size: Bid Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num.size = 8

-- Display: Bid Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num.display = function(value)
  return "Bid Appl Seq Num: "..value
end

-- Dissect: Bid Appl Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.bid_appl_seq_num, range, value, display)

  return offset + length, value
end

-- Body Length
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.body_length = {}

-- Size: Body Length
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.body_length.size = 4

-- Display: Body Length
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.body_length.display = function(value)
  return "Body Length: "..value
end

-- Dissect: Body Length
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.body_length.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.body_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.body_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.body_length, range, value, display)

  return offset + length, value
end

-- Business Reject Reason
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_reason = {}

-- Size: Business Reject Reason
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_reason.size = 2

-- Display: Business Reject Reason
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_reason.display = function(value)
  return "Business Reject Reason: "..value
end

-- Dissect: Business Reject Reason
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Business Reject Ref Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_ref_id = {}

-- Size: Business Reject Ref Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_ref_id.size = 10

-- Display: Business Reject Ref Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_ref_id.display = function(value)
  return "Business Reject Ref Id: "..value
end

-- Dissect: Business Reject Ref Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_ref_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.business_reject_ref_id, range, value, display)

  return offset + length, value
end

-- Business Reject Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_text = {}

-- Size: Business Reject Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_text.size = 50

-- Display: Business Reject Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_text.display = function(value)
  return "Business Reject Text: "..value
end

-- Dissect: Business Reject Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_text.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.business_reject_text, range, value, display)

  return offset + length, value
end

-- Channel No
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no = {}

-- Size: Channel No
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size = 2

-- Display: Channel No
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.display = function(value)
  return "Channel No: "..value
end

-- Dissect: Channel No
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.channel_no, range, value, display)

  return offset + length, value
end

-- Checksum
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.checksum = {}

-- Size: Checksum
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.checksum.size = 4

-- Display: Checksum
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.checksum.display = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.checksum.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.checksum, range, value, display)

  return offset + length, value
end

-- Confirm Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.confirm_id = {}

-- Size: Confirm Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.confirm_id.size = 4

-- Display: Confirm Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.confirm_id.display = function(value)
  return "Confirm Id: "..value
end

-- Dissect: Confirm Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.confirm_id.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.confirm_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.confirm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.confirm_id, range, value, display)

  return offset + length, value
end

-- Default Appl Ver Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.default_appl_ver_id = {}

-- Size: Default Appl Ver Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.default_appl_ver_id.size = 32

-- Display: Default Appl Ver Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.default_appl_ver_id.display = function(value)
  return "Default Appl Ver Id: "..value
end

-- Dissect: Default Appl Ver Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.default_appl_ver_id.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.default_appl_ver_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.default_appl_ver_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.default_appl_ver_id, range, value, display)

  return offset + length, value
end

-- End Of Channel
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.end_of_channel = {}

-- Size: End Of Channel
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.end_of_channel.size = 2

-- Display: End Of Channel
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.end_of_channel.labels = {
  [0] = "End Of Channel: No (0)",
  [1] = "End Of Channel: Yes (1)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.end_of_channel.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.end_of_channel.labels[value] or "End Of Channel: Unknown("..value..")"
end

-- Dissect: End Of Channel
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.end_of_channel.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.end_of_channel.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.end_of_channel.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.end_of_channel, range, value, display)

  return offset + length, value
end

-- Exec Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type = {}

-- Size: Exec Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.size = 1

-- Display: Exec Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.labels = {
  ["4"] = "Exec Type: Cancelled (4)",
  ["F"] = "Exec Type: Trade (F)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.labels[value] or "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.size
  local range = buffer(offset, length)
  local value = range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Expiration Days
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_days = {}

-- Size: Expiration Days
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_days.size = 2

-- Display: Expiration Days
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_days.display = function(value)
  return "Expiration Days: "..value
end

-- Dissect: Expiration Days
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_days.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.expiration_days, range, value, display)

  return offset + length, value
end

-- Expiration Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_type = {}

-- Size: Expiration Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_type.size = 1

-- Display: Expiration Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_type.labels = {
  [1] = "Expiration Type: Fixed Term (1)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_type.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_type.labels[value] or "Expiration Type: Unknown("..value..")"
end

-- Dissect: Expiration Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_type.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.expiration_type, range, value, display)

  return offset + length, value
end

-- Headline
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.headline = {}

-- Size: Headline
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.headline.size = 128

-- Display: Headline
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.headline.display = function(value)
  return "Headline: "..value
end

-- Dissect: Headline
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.headline.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.headline.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.headline.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.headline, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heart_bt_int = {}

-- Size: Heart Bt Int
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heart_bt_int.size = 4

-- Display: Heart Bt Int
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Md Entry Px
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px = {}

-- Size: Md Entry Px
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px.size = 8

-- Display: Md Entry Px
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px.display = function(value)
  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Md Entry Px
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Md Entry Size
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_size = {}

-- Size: Md Entry Size
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_size.size = 8

-- Display: Md Entry Size
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_size.display = function(value)
  return "Md Entry Size: "..value
end

-- Translate: Md Entry Size
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_size.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Md Entry Size
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_size.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_size.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Md Entry Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type = {}

-- Size: Md Entry Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type.size = 2

-- Display: Md Entry Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type.labels = {
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

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type.labels[value] or "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Md Price Level
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_price_level = {}

-- Size: Md Price Level
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_price_level.size = 2

-- Display: Md Price Level
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_price_level.display = function(value)
  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_price_level.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_price_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Md Stream Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id = {}

-- Size: Md Stream Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size = 3

-- Display: Md Stream Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.labels = {
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

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.labels[value] or "Md Stream Id: Unknown("..value..")"
end

-- Dissect: Md Stream Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_stream_id, range, value, display)

  return offset + length, value
end

-- Msg Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.msg_type = {}

-- Size: Msg Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.msg_type.size = 4

-- Display: Msg Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.msg_type.labels = {
  [1] = "Msg Type: Logon Message (1)",
  [2] = "Msg Type: Logout Message (2)",
  [3] = "Msg Type: Heartbeat Message (3)",
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

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.msg_type.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- News Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_id = {}

-- Size: News Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_id.size = 16

-- Display: News Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_id.display = function(value)
  return "News Id: "..value
end

-- Dissect: News Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_id.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.news_id, range, value, display)

  return offset + length, value
end

-- News Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_type = {}

-- Size: News Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_type.size = 1

-- Display: News Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_type.labels = {
  [1] = "News Type: Information Announcement (1)",
  [2] = "News Type: Listed Company Information (2)",
  [3] = "News Type: Urgent Announcement (3)",
  [4] = "News Type: Securities Company Information (4)",
  [5] = "News Type: Other Announcement (5)",
  [6] = "News Type: Stock Temporary Halt Announcement (6)",
  [7] = "News Type: Bond Temporary Halt Announcement (7)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_type.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_type.labels[value] or "News Type: Unknown("..value..")"
end

-- Dissect: News Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_type.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.news_type, range, value, display)

  return offset + length, value
end

-- No Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries = {}

-- Size: No Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries.size = 4

-- Display: No Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries.display = function(value)
  return "No Md Entries: "..value
end

-- Dissect: No Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.no_md_entries, range, value, display)

  return offset + length, value
end

-- No Md Stream Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_stream_id = {}

-- Size: No Md Stream Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_stream_id.size = 4

-- Display: No Md Stream Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_stream_id.display = function(value)
  return "No Md Stream Id: "..value
end

-- Dissect: No Md Stream Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_stream_id.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_stream_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.no_md_stream_id, range, value, display)

  return offset + length, value
end

-- No Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_orders = {}

-- Size: No Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_orders.size = 4

-- Display: No Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_orders.display = function(value)
  return "No Orders: "..value
end

-- Dissect: No Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_orders.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.no_orders, range, value, display)

  return offset + length, value
end

-- No Sub Trading Phase Codes
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes = {}

-- Size: No Sub Trading Phase Codes
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.size = 4

-- Display: No Sub Trading Phase Codes
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.display = function(value)
  return "No Sub Trading Phase Codes: "..value
end

-- Dissect: No Sub Trading Phase Codes
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.no_sub_trading_phase_codes, range, value, display)

  return offset + length, value
end

-- No Switch
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_switch = {}

-- Size: No Switch
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_switch.size = 4

-- Display: No Switch
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_switch.display = function(value)
  return "No Switch: "..value
end

-- Dissect: No Switch
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_switch.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_switch.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_switch.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.no_switch, range, value, display)

  return offset + length, value
end

-- Num Trades
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades = {}

-- Size: Num Trades
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades.size = 8

-- Display: Num Trades
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades.display = function(value)
  return "Num Trades: "..value
end

-- Dissect: Num Trades
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.num_trades, range, value, display)

  return offset + length, value
end

-- Number Of Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.number_of_orders = {}

-- Size: Number Of Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.number_of_orders.size = 8

-- Display: Number Of Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Ord Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ord_type = {}

-- Size: Ord Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ord_type.size = 1

-- Display: Ord Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ord_type.labels = {
  ["1"] = "Ord Type: Market (1)",
  ["2"] = "Ord Type: Limit (2)",
  ["U"] = "Ord Type: Best Own Side (U)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ord_type.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ord_type.labels[value] or "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ord_type.size
  local range = buffer(offset, length)
  local value = range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Qty
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty = {}

-- Size: Order Qty
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.size = 8

-- Display: Order Qty
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Translate: Order Qty
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Order Qty
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Orig Time
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time = {}

-- Size: Orig Time
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.size = 8

-- Dissect: Orig Time
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.orig_time
  if bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.timestamp_format == 3 then field = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.orig_time_utc end

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

-- Password
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.password = {}

-- Size: Password
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.password.size = 16

-- Display: Password
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.password.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.password, range, value, display)

  return offset + length, value
end

-- Pre Close Px
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px = {}

-- Size: Pre Close Px
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.size = 8

-- Display: Pre Close Px
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.display = function(value)
  return "Pre Close Px: "..value
end

-- Translate: Pre Close Px
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Pre Close Px
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.pre_close_px, range, value, display)

  return offset + length, value
end

-- Price
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price = {}

-- Size: Price
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.size = 8

-- Display: Price
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Price
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- Raw Data
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data = {}

-- Display: Raw Data
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data.display = function(value)
  return "Raw Data: "..value
end

-- Dissect runtime sized field: Raw Data
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data.display(value, packet, parent, size)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.raw_data, range, value, display)

  return offset + size, value
end

-- Raw Data Format
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_format = {}

-- Size: Raw Data Format
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_format.size = 8

-- Display: Raw Data Format
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_format.display = function(value)
  return "Raw Data Format: "..value
end

-- Dissect: Raw Data Format
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_format.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_format.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_format.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.raw_data_format, range, value, display)

  return offset + length, value
end

-- Raw Data Length
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_length = {}

-- Size: Raw Data Length
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_length.size = 4

-- Display: Raw Data Length
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_length.display = function(value)
  return "Raw Data Length: "..value
end

-- Dissect: Raw Data Length
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_length.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.raw_data_length, range, value, display)

  return offset + length, value
end

-- Ref Msg Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_msg_type = {}

-- Size: Ref Msg Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_msg_type.size = 4

-- Display: Ref Msg Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_msg_type.display = function(value)
  return "Ref Msg Type: "..value
end

-- Dissect: Ref Msg Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Ref Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_seq_num = {}

-- Size: Ref Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_seq_num.size = 8

-- Display: Ref Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_seq_num.display = function(value)
  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.ref_seq_num, range, value, display)

  return offset + length, value
end

-- Reject Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.reject_text = {}

-- Size: Reject Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.reject_text.size = 16

-- Display: Reject Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.reject_text.display = function(value)
  return "Reject Text: "..value
end

-- Dissect: Reject Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.reject_text.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.reject_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.reject_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.reject_text, range, value, display)

  return offset + length, value
end

-- Resend Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_status = {}

-- Size: Resend Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_status.size = 1

-- Display: Resend Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_status.labels = {
  [1] = "Resend Status: Complete (1)",
  [2] = "Resend Status: Partially Complete (2)",
  [3] = "Resend Status: No Permission (3)",
  [4] = "Resend Status: Data Unavailable (4)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_status.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_status.labels[value] or "Resend Status: Unknown("..value..")"
end

-- Dissect: Resend Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_status.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.resend_status, range, value, display)

  return offset + length, value
end

-- Resend Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_type = {}

-- Size: Resend Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_type.size = 1

-- Display: Resend Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_type.labels = {
  [1] = "Resend Type: Tick Data (1)",
  [2] = "Resend Type: Announcement (2)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_type.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_type.labels[value] or "Resend Type: Unknown("..value..")"
end

-- Dissect: Resend Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_type.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.resend_type, range, value, display)

  return offset + length, value
end

-- Security Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id = {}

-- Size: Security Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size = 8

-- Display: Security Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Id Source
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source = {}

-- Size: Security Id Source
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size = 4

-- Display: Security Id Source
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.labels = {
  ["106"] = "Security Id Source: Beijing Stock Exchange (106)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.labels[value] or "Security Id Source: Unknown("..value..")"
end

-- Dissect: Security Id Source
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size
  local range = buffer(offset, length)
  local value = trim_left_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_id_source, range, value, display)

  return offset + length, value
end

-- Security Switch Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_status = {}

-- Size: Security Switch Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_status.size = 2

-- Display: Security Switch Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_status.labels = {
  [0] = "Security Switch Status: No (0)",
  [1] = "Security Switch Status: Yes (1)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_status.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_status.labels[value] or "Security Switch Status: Unknown("..value..")"
end

-- Dissect: Security Switch Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_status.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_switch_status, range, value, display)

  return offset + length, value
end

-- Security Switch Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_type = {}

-- Size: Security Switch Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_type.size = 2

-- Display: Security Switch Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_type.labels = {
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

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_type.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_type.labels[value] or "Security Switch Type: Unknown("..value..")"
end

-- Dissect: Security Switch Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_type.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_switch_type, range, value, display)

  return offset + length, value
end

-- Security Symbol
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_symbol = {}

-- Size: Security Symbol
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_symbol.size = 40

-- Display: Security Symbol
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sender Comp Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sender_comp_id = {}

-- Size: Sender Comp Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sender_comp_id.size = 20

-- Display: Sender Comp Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sender_comp_id.display = function(value)
  return "Sender Comp Id: "..value
end

-- Dissect: Sender Comp Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sender_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sender_comp_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sender_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.sender_comp_id, range, value, display)

  return offset + length, value
end

-- Session Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.session_status = {}

-- Size: Session Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.session_status.size = 4

-- Display: Session Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.session_status.labels = {
  [0] = "Session Status: Session Active (0)",
  [1] = "Session Status: Session Password Changed (1)",
  [2] = "Session Status: Session Password Due To Expire (2)",
  [3] = "Session Status: New Session Password Does Not Comply With Policy (3)",
  [4] = "Session Status: Session Logout Complete (4)",
  [5] = "Session Status: Invalid Username Or Password (5)",
  [6] = "Session Status: Account Locked (6)",
  [7] = "Session Status: Logons Are Not Allowed At This Time (7)",
  [8] = "Session Status: Password Expired (8)",
  [9] = "Session Status: Msg Seq Num Received Too Low (9)",
  [10] = "Session Status: Next Expected Msg Seq Num Received Too High (10)",
  [101] = "Session Status: Other (101)",
  [102] = "Session Status: Invalid Message (102)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.session_status.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.session_status.labels[value] or "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.session_status.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.session_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.session_status, range, value, display)

  return offset + length, value
end

-- Settl Period
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period = {}

-- Size: Settl Period
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.size = 1

-- Display: Settl Period
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.labels = {
  ["0"] = "Settl Period: T Plus 0 (0)",
  ["1"] = "Settl Period: T Plus 1 (1)",
  ["2"] = "Settl Period: T Plus 2 (2)",
  ["3"] = "Settl Period: T Plus 3 (3)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.labels[value] or "Settl Period: Unknown("..value..")"
end

-- Dissect: Settl Period
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.size
  local range = buffer(offset, length)
  local value = range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.settl_period, range, value, display)

  return offset + length, value
end

-- Settl Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type = {}

-- Size: Settl Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.size = 1

-- Display: Settl Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.labels = {
  ["1"] = "Settl Type: Gross (1)",
  ["2"] = "Settl Type: Multilateral Net (2)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.labels[value] or "Settl Type: Unknown("..value..")"
end

-- Dissect: Settl Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.size
  local range = buffer(offset, length)
  local value = range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.settl_type, range, value, display)

  return offset + length, value
end

-- Side
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side = {}

-- Size: Side
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.size = 1

-- Display: Side
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.labels = {
  ["1"] = "Side: Buy (1)",
  ["2"] = "Side: Sell (2)",
  ["G"] = "Side: Borrow (G)",
  ["F"] = "Side: Lend (F)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.size
  local range = buffer(offset, length)
  local value = range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Stock Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.stock_num = {}

-- Size: Stock Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.stock_num.size = 4

-- Display: Stock Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.stock_num.display = function(value)
  return "Stock Num: "..value
end

-- Dissect: Stock Num
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.stock_num.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.stock_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.stock_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.stock_num, range, value, display)

  return offset + length, value
end

-- Sub Trading Phase Code
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_code = {}

-- Size: Sub Trading Phase Code
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_code.size = 8

-- Display: Sub Trading Phase Code
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_code.display = function(value)
  return "Sub Trading Phase Code: "..value
end

-- Dissect: Sub Trading Phase Code
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_code.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_code, range, value, display)

  return offset + length, value
end

-- Target Comp Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.target_comp_id = {}

-- Size: Target Comp Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.target_comp_id.size = 20

-- Display: Target Comp Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.target_comp_id.display = function(value)
  return "Target Comp Id: "..value
end

-- Dissect: Target Comp Id
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.target_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.target_comp_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.target_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.target_comp_id, range, value, display)

  return offset + length, value
end

-- Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text = {}

-- Size: Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text.size = 200

-- Display: Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.text, range, value, display)

  return offset + length, value
end

-- Total Value Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade = {}

-- Size: Total Value Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.size = 8

-- Display: Total Value Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.display = function(value)
  return "Total Value Trade: "..value
end

-- Translate: Total Value Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Total Value Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.total_value_trade, range, value, display)

  return offset + length, value
end

-- Total Volume Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade = {}

-- Size: Total Volume Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.size = 8

-- Display: Total Volume Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.display = function(value)
  return "Total Volume Trade: "..value
end

-- Translate: Total Volume Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Total Volume Trade
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.total_volume_trade, range, value, display)

  return offset + length, value
end

-- Trade Money
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money = {}

-- Size: Trade Money
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.size = 8

-- Display: Trade Money
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.display = function(value)
  return "Trade Money: "..value
end

-- Translate: Trade Money
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Trade Money
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trade_money, range, value, display)

  return offset + length, value
end

-- Trade Price
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price = {}

-- Size: Trade Price
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.size = 8

-- Display: Trade Price
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Trade Price
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Qty
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty = {}

-- Size: Trade Qty
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.size = 8

-- Display: Trade Qty
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.display = function(value)
  return "Trade Qty: "..value
end

-- Translate: Trade Qty
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Trade Qty
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.translate(raw)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trade_qty, range, value, display)

  return offset + length, value
end

-- Trade Time
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_time = {}

-- Size: Trade Time
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_time.size = 8

-- Dissect: Trade Time
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trade_time
  if bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.timestamp_format == 3 then field = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trade_time_utc end

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
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code = {}

-- Size: Trading Phase Code
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.size = 8

-- Display: Trading Phase Code
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.display = function(value)
  return "Trading Phase Code: "..value
end

-- Dissect: Trading Phase Code
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text_encoding))
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trading_phase_code, range, value, display)

  return offset + length, value
end

-- Trading Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_type = {}

-- Size: Trading Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_type.size = 1

-- Display: Trading Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_type.labels = {
  [1] = "Trading Type: Matching Trade (1)",
  [2] = "Trading Type: Click Trade (2)",
  [3] = "Trading Type: Negotiated Trade (3)",
  [4] = "Trading Type: Inquiry Trade (4)",
  [5] = "Trading Type: Bidding Trade (5)",
}

bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_type.display = function(value)
  return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_type.labels[value] or "Trading Type: Unknown("..value..")"
end

-- Dissect: Trading Type
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_type.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.trading_type, range, value, display)

  return offset + length, value
end

-- Transact Time
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time = {}

-- Size: Transact Time
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.size = 8

-- Dissect: Transact Time
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.transact_time
  if bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.timestamp_format == 3 then field = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.transact_time_utc end

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


-----------------------------------------------------------------------
-- Dissect Bjse BjseSecurities TcpMarketData BjseBinary 1.1
-----------------------------------------------------------------------

-- Message Tail
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_tail = {}

-- Size: Message Tail
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_tail.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.checksum.size

-- Display: Message Tail
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_tail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Tail
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_tail.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Checksum: uInt32
  index, checksum = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Tail
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_tail.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.message_tail, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_tail.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_tail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_tail.fields(buffer, offset, packet, parent)
  end
end

-- Securities Lending Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message = {}

-- Size: Securities Lending Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.size

-- Display: Securities Lending Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Lending Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Appl Seq Num: SeqNum
  index, ask_appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Qty: Qty
  index, trade_qty = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.dissect(buffer, index, packet, parent)

  -- Trade Money: Amt
  index, trade_money = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Lending Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.securities_lending_trade_tick_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Negotiated Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message = {}

-- Size: Bond Spot Negotiated Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.size

-- Display: Bond Spot Negotiated Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Negotiated Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Appl Seq Num: SeqNum
  index, ask_appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Qty: Qty
  index, trade_qty = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.dissect(buffer, index, packet, parent)

  -- Trade Money: Amt
  index, trade_money = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- Settl Period: char
  index, settl_period = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.dissect(buffer, index, packet, parent)

  -- Settl Type: char
  index, settl_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Negotiated Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.bond_spot_negotiated_trade_tick_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Matching Large Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message = {}

-- Size: Bond Spot Matching Large Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.size

-- Display: Bond Spot Matching Large Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Matching Large Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Appl Seq Num: SeqNum
  index, ask_appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ask_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Qty: Qty
  index, trade_qty = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_qty.dissect(buffer, index, packet, parent)

  -- Trade Money: Amt
  index, trade_money = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_money.dissect(buffer, index, packet, parent)

  -- Exec Type: char
  index, exec_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.exec_type.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- Settl Period: char
  index, settl_period = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.dissect(buffer, index, packet, parent)

  -- Settl Type: char
  index, settl_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Matching Large Trade Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.bond_spot_matching_large_trade_tick_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Securities Lending Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message = {}

-- Size: Securities Lending Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_days.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_type.size

-- Display: Securities Lending Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Securities Lending Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- Expiration Days: uInt16
  index, expiration_days = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_days.dissect(buffer, index, packet, parent)

  -- Expiration Type: uInt8
  index, expiration_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.expiration_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Securities Lending Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.securities_lending_order_tick_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Agreement Trading Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message = {}

-- Size: Agreement Trading Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.confirm_id.size

-- Display: Agreement Trading Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Agreement Trading Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- Confirm Id: uInt32
  index, confirm_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.confirm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Agreement Trading Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.agreement_trading_order_tick_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Bond Spot Matching Large Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message = {}

-- Size: Bond Spot Matching Large Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ord_type.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.size

-- Display: Bond Spot Matching Large Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Matching Large Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.side.dissect(buffer, index, packet, parent)

  -- Transact Time: LocalTimestamp
  index, transact_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.transact_time.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ord_type.dissect(buffer, index, packet, parent)

  -- Settl Type: char
  index, settl_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_type.dissect(buffer, index, packet, parent)

  -- Settl Period: char
  index, settl_period = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.settl_period.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Matching Large Order Tick Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.bond_spot_matching_large_order_tick_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_md_entries = {}

-- Size: Index Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_md_entries.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px.size

-- Display: Index Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_md_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_md_entries.fields = function(buffer, offset, packet, parent, index_md_entries_index)
  local index = offset

  -- Implicit Index Md Entries Index
  if index_md_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.index_md_entries_index, index_md_entries_index)
    iteration:set_generated()
  end

  -- Md Entry Type: char[2]
  index, md_entry_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Int64
  index, md_entry_px = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_md_entries.dissect = function(buffer, offset, packet, parent, index_md_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.index_md_entries, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_md_entries.fields(buffer, offset, packet, parent, index_md_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_md_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_md_entries.fields(buffer, offset, packet, parent, index_md_entries_index)
  end
end

-- Index Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_snapshot_message = {}

-- Calculate size of: Index Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries.size

  -- Calculate field size from count
  local index_md_entries_count = buffer(offset + index - 4, 4):uint()
  index = index + index_md_entries_count * 10

  return index
end

-- Display: Index Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: char[8]
  index, trading_phase_code = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Pre Close Px: Price
  index, pre_close_px = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Amt
  index, total_volume_trade = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Index Md Entries
  for index_md_entries_index = 1, no_md_entries do
    index, index_md_entries = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_md_entries.dissect(buffer, index, packet, parent, index_md_entries_index)
  end

  return index
end

-- Dissect: Index Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.index_snapshot_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orders = {}

-- Size: Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orders.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.size

-- Display: Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orders.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orders.fields = function(buffer, offset, packet, parent, orders_index)
  local index = offset

  -- Implicit Orders Index
  if orders_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.orders_index, orders_index)
    iteration:set_generated()
  end

  -- Order Qty: Qty
  index, order_qty = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.order_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orders.dissect = function(buffer, offset, packet, parent, orders_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.orders, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orders.fields(buffer, offset, packet, parent, orders_index)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orders.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orders.fields(buffer, offset, packet, parent, orders_index)
  end
end

-- Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries = {}

-- Calculate size of: Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries.size = function(buffer, offset)
  local index = 0

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_size.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_price_level.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.number_of_orders.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_orders.size

  -- Calculate field size from count
  local orders_count = buffer(offset + index - 4, 4):uint()
  index = index + orders_count * 8

  return index
end

-- Display: Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries.fields = function(buffer, offset, packet, parent, md_entries_index)
  local index = offset

  -- Implicit Md Entries Index
  if md_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_entries_index, md_entries_index)
    iteration:set_generated()
  end

  -- Md Entry Type: char[2]
  index, md_entry_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Int64
  index, md_entry_px = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: Amt
  index, md_entry_size = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Price Level: uInt16
  index, md_price_level = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_price_level.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Int64
  index, number_of_orders = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.number_of_orders.dissect(buffer, index, packet, parent)

  -- No Orders: NumInGroup
  index, no_orders = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_orders.dissect(buffer, index, packet, parent)

  -- Repeating: Orders
  for orders_index = 1, no_orders do
    index, orders = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orders.dissect(buffer, index, packet, parent, orders_index)
  end

  return index
end

-- Dissect: Md Entries
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries.dissect = function(buffer, offset, packet, parent, md_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_entries, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries.fields(buffer, offset, packet, parent, md_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries.fields(buffer, offset, packet, parent, md_entries_index)
  end
end

-- Auction Trading Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message = {}

-- Calculate size of: Auction Trading Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries.size

  -- Calculate field size from count
  local md_entries_count = buffer(offset + index - 4, 4):uint()
  for i = 1, md_entries_count do
    index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries.size(buffer, offset + index)
  end
  return index
end

-- Display: Auction Trading Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trading Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: char[8]
  index, trading_phase_code = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Pre Close Px: Price
  index, pre_close_px = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Amt
  index, total_volume_trade = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entries
  for md_entries_index = 1, no_md_entries do
    index, md_entries = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries.dissect(buffer, index, packet, parent, md_entries_index)
  end

  return index
end

-- Dissect: Auction Trading Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.auction_trading_snapshot_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Sub Trading Phase Codes
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_codes = {}

-- Size: Sub Trading Phase Codes
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_code.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_type.size

-- Display: Sub Trading Phase Codes
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sub Trading Phase Codes
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.fields = function(buffer, offset, packet, parent, sub_trading_phase_codes_index)
  local index = offset

  -- Implicit Sub Trading Phase Codes Index
  if sub_trading_phase_codes_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_codes_index, sub_trading_phase_codes_index)
    iteration:set_generated()
  end

  -- Sub Trading Phase Code: char[8]
  index, sub_trading_phase_code = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_code.dissect(buffer, index, packet, parent)

  -- Trading Type: uInt8
  index, trading_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sub Trading Phase Codes
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.dissect = function(buffer, offset, packet, parent, sub_trading_phase_codes_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.sub_trading_phase_codes, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.fields(buffer, offset, packet, parent, sub_trading_phase_codes_index)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.fields(buffer, offset, packet, parent, sub_trading_phase_codes_index)
  end
end

-- Bond Spot Trading Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message = {}

-- Calculate size of: Bond Spot Trading Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries.size

  -- Calculate field size from count
  local md_entries_count = buffer(offset + index - 4, 4):uint()
  for i = 1, md_entries_count do
    index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries.size(buffer, offset + index)
  end
  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.size

  -- Calculate field size from count
  local sub_trading_phase_codes_count = buffer(offset + index - 4, 4):uint()
  index = index + sub_trading_phase_codes_count * 9

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_volume_trade.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_value_trade.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_time.size

  return index
end

-- Display: Bond Spot Trading Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Spot Trading Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: char[3]
  index, md_stream_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: char[8]
  index, trading_phase_code = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Pre Close Px: Price
  index, pre_close_px = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.pre_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Amt
  index, total_volume_trade = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entries
  for md_entries_index = 1, no_md_entries do
    index, md_entries = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_entries.dissect(buffer, index, packet, parent, md_entries_index)
  end

  -- No Sub Trading Phase Codes: NumInGroup
  index, no_sub_trading_phase_codes = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_sub_trading_phase_codes.dissect(buffer, index, packet, parent)

  -- Repeating: Sub Trading Phase Codes
  for sub_trading_phase_codes_index = 1, no_sub_trading_phase_codes do
    index, sub_trading_phase_codes = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sub_trading_phase_codes.dissect(buffer, index, packet, parent, sub_trading_phase_codes_index)
  end

  -- Auction Volume Trade: Amt
  index, auction_volume_trade = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_volume_trade.dissect(buffer, index, packet, parent)

  -- Auction Value Trade: Amt
  index, auction_value_trade = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_value_trade.dissect(buffer, index, packet, parent)

  -- Trade Time: LocalTimestamp
  index, trade_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Spot Trading Snapshot Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.bond_spot_trading_snapshot_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Announcement Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.announcement_message = {}

-- Calculate size of: Announcement Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.announcement_message.size = function(buffer, offset)
  local index = 0

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_id.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.headline.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_type.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_format.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_length.size

  -- Parse runtime size of: Raw Data
  index = index + buffer(offset + index - 4, 4):uint()

  return index
end

-- Display: Announcement Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.announcement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Announcement Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.announcement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- News Id: char[16]
  index, news_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_id.dissect(buffer, index, packet, parent)

  -- Headline: char[128]
  index, headline = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.headline.dissect(buffer, index, packet, parent)

  -- News Type: uInt8
  index, news_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_type.dissect(buffer, index, packet, parent)

  -- Raw Data Format: char[8]
  index, raw_data_format = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_format.dissect(buffer, index, packet, parent)

  -- Raw Data Length: Length
  index, raw_data_length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Raw Data
  index, raw_data = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.raw_data.dissect(buffer, index, packet, parent, raw_data_length)

  return index
end

-- Dissect: Announcement Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.announcement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.announcement_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.announcement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.announcement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.announcement_message.fields(buffer, offset, packet, parent)
  end
end

-- Switch
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.switch = {}

-- Size: Switch
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.switch.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_type.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_status.size

-- Display: Switch
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.switch.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Switch
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.switch.fields = function(buffer, offset, packet, parent, switch_index)
  local index = offset

  -- Implicit Switch Index
  if switch_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.switch_index, switch_index)
    iteration:set_generated()
  end

  -- Security Switch Type: uInt16
  index, security_switch_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_type.dissect(buffer, index, packet, parent)

  -- Security Switch Status: Boolean
  index, security_switch_status = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_switch_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Switch
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.switch.dissect = function(buffer, offset, packet, parent, switch_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.switch, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.switch.fields(buffer, offset, packet, parent, switch_index)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.switch.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.switch.fields(buffer, offset, packet, parent, switch_index)
  end
end

-- Security Real Time Status Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_real_time_status_message = {}

-- Calculate size of: Security Real Time Status Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_real_time_status_message.size = function(buffer, offset)
  local index = 0

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_symbol.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_switch.size

  -- Calculate field size from count
  local switch_count = buffer(offset + index - 4, 4):uint()
  index = index + switch_count * 4

  return index
end

-- Display: Security Real Time Status Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_real_time_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Real Time Status Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_real_time_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: char[4]
  index, security_id_source = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_id_source.dissect(buffer, index, packet, parent)

  -- Security Symbol: char[40]
  index, security_symbol = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_symbol.dissect(buffer, index, packet, parent)

  -- No Switch: NumInGroup
  index, no_switch = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_switch.dissect(buffer, index, packet, parent)

  -- Repeating: Switch
  for switch_index = 1, no_switch do
    index, switch = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.switch.dissect(buffer, index, packet, parent, switch_index)
  end

  return index
end

-- Dissect: Security Real Time Status Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_real_time_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.security_real_time_status_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_real_time_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_real_time_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_real_time_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Reject Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_message = {}

-- Size: Business Reject Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_message.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_msg_type.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_ref_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_reason.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_text.size

-- Display: Business Reject Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Reject Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ref Seq Num: SeqNum
  index, ref_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_seq_num.dissect(buffer, index, packet, parent)

  -- Ref Msg Type: uInt32
  index, ref_msg_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.ref_msg_type.dissect(buffer, index, packet, parent)

  -- Business Reject Ref Id: char[10]
  index, business_reject_ref_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_ref_id.dissect(buffer, index, packet, parent)

  -- Business Reject Reason: uInt16
  index, business_reject_reason = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_reason.dissect(buffer, index, packet, parent)

  -- Business Reject Text: char[50]
  index, business_reject_text = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Reject Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.business_reject_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Stream I Ds
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_i_ds = {}

-- Size: Md Stream I Ds
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_i_ds.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.stock_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.size

-- Display: Md Stream I Ds
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_i_ds.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Stream I Ds
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_i_ds.fields = function(buffer, offset, packet, parent, md_stream_i_ds_index)
  local index = offset

  -- Implicit Md Stream I Ds Index
  if md_stream_i_ds_index ~= nil and show.indexes then
    local iteration = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_stream_i_ds_index, md_stream_i_ds_index)
    iteration:set_generated()
  end

  -- Md Stream Id: char[3]
  index, md_stream_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_id.dissect(buffer, index, packet, parent)

  -- Stock Num: uInt32
  index, stock_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.stock_num.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: char[8]
  index, trading_phase_code = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.trading_phase_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Stream I Ds
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_i_ds.dissect = function(buffer, offset, packet, parent, md_stream_i_ds_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.md_stream_i_ds, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_i_ds.fields(buffer, offset, packet, parent, md_stream_i_ds_index)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_i_ds.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_i_ds.fields(buffer, offset, packet, parent, md_stream_i_ds_index)
  end
end

-- Snapshot Channel Statistics Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message = {}

-- Calculate size of: Snapshot Channel Statistics Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.size = function(buffer, offset)
  local index = 0

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size

  index = index + bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_stream_id.size

  -- Calculate field size from count
  local md_stream_i_ds_count = buffer(offset + index - 4, 4):uint()
  index = index + md_stream_i_ds_count * 15

  return index
end

-- Display: Snapshot Channel Statistics Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Channel Statistics Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- No Md Stream Id: NumInGroup
  index, no_md_stream_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.no_md_stream_id.dissect(buffer, index, packet, parent)

  -- Repeating: Md Stream I Ds
  for md_stream_i_ds_index = 1, no_md_stream_id do
    index, md_stream_i_ds = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.md_stream_i_ds.dissect(buffer, index, packet, parent, md_stream_i_ds_index)
  end

  return index
end

-- Dissect: Snapshot Channel Statistics Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.snapshot_channel_statistics_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.retransmission_message = {}

-- Size: Retransmission Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.retransmission_message.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_type.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_beg_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_end_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_status.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.reject_text.size

-- Display: Retransmission Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.retransmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.retransmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Resend Type: uInt8
  index, resend_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_type.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Beg Seq Num: SeqNum
  index, appl_beg_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_beg_seq_num.dissect(buffer, index, packet, parent)

  -- Appl End Seq Num: SeqNum
  index, appl_end_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_end_seq_num.dissect(buffer, index, packet, parent)

  -- News Id: char[16]
  index, news_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.news_id.dissect(buffer, index, packet, parent)

  -- Resend Status: uInt8
  index, resend_status = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.resend_status.dissect(buffer, index, packet, parent)

  -- Reject Text: char[16]
  index, reject_text = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.reject_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.retransmission_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.retransmission_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.retransmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.retransmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.retransmission_message.fields(buffer, offset, packet, parent)
  end
end

-- Channel Heartbeat Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_heartbeat_message = {}

-- Size: Channel Heartbeat Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_heartbeat_message.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_last_seq_num.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.end_of_channel.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.size

-- Display: Channel Heartbeat Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Heartbeat Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Last Seq Num: SeqNum
  index, appl_last_seq_num = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.appl_last_seq_num.dissect(buffer, index, packet, parent)

  -- End Of Channel: Boolean
  index, end_of_channel = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.end_of_channel.dissect(buffer, index, packet, parent)

  -- Orig Time: LocalTimestamp
  index, orig_time = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.orig_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Heartbeat Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.channel_heartbeat_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heartbeat_message = {}

-- Display: Heartbeat Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logout_message = {}

-- Size: Logout Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logout_message.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.session_status.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text.size

-- Display: Logout Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Status: Int32
  index, session_status = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.session_status.dissect(buffer, index, packet, parent)

  -- Text: char[200]
  index, text = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.logout_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logon_message = {}

-- Size: Logon Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logon_message.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sender_comp_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.target_comp_id.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heart_bt_int.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.password.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.default_appl_ver_id.size

-- Display: Logon Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sender Comp Id: CompID
  index, sender_comp_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.sender_comp_id.dissect(buffer, index, packet, parent)

  -- Target Comp Id: CompID
  index, target_comp_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.target_comp_id.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: Int32
  index, heart_bt_int = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Password: char[16]
  index, password = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.password.dissect(buffer, index, packet, parent)

  -- Default Appl Ver Id: char[32]
  index, default_appl_ver_id = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.default_appl_ver_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.logon_message, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.payload = {}

-- Dispatch: Payload
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.payload.dispatch = {
  [1] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logon_message.dissect,
  [2] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.logout_message.dissect,
  [3] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.heartbeat_message.dissect,
  [301000] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.channel_heartbeat_message.dissect,
  [302000] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.retransmission_message.dissect,
  [303000] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.snapshot_channel_statistics_message.dissect,
  [8] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.business_reject_message.dissect,
  [304000] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.security_real_time_status_message.dissect,
  [305000] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.announcement_message.dissect,
  [306001] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_trading_snapshot_message.dissect,
  [306002] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.auction_trading_snapshot_message.dissect,
  [306003] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.index_snapshot_message.dissect,
  [307011] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_order_tick_message.dissect,
  [307021] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.agreement_trading_order_tick_message.dissect,
  [307023] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_order_tick_message.dissect,
  [308011] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_matching_large_trade_tick_message.dissect,
  [308012] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.bond_spot_negotiated_trade_tick_message.dissect,
  [308023] = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.securities_lending_trade_tick_message.dissect,
}

-- Dissect: Payload
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_header = {}

-- Size: Message Header
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_header.size =
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.msg_type.size + 
  bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.body_length.size

-- Display: Message Header
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: uInt32
  index, msg_type = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.msg_type.dissect(buffer, index, packet, parent)

  -- Body Length: uInt32
  index, body_length = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.body_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.fields.message_header, buffer(offset, 0))
    local index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message = {}

-- Verify required size of Tcp packet
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message.requiredsize = function(buffer)
  return buffer:len() >= bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_header.size
end

-- Dissect Message
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 2 fields
  index, message_header = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 8, 4):uint()

  -- Payload: Runtime Type with 18 branches
  index = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.payload.dissect(buffer, index, packet, parent, msg_type)

  -- Message Tail: Struct of 1 fields
  index, message_tail = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message_tail.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.init()
end

-- Dissector for Bjse BjseSecurities TcpMarketData BjseBinary 1.1
function omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.name

  local length = buffer:len()
  local offset = 0

  -- Dissect each message the segment carries
  while offset < length do
    local protocol = parent:add(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1, buffer(offset), omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.description, "("..(length - offset).." Bytes)")
    local consumed = bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message.dissect(buffer(offset):tvb(), packet, protocol)

    if consumed == nil or consumed <= 0 then
      return offset
    end

    protocol:set_len(consumed)
    offset = offset + consumed
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Message: would its message dispatch accept this frame?
bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message.fingerprint = function(buffer)
  if buffer:len() < 4 then
    return false
  end

  local msg_type = buffer(0, 4):uint()

  -- Logon Message
  if msg_type == 1 then
    return true
  end

  -- Logout Message
  if msg_type == 2 then
    return true
  end

  -- Heartbeat Message
  if msg_type == 3 then
    return true
  end

  -- Channel Heartbeat Message
  if msg_type == 301000 then
    return true
  end

  -- Retransmission Message
  if msg_type == 302000 then
    return true
  end

  -- Snapshot Channel Statistics Message
  if msg_type == 303000 then
    return true
  end

  -- Business Reject Message
  if msg_type == 8 then
    return true
  end

  -- Security Real Time Status Message
  if msg_type == 304000 then
    return true
  end

  -- Announcement Message
  if msg_type == 305000 then
    return true
  end

  -- Bond Spot Trading Snapshot Message
  if msg_type == 306001 then
    return true
  end

  -- Auction Trading Snapshot Message
  if msg_type == 306002 then
    return true
  end

  -- Index Snapshot Message
  if msg_type == 306003 then
    return true
  end

  -- Bond Spot Matching Large Order Tick Message
  if msg_type == 307011 then
    return true
  end

  -- Agreement Trading Order Tick Message
  if msg_type == 307021 then
    return true
  end

  -- Securities Lending Order Tick Message
  if msg_type == 307023 then
    return true
  end

  -- Bond Spot Matching Large Trade Tick Message
  if msg_type == 308011 then
    return true
  end

  -- Bond Spot Negotiated Trade Tick Message
  if msg_type == 308012 then
    return true
  end

  -- Securities Lending Trade Tick Message
  if msg_type == 308023 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Bjse BjseSecurities TcpMarketData BjseBinary 1.1 (Tcp)
local function omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp message message dispatch
  if not bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.message.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1
  omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Bjse BjseSecurities TcpMarketData BjseBinary 1.1
omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1:register_heuristic("tcp", omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1_tcp_heuristic)

-- Register Bjse BjseSecurities TcpMarketData BjseBinary 1.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_bjse_bjsesecurities_tcpmarketdata_bjsebinary_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Beijing Stock Exchange
--   Version: 1.1
--   Date: Wednesday, December 31, 2025
--   Specification: Market Data Interface Specification Binary V1.1 (2025-12-31).pdf
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
