-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Sse SseSecurities Mdgw Is120 0.63 Protocol
local omi_sse_ssesecurities_mdgw_is120_v0_63 = Proto("Omi.Sse.SseSecurities.Mdgw.Is120.v0.63", "Sse SseSecurities Mdgw Is120 0.63")

-- Protocol table
local sse_ssesecurities_mdgw_is120_v0_63 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Sse SseSecurities Mdgw Is120 0.63 Fields
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.applbegseqnum = ProtoField.new("ApplBegSeqNum", "sse.ssesecurities.mdgw.is120.v0.63.applbegseqnum", ftypes.UINT64, nil, nil, nil, "Retransmission start message record number. The value is greater than 0.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.applendseqnum = ProtoField.new("ApplEndSeqNum", "sse.ssesecurities.mdgw.is120.v0.63.applendseqnum", ftypes.UINT64, nil, nil, nil, "Retransmission end message record number. When the value is 0, the exchange sets this field to the largest message record number published on this channel; in a reply, the value is the largest message record number actually transmitted.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.appllastseqnum = ProtoField.new("ApplLastSeqNum", "sse.ssesecurities.mdgw.is120.v0.63.appllastseqnum", ftypes.UINT64, nil, nil, nil, "Largest message record number published on this channel")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.applseqnum = ProtoField.new("ApplSeqNum", "sse.ssesecurities.mdgw.is120.v0.63.applseqnum", ftypes.UINT64, nil, nil, nil, "Message record number, counted from 1")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.applverid = ProtoField.new("ApplVerID", "sse.ssesecurities.mdgw.is120.v0.63.applverid", ftypes.STRING, nil, nil, nil, "Protocol version, in the format mm.nn, where mm is the major version number and nn is the minor version number, for example 0.30, 12.22")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.basketid = ProtoField.new("BasketID", "sse.ssesecurities.mdgw.is120.v0.63.basketid", ftypes.STRING, nil, nil, nil, "Basket information. Positions from the left stand for basket 1 to basket N. For example, to specify baskets 1, 2 and 5, fill in \"1100100000000000\".")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.bidapplseqnum = ProtoField.new("BidApplSeqNum", "sse.ssesecurities.mdgw.is120.v0.63.bidapplseqnum", ftypes.STRING, nil, nil, nil, "Buyer order number (QuoteID). Blank when there is no corresponding order.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.bidexecinsttype = ProtoField.new("BidExecInstType", "sse.ssesecurities.mdgw.is120.v0.63.bidexecinsttype", ftypes.UINT8, nil, nil, nil, "Competitive bidding declaration method")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.bidtranstype = ProtoField.new("BidTransType", "sse.ssesecurities.mdgw.is120.v0.63.bidtranstype", ftypes.UINT8, nil, nil, nil, "Competitive bidding declaration category")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.bodylength = ProtoField.new("BodyLength", "sse.ssesecurities.mdgw.is120.v0.63.bodylength", ftypes.UINT32, nil, nil, nil, "Message body length")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.channel_heartbeat_channelno = ProtoField.new("Channel Heartbeat ChannelNO", "sse.ssesecurities.mdgw.is120.v0.63.channelheartbeatchannelno", ftypes.UINT16, nil, nil, nil, "Channel number")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.channel_heartbeat_securitytype = ProtoField.new("Channel Heartbeat SecurityType", "sse.ssesecurities.mdgw.is120.v0.63.channelheartbeatsecuritytype", ftypes.UINT8, nil, nil, nil, "Security type")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.checksum = ProtoField.new("CheckSum", "sse.ssesecurities.mdgw.is120.v0.63.checksum", ftypes.UINT32)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.contractmultiplier = ProtoField.new("ContractMultiplier", "sse.ssesecurities.mdgw.is120.v0.63.contractmultiplier", ftypes.DOUBLE, nil, nil, nil, "Conversion ratio (%); 0 if the initiator did not fill in this field")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.endofchannel = ProtoField.new("EndOfChannel", "sse.ssesecurities.mdgw.is120.v0.63.endofchannel", ftypes.STRING, nil, nil, nil, "Channel end flag")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.exectype = ProtoField.new("ExecType", "sse.ssesecurities.mdgw.is120.v0.63.exectype", ftypes.STRING, nil, nil, nil, "Type")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.expirationdays = ProtoField.new("ExpirationDays", "sse.ssesecurities.mdgw.is120.v0.63.expirationdays", ftypes.UINT16, nil, nil, nil, "Term (days); 0 if the initiator did not fill in this field")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.expiredate = ProtoField.new("ExpireDate", "sse.ssesecurities.mdgw.is120.v0.63.expiredate", ftypes.UINT32, nil, nil, nil, "Competitive bidding date: YYYYMMDD")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.fullamounttrade = ProtoField.new("FullAmountTrade", "sse.ssesecurities.mdgw.is120.v0.63.fullamounttrade", ftypes.UINT8, nil, nil, nil, "Whether the trade is for the full amount")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.heartbtint = ProtoField.new("HeartBtInt", "sse.ssesecurities.mdgw.is120.v0.63.heartbtint", ftypes.UINT16, nil, nil, nil, "Heartbeat interval, in seconds")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.index_market_data_snapshot_entries = ProtoField.new("Index Market Data Snapshot Entries", "sse.ssesecurities.mdgw.is120.v0.63.indexmarketdatasnapshotentries", ftypes.STRING)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.index_market_data_snapshot_entries_mdentrypx = ProtoField.new("Index Market Data Snapshot Entries MDEntryPx", "sse.ssesecurities.mdgw.is120.v0.63.indexmarketdatasnapshotentriesmdentrypx", ftypes.DOUBLE, nil, nil, nil, "Index value")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.index_market_data_snapshot_entries_mdentrytype = ProtoField.new("Index Market Data Snapshot Entries MDEntryType", "sse.ssesecurities.mdgw.is120.v0.63.indexmarketdatasnapshotentriesmdentrytype", ftypes.STRING, nil, nil, nil, "Market data entry type")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.index_market_data_snapshot_extension_fields = ProtoField.new("Index Market Data Snapshot Extension Fields", "sse.ssesecurities.mdgw.is120.v0.63.indexmarketdatasnapshotextensionfields", ftypes.STRING)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.investorname = ProtoField.new("InvestorName", "sse.ssesecurities.mdgw.is120.v0.63.investorname", ftypes.STRING, nil, nil, nil, "Investor name")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.lastupdatetime = ProtoField.new("LastUpdateTime", "sse.ssesecurities.mdgw.is120.v0.63.lastupdatetime", ftypes.UINT32, nil, nil, nil, "Last update time HHMMSSsss")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.marginprice = ProtoField.new("MarginPrice", "sse.ssesecurities.mdgw.is120.v0.63.marginprice", ftypes.DOUBLE, nil, nil, nil, "Marginal price. Applies only to competitive bidding trades with multiple entities.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_entries = ProtoField.new("Market Data Snapshot Entries", "sse.ssesecurities.mdgw.is120.v0.63.marketdatasnapshotentries", ftypes.STRING)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_entries_mdentrypx = ProtoField.new("Market Data Snapshot Entries MDEntryPx", "sse.ssesecurities.mdgw.is120.v0.63.marketdatasnapshotentriesmdentrypx", ftypes.DOUBLE, nil, nil, nil, "Price")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_entries_mdentrytype = ProtoField.new("Market Data Snapshot Entries MDEntryType", "sse.ssesecurities.mdgw.is120.v0.63.marketdatasnapshotentriesmdentrytype", ftypes.STRING, nil, nil, nil, "Market data entry type")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_extension_fields = ProtoField.new("Market Data Snapshot Extension Fields", "sse.ssesecurities.mdgw.is120.v0.63.marketdatasnapshotextensionfields", ftypes.STRING)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_message_securitytype = ProtoField.new("Market Data Snapshot Message SecurityType", "sse.ssesecurities.mdgw.is120.v0.63.marketdatasnapshotmessagesecuritytype", ftypes.UINT8, nil, nil, nil, "Security type")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_message_totalvaluetraded = ProtoField.new("Market Data Snapshot Message TotalValueTraded", "sse.ssesecurities.mdgw.is120.v0.63.marketdatasnapshotmessagetotalvaluetraded", ftypes.DOUBLE, nil, nil, nil, "Trade value")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_status_message_securitytype = ProtoField.new("Market Status Message SecurityType", "sse.ssesecurities.mdgw.is120.v0.63.marketstatusmessagesecuritytype", ftypes.UINT8, nil, nil, nil, "Security type")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.mdentrypositionno = ProtoField.new("MDEntryPositionNo", "sse.ssesecurities.mdgw.is120.v0.63.mdentrypositionno", ftypes.UINT8, nil, nil, nil, "Bid or ask level number, giving the level of the five levels of bid and ask prices and quantities")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.mdentrysize = ProtoField.new("MDEntrySize", "sse.ssesecurities.mdgw.is120.v0.63.mdentrysize", ftypes.UINT64, nil, nil, nil, "Quantity")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.mdstreamid = ProtoField.new("MDStreamID", "sse.ssesecurities.mdgw.is120.v0.63.mdstreamid", ftypes.STRING, nil, nil, nil, "Market data category")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.memberid = ProtoField.new("MemberID", "sse.ssesecurities.mdgw.is120.v0.63.memberid", ftypes.STRING, nil, nil, nil, "Institution code of the quoting party's trading participant. Blank if the initiator chooses to be anonymous.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.minqty = ProtoField.new("MinQty", "sse.ssesecurities.mdgw.is120.v0.63.minqty", ftypes.UINT64, nil, nil, nil, "Minimum trade quantity, reserved")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.msgseqnum = ProtoField.new("MsgSeqNum", "sse.ssesecurities.mdgw.is120.v0.63.msgseqnum", ftypes.UINT64, nil, nil, nil, "Message sequence number")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.msgtype = ProtoField.new("MsgType", "sse.ssesecurities.mdgw.is120.v0.63.msgtype", ftypes.STRING, nil, nil, nil, "Message type")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.nomdentries = ProtoField.new("NoMDEntries", "sse.ssesecurities.mdgw.is120.v0.63.nomdentries", ftypes.UINT16, nil, nil, nil, "Number of market data entries")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.numtrades = ProtoField.new("NumTrades", "sse.ssesecurities.mdgw.is120.v0.63.numtrades", ftypes.UINT64, nil, nil, nil, "Number of trades")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.offerapplseqnum = ProtoField.new("OfferApplSeqNum", "sse.ssesecurities.mdgw.is120.v0.63.offerapplseqnum", ftypes.STRING, nil, nil, nil, "Seller order number (QuoteID). Blank when there is no corresponding order.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.orderqty = ProtoField.new("OrderQty", "sse.ssesecurities.mdgw.is120.v0.63.orderqty", ftypes.DOUBLE, nil, nil, nil, "For a tick-by-tick order, the order quantity; it is 0 when an intention declaration does not fill in a quantity or when an order is deleted. For a tick-by-tick trade, the trade quantity.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.preclosepx = ProtoField.new("PreClosePx", "sse.ssesecurities.mdgw.is120.v0.63.preclosepx", ftypes.DOUBLE, nil, nil, nil, "Previous close")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.price = ProtoField.new("Price", "sse.ssesecurities.mdgw.is120.v0.63.price", ftypes.DOUBLE, nil, nil, nil, "For a tick-by-tick order, the order price; it is 0 when an intention declaration does not fill in a price or when an order is deleted. For a tick-by-tick trade, the trade price.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.quoteid = ProtoField.new("QuoteID", "sse.ssesecurities.mdgw.is120.v0.63.quoteid", ftypes.STRING, nil, nil, nil, "Order number; for an order deletion, the order number of the deleted order")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.rejecttext = ProtoField.new("RejectText", "sse.ssesecurities.mdgw.is120.v0.63.rejecttext", ftypes.STRING, nil, nil, nil, "Valid only in retransmission reply messages. Gives the reason the retransmission was rejected (if any).")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.resendstatus = ProtoField.new("ResendStatus", "sse.ssesecurities.mdgw.is120.v0.63.resendstatus", ftypes.UINT8, nil, nil, nil, "Valid only in retransmission reply messages.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.resendtype = ProtoField.new("ResendType", "sse.ssesecurities.mdgw.is120.v0.63.resendtype", ftypes.UINT8, nil, nil, nil, "Retransmission category")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.retransmission_message_channelno = ProtoField.new("Retransmission Message ChannelNO", "sse.ssesecurities.mdgw.is120.v0.63.retransmissionmessagechannelno", ftypes.UINT16, nil, nil, nil, "Channel number")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.secondaryorderid = ProtoField.new("SecondaryOrderID", "sse.ssesecurities.mdgw.is120.v0.63.secondaryorderid", ftypes.STRING, nil, nil, nil, "Order number that the response price declaration corresponds to (that is, the competitive bidding declaration number)")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.securityid = ProtoField.new("SecurityID", "sse.ssesecurities.mdgw.is120.v0.63.securityid", ftypes.STRING, nil, nil, nil, "Product code")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.sendercompid = ProtoField.new("SenderCompID", "sse.ssesecurities.mdgw.is120.v0.63.sendercompid", ftypes.STRING, nil, nil, nil, "Sender code")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.sendingtime = ProtoField.new("SendingTime", "sse.ssesecurities.mdgw.is120.v0.63.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Sending time, format: YYYYMMDDHHmmSSsss")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.sendingtime_utc = ProtoField.new("SendingTime", "sse.ssesecurities.mdgw.is120.v0.63.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Sending time, format: YYYYMMDDHHmmSSsss")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.sessionstatus = ProtoField.new("SessionStatus", "sse.ssesecurities.mdgw.is120.v0.63.sessionstatus", ftypes.UINT32, nil, nil, nil, "Session status at logout. 1–999 = Logout in general circumstances, reconnecting can recover; 1000–9999 = Logout in serious circumstances, switching servers is recommended.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.settltype = ProtoField.new("SettlType", "sse.ssesecurities.mdgw.is120.v0.63.settltype", ftypes.UINT8, nil, nil, nil, "Settlement method")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.side = ProtoField.new("Side", "sse.ssesecurities.mdgw.is120.v0.63.side", ftypes.STRING)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.standard_header = ProtoField.new("Standard Header", "sse.ssesecurities.mdgw.is120.v0.63.standardheader", ftypes.STRING)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.standard_trailer = ProtoField.new("Standard Trailer", "sse.ssesecurities.mdgw.is120.v0.63.standardtrailer", ftypes.STRING, nil, nil, nil, "The checksum is calculated from the start of the message header (header included) to the end of the message body. See Appendix 1 \"Calculating the checksum\" for sample code.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.symbol = ProtoField.new("Symbol", "sse.ssesecurities.mdgw.is120.v0.63.symbol", ftypes.STRING, nil, nil, nil, "Product short name")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.targetcompid = ProtoField.new("TargetCompID", "sse.ssesecurities.mdgw.is120.v0.63.targetcompid", ftypes.STRING, nil, nil, nil, "Receiver code")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.text = ProtoField.new("Text", "sse.ssesecurities.mdgw.is120.v0.63.text", ftypes.STRING)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_market_data_message_channelno = ProtoField.new("Tick-by-Tick Market Data Message ChannelNO", "sse.ssesecurities.mdgw.is120.v0.63.tickbytickmarketdatamessagechannelno", ftypes.UINT16, nil, nil, nil, "Channel number")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_market_data_message_securitytype = ProtoField.new("Tick-by-Tick Market Data Message SecurityType", "sse.ssesecurities.mdgw.is120.v0.63.tickbytickmarketdatamessagesecuritytype", ftypes.UINT8, nil, nil, nil, "Security type")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_order_market_data_extension_fields = ProtoField.new("Tick-by-Tick Order Market Data Extension Fields", "sse.ssesecurities.mdgw.is120.v0.63.tickbytickordermarketdataextensionfields", ftypes.STRING)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_order_market_data_extension_fields_totalvaluetraded = ProtoField.new("Tick-by-Tick Order Market Data Extension Fields TotalValueTraded", "sse.ssesecurities.mdgw.is120.v0.63.tickbytickordermarketdataextensionfieldstotalvaluetraded", ftypes.DOUBLE, nil, nil, nil, "Trade value; 0 if the initiator did not fill in this field")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_trade_market_data_extension_fields = ProtoField.new("Tick-by-Tick Trade Market Data Extension Fields", "sse.ssesecurities.mdgw.is120.v0.63.tickbyticktrademarketdataextensionfields", ftypes.STRING)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_trade_market_data_extension_fields_totalvaluetraded = ProtoField.new("Tick-by-Tick Trade Market Data Extension Fields TotalValueTraded", "sse.ssesecurities.mdgw.is120.v0.63.tickbyticktrademarketdataextensionfieldstotalvaluetraded", ftypes.DOUBLE, nil, nil, nil, "Trade value")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.totalvolumetraded = ProtoField.new("TotalVolumeTraded", "sse.ssesecurities.mdgw.is120.v0.63.totalvolumetraded", ftypes.UINT64, nil, nil, nil, "Trade volume")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.totnorelatedsym = ProtoField.new("TotNoRelatedSym", "sse.ssesecurities.mdgw.is120.v0.63.totnorelatedsym", ftypes.UINT32, nil, nil, nil, "Maximum number of products (including indices)")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tradedate = ProtoField.new("TradeDate", "sse.ssesecurities.mdgw.is120.v0.63.tradedate", ftypes.UINT32, nil, nil, nil, "Trade date YYYYMMDD")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.trademethod = ProtoField.new("TradeMethod", "sse.ssesecurities.mdgw.is120.v0.63.trademethod", ftypes.UINT8, nil, nil, nil, "Trade method")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tradercode = ProtoField.new("TraderCode", "sse.ssesecurities.mdgw.is120.v0.63.tradercode", ftypes.STRING, nil, nil, nil, "Quoting trader's Yizhaitong account. Blank if the initiator chooses to be anonymous.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tradingphasecode = ProtoField.new("TradingPhaseCode", "sse.ssesecurities.mdgw.is120.v0.63.tradingphasecode", ftypes.STRING, nil, nil, nil, "Real-time phase and flags")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tradingsessionid = ProtoField.new("TradingSessionID", "sse.ssesecurities.mdgw.is120.v0.63.tradingsessionid", ftypes.STRING, nil, nil, nil, "Market data status: this field is an 8-character string; each position, counted from the left, has a specific meaning; a position with no definition is filled with a space.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tradsesmode = ProtoField.new("TradSesMode", "sse.ssesecurities.mdgw.is120.v0.63.tradsesmode", ftypes.UINT8, nil, nil, nil, "Trading session mode")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.transacttime = ProtoField.new("TransactTime", "sse.ssesecurities.mdgw.is120.v0.63.transacttime", ftypes.UINT32, nil, nil, nil, "Time the order or trade market data was generated: HHMMSSsss")

-- Sse SseSecurities Mdgw Is120 0.63 Framing
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.binary_message = ProtoField.new("Binary Message", "sse.ssesecurities.mdgw.is120.v0.63.binarymessage", ftypes.STRING)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.packet = ProtoField.new("Packet", "sse.ssesecurities.mdgw.is120.v0.63.packet", ftypes.STRING, nil, nil, nil, "BINARY messages")

-- Sse SseSecurities Mdgw 0.63 Public Messages
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.channel_heartbeat = ProtoField.new("Channel Heartbeat", "sse.ssesecurities.mdgw.is120.v0.63.channelheartbeat", ftypes.STRING, nil, nil, nil, "Tick-by-tick market data supports sending a heartbeat every 3 seconds during idle periods of data sending. If data sending stays busy, the channel heartbeat interval can exceed 3s.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.retransmission_message = ProtoField.new("Retransmission Message", "sse.ssesecurities.mdgw.is120.v0.63.retransmissionmessage", ftypes.STRING, nil, nil, nil, "The retransmission message is used to request market data on a channel that supports retransmission. For application messages that can be retransmitted (all types of tick-by-tick market data messages), if application messages are missing, the user can send a retransmission message upstream, which represents a retransmission request. The upstream handles retransmission requests in a \"request–reply\" manner: it returns the data to be retransmitted according to the start and end sequence numbers specified in the retransmission message, and after the retransmission is complete it returns a retransmission message reporting that the retransmission is complete; if the retransmission fails, it returns a retransmission message reporting that the retransmission failed. The upstream system supports retransmission of only one message gap at a time; when the upstream receives multiple retransmission requests, it returns a retransmission failure for the other request messages. For tick-by-tick market data, the channel code and the message record number can be used to determine whether messages have been lost. When the message record number received is <= the largest message record number already received on this channel, the message has already been received and should be ignored. When the message record number received is > the largest message record number already received +1 (for example, the largest message record number received is 100 and the new message record number is 102), messages have been lost, and the lost data should be recovered by sending a retransmission request.")

-- Sse SseSecurities Mdgw 0.63 Session Messages
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "sse.ssesecurities.mdgw.is120.v0.63.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "The heartbeat message is used to monitor the state of the communication connection. When either side of the connection has not received or sent any data within the heartbeat interval (given by the HeartBtInt field), it must generate a heartbeat message and send it. If the receiver receives no message within twice the heartbeat interval, it can consider the market data session abnormal and can close the TCP connection immediately.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.logon_message = ProtoField.new("Logon Message", "sse.ssesecurities.mdgw.is120.v0.63.logonmessage", ftypes.STRING, nil, nil, nil, "The client must send this message first when starting a market data session.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.logout_message = ProtoField.new("Logout Message", "sse.ssesecurities.mdgw.is120.v0.63.logoutmessage", ftypes.STRING, nil, nil, nil, "The logout message starts or confirms the end of a market data session. A disconnection without an exchange of logout messages is treated as an abnormal disconnection. After sending a logout message, neither side of the connection should send any further message.")

-- Sse SseSecurities Mdgw 0.63 Application Messages
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_message = ProtoField.new("Market Data Snapshot Message", "sse.ssesecurities.mdgw.is120.v0.63.marketdatasnapshotmessage", ftypes.STRING, nil, nil, nil, "The market data snapshot message publishes market data for securities. The exchange publishes full snapshot messages periodically and sends incremental snapshot messages when market data changes. Snapshot messages have no data dependency on one another; the client does not need to tell full and incremental messages apart and can replace its current data directly.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_status_message = ProtoField.new("Market Status Message", "sse.ssesecurities.mdgw.is120.v0.63.marketstatusmessage", ftypes.STRING, nil, nil, nil, "The market status message is used by the exchange to publish information such as the market status and the number of products. It is published periodically and when the market status changes.")
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_market_data_message = ProtoField.new("Tick-by-Tick Market Data Message", "sse.ssesecurities.mdgw.is120.v0.63.tickbytickmarketdatamessage", ftypes.STRING, nil, nil, nil, "Tick-by-tick market data includes tick-by-tick orders and tick-by-tick trades, sent in one data stream in the order they occur. Tick-by-tick order and tick-by-tick trade messages in the same channel share one continuous numbering of the message record number (ApplSeqNum). The client must use the continuity of the tick-by-tick sequence numbers to detect packet loss, and request retransmission over the TCP connection.")

-- Sse SseSecurities Mdgw Is120 0.63 Generated Fields
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.index_market_data_snapshot_entries_index = ProtoField.new("Index Market Data Snapshot Entries Index", "sse.ssesecurities.mdgw.is120.v0.63.indexmarketdatasnapshotentriesindex", ftypes.UINT16)
omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_entries_index = ProtoField.new("Market Data Snapshot Entries Index", "sse.ssesecurities.mdgw.is120.v0.63.marketdatasnapshotentriesindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Sse SseSecurities Mdgw Is120 0.63 Formatting
-----------------------------------------------------------------------

-- Text field character encoding (Wireshark ENC_ constant)
sse_ssesecurities_mdgw_is120_v0_63.text_encoding = ENC_ASCII

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
sse_ssesecurities_mdgw_is120_v0_63.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Sse SseSecurities Mdgw Is120 0.63 Element Dissection Options
show.structs = true
show.public_messages = true
show.repeating_groups = true
show.session_messages = true
show.application_messages = true
show.indexes = true

-- Register Sse SseSecurities Mdgw Is120 0.63 Show Options
omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_public_messages = Pref.bool("Show Public Messages", show.public_messages, "Parse and add Public Messages to protocol tree")
omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_sse_ssesecurities_mdgw_is120_v0_63.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_application_messages then
    show.application_messages = omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_application_messages
  end
  if show.public_messages ~= omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_public_messages then
    show.public_messages = omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_public_messages
  end
  if show.repeating_groups ~= omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_repeating_groups then
    show.repeating_groups = omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_repeating_groups
  end
  if show.session_messages ~= omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_session_messages then
    show.session_messages = omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_session_messages
  end
  if show.structs ~= omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_structs then
    show.structs = omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_structs
  end
  if show.indexes ~= omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_indexes then
    show.indexes = omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.show_indexes
  end
  if sse_ssesecurities_mdgw_is120_v0_63.timestamp_format ~= omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.timestamp_format then
    sse_ssesecurities_mdgw_is120_v0_63.timestamp_format = omi_sse_ssesecurities_mdgw_is120_v0_63.prefs.timestamp_format
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
-- Sse SseSecurities Mdgw Is120 0.63 Fields
-----------------------------------------------------------------------

-- ApplBegSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applbegseqnum = {}

-- Size: ApplBegSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applbegseqnum.size = 8

-- Display: ApplBegSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applbegseqnum.display = function(value)
  return "ApplBegSeqNum: "..value
end

-- Dissect: ApplBegSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applbegseqnum.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.applbegseqnum.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sse_ssesecurities_mdgw_is120_v0_63.applbegseqnum.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.applbegseqnum, range, value, display)

  return offset + length, value
end

-- ApplEndSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applendseqnum = {}

-- Size: ApplEndSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applendseqnum.size = 8

-- Display: ApplEndSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applendseqnum.display = function(value)
  return "ApplEndSeqNum: "..value
end

-- Dissect: ApplEndSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applendseqnum.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.applendseqnum.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sse_ssesecurities_mdgw_is120_v0_63.applendseqnum.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.applendseqnum, range, value, display)

  return offset + length, value
end

-- ApplLastSeqNum
sse_ssesecurities_mdgw_is120_v0_63.appllastseqnum = {}

-- Size: ApplLastSeqNum
sse_ssesecurities_mdgw_is120_v0_63.appllastseqnum.size = 8

-- Display: ApplLastSeqNum
sse_ssesecurities_mdgw_is120_v0_63.appllastseqnum.display = function(value)
  return "ApplLastSeqNum: "..value
end

-- Dissect: ApplLastSeqNum
sse_ssesecurities_mdgw_is120_v0_63.appllastseqnum.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.appllastseqnum.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sse_ssesecurities_mdgw_is120_v0_63.appllastseqnum.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.appllastseqnum, range, value, display)

  return offset + length, value
end

-- ApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applseqnum = {}

-- Size: ApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applseqnum.size = 8

-- Display: ApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applseqnum.display = function(value)
  return "ApplSeqNum: "..value
end

-- Dissect: ApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.applseqnum.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.applseqnum.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sse_ssesecurities_mdgw_is120_v0_63.applseqnum.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.applseqnum, range, value, display)

  return offset + length, value
end

-- ApplVerID
sse_ssesecurities_mdgw_is120_v0_63.applverid = {}

-- Size: ApplVerID
sse_ssesecurities_mdgw_is120_v0_63.applverid.size = 8

-- Display: ApplVerID
sse_ssesecurities_mdgw_is120_v0_63.applverid.display = function(value)
  return "ApplVerID: "..value
end

-- Dissect: ApplVerID
sse_ssesecurities_mdgw_is120_v0_63.applverid.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.applverid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.applverid.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.applverid, range, value, display)

  return offset + length, value
end

-- BasketID
sse_ssesecurities_mdgw_is120_v0_63.basketid = {}

-- Size: BasketID
sse_ssesecurities_mdgw_is120_v0_63.basketid.size = 16

-- Display: BasketID
sse_ssesecurities_mdgw_is120_v0_63.basketid.display = function(value)
  return "BasketID: "..value
end

-- Dissect: BasketID
sse_ssesecurities_mdgw_is120_v0_63.basketid.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.basketid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.basketid.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.basketid, range, value, display)

  return offset + length, value
end

-- BidApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.bidapplseqnum = {}

-- Size: BidApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.bidapplseqnum.size = 18

-- Display: BidApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.bidapplseqnum.display = function(value)
  return "BidApplSeqNum: "..value
end

-- Dissect: BidApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.bidapplseqnum.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.bidapplseqnum.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.bidapplseqnum.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.bidapplseqnum, range, value, display)

  return offset + length, value
end

-- BidExecInstType
sse_ssesecurities_mdgw_is120_v0_63.bidexecinsttype = {}

-- Size: BidExecInstType
sse_ssesecurities_mdgw_is120_v0_63.bidexecinsttype.size = 1

-- Display: BidExecInstType
sse_ssesecurities_mdgw_is120_v0_63.bidexecinsttype.labels = {
  [1] = "BidExecInstType: Single winning entity (1)",
  [2] = "BidExecInstType: Multiple winning entities at a single price (2)",
  [3] = "BidExecInstType: Multiple winning entities at multiple prices (3)",
}

sse_ssesecurities_mdgw_is120_v0_63.bidexecinsttype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.bidexecinsttype.labels[value] or "BidExecInstType: Unknown("..value..")"
end

-- Dissect: BidExecInstType
sse_ssesecurities_mdgw_is120_v0_63.bidexecinsttype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.bidexecinsttype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.bidexecinsttype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.bidexecinsttype, range, value, display)

  return offset + length, value
end

-- BidTransType
sse_ssesecurities_mdgw_is120_v0_63.bidtranstype = {}

-- Size: BidTransType
sse_ssesecurities_mdgw_is120_v0_63.bidtranstype.size = 1

-- Display: BidTransType
sse_ssesecurities_mdgw_is120_v0_63.bidtranstype.labels = {
  [1] = "BidTransType: Competitive bidding reservation (1)",
  [2] = "BidTransType: Competitive bidding declaration (2)",
  [3] = "BidTransType: Response price declaration for a single winning entity (3)",
}

sse_ssesecurities_mdgw_is120_v0_63.bidtranstype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.bidtranstype.labels[value] or "BidTransType: Unknown("..value..")"
end

-- Dissect: BidTransType
sse_ssesecurities_mdgw_is120_v0_63.bidtranstype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.bidtranstype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.bidtranstype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.bidtranstype, range, value, display)

  return offset + length, value
end

-- BodyLength
sse_ssesecurities_mdgw_is120_v0_63.bodylength = {}

-- Size: BodyLength
sse_ssesecurities_mdgw_is120_v0_63.bodylength.size = 4

-- Display: BodyLength
sse_ssesecurities_mdgw_is120_v0_63.bodylength.display = function(value)
  return "BodyLength: "..value
end

-- Dissect: BodyLength
sse_ssesecurities_mdgw_is120_v0_63.bodylength.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.bodylength.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.bodylength.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.bodylength, range, value, display)

  return offset + length, value
end

-- Channel Heartbeat ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_channelno = {}

-- Size: Channel Heartbeat ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_channelno.size = 2

-- Display: Channel Heartbeat ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_channelno.labels = {
  [100] = "Channel Heartbeat ChannelNO: Non-matched trading tick-by-tick market data (100)",
}

sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_channelno.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_channelno.labels[value] or "Channel Heartbeat ChannelNO: Unknown("..value..")"
end

-- Dissect: Channel Heartbeat ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_channelno.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_channelno.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_channelno.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.channel_heartbeat_channelno, range, value, display)

  return offset + length, value
end

-- Channel Heartbeat SecurityType
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_securitytype = {}

-- Size: Channel Heartbeat SecurityType
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_securitytype.size = 1

-- Display: Channel Heartbeat SecurityType
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_securitytype.labels = {
  [13] = "Channel Heartbeat SecurityType: Bonds (non-matched trading) (13)",
}

sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_securitytype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_securitytype.labels[value] or "Channel Heartbeat SecurityType: Unknown("..value..")"
end

-- Dissect: Channel Heartbeat SecurityType
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_securitytype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_securitytype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_securitytype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.channel_heartbeat_securitytype, range, value, display)

  return offset + length, value
end

-- CheckSum
sse_ssesecurities_mdgw_is120_v0_63.checksum = {}

-- Size: CheckSum
sse_ssesecurities_mdgw_is120_v0_63.checksum.size = 4

-- Display: CheckSum
sse_ssesecurities_mdgw_is120_v0_63.checksum.display = function(value)
  return "CheckSum: "..value
end

-- Dissect: CheckSum
sse_ssesecurities_mdgw_is120_v0_63.checksum.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.checksum, range, value, display)

  return offset + length, value
end

-- ContractMultiplier
sse_ssesecurities_mdgw_is120_v0_63.contractmultiplier = {}

-- Size: ContractMultiplier
sse_ssesecurities_mdgw_is120_v0_63.contractmultiplier.size = 4

-- Display: ContractMultiplier
sse_ssesecurities_mdgw_is120_v0_63.contractmultiplier.display = function(value)
  return "ContractMultiplier: "..value
end

-- Translate: ContractMultiplier
sse_ssesecurities_mdgw_is120_v0_63.contractmultiplier.translate = function(raw)
  return raw/100
end

-- Dissect: ContractMultiplier
sse_ssesecurities_mdgw_is120_v0_63.contractmultiplier.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.contractmultiplier.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = sse_ssesecurities_mdgw_is120_v0_63.contractmultiplier.translate(raw)
  local display = sse_ssesecurities_mdgw_is120_v0_63.contractmultiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.contractmultiplier, range, value, display)

  return offset + length, value
end

-- EndOfChannel
sse_ssesecurities_mdgw_is120_v0_63.endofchannel = {}

-- Size: EndOfChannel
sse_ssesecurities_mdgw_is120_v0_63.endofchannel.size = 1

-- Display: EndOfChannel
sse_ssesecurities_mdgw_is120_v0_63.endofchannel.labels = {
  ["Y"] = "EndOfChannel: Market data updates have ended (Y)",
  ["N"] = "EndOfChannel: Market data updates have not ended (N)",
}

sse_ssesecurities_mdgw_is120_v0_63.endofchannel.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.endofchannel.labels[value] or "EndOfChannel: Unknown("..value..")"
end

-- Dissect: EndOfChannel
sse_ssesecurities_mdgw_is120_v0_63.endofchannel.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.endofchannel.size
  local range = buffer(offset, length)
  local value = range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding)
  local display = sse_ssesecurities_mdgw_is120_v0_63.endofchannel.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.endofchannel, range, value, display)

  return offset + length, value
end

-- ExecType
sse_ssesecurities_mdgw_is120_v0_63.exectype = {}

-- Size: ExecType
sse_ssesecurities_mdgw_is120_v0_63.exectype.size = 1

-- Display: ExecType
sse_ssesecurities_mdgw_is120_v0_63.exectype.labels = {
  ["0"] = "ExecType: New order (0)",
  ["4"] = "ExecType: Delete order (4)",
  ["F"] = "ExecType: Trade (F)",
}

sse_ssesecurities_mdgw_is120_v0_63.exectype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.exectype.labels[value] or "ExecType: Unknown("..value..")"
end

-- Dissect: ExecType
sse_ssesecurities_mdgw_is120_v0_63.exectype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.exectype.size
  local range = buffer(offset, length)
  local value = range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding)
  local display = sse_ssesecurities_mdgw_is120_v0_63.exectype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.exectype, range, value, display)

  return offset + length, value
end

-- ExpirationDays
sse_ssesecurities_mdgw_is120_v0_63.expirationdays = {}

-- Size: ExpirationDays
sse_ssesecurities_mdgw_is120_v0_63.expirationdays.size = 2

-- Display: ExpirationDays
sse_ssesecurities_mdgw_is120_v0_63.expirationdays.display = function(value)
  return "ExpirationDays: "..value
end

-- Dissect: ExpirationDays
sse_ssesecurities_mdgw_is120_v0_63.expirationdays.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.expirationdays.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.expirationdays.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.expirationdays, range, value, display)

  return offset + length, value
end

-- ExpireDate
sse_ssesecurities_mdgw_is120_v0_63.expiredate = {}

-- Size: ExpireDate
sse_ssesecurities_mdgw_is120_v0_63.expiredate.size = 4

-- Display: ExpireDate
sse_ssesecurities_mdgw_is120_v0_63.expiredate.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("ExpireDate: %04d-%02d-%02d", year, month, day)
end

-- Dissect: ExpireDate
sse_ssesecurities_mdgw_is120_v0_63.expiredate.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.expiredate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.expiredate.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.expiredate, range, value, display)

  return offset + length, value
end

-- FullAmountTrade
sse_ssesecurities_mdgw_is120_v0_63.fullamounttrade = {}

-- Size: FullAmountTrade
sse_ssesecurities_mdgw_is120_v0_63.fullamounttrade.size = 1

-- Display: FullAmountTrade
sse_ssesecurities_mdgw_is120_v0_63.fullamounttrade.labels = {
  [1] = "FullAmountTrade: Yes (1)",
  [2] = "FullAmountTrade: No (2)",
}

sse_ssesecurities_mdgw_is120_v0_63.fullamounttrade.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.fullamounttrade.labels[value] or "FullAmountTrade: Unknown("..value..")"
end

-- Dissect: FullAmountTrade
sse_ssesecurities_mdgw_is120_v0_63.fullamounttrade.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.fullamounttrade.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.fullamounttrade.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.fullamounttrade, range, value, display)

  return offset + length, value
end

-- HeartBtInt
sse_ssesecurities_mdgw_is120_v0_63.heartbtint = {}

-- Size: HeartBtInt
sse_ssesecurities_mdgw_is120_v0_63.heartbtint.size = 2

-- Display: HeartBtInt
sse_ssesecurities_mdgw_is120_v0_63.heartbtint.display = function(value)
  return "HeartBtInt: "..value
end

-- Dissect: HeartBtInt
sse_ssesecurities_mdgw_is120_v0_63.heartbtint.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.heartbtint.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.heartbtint.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.heartbtint, range, value, display)

  return offset + length, value
end

-- Index Market Data Snapshot Entries MDEntryPx
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrypx = {}

-- Size: Index Market Data Snapshot Entries MDEntryPx
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrypx.size = 8

-- Display: Index Market Data Snapshot Entries MDEntryPx
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrypx.display = function(value)
  return "Index Market Data Snapshot Entries MDEntryPx: "..value
end

-- Translate: Index Market Data Snapshot Entries MDEntryPx
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrypx.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Index Market Data Snapshot Entries MDEntryPx
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrypx.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrypx.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrypx.translate(raw)
  local display = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrypx.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.index_market_data_snapshot_entries_mdentrypx, range, value, display)

  return offset + length, value
end

-- Index Market Data Snapshot Entries MDEntryType
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrytype = {}

-- Size: Index Market Data Snapshot Entries MDEntryType
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrytype.size = 2

-- Display: Index Market Data Snapshot Entries MDEntryType
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrytype.labels = {
  ["3"] = "Index Market Data Snapshot Entries MDEntryType: Latest index (3)",
  ["4"] = "Index Market Data Snapshot Entries MDEntryType: Today's opening index (4)",
  ["5"] = "Index Market Data Snapshot Entries MDEntryType: Today's closing index (5)",
  ["7"] = "Index Market Data Snapshot Entries MDEntryType: Highest index (7)",
  ["8"] = "Index Market Data Snapshot Entries MDEntryType: Lowest index (8)",
}

sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrytype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrytype.labels[value] or "Index Market Data Snapshot Entries MDEntryType: Unknown("..value..")"
end

-- Dissect: Index Market Data Snapshot Entries MDEntryType
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrytype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrytype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrytype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.index_market_data_snapshot_entries_mdentrytype, range, value, display)

  return offset + length, value
end

-- InvestorName
sse_ssesecurities_mdgw_is120_v0_63.investorname = {}

-- Size: InvestorName
sse_ssesecurities_mdgw_is120_v0_63.investorname.size = 32

-- Display: InvestorName
sse_ssesecurities_mdgw_is120_v0_63.investorname.display = function(value)
  return "InvestorName: "..value
end

-- Dissect: InvestorName
sse_ssesecurities_mdgw_is120_v0_63.investorname.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.investorname.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.investorname.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.investorname, range, value, display)

  return offset + length, value
end

-- LastUpdateTime
sse_ssesecurities_mdgw_is120_v0_63.lastupdatetime = {}

-- Size: LastUpdateTime
sse_ssesecurities_mdgw_is120_v0_63.lastupdatetime.size = 4

-- Display: LastUpdateTime
sse_ssesecurities_mdgw_is120_v0_63.lastupdatetime.display = function(value)
  local hour = math.floor(value / 10000000)
  local minute = math.floor(value / 100000) % 100
  local second = math.floor(value / 1000) % 100
  local milli = value % 1000

  return string.format("LastUpdateTime: %02d:%02d:%02d.%03d", hour, minute, second, milli)
end

-- Dissect: LastUpdateTime
sse_ssesecurities_mdgw_is120_v0_63.lastupdatetime.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.lastupdatetime.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.lastupdatetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.lastupdatetime, range, value, display)

  return offset + length, value
end

-- MarginPrice
sse_ssesecurities_mdgw_is120_v0_63.marginprice = {}

-- Size: MarginPrice
sse_ssesecurities_mdgw_is120_v0_63.marginprice.size = 8

-- Display: MarginPrice
sse_ssesecurities_mdgw_is120_v0_63.marginprice.display = function(value)
  return "MarginPrice: "..value
end

-- Translate: MarginPrice
sse_ssesecurities_mdgw_is120_v0_63.marginprice.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: MarginPrice
sse_ssesecurities_mdgw_is120_v0_63.marginprice.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.marginprice.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = sse_ssesecurities_mdgw_is120_v0_63.marginprice.translate(raw)
  local display = sse_ssesecurities_mdgw_is120_v0_63.marginprice.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.marginprice, range, value, display)

  return offset + length, value
end

-- Market Data Snapshot Entries MDEntryPx
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrypx = {}

-- Size: Market Data Snapshot Entries MDEntryPx
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrypx.size = 8

-- Display: Market Data Snapshot Entries MDEntryPx
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrypx.display = function(value)
  return "Market Data Snapshot Entries MDEntryPx: "..value
end

-- Translate: Market Data Snapshot Entries MDEntryPx
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrypx.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Market Data Snapshot Entries MDEntryPx
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrypx.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrypx.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrypx.translate(raw)
  local display = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrypx.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_entries_mdentrypx, range, value, display)

  return offset + length, value
end

-- Market Data Snapshot Entries MDEntryType
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrytype = {}

-- Size: Market Data Snapshot Entries MDEntryType
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrytype.size = 2

-- Display: Market Data Snapshot Entries MDEntryType
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrytype.labels = {
  ["0"] = "Market Data Snapshot Entries MDEntryType: Buy (0)",
  ["1"] = "Market Data Snapshot Entries MDEntryType: Sell (1)",
  ["2"] = "Market Data Snapshot Entries MDEntryType: Latest trade price (2)",
  ["4"] = "Market Data Snapshot Entries MDEntryType: Today's open price (4)",
  ["5"] = "Market Data Snapshot Entries MDEntryType: Today's close price (5)",
  ["6"] = "Market Data Snapshot Entries MDEntryType: Today's settlement price (6)",
  ["7"] = "Market Data Snapshot Entries MDEntryType: Day's highest trade price (7)",
  ["8"] = "Market Data Snapshot Entries MDEntryType: Day's lowest trade price (8)",
  ["9"] = "Market Data Snapshot Entries MDEntryType: Day's average trade price (9)",
  ["v"] = "Market Data Snapshot Entries MDEntryType: IOPV (v)",
  ["w"] = "Market Data Snapshot Entries MDEntryType: Previous day's IOPV (w)",
  ["x"] = "Market Data Snapshot Entries MDEntryType: Dynamic reference price and virtual matched quantity (x)",
  ["z1"] = "Market Data Snapshot Entries MDEntryType: Previous day's settlement price (z1)",
  ["z2"] = "Market Data Snapshot Entries MDEntryType: Total open interest (z2)",
  ["z3"] = "Market Data Snapshot Entries MDEntryType: Previous day's average trade price (z3)",
}

sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrytype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrytype.labels[value] or "Market Data Snapshot Entries MDEntryType: Unknown("..value..")"
end

-- Dissect: Market Data Snapshot Entries MDEntryType
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrytype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrytype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrytype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_entries_mdentrytype, range, value, display)

  return offset + length, value
end

-- Market Data Snapshot Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_securitytype = {}

-- Size: Market Data Snapshot Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_securitytype.size = 1

-- Display: Market Data Snapshot Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_securitytype.labels = {
  [1] = "Market Data Snapshot Message SecurityType: Stocks, funds, indices and bond distribution (1)",
  [2] = "Market Data Snapshot Message SecurityType: Derivatives (2)",
  [3] = "Market Data Snapshot Message SecurityType: Comprehensive business (3)",
  [12] = "Market Data Snapshot Message SecurityType: Bonds (matched trading) (12)",
  [13] = "Market Data Snapshot Message SecurityType: Bonds (non-matched trading) (13)",
  [14] = "Market Data Snapshot Message SecurityType: External source market data (14)",
}

sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_securitytype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_securitytype.labels[value] or "Market Data Snapshot Message SecurityType: Unknown("..value..")"
end

-- Dissect: Market Data Snapshot Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_securitytype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_securitytype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_securitytype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_message_securitytype, range, value, display)

  return offset + length, value
end

-- Market Data Snapshot Message TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_totalvaluetraded = {}

-- Size: Market Data Snapshot Message TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_totalvaluetraded.size = 8

-- Display: Market Data Snapshot Message TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_totalvaluetraded.display = function(value)
  return "Market Data Snapshot Message TotalValueTraded: "..value
end

-- Translate: Market Data Snapshot Message TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_totalvaluetraded.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Market Data Snapshot Message TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_totalvaluetraded.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_totalvaluetraded.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_totalvaluetraded.translate(raw)
  local display = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_totalvaluetraded.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_message_totalvaluetraded, range, value, display)

  return offset + length, value
end

-- Market Status Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.market_status_message_securitytype = {}

-- Size: Market Status Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.market_status_message_securitytype.size = 1

-- Display: Market Status Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.market_status_message_securitytype.labels = {
  [1] = "Market Status Message SecurityType: Stocks, funds, indices and bond distribution (1)",
  [2] = "Market Status Message SecurityType: Derivatives (2)",
  [3] = "Market Status Message SecurityType: Comprehensive business (3)",
  [12] = "Market Status Message SecurityType: Bonds (matched trading) (12)",
  [13] = "Market Status Message SecurityType: Bonds (non-matched trading) (13)",
  [14] = "Market Status Message SecurityType: External source market data (14)",
}

sse_ssesecurities_mdgw_is120_v0_63.market_status_message_securitytype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.market_status_message_securitytype.labels[value] or "Market Status Message SecurityType: Unknown("..value..")"
end

-- Dissect: Market Status Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.market_status_message_securitytype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.market_status_message_securitytype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.market_status_message_securitytype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_status_message_securitytype, range, value, display)

  return offset + length, value
end

-- MDEntryPositionNo
sse_ssesecurities_mdgw_is120_v0_63.mdentrypositionno = {}

-- Size: MDEntryPositionNo
sse_ssesecurities_mdgw_is120_v0_63.mdentrypositionno.size = 1

-- Display: MDEntryPositionNo
sse_ssesecurities_mdgw_is120_v0_63.mdentrypositionno.display = function(value)
  return "MDEntryPositionNo: "..value
end

-- Dissect: MDEntryPositionNo
sse_ssesecurities_mdgw_is120_v0_63.mdentrypositionno.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.mdentrypositionno.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.mdentrypositionno.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.mdentrypositionno, range, value, display)

  return offset + length, value
end

-- MDEntrySize
sse_ssesecurities_mdgw_is120_v0_63.mdentrysize = {}

-- Size: MDEntrySize
sse_ssesecurities_mdgw_is120_v0_63.mdentrysize.size = 8

-- Display: MDEntrySize
sse_ssesecurities_mdgw_is120_v0_63.mdentrysize.display = function(value)
  return "MDEntrySize: "..value
end

-- Dissect: MDEntrySize
sse_ssesecurities_mdgw_is120_v0_63.mdentrysize.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.mdentrysize.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sse_ssesecurities_mdgw_is120_v0_63.mdentrysize.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.mdentrysize, range, value, display)

  return offset + length, value
end

-- MDStreamID
sse_ssesecurities_mdgw_is120_v0_63.mdstreamid = {}

-- Size: MDStreamID
sse_ssesecurities_mdgw_is120_v0_63.mdstreamid.size = 5

-- Display: MDStreamID
sse_ssesecurities_mdgw_is120_v0_63.mdstreamid.labels = {
  ["MD001"] = "MDStreamID: Index products (MD001)",
  ["MD002"] = "MDStreamID: Stock (A and B share) products (MD002)",
  ["MD003"] = "MDStreamID: Bond distribution products (MD003)",
  ["MD004"] = "MDStreamID: Fund products (including public REITs) (MD004)",
  ["MD301"] = "MDStreamID: Option products (MD301)",
  ["MD101"] = "MDStreamID: Pre-issue government bond products (MD101)",
  ["MD102"] = "MDStreamID: After-hours fixed price (MD102)",
  ["MD201"] = "MDStreamID: Bond matched trading snapshot (MD201)",
  ["MD210"] = "MDStreamID: Bond non-matched trading snapshot (MD210)",
  ["MD211"] = "MDStreamID: Firm quote tick-by-tick orders (MD211)",
  ["MD212"] = "MDStreamID: Indicative quote tick-by-tick orders (MD212)",
  ["MD213"] = "MDStreamID: Cash bond intention declaration tick-by-tick orders (MD213)",
  ["MD214"] = "MDStreamID: Negotiated repo intention declaration tick-by-tick orders (MD214)",
  ["MD215"] = "MDStreamID: Tri-party repo intention declaration tick-by-tick orders (MD215)",
  ["MD216"] = "MDStreamID: Competitive bidding tick-by-tick orders (MD216)",
  ["MD217"] = "MDStreamID: Bond non-matched trading tick-by-tick trades (MD217)",
  ["MDE01"] = "MDStreamID: IOPV (MDE01)",
}

sse_ssesecurities_mdgw_is120_v0_63.mdstreamid.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.mdstreamid.labels[value] or "MDStreamID: Unknown("..value..")"
end

-- Dissect: MDStreamID
sse_ssesecurities_mdgw_is120_v0_63.mdstreamid.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.mdstreamid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.mdstreamid.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.mdstreamid, range, value, display)

  return offset + length, value
end

-- MemberID
sse_ssesecurities_mdgw_is120_v0_63.memberid = {}

-- Size: MemberID
sse_ssesecurities_mdgw_is120_v0_63.memberid.size = 12

-- Display: MemberID
sse_ssesecurities_mdgw_is120_v0_63.memberid.display = function(value)
  return "MemberID: "..value
end

-- Dissect: MemberID
sse_ssesecurities_mdgw_is120_v0_63.memberid.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.memberid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.memberid.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.memberid, range, value, display)

  return offset + length, value
end

-- MinQty
sse_ssesecurities_mdgw_is120_v0_63.minqty = {}

-- Size: MinQty
sse_ssesecurities_mdgw_is120_v0_63.minqty.size = 8

-- Display: MinQty
sse_ssesecurities_mdgw_is120_v0_63.minqty.display = function(value)
  return "MinQty: "..value
end

-- Dissect: MinQty
sse_ssesecurities_mdgw_is120_v0_63.minqty.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.minqty.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sse_ssesecurities_mdgw_is120_v0_63.minqty.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.minqty, range, value, display)

  return offset + length, value
end

-- MsgSeqNum
sse_ssesecurities_mdgw_is120_v0_63.msgseqnum = {}

-- Size: MsgSeqNum
sse_ssesecurities_mdgw_is120_v0_63.msgseqnum.size = 8

-- Display: MsgSeqNum
sse_ssesecurities_mdgw_is120_v0_63.msgseqnum.display = function(value)
  return "MsgSeqNum: "..value
end

-- Dissect: MsgSeqNum
sse_ssesecurities_mdgw_is120_v0_63.msgseqnum.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.msgseqnum.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sse_ssesecurities_mdgw_is120_v0_63.msgseqnum.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.msgseqnum, range, value, display)

  return offset + length, value
end

-- MsgType
sse_ssesecurities_mdgw_is120_v0_63.msgtype = {}

-- Size: MsgType
sse_ssesecurities_mdgw_is120_v0_63.msgtype.size = 4

-- Display: MsgType
sse_ssesecurities_mdgw_is120_v0_63.msgtype.labels = {
  ["S001"] = "MsgType: Logon Message (S001)",
  ["S002"] = "MsgType: Logout Message (S002)",
  ["S003"] = "MsgType: Heartbeat Message (S003)",
  ["P001"] = "MsgType: Channel Heartbeat (P001)",
  ["P002"] = "MsgType: Retransmission Message (P002)",
  ["M101"] = "MsgType: Market Status Message (M101)",
  ["M102"] = "MsgType: Market Data Snapshot Message (M102)",
  ["M201"] = "MsgType: Tick-by-Tick Market Data Message (M201)",
}

sse_ssesecurities_mdgw_is120_v0_63.msgtype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.msgtype.labels[value] or "MsgType: Unknown("..value..")"
end

-- Dissect: MsgType
sse_ssesecurities_mdgw_is120_v0_63.msgtype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.msgtype.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.msgtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.msgtype, range, value, display)

  return offset + length, value
end

-- NoMDEntries
sse_ssesecurities_mdgw_is120_v0_63.nomdentries = {}

-- Size: NoMDEntries
sse_ssesecurities_mdgw_is120_v0_63.nomdentries.size = 2

-- Display: NoMDEntries
sse_ssesecurities_mdgw_is120_v0_63.nomdentries.display = function(value)
  return "NoMDEntries: "..value
end

-- Dissect: NoMDEntries
sse_ssesecurities_mdgw_is120_v0_63.nomdentries.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.nomdentries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.nomdentries.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.nomdentries, range, value, display)

  return offset + length, value
end

-- NumTrades
sse_ssesecurities_mdgw_is120_v0_63.numtrades = {}

-- Size: NumTrades
sse_ssesecurities_mdgw_is120_v0_63.numtrades.size = 8

-- Display: NumTrades
sse_ssesecurities_mdgw_is120_v0_63.numtrades.display = function(value)
  return "NumTrades: "..value
end

-- Dissect: NumTrades
sse_ssesecurities_mdgw_is120_v0_63.numtrades.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.numtrades.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sse_ssesecurities_mdgw_is120_v0_63.numtrades.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.numtrades, range, value, display)

  return offset + length, value
end

-- OfferApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.offerapplseqnum = {}

-- Size: OfferApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.offerapplseqnum.size = 18

-- Display: OfferApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.offerapplseqnum.display = function(value)
  return "OfferApplSeqNum: "..value
end

-- Dissect: OfferApplSeqNum
sse_ssesecurities_mdgw_is120_v0_63.offerapplseqnum.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.offerapplseqnum.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.offerapplseqnum.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.offerapplseqnum, range, value, display)

  return offset + length, value
end

-- OrderQty
sse_ssesecurities_mdgw_is120_v0_63.orderqty = {}

-- Size: OrderQty
sse_ssesecurities_mdgw_is120_v0_63.orderqty.size = 8

-- Display: OrderQty
sse_ssesecurities_mdgw_is120_v0_63.orderqty.display = function(value)
  return "OrderQty: "..value
end

-- Translate: OrderQty
sse_ssesecurities_mdgw_is120_v0_63.orderqty.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: OrderQty
sse_ssesecurities_mdgw_is120_v0_63.orderqty.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.orderqty.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = sse_ssesecurities_mdgw_is120_v0_63.orderqty.translate(raw)
  local display = sse_ssesecurities_mdgw_is120_v0_63.orderqty.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.orderqty, range, value, display)

  return offset + length, value
end

-- PreClosePx
sse_ssesecurities_mdgw_is120_v0_63.preclosepx = {}

-- Size: PreClosePx
sse_ssesecurities_mdgw_is120_v0_63.preclosepx.size = 8

-- Display: PreClosePx
sse_ssesecurities_mdgw_is120_v0_63.preclosepx.display = function(value)
  return "PreClosePx: "..value
end

-- Translate: PreClosePx
sse_ssesecurities_mdgw_is120_v0_63.preclosepx.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: PreClosePx
sse_ssesecurities_mdgw_is120_v0_63.preclosepx.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.preclosepx.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = sse_ssesecurities_mdgw_is120_v0_63.preclosepx.translate(raw)
  local display = sse_ssesecurities_mdgw_is120_v0_63.preclosepx.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.preclosepx, range, value, display)

  return offset + length, value
end

-- Price
sse_ssesecurities_mdgw_is120_v0_63.price = {}

-- Size: Price
sse_ssesecurities_mdgw_is120_v0_63.price.size = 8

-- Display: Price
sse_ssesecurities_mdgw_is120_v0_63.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
sse_ssesecurities_mdgw_is120_v0_63.price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Price
sse_ssesecurities_mdgw_is120_v0_63.price.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = sse_ssesecurities_mdgw_is120_v0_63.price.translate(raw)
  local display = sse_ssesecurities_mdgw_is120_v0_63.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.price, range, value, display)

  return offset + length, value
end

-- QuoteID
sse_ssesecurities_mdgw_is120_v0_63.quoteid = {}

-- Size: QuoteID
sse_ssesecurities_mdgw_is120_v0_63.quoteid.size = 18

-- Display: QuoteID
sse_ssesecurities_mdgw_is120_v0_63.quoteid.display = function(value)
  return "QuoteID: "..value
end

-- Dissect: QuoteID
sse_ssesecurities_mdgw_is120_v0_63.quoteid.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.quoteid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.quoteid.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.quoteid, range, value, display)

  return offset + length, value
end

-- RejectText
sse_ssesecurities_mdgw_is120_v0_63.rejecttext = {}

-- Size: RejectText
sse_ssesecurities_mdgw_is120_v0_63.rejecttext.size = 32

-- Display: RejectText
sse_ssesecurities_mdgw_is120_v0_63.rejecttext.display = function(value)
  return "RejectText: "..value
end

-- Dissect: RejectText
sse_ssesecurities_mdgw_is120_v0_63.rejecttext.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.rejecttext.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.rejecttext.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.rejecttext, range, value, display)

  return offset + length, value
end

-- ResendStatus
sse_ssesecurities_mdgw_is120_v0_63.resendstatus = {}

-- Size: ResendStatus
sse_ssesecurities_mdgw_is120_v0_63.resendstatus.size = 1

-- Display: ResendStatus
sse_ssesecurities_mdgw_is120_v0_63.resendstatus.labels = {
  [1] = "ResendStatus: All complete (1)",
  [2] = "ResendStatus: Partially complete (part of the requested data was not returned) (2)",
  [3] = "ResendStatus: No permission (3)",
  [4] = "ResendStatus: Data not available (4)",
  [5] = "ResendStatus: A retransmission request is being processed (5)",
  [99] = "ResendStatus: Other (99)",
}

sse_ssesecurities_mdgw_is120_v0_63.resendstatus.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.resendstatus.labels[value] or "ResendStatus: Unknown("..value..")"
end

-- Dissect: ResendStatus
sse_ssesecurities_mdgw_is120_v0_63.resendstatus.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.resendstatus.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.resendstatus.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.resendstatus, range, value, display)

  return offset + length, value
end

-- ResendType
sse_ssesecurities_mdgw_is120_v0_63.resendtype = {}

-- Size: ResendType
sse_ssesecurities_mdgw_is120_v0_63.resendtype.size = 1

-- Display: ResendType
sse_ssesecurities_mdgw_is120_v0_63.resendtype.labels = {
  [1] = "ResendType: Tick-by-tick market data (1)",
}

sse_ssesecurities_mdgw_is120_v0_63.resendtype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.resendtype.labels[value] or "ResendType: Unknown("..value..")"
end

-- Dissect: ResendType
sse_ssesecurities_mdgw_is120_v0_63.resendtype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.resendtype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.resendtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.resendtype, range, value, display)

  return offset + length, value
end

-- Retransmission Message ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.retransmission_message_channelno = {}

-- Size: Retransmission Message ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.retransmission_message_channelno.size = 2

-- Display: Retransmission Message ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.retransmission_message_channelno.labels = {
  [100] = "Retransmission Message ChannelNO: Non-matched trading tick-by-tick market data (100)",
}

sse_ssesecurities_mdgw_is120_v0_63.retransmission_message_channelno.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.retransmission_message_channelno.labels[value] or "Retransmission Message ChannelNO: Unknown("..value..")"
end

-- Dissect: Retransmission Message ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.retransmission_message_channelno.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.retransmission_message_channelno.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.retransmission_message_channelno.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.retransmission_message_channelno, range, value, display)

  return offset + length, value
end

-- SecondaryOrderID
sse_ssesecurities_mdgw_is120_v0_63.secondaryorderid = {}

-- Size: SecondaryOrderID
sse_ssesecurities_mdgw_is120_v0_63.secondaryorderid.size = 18

-- Display: SecondaryOrderID
sse_ssesecurities_mdgw_is120_v0_63.secondaryorderid.display = function(value)
  return "SecondaryOrderID: "..value
end

-- Dissect: SecondaryOrderID
sse_ssesecurities_mdgw_is120_v0_63.secondaryorderid.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.secondaryorderid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.secondaryorderid.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.secondaryorderid, range, value, display)

  return offset + length, value
end

-- SecurityID
sse_ssesecurities_mdgw_is120_v0_63.securityid = {}

-- Size: SecurityID
sse_ssesecurities_mdgw_is120_v0_63.securityid.size = 8

-- Display: SecurityID
sse_ssesecurities_mdgw_is120_v0_63.securityid.display = function(value)
  return "SecurityID: "..value
end

-- Dissect: SecurityID
sse_ssesecurities_mdgw_is120_v0_63.securityid.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.securityid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.securityid.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.securityid, range, value, display)

  return offset + length, value
end

-- SenderCompID
sse_ssesecurities_mdgw_is120_v0_63.sendercompid = {}

-- Size: SenderCompID
sse_ssesecurities_mdgw_is120_v0_63.sendercompid.size = 32

-- Display: SenderCompID
sse_ssesecurities_mdgw_is120_v0_63.sendercompid.display = function(value)
  return "SenderCompID: "..value
end

-- Dissect: SenderCompID
sse_ssesecurities_mdgw_is120_v0_63.sendercompid.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.sendercompid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.sendercompid.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.sendercompid, range, value, display)

  return offset + length, value
end

-- SendingTime
sse_ssesecurities_mdgw_is120_v0_63.sendingtime = {}

-- Size: SendingTime
sse_ssesecurities_mdgw_is120_v0_63.sendingtime.size = 8

-- Dissect: SendingTime
sse_ssesecurities_mdgw_is120_v0_63.sendingtime.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.sendingtime.size
  local range = buffer(offset, length)
  local packed = range:uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_sse_ssesecurities_mdgw_is120_v0_63.fields.sendingtime
  if sse_ssesecurities_mdgw_is120_v0_63.timestamp_format == 3 then field = omi_sse_ssesecurities_mdgw_is120_v0_63.fields.sendingtime_utc end

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
    item:set_text("SendingTime: " .. tostring(packed))
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

-- SessionStatus
sse_ssesecurities_mdgw_is120_v0_63.sessionstatus = {}

-- Size: SessionStatus
sse_ssesecurities_mdgw_is120_v0_63.sessionstatus.size = 4

-- Display: SessionStatus
sse_ssesecurities_mdgw_is120_v0_63.sessionstatus.labels = {
  [0] = "SessionStatus: Normal logout (0)",
}

sse_ssesecurities_mdgw_is120_v0_63.sessionstatus.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.sessionstatus.labels[value] or "SessionStatus: Unknown("..value..")"
end

-- Dissect: SessionStatus
sse_ssesecurities_mdgw_is120_v0_63.sessionstatus.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.sessionstatus.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.sessionstatus.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.sessionstatus, range, value, display)

  return offset + length, value
end

-- SettlType
sse_ssesecurities_mdgw_is120_v0_63.settltype = {}

-- Size: SettlType
sse_ssesecurities_mdgw_is120_v0_63.settltype.size = 1

-- Display: SettlType
sse_ssesecurities_mdgw_is120_v0_63.settltype.labels = {
  [1] = "SettlType: Net settlement (1)",
  [2] = "SettlType: RTGS (2)",
}

sse_ssesecurities_mdgw_is120_v0_63.settltype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.settltype.labels[value] or "SettlType: Unknown("..value..")"
end

-- Dissect: SettlType
sse_ssesecurities_mdgw_is120_v0_63.settltype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.settltype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.settltype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.settltype, range, value, display)

  return offset + length, value
end

-- Side
sse_ssesecurities_mdgw_is120_v0_63.side = {}

-- Size: Side
sse_ssesecurities_mdgw_is120_v0_63.side.size = 1

-- Display: Side
sse_ssesecurities_mdgw_is120_v0_63.side.labels = {
  ["1"] = "Side: Buy (1)",
  ["2"] = "Side: Sell (2)",
}

sse_ssesecurities_mdgw_is120_v0_63.side.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
sse_ssesecurities_mdgw_is120_v0_63.side.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.side.size
  local range = buffer(offset, length)
  local value = range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding)
  local display = sse_ssesecurities_mdgw_is120_v0_63.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.side, range, value, display)

  return offset + length, value
end

-- Symbol
sse_ssesecurities_mdgw_is120_v0_63.symbol = {}

-- Size: Symbol
sse_ssesecurities_mdgw_is120_v0_63.symbol.size = 8

-- Display: Symbol
sse_ssesecurities_mdgw_is120_v0_63.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
sse_ssesecurities_mdgw_is120_v0_63.symbol.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.symbol, range, value, display)

  return offset + length, value
end

-- TargetCompID
sse_ssesecurities_mdgw_is120_v0_63.targetcompid = {}

-- Size: TargetCompID
sse_ssesecurities_mdgw_is120_v0_63.targetcompid.size = 32

-- Display: TargetCompID
sse_ssesecurities_mdgw_is120_v0_63.targetcompid.display = function(value)
  return "TargetCompID: "..value
end

-- Dissect: TargetCompID
sse_ssesecurities_mdgw_is120_v0_63.targetcompid.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.targetcompid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.targetcompid.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.targetcompid, range, value, display)

  return offset + length, value
end

-- Text
sse_ssesecurities_mdgw_is120_v0_63.text = {}

-- Size: Text
sse_ssesecurities_mdgw_is120_v0_63.text.size = 256

-- Display: Text
sse_ssesecurities_mdgw_is120_v0_63.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
sse_ssesecurities_mdgw_is120_v0_63.text.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.text, range, value, display)

  return offset + length, value
end

-- Tick-by-Tick Market Data Message ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_channelno = {}

-- Size: Tick-by-Tick Market Data Message ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_channelno.size = 2

-- Display: Tick-by-Tick Market Data Message ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_channelno.display = function(value)
  return "Tick-by-Tick Market Data Message ChannelNO: "..value
end

-- Dissect: Tick-by-Tick Market Data Message ChannelNO
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_channelno.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_channelno.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_channelno.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_market_data_message_channelno, range, value, display)

  return offset + length, value
end

-- Tick-by-Tick Market Data Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_securitytype = {}

-- Size: Tick-by-Tick Market Data Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_securitytype.size = 1

-- Display: Tick-by-Tick Market Data Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_securitytype.labels = {
  [13] = "Tick-by-Tick Market Data Message SecurityType: Bonds (non-matched trading) (13)",
}

sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_securitytype.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_securitytype.labels[value] or "Tick-by-Tick Market Data Message SecurityType: Unknown("..value..")"
end

-- Dissect: Tick-by-Tick Market Data Message SecurityType
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_securitytype.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_securitytype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_securitytype.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_market_data_message_securitytype, range, value, display)

  return offset + length, value
end

-- Tick-by-Tick Order Market Data Extension Fields TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields_totalvaluetraded = {}

-- Size: Tick-by-Tick Order Market Data Extension Fields TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields_totalvaluetraded.size = 8

-- Display: Tick-by-Tick Order Market Data Extension Fields TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields_totalvaluetraded.display = function(value)
  return "Tick-by-Tick Order Market Data Extension Fields TotalValueTraded: "..value
end

-- Translate: Tick-by-Tick Order Market Data Extension Fields TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields_totalvaluetraded.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Tick-by-Tick Order Market Data Extension Fields TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields_totalvaluetraded.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields_totalvaluetraded.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields_totalvaluetraded.translate(raw)
  local display = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields_totalvaluetraded.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_order_market_data_extension_fields_totalvaluetraded, range, value, display)

  return offset + length, value
end

-- Tick-by-Tick Trade Market Data Extension Fields TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields_totalvaluetraded = {}

-- Size: Tick-by-Tick Trade Market Data Extension Fields TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields_totalvaluetraded.size = 8

-- Display: Tick-by-Tick Trade Market Data Extension Fields TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields_totalvaluetraded.display = function(value)
  return "Tick-by-Tick Trade Market Data Extension Fields TotalValueTraded: "..value
end

-- Translate: Tick-by-Tick Trade Market Data Extension Fields TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields_totalvaluetraded.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Tick-by-Tick Trade Market Data Extension Fields TotalValueTraded
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields_totalvaluetraded.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields_totalvaluetraded.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields_totalvaluetraded.translate(raw)
  local display = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields_totalvaluetraded.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_trade_market_data_extension_fields_totalvaluetraded, range, value, display)

  return offset + length, value
end

-- TotalVolumeTraded
sse_ssesecurities_mdgw_is120_v0_63.totalvolumetraded = {}

-- Size: TotalVolumeTraded
sse_ssesecurities_mdgw_is120_v0_63.totalvolumetraded.size = 8

-- Display: TotalVolumeTraded
sse_ssesecurities_mdgw_is120_v0_63.totalvolumetraded.display = function(value)
  return "TotalVolumeTraded: "..value
end

-- Dissect: TotalVolumeTraded
sse_ssesecurities_mdgw_is120_v0_63.totalvolumetraded.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.totalvolumetraded.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = sse_ssesecurities_mdgw_is120_v0_63.totalvolumetraded.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.totalvolumetraded, range, value, display)

  return offset + length, value
end

-- TotNoRelatedSym
sse_ssesecurities_mdgw_is120_v0_63.totnorelatedsym = {}

-- Size: TotNoRelatedSym
sse_ssesecurities_mdgw_is120_v0_63.totnorelatedsym.size = 4

-- Display: TotNoRelatedSym
sse_ssesecurities_mdgw_is120_v0_63.totnorelatedsym.display = function(value)
  return "TotNoRelatedSym: "..value
end

-- Dissect: TotNoRelatedSym
sse_ssesecurities_mdgw_is120_v0_63.totnorelatedsym.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.totnorelatedsym.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.totnorelatedsym.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.totnorelatedsym, range, value, display)

  return offset + length, value
end

-- TradeDate
sse_ssesecurities_mdgw_is120_v0_63.tradedate = {}

-- Size: TradeDate
sse_ssesecurities_mdgw_is120_v0_63.tradedate.size = 4

-- Display: TradeDate
sse_ssesecurities_mdgw_is120_v0_63.tradedate.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("TradeDate: %04d-%02d-%02d", year, month, day)
end

-- Dissect: TradeDate
sse_ssesecurities_mdgw_is120_v0_63.tradedate.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.tradedate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.tradedate.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tradedate, range, value, display)

  return offset + length, value
end

-- TradeMethod
sse_ssesecurities_mdgw_is120_v0_63.trademethod = {}

-- Size: TradeMethod
sse_ssesecurities_mdgw_is120_v0_63.trademethod.size = 1

-- Display: TradeMethod
sse_ssesecurities_mdgw_is120_v0_63.trademethod.labels = {
  [0] = "TradeMethod: Matched trade (reserved) (0)",
  [1] = "TradeMethod: Firm quote click trade (1)",
  [2] = "TradeMethod: Indicative quote click trade (2)",
  [3] = "TradeMethod: Inquiry trade (3)",
  [6] = "TradeMethod: Negotiated trade (including merged declarations) (6)",
  [7] = "TradeMethod: Competitive bidding single-entity trade (7)",
  [10] = "TradeMethod: Competitive bidding multi-entity single-price trade (10)",
  [11] = "TradeMethod: Competitive bidding multi-entity multiple-price trade (11)",
}

sse_ssesecurities_mdgw_is120_v0_63.trademethod.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.trademethod.labels[value] or "TradeMethod: Unknown("..value..")"
end

-- Dissect: TradeMethod
sse_ssesecurities_mdgw_is120_v0_63.trademethod.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.trademethod.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.trademethod.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.trademethod, range, value, display)

  return offset + length, value
end

-- TraderCode
sse_ssesecurities_mdgw_is120_v0_63.tradercode = {}

-- Size: TraderCode
sse_ssesecurities_mdgw_is120_v0_63.tradercode.size = 12

-- Display: TraderCode
sse_ssesecurities_mdgw_is120_v0_63.tradercode.display = function(value)
  return "TraderCode: "..value
end

-- Dissect: TraderCode
sse_ssesecurities_mdgw_is120_v0_63.tradercode.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.tradercode.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.tradercode.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tradercode, range, value, display)

  return offset + length, value
end

-- TradingPhaseCode
sse_ssesecurities_mdgw_is120_v0_63.tradingphasecode = {}

-- Size: TradingPhaseCode
sse_ssesecurities_mdgw_is120_v0_63.tradingphasecode.size = 8

-- Display: TradingPhaseCode
sse_ssesecurities_mdgw_is120_v0_63.tradingphasecode.display = function(value)
  return "TradingPhaseCode: "..value
end

-- Dissect: TradingPhaseCode
sse_ssesecurities_mdgw_is120_v0_63.tradingphasecode.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.tradingphasecode.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.tradingphasecode.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tradingphasecode, range, value, display)

  return offset + length, value
end

-- TradingSessionID
sse_ssesecurities_mdgw_is120_v0_63.tradingsessionid = {}

-- Size: TradingSessionID
sse_ssesecurities_mdgw_is120_v0_63.tradingsessionid.size = 8

-- Display: TradingSessionID
sse_ssesecurities_mdgw_is120_v0_63.tradingsessionid.display = function(value)
  return "TradingSessionID: "..value
end

-- Dissect: TradingSessionID
sse_ssesecurities_mdgw_is120_v0_63.tradingsessionid.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.tradingsessionid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))
  local display = sse_ssesecurities_mdgw_is120_v0_63.tradingsessionid.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tradingsessionid, range, value, display)

  return offset + length, value
end

-- TradSesMode
sse_ssesecurities_mdgw_is120_v0_63.tradsesmode = {}

-- Size: TradSesMode
sse_ssesecurities_mdgw_is120_v0_63.tradsesmode.size = 1

-- Display: TradSesMode
sse_ssesecurities_mdgw_is120_v0_63.tradsesmode.labels = {
  [1] = "TradSesMode: System test (1)",
  [2] = "TradSesMode: Simulated trading (2)",
  [3] = "TradSesMode: Production (normal trading) (3)",
}

sse_ssesecurities_mdgw_is120_v0_63.tradsesmode.display = function(value)
  return sse_ssesecurities_mdgw_is120_v0_63.tradsesmode.labels[value] or "TradSesMode: Unknown("..value..")"
end

-- Dissect: TradSesMode
sse_ssesecurities_mdgw_is120_v0_63.tradsesmode.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.tradsesmode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.tradsesmode.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tradsesmode, range, value, display)

  return offset + length, value
end

-- TransactTime
sse_ssesecurities_mdgw_is120_v0_63.transacttime = {}

-- Size: TransactTime
sse_ssesecurities_mdgw_is120_v0_63.transacttime.size = 4

-- Display: TransactTime
sse_ssesecurities_mdgw_is120_v0_63.transacttime.display = function(value)
  local hour = math.floor(value / 10000000)
  local minute = math.floor(value / 100000) % 100
  local second = math.floor(value / 1000) % 100
  local milli = value % 1000

  return string.format("TransactTime: %02d:%02d:%02d.%03d", hour, minute, second, milli)
end

-- Dissect: TransactTime
sse_ssesecurities_mdgw_is120_v0_63.transacttime.dissect = function(buffer, offset, packet, parent)
  local length = sse_ssesecurities_mdgw_is120_v0_63.transacttime.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = sse_ssesecurities_mdgw_is120_v0_63.transacttime.display(value, buffer, offset, packet, parent)

  parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.transacttime, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Sse SseSecurities Mdgw Is120 0.63
-----------------------------------------------------------------------

-- Standard Trailer
sse_ssesecurities_mdgw_is120_v0_63.standard_trailer = {}

-- Size: Standard Trailer
sse_ssesecurities_mdgw_is120_v0_63.standard_trailer.size =
  sse_ssesecurities_mdgw_is120_v0_63.checksum.size

-- Display: Standard Trailer
sse_ssesecurities_mdgw_is120_v0_63.standard_trailer.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Standard Trailer
sse_ssesecurities_mdgw_is120_v0_63.standard_trailer.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- CheckSum: 4 Byte Unsigned Fixed Width Integer
  index, checksum = sse_ssesecurities_mdgw_is120_v0_63.checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Standard Trailer
sse_ssesecurities_mdgw_is120_v0_63.standard_trailer.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.standard_trailer, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.standard_trailer.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.standard_trailer.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.standard_trailer.fields(buffer, offset, packet, parent)
  end
end

-- Tick-by-Tick Trade Market Data Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields = {}

-- Size: Tick-by-Tick Trade Market Data Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields.size =
  sse_ssesecurities_mdgw_is120_v0_63.bidapplseqnum.size + 
  sse_ssesecurities_mdgw_is120_v0_63.offerapplseqnum.size + 
  sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields_totalvaluetraded.size + 
  sse_ssesecurities_mdgw_is120_v0_63.trademethod.size + 
  sse_ssesecurities_mdgw_is120_v0_63.marginprice.size

-- Display: Tick-by-Tick Trade Market Data Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick-by-Tick Trade Market Data Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- BidApplSeqNum: 18 Byte Ascii String
  index, bidapplseqnum = sse_ssesecurities_mdgw_is120_v0_63.bidapplseqnum.dissect(buffer, index, packet, parent)

  -- OfferApplSeqNum: 18 Byte Ascii String
  index, offerapplseqnum = sse_ssesecurities_mdgw_is120_v0_63.offerapplseqnum.dissect(buffer, index, packet, parent)

  -- Tick-by-Tick Trade Market Data Extension Fields TotalValueTraded: 8 Byte Unsigned Fixed Width Integer
  index, tickbytick_trade_market_data_extension_fields_totalvaluetraded = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields_totalvaluetraded.dissect(buffer, index, packet, parent)

  -- TradeMethod: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trademethod = sse_ssesecurities_mdgw_is120_v0_63.trademethod.dissect(buffer, index, packet, parent)

  -- MarginPrice: 8 Byte Unsigned Fixed Width Integer
  index, marginprice = sse_ssesecurities_mdgw_is120_v0_63.marginprice.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick-by-Tick Trade Market Data Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_trade_market_data_extension_fields, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields.fields(buffer, offset, packet, parent)
  end
end

-- Tick-by-Tick Order Market Data Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields = {}

-- Size: Tick-by-Tick Order Market Data Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.size =
  sse_ssesecurities_mdgw_is120_v0_63.side.size + 
  sse_ssesecurities_mdgw_is120_v0_63.quoteid.size + 
  sse_ssesecurities_mdgw_is120_v0_63.memberid.size + 
  sse_ssesecurities_mdgw_is120_v0_63.tradercode.size + 
  sse_ssesecurities_mdgw_is120_v0_63.fullamounttrade.size + 
  sse_ssesecurities_mdgw_is120_v0_63.settltype.size + 
  sse_ssesecurities_mdgw_is120_v0_63.contractmultiplier.size + 
  sse_ssesecurities_mdgw_is120_v0_63.expirationdays.size + 
  sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields_totalvaluetraded.size + 
  sse_ssesecurities_mdgw_is120_v0_63.basketid.size + 
  sse_ssesecurities_mdgw_is120_v0_63.investorname.size + 
  sse_ssesecurities_mdgw_is120_v0_63.bidtranstype.size + 
  sse_ssesecurities_mdgw_is120_v0_63.bidexecinsttype.size + 
  sse_ssesecurities_mdgw_is120_v0_63.expiredate.size + 
  sse_ssesecurities_mdgw_is120_v0_63.secondaryorderid.size + 
  sse_ssesecurities_mdgw_is120_v0_63.minqty.size

-- Display: Tick-by-Tick Order Market Data Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick-by-Tick Order Market Data Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = sse_ssesecurities_mdgw_is120_v0_63.side.dissect(buffer, index, packet, parent)

  -- QuoteID: 18 Byte Ascii String
  index, quoteid = sse_ssesecurities_mdgw_is120_v0_63.quoteid.dissect(buffer, index, packet, parent)

  -- MemberID: 12 Byte Ascii String
  index, memberid = sse_ssesecurities_mdgw_is120_v0_63.memberid.dissect(buffer, index, packet, parent)

  -- TraderCode: 12 Byte Ascii String
  index, tradercode = sse_ssesecurities_mdgw_is120_v0_63.tradercode.dissect(buffer, index, packet, parent)

  -- FullAmountTrade: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, fullamounttrade = sse_ssesecurities_mdgw_is120_v0_63.fullamounttrade.dissect(buffer, index, packet, parent)

  -- SettlType: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, settltype = sse_ssesecurities_mdgw_is120_v0_63.settltype.dissect(buffer, index, packet, parent)

  -- ContractMultiplier: 4 Byte Unsigned Fixed Width Integer
  index, contractmultiplier = sse_ssesecurities_mdgw_is120_v0_63.contractmultiplier.dissect(buffer, index, packet, parent)

  -- ExpirationDays: 2 Byte Unsigned Fixed Width Integer
  index, expirationdays = sse_ssesecurities_mdgw_is120_v0_63.expirationdays.dissect(buffer, index, packet, parent)

  -- Tick-by-Tick Order Market Data Extension Fields TotalValueTraded: 8 Byte Unsigned Fixed Width Integer
  index, tickbytick_order_market_data_extension_fields_totalvaluetraded = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields_totalvaluetraded.dissect(buffer, index, packet, parent)

  -- BasketID: 16 Byte Ascii String
  index, basketid = sse_ssesecurities_mdgw_is120_v0_63.basketid.dissect(buffer, index, packet, parent)

  -- InvestorName: 32 Byte Ascii String
  index, investorname = sse_ssesecurities_mdgw_is120_v0_63.investorname.dissect(buffer, index, packet, parent)

  -- BidTransType: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, bidtranstype = sse_ssesecurities_mdgw_is120_v0_63.bidtranstype.dissect(buffer, index, packet, parent)

  -- BidExecInstType: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, bidexecinsttype = sse_ssesecurities_mdgw_is120_v0_63.bidexecinsttype.dissect(buffer, index, packet, parent)

  -- ExpireDate: 4 Byte Unsigned Fixed Width Integer
  index, expiredate = sse_ssesecurities_mdgw_is120_v0_63.expiredate.dissect(buffer, index, packet, parent)

  -- SecondaryOrderID: 18 Byte Ascii String
  index, secondaryorderid = sse_ssesecurities_mdgw_is120_v0_63.secondaryorderid.dissect(buffer, index, packet, parent)

  -- MinQty: 8 Byte Unsigned Fixed Width Integer
  index, minqty = sse_ssesecurities_mdgw_is120_v0_63.minqty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick-by-Tick Order Market Data Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_order_market_data_extension_fields, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.fields(buffer, offset, packet, parent)
  end
end

-- Tick-by-Tick Market Data Message ExtendFields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_extendfields = {}

-- Dispatch: Tick-by-Tick Market Data Message ExtendFields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_extendfields.dispatch = {
  ["MD211"] = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.dissect,
  ["MD212"] = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.dissect,
  ["MD213"] = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.dissect,
  ["MD214"] = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.dissect,
  ["MD215"] = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.dissect,
  ["MD216"] = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_order_market_data_extension_fields.dissect,
  ["MD217"] = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_trade_market_data_extension_fields.dissect,
}

-- Dissect: Tick-by-Tick Market Data Message ExtendFields
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_extendfields.dissect = function(buffer, offset, packet, parent, mdstreamid)
  local dissect = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_extendfields.dispatch[mdstreamid]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Tick-by-Tick Market Data Message
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message = {}

-- Calculate size of: Tick-by-Tick Market Data Message
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message.size = function(buffer, offset)
  local index = 0

  index = index + sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_securitytype.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_channelno.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.applseqnum.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.mdstreamid.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.securityid.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.transacttime.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.exectype.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.price.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.orderqty.size

  -- Calculate runtime size of Tick-by-Tick Market Data Message ExtendFields field
  local tickbytick_market_data_message_extendfields_offset = offset + index
  local tickbytick_market_data_message_extendfields_type = buffer(tickbytick_market_data_message_extendfields_offset - 34, 5):string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding)
  index = index + sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_extendfields.size(buffer, tickbytick_market_data_message_extendfields_offset, tickbytick_market_data_message_extendfields_type)

  return index
end

-- Display: Tick-by-Tick Market Data Message
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick-by-Tick Market Data Message
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick-by-Tick Market Data Message SecurityType: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, tickbytick_market_data_message_securitytype = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_securitytype.dissect(buffer, index, packet, parent)

  -- Tick-by-Tick Market Data Message ChannelNO: 2 Byte Unsigned Fixed Width Integer
  index, tickbytick_market_data_message_channelno = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_channelno.dissect(buffer, index, packet, parent)

  -- ApplSeqNum: 8 Byte Unsigned Fixed Width Integer
  index, applseqnum = sse_ssesecurities_mdgw_is120_v0_63.applseqnum.dissect(buffer, index, packet, parent)

  -- MDStreamID: 5 Byte Ascii String Enum with 17 values
  index, mdstreamid = sse_ssesecurities_mdgw_is120_v0_63.mdstreamid.dissect(buffer, index, packet, parent)

  -- SecurityID: 8 Byte Ascii String
  index, securityid = sse_ssesecurities_mdgw_is120_v0_63.securityid.dissect(buffer, index, packet, parent)

  -- TransactTime: 4 Byte Unsigned Fixed Width Integer
  index, transacttime = sse_ssesecurities_mdgw_is120_v0_63.transacttime.dissect(buffer, index, packet, parent)

  -- ExecType: 1 Byte Ascii String Enum with 3 values
  index, exectype = sse_ssesecurities_mdgw_is120_v0_63.exectype.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = sse_ssesecurities_mdgw_is120_v0_63.price.dissect(buffer, index, packet, parent)

  -- OrderQty: 8 Byte Unsigned Fixed Width Integer
  index, orderqty = sse_ssesecurities_mdgw_is120_v0_63.orderqty.dissect(buffer, index, packet, parent)

  -- Tick-by-Tick Market Data Message ExtendFields: Runtime Type with 2 branches
  index = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message_extendfields.dissect(buffer, index, packet, parent, mdstreamid)

  return index
end

-- Dissect: Tick-by-Tick Market Data Message
sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.tickbytick_market_data_message, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Data Snapshot Entries
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries = {}

-- Size: Market Data Snapshot Entries
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries.size =
  sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrytype.size + 
  sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrypx.size + 
  sse_ssesecurities_mdgw_is120_v0_63.mdentrysize.size + 
  sse_ssesecurities_mdgw_is120_v0_63.mdentrypositionno.size

-- Display: Market Data Snapshot Entries
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Snapshot Entries
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries.fields = function(buffer, offset, packet, parent, market_data_snapshot_entries_index)
  local index = offset

  -- Implicit Market Data Snapshot Entries Index
  if market_data_snapshot_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_entries_index, market_data_snapshot_entries_index)
    iteration:set_generated()
  end

  -- Market Data Snapshot Entries MDEntryType: 2 Byte Ascii String Enum with 15 values
  index, market_data_snapshot_entries_mdentrytype = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrytype.dissect(buffer, index, packet, parent)

  -- Market Data Snapshot Entries MDEntryPx: 8 Byte Unsigned Fixed Width Integer
  index, market_data_snapshot_entries_mdentrypx = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries_mdentrypx.dissect(buffer, index, packet, parent)

  -- MDEntrySize: 8 Byte Unsigned Fixed Width Integer
  index, mdentrysize = sse_ssesecurities_mdgw_is120_v0_63.mdentrysize.dissect(buffer, index, packet, parent)

  -- MDEntryPositionNo: 1 Byte Unsigned Fixed Width Integer
  index, mdentrypositionno = sse_ssesecurities_mdgw_is120_v0_63.mdentrypositionno.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Snapshot Entries
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries.dissect = function(buffer, offset, packet, parent, market_data_snapshot_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_entries, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries.fields(buffer, offset, packet, parent, market_data_snapshot_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries.fields(buffer, offset, packet, parent, market_data_snapshot_entries_index)
  end
end

-- Market Data Snapshot Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields = {}

-- Calculate size of: Market Data Snapshot Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.size = function(buffer, offset)
  local index = 0

  index = index + sse_ssesecurities_mdgw_is120_v0_63.nomdentries.size

  -- Calculate field size from count
  local market_data_snapshot_entries_count = buffer(offset + index - 2, 2):uint()
  index = index + market_data_snapshot_entries_count * 19

  return index
end

-- Display: Market Data Snapshot Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Snapshot Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- NoMDEntries: 2 Byte Unsigned Fixed Width Integer
  index, nomdentries = sse_ssesecurities_mdgw_is120_v0_63.nomdentries.dissect(buffer, index, packet, parent)

  -- Repeating: Market Data Snapshot Entries
  for market_data_snapshot_entries_index = 1, nomdentries do
    index, market_data_snapshot_entries = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_entries.dissect(buffer, index, packet, parent, market_data_snapshot_entries_index)
  end

  return index
end

-- Dissect: Market Data Snapshot Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_extension_fields, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.fields(buffer, offset, packet, parent)
  end
end

-- Index Market Data Snapshot Entries
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries = {}

-- Size: Index Market Data Snapshot Entries
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries.size =
  sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrytype.size + 
  sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrypx.size

-- Display: Index Market Data Snapshot Entries
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Market Data Snapshot Entries
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries.fields = function(buffer, offset, packet, parent, index_market_data_snapshot_entries_index)
  local index = offset

  -- Implicit Index Market Data Snapshot Entries Index
  if index_market_data_snapshot_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.index_market_data_snapshot_entries_index, index_market_data_snapshot_entries_index)
    iteration:set_generated()
  end

  -- Index Market Data Snapshot Entries MDEntryType: 2 Byte Ascii String Enum with 5 values
  index, index_market_data_snapshot_entries_mdentrytype = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrytype.dissect(buffer, index, packet, parent)

  -- Index Market Data Snapshot Entries MDEntryPx: 8 Byte Unsigned Fixed Width Integer
  index, index_market_data_snapshot_entries_mdentrypx = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries_mdentrypx.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Market Data Snapshot Entries
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries.dissect = function(buffer, offset, packet, parent, index_market_data_snapshot_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.index_market_data_snapshot_entries, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries.fields(buffer, offset, packet, parent, index_market_data_snapshot_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries.fields(buffer, offset, packet, parent, index_market_data_snapshot_entries_index)
  end
end

-- Index Market Data Snapshot Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_extension_fields = {}

-- Calculate size of: Index Market Data Snapshot Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_extension_fields.size = function(buffer, offset)
  local index = 0

  index = index + sse_ssesecurities_mdgw_is120_v0_63.nomdentries.size

  -- Calculate field size from count
  local index_market_data_snapshot_entries_count = buffer(offset + index - 2, 2):uint()
  index = index + index_market_data_snapshot_entries_count * 10

  return index
end

-- Display: Index Market Data Snapshot Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_extension_fields.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Market Data Snapshot Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_extension_fields.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- NoMDEntries: 2 Byte Unsigned Fixed Width Integer
  index, nomdentries = sse_ssesecurities_mdgw_is120_v0_63.nomdentries.dissect(buffer, index, packet, parent)

  -- Repeating: Index Market Data Snapshot Entries
  for index_market_data_snapshot_entries_index = 1, nomdentries do
    index, index_market_data_snapshot_entries = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_entries.dissect(buffer, index, packet, parent, index_market_data_snapshot_entries_index)
  end

  return index
end

-- Dissect: Index Market Data Snapshot Extension Fields
sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_extension_fields.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.index_market_data_snapshot_extension_fields, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_extension_fields.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_extension_fields.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_extension_fields.fields(buffer, offset, packet, parent)
  end
end

-- Market Data Snapshot Message ExtendFields
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_extendfields = {}

-- Dispatch: Market Data Snapshot Message ExtendFields
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_extendfields.dispatch = {
  ["MD001"] = sse_ssesecurities_mdgw_is120_v0_63.index_market_data_snapshot_extension_fields.dissect,
  ["MD002"] = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.dissect,
  ["MD003"] = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.dissect,
  ["MD004"] = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.dissect,
  ["MD101"] = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.dissect,
  ["MD102"] = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.dissect,
  ["MD301"] = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.dissect,
  ["MD201"] = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.dissect,
  ["MDE01"] = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.dissect,
  ["MD210"] = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_extension_fields.dissect,
}

-- Dissect: Market Data Snapshot Message ExtendFields
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_extendfields.dissect = function(buffer, offset, packet, parent, mdstreamid)
  local dissect = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_extendfields.dispatch[mdstreamid]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Market Data Snapshot Message
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message = {}

-- Calculate size of: Market Data Snapshot Message
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_securitytype.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.tradsesmode.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.tradedate.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.lastupdatetime.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.mdstreamid.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.securityid.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.symbol.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.preclosepx.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.totalvolumetraded.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.numtrades.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_totalvaluetraded.size

  index = index + sse_ssesecurities_mdgw_is120_v0_63.tradingphasecode.size

  -- Calculate runtime size of Market Data Snapshot Message ExtendFields field
  local market_data_snapshot_message_extendfields_offset = offset + index
  local market_data_snapshot_message_extendfields_type = buffer(market_data_snapshot_message_extendfields_offset - 61, 5):string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding)
  index = index + sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_extendfields.size(buffer, market_data_snapshot_message_extendfields_offset, market_data_snapshot_message_extendfields_type)

  return index
end

-- Display: Market Data Snapshot Message
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Snapshot Message
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Data Snapshot Message SecurityType: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, market_data_snapshot_message_securitytype = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_securitytype.dissect(buffer, index, packet, parent)

  -- TradSesMode: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, tradsesmode = sse_ssesecurities_mdgw_is120_v0_63.tradsesmode.dissect(buffer, index, packet, parent)

  -- TradeDate: 4 Byte Unsigned Fixed Width Integer
  index, tradedate = sse_ssesecurities_mdgw_is120_v0_63.tradedate.dissect(buffer, index, packet, parent)

  -- LastUpdateTime: 4 Byte Unsigned Fixed Width Integer
  index, lastupdatetime = sse_ssesecurities_mdgw_is120_v0_63.lastupdatetime.dissect(buffer, index, packet, parent)

  -- MDStreamID: 5 Byte Ascii String Enum with 17 values
  index, mdstreamid = sse_ssesecurities_mdgw_is120_v0_63.mdstreamid.dissect(buffer, index, packet, parent)

  -- SecurityID: 8 Byte Ascii String
  index, securityid = sse_ssesecurities_mdgw_is120_v0_63.securityid.dissect(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = sse_ssesecurities_mdgw_is120_v0_63.symbol.dissect(buffer, index, packet, parent)

  -- PreClosePx: 8 Byte Unsigned Fixed Width Integer
  index, preclosepx = sse_ssesecurities_mdgw_is120_v0_63.preclosepx.dissect(buffer, index, packet, parent)

  -- TotalVolumeTraded: 8 Byte Unsigned Fixed Width Integer
  index, totalvolumetraded = sse_ssesecurities_mdgw_is120_v0_63.totalvolumetraded.dissect(buffer, index, packet, parent)

  -- NumTrades: 8 Byte Unsigned Fixed Width Integer
  index, numtrades = sse_ssesecurities_mdgw_is120_v0_63.numtrades.dissect(buffer, index, packet, parent)

  -- Market Data Snapshot Message TotalValueTraded: 8 Byte Unsigned Fixed Width Integer
  index, market_data_snapshot_message_totalvaluetraded = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_totalvaluetraded.dissect(buffer, index, packet, parent)

  -- TradingPhaseCode: 8 Byte Ascii String
  index, tradingphasecode = sse_ssesecurities_mdgw_is120_v0_63.tradingphasecode.dissect(buffer, index, packet, parent)

  -- Market Data Snapshot Message ExtendFields: Runtime Type with 2 branches
  index = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message_extendfields.dissect(buffer, index, packet, parent, mdstreamid)

  return index
end

-- Dissect: Market Data Snapshot Message
sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_data_snapshot_message, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Status Message
sse_ssesecurities_mdgw_is120_v0_63.market_status_message = {}

-- Size: Market Status Message
sse_ssesecurities_mdgw_is120_v0_63.market_status_message.size =
  sse_ssesecurities_mdgw_is120_v0_63.market_status_message_securitytype.size + 
  sse_ssesecurities_mdgw_is120_v0_63.tradsesmode.size + 
  sse_ssesecurities_mdgw_is120_v0_63.tradingsessionid.size + 
  sse_ssesecurities_mdgw_is120_v0_63.totnorelatedsym.size

-- Display: Market Status Message
sse_ssesecurities_mdgw_is120_v0_63.market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status Message
sse_ssesecurities_mdgw_is120_v0_63.market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Status Message SecurityType: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, market_status_message_securitytype = sse_ssesecurities_mdgw_is120_v0_63.market_status_message_securitytype.dissect(buffer, index, packet, parent)

  -- TradSesMode: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, tradsesmode = sse_ssesecurities_mdgw_is120_v0_63.tradsesmode.dissect(buffer, index, packet, parent)

  -- TradingSessionID: 8 Byte Ascii String
  index, tradingsessionid = sse_ssesecurities_mdgw_is120_v0_63.tradingsessionid.dissect(buffer, index, packet, parent)

  -- TotNoRelatedSym: 4 Byte Unsigned Fixed Width Integer
  index, totnorelatedsym = sse_ssesecurities_mdgw_is120_v0_63.totnorelatedsym.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Status Message
sse_ssesecurities_mdgw_is120_v0_63.market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.market_status_message, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Message
sse_ssesecurities_mdgw_is120_v0_63.retransmission_message = {}

-- Size: Retransmission Message
sse_ssesecurities_mdgw_is120_v0_63.retransmission_message.size =
  sse_ssesecurities_mdgw_is120_v0_63.retransmission_message_channelno.size + 
  sse_ssesecurities_mdgw_is120_v0_63.resendtype.size + 
  sse_ssesecurities_mdgw_is120_v0_63.applbegseqnum.size + 
  sse_ssesecurities_mdgw_is120_v0_63.applendseqnum.size + 
  sse_ssesecurities_mdgw_is120_v0_63.resendstatus.size + 
  sse_ssesecurities_mdgw_is120_v0_63.rejecttext.size

-- Display: Retransmission Message
sse_ssesecurities_mdgw_is120_v0_63.retransmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Message
sse_ssesecurities_mdgw_is120_v0_63.retransmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Retransmission Message ChannelNO: 2 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, retransmission_message_channelno = sse_ssesecurities_mdgw_is120_v0_63.retransmission_message_channelno.dissect(buffer, index, packet, parent)

  -- ResendType: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, resendtype = sse_ssesecurities_mdgw_is120_v0_63.resendtype.dissect(buffer, index, packet, parent)

  -- ApplBegSeqNum: 8 Byte Unsigned Fixed Width Integer
  index, applbegseqnum = sse_ssesecurities_mdgw_is120_v0_63.applbegseqnum.dissect(buffer, index, packet, parent)

  -- ApplEndSeqNum: 8 Byte Unsigned Fixed Width Integer
  index, applendseqnum = sse_ssesecurities_mdgw_is120_v0_63.applendseqnum.dissect(buffer, index, packet, parent)

  -- ResendStatus: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, resendstatus = sse_ssesecurities_mdgw_is120_v0_63.resendstatus.dissect(buffer, index, packet, parent)

  -- RejectText: 32 Byte Ascii String
  index, rejecttext = sse_ssesecurities_mdgw_is120_v0_63.rejecttext.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Message
sse_ssesecurities_mdgw_is120_v0_63.retransmission_message.dissect = function(buffer, offset, packet, parent)
  if show.public_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.retransmission_message, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.retransmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.retransmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.retransmission_message.fields(buffer, offset, packet, parent)
  end
end

-- Channel Heartbeat
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat = {}

-- Size: Channel Heartbeat
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat.size =
  sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_securitytype.size + 
  sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_channelno.size + 
  sse_ssesecurities_mdgw_is120_v0_63.appllastseqnum.size + 
  sse_ssesecurities_mdgw_is120_v0_63.endofchannel.size

-- Display: Channel Heartbeat
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Channel Heartbeat
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Heartbeat SecurityType: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, channel_heartbeat_securitytype = sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_securitytype.dissect(buffer, index, packet, parent)

  -- Channel Heartbeat ChannelNO: 2 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, channel_heartbeat_channelno = sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat_channelno.dissect(buffer, index, packet, parent)

  -- ApplLastSeqNum: 8 Byte Unsigned Fixed Width Integer
  index, appllastseqnum = sse_ssesecurities_mdgw_is120_v0_63.appllastseqnum.dissect(buffer, index, packet, parent)

  -- EndOfChannel: 1 Byte Ascii String Enum with 2 values
  index, endofchannel = sse_ssesecurities_mdgw_is120_v0_63.endofchannel.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Channel Heartbeat
sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat.dissect = function(buffer, offset, packet, parent)
  if show.public_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.channel_heartbeat, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
sse_ssesecurities_mdgw_is120_v0_63.heartbeat_message = {}

-- Display: Heartbeat Message
sse_ssesecurities_mdgw_is120_v0_63.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
sse_ssesecurities_mdgw_is120_v0_63.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = sse_ssesecurities_mdgw_is120_v0_63.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Logout Message
sse_ssesecurities_mdgw_is120_v0_63.logout_message = {}

-- Size: Logout Message
sse_ssesecurities_mdgw_is120_v0_63.logout_message.size =
  sse_ssesecurities_mdgw_is120_v0_63.sessionstatus.size + 
  sse_ssesecurities_mdgw_is120_v0_63.text.size

-- Display: Logout Message
sse_ssesecurities_mdgw_is120_v0_63.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
sse_ssesecurities_mdgw_is120_v0_63.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SessionStatus: 4 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, sessionstatus = sse_ssesecurities_mdgw_is120_v0_63.sessionstatus.dissect(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index, text = sse_ssesecurities_mdgw_is120_v0_63.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
sse_ssesecurities_mdgw_is120_v0_63.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.logout_message, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
sse_ssesecurities_mdgw_is120_v0_63.logon_message = {}

-- Size: Logon Message
sse_ssesecurities_mdgw_is120_v0_63.logon_message.size =
  sse_ssesecurities_mdgw_is120_v0_63.sendercompid.size + 
  sse_ssesecurities_mdgw_is120_v0_63.targetcompid.size + 
  sse_ssesecurities_mdgw_is120_v0_63.heartbtint.size + 
  sse_ssesecurities_mdgw_is120_v0_63.applverid.size

-- Display: Logon Message
sse_ssesecurities_mdgw_is120_v0_63.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
sse_ssesecurities_mdgw_is120_v0_63.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SenderCompID: 32 Byte Ascii String
  index, sendercompid = sse_ssesecurities_mdgw_is120_v0_63.sendercompid.dissect(buffer, index, packet, parent)

  -- TargetCompID: 32 Byte Ascii String
  index, targetcompid = sse_ssesecurities_mdgw_is120_v0_63.targetcompid.dissect(buffer, index, packet, parent)

  -- HeartBtInt: 2 Byte Unsigned Fixed Width Integer
  index, heartbtint = sse_ssesecurities_mdgw_is120_v0_63.heartbtint.dissect(buffer, index, packet, parent)

  -- ApplVerID: 8 Byte Ascii String
  index, applverid = sse_ssesecurities_mdgw_is120_v0_63.applverid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
sse_ssesecurities_mdgw_is120_v0_63.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.logon_message, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
sse_ssesecurities_mdgw_is120_v0_63.message_body = {}

-- Dispatch: Message Body
sse_ssesecurities_mdgw_is120_v0_63.message_body.dispatch = {
  ["S001"] = sse_ssesecurities_mdgw_is120_v0_63.logon_message.dissect,
  ["S002"] = sse_ssesecurities_mdgw_is120_v0_63.logout_message.dissect,
  ["S003"] = sse_ssesecurities_mdgw_is120_v0_63.heartbeat_message.dissect,
  ["P001"] = sse_ssesecurities_mdgw_is120_v0_63.channel_heartbeat.dissect,
  ["P002"] = sse_ssesecurities_mdgw_is120_v0_63.retransmission_message.dissect,
  ["M101"] = sse_ssesecurities_mdgw_is120_v0_63.market_status_message.dissect,
  ["M102"] = sse_ssesecurities_mdgw_is120_v0_63.market_data_snapshot_message.dissect,
  ["M201"] = sse_ssesecurities_mdgw_is120_v0_63.tickbytick_market_data_message.dissect,
}

-- Dissect: Message Body
sse_ssesecurities_mdgw_is120_v0_63.message_body.dissect = function(buffer, offset, packet, parent, msgtype)
  local dissect = sse_ssesecurities_mdgw_is120_v0_63.message_body.dispatch[msgtype]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Standard Header
sse_ssesecurities_mdgw_is120_v0_63.standard_header = {}

-- Size: Standard Header
sse_ssesecurities_mdgw_is120_v0_63.standard_header.size =
  sse_ssesecurities_mdgw_is120_v0_63.msgtype.size + 
  sse_ssesecurities_mdgw_is120_v0_63.sendingtime.size + 
  sse_ssesecurities_mdgw_is120_v0_63.msgseqnum.size + 
  sse_ssesecurities_mdgw_is120_v0_63.bodylength.size

-- Display: Standard Header
sse_ssesecurities_mdgw_is120_v0_63.standard_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Standard Header
sse_ssesecurities_mdgw_is120_v0_63.standard_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- MsgType: 4 Byte Ascii String Enum with 8 values
  index, msgtype = sse_ssesecurities_mdgw_is120_v0_63.msgtype.dissect(buffer, index, packet, parent)

  -- SendingTime: 8 Byte Unsigned Fixed Width Integer
  index, sendingtime = sse_ssesecurities_mdgw_is120_v0_63.sendingtime.dissect(buffer, index, packet, parent)

  -- MsgSeqNum: 8 Byte Unsigned Fixed Width Integer
  index, msgseqnum = sse_ssesecurities_mdgw_is120_v0_63.msgseqnum.dissect(buffer, index, packet, parent)

  -- BodyLength: 4 Byte Unsigned Fixed Width Integer
  index, bodylength = sse_ssesecurities_mdgw_is120_v0_63.bodylength.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Standard Header
sse_ssesecurities_mdgw_is120_v0_63.standard_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.standard_header, buffer(offset, 0))
    local index = sse_ssesecurities_mdgw_is120_v0_63.standard_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = sse_ssesecurities_mdgw_is120_v0_63.standard_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return sse_ssesecurities_mdgw_is120_v0_63.standard_header.fields(buffer, offset, packet, parent)
  end
end

-- Binary Message
sse_ssesecurities_mdgw_is120_v0_63.binary_message = {}

-- Display: Binary Message
sse_ssesecurities_mdgw_is120_v0_63.binary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Message
sse_ssesecurities_mdgw_is120_v0_63.binary_message.fields = function(buffer, offset, packet, parent, size_of_binary_message)
  local index = offset

  -- Standard Header: Struct of 4 fields
  index, standard_header = sse_ssesecurities_mdgw_is120_v0_63.standard_header.dissect(buffer, index, packet, parent)

  -- Dependency element: MsgType
  local msgtype = trim_right_spaces(buffer(index - 24, 4):string(sse_ssesecurities_mdgw_is120_v0_63.text_encoding))

  -- Message Body: Runtime Type with 8 branches
  index = sse_ssesecurities_mdgw_is120_v0_63.message_body.dissect(buffer, index, packet, parent, msgtype)

  -- Standard Trailer: Struct of 1 fields
  index, standard_trailer = sse_ssesecurities_mdgw_is120_v0_63.standard_trailer.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Message
sse_ssesecurities_mdgw_is120_v0_63.binary_message.dissect = function(buffer, offset, packet, parent, size_of_binary_message)
  local index = offset + size_of_binary_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63.fields.binary_message, buffer(offset, 0))
    local current = sse_ssesecurities_mdgw_is120_v0_63.binary_message.fields(buffer, offset, packet, parent, size_of_binary_message)
    parent:set_len(size_of_binary_message)
    local display = sse_ssesecurities_mdgw_is120_v0_63.binary_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    sse_ssesecurities_mdgw_is120_v0_63.binary_message.fields(buffer, offset, packet, parent, size_of_binary_message)

    return index
  end
end

-- Remaining Bytes For: Binary Message
local binary_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < sse_ssesecurities_mdgw_is120_v0_63.standard_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 20, 4):uint() + 28

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
sse_ssesecurities_mdgw_is120_v0_63.packet = {}

-- Verify required size of Tcp packet
sse_ssesecurities_mdgw_is120_v0_63.packet.requiredsize = function(buffer)
  return buffer:len() >= sse_ssesecurities_mdgw_is120_v0_63.standard_header.size
end

-- Dissect Packet
sse_ssesecurities_mdgw_is120_v0_63.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Binary Message
  local end_of_payload = buffer:len()

  -- Binary Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_binary_message = binary_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_binary_message):tvb()
      index = sse_ssesecurities_mdgw_is120_v0_63.binary_message.dissect(frame, index, packet, parent, size_of_binary_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return end_of_payload
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_sse_ssesecurities_mdgw_is120_v0_63.init()
end

-- Dissector for Sse SseSecurities Mdgw Is120 0.63
function omi_sse_ssesecurities_mdgw_is120_v0_63.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_sse_ssesecurities_mdgw_is120_v0_63.name

  -- Dissect protocol
  local protocol = parent:add(omi_sse_ssesecurities_mdgw_is120_v0_63, buffer(), omi_sse_ssesecurities_mdgw_is120_v0_63.description, "("..buffer:len().." Bytes)")
  return sse_ssesecurities_mdgw_is120_v0_63.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Sse SseSecurities Mdgw Is120 0.63 (Tcp)
local function omi_sse_ssesecurities_mdgw_is120_v0_63_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not sse_ssesecurities_mdgw_is120_v0_63.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_sse_ssesecurities_mdgw_is120_v0_63
  omi_sse_ssesecurities_mdgw_is120_v0_63.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Sse SseSecurities Mdgw Is120 0.63
omi_sse_ssesecurities_mdgw_is120_v0_63:register_heuristic("tcp", omi_sse_ssesecurities_mdgw_is120_v0_63_tcp_heuristic)

-- Register Sse SseSecurities Mdgw Is120 0.63 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_sse_ssesecurities_mdgw_is120_v0_63)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Shanghai Stock Exchange
--   Version: 0.63
--   Date: Friday, September 18, 2026
--   Specification: 03ec823b9825422ba4c74e2f5cb3c42e.pdf
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
