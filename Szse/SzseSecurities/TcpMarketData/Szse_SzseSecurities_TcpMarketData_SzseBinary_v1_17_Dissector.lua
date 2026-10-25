-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Szse SzseSecurities TcpMarketData SzseBinary 1.17 Protocol
local omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17 = Proto("Omi.Szse.SzseSecurities.TcpMarketData.SzseBinary.v1.17", "Szse SzseSecurities TcpMarketData SzseBinary 1.17")

-- Protocol table
local szse_szsesecurities_tcpmarketdata_szsebinary_v1_17 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Szse SzseSecurities TcpMarketData SzseBinary 1.17 Fields
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.amounts_status = ProtoField.new("Amounts Status", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.amountsstatus", ftypes.STRING, nil, nil, nil, "Status of the amount")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.appl_beg_seq_num = ProtoField.new("Appl Beg Seq Num", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.applbegseqnum", ftypes.INT64, nil, nil, nil, "The starting sequence number, effective when ResendType=1, indicating the area of record number")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.appl_end_seq_num = ProtoField.new("Appl End Seq Num", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.applendseqnum", ftypes.INT64, nil, nil, nil, "The ending sequence number. When ResendType=1 it indicates the area of record number. When ApplEndSeqNum=0 the Market Data GateWay sets it to the max value of this channel data record in memory on receiving the request")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.appl_last_seq_num = ProtoField.new("Appl Last Seq Num", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.appllastseqnum", ftypes.INT64, nil, nil, nil, "Sequence number of the last market data message")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.applseqnum", ftypes.INT64, nil, nil, nil, "Message sequence number, starting from 1")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.auction_value_trade = ProtoField.new("Auction Value Trade", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.auctionvaluetrade", ftypes.DOUBLE, nil, nil, nil, "Auction value of matching deal")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.auction_volume_trade = ProtoField.new("Auction Volume Trade", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.auctionvolumetrade", ftypes.DOUBLE, nil, nil, nil, "Auction Volume of matching deal")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.bid_appl_seq_num = ProtoField.new("Bid Appl Seq Num", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.bidapplseqnum", ftypes.INT64, nil, nil, nil, "Index of buy order, starting from 1, 0 stands for no related orders")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.bid_exec_inst_type = ProtoField.new("Bid Exec Inst Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.bidexecinsttype", ftypes.UINT16, nil, nil, nil, "Bid transaction method")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.bid_trans_type = ProtoField.new("Bid Trans Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.bidtranstype", ftypes.UINT16, nil, nil, nil, "Bid transaction type")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.body_length = ProtoField.new("Body Length", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.bodylength", ftypes.UINT32, nil, nil, nil, "The length of a message body")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.businessrejectreason", ftypes.UINT16, nil, nil, nil, "Reasons of rejection")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.businessrejectrefid", ftypes.STRING, nil, nil, nil, "Business Layer ID of the rejected message")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.business_reject_text = ProtoField.new("Business Reject Text", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.businessrejecttext", ftypes.STRING, nil, nil, nil, "Explanation of rejection reasons, may include Chinese characters")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.channel_no = ProtoField.new("Channel No", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.channelno", ftypes.UINT16, nil, nil, nil, "Channel code")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.checksum = ProtoField.new("Checksum", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.checksum", ftypes.UINT32, nil, nil, nil, "The checksum of a message, the sum of every byte from the start of the message header through the end of the message body taken modulo 256")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_end_time = ProtoField.new("Complex Event End Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.complexeventendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Ending time of the cooling-off period")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_end_time_utc = ProtoField.new("Complex Event End Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.complexeventendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Ending time of the cooling-off period")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_start_time = ProtoField.new("Complex Event Start Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.complexeventstarttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Starting time of the cooling-off period")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_start_time_utc = ProtoField.new("Complex Event Start Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.complexeventstarttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Starting time of the cooling-off period")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_times = ProtoField.new("Complex Event Times", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.complexeventtimes", ftypes.STRING, nil, nil, nil, "The starting and ending time of each cooling-off period of VCM")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.confirm_id = ProtoField.new("Confirm Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.confirmid", ftypes.STRING, nil, nil, nil, "Confirmed ID of a quote. When ConfirmID is null this is an indication of interest, otherwise a quote")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.contact_info = ProtoField.new("Contact Info", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.contactinfo", ftypes.STRING, nil, nil, nil, "Contact information, may include Chinese characters")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.contactor = ProtoField.new("Contactor", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.contactor", ftypes.STRING, nil, nil, nil, "Contact person, may include Chinese characters")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.default_appl_ver_id = ProtoField.new("Default Appl Ver Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.defaultapplverid", ftypes.STRING, nil, nil, nil, "Binary protocol version, in the form n.xy; the communication version of this specification is 1.02")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.end_of_channel = ProtoField.new("End Of Channel", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.endofchannel", ftypes.UINT16, nil, nil, nil, "Ending remark of channel")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.exec_type = ProtoField.new("Exec Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.exectype", ftypes.STRING, nil, nil, nil, "Type of Execution")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.expiration_days = ProtoField.new("Expiration Days", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.expirationdays", ftypes.UINT16, nil, nil, nil, "Term, in days")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.expiration_type = ProtoField.new("Expiration Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.expirationtype", ftypes.UINT8, nil, nil, nil, "Type of term")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.financial_status = ProtoField.new("Financial Status", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.financialstatus", ftypes.STRING, nil, nil, nil, "Security status. Each byte displays one status, at most 8 concurrently")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.headline = ProtoField.new("Headline", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.headline", ftypes.STRING, nil, nil, nil, "Announcement title, may include Chinese characters")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.heartbtint", ftypes.INT32, nil, nil, nil, "Interval of heartbeats, in seconds, provided to Market Data GateWay by Vendor Supplied System upon a logon")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.high_limit_price = ProtoField.new("High Limit Price", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.highlimitprice", ftypes.DOUBLE, nil, nil, nil, "High limit price, 0 means no high limit price")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.hk_stocks_md_entries = ProtoField.new("Hk Stocks Md Entries", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.hkstocksmdentries", ftypes.STRING, nil, nil, nil, "Market data entries carrying a price, a quantity and a book level")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.index_md_entries = ProtoField.new("Index Md Entries", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.indexmdentries", ftypes.STRING, nil, nil, nil, "Market data entries carrying a price only")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.investor_id = ProtoField.new("Investor Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.investorid", ftypes.STRING)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.investor_name = ProtoField.new("Investor Name", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.investorname", ftypes.STRING)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.investor_type = ProtoField.new("Investor Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.investortype", ftypes.STRING)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.last_px = ProtoField.new("Last Px", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.lastpx", ftypes.DOUBLE, nil, nil, nil, "Order price")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.last_qty = ProtoField.new("Last Qty", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.lastqty", ftypes.DOUBLE, nil, nil, nil, "Order volume")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.low_limit_price = ProtoField.new("Low Limit Price", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.lowlimitprice", ftypes.DOUBLE)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.margin_price = ProtoField.new("Margin Price", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.marginprice", ftypes.DOUBLE, nil, nil, nil, "Marginal price. Reveals the marginal price of a bidding transaction won by multiple entities at a single price or at multiple prices; meaningless for other bidding transaction methods, fixed fill -999999999.9999")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.market_id = ProtoField.new("Market Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.marketid", ftypes.STRING, nil, nil, nil, "Market code")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.market_segment_id = ProtoField.new("Market Segment Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.marketsegmentid", ftypes.STRING, nil, nil, nil, "Market segment ID, reserved")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_entries = ProtoField.new("Md Entries", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.mdentries", ftypes.STRING, nil, nil, nil, "Market data entries disclosing the order book, with the orders at each price level nested inside")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_entry_px = ProtoField.new("Md Entry Px", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.mdentrypx", ftypes.DOUBLE, nil, nil, nil, "Price, carrying eighteen digits of which six are decimal")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_entry_size = ProtoField.new("Md Entry Size", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.mdentrysize", ftypes.DOUBLE, nil, nil, nil, "Quantity")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_entry_type = ProtoField.new("Md Entry Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.mdentrytype", ftypes.STRING, nil, nil, nil, "Type of market data entries")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_price_level = ProtoField.new("Md Price Level", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.mdpricelevel", ftypes.UINT16, nil, nil, nil, "Level of a bid or offer in the order book")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_stream_i_ds = ProtoField.new("Md Stream I Ds", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.mdstreamids", ftypes.STRING, nil, nil, nil, "One entry per market data type carried on the channel")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_stream_id = ProtoField.new("Md Stream Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.mdstreamid", ftypes.STRING, nil, nil, nil, "Category of market data")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.member_id = ProtoField.new("Member Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.memberid", ftypes.STRING, nil, nil, nil, "Transaction member's ID")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.memo = ProtoField.new("Memo", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.memo", ftypes.STRING)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.message_tail = ProtoField.new("Message Tail", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.messagetail", ftypes.STRING, nil, nil, nil, "Szse Mdgw Message Tail, defining the checksum of a message, transmitted without encryption")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.min_qty = ProtoField.new("Min Qty", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.minqty", ftypes.DOUBLE, nil, nil, nil, "Minimum number of transactions, applicable to Click Deal market data")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.msg_type = ProtoField.new("Msg Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.msgtype", ftypes.UINT32, nil, nil, nil, "Type of a message")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.news_id = ProtoField.new("News Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.newsid", ftypes.STRING, nil, nil, nil, "Unique mark of the announcement. Empty strings indicate announcement summary, which will be sent repeatedly")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_complex_event_times = ProtoField.new("No Complex Event Times", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.nocomplexeventtimes", ftypes.UINT32, nil, nil, nil, "Number of cooling-off periods of VCM. 1 means it is in the cooling-off period of VCM, followed by the starting and ending time of the period")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_md_entries = ProtoField.new("No Md Entries", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.nomdentries", ftypes.UINT32, nil, nil, nil, "Number of market data entries")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_md_stream_id = ProtoField.new("No Md Stream Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.nomdstreamid", ftypes.UINT32, nil, nil, nil, "Number of market data types")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_orders = ProtoField.new("No Orders", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.noorders", ftypes.UINT32, nil, nil, nil, "Number of orders disclosed at this price level, 0 indicates it is not shown")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_sub_trading_phase_codes = ProtoField.new("No Sub Trading Phase Codes", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.nosubtradingphasecodes", ftypes.UINT32, nil, nil, nil, "Number of the trading phase subdivision")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_switch = ProtoField.new("No Switch", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.noswitch", ftypes.UINT32, nil, nil, nil, "Number of switch")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.num_trades = ProtoField.new("Num Trades", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.numtrades", ftypes.INT64, nil, nil, nil, "Number of trades")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.number_of_orders = ProtoField.new("Number Of Orders", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.numberoforders", ftypes.INT64, nil, nil, nil, "Number of total orders on this price level, 0 indicates it is not shown")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.offer_appl_seq_num = ProtoField.new("Offer Appl Seq Num", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.offerapplseqnum", ftypes.INT64, nil, nil, nil, "Index of sell order, starting from 1, 0 stands for no related orders")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.ord_type = ProtoField.new("Ord Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.ordtype", ftypes.STRING, nil, nil, nil, "Type of order")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_qty = ProtoField.new("Order Qty", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.orderqty", ftypes.DOUBLE, nil, nil, nil, "Quantity of orders")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.orders = ProtoField.new("Orders", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.orders", ftypes.STRING, nil, nil, nil, "The individual order quantities disclosed at this price level")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.orig_time = ProtoField.new("Orig Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.origtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Originated time of data")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.orig_time_utc = ProtoField.new("Orig Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.origtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Originated time of data")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.password = ProtoField.new("Password", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.password", ftypes.STRING, nil, nil, nil, "Pass word")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.pos_amt = ProtoField.new("Pos Amt", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.posamt", ftypes.DOUBLE, nil, nil, nil, "Intraday remaining amount, fixed at 0.0000 when the amount is not available")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.prev_close_px = ProtoField.new("Prev Close Px", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.prevclosepx", ftypes.DOUBLE, nil, nil, nil, "Previous close price")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.price = ProtoField.new("Price", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.price", ftypes.DOUBLE, nil, nil, nil, "Order price")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.quote_id = ProtoField.new("Quote Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.quoteid", ftypes.STRING, nil, nil, nil, "Quote message ID, applicable to click deal market data only")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.raw_data = ProtoField.new("Raw Data", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.rawdata", ftypes.BYTES, nil, nil, nil, "Binary data, its length given by the leading RawDataLength")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.raw_data_format = ProtoField.new("Raw Data Format", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.rawdataformat", ftypes.STRING, nil, nil, nil, "Format of binary data, such as TXT, PDF or DOC")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.raw_data_length = ProtoField.new("Raw Data Length", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.rawdatalength", ftypes.UINT32, nil, nil, nil, "Length of binary data")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.refmsgtype", ftypes.UINT32, nil, nil, nil, "Message type of the rejected message")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.refseqnum", ftypes.INT64, nil, nil, nil, "Sequence number of the rejected message")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.reject_text = ProtoField.new("Reject Text", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.rejecttext", ftypes.STRING, nil, nil, nil, "Only effective when the Market Data GateWay front-end processor returns to the Vendor Supplied System server. If the request is rejected the failure code is returned in this field")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.resend_status = ProtoField.new("Resend Status", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.resendstatus", ftypes.UINT8, nil, nil, nil, "Re-transmitting status, only effective when the Market Data GateWay front-end processor returns to the Vendor Supplied System server")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.resend_type = ProtoField.new("Resend Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.resendtype", ftypes.UINT8, nil, nil, nil, "Category of Re-transmission")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.secondaryorderid", ftypes.STRING, nil, nil, nil, "Bid session ID")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.security_id = ProtoField.new("Security Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.securityid", ftypes.STRING, nil, nil, nil, "Security code")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.security_id_source = ProtoField.new("Security Id Source", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.securityidsource", ftypes.STRING, nil, nil, nil, "Source of security code")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.security_switch_status = ProtoField.new("Security Switch Status", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.securityswitchstatus", ftypes.UINT16, nil, nil, nil, "Status of security switch")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.security_switch_type = ProtoField.new("Security Switch Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.securityswitchtype", ftypes.UINT16, nil, nil, nil, "Type of switch")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.sendercompid", ftypes.STRING, nil, nil, nil, "ID number of the sender")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.session_status = ProtoField.new("Session Status", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.sessionstatus", ftypes.INT32, nil, nil, nil, "Session status at a logout")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.settl_period = ProtoField.new("Settl Period", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.settlperiod", ftypes.UINT8, nil, nil, nil, "Settlement period")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.settl_type = ProtoField.new("Settl Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.settltype", ftypes.UINT16, nil, nil, nil, "Settlement type")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.side = ProtoField.new("Side", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.side", ftypes.STRING, nil, nil, nil, "Side of buy or sell")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.stock_num = ProtoField.new("Stock Num", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.stocknum", ftypes.UINT32, nil, nil, nil, "Number of stocks")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.sub_trading_phase_code = ProtoField.new("Sub Trading Phase Code", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.subtradingphasecode", ftypes.STRING, nil, nil, nil, "Trading phase code corresponding to the trading type")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.sub_trading_phase_codes = ProtoField.new("Sub Trading Phase Codes", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.subtradingphasecodes", ftypes.STRING, nil, nil, nil, "One entry per trading phase subdivision, giving its code and trading type")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.switch = ProtoField.new("Switch", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.switch", ftypes.STRING, nil, nil, nil, "One entry per security switch, giving its type and status")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.target_comp_id = ProtoField.new("Target Comp Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.targetcompid", ftypes.STRING, nil, nil, nil, "ID number of the receiver")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.text = ProtoField.new("Text", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.text", ftypes.STRING, nil, nil, nil, "Further explanations of logout reasons")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.thredhold_amount = ProtoField.new("Thredhold Amount", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.thredholdamount", ftypes.DOUBLE, nil, nil, nil, "Daily initial amount")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.total_value_trade = ProtoField.new("Total Value Trade", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.totalvaluetrade", ftypes.DOUBLE, nil, nil, nil, "Total value of trades")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.total_volume_trade = ProtoField.new("Total Volume Trade", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.totalvolumetrade", ftypes.DOUBLE, nil, nil, nil, "Total volume of trades")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trad_ses_end_time = ProtoField.new("Trad Ses End Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.tradsesendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Ending time of a trading session, reserved")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trad_ses_end_time_utc = ProtoField.new("Trad Ses End Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.tradsesendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Ending time of a trading session, reserved")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trad_ses_start_time = ProtoField.new("Trad Ses Start Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.tradsesstarttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Starting time of a trading session, reserved")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trad_ses_start_time_utc = ProtoField.new("Trad Ses Start Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.tradsesstarttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Starting time of a trading session, reserved")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.tradsesstatus", ftypes.UINT16, nil, nil, nil, "Trading session status, reserved")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trade_date = ProtoField.new("Trade Date", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.tradedate", ftypes.UINT32)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trade_md_entries = ProtoField.new("Trade Md Entries", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.trademdentries", ftypes.STRING, nil, nil, nil, "Market data entries carrying a price and a quantity only")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trader_code = ProtoField.new("Trader Code", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.tradercode", ftypes.STRING)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trading_phase_code = ProtoField.new("Trading Phase Code", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.tradingphasecode", ftypes.STRING, nil, nil, nil, "Trading phase code of the product. The No.0 digit carries the trading phase, S=start before the market opened, O=Opening call auction, T=Continuous bidding, B=Closed, C=Closing call auction, E=Closed market, H=Temporary trading halts, A=After-hours Dealing, V=Volatility interruption. The No.1 digit carries the sub phase, 0=normal status, 1=All day suspension")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trading_session_id = ProtoField.new("Trading Session Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.tradingsessionid", ftypes.STRING)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.tradingsessionsubid", ftypes.STRING, nil, nil, nil, "Trading session sub-ID")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trading_type = ProtoField.new("Trading Type", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.tradingtype", ftypes.UINT8)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transac_time = ProtoField.new("Transac Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.transactime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of order")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transac_time_utc = ProtoField.new("Transac Time", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.transactime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of order")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.user_num = ProtoField.new("User Num", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.usernum", ftypes.UINT16, nil, nil, nil, "The number of client users connected to this Vendor Supplied System at the current time")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.version_code = ProtoField.new("Version Code", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.versioncode", ftypes.STRING, nil, nil, nil, "Code of version")

-- Szse SzseSecurities TcpMarketData SzseBinary 1.17 Framing
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.message = ProtoField.new("Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.message", ftypes.STRING, nil, nil, nil, "Szse Mdgw Session Message")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.message_header = ProtoField.new("Message Header", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.messageheader", ftypes.STRING, nil, nil, nil, "Szse Mdgw Message Header, defining the type and body length of a message, transmitted without encryption")

-- Szse SzseSecurities TcpMarketData 1.17 Application Messages
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.announcements_message = ProtoField.new("Announcements Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.announcementsmessage", ftypes.STRING, nil, nil, nil, "Carries an announcement file. An empty NewsID indicates an announcement summary, an aggregate list of the current announcement files in text format carried in RawData as repeated BulletNum, ID, NAME, SIZE and TIME lines; under the multicast distribution protocol the summary carries no content and RawDataLength is fixed to 0.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.business_reject_message = ProtoField.new("Business Reject Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.businessrejectmessage", ftypes.STRING, nil, nil, nil, "Rejects an application layer message that satisfies the session layer rules but does not satisfy the rules of the business layer. It reports on an incorrect re-transmitted message or client user information reporting message declared by the user.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.channel_heartbeat_message = ProtoField.new("Channel Heartbeat Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.channelheartbeatmessage", ftypes.STRING, nil, nil, nil, "Sent on a market data channel every 3 seconds, carrying the sequence number of the last market data message on the channel.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.client_user_information_reporting_message = ProtoField.new("Client User Information Reporting Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.clientuserinformationreportingmessage", ftypes.STRING, nil, nil, nil, "Vendor Supplied System reports the number of client users connected to it at the current time to the Market Data GateWay front-end processor at regular intervals. Only the Vendor Supplied System of a vendor sends this message.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "Heartbeat message checks the Tcp connection status between Market Data GateWay and Vendor Supplied System. When one party is at an idle period of data sending it sends a Heartbeat regularly to check the healthiness of the connection, so both sides transmit this message type. BodyLength is 0 and the message carries no body.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.index_snapshot_message = ProtoField.new("Index Snapshot Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.indexsnapshotmessage", ftypes.STRING, nil, nil, nil, "Snapshot carrying market data categories 900 index and 920 CNI Indices snapshot data.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.logon_message = ProtoField.new("Logon Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.logonmessage", ftypes.STRING, nil, nil, nil, "Logon message is the first message sent out to Market Data GateWay by Vendor Supplied System. Vendor Supplied System sets up a connection with Market Data GateWay through a logon message, and Market Data GateWay confirms the logon success through a logon message of its own, so both sides transmit this message type.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.logout_message = ProtoField.new("Logout Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.logoutmessage", ftypes.STRING, nil, nil, nil, "When the connection request from Vendor Supplied System is not accepted, Market Data GateWay sends a logout message to refuse the logon request. Vendor Supplied System also sends a logout message voluntarily to disconnect, so both sides transmit this message type.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_in_call_auction_message = ProtoField.new("Order Tick Data In Call Auction Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.ordertickdataincallauctionmessage", ftypes.STRING, nil, nil, nil, "Order tick carrying market data categories 011 for equities, funds and bonds in the call auction of the spot market, 021 pledge-style repo and 041 call auction in options.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_of_bid_quotation_message = ProtoField.new("Order Tick Data Of Bid Quotation Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.ordertickdataofbidquotationmessage", ftypes.STRING, nil, nil, nil, "Order tick carrying market data category 416, spot bond trading bidding deal, covering the bid order and bid reservation.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_of_negotiable_trade_message = ProtoField.new("Order Tick Data Of Negotiable Trade Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.ordertickdataofnegotiabletrademessage", ftypes.STRING, nil, nil, nil, "Order tick carrying market data categories 051 indication of interest of negotiable trade and 052 quote of negotiable trade.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_of_security_lending_message = ProtoField.new("Order Tick Data Of Security Lending Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.ordertickdataofsecuritylendingmessage", ftypes.STRING, nil, nil, nil, "Order tick carrying market data category 071, security lending.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_of_spot_bond_trading_matching_deal_message = ProtoField.new("Order Tick Data Of Spot Bond Trading Matching Deal Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.ordertickdataofspotbondtradingmatchingdealmessage", ftypes.STRING, nil, nil, nil, "Order tick carrying market data categories 021 bond general pledged repo matching deal and 411 spot bond trading matching deal.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_of_spot_bond_trading_quotation_message = ProtoField.new("Order Tick Data Of Spot Bond Trading Quotation Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.ordertickdataofspotbondtradingquotationmessage", ftypes.STRING, nil, nil, nil, "Order tick carrying market data categories 415 spot bond trading declaration of intent and 417 spot bond trading large amount matching deal, for spot bond trading other than bid.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.real_time_market_status_message = ProtoField.new("Real Time Market Status Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.realtimemarketstatusmessage", ftypes.STRING, nil, nil, nil, "Released every 3 seconds, carrying the trading session state of a market and, for stock connect, the daily quota balance.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.real_time_reference_net_value_of_funds_snapshot_message = ProtoField.new("Real Time Reference Net Value Of Funds Snapshot Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.realtimereferencenetvalueoffundssnapshotmessage", ftypes.STRING, nil, nil, nil, "Snapshot carrying market data category 930, real time reference net value of funds. PrevClosePx, NumTrades, TotalVolumeTrade and TotalValueTrade are fixed to 0 for this message.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.real_time_status_of_security_message = ProtoField.new("Real Time Status Of Security Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.realtimestatusofsecuritymessage", ftypes.STRING, nil, nil, nil, "Released every 15 seconds, carrying the security status and the state of each business switch of one security.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.retransmitting_message = ProtoField.new("Retransmitting Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.retransmittingmessage", ftypes.STRING, nil, nil, nil, "Vendor Supplied System sends a re-transmission message to Market Data GateWay, which returns the re-transmission data needed followed by a re-transmission message indicating completion, or the failure reason if it fails. Market Data GateWay handles multiple requests in the order in which they arrive, so this message type is transmitted by both sides; ResendStatus and RejectText are only effective on the gateway reply.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.snapshot_data_of_after_hour_trading_block_trade_message = ProtoField.new("Snapshot Data Of After Hour Trading Block Trade Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.snapshotdataofafterhourtradingblocktrademessage", ftypes.STRING, nil, nil, nil, "Snapshot carrying market data categories 060 after-hour-trading block trade with close price and 061 after-hour-trading block trade with volume weighted average price.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.snapshot_data_of_after_hour_trading_message = ProtoField.new("Snapshot Data Of After Hour Trading Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.snapshotdataofafterhourtradingmessage", ftypes.STRING, nil, nil, nil, "Snapshot carrying market data category 370, snapshot of after-hour-trading.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.snapshot_data_of_cash_auction_message = ProtoField.new("Snapshot Data Of Cash Auction Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.snapshotdataofcashauctionmessage", ftypes.STRING, nil, nil, nil, "Snapshot of the cash auction, carrying market data categories 010 for equities, funds and bonds and 040 for option auction. The call auction discloses the virtual matched price and quantity in the buy 1 and sell 1 levels, with the bid or offer left quantity at that price in level 2.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.snapshot_data_of_eligible_hk_stocks_message = ProtoField.new("Snapshot Data Of Eligible Hk Stocks Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.snapshotdataofeligiblehkstocksmessage", ftypes.STRING, nil, nil, nil, "Snapshot carrying market data category 630, real time market data of eligible Hong Kong stocks, including the cooling-off periods of the Volatility Control Mechanism.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.snapshot_data_of_spot_bond_trading_message = ProtoField.new("Snapshot Data Of Spot Bond Trading Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.snapshotdataofspotbondtradingmessage", ftypes.STRING, nil, nil, nil, "Snapshot carrying market data categories 020 bond general pledged repo matching deal, 030 bond distribution and 410 spot bond trading. Market data entries 0 and 1 are used only to reveal the order of matching transactions.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.statistic_indicator_snapshot_message = ProtoField.new("Statistic Indicator Snapshot Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.statisticindicatorsnapshotmessage", ftypes.STRING, nil, nil, nil, "Snapshot carrying market data category 910, statistic indicators.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.statistics_of_snapshot_data_channel_message = ProtoField.new("Statistics Of Snapshot Data Channel Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.statisticsofsnapshotdatachannelmessage", ftypes.STRING, nil, nil, nil, "Each snapshot channel sends the statistic message of the snapshot channel every 15 seconds.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_in_call_auction_message = ProtoField.new("Transaction Tick Data In Call Auction Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.transactiontickdataincallauctionmessage", ftypes.STRING, nil, nil, nil, "Transaction tick carrying market data categories 011 for equities, funds and bonds in the call auction of the spot market, 021 pledge-style repo and 041 call auction in options. The sequence number of tick order and tick transaction data in the same channel is consecutive.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_of_bid_quotation_message = ProtoField.new("Transaction Tick Data Of Bid Quotation Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.transactiontickdataofbidquotationmessage", ftypes.STRING, nil, nil, nil, "Transaction tick carrying market data category 416, spot bond trading bidding deal.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_of_bond_general_pledged_repo_message = ProtoField.new("Transaction Tick Data Of Bond General Pledged Repo Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.transactiontickdataofbondgeneralpledgedrepomessage", ftypes.STRING, nil, nil, nil, "Transaction tick carrying market data categories 021 bond general pledged repo matching deal and 411 spot bond trading matching deal.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_of_negotiable_trade_message = ProtoField.new("Transaction Tick Data Of Negotiable Trade Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.transactiontickdataofnegotiabletrademessage", ftypes.STRING, nil, nil, nil, "Transaction tick carrying market data categories 051 indication of interest of negotiable trade and 052 quote of negotiable trade.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_of_security_lending_message = ProtoField.new("Transaction Tick Data Of Security Lending Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.transactiontickdataofsecuritylendingmessage", ftypes.STRING, nil, nil, nil, "Transaction tick carrying market data category 071, security lending.")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_of_spot_bond_trading_quotation_message = ProtoField.new("Transaction Tick Data Of Spot Bond Trading Quotation Message", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.transactiontickdataofspotbondtradingquotationmessage", ftypes.STRING, nil, nil, nil, "Transaction tick carrying market data categories 412 spot bond trading negotiated deal, 413 click deal, 414 inquiry deal and 417 large amount matching deal, for spot bond trading other than bid.")

-- Szse SzseSecurities TcpMarketData SzseBinary 1.17 Generated Fields
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_times_index = ProtoField.new("Complex Event Times Index", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.complexeventtimesindex", ftypes.UINT16)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.hk_stocks_md_entries_index = ProtoField.new("Hk Stocks Md Entries Index", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.hkstocksmdentriesindex", ftypes.UINT16)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.index_md_entries_index = ProtoField.new("Index Md Entries Index", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.indexmdentriesindex", ftypes.UINT16)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_entries_index = ProtoField.new("Md Entries Index", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.mdentriesindex", ftypes.UINT16)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_stream_i_ds_index = ProtoField.new("Md Stream I Ds Index", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.mdstreamidsindex", ftypes.UINT16)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.orders_index = ProtoField.new("Orders Index", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.ordersindex", ftypes.UINT16)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.sub_trading_phase_codes_index = ProtoField.new("Sub Trading Phase Codes Index", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.subtradingphasecodesindex", ftypes.UINT16)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.switch_index = ProtoField.new("Switch Index", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.switchindex", ftypes.UINT16)
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trade_md_entries_index = ProtoField.new("Trade Md Entries Index", "szse.szsesecurities.tcpmarketdata.szsebinary.v1.17.trademdentriesindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Szse SzseSecurities TcpMarketData SzseBinary 1.17 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Szse SzseSecurities TcpMarketData SzseBinary 1.17 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Szse SzseSecurities TcpMarketData SzseBinary 1.17 Show Options
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_application_messages then
    show.application_messages = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_application_messages
  end
  if show.headers ~= omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_headers then
    show.headers = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_headers
  end
  if show.repeating_groups ~= omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_repeating_groups then
    show.repeating_groups = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_repeating_groups
  end
  if show.structs ~= omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_structs then
    show.structs = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_structs
  end
  if show.indexes ~= omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_indexes then
    show.indexes = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.show_indexes
  end
  if szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.absolute_time_base ~= omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.absolute_time_base then
    szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.absolute_time_base = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prefs.absolute_time_base
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
-- Szse SzseSecurities TcpMarketData SzseBinary 1.17 Fields
-----------------------------------------------------------------------

-- Amounts Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.amounts_status = {}

-- Size: Amounts Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.amounts_status.size = 1

-- Display: Amounts Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.amounts_status.labels = {
  ["1"] = "Amounts Status: Quota Unavailable (1)",
  ["2"] = "Amounts Status: Quota Available (2)",
  ["3"] = "Amounts Status: Quota Adequate (3)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.amounts_status.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.amounts_status.labels[value] or "Amounts Status: Unknown("..value..")"
end

-- Dissect: Amounts Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.amounts_status.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.amounts_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.amounts_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.amounts_status, range, value, display)

  return offset + length, value
end

-- Appl Beg Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_beg_seq_num = {}

-- Size: Appl Beg Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_beg_seq_num.size = 8

-- Display: Appl Beg Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_beg_seq_num.display = function(value)
  return "Appl Beg Seq Num: "..value
end

-- Dissect: Appl Beg Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_beg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_beg_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_beg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.appl_beg_seq_num, range, value, display)

  return offset + length, value
end

-- Appl End Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_end_seq_num = {}

-- Size: Appl End Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_end_seq_num.size = 8

-- Display: Appl End Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_end_seq_num.display = function(value)
  return "Appl End Seq Num: "..value
end

-- Dissect: Appl End Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_end_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.appl_end_seq_num, range, value, display)

  return offset + length, value
end

-- Appl Last Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_last_seq_num = {}

-- Size: Appl Last Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_last_seq_num.size = 8

-- Display: Appl Last Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_last_seq_num.display = function(value)
  return "Appl Last Seq Num: "..value
end

-- Dissect: Appl Last Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_last_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.appl_last_seq_num, range, value, display)

  return offset + length, value
end

-- Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num = {}

-- Size: Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size = 8

-- Display: Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.display = function(value)
  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Auction Value Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_value_trade = {}

-- Size: Auction Value Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_value_trade.size = 8

-- Display: Auction Value Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_value_trade.display = function(value)
  return "Auction Value Trade: "..value
end

-- Translate: Auction Value Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_value_trade.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Value Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_value_trade.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_value_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_value_trade.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_value_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.auction_value_trade, range, value, display)

  return offset + length, value
end

-- Auction Volume Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_volume_trade = {}

-- Size: Auction Volume Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_volume_trade.size = 8

-- Display: Auction Volume Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_volume_trade.display = function(value)
  return "Auction Volume Trade: "..value
end

-- Translate: Auction Volume Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_volume_trade.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Auction Volume Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_volume_trade.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_volume_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_volume_trade.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_volume_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.auction_volume_trade, range, value, display)

  return offset + length, value
end

-- Bid Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num = {}

-- Size: Bid Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.size = 8

-- Display: Bid Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.display = function(value)
  return "Bid Appl Seq Num: "..value
end

-- Dissect: Bid Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.bid_appl_seq_num, range, value, display)

  return offset + length, value
end

-- Bid Exec Inst Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type = {}

-- Size: Bid Exec Inst Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type.size = 2

-- Display: Bid Exec Inst Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type.labels = {
  [1] = "Bid Exec Inst Type: Single Subject Winning The Bid (1)",
  [2] = "Bid Exec Inst Type: Multiple Subjects Single Price Winning The Bid (2)",
  [3] = "Bid Exec Inst Type: Multiple Subjects Multiple Price Winning The Bid (3)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type.labels[value] or "Bid Exec Inst Type: Unknown("..value..")"
end

-- Dissect: Bid Exec Inst Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.bid_exec_inst_type, range, value, display)

  return offset + length, value
end

-- Bid Trans Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_trans_type = {}

-- Size: Bid Trans Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_trans_type.size = 2

-- Display: Bid Trans Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_trans_type.labels = {
  [1] = "Bid Trans Type: Bid Reservation Declaration (1)",
  [2] = "Bid Trans Type: Bid Initiation Declaration (2)",
  [3] = "Bid Trans Type: Bid Price Declaration (3)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_trans_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_trans_type.labels[value] or "Bid Trans Type: Unknown("..value..")"
end

-- Dissect: Bid Trans Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_trans_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.bid_trans_type, range, value, display)

  return offset + length, value
end

-- Body Length
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.body_length = {}

-- Size: Body Length
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.body_length.size = 4

-- Display: Body Length
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.body_length.display = function(value)
  return "Body Length: "..value
end

-- Dissect: Body Length
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.body_length.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.body_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.body_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.body_length, range, value, display)

  return offset + length, value
end

-- Business Reject Reason
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_reason = {}

-- Size: Business Reject Reason
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_reason.size = 2

-- Display: Business Reject Reason
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_reason.display = function(value)
  return "Business Reject Reason: "..value
end

-- Dissect: Business Reject Reason
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_reason.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.business_reject_reason, range, value, display)

  return offset + length, value
end

-- Business Reject Ref Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_ref_id = {}

-- Size: Business Reject Ref Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_ref_id.size = 10

-- Display: Business Reject Ref Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_ref_id.display = function(value)
  return "Business Reject Ref Id: "..value
end

-- Dissect: Business Reject Ref Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_ref_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.business_reject_ref_id, range, value, display)

  return offset + length, value
end

-- Business Reject Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_text = {}

-- Size: Business Reject Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_text.size = 50

-- Display: Business Reject Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_text.display = function(value)
  return "Business Reject Text: "..value
end

-- Dissect: Business Reject Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_text.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.business_reject_text, range, value, display)

  return offset + length, value
end

-- Channel No
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no = {}

-- Size: Channel No
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size = 2

-- Display: Channel No
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.display = function(value)
  return "Channel No: "..value
end

-- Dissect: Channel No
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.channel_no, range, value, display)

  return offset + length, value
end

-- Checksum
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.checksum = {}

-- Size: Checksum
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.checksum.size = 4

-- Display: Checksum
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.checksum.display = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.checksum.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.checksum, range, value, display)

  return offset + length, value
end

-- Complex Event End Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_end_time = {}

-- Size: Complex Event End Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_end_time.size = 8

-- Dissect: Complex Event End Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_end_time.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_end_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_end_time
  if szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.absolute_time_base == 1 then field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_end_time_utc end

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
    item:set_text("Complex Event End Time: " .. tostring(packed))
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

-- Complex Event Start Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_start_time = {}

-- Size: Complex Event Start Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_start_time.size = 8

-- Dissect: Complex Event Start Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_start_time.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_start_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_start_time
  if szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.absolute_time_base == 1 then field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_start_time_utc end

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
    item:set_text("Complex Event Start Time: " .. tostring(packed))
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

-- Confirm Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.confirm_id = {}

-- Size: Confirm Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.confirm_id.size = 8

-- Display: Confirm Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.confirm_id.display = function(value)
  return "Confirm Id: "..value
end

-- Dissect: Confirm Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.confirm_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.confirm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.confirm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.confirm_id, range, value, display)

  return offset + length, value
end

-- Contact Info
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contact_info = {}

-- Size: Contact Info
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contact_info.size = 30

-- Display: Contact Info
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contact_info.display = function(value)
  return "Contact Info: "..value
end

-- Dissect: Contact Info
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contact_info.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contact_info.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contact_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.contact_info, range, value, display)

  return offset + length, value
end

-- Contactor
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contactor = {}

-- Size: Contactor
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contactor.size = 12

-- Display: Contactor
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contactor.display = function(value)
  return "Contactor: "..value
end

-- Dissect: Contactor
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contactor.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contactor.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contactor.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.contactor, range, value, display)

  return offset + length, value
end

-- Default Appl Ver Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.default_appl_ver_id = {}

-- Size: Default Appl Ver Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.default_appl_ver_id.size = 32

-- Display: Default Appl Ver Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.default_appl_ver_id.display = function(value)
  return "Default Appl Ver Id: "..value
end

-- Dissect: Default Appl Ver Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.default_appl_ver_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.default_appl_ver_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.default_appl_ver_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.default_appl_ver_id, range, value, display)

  return offset + length, value
end

-- End Of Channel
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.end_of_channel = {}

-- Size: End Of Channel
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.end_of_channel.size = 2

-- Display: End Of Channel
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.end_of_channel.display = function(value)
  return "End Of Channel: "..value
end

-- Dissect: End Of Channel
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.end_of_channel.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.end_of_channel.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.end_of_channel.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.end_of_channel, range, value, display)

  return offset + length, value
end

-- Exec Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type = {}

-- Size: Exec Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.size = 1

-- Display: Exec Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.labels = {
  ["4"] = "Exec Type: Cancelled (4)",
  ["F"] = "Exec Type: Traded (F)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.labels[value] or "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Expiration Days
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_days = {}

-- Size: Expiration Days
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_days.size = 2

-- Display: Expiration Days
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_days.display = function(value)
  return "Expiration Days: "..value
end

-- Dissect: Expiration Days
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_days.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.expiration_days, range, value, display)

  return offset + length, value
end

-- Expiration Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_type = {}

-- Size: Expiration Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_type.size = 1

-- Display: Expiration Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_type.labels = {
  [1] = "Expiration Type: Fixed Term (1)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_type.labels[value] or "Expiration Type: Unknown("..value..")"
end

-- Dissect: Expiration Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.expiration_type, range, value, display)

  return offset + length, value
end

-- Financial Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.financial_status = {}

-- Size: Financial Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.financial_status.size = 8

-- Display: Financial Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.financial_status.labels = {
  ["A"] = "Financial Status: Listed Companies Morning Disclosure (A)",
  ["B"] = "Financial Status: Listed Companies Afternoon Disclosure (B)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.financial_status.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.financial_status.labels[value] or "Financial Status: Unknown("..value..")"
end

-- Dissect: Financial Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.financial_status.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.financial_status.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.financial_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.financial_status, range, value, display)

  return offset + length, value
end

-- Headline
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.headline = {}

-- Size: Headline
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.headline.size = 128

-- Display: Headline
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.headline.display = function(value)
  return "Headline: "..value
end

-- Dissect: Headline
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.headline.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.headline.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.headline.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.headline, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heart_bt_int = {}

-- Size: Heart Bt Int
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heart_bt_int.size = 4

-- Display: Heart Bt Int
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heart_bt_int.display = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- High Limit Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.high_limit_price = {}

-- Size: High Limit Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.high_limit_price.size = 8

-- Display: High Limit Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.high_limit_price.display = function(value)
  return "High Limit Price: "..value
end

-- Translate: High Limit Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.high_limit_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: High Limit Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.high_limit_price.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.high_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Investor Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_id = {}

-- Size: Investor Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_id.size = 10

-- Display: Investor Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_id.display = function(value)
  return "Investor Id: "..value
end

-- Dissect: Investor Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.investor_id, range, value, display)

  return offset + length, value
end

-- Investor Name
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_name = {}

-- Size: Investor Name
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_name.size = 120

-- Display: Investor Name
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_name.display = function(value)
  return "Investor Name: "..value
end

-- Dissect: Investor Name
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_name.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.investor_name, range, value, display)

  return offset + length, value
end

-- Investor Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type = {}

-- Size: Investor Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type.size = 2

-- Display: Investor Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type.labels = {
  ["01"] = "Investor Type: Self Employed (01)",
  ["02"] = "Investor Type: Asset Management (02)",
  ["03"] = "Investor Type: Institutional Broker (03)",
  ["04"] = "Investor Type: Personal Broker (04)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type.labels[value] or "Investor Type: Unknown("..value..")"
end

-- Dissect: Investor Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.investor_type, range, value, display)

  return offset + length, value
end

-- Last Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px = {}

-- Size: Last Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.size = 8

-- Display: Last Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty = {}

-- Size: Last Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.size = 8

-- Display: Last Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.display = function(value)
  return "Last Qty: "..value
end

-- Translate: Last Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Last Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Low Limit Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.low_limit_price = {}

-- Size: Low Limit Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.low_limit_price.size = 8

-- Display: Low Limit Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.low_limit_price.display = function(value)
  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.low_limit_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Low Limit Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.low_limit_price.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.low_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Margin Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.margin_price = {}

-- Size: Margin Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.margin_price.size = 8

-- Display: Margin Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.margin_price.display = function(value)
  return "Margin Price: "..value
end

-- Translate: Margin Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.margin_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Margin Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.margin_price.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.margin_price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.margin_price.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.margin_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.margin_price, range, value, display)

  return offset + length, value
end

-- Market Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_id = {}

-- Size: Market Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_id.size = 8

-- Display: Market Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_id.labels = {
  ["XHKG"] = "Market Id: Hk Connect (XHKG)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_id.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_id.labels[value] or "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Segment Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_segment_id = {}

-- Size: Market Segment Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_segment_id.size = 8

-- Display: Market Segment Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_segment_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Md Entry Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px = {}

-- Size: Md Entry Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.size = 8

-- Display: Md Entry Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.display = function(value)
  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Md Entry Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Md Entry Size
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size = {}

-- Size: Md Entry Size
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.size = 8

-- Display: Md Entry Size
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.display = function(value)
  return "Md Entry Size: "..value
end

-- Translate: Md Entry Size
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Md Entry Size
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Md Entry Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type = {}

-- Size: Md Entry Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.size = 2

-- Display: Md Entry Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.labels = {
  ["0"] = "Md Entry Type: Buy (0)",
  ["1"] = "Md Entry Type: Sell (1)",
  ["2"] = "Md Entry Type: Latest Price (2)",
  ["3"] = "Md Entry Type: Current Index (3)",
  ["4"] = "Md Entry Type: Open Price (4)",
  ["5"] = "Md Entry Type: Close Price (5)",
  ["7"] = "Md Entry Type: Highest Price (7)",
  ["8"] = "Md Entry Type: Lowest Price (8)",
  ["9"] = "Md Entry Type: Weighted Average Price (9)",
  ["X1"] = "Md Entry Type: Fluctuation 1 (X1)",
  ["X2"] = "Md Entry Type: Fluctuation 2 (X2)",
  ["X3"] = "Md Entry Type: Buy Statistics (X3)",
  ["X4"] = "Md Entry Type: Sell Statistics (X4)",
  ["X5"] = "Md Entry Type: Pe Ratio 1 (X5)",
  ["X6"] = "Md Entry Type: Pe Ratio 2 (X6)",
  ["X7"] = "Md Entry Type: Fund Nav At T 1 (X7)",
  ["X8"] = "Md Entry Type: Real Time Nav Of Funds (X8)",
  ["x9"] = "Md Entry Type: Warrants Premium Rate (x9)",
  ["Xa"] = "Md Entry Type: Previous Close Index (Xa)",
  ["Xb"] = "Md Entry Type: Open Index (Xb)",
  ["Xc"] = "Md Entry Type: Max Index (Xc)",
  ["Xd"] = "Md Entry Type: Min Index (Xd)",
  ["xe"] = "Md Entry Type: Up Price Limit (xe)",
  ["xf"] = "Md Entry Type: Down Price Limit (xf)",
  ["xg"] = "Md Entry Type: Position Quantity (xg)",
  ["xh"] = "Md Entry Type: Nominal Price (xh)",
  ["xi"] = "Md Entry Type: Reference Price (xi)",
  ["xj"] = "Md Entry Type: Rise Or Fall Bp Of The Weighted Average Price (xj)",
  ["xk"] = "Md Entry Type: Previous Weighted Average Close Price (xk)",
  ["xl"] = "Md Entry Type: Close Index (xl)",
  ["xm"] = "Md Entry Type: Close Index 2 (xm)",
  ["xn"] = "Md Entry Type: Close Index 3 (xn)",
  ["xr"] = "Md Entry Type: Price Cap Of Buy Order (xr)",
  ["xs"] = "Md Entry Type: Price Floor Of Buy Order (xs)",
  ["xt"] = "Md Entry Type: Price Cap Of Sell Order (xt)",
  ["xu"] = "Md Entry Type: Price Floor Of Sell Order (xu)",
  ["xv"] = "Md Entry Type: Matching Deal Latest Price (xv)",
  ["xw"] = "Md Entry Type: Etf Real Time Subscription (xw)",
  ["xx"] = "Md Entry Type: Etf Real Time Redemption (xx)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.labels[value] or "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Md Price Level
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_price_level = {}

-- Size: Md Price Level
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_price_level.size = 2

-- Display: Md Price Level
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_price_level.display = function(value)
  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_price_level.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_price_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Md Stream Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id = {}

-- Size: Md Stream Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size = 3

-- Display: Md Stream Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.labels = {
  ["010"] = "Md Stream Id: Snapshot Data Of Cash Auction (010)",
  ["011"] = "Md Stream Id: Tick Data In Call Auction Of Spot Market (011)",
  ["020"] = "Md Stream Id: Snapshot Data Of Bond General Pledged Repo Matching Deal (020)",
  ["021"] = "Md Stream Id: Tick Data Of Pledge Style Repo (021)",
  ["030"] = "Md Stream Id: Snapshot Data Of Bond Distribution (030)",
  ["040"] = "Md Stream Id: Snapshot Data Of Option Auction (040)",
  ["041"] = "Md Stream Id: Tick Data Of Call Auction In Options (041)",
  ["051"] = "Md Stream Id: Tick Data Of Indication Of Interest Of Negotiable Trade (051)",
  ["052"] = "Md Stream Id: Tick Data Of Quote Of Negotiable Trade (052)",
  ["060"] = "Md Stream Id: After Hour Trading Block Trade Snapshot Data With Close Price (060)",
  ["061"] = "Md Stream Id: After Hour Trading Block Trade Snapshot Data With Vwap (061)",
  ["071"] = "Md Stream Id: Tick Data Of Security Lending (071)",
  ["370"] = "Md Stream Id: Snapshot Of After Hour Trading (370)",
  ["410"] = "Md Stream Id: Snapshot Of Spot Bond Trading (410)",
  ["411"] = "Md Stream Id: Tick Data Of Spot Bond Tradings Matching Deal (411)",
  ["412"] = "Md Stream Id: Tick Data Of Spot Bond Tradings Negotiated Deal (412)",
  ["413"] = "Md Stream Id: Tick Data Of Spot Bond Tradings Click Deal (413)",
  ["414"] = "Md Stream Id: Tick Data Of Spot Bond Tradings Inquiry Deal (414)",
  ["415"] = "Md Stream Id: Tick Data Of Spot Bond Tradings Declaration Of Intent (415)",
  ["416"] = "Md Stream Id: Tick Data Of Spot Bond Tradings Bidding Deal (416)",
  ["417"] = "Md Stream Id: Tick Data Of Spot Bond Tradings Large Amount Matching Deal (417)",
  ["630"] = "Md Stream Id: Real Time Market Data Of Eligible Hk Stocks (630)",
  ["900"] = "Md Stream Id: Index (900)",
  ["910"] = "Md Stream Id: Statistic Indicators (910)",
  ["920"] = "Md Stream Id: Cni Indices Snapshot Data (920)",
  ["930"] = "Md Stream Id: Real Time Reference Net Value Of Funds (930)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.labels[value] or "Md Stream Id: Unknown("..value..")"
end

-- Dissect: Md Stream Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_stream_id, range, value, display)

  return offset + length, value
end

-- Member Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.member_id = {}

-- Size: Member Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.member_id.size = 6

-- Display: Member Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.member_id.display = function(value)
  return "Member Id: "..value
end

-- Dissect: Member Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.member_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.member_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.member_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.member_id, range, value, display)

  return offset + length, value
end

-- Memo
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.memo = {}

-- Size: Memo
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.memo.size = 160

-- Display: Memo
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.memo.display = function(value)
  return "Memo: "..value
end

-- Dissect: Memo
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.memo.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.memo.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.memo, range, value, display)

  return offset + length, value
end

-- Min Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty = {}

-- Size: Min Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty.size = 8

-- Display: Min Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Translate: Min Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Min Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Msg Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.msg_type = {}

-- Size: Msg Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.msg_type.size = 4

-- Display: Msg Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.msg_type.labels = {
  [1] = "Msg Type: Logon Message (1)",
  [2] = "Msg Type: Logout Message (2)",
  [3] = "Msg Type: Heartbeat Message (3)",
  [390095] = "Msg Type: Channel Heartbeat Message (390095)",
  [390094] = "Msg Type: Retransmitting Message (390094)",
  [390093] = "Msg Type: Client User Information Reporting Message (390093)",
  [390090] = "Msg Type: Statistics Of Snapshot Data Channel Message (390090)",
  [8] = "Msg Type: Business Reject Message (8)",
  [390019] = "Msg Type: Real Time Market Status Message (390019)",
  [390013] = "Msg Type: Real Time Status Of Security Message (390013)",
  [390012] = "Msg Type: Announcements Message (390012)",
  [300111] = "Msg Type: Snapshot Data Of Cash Auction Message (300111)",
  [300211] = "Msg Type: Snapshot Data Of Spot Bond Trading Message (300211)",
  [300611] = "Msg Type: Snapshot Data Of After Hour Trading Block Trade Message (300611)",
  [303711] = "Msg Type: Snapshot Data Of After Hour Trading Message (303711)",
  [306311] = "Msg Type: Snapshot Data Of Eligible Hk Stocks Message (306311)",
  [309011] = "Msg Type: Index Snapshot Message (309011)",
  [309111] = "Msg Type: Statistic Indicator Snapshot Message (309111)",
  [309211] = "Msg Type: Real Time Reference Net Value Of Funds Snapshot Message (309211)",
  [300192] = "Msg Type: Order Tick Data In Call Auction Message (300192)",
  [300592] = "Msg Type: Order Tick Data Of Negotiable Trade Message (300592)",
  [300792] = "Msg Type: Order Tick Data Of Security Lending Message (300792)",
  [300292] = "Msg Type: Order Tick Data Of Spot Bond Trading Matching Deal Message (300292)",
  [300392] = "Msg Type: Order Tick Data Of Spot Bond Trading Quotation Message (300392)",
  [300492] = "Msg Type: Order Tick Data Of Bid Quotation Message (300492)",
  [300191] = "Msg Type: Transaction Tick Data In Call Auction Message (300191)",
  [300591] = "Msg Type: Transaction Tick Data Of Negotiable Trade Message (300591)",
  [300791] = "Msg Type: Transaction Tick Data Of Security Lending Message (300791)",
  [300291] = "Msg Type: Transaction Tick Data Of Bond General Pledged Repo Message (300291)",
  [300391] = "Msg Type: Transaction Tick Data Of Spot Bond Trading Quotation Message (300391)",
  [300491] = "Msg Type: Transaction Tick Data Of Bid Quotation Message (300491)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.msg_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.msg_type, range, value, display)

  return offset + length, value
end

-- News Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.news_id = {}

-- Size: News Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.news_id.size = 8

-- Display: News Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.news_id.display = function(value)
  return "News Id: "..value
end

-- Dissect: News Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.news_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.news_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.news_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.news_id, range, value, display)

  return offset + length, value
end

-- No Complex Event Times
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_complex_event_times = {}

-- Size: No Complex Event Times
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_complex_event_times.size = 4

-- Display: No Complex Event Times
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_complex_event_times.display = function(value)
  return "No Complex Event Times: "..value
end

-- Dissect: No Complex Event Times
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_complex_event_times.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_complex_event_times.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_complex_event_times.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_complex_event_times, range, value, display)

  return offset + length, value
end

-- No Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries = {}

-- Size: No Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.size = 4

-- Display: No Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.display = function(value)
  return "No Md Entries: "..value
end

-- Dissect: No Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_md_entries, range, value, display)

  return offset + length, value
end

-- No Md Stream Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_stream_id = {}

-- Size: No Md Stream Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_stream_id.size = 4

-- Display: No Md Stream Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_stream_id.display = function(value)
  return "No Md Stream Id: "..value
end

-- Dissect: No Md Stream Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_stream_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_stream_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_md_stream_id, range, value, display)

  return offset + length, value
end

-- No Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_orders = {}

-- Size: No Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_orders.size = 4

-- Display: No Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_orders.display = function(value)
  return "No Orders: "..value
end

-- Dissect: No Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_orders.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_orders, range, value, display)

  return offset + length, value
end

-- No Sub Trading Phase Codes
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_sub_trading_phase_codes = {}

-- Size: No Sub Trading Phase Codes
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_sub_trading_phase_codes.size = 4

-- Display: No Sub Trading Phase Codes
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_sub_trading_phase_codes.display = function(value)
  return "No Sub Trading Phase Codes: "..value
end

-- Dissect: No Sub Trading Phase Codes
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_sub_trading_phase_codes.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_sub_trading_phase_codes.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_sub_trading_phase_codes.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_sub_trading_phase_codes, range, value, display)

  return offset + length, value
end

-- No Switch
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_switch = {}

-- Size: No Switch
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_switch.size = 4

-- Display: No Switch
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_switch.display = function(value)
  return "No Switch: "..value
end

-- Dissect: No Switch
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_switch.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_switch.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_switch.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.no_switch, range, value, display)

  return offset + length, value
end

-- Num Trades
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades = {}

-- Size: Num Trades
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.size = 8

-- Display: Num Trades
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.display = function(value)
  return "Num Trades: "..value
end

-- Dissect: Num Trades
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.num_trades, range, value, display)

  return offset + length, value
end

-- Number Of Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.number_of_orders = {}

-- Size: Number Of Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.number_of_orders.size = 8

-- Display: Number Of Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.number_of_orders.display = function(value)
  return "Number Of Orders: "..value
end

-- Dissect: Number Of Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.number_of_orders.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.number_of_orders.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.number_of_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.number_of_orders, range, value, display)

  return offset + length, value
end

-- Offer Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num = {}

-- Size: Offer Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.size = 8

-- Display: Offer Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.display = function(value)
  return "Offer Appl Seq Num: "..value
end

-- Dissect: Offer Appl Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.offer_appl_seq_num, range, value, display)

  return offset + length, value
end

-- Ord Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type = {}

-- Size: Ord Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type.size = 1

-- Display: Ord Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type.labels = {
  ["1"] = "Ord Type: Market Price (1)",
  ["2"] = "Ord Type: Limit Price (2)",
  ["U"] = "Ord Type: Best Price Of This Party (U)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type.labels[value] or "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty = {}

-- Size: Order Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.size = 8

-- Display: Order Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Translate: Order Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Order Qty
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Orig Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time = {}

-- Size: Orig Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size = 8

-- Dissect: Orig Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.orig_time
  if szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.absolute_time_base == 1 then field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.orig_time_utc end

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
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.password = {}

-- Size: Password
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.password.size = 16

-- Display: Password
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.password.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.password, range, value, display)

  return offset + length, value
end

-- Pos Amt
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.pos_amt = {}

-- Size: Pos Amt
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.pos_amt.size = 8

-- Display: Pos Amt
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.pos_amt.display = function(value)
  return "Pos Amt: "..value
end

-- Translate: Pos Amt
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.pos_amt.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Pos Amt
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.pos_amt.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.pos_amt.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.pos_amt.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.pos_amt.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.pos_amt, range, value, display)

  return offset + length, value
end

-- Prev Close Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px = {}

-- Size: Prev Close Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.size = 8

-- Display: Prev Close Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.display = function(value)
  return "Prev Close Px: "..value
end

-- Translate: Prev Close Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Prev Close Px
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.prev_close_px, range, value, display)

  return offset + length, value
end

-- Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price = {}

-- Size: Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.size = 8

-- Display: Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.price, range, value, display)

  return offset + length, value
end

-- Quote Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.quote_id = {}

-- Size: Quote Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.quote_id.size = 10

-- Display: Quote Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.quote_id.display = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.quote_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.quote_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.quote_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Raw Data
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data = {}

-- Display: Raw Data
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data.display = function(value)
  return "Raw Data: "..value
end

-- Dissect runtime sized field: Raw Data
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data.display(value, packet, parent, size)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.raw_data, range, value, display)

  return offset + size, value
end

-- Raw Data Format
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_format = {}

-- Size: Raw Data Format
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_format.size = 8

-- Display: Raw Data Format
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_format.display = function(value)
  return "Raw Data Format: "..value
end

-- Dissect: Raw Data Format
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_format.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_format.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_format.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.raw_data_format, range, value, display)

  return offset + length, value
end

-- Raw Data Length
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_length = {}

-- Size: Raw Data Length
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_length.size = 4

-- Display: Raw Data Length
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_length.display = function(value)
  return "Raw Data Length: "..value
end

-- Dissect: Raw Data Length
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_length.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.raw_data_length, range, value, display)

  return offset + length, value
end

-- Ref Msg Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_msg_type = {}

-- Size: Ref Msg Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_msg_type.size = 4

-- Display: Ref Msg Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_msg_type.display = function(value)
  return "Ref Msg Type: "..value
end

-- Dissect: Ref Msg Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.ref_msg_type, range, value, display)

  return offset + length, value
end

-- Ref Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_seq_num = {}

-- Size: Ref Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_seq_num.size = 8

-- Display: Ref Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_seq_num.display = function(value)
  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_seq_num.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.ref_seq_num, range, value, display)

  return offset + length, value
end

-- Reject Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.reject_text = {}

-- Size: Reject Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.reject_text.size = 16

-- Display: Reject Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.reject_text.display = function(value)
  return "Reject Text: "..value
end

-- Dissect: Reject Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.reject_text.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.reject_text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.reject_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.reject_text, range, value, display)

  return offset + length, value
end

-- Resend Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_status = {}

-- Size: Resend Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_status.size = 1

-- Display: Resend Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_status.labels = {
  [1] = "Resend Status: Finished (1)",
  [2] = "Resend Status: Partly Finished (2)",
  [3] = "Resend Status: No Authority Rights (3)",
  [4] = "Resend Status: Data Is Not Applicable (4)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_status.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_status.labels[value] or "Resend Status: Unknown("..value..")"
end

-- Dissect: Resend Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_status.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.resend_status, range, value, display)

  return offset + length, value
end

-- Resend Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_type = {}

-- Size: Resend Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_type.size = 1

-- Display: Resend Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_type.labels = {
  [1] = "Resend Type: Tick Data (1)",
  [2] = "Resend Type: Announcement Message (2)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_type.labels[value] or "Resend Type: Unknown("..value..")"
end

-- Dissect: Resend Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.resend_type, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.secondary_order_id = {}

-- Size: Secondary Order Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.secondary_order_id.size = 16

-- Display: Secondary Order Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.secondary_order_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Security Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id = {}

-- Size: Security Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size = 8

-- Display: Security Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Id Source
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source = {}

-- Size: Security Id Source
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size = 4

-- Display: Security Id Source
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.labels = {
  ["102"] = "Security Id Source: Shenzhen Stock Exchange (102)",
  ["103"] = "Security Id Source: Hong Kong Exchange (103)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.labels[value] or "Security Id Source: Unknown("..value..")"
end

-- Dissect: Security Id Source
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.security_id_source, range, value, display)

  return offset + length, value
end

-- Security Switch Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_status = {}

-- Size: Security Switch Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_status.size = 2

-- Display: Security Switch Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_status.display = function(value)
  return "Security Switch Status: "..value
end

-- Dissect: Security Switch Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_status.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.security_switch_status, range, value, display)

  return offset + length, value
end

-- Security Switch Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_type = {}

-- Size: Security Switch Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_type.size = 2

-- Display: Security Switch Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_type.labels = {
  [1] = "Security Switch Type: Margin Buy (1)",
  [2] = "Security Switch Type: Short Sell (2)",
  [3] = "Security Switch Type: Fund Subscription (3)",
  [4] = "Security Switch Type: Fund Redemption (4)",
  [5] = "Security Switch Type: Issue Subscription (5)",
  [6] = "Security Switch Type: Conversion (6)",
  [7] = "Security Switch Type: Resale (7)",
  [8] = "Security Switch Type: Warrant Exercise (8)",
  [10] = "Security Switch Type: Buy Open (10)",
  [11] = "Security Switch Type: Sell Open (11)",
  [12] = "Security Switch Type: Subscription Of Gold Etf In Physical (12)",
  [13] = "Security Switch Type: Redemption Of Gold Etf In Physical (13)",
  [14] = "Security Switch Type: Pre Accepted Tender Offer (14)",
  [15] = "Security Switch Type: Cancellation Of Tender Offer (15)",
  [20] = "Security Switch Type: Pledge (20)",
  [21] = "Security Switch Type: Release Of Pledge (21)",
  [22] = "Security Switch Type: Voting Rights (22)",
  [23] = "Security Switch Type: Equity Pledge Style Repo (23)",
  [26] = "Security Switch Type: Covered Openning (26)",
  [27] = "Security Switch Type: Market Maker Quotation (27)",
  [28] = "Security Switch Type: Round Lot Buy Of Eligible Hk Stocks (28)",
  [29] = "Security Switch Type: Round Lot Sell Of Eligible Hk Stocks (29)",
  [30] = "Security Switch Type: Odd Lot Buy Of Eligible Hk Stocks (30)",
  [31] = "Security Switch Type: Odd Lot Sell Of Eligible Hk Stocks (31)",
  [32] = "Security Switch Type: Options From Ordinary To Covered (32)",
  [33] = "Security Switch Type: Options From Covered To Ordinary (33)",
  [34] = "Security Switch Type: Resale Cancellation (34)",
  [35] = "Security Switch Type: Securities Lending (35)",
  [36] = "Security Switch Type: Bond Put Option And Resale (36)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_type.labels[value] or "Security Switch Type: Unknown("..value..")"
end

-- Dissect: Security Switch Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.security_switch_type, range, value, display)

  return offset + length, value
end

-- Sender Comp Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sender_comp_id = {}

-- Size: Sender Comp Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sender_comp_id.size = 20

-- Display: Sender Comp Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sender_comp_id.display = function(value)
  return "Sender Comp Id: "..value
end

-- Dissect: Sender Comp Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sender_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sender_comp_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sender_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.sender_comp_id, range, value, display)

  return offset + length, value
end

-- Session Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.session_status = {}

-- Size: Session Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.session_status.size = 4

-- Display: Session Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.session_status.labels = {
  [0] = "Session Status: Active In Session (0)",
  [1] = "Session Status: Session Password Has Been Changed (1)",
  [2] = "Session Status: Session Password Shall Be Overdue (2)",
  [3] = "Session Status: The New Session Password Is Not Consistent With The Instructions (3)",
  [4] = "Session Status: Session Logout Is Complete (4)",
  [5] = "Session Status: Illegal User Name Or Password (5)",
  [6] = "Session Status: User Name Is Locked (6)",
  [7] = "Session Status: Logon Is Prohibited At The Current Time (7)",
  [8] = "Session Status: Password Is Overdue (8)",
  [9] = "Session Status: Msg Seq Num Received Is Too Small (9)",
  [10] = "Session Status: Next Expected Msg Seq Num Received Is Too Large (10)",
  [101] = "Session Status: Others (101)",
  [102] = "Session Status: Invalid Message (102)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.session_status.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.session_status.labels[value] or "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.session_status.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.session_status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.session_status, range, value, display)

  return offset + length, value
end

-- Settl Period
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period = {}

-- Size: Settl Period
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.size = 1

-- Display: Settl Period
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.display = function(value)
  return "Settl Period: "..value
end

-- Dissect: Settl Period
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.settl_period, range, value, display)

  return offset + length, value
end

-- Settl Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type = {}

-- Size: Settl Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.size = 2

-- Display: Settl Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.labels = {
  [103] = "Settl Type: Multilateral Netting (103)",
  [104] = "Settl Type: Gross Settlement (104)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.labels[value] or "Settl Type: Unknown("..value..")"
end

-- Dissect: Settl Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.settl_type, range, value, display)

  return offset + length, value
end

-- Side
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side = {}

-- Size: Side
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.size = 1

-- Display: Side
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.labels = {
  ["1"] = "Side: Buy (1)",
  ["2"] = "Side: Sell (2)",
  ["G"] = "Side: Borrow (G)",
  ["F"] = "Side: Lend (F)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.side, range, value, display)

  return offset + length, value
end

-- Stock Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.stock_num = {}

-- Size: Stock Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.stock_num.size = 4

-- Display: Stock Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.stock_num.display = function(value)
  return "Stock Num: "..value
end

-- Dissect: Stock Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.stock_num.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.stock_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.stock_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.stock_num, range, value, display)

  return offset + length, value
end

-- Sub Trading Phase Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_code = {}

-- Size: Sub Trading Phase Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_code.size = 8

-- Display: Sub Trading Phase Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_code.display = function(value)
  return "Sub Trading Phase Code: "..value
end

-- Dissect: Sub Trading Phase Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_code.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.sub_trading_phase_code, range, value, display)

  return offset + length, value
end

-- Target Comp Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.target_comp_id = {}

-- Size: Target Comp Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.target_comp_id.size = 20

-- Display: Target Comp Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.target_comp_id.display = function(value)
  return "Target Comp Id: "..value
end

-- Dissect: Target Comp Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.target_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.target_comp_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.target_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.target_comp_id, range, value, display)

  return offset + length, value
end

-- Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.text = {}

-- Size: Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.text.size = 200

-- Display: Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.text.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.text, range, value, display)

  return offset + length, value
end

-- Thredhold Amount
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.thredhold_amount = {}

-- Size: Thredhold Amount
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.thredhold_amount.size = 8

-- Display: Thredhold Amount
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.thredhold_amount.display = function(value)
  return "Thredhold Amount: "..value
end

-- Translate: Thredhold Amount
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.thredhold_amount.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Thredhold Amount
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.thredhold_amount.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.thredhold_amount.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.thredhold_amount.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.thredhold_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.thredhold_amount, range, value, display)

  return offset + length, value
end

-- Total Value Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade = {}

-- Size: Total Value Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.size = 8

-- Display: Total Value Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.display = function(value)
  return "Total Value Trade: "..value
end

-- Translate: Total Value Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Total Value Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.total_value_trade, range, value, display)

  return offset + length, value
end

-- Total Volume Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade = {}

-- Size: Total Volume Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.size = 8

-- Display: Total Volume Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.display = function(value)
  return "Total Volume Trade: "..value
end

-- Translate: Total Volume Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Total Volume Trade
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.translate(raw)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.total_volume_trade, range, value, display)

  return offset + length, value
end

-- Trad Ses End Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_end_time = {}

-- Size: Trad Ses End Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_end_time.size = 8

-- Dissect: Trad Ses End Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_end_time.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_end_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trad_ses_end_time
  if szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.absolute_time_base == 1 then field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trad_ses_end_time_utc end

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
    item:set_text("Trad Ses End Time: " .. tostring(packed))
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

-- Trad Ses Start Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_start_time = {}

-- Size: Trad Ses Start Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_start_time.size = 8

-- Dissect: Trad Ses Start Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_start_time.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_start_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trad_ses_start_time
  if szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.absolute_time_base == 1 then field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trad_ses_start_time_utc end

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
    item:set_text("Trad Ses Start Time: " .. tostring(packed))
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

-- Trad Ses Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_status = {}

-- Size: Trad Ses Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_status.size = 2

-- Display: Trad Ses Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_status.display = function(value)
  return "Trad Ses Status: "..value
end

-- Dissect: Trad Ses Status
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trade Date
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_date = {}

-- Size: Trade Date
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_date.size = 4

-- Display: Trade Date
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Trade Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Trade Date
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trader Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trader_code = {}

-- Size: Trader Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trader_code.size = 8

-- Display: Trader Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trader_code.display = function(value)
  return "Trader Code: "..value
end

-- Dissect: Trader Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trader_code.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trader_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trader_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trader_code, range, value, display)

  return offset + length, value
end

-- Trading Phase Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code = {}

-- Size: Trading Phase Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.size = 8

-- Display: Trading Phase Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.display = function(value)
  return "Trading Phase Code: "..value
end

-- Dissect: Trading Phase Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trading_phase_code, range, value, display)

  return offset + length, value
end

-- Trading Session Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_id = {}

-- Size: Trading Session Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_id.size = 4

-- Display: Trading Session Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_id.labels = {
  ["1"] = "Trading Session Id: Day (1)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_id.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_id.labels[value] or "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_sub_id.size = 4

-- Display: Trading Session Sub Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_sub_id.labels = {
  ["0"] = "Trading Session Sub Id: Market Close For The Whole Day (0)",
  ["1"] = "Trading Session Sub Id: Enter Bid Or Offer Price (1)",
  ["2"] = "Trading Session Sub Id: Order Matching (2)",
  ["3"] = "Trading Session Sub Id: Continuous Trading (3)",
  ["4"] = "Trading Session Sub Id: Order Matching Closing (4)",
  ["5"] = "Trading Session Sub Id: Enter Bid Or Offer Price Closing (5)",
  ["7"] = "Trading Session Sub Id: Suspension (7)",
  ["100"] = "Trading Session Sub Id: Market Not Open (100)",
  ["101"] = "Trading Session Sub Id: Before Order Matching (101)",
  ["102"] = "Trading Session Sub Id: Exchange Intervention (102)",
  ["103"] = "Trading Session Sub Id: Market Close (103)",
  ["104"] = "Trading Session Sub Id: Bid Or Offer Cancelled (104)",
  ["105"] = "Trading Session Sub Id: Fixed At A Reference Price (105)",
  ["106"] = "Trading Session Sub Id: Irrevocable (106)",
  ["107"] = "Trading Session Sub Id: Random Closing (107)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_sub_id.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_sub_id.labels[value] or "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Trading Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_type = {}

-- Size: Trading Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_type.size = 1

-- Display: Trading Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_type.labels = {
  [1] = "Trading Type: Matching Deal (1)",
  [2] = "Trading Type: Negotiated Deal (2)",
  [3] = "Trading Type: Click Deal (3)",
  [4] = "Trading Type: Inquiry Deal (4)",
  [5] = "Trading Type: Bidding Deal (5)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_type.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_type.labels[value] or "Trading Type: Unknown("..value..")"
end

-- Dissect: Trading Type
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_type.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trading_type, range, value, display)

  return offset + length, value
end

-- Transac Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time = {}

-- Size: Transac Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size = 8

-- Dissect: Transac Time
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size
  local range = buffer(offset, length)
  local packed = range:int64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transac_time
  if szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.absolute_time_base == 1 then field = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transac_time_utc end

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
    item:set_text("Transac Time: " .. tostring(packed))
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

-- User Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.user_num = {}

-- Size: User Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.user_num.size = 2

-- Display: User Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.user_num.display = function(value)
  return "User Num: "..value
end

-- Dissect: User Num
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.user_num.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.user_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.user_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.user_num, range, value, display)

  return offset + length, value
end

-- Version Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.version_code = {}

-- Size: Version Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.version_code.size = 16

-- Display: Version Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.version_code.labels = {
  ["01"] = "Version Code: On The Spot Version (01)",
  ["02"] = "Version Code: Internet Version (02)",
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.version_code.display = function(value)
  return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.version_code.labels[value] or "Version Code: Unknown("..value..")"
end

-- Dissect: Version Code
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.version_code.dissect = function(buffer, offset, packet, parent)
  local length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.version_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(ENC_UTF_8))
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.version_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.version_code, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Szse SzseSecurities TcpMarketData SzseBinary 1.17
-----------------------------------------------------------------------

-- Message Tail
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_tail = {}

-- Size: Message Tail
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_tail.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.checksum.size

-- Display: Message Tail
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_tail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Tail
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_tail.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Checksum: uInt32
  index, checksum = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Tail
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_tail.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.message_tail, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_tail.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_tail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_tail.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Tick Data Of Bid Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bid_quotation_message = {}

-- Size: Transaction Tick Data Of Bid Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bid_quotation_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.secondary_order_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.margin_price.size

-- Display: Transaction Tick Data Of Bid Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bid_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Tick Data Of Bid Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bid_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Offer Appl Seq Num: SeqNum
  index, offer_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.dissect(buffer, index, packet, parent)

  -- Exec Type: Char
  index, exec_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  -- Settl Period: uInt8
  index, settl_period = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.dissect(buffer, index, packet, parent)

  -- Settl Type: uInt16
  index, settl_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Char[16]
  index, secondary_order_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Bid Exec Inst Type: uInt16
  index, bid_exec_inst_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type.dissect(buffer, index, packet, parent)

  -- Margin Price: Price
  index, margin_price = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.margin_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Tick Data Of Bid Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bid_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_of_bid_quotation_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bid_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bid_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bid_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Tick Data Of Spot Bond Trading Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_spot_bond_trading_quotation_message = {}

-- Size: Transaction Tick Data Of Spot Bond Trading Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_spot_bond_trading_quotation_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.size

-- Display: Transaction Tick Data Of Spot Bond Trading Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_spot_bond_trading_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Tick Data Of Spot Bond Trading Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_spot_bond_trading_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Offer Appl Seq Num: SeqNum
  index, offer_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.dissect(buffer, index, packet, parent)

  -- Exec Type: Char
  index, exec_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  -- Settl Period: uInt8
  index, settl_period = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.dissect(buffer, index, packet, parent)

  -- Settl Type: uInt16
  index, settl_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Tick Data Of Spot Bond Trading Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_spot_bond_trading_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_of_spot_bond_trading_quotation_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_spot_bond_trading_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_spot_bond_trading_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_spot_bond_trading_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Tick Data Of Bond General Pledged Repo Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bond_general_pledged_repo_message = {}

-- Size: Transaction Tick Data Of Bond General Pledged Repo Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bond_general_pledged_repo_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size

-- Display: Transaction Tick Data Of Bond General Pledged Repo Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bond_general_pledged_repo_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Tick Data Of Bond General Pledged Repo Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bond_general_pledged_repo_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Offer Appl Seq Num: SeqNum
  index, offer_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.dissect(buffer, index, packet, parent)

  -- Exec Type: Char
  index, exec_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Tick Data Of Bond General Pledged Repo Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bond_general_pledged_repo_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_of_bond_general_pledged_repo_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bond_general_pledged_repo_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bond_general_pledged_repo_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bond_general_pledged_repo_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Tick Data Of Security Lending Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_security_lending_message = {}

-- Size: Transaction Tick Data Of Security Lending Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_security_lending_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size

-- Display: Transaction Tick Data Of Security Lending Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_security_lending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Tick Data Of Security Lending Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_security_lending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Offer Appl Seq Num: SeqNum
  index, offer_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.dissect(buffer, index, packet, parent)

  -- Exec Type: Char
  index, exec_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Tick Data Of Security Lending Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_security_lending_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_of_security_lending_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_security_lending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_security_lending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_security_lending_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Tick Data Of Negotiable Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_negotiable_trade_message = {}

-- Size: Transaction Tick Data Of Negotiable Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_negotiable_trade_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size

-- Display: Transaction Tick Data Of Negotiable Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_negotiable_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Tick Data Of Negotiable Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_negotiable_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Offer Appl Seq Num: SeqNum
  index, offer_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.dissect(buffer, index, packet, parent)

  -- Exec Type: Char
  index, exec_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Tick Data Of Negotiable Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_negotiable_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_of_negotiable_trade_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_negotiable_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_negotiable_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_negotiable_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Tick Data In Call Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_in_call_auction_message = {}

-- Size: Transaction Tick Data In Call Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_in_call_auction_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size

-- Display: Transaction Tick Data In Call Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_in_call_auction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Tick Data In Call Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_in_call_auction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Bid Appl Seq Num: SeqNum
  index, bid_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Offer Appl Seq Num: SeqNum
  index, offer_appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.offer_appl_seq_num.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Last Px: Price
  index, last_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_px.dissect(buffer, index, packet, parent)

  -- Last Qty: Qty
  index, last_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.last_qty.dissect(buffer, index, packet, parent)

  -- Exec Type: Char
  index, exec_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.exec_type.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Tick Data In Call Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_in_call_auction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.transaction_tick_data_in_call_auction_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_in_call_auction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_in_call_auction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_in_call_auction_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Tick Data Of Bid Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_bid_quotation_message = {}

-- Size: Order Tick Data Of Bid Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_bid_quotation_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.member_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_name.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trader_code.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.memo.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.secondary_order_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_trans_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.low_limit_price.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.high_limit_price.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_date.size

-- Display: Order Tick Data Of Bid Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_bid_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Tick Data Of Bid Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_bid_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  -- Member Id: Char[6]
  index, member_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.member_id.dissect(buffer, index, packet, parent)

  -- Investor Type: Char[2]
  index, investor_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type.dissect(buffer, index, packet, parent)

  -- Investor Id: Char[10]
  index, investor_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_id.dissect(buffer, index, packet, parent)

  -- Investor Name: Char[120]
  index, investor_name = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_name.dissect(buffer, index, packet, parent)

  -- Trader Code: Char[8]
  index, trader_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trader_code.dissect(buffer, index, packet, parent)

  -- Settl Period: uInt8
  index, settl_period = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.dissect(buffer, index, packet, parent)

  -- Settl Type: uInt16
  index, settl_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.dissect(buffer, index, packet, parent)

  -- Memo: Char[160]
  index, memo = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.memo.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Char[16]
  index, secondary_order_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Bid Trans Type: uInt16
  index, bid_trans_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_trans_type.dissect(buffer, index, packet, parent)

  -- Bid Exec Inst Type: uInt16
  index, bid_exec_inst_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.bid_exec_inst_type.dissect(buffer, index, packet, parent)

  -- Low Limit Price: Price
  index, low_limit_price = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.low_limit_price.dissect(buffer, index, packet, parent)

  -- High Limit Price: Price
  index, high_limit_price = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.high_limit_price.dissect(buffer, index, packet, parent)

  -- Min Qty: Qty
  index, min_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty.dissect(buffer, index, packet, parent)

  -- Trade Date: LocalMktDate
  index, trade_date = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Tick Data Of Bid Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_bid_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_of_bid_quotation_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_bid_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_bid_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_bid_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Tick Data Of Spot Bond Trading Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_quotation_message = {}

-- Size: Order Tick Data Of Spot Bond Trading Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_quotation_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.quote_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.member_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_name.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trader_code.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.memo.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty.size

-- Display: Order Tick Data Of Spot Bond Trading Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_quotation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Tick Data Of Spot Bond Trading Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_quotation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  -- Quote Id: Char[10]
  index, quote_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.quote_id.dissect(buffer, index, packet, parent)

  -- Member Id: Char[6]
  index, member_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.member_id.dissect(buffer, index, packet, parent)

  -- Investor Type: Char[2]
  index, investor_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_type.dissect(buffer, index, packet, parent)

  -- Investor Id: Char[10]
  index, investor_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_id.dissect(buffer, index, packet, parent)

  -- Investor Name: Char[120]
  index, investor_name = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.investor_name.dissect(buffer, index, packet, parent)

  -- Trader Code: Char[8]
  index, trader_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trader_code.dissect(buffer, index, packet, parent)

  -- Settl Period: uInt8
  index, settl_period = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_period.dissect(buffer, index, packet, parent)

  -- Settl Type: uInt16
  index, settl_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.settl_type.dissect(buffer, index, packet, parent)

  -- Memo: Char[160]
  index, memo = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.memo.dissect(buffer, index, packet, parent)

  -- Min Qty: Qty
  index, min_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.min_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Tick Data Of Spot Bond Trading Quotation Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_quotation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_of_spot_bond_trading_quotation_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_quotation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_quotation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_quotation_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Tick Data Of Spot Bond Trading Matching Deal Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_matching_deal_message = {}

-- Size: Order Tick Data Of Spot Bond Trading Matching Deal Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_matching_deal_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type.size

-- Display: Order Tick Data Of Spot Bond Trading Matching Deal Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_matching_deal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Tick Data Of Spot Bond Trading Matching Deal Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_matching_deal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Tick Data Of Spot Bond Trading Matching Deal Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_matching_deal_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_of_spot_bond_trading_matching_deal_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_matching_deal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_matching_deal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_matching_deal_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Tick Data Of Security Lending Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_security_lending_message = {}

-- Size: Order Tick Data Of Security Lending Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_security_lending_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_days.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_type.size

-- Display: Order Tick Data Of Security Lending Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_security_lending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Tick Data Of Security Lending Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_security_lending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  -- Expiration Days: uInt16
  index, expiration_days = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_days.dissect(buffer, index, packet, parent)

  -- Expiration Type: uInt8
  index, expiration_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.expiration_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Tick Data Of Security Lending Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_security_lending_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_of_security_lending_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_security_lending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_security_lending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_security_lending_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Tick Data Of Negotiable Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_negotiable_trade_message = {}

-- Size: Order Tick Data Of Negotiable Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_negotiable_trade_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.confirm_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contactor.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contact_info.size

-- Display: Order Tick Data Of Negotiable Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_negotiable_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Tick Data Of Negotiable Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_negotiable_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  -- Confirm Id: Char[8]
  index, confirm_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.confirm_id.dissect(buffer, index, packet, parent)

  -- Contactor: Char[12]
  index, contactor = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contactor.dissect(buffer, index, packet, parent)

  -- Contact Info: Char[30]
  index, contact_info = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.contact_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Tick Data Of Negotiable Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_negotiable_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_of_negotiable_trade_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_negotiable_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_negotiable_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_negotiable_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Tick Data In Call Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_in_call_auction_message = {}

-- Size: Order Tick Data In Call Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_in_call_auction_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type.size

-- Display: Order Tick Data In Call Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_in_call_auction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Tick Data In Call Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_in_call_auction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Seq Num: SeqNum
  index, appl_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_seq_num.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Qty
  index, order_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.dissect(buffer, index, packet, parent)

  -- Side: char
  index, side = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.side.dissect(buffer, index, packet, parent)

  -- Transac Time: LocalTimestamp
  index, transac_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transac_time.dissect(buffer, index, packet, parent)

  -- Ord Type: char
  index, ord_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ord_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Tick Data In Call Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_in_call_auction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.order_tick_data_in_call_auction_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_in_call_auction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_in_call_auction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_in_call_auction_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_md_entries = {}

-- Size: Index Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_md_entries.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.size

-- Display: Index Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_md_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_md_entries.fields = function(buffer, offset, packet, parent, index_md_entries_index)
  local index = offset

  -- Implicit Index Md Entries Index
  if index_md_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.index_md_entries_index, index_md_entries_index)
    iteration:set_generated()
  end

  -- Md Entry Type: Char[2]
  index, md_entry_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Int64
  index, md_entry_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_md_entries.dissect = function(buffer, offset, packet, parent, index_md_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.index_md_entries, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_md_entries.fields(buffer, offset, packet, parent, index_md_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_md_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_md_entries.fields(buffer, offset, packet, parent, index_md_entries_index)
  end
end

-- Real Time Reference Net Value Of Funds Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_reference_net_value_of_funds_snapshot_message = {}

-- Calculate size of: Real Time Reference Net Value Of Funds Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_reference_net_value_of_funds_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.size

  -- Calculate field size from count
  local index_md_entries_count = buffer(offset + index - 4, 4):uint()
  index = index + index_md_entries_count * 10

  return index
end

-- Display: Real Time Reference Net Value Of Funds Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_reference_net_value_of_funds_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Real Time Reference Net Value Of Funds Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_reference_net_value_of_funds_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: Char[8]
  index, trading_phase_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Prev Close Px: Price
  index, prev_close_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Qty
  index, total_volume_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Index Md Entries
  for index_md_entries_index = 1, no_md_entries do
    index, index_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_md_entries.dissect(buffer, index, packet, parent, index_md_entries_index)
  end

  return index
end

-- Dissect: Real Time Reference Net Value Of Funds Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_reference_net_value_of_funds_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.real_time_reference_net_value_of_funds_snapshot_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_reference_net_value_of_funds_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_reference_net_value_of_funds_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_reference_net_value_of_funds_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistic Indicator Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistic_indicator_snapshot_message = {}

-- Size: Statistic Indicator Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistic_indicator_snapshot_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.stock_num.size

-- Display: Statistic Indicator Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistic_indicator_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistic Indicator Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistic_indicator_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: Char[8]
  index, trading_phase_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Prev Close Px: Price
  index, prev_close_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Qty
  index, total_volume_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.dissect(buffer, index, packet, parent)

  -- Stock Num: uInt32
  index, stock_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.stock_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistic Indicator Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistic_indicator_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.statistic_indicator_snapshot_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistic_indicator_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistic_indicator_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistic_indicator_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_snapshot_message = {}

-- Calculate size of: Index Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.size

  -- Calculate field size from count
  local index_md_entries_count = buffer(offset + index - 4, 4):uint()
  index = index + index_md_entries_count * 10

  return index
end

-- Display: Index Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: Char[8]
  index, trading_phase_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Prev Close Px: Price
  index, prev_close_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Qty
  index, total_volume_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Index Md Entries
  for index_md_entries_index = 1, no_md_entries do
    index, index_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_md_entries.dissect(buffer, index, packet, parent, index_md_entries_index)
  end

  return index
end

-- Dissect: Index Snapshot Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.index_snapshot_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Event Times
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_times = {}

-- Size: Complex Event Times
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_times.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_start_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_end_time.size

-- Display: Complex Event Times
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_times.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Event Times
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_times.fields = function(buffer, offset, packet, parent, complex_event_times_index)
  local index = offset

  -- Implicit Complex Event Times Index
  if complex_event_times_index ~= nil and show.indexes then
    local iteration = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_times_index, complex_event_times_index)
    iteration:set_generated()
  end

  -- Complex Event Start Time: LocalTimestamp
  index, complex_event_start_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_start_time.dissect(buffer, index, packet, parent)

  -- Complex Event End Time: LocalTimestamp
  index, complex_event_end_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_end_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Event Times
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_times.dissect = function(buffer, offset, packet, parent, complex_event_times_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.complex_event_times, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_times.fields(buffer, offset, packet, parent, complex_event_times_index)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_times.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_times.fields(buffer, offset, packet, parent, complex_event_times_index)
  end
end

-- Hk Stocks Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.hk_stocks_md_entries = {}

-- Size: Hk Stocks Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.hk_stocks_md_entries.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_price_level.size

-- Display: Hk Stocks Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.hk_stocks_md_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Hk Stocks Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.hk_stocks_md_entries.fields = function(buffer, offset, packet, parent, hk_stocks_md_entries_index)
  local index = offset

  -- Implicit Hk Stocks Md Entries Index
  if hk_stocks_md_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.hk_stocks_md_entries_index, hk_stocks_md_entries_index)
    iteration:set_generated()
  end

  -- Md Entry Type: Char[2]
  index, md_entry_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Int64
  index, md_entry_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: Qty
  index, md_entry_size = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Price Level: uInt16
  index, md_price_level = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_price_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Hk Stocks Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.hk_stocks_md_entries.dissect = function(buffer, offset, packet, parent, hk_stocks_md_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.hk_stocks_md_entries, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.hk_stocks_md_entries.fields(buffer, offset, packet, parent, hk_stocks_md_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.hk_stocks_md_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.hk_stocks_md_entries.fields(buffer, offset, packet, parent, hk_stocks_md_entries_index)
  end
end

-- Snapshot Data Of Eligible Hk Stocks Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_eligible_hk_stocks_message = {}

-- Calculate size of: Snapshot Data Of Eligible Hk Stocks Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_eligible_hk_stocks_message.size = function(buffer, offset)
  local index = 0

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.size

  -- Calculate field size from count
  local hk_stocks_md_entries_count = buffer(offset + index - 4, 4):uint()
  index = index + hk_stocks_md_entries_count * 20

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_complex_event_times.size

  -- Calculate field size from count
  local complex_event_times_count = buffer(offset + index - 4, 4):uint()
  index = index + complex_event_times_count * 16

  return index
end

-- Display: Snapshot Data Of Eligible Hk Stocks Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_eligible_hk_stocks_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Data Of Eligible Hk Stocks Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_eligible_hk_stocks_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: Char[8]
  index, trading_phase_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Prev Close Px: Price
  index, prev_close_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Qty
  index, total_volume_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Hk Stocks Md Entries
  for hk_stocks_md_entries_index = 1, no_md_entries do
    index, hk_stocks_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.hk_stocks_md_entries.dissect(buffer, index, packet, parent, hk_stocks_md_entries_index)
  end

  -- No Complex Event Times: NumInGroup
  index, no_complex_event_times = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_complex_event_times.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Event Times
  for complex_event_times_index = 1, no_complex_event_times do
    index, complex_event_times = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.complex_event_times.dissect(buffer, index, packet, parent, complex_event_times_index)
  end

  return index
end

-- Dissect: Snapshot Data Of Eligible Hk Stocks Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_eligible_hk_stocks_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.snapshot_data_of_eligible_hk_stocks_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_eligible_hk_stocks_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_eligible_hk_stocks_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_eligible_hk_stocks_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_md_entries = {}

-- Size: Trade Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_md_entries.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.size

-- Display: Trade Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_md_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_md_entries.fields = function(buffer, offset, packet, parent, trade_md_entries_index)
  local index = offset

  -- Implicit Trade Md Entries Index
  if trade_md_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trade_md_entries_index, trade_md_entries_index)
    iteration:set_generated()
  end

  -- Md Entry Type: Char[2]
  index, md_entry_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Int64
  index, md_entry_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: Qty
  index, md_entry_size = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_md_entries.dissect = function(buffer, offset, packet, parent, trade_md_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.trade_md_entries, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_md_entries.fields(buffer, offset, packet, parent, trade_md_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_md_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_md_entries.fields(buffer, offset, packet, parent, trade_md_entries_index)
  end
end

-- Snapshot Data Of After Hour Trading Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_message = {}

-- Calculate size of: Snapshot Data Of After Hour Trading Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_message.size = function(buffer, offset)
  local index = 0

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.size

  -- Calculate field size from count
  local trade_md_entries_count = buffer(offset + index - 4, 4):uint()
  index = index + trade_md_entries_count * 18

  return index
end

-- Display: Snapshot Data Of After Hour Trading Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Data Of After Hour Trading Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: Char[8]
  index, trading_phase_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Prev Close Px: Price
  index, prev_close_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Qty
  index, total_volume_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Trade Md Entries
  for trade_md_entries_index = 1, no_md_entries do
    index, trade_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_md_entries.dissect(buffer, index, packet, parent, trade_md_entries_index)
  end

  return index
end

-- Dissect: Snapshot Data Of After Hour Trading Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.snapshot_data_of_after_hour_trading_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Data Of After Hour Trading Block Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_block_trade_message = {}

-- Calculate size of: Snapshot Data Of After Hour Trading Block Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_block_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.size

  -- Calculate field size from count
  local trade_md_entries_count = buffer(offset + index - 4, 4):uint()
  index = index + trade_md_entries_count * 18

  return index
end

-- Display: Snapshot Data Of After Hour Trading Block Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_block_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Data Of After Hour Trading Block Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_block_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: Char[8]
  index, trading_phase_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Prev Close Px: Price
  index, prev_close_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Qty
  index, total_volume_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Trade Md Entries
  for trade_md_entries_index = 1, no_md_entries do
    index, trade_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trade_md_entries.dissect(buffer, index, packet, parent, trade_md_entries_index)
  end

  return index
end

-- Dissect: Snapshot Data Of After Hour Trading Block Trade Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_block_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.snapshot_data_of_after_hour_trading_block_trade_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_block_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_block_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_block_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Sub Trading Phase Codes
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_codes = {}

-- Size: Sub Trading Phase Codes
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_codes.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_code.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_type.size

-- Display: Sub Trading Phase Codes
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_codes.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sub Trading Phase Codes
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_codes.fields = function(buffer, offset, packet, parent, sub_trading_phase_codes_index)
  local index = offset

  -- Implicit Sub Trading Phase Codes Index
  if sub_trading_phase_codes_index ~= nil and show.indexes then
    local iteration = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.sub_trading_phase_codes_index, sub_trading_phase_codes_index)
    iteration:set_generated()
  end

  -- Sub Trading Phase Code: Char[8]
  index, sub_trading_phase_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_code.dissect(buffer, index, packet, parent)

  -- Trading Type: uInt8
  index, trading_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sub Trading Phase Codes
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_codes.dissect = function(buffer, offset, packet, parent, sub_trading_phase_codes_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.sub_trading_phase_codes, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_codes.fields(buffer, offset, packet, parent, sub_trading_phase_codes_index)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_codes.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_codes.fields(buffer, offset, packet, parent, sub_trading_phase_codes_index)
  end
end

-- Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orders = {}

-- Size: Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orders.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.size

-- Display: Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orders.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orders.fields = function(buffer, offset, packet, parent, orders_index)
  local index = offset

  -- Implicit Orders Index
  if orders_index ~= nil and show.indexes then
    local iteration = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.orders_index, orders_index)
    iteration:set_generated()
  end

  -- Order Qty: Qty
  index, order_qty = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Orders
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orders.dissect = function(buffer, offset, packet, parent, orders_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.orders, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orders.fields(buffer, offset, packet, parent, orders_index)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orders.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orders.fields(buffer, offset, packet, parent, orders_index)
  end
end

-- Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries = {}

-- Calculate size of: Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries.size = function(buffer, offset)
  local index = 0

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_price_level.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.number_of_orders.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_orders.size

  -- Calculate field size from count
  local orders_count = buffer(offset + index - 4, 4):uint()
  index = index + orders_count * 8

  return index
end

-- Display: Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries.fields = function(buffer, offset, packet, parent, md_entries_index)
  local index = offset

  -- Implicit Md Entries Index
  if md_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_entries_index, md_entries_index)
    iteration:set_generated()
  end

  -- Md Entry Type: Char[2]
  index, md_entry_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Int64
  index, md_entry_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: Qty
  index, md_entry_size = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Price Level: uInt16
  index, md_price_level = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_price_level.dissect(buffer, index, packet, parent)

  -- Number Of Orders: Int64
  index, number_of_orders = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.number_of_orders.dissect(buffer, index, packet, parent)

  -- No Orders: NumInGroup
  index, no_orders = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_orders.dissect(buffer, index, packet, parent)

  -- Repeating: Orders
  for orders_index = 1, no_orders do
    index, orders = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orders.dissect(buffer, index, packet, parent, orders_index)
  end

  return index
end

-- Dissect: Md Entries
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries.dissect = function(buffer, offset, packet, parent, md_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_entries, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries.fields(buffer, offset, packet, parent, md_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries.fields(buffer, offset, packet, parent, md_entries_index)
  end
end

-- Snapshot Data Of Spot Bond Trading Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_spot_bond_trading_message = {}

-- Calculate size of: Snapshot Data Of Spot Bond Trading Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_spot_bond_trading_message.size = function(buffer, offset)
  local index = 0

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.size

  -- Calculate field size from count
  local md_entries_count = buffer(offset + index - 4, 4):uint()
  for i = 1, md_entries_count do
    index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries.size(buffer, offset + index)
  end
  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_sub_trading_phase_codes.size

  -- Calculate field size from count
  local sub_trading_phase_codes_count = buffer(offset + index - 4, 4):uint()
  index = index + sub_trading_phase_codes_count * 9

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_volume_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_value_trade.size

  return index
end

-- Display: Snapshot Data Of Spot Bond Trading Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_spot_bond_trading_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Data Of Spot Bond Trading Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_spot_bond_trading_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: Char[8]
  index, trading_phase_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Prev Close Px: Price
  index, prev_close_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Qty
  index, total_volume_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entries
  for md_entries_index = 1, no_md_entries do
    index, md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries.dissect(buffer, index, packet, parent, md_entries_index)
  end

  -- No Sub Trading Phase Codes: NumInGroup
  index, no_sub_trading_phase_codes = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_sub_trading_phase_codes.dissect(buffer, index, packet, parent)

  -- Repeating: Sub Trading Phase Codes
  for sub_trading_phase_codes_index = 1, no_sub_trading_phase_codes do
    index, sub_trading_phase_codes = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sub_trading_phase_codes.dissect(buffer, index, packet, parent, sub_trading_phase_codes_index)
  end

  -- Auction Volume Trade: Qty
  index, auction_volume_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_volume_trade.dissect(buffer, index, packet, parent)

  -- Auction Value Trade: Amt
  index, auction_value_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.auction_value_trade.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Data Of Spot Bond Trading Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_spot_bond_trading_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.snapshot_data_of_spot_bond_trading_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_spot_bond_trading_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_spot_bond_trading_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_spot_bond_trading_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Data Of Cash Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_cash_auction_message = {}

-- Calculate size of: Snapshot Data Of Cash Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_cash_auction_message.size = function(buffer, offset)
  local index = 0

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.size

  -- Calculate field size from count
  local md_entries_count = buffer(offset + index - 4, 4):uint()
  for i = 1, md_entries_count do
    index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries.size(buffer, offset + index)
  end
  return index
end

-- Display: Snapshot Data Of Cash Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_cash_auction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Data Of Cash Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_cash_auction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: Char[8]
  index, trading_phase_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.dissect(buffer, index, packet, parent)

  -- Prev Close Px: Price
  index, prev_close_px = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.prev_close_px.dissect(buffer, index, packet, parent)

  -- Num Trades: Int64
  index, num_trades = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.num_trades.dissect(buffer, index, packet, parent)

  -- Total Volume Trade: Qty
  index, total_volume_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_volume_trade.dissect(buffer, index, packet, parent)

  -- Total Value Trade: Amt
  index, total_value_trade = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.total_value_trade.dissect(buffer, index, packet, parent)

  -- No Md Entries: NumInGroup
  index, no_md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entries
  for md_entries_index = 1, no_md_entries do
    index, md_entries = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_entries.dissect(buffer, index, packet, parent, md_entries_index)
  end

  return index
end

-- Dissect: Snapshot Data Of Cash Auction Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_cash_auction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.snapshot_data_of_cash_auction_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_cash_auction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_cash_auction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_cash_auction_message.fields(buffer, offset, packet, parent)
  end
end

-- Announcements Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.announcements_message = {}

-- Calculate size of: Announcements Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.announcements_message.size = function(buffer, offset)
  local index = 0

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.news_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.headline.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_format.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_length.size

  -- Parse runtime size of: Raw Data
  index = index + buffer(offset + index - 4, 4):uint()

  return index
end

-- Display: Announcements Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.announcements_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Announcements Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.announcements_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- News Id: Char[8]
  index, news_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.news_id.dissect(buffer, index, packet, parent)

  -- Headline: char[128]
  index, headline = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.headline.dissect(buffer, index, packet, parent)

  -- Raw Data Format: Char[8]
  index, raw_data_format = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_format.dissect(buffer, index, packet, parent)

  -- Raw Data Length: Length
  index, raw_data_length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Raw Data
  index, raw_data = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.raw_data.dissect(buffer, index, packet, parent, raw_data_length)

  return index
end

-- Dissect: Announcements Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.announcements_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.announcements_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.announcements_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.announcements_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.announcements_message.fields(buffer, offset, packet, parent)
  end
end

-- Switch
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.switch = {}

-- Size: Switch
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.switch.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_status.size

-- Display: Switch
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.switch.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Switch
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.switch.fields = function(buffer, offset, packet, parent, switch_index)
  local index = offset

  -- Implicit Switch Index
  if switch_index ~= nil and show.indexes then
    local iteration = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.switch_index, switch_index)
    iteration:set_generated()
  end

  -- Security Switch Type: uInt16
  index, security_switch_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_type.dissect(buffer, index, packet, parent)

  -- Security Switch Status: Boolean
  index, security_switch_status = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_switch_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Switch
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.switch.dissect = function(buffer, offset, packet, parent, switch_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.switch, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.switch.fields(buffer, offset, packet, parent, switch_index)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.switch.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.switch.fields(buffer, offset, packet, parent, switch_index)
  end
end

-- Real Time Status Of Security Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_status_of_security_message = {}

-- Calculate size of: Real Time Status Of Security Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_status_of_security_message.size = function(buffer, offset)
  local index = 0

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.financial_status.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_switch.size

  -- Calculate field size from count
  local switch_count = buffer(offset + index - 4, 4):uint()
  index = index + switch_count * 4

  return index
end

-- Display: Real Time Status Of Security Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_status_of_security_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Real Time Status Of Security Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_status_of_security_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Security Id: SecurityID
  index, security_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id.dissect(buffer, index, packet, parent)

  -- Security Id Source: Char[4]
  index, security_id_source = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.security_id_source.dissect(buffer, index, packet, parent)

  -- Financial Status: C8
  index, financial_status = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.financial_status.dissect(buffer, index, packet, parent)

  -- No Switch: NumInGroup
  index, no_switch = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_switch.dissect(buffer, index, packet, parent)

  -- Repeating: Switch
  for switch_index = 1, no_switch do
    index, switch = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.switch.dissect(buffer, index, packet, parent, switch_index)
  end

  return index
end

-- Dissect: Real Time Status Of Security Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_status_of_security_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.real_time_status_of_security_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_status_of_security_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_status_of_security_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_status_of_security_message.fields(buffer, offset, packet, parent)
  end
end

-- Real Time Market Status Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_market_status_message = {}

-- Size: Real Time Market Status Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_market_status_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_segment_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_sub_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_status.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_start_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_end_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.thredhold_amount.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.pos_amt.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.amounts_status.size

-- Display: Real Time Market Status Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Real Time Market Status Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Market Id: Char[8]
  index, market_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: Char[8]
  index, market_segment_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: Char[4]
  index, trading_session_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_id.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: Char[4]
  index, trading_session_sub_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: uInt16
  index, trad_ses_status = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Trad Ses Start Time: LocalTimeStamp
  index, trad_ses_start_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_start_time.dissect(buffer, index, packet, parent)

  -- Trad Ses End Time: LocalTimeStamp
  index, trad_ses_end_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trad_ses_end_time.dissect(buffer, index, packet, parent)

  -- Thredhold Amount: Amt
  index, thredhold_amount = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.thredhold_amount.dissect(buffer, index, packet, parent)

  -- Pos Amt: Amt
  index, pos_amt = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.pos_amt.dissect(buffer, index, packet, parent)

  -- Amounts Status: char
  index, amounts_status = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.amounts_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Real Time Market Status Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.real_time_market_status_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Reject Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_message = {}

-- Size: Business Reject Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_msg_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_ref_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_reason.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_text.size

-- Display: Business Reject Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Reject Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ref Seq Num: SeqNum
  index, ref_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_seq_num.dissect(buffer, index, packet, parent)

  -- Ref Msg Type: uInt32
  index, ref_msg_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.ref_msg_type.dissect(buffer, index, packet, parent)

  -- Business Reject Ref Id: Char[10]
  index, business_reject_ref_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_ref_id.dissect(buffer, index, packet, parent)

  -- Business Reject Reason: uInt16
  index, business_reject_reason = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_reason.dissect(buffer, index, packet, parent)

  -- Business Reject Text: Char[50]
  index, business_reject_text = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Reject Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.business_reject_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Stream I Ds
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_i_ds = {}

-- Size: Md Stream I Ds
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_i_ds.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.stock_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.size

-- Display: Md Stream I Ds
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_i_ds.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Stream I Ds
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_i_ds.fields = function(buffer, offset, packet, parent, md_stream_i_ds_index)
  local index = offset

  -- Implicit Md Stream I Ds Index
  if md_stream_i_ds_index ~= nil and show.indexes then
    local iteration = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_stream_i_ds_index, md_stream_i_ds_index)
    iteration:set_generated()
  end

  -- Md Stream Id: Char[3]
  index, md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_id.dissect(buffer, index, packet, parent)

  -- Stock Num: uInt32
  index, stock_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.stock_num.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: Char[8]
  index, trading_phase_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.trading_phase_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Stream I Ds
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_i_ds.dissect = function(buffer, offset, packet, parent, md_stream_i_ds_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.md_stream_i_ds, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_i_ds.fields(buffer, offset, packet, parent, md_stream_i_ds_index)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_i_ds.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_i_ds.fields(buffer, offset, packet, parent, md_stream_i_ds_index)
  end
end

-- Statistics Of Snapshot Data Channel Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistics_of_snapshot_data_channel_message = {}

-- Calculate size of: Statistics Of Snapshot Data Channel Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistics_of_snapshot_data_channel_message.size = function(buffer, offset)
  local index = 0

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size

  index = index + szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_stream_id.size

  -- Calculate field size from count
  local md_stream_i_ds_count = buffer(offset + index - 4, 4):uint()
  index = index + md_stream_i_ds_count * 15

  return index
end

-- Display: Statistics Of Snapshot Data Channel Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistics_of_snapshot_data_channel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Of Snapshot Data Channel Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistics_of_snapshot_data_channel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- No Md Stream Id: NumInGroup
  index, no_md_stream_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.no_md_stream_id.dissect(buffer, index, packet, parent)

  -- Repeating: Md Stream I Ds
  for md_stream_i_ds_index = 1, no_md_stream_id do
    index, md_stream_i_ds = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.md_stream_i_ds.dissect(buffer, index, packet, parent, md_stream_i_ds_index)
  end

  return index
end

-- Dissect: Statistics Of Snapshot Data Channel Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistics_of_snapshot_data_channel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.statistics_of_snapshot_data_channel_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistics_of_snapshot_data_channel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistics_of_snapshot_data_channel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistics_of_snapshot_data_channel_message.fields(buffer, offset, packet, parent)
  end
end

-- Client User Information Reporting Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.client_user_information_reporting_message = {}

-- Size: Client User Information Reporting Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.client_user_information_reporting_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.version_code.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.user_num.size

-- Display: Client User Information Reporting Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.client_user_information_reporting_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client User Information Reporting Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.client_user_information_reporting_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Time: LocalTimestamp
  index, orig_time = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.orig_time.dissect(buffer, index, packet, parent)

  -- Version Code: Char[16]
  index, version_code = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.version_code.dissect(buffer, index, packet, parent)

  -- User Num: uInt16
  index, user_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.user_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client User Information Reporting Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.client_user_information_reporting_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.client_user_information_reporting_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.client_user_information_reporting_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.client_user_information_reporting_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.client_user_information_reporting_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmitting Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.retransmitting_message = {}

-- Size: Retransmitting Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.retransmitting_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_beg_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_end_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.news_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_status.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.reject_text.size

-- Display: Retransmitting Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.retransmitting_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmitting Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.retransmitting_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Resend Type: uInt8
  index, resend_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_type.dissect(buffer, index, packet, parent)

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Beg Seq Num: SeqNum
  index, appl_beg_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_beg_seq_num.dissect(buffer, index, packet, parent)

  -- Appl End Seq Num: SeqNum
  index, appl_end_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_end_seq_num.dissect(buffer, index, packet, parent)

  -- News Id: Char[8]
  index, news_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.news_id.dissect(buffer, index, packet, parent)

  -- Resend Status: uInt8
  index, resend_status = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.resend_status.dissect(buffer, index, packet, parent)

  -- Reject Text: Char[16]
  index, reject_text = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.reject_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmitting Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.retransmitting_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.retransmitting_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.retransmitting_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.retransmitting_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.retransmitting_message.fields(buffer, offset, packet, parent)
  end
end

-- Channel Heartbeat Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_heartbeat_message = {}

-- Size: Channel Heartbeat Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_heartbeat_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_last_seq_num.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.end_of_channel.size

-- Display: Channel Heartbeat Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Heartbeat Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel No: uInt16
  index, channel_no = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_no.dissect(buffer, index, packet, parent)

  -- Appl Last Seq Num: SeqNum
  index, appl_last_seq_num = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.appl_last_seq_num.dissect(buffer, index, packet, parent)

  -- End Of Channel: Boolean
  index, end_of_channel = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.end_of_channel.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Heartbeat Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.channel_heartbeat_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heartbeat_message = {}

-- Display: Heartbeat Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logout_message = {}

-- Size: Logout Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logout_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.session_status.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.text.size

-- Display: Logout Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Status: Int32
  index, session_status = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.session_status.dissect(buffer, index, packet, parent)

  -- Text: Char[200]
  index, text = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.logout_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logon_message = {}

-- Size: Logon Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logon_message.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sender_comp_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.target_comp_id.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heart_bt_int.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.password.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.default_appl_ver_id.size

-- Display: Logon Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sender Comp Id: CompID
  index, sender_comp_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.sender_comp_id.dissect(buffer, index, packet, parent)

  -- Target Comp Id: CompID
  index, target_comp_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.target_comp_id.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: Int32
  index, heart_bt_int = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Password: Char[16]
  index, password = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.password.dissect(buffer, index, packet, parent)

  -- Default Appl Ver Id: Char[32]
  index, default_appl_ver_id = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.default_appl_ver_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.logon_message, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.payload = {}

-- Dissect: Payload
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.payload.dispatch = {
  [1] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logon_message.dissect,
  [2] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.logout_message.dissect,
  [3] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.heartbeat_message.dissect,
  [390095] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.channel_heartbeat_message.dissect,
  [390094] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.retransmitting_message.dissect,
  [390093] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.client_user_information_reporting_message.dissect,
  [390090] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistics_of_snapshot_data_channel_message.dissect,
  [8] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.business_reject_message.dissect,
  [390019] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_market_status_message.dissect,
  [390013] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_status_of_security_message.dissect,
  [390012] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.announcements_message.dissect,
  [300111] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_cash_auction_message.dissect,
  [300211] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_spot_bond_trading_message.dissect,
  [300611] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_block_trade_message.dissect,
  [303711] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_after_hour_trading_message.dissect,
  [306311] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.snapshot_data_of_eligible_hk_stocks_message.dissect,
  [309011] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.index_snapshot_message.dissect,
  [309111] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.statistic_indicator_snapshot_message.dissect,
  [309211] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.real_time_reference_net_value_of_funds_snapshot_message.dissect,
  [300192] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_in_call_auction_message.dissect,
  [300592] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_negotiable_trade_message.dissect,
  [300792] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_security_lending_message.dissect,
  [300292] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_matching_deal_message.dissect,
  [300392] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_spot_bond_trading_quotation_message.dissect,
  [300492] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.order_tick_data_of_bid_quotation_message.dissect,
  [300191] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_in_call_auction_message.dissect,
  [300591] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_negotiable_trade_message.dissect,
  [300791] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_security_lending_message.dissect,
  [300291] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bond_general_pledged_repo_message.dissect,
  [300391] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_spot_bond_trading_quotation_message.dissect,
  [300491] = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.transaction_tick_data_of_bid_quotation_message.dissect,
}

szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_header = {}

-- Size: Message Header
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_header.size =
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.msg_type.size + 
  szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.body_length.size

-- Display: Message Header
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: uInt32
  index, msg_type = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.msg_type.dissect(buffer, index, packet, parent)

  -- Body Length: uInt32
  index, body_length = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.body_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.fields.message_header, buffer(offset, 0))
    local index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message = {}

-- Verify required size of Tcp packet
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message.requiredsize = function(buffer)
  return buffer:len() >= szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_header.size
end

-- Dissect Message
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 2 fields
  index, message_header = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 8, 4):uint()

  -- Payload: Runtime Type with 31 branches
  index = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.payload.dissect(buffer, index, packet, parent, msg_type)

  -- Message Tail: Struct of 1 fields
  index, message_tail = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message_tail.dissect(buffer, index, packet, parent)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.init()
end

-- Dissector for Szse SzseSecurities TcpMarketData SzseBinary 1.17
function omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.name

  local length = buffer:len()
  local offset = 0

  -- Dissect each message the segment carries
  while offset < length do
    local protocol = parent:add(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17, buffer(offset), omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.description, "("..(length - offset).." Bytes)")
    local consumed = szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message.dissect(buffer(offset):tvb(), packet, protocol)

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
szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message.fingerprint = function(buffer)
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
  if msg_type == 390095 then
    return true
  end

  -- Retransmitting Message
  if msg_type == 390094 then
    return true
  end

  -- Client User Information Reporting Message
  if msg_type == 390093 then
    return true
  end

  -- Statistics Of Snapshot Data Channel Message
  if msg_type == 390090 then
    return true
  end

  -- Business Reject Message
  if msg_type == 8 then
    return true
  end

  -- Real Time Market Status Message
  if msg_type == 390019 then
    return true
  end

  -- Real Time Status Of Security Message
  if msg_type == 390013 then
    return true
  end

  -- Announcements Message
  if msg_type == 390012 then
    return true
  end

  -- Snapshot Data Of Cash Auction Message
  if msg_type == 300111 then
    return true
  end

  -- Snapshot Data Of Spot Bond Trading Message
  if msg_type == 300211 then
    return true
  end

  -- Snapshot Data Of After Hour Trading Block Trade Message
  if msg_type == 300611 then
    return true
  end

  -- Snapshot Data Of After Hour Trading Message
  if msg_type == 303711 then
    return true
  end

  -- Snapshot Data Of Eligible Hk Stocks Message
  if msg_type == 306311 then
    return true
  end

  -- Index Snapshot Message
  if msg_type == 309011 then
    return true
  end

  -- Statistic Indicator Snapshot Message
  if msg_type == 309111 then
    return true
  end

  -- Real Time Reference Net Value Of Funds Snapshot Message
  if msg_type == 309211 then
    return true
  end

  -- Order Tick Data In Call Auction Message
  if msg_type == 300192 then
    return true
  end

  -- Order Tick Data Of Negotiable Trade Message
  if msg_type == 300592 then
    return true
  end

  -- Order Tick Data Of Security Lending Message
  if msg_type == 300792 then
    return true
  end

  -- Order Tick Data Of Spot Bond Trading Matching Deal Message
  if msg_type == 300292 then
    return true
  end

  -- Order Tick Data Of Spot Bond Trading Quotation Message
  if msg_type == 300392 then
    return true
  end

  -- Order Tick Data Of Bid Quotation Message
  if msg_type == 300492 then
    return true
  end

  -- Transaction Tick Data In Call Auction Message
  if msg_type == 300191 then
    return true
  end

  -- Transaction Tick Data Of Negotiable Trade Message
  if msg_type == 300591 then
    return true
  end

  -- Transaction Tick Data Of Security Lending Message
  if msg_type == 300791 then
    return true
  end

  -- Transaction Tick Data Of Bond General Pledged Repo Message
  if msg_type == 300291 then
    return true
  end

  -- Transaction Tick Data Of Spot Bond Trading Quotation Message
  if msg_type == 300391 then
    return true
  end

  -- Transaction Tick Data Of Bid Quotation Message
  if msg_type == 300491 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Szse SzseSecurities TcpMarketData SzseBinary 1.17 (Tcp)
local function omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp message message dispatch
  if not szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.message.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17
  omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Szse SzseSecurities TcpMarketData SzseBinary 1.17
omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17:register_heuristic("tcp", omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17_tcp_heuristic)

-- Register Szse SzseSecurities TcpMarketData SzseBinary 1.17 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_szse_szsesecurities_tcpmarketdata_szsebinary_v1_17)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Shenzhen Stock Exchange
--   Version: 1.17
--   Date: Tuesday, April 1, 2025
--   Specification: SZSE Interface Specification of BINARY Market Data Feed (Ver1.17).pdf
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
