-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis AquisStockExchange RealTime Amd 1.2.3 Protocol
local omi_aquis_aquisstockexchange_realtime_amd_v1_2_3 = Proto("Omi.Aquis.AquisStockExchange.RealTime.Amd.v1.2.3", "Aquis AquisStockExchange RealTime Amd 1.2.3")

-- Protocol table
local aquis_aquisstockexchange_realtime_amd_v1_2_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis AquisStockExchange RealTime Amd 1.2.3 Fields
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "aquis.aquisstockexchange.realtime.amd.v1.2.3.algorithmicindicator", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x01000000)
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.benchmark_reference_price_indicator = ProtoField.new("Benchmark Reference Price Indicator", "aquis.aquisstockexchange.realtime.amd.v1.2.3.benchmarkreferencepriceindicator", ftypes.UINT32, {[1]="Benchmark Trade", [2]="Reference Price Trade", [3]="No Benchmark Or Ref Price"}, base.DEC, 0x00030000, "Benchmark or reference price indicator")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.bid_price = ProtoField.new("Bid Price", "aquis.aquisstockexchange.realtime.amd.v1.2.3.bidprice", ftypes.DOUBLE, nil, nil, nil, "The price of the bid shares")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.bid_quantity = ProtoField.new("Bid Quantity", "aquis.aquisstockexchange.realtime.amd.v1.2.3.bidquantity", ftypes.UINT32, nil, nil, nil, "Number of available bid shares")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.binary_mmt = ProtoField.new("Binary Mmt", "aquis.aquisstockexchange.realtime.amd.v1.2.3.binarymmt", ftypes.STRING, nil, nil, nil, "4-byte field representing the applicable MMT flags on Trade messages")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.crossing_trade = ProtoField.new("Crossing Trade", "aquis.aquisstockexchange.realtime.amd.v1.2.3.crossingtrade", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00002000)
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.currency = ProtoField.new("Currency", "aquis.aquisstockexchange.realtime.amd.v1.2.3.currency", ftypes.STRING, nil, nil, nil, "Trading currency for the security")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.deferral_type = ProtoField.new("Deferral Type", "aquis.aquisstockexchange.realtime.amd.v1.2.3.deferraltype", ftypes.UINT32, {[0]="None Apply"}, base.DEC, 0x10000000)
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.dividend = ProtoField.new("Dividend", "aquis.aquisstockexchange.realtime.amd.v1.2.3.dividend", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00040000)
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "aquis.aquisstockexchange.realtime.amd.v1.2.3.duplicativeindicator", ftypes.UINT32, {[0]="Unique", [1]="Duplicative"}, base.DEC, 0x20000000)
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.execution_price = ProtoField.new("Price", "aquis.aquisstockexchange.realtime.amd.v1.2.3.executionprice", ftypes.DOUBLE, nil, nil, nil, "The execution price")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.indicative_price = ProtoField.new("Indicative Price", "aquis.aquisstockexchange.realtime.amd.v1.2.3.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Indicative auction price")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.isin = ProtoField.new("Isin", "aquis.aquisstockexchange.realtime.amd.v1.2.3.isin", ftypes.STRING, nil, nil, nil, "ISIN for the security")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.market_flags = ProtoField.new("Market Flags", "aquis.aquisstockexchange.realtime.amd.v1.2.3.marketflags", ftypes.STRING, nil, nil, nil, "Market status flags")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.market_mechanism = ProtoField.new("Market Mechanism", "aquis.aquisstockexchange.realtime.amd.v1.2.3.marketmechanism", ftypes.UINT32, {[1]="Central Limit Order Book", [2]="Quote Driven Market", [3]="Dark Order Book", [4]="Off Book", [5]="Periodic Auction", [6]="Rfq", [7]="Other"}, base.DEC, 0x00000007)
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.match_vol = ProtoField.new("Match Vol", "aquis.aquisstockexchange.realtime.amd.v1.2.3.matchvol", ftypes.UINT32, nil, nil, nil, "Indicative matched volume")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.message_count = ProtoField.new("Message Count", "aquis.aquisstockexchange.realtime.amd.v1.2.3.messagecount", ftypes.UINT8, nil, nil, nil, "number of messages (n) in this packet")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.mic = ProtoField.new("Mic", "aquis.aquisstockexchange.realtime.amd.v1.2.3.mic", ftypes.STRING, nil, nil, nil, "MIC for the security's market of listing")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.modification_indicator = ProtoField.new("Modification Indicator", "aquis.aquisstockexchange.realtime.amd.v1.2.3.modificationindicator", ftypes.UINT32, {[1]="Trade Cancelation", [2]="Trade Amendment", [3]="New Trade"}, base.DEC, 0x0000C000)
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.msg_length = ProtoField.new("Msg Length", "aquis.aquisstockexchange.realtime.amd.v1.2.3.msglength", ftypes.UINT8, nil, nil, nil, "Length of market data message, including header")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.msg_type = ProtoField.new("Msg Type", "aquis.aquisstockexchange.realtime.amd.v1.2.3.msgtype", ftypes.UINT8, nil, nil, nil, "Message type identifier")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.name = ProtoField.new("Name", "aquis.aquisstockexchange.realtime.amd.v1.2.3.name", ftypes.STRING, nil, nil, nil, "Short name")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.negotiation_indicator_or_pre_trade_transparency_waiver = ProtoField.new("Negotiation Indicator Or Pre Trade Transparency Waiver", "aquis.aquisstockexchange.realtime.amd.v1.2.3.negotiationindicatororpretradetransparencywaiver", ftypes.UINT32, {[0]="Negotiated Trade", [1]="Negotiated Trade In Liquid Instruments", [2]="Negotiated Trade In Illiquid Instruments", [3]="Negotiated Trade Other Than Current Market Price", [4]="No Negotiated Trade", [5]="Si Illiquid Instruments", [6]="Si Above Standard Market Size", [7]="Ilqd And Size"}, base.DEC, 0x00001C00, "Negotiation indicator or pre-trade transparency waiver")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.off_book_automation = ProtoField.new("Off Book Automation", "aquis.aquisstockexchange.realtime.amd.v1.2.3.offbookautomation", ftypes.UINT32, {[1]="Unspecified", [2]="Off Book Non Automated", [3]="Off Book Automated"}, base.DEC, 0x00180000)
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.offer_price = ProtoField.new("Offer Price", "aquis.aquisstockexchange.realtime.amd.v1.2.3.offerprice", ftypes.DOUBLE, nil, nil, nil, "The price of the offer shares")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.offer_quantity = ProtoField.new("Offer Quantity", "aquis.aquisstockexchange.realtime.amd.v1.2.3.offerquantity", ftypes.UINT32, nil, nil, nil, "Number of available offer shares")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.order_ref = ProtoField.new("Order Ref", "aquis.aquisstockexchange.realtime.amd.v1.2.3.orderref", ftypes.UINT32, nil, nil, nil, "Unique order reference number for the day")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_price = ProtoField.new("Orig Price", "aquis.aquisstockexchange.realtime.amd.v1.2.3.origprice", ftypes.DOUBLE, nil, nil, nil, "Previous accepted trade report message (not necessarily the initial trade report message) execution price")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_quantity = ProtoField.new("Orig Quantity", "aquis.aquisstockexchange.realtime.amd.v1.2.3.origquantity", ftypes.UINT32, nil, nil, nil, "Previous accepted trade report message (not necessarily the initial trade report message) number of shares traded")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_security_id = ProtoField.new("Orig Security Id", "aquis.aquisstockexchange.realtime.amd.v1.2.3.origsecurityid", ftypes.UINT16, nil, nil, nil, "Previous accepted trade report message (not necessarily the initial trade report message) numeric identifier of the relevant security")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_timestamp = ProtoField.new("Orig Timestamp", "aquis.aquisstockexchange.realtime.amd.v1.2.3.origtimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Previous accepted trade report message (not necessarily the initial trade report message) timestamp of market data event")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_timestamp_utc = ProtoField.new("Orig Timestamp", "aquis.aquisstockexchange.realtime.amd.v1.2.3.origtimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Previous accepted trade report message (not necessarily the initial trade report message) timestamp of market data event")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_trade_ref = ProtoField.new("Orig Trade Ref", "aquis.aquisstockexchange.realtime.amd.v1.2.3.origtraderef", ftypes.UINT32, nil, nil, nil, "Previous accepted trade report message (not necessarily the initial trade report message) reference number")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_trade_type = ProtoField.new("Orig Trade Type", "aquis.aquisstockexchange.realtime.amd.v1.2.3.origtradetype", ftypes.UINT8, nil, nil, nil, "Previous accepted trade report message (not necessarily the initial trade report message) code identifying type of trade, see section 3.6.2 for values")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_transact_time = ProtoField.new("Orig Transact Time", "aquis.aquisstockexchange.realtime.amd.v1.2.3.origtransacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time when the original transaction occurred")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_transact_time_utc = ProtoField.new("Orig Transact Time", "aquis.aquisstockexchange.realtime.amd.v1.2.3.origtransacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time when the original transaction occurred")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.pre_open_close = ProtoField.new("pre-open/close", "aquis.aquisstockexchange.realtime.amd.v1.2.3.preopenclose", ftypes.UINT8, {[0]="Not A Pre Phase", [1]="Pre Phase"}, base.DEC, 0x08, "Pre-open or pre-close market phase, read with the trading bit: pre-open when trading is closed, pre-close when it is open")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.price = ProtoField.new("Price", "aquis.aquisstockexchange.realtime.amd.v1.2.3.price", ftypes.DOUBLE, nil, nil, nil, "The price of the order")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.price_formation_discovery_process = ProtoField.new("Price Formation Discovery Process", "aquis.aquisstockexchange.realtime.amd.v1.2.3.priceformationdiscoveryprocess", ftypes.UINT32, {[1]="Plain Vanilla", [2]="Non Price Forming", [3]="Trade Not Contributing To Price Discovery", [4]="Price Not Currently Available But Pending"}, base.DEC, 0x00E00000, "Price formation or discovery process")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.price_type = ProtoField.new("Price Type", "aquis.aquisstockexchange.realtime.amd.v1.2.3.pricetype", ftypes.UINT8, nil, nil, nil, "Whether the price is the opening or the closing price")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.publication_mode_post_trade_deferral = ProtoField.new("Publication Mode Post Trade Deferral", "aquis.aquisstockexchange.realtime.amd.v1.2.3.publicationmodeposttradedeferral", ftypes.UINT32, {[1]="Immediate Publication", [2]="Non Immediate Publication", [3]="Lrgs", [4]="Ilqd", [5]="Size", [6]="Ilqd And Size", [7]="Ilqd And Lrgs"}, base.DEC, 0x0E000000, "Publication mode or post-trade deferral")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.quantity = ProtoField.new("Quantity", "aquis.aquisstockexchange.realtime.amd.v1.2.3.quantity", ftypes.UINT32, nil, nil, nil, "Number of shares being added to the book")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.received_timestamp = ProtoField.new("Timestamp", "aquis.aquisstockexchange.realtime.amd.v1.2.3.receivedtimestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "System received timestamp")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.received_timestamp_utc = ProtoField.new("Timestamp", "aquis.aquisstockexchange.realtime.amd.v1.2.3.receivedtimestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "System received timestamp")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.remaining_quantity = ProtoField.new("Quantity", "aquis.aquisstockexchange.realtime.amd.v1.2.3.remainingquantity", ftypes.UINT32, nil, nil, nil, "Number of shares remaining in the book")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.security_id = ProtoField.new("Security Id", "aquis.aquisstockexchange.realtime.amd.v1.2.3.securityid", ftypes.UINT16, nil, nil, nil, "Numeric identifier of the relevant security")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.sender_id = ProtoField.new("Sender Id", "aquis.aquisstockexchange.realtime.amd.v1.2.3.senderid", ftypes.STRING, nil, nil, nil, "SenderID of the trader")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.seq_no = ProtoField.new("Seq No", "aquis.aquisstockexchange.realtime.amd.v1.2.3.seqno", ftypes.UINT32, nil, nil, nil, "Sequence number of this message in the market data stream for the current trading day")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.side = ProtoField.new("Side", "aquis.aquisstockexchange.realtime.amd.v1.2.3.side", ftypes.UINT8, nil, nil, nil, "Side of the order")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.statistics_price = ProtoField.new("Price", "aquis.aquisstockexchange.realtime.amd.v1.2.3.statisticsprice", ftypes.DOUBLE, nil, nil, nil, "Price of security")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.threshold = ProtoField.new("Threshold", "aquis.aquisstockexchange.realtime.amd.v1.2.3.threshold", ftypes.DOUBLE, nil, nil, nil, "The price threshold at which this tick data applies")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.tick_size = ProtoField.new("Tick Size", "aquis.aquisstockexchange.realtime.amd.v1.2.3.ticksize", ftypes.DOUBLE, nil, nil, nil, "The tick size (price increment)")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.tick_table_id = ProtoField.new("Tick Table Id", "aquis.aquisstockexchange.realtime.amd.v1.2.3.ticktableid", ftypes.UINT8, nil, nil, nil, "Numeric identifier for this tick table or static tick")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.timestamp = ProtoField.new("Timestamp", "aquis.aquisstockexchange.realtime.amd.v1.2.3.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Timestamp of this market data event")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.timestamp_utc = ProtoField.new("Timestamp", "aquis.aquisstockexchange.realtime.amd.v1.2.3.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp of this market data event")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_ref = ProtoField.new("Trade Ref", "aquis.aquisstockexchange.realtime.amd.v1.2.3.traderef", ftypes.UINT32, nil, nil, nil, "Trade reference number")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_type = ProtoField.new("Trade Type", "aquis.aquisstockexchange.realtime.amd.v1.2.3.tradetype", ftypes.UINT8, nil, nil, nil, "Code identifying type of trade")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.traded_quantity = ProtoField.new("Quantity", "aquis.aquisstockexchange.realtime.amd.v1.2.3.tradedquantity", ftypes.UINT32, nil, nil, nil, "Number of shares traded")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trader_id = ProtoField.new("Trader Id", "aquis.aquisstockexchange.realtime.amd.v1.2.3.traderid", ftypes.UINT16, nil, nil, nil, "Numeric identifier of the market maker quoting")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trading = ProtoField.new("Trading", "aquis.aquisstockexchange.realtime.amd.v1.2.3.trading", ftypes.UINT8, {[0]="Continuous Trading Closed", [1]="Continuous Trading Open"}, base.DEC, 0x01, "Continuous trading open or closed, which also states whether AoD is available")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trading_mode = ProtoField.new("Trading Mode", "aquis.aquisstockexchange.realtime.amd.v1.2.3.tradingmode", ftypes.UINT32, {[1]="Undefined Auction", [2]="Opening Auction", [3]="Closing Auction", [4]="Intraday Auction", [5]="Unscheduled Auction", [6]="Continuous Trading", [7]="At Market Close", [8]="Out Of Main Session", [9]="On Exchange Trade Reporting", [10]="Off Exchange Trade Reporting", [11]="Systematic Internalizer Trade Reporting"}, base.DEC, 0x00000078)
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trading_status = ProtoField.new("Trading Status", "aquis.aquisstockexchange.realtime.amd.v1.2.3.tradingstatus", ftypes.UINT8, nil, nil, nil, "Trading status of the security")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.transact_time = ProtoField.new("Transact Time", "aquis.aquisstockexchange.realtime.amd.v1.2.3.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Date and time when the transaction occurred")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.transact_time_utc = ProtoField.new("Transact Time", "aquis.aquisstockexchange.realtime.amd.v1.2.3.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Date and time when the transaction occurred")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.transaction_category = ProtoField.new("Transaction Category", "aquis.aquisstockexchange.realtime.amd.v1.2.3.transactioncategory", ftypes.UINT32, {[1]="Dark Trade", [2]="Trade That Has Received Price Improvement", [3]="Package Trade", [4]="Exchange For Physicals", [5]="None Apply"}, base.DEC, 0x00000380)
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.umtf = ProtoField.new("Umtf", "aquis.aquisstockexchange.realtime.amd.v1.2.3.umtf", ftypes.STRING, nil, nil, nil, "This field is not applicable to AQSE")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.unused_2 = ProtoField.new("Unused 2", "aquis.aquisstockexchange.realtime.amd.v1.2.3.unused2", ftypes.UINT32, nil, base.DEC, 0xC0000000, "Spare")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.unused_4 = ProtoField.new("Unused 4", "aquis.aquisstockexchange.realtime.amd.v1.2.3.unused4", ftypes.UINT8, nil, base.DEC, 0xF0, "Reserved")

-- Aquis AquisStockExchange RealTime Amd 1.2.3 Framing
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.message = ProtoField.new("Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.message", ftypes.STRING, nil, nil, nil, "Aquis Amd Message")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.message_header = ProtoField.new("Message Header", "aquis.aquisstockexchange.realtime.amd.v1.2.3.messageheader", ftypes.STRING, nil, nil, nil, "Aquis market data message header")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.packet = ProtoField.new("Packet", "aquis.aquisstockexchange.realtime.amd.v1.2.3.packet", ftypes.STRING, nil, nil, nil, "Aquis Udp Packet")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.packet_header = ProtoField.new("Packet Header", "aquis.aquisstockexchange.realtime.amd.v1.2.3.packetheader", ftypes.STRING, nil, nil, nil, "Aquis udp packet header")

-- Aquis AquisStockExchange RealTime 1.2.3 Application Messages
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.aod_update_message = ProtoField.new("Aod Update Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.aodupdatemessage", ftypes.STRING, nil, nil, nil, "During the AoD this message is used to publish the indicative price and indicative matched volume. The first AoD update message signals the start of an auction.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "The Heartbeat message carries no data; it is simply a message header with msgType of 1.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.order_add_message = ProtoField.new("Order Add Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.orderaddmessage", ftypes.STRING, nil, nil, nil, "The Order Add message is published when order quantity is posted to the order book for a particular security. This message is only applicable to continuous trading.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.ordercancelmessage", ftypes.STRING, nil, nil, nil, "The Order Cancel message is published when a visible order is removed from the book. This message is only applicable to continuous trading.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.order_modify_message = ProtoField.new("Order Modify Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.ordermodifymessage", ftypes.STRING, nil, nil, nil, "The Order Modify message is published when a visible order is modified by the client (change of price and/or quantity). The order reference number remains the same on order modification. This message is only applicable to continuous trading.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.quote_add_replace_message = ProtoField.new("Quote Add Replace Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.quoteaddreplacemessage", ftypes.STRING, nil, nil, nil, "The Quote Add/Replace message is published when a quote is available for a particular security.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.quote_cancel_message = ProtoField.new("Quote Cancel Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.quotecancelmessage", ftypes.STRING, nil, nil, nil, "The Quote Cancel message is published when a quote is removed for a particular security. The quote may have been cancelled by the trading Member or by the Aquis support team or the market may have closed.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.security_definition_message = ProtoField.new("Security Definition Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.securitydefinitionmessage", ftypes.STRING, nil, nil, nil, "A series of Security Definition messages are published pre-market to identify the securities traded on AQSE (those relevant to the particular feed e.g. Euronext securities).")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.security_statistics_message = ProtoField.new("Security Statistics Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.securitystatisticsmessage", ftypes.STRING, nil, nil, nil, "The Security Statistics message is published to disseminate the opening and closing prices of a security.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.security_status_message = ProtoField.new("Security Status Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.securitystatusmessage", ftypes.STRING, nil, nil, nil, "The Security Status message is published when the trading status of a security changes or when there is a change to the status of the market on AQSE to which the security belongs.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.tick_table_data_message = ProtoField.new("Tick Table Data Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.ticktabledatamessage", ftypes.STRING, nil, nil, nil, "A series of Tick Table Data messages are published pre-market to specify the dynamic tick tables and static ticks that apply to the securities traded on AQSE.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.tradebustmessage", ftypes.STRING, nil, nil, nil, "If a trade has been declared erroneous by AQSE then a Trade Bust message is published. This message is only applicable to order generated trades.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_message = ProtoField.new("Trade Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.trademessage", ftypes.STRING, nil, nil, nil, "Whenever an order trades, partially or fully, a Trade message is published.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_report_cancel_message = ProtoField.new("Trade Report Cancel Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.tradereportcancelmessage", ftypes.STRING, nil, nil, nil, "Whenever a previously published trade report is cancelled, a Trade Report Cancel message is published. Members can cancel trades for up to five business days from the day on which the trade was reported.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_report_message = ProtoField.new("Trade Report Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.tradereportmessage", ftypes.STRING, nil, nil, nil, "Whenever a new trade report is submitted to AQSE, a Trade Report message is published.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_report_modify_message = ProtoField.new("Trade Report Modify Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.tradereportmodifymessage", ftypes.STRING, nil, nil, nil, "Whenever a previously published trade report is modified, a Trade Report Modify message is published. Members can modify trades for up to five business days from the day on which the trade was reported.")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trader_definition_message = ProtoField.new("Trader Definition Message", "aquis.aquisstockexchange.realtime.amd.v1.2.3.traderdefinitionmessage", ftypes.STRING, nil, nil, nil, "A series of Trader Definition messages are published pre-market to identify the quote originators.")

-- Aquis AquisStockExchange RealTime Amd 1.2.3 Generated Fields
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.message_index = ProtoField.new("Message Index", "aquis.aquisstockexchange.realtime.amd.v1.2.3.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Aquis AquisStockExchange RealTime Amd 1.2.3 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
aquis_aquisstockexchange_realtime_amd_v1_2_3.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aquis AquisStockExchange RealTime Amd 1.2.3 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Aquis AquisStockExchange RealTime Amd 1.2.3 Show Options
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_application_messages then
    show.application_messages = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_application_messages
  end
  if show.headers ~= omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_headers then
    show.headers = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_headers
  end
  if show.structs ~= omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_structs then
    show.structs = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_structs
  end
  if show.indexes ~= omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_indexes then
    show.indexes = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.show_indexes
  end
  if aquis_aquisstockexchange_realtime_amd_v1_2_3.absolute_time_base ~= omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.absolute_time_base then
    aquis_aquisstockexchange_realtime_amd_v1_2_3.absolute_time_base = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Aquis AquisStockExchange RealTime Amd 1.2.3 Fields
-----------------------------------------------------------------------

-- Bid Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_price = {}

-- Size: Bid Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_price.size = 8

-- Display: Bid Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Bid Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_price.translate(raw)
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_quantity = {}

-- Size: Bid Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_quantity.size = 4

-- Display: Bid Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_quantity.display = function(value)
  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Currency
aquis_aquisstockexchange_realtime_amd_v1_2_3.currency = {}

-- Size: Currency
aquis_aquisstockexchange_realtime_amd_v1_2_3.currency.size = 3

-- Display: Currency
aquis_aquisstockexchange_realtime_amd_v1_2_3.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
aquis_aquisstockexchange_realtime_amd_v1_2_3.currency.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.currency.size
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

  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.currency, range, value, display)

  return offset + length, value
end

-- Execution Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price = {}

-- Size: Execution Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.size = 8

-- Display: Execution Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.display = function(value)
  return "Price: "..value
end

-- Translate: Execution Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Execution Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.translate(raw)
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.execution_price, range, value, display)

  return offset + length, value
end

-- Indicative Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.indicative_price = {}

-- Size: Indicative Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.indicative_price.size = 8

-- Display: Indicative Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.indicative_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Indicative Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisstockexchange_realtime_amd_v1_2_3.indicative_price.translate(raw)
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Isin
aquis_aquisstockexchange_realtime_amd_v1_2_3.isin = {}

-- Size: Isin
aquis_aquisstockexchange_realtime_amd_v1_2_3.isin.size = 12

-- Display: Isin
aquis_aquisstockexchange_realtime_amd_v1_2_3.isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin: No Value"
  end

  return "Isin: "..value
end

-- Dissect: Isin
aquis_aquisstockexchange_realtime_amd_v1_2_3.isin.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.isin.size
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

  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.isin, range, value, display)

  return offset + length, value
end

-- Match Vol
aquis_aquisstockexchange_realtime_amd_v1_2_3.match_vol = {}

-- Size: Match Vol
aquis_aquisstockexchange_realtime_amd_v1_2_3.match_vol.size = 4

-- Display: Match Vol
aquis_aquisstockexchange_realtime_amd_v1_2_3.match_vol.display = function(value)
  return "Match Vol: "..value
end

-- Dissect: Match Vol
aquis_aquisstockexchange_realtime_amd_v1_2_3.match_vol.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.match_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.match_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.match_vol, range, value, display)

  return offset + length, value
end

-- Message Count
aquis_aquisstockexchange_realtime_amd_v1_2_3.message_count = {}

-- Size: Message Count
aquis_aquisstockexchange_realtime_amd_v1_2_3.message_count.size = 1

-- Display: Message Count
aquis_aquisstockexchange_realtime_amd_v1_2_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
aquis_aquisstockexchange_realtime_amd_v1_2_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Mic
aquis_aquisstockexchange_realtime_amd_v1_2_3.mic = {}

-- Size: Mic
aquis_aquisstockexchange_realtime_amd_v1_2_3.mic.size = 4

-- Display: Mic
aquis_aquisstockexchange_realtime_amd_v1_2_3.mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
aquis_aquisstockexchange_realtime_amd_v1_2_3.mic.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.mic.size
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

  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.mic, range, value, display)

  return offset + length, value
end

-- Msg Length
aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_length = {}

-- Size: Msg Length
aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_length.size = 1

-- Display: Msg Length
aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_type = {}

-- Size: Msg Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_type.size = 1

-- Display: Msg Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_type.labels = {
  [1] = "Msg Type: Heartbeat Message (1)",
  [2] = "Msg Type: Order Add Message (2)",
  [3] = "Msg Type: Order Cancel Message (3)",
  [4] = "Msg Type: Order Modify Message (4)",
  [20] = "Msg Type: Quote Add Replace Message (20)",
  [21] = "Msg Type: Quote Cancel Message (21)",
  [5] = "Msg Type: Trade Message (5)",
  [25] = "Msg Type: Trade Report Message (25)",
  [26] = "Msg Type: Trade Report Modify Message (26)",
  [27] = "Msg Type: Trade Report Cancel Message (27)",
  [6] = "Msg Type: Trade Bust Message (6)",
  [22] = "Msg Type: Security Statistics Message (22)",
  [23] = "Msg Type: Trader Definition Message (23)",
  [7] = "Msg Type: Tick Table Data Message (7)",
  [8] = "Msg Type: Security Definition Message (8)",
  [9] = "Msg Type: Security Status Message (9)",
  [17] = "Msg Type: Aod Update Message (17)",
}

aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_type.display = function(value)
  return aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Name
aquis_aquisstockexchange_realtime_amd_v1_2_3.name = {}

-- Size: Name
aquis_aquisstockexchange_realtime_amd_v1_2_3.name.size = 10

-- Display: Name
aquis_aquisstockexchange_realtime_amd_v1_2_3.name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Name: No Value"
  end

  return "Name: "..value
end

-- Dissect: Name
aquis_aquisstockexchange_realtime_amd_v1_2_3.name.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.name.size
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

  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.name, range, value, display)

  return offset + length, value
end

-- Offer Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_price = {}

-- Size: Offer Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_price.size = 8

-- Display: Offer Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Offer Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_price.translate(raw)
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Offer Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_quantity = {}

-- Size: Offer Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_quantity.size = 4

-- Display: Offer Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_quantity.display = function(value)
  return "Offer Quantity: "..value
end

-- Dissect: Offer Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.offer_quantity, range, value, display)

  return offset + length, value
end

-- Order Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref = {}

-- Size: Order Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.size = 4

-- Display: Order Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Order Ref: No Value"
  end

  return "Order Ref: "..value
end

-- Dissect: Order Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Orig Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_price = {}

-- Size: Orig Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_price.size = 8

-- Display: Orig Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_price.display = function(value)
  return "Orig Price: "..value
end

-- Translate: Orig Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Orig Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_price.translate(raw)
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_price, range, value, display)

  return offset + length, value
end

-- Orig Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_quantity = {}

-- Size: Orig Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_quantity.size = 4

-- Display: Orig Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_quantity.display = function(value)
  return "Orig Quantity: "..value
end

-- Dissect: Orig Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_quantity, range, value, display)

  return offset + length, value
end

-- Orig Security Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_security_id = {}

-- Size: Orig Security Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_security_id.size = 2

-- Display: Orig Security Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_security_id.display = function(value)
  return "Orig Security Id: "..value
end

-- Dissect: Orig Security Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_security_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_security_id, range, value, display)

  return offset + length, value
end

-- Orig Timestamp
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_timestamp = {}

-- Size: Orig Timestamp
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_timestamp.size = 8

-- Dissect: Orig Timestamp
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_timestamp
  if aquis_aquisstockexchange_realtime_amd_v1_2_3.absolute_time_base == 1 then field = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Orig Trade Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_ref = {}

-- Size: Orig Trade Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_ref.size = 4

-- Display: Orig Trade Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_ref.display = function(value)
  return "Orig Trade Ref: "..value
end

-- Dissect: Orig Trade Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_trade_ref, range, value, display)

  return offset + length, value
end

-- Orig Trade Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_type = {}

-- Size: Orig Trade Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_type.size = 1

-- Display: Orig Trade Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_type.display = function(value)
  return "Orig Trade Type: "..value
end

-- Dissect: Orig Trade Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_trade_type, range, value, display)

  return offset + length, value
end

-- Orig Transact Time
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_transact_time = {}

-- Size: Orig Transact Time
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_transact_time.size = 8

-- Dissect: Orig Transact Time
aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_transact_time.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_transact_time
  if aquis_aquisstockexchange_realtime_amd_v1_2_3.absolute_time_base == 1 then field = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.orig_transact_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.price = {}

-- Size: Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.price.size = 8

-- Display: Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisstockexchange_realtime_amd_v1_2_3.price.translate(raw)
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.price, range, value, display)

  return offset + length, value
end

-- Price Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.price_type = {}

-- Size: Price Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.price_type.size = 1

-- Display: Price Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.price_type.labels = {
  [2] = "Price Type: Opening Price (2)",
  [5] = "Price Type: Closing Price (5)",
}

aquis_aquisstockexchange_realtime_amd_v1_2_3.price_type.display = function(value)
  return aquis_aquisstockexchange_realtime_amd_v1_2_3.price_type.labels[value] or "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.price_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.price_type, range, value, display)

  return offset + length, value
end

-- Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.quantity = {}

-- Size: Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.quantity.size = 4

-- Display: Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Received Timestamp
aquis_aquisstockexchange_realtime_amd_v1_2_3.received_timestamp = {}

-- Size: Received Timestamp
aquis_aquisstockexchange_realtime_amd_v1_2_3.received_timestamp.size = 8

-- Dissect: Received Timestamp
aquis_aquisstockexchange_realtime_amd_v1_2_3.received_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.received_timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.received_timestamp
  if aquis_aquisstockexchange_realtime_amd_v1_2_3.absolute_time_base == 1 then field = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.received_timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Remaining Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.remaining_quantity = {}

-- Size: Remaining Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.remaining_quantity.size = 4

-- Display: Remaining Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.remaining_quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Remaining Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Security Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id = {}

-- Size: Security Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size = 2

-- Display: Security Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Sender Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.sender_id = {}

-- Size: Sender Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.sender_id.size = 16

-- Display: Sender Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.sender_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Id: No Value"
  end

  return "Sender Id: "..value
end

-- Dissect: Sender Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.sender_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.sender_id.size
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

  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.sender_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.sender_id, range, value, display)

  return offset + length, value
end

-- Seq No
aquis_aquisstockexchange_realtime_amd_v1_2_3.seq_no = {}

-- Size: Seq No
aquis_aquisstockexchange_realtime_amd_v1_2_3.seq_no.size = 4

-- Display: Seq No
aquis_aquisstockexchange_realtime_amd_v1_2_3.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
aquis_aquisstockexchange_realtime_amd_v1_2_3.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Side
aquis_aquisstockexchange_realtime_amd_v1_2_3.side = {}

-- Size: Side
aquis_aquisstockexchange_realtime_amd_v1_2_3.side.size = 1

-- Display: Side
aquis_aquisstockexchange_realtime_amd_v1_2_3.side.labels = {
  [1] = "Side: Buy Order (1)",
  [2] = "Side: Sell Order (2)",
}

aquis_aquisstockexchange_realtime_amd_v1_2_3.side.display = function(value)
  return aquis_aquisstockexchange_realtime_amd_v1_2_3.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
aquis_aquisstockexchange_realtime_amd_v1_2_3.side.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.side, range, value, display)

  return offset + length, value
end

-- Statistics Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.statistics_price = {}

-- Size: Statistics Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.statistics_price.size = 8

-- Display: Statistics Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.statistics_price.display = function(value)
  return "Price: "..value
end

-- Translate: Statistics Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.statistics_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Statistics Price
aquis_aquisstockexchange_realtime_amd_v1_2_3.statistics_price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.statistics_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisstockexchange_realtime_amd_v1_2_3.statistics_price.translate(raw)
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.statistics_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.statistics_price, range, value, display)

  return offset + length, value
end

-- Threshold
aquis_aquisstockexchange_realtime_amd_v1_2_3.threshold = {}

-- Size: Threshold
aquis_aquisstockexchange_realtime_amd_v1_2_3.threshold.size = 8

-- Display: Threshold
aquis_aquisstockexchange_realtime_amd_v1_2_3.threshold.display = function(value)
  return "Threshold: "..value
end

-- Translate: Threshold
aquis_aquisstockexchange_realtime_amd_v1_2_3.threshold.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Threshold
aquis_aquisstockexchange_realtime_amd_v1_2_3.threshold.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.threshold.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisstockexchange_realtime_amd_v1_2_3.threshold.translate(raw)
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.threshold, range, value, display)

  return offset + length, value
end

-- Tick Size
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_size = {}

-- Size: Tick Size
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_size.size = 8

-- Display: Tick Size
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Translate: Tick Size
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_size.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Tick Size
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_size.translate(raw)
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Tick Table Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_id = {}

-- Size: Tick Table Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_id.size = 1

-- Display: Tick Table Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_id.display = function(value)
  return "Tick Table Id: "..value
end

-- Dissect: Tick Table Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.tick_table_id, range, value, display)

  return offset + length, value
end

-- Timestamp
aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp = {}

-- Size: Timestamp
aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size = 8

-- Dissect: Timestamp
aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.timestamp
  if aquis_aquisstockexchange_realtime_amd_v1_2_3.absolute_time_base == 1 then field = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trade Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref = {}

-- Size: Trade Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.size = 4

-- Display: Trade Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.display = function(value)
  return "Trade Ref: "..value
end

-- Dissect: Trade Ref
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_ref, range, value, display)

  return offset + length, value
end

-- Trade Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type = {}

-- Size: Trade Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.size = 1

-- Display: Trade Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.labels = {
  [1] = "Trade Type: Visible (1)",
  [2] = "Trade Type: Hidden Or Reserve (2)",
  [6] = "Trade Type: Auction On Demand Trade (6)",
  [8] = "Trade Type: Trade Capture Report Trade (8)",
}

aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.display = function(value)
  return aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Traded Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity = {}

-- Size: Traded Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.size = 4

-- Display: Traded Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Traded Quantity
aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.traded_quantity, range, value, display)

  return offset + length, value
end

-- Trader Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id = {}

-- Size: Trader Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id.size = 2

-- Display: Trader Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trading Status
aquis_aquisstockexchange_realtime_amd_v1_2_3.trading_status = {}

-- Size: Trading Status
aquis_aquisstockexchange_realtime_amd_v1_2_3.trading_status.size = 1

-- Display: Trading Status
aquis_aquisstockexchange_realtime_amd_v1_2_3.trading_status.labels = {
  [1] = "Trading Status: Active (1)",
  [2] = "Trading Status: Halted (2)",
  [3] = "Trading Status: Suspended (3)",
}

aquis_aquisstockexchange_realtime_amd_v1_2_3.trading_status.display = function(value)
  return aquis_aquisstockexchange_realtime_amd_v1_2_3.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
aquis_aquisstockexchange_realtime_amd_v1_2_3.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Transact Time
aquis_aquisstockexchange_realtime_amd_v1_2_3.transact_time = {}

-- Size: Transact Time
aquis_aquisstockexchange_realtime_amd_v1_2_3.transact_time.size = 8

-- Dissect: Transact Time
aquis_aquisstockexchange_realtime_amd_v1_2_3.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.transact_time
  if aquis_aquisstockexchange_realtime_amd_v1_2_3.absolute_time_base == 1 then field = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.transact_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Umtf
aquis_aquisstockexchange_realtime_amd_v1_2_3.umtf = {}

-- Size: Umtf
aquis_aquisstockexchange_realtime_amd_v1_2_3.umtf.size = 6

-- Display: Umtf
aquis_aquisstockexchange_realtime_amd_v1_2_3.umtf.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Umtf: No Value"
  end

  return "Umtf: "..value
end

-- Dissect: Umtf
aquis_aquisstockexchange_realtime_amd_v1_2_3.umtf.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_realtime_amd_v1_2_3.umtf.size
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

  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.umtf.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.umtf, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Aquis AquisStockExchange RealTime Amd 1.2.3
-----------------------------------------------------------------------

-- Aod Update Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.aod_update_message = {}

-- Size: Aod Update Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.aod_update_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.indicative_price.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.match_vol.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size

-- Display: Aod Update Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.aod_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aod Update Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.aod_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = aquis_aquisstockexchange_realtime_amd_v1_2_3.indicative_price.dissect(buffer, index, packet, parent)

  -- Match Vol: u32
  index, match_vol = aquis_aquisstockexchange_realtime_amd_v1_2_3.match_vol.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Aod Update Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.aod_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.aod_update_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.aod_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.aod_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.aod_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Flags
aquis_aquisstockexchange_realtime_amd_v1_2_3.market_flags = {}

-- Size: Market Flags
aquis_aquisstockexchange_realtime_amd_v1_2_3.market_flags.size = 1

-- Display: Market Flags
aquis_aquisstockexchange_realtime_amd_v1_2_3.market_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trading flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trading"
  end
  -- Is Pre Open Close flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "pre-open/close"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Flags
aquis_aquisstockexchange_realtime_amd_v1_2_3.market_flags.bits = function(range, value, packet, parent)

  -- Trading: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trading, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.unused_2, range, value)

  -- Pre Open Close: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.pre_open_close, range, value)

  -- Unused 4: 4 Bit
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.unused_4, range, value)
end

-- Dissect: Market Flags
aquis_aquisstockexchange_realtime_amd_v1_2_3.market_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_aquisstockexchange_realtime_amd_v1_2_3.market_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.market_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.market_flags, range, display)

  if show.structs then
    aquis_aquisstockexchange_realtime_amd_v1_2_3.market_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Status Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_status_message = {}

-- Size: Security Status Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_status_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trading_status.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.market_flags.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size

-- Display: Security Status Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = aquis_aquisstockexchange_realtime_amd_v1_2_3.trading_status.dissect(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = aquis_aquisstockexchange_realtime_amd_v1_2_3.market_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.security_status_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_definition_message = {}

-- Size: Security Definition Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_definition_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.umtf.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.isin.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.currency.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.mic.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_id.size

-- Display: Security Definition Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Umtf: char(6)
  index, umtf = aquis_aquisstockexchange_realtime_amd_v1_2_3.umtf.dissect(buffer, index, packet, parent)

  -- Isin: isin
  index, isin = aquis_aquisstockexchange_realtime_amd_v1_2_3.isin.dissect(buffer, index, packet, parent)

  -- Currency: currency
  index, currency = aquis_aquisstockexchange_realtime_amd_v1_2_3.currency.dissect(buffer, index, packet, parent)

  -- Mic: mic
  index, mic = aquis_aquisstockexchange_realtime_amd_v1_2_3.mic.dissect(buffer, index, packet, parent)

  -- Tick Table Id: u8
  index, tick_table_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.security_definition_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.security_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Table Data Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_data_message = {}

-- Size: Tick Table Data Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_data_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.name.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.threshold.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_size.size

-- Display: Tick Table Data Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Data Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick Table Id: u8
  index, tick_table_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_id.dissect(buffer, index, packet, parent)

  -- Name: char(10)
  index, name = aquis_aquisstockexchange_realtime_amd_v1_2_3.name.dissect(buffer, index, packet, parent)

  -- Threshold: u64
  index, threshold = aquis_aquisstockexchange_realtime_amd_v1_2_3.threshold.dissect(buffer, index, packet, parent)

  -- Tick Size: u64
  index, tick_size = aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Table Data Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.tick_table_data_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Trader Definition Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_definition_message = {}

-- Size: Trader Definition Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_definition_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.sender_id.size

-- Display: Trader Definition Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trader Definition Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trader Id: u16
  index, trader_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id.dissect(buffer, index, packet, parent)

  -- Sender Id: char(16)
  index, sender_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.sender_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trader Definition Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trader_definition_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Statistics Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_statistics_message = {}

-- Size: Security Statistics Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_statistics_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.statistics_price.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.price_type.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size

-- Display: Security Statistics Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Statistics Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Statistics Price: u64
  index, statistics_price = aquis_aquisstockexchange_realtime_amd_v1_2_3.statistics_price.dissect(buffer, index, packet, parent)

  -- Price Type: u8
  index, price_type = aquis_aquisstockexchange_realtime_amd_v1_2_3.price_type.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Statistics Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.security_statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.security_statistics_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.security_statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Binary Mmt
aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt = {}

-- Size: Binary Mmt
aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.size = 4

-- Display: Binary Mmt
aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Crossing Trade flag set?
  if bit.band(value, 0x00002000) ~= 0 then
    flags[#flags + 1] = "Crossing Trade"
  end
  -- Is Dividend flag set?
  if bit.band(value, 0x00040000) ~= 0 then
    flags[#flags + 1] = "Dividend"
  end
  -- Is Algorithmic Indicator flag set?
  if bit.band(value, 0x01000000) ~= 0 then
    flags[#flags + 1] = "Algorithmic Indicator"
  end
  -- Is Deferral Type flag set?
  if bit.band(value, 0x10000000) ~= 0 then
    flags[#flags + 1] = "Deferral Type"
  end
  -- Is Duplicative Indicator flag set?
  if bit.band(value, 0x20000000) ~= 0 then
    flags[#flags + 1] = "Duplicative Indicator"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Binary Mmt
aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.bits = function(range, value, packet, parent)

  -- Market Mechanism: 3 Bit Unsigned Fixed Width Integer Enum with 7 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.market_mechanism, range, value)

  -- Trading Mode: 4 Bit Unsigned Fixed Width Integer Enum with 11 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trading_mode, range, value)

  -- Transaction Category: 3 Bit Unsigned Fixed Width Integer Enum with 5 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.transaction_category, range, value)

  -- Negotiation Indicator Or Pre Trade Transparency Waiver: 3 Bit Unsigned Fixed Width Integer Enum with 8 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.negotiation_indicator_or_pre_trade_transparency_waiver, range, value)

  -- Crossing Trade: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.crossing_trade, range, value)

  -- Modification Indicator: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.modification_indicator, range, value)

  -- Benchmark Reference Price Indicator: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.benchmark_reference_price_indicator, range, value)

  -- Dividend: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.dividend, range, value)

  -- Off Book Automation: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.off_book_automation, range, value)

  -- Price Formation Discovery Process: 3 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.price_formation_discovery_process, range, value)

  -- Algorithmic Indicator: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.algorithmic_indicator, range, value)

  -- Publication Mode Post Trade Deferral: 3 Bit Unsigned Fixed Width Integer Enum with 7 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.publication_mode_post_trade_deferral, range, value)

  -- Deferral Type: 1 Bit Enum with 1 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.deferral_type, range, value)

  -- Duplicative Indicator: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.duplicative_indicator, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.unused_2, range, value)
end

-- Dissect: Binary Mmt
aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.dissect = function(buffer, offset, packet, parent)
  local size = aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.display(range, value, packet, parent)
  local element = parent:add_le(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.binary_mmt, range, display)

  if show.structs then
    aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Bust Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_bust_message = {}

-- Size: Trade Bust Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_bust_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.size

-- Display: Trade Bust Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Traded Quantity: u32
  index, traded_quantity = aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.dissect(buffer, index, packet, parent)

  -- Execution Price: u64
  index, execution_price = aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Binary Mmt: Struct of 15 fields
  index, binary_mmt = aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_bust_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_cancel_message = {}

-- Size: Trade Report Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_cancel_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_type.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_quantity.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_price.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.received_timestamp.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.transact_time.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_ref.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_timestamp.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_transact_time.size

-- Display: Trade Report Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Security Id: u16
  index, orig_security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_security_id.dissect(buffer, index, packet, parent)

  -- Orig Trade Type: u8
  index, orig_trade_type = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_type.dissect(buffer, index, packet, parent)

  -- Orig Quantity: u32
  index, orig_quantity = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_quantity.dissect(buffer, index, packet, parent)

  -- Orig Price: u64
  index, orig_price = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_price.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.dissect(buffer, index, packet, parent)

  -- Received Timestamp: u64
  index, received_timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.received_timestamp.dissect(buffer, index, packet, parent)

  -- Binary Mmt: Struct of 15 fields
  index, binary_mmt = aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.dissect(buffer, index, packet, parent)

  -- Transact Time: u64
  index, transact_time = aquis_aquisstockexchange_realtime_amd_v1_2_3.transact_time.dissect(buffer, index, packet, parent)

  -- Orig Trade Ref: u32
  index, orig_trade_ref = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_ref.dissect(buffer, index, packet, parent)

  -- Orig Timestamp: u64
  index, orig_timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_timestamp.dissect(buffer, index, packet, parent)

  -- Orig Transact Time: u64
  index, orig_transact_time = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_report_cancel_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Modify Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_modify_message = {}

-- Size: Trade Report Modify Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_modify_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.received_timestamp.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.transact_time.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_ref.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_timestamp.size

-- Display: Trade Report Modify Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Modify Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Type: u8
  index, trade_type = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.dissect(buffer, index, packet, parent)

  -- Traded Quantity: u32
  index, traded_quantity = aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.dissect(buffer, index, packet, parent)

  -- Execution Price: u64
  index, execution_price = aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.dissect(buffer, index, packet, parent)

  -- Received Timestamp: u64
  index, received_timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.received_timestamp.dissect(buffer, index, packet, parent)

  -- Binary Mmt: Struct of 15 fields
  index, binary_mmt = aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.dissect(buffer, index, packet, parent)

  -- Transact Time: u64
  index, transact_time = aquis_aquisstockexchange_realtime_amd_v1_2_3.transact_time.dissect(buffer, index, packet, parent)

  -- Orig Trade Ref: u32
  index, orig_trade_ref = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_trade_ref.dissect(buffer, index, packet, parent)

  -- Orig Timestamp: u64
  index, orig_timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.orig_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Modify Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_report_modify_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_message = {}

-- Size: Trade Report Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.received_timestamp.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.transact_time.size

-- Display: Trade Report Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Type: u8
  index, trade_type = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.dissect(buffer, index, packet, parent)

  -- Traded Quantity: u32
  index, traded_quantity = aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.dissect(buffer, index, packet, parent)

  -- Execution Price: u64
  index, execution_price = aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.dissect(buffer, index, packet, parent)

  -- Received Timestamp: u64
  index, received_timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.received_timestamp.dissect(buffer, index, packet, parent)

  -- Binary Mmt: Struct of 15 fields
  index, binary_mmt = aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.dissect(buffer, index, packet, parent)

  -- Transact Time: u64
  index, transact_time = aquis_aquisstockexchange_realtime_amd_v1_2_3.transact_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_report_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_message = {}

-- Size: Trade Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.size

-- Display: Trade Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Type: u8
  index, trade_type = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_type.dissect(buffer, index, packet, parent)

  -- Traded Quantity: u32
  index, traded_quantity = aquis_aquisstockexchange_realtime_amd_v1_2_3.traded_quantity.dissect(buffer, index, packet, parent)

  -- Execution Price: u64
  index, execution_price = aquis_aquisstockexchange_realtime_amd_v1_2_3.execution_price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.dissect(buffer, index, packet, parent)

  -- Binary Mmt: Struct of 15 fields
  index, binary_mmt = aquis_aquisstockexchange_realtime_amd_v1_2_3.binary_mmt.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.trade_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_cancel_message = {}

-- Size: Quote Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_cancel_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size

-- Display: Quote Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trader Id: u16
  index, trader_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id.dissect(buffer, index, packet, parent)

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.quote_cancel_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Add Replace Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_add_replace_message = {}

-- Size: Quote Add Replace Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_add_replace_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_quantity.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_price.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_quantity.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_price.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size

-- Display: Quote Add Replace Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_add_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Add Replace Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_add_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trader Id: u16
  index, trader_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_id.dissect(buffer, index, packet, parent)

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Bid Quantity: u32
  index, bid_quantity = aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_quantity.dissect(buffer, index, packet, parent)

  -- Bid Price: u64
  index, bid_price = aquis_aquisstockexchange_realtime_amd_v1_2_3.bid_price.dissect(buffer, index, packet, parent)

  -- Offer Quantity: u32
  index, offer_quantity = aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_quantity.dissect(buffer, index, packet, parent)

  -- Offer Price: u64
  index, offer_price = aquis_aquisstockexchange_realtime_amd_v1_2_3.offer_price.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Add Replace Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_add_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.quote_add_replace_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_add_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_add_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_add_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_modify_message = {}

-- Size: Order Modify Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_modify_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.remaining_quantity.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.price.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size

-- Display: Order Modify Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: u32
  index, remaining_quantity = aquis_aquisstockexchange_realtime_amd_v1_2_3.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_aquisstockexchange_realtime_amd_v1_2_3.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.order_modify_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.order_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_cancel_message = {}

-- Size: Order Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_cancel_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size

-- Display: Order Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.order_cancel_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_add_message = {}

-- Size: Order Add Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_add_message.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.side.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.quantity.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.price.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.size

-- Display: Order Add Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_aquisstockexchange_realtime_amd_v1_2_3.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_aquisstockexchange_realtime_amd_v1_2_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_aquisstockexchange_realtime_amd_v1_2_3.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisstockexchange_realtime_amd_v1_2_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.order_add_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.heartbeat_message = {}

-- Display: Heartbeat Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
aquis_aquisstockexchange_realtime_amd_v1_2_3.payload = {}

-- Dispatch: Payload
aquis_aquisstockexchange_realtime_amd_v1_2_3.payload.dispatch = {
  [1] = aquis_aquisstockexchange_realtime_amd_v1_2_3.heartbeat_message.dissect,
  [2] = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_add_message.dissect,
  [3] = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_cancel_message.dissect,
  [4] = aquis_aquisstockexchange_realtime_amd_v1_2_3.order_modify_message.dissect,
  [20] = aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_add_replace_message.dissect,
  [21] = aquis_aquisstockexchange_realtime_amd_v1_2_3.quote_cancel_message.dissect,
  [5] = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_message.dissect,
  [25] = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_message.dissect,
  [26] = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_modify_message.dissect,
  [27] = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_report_cancel_message.dissect,
  [6] = aquis_aquisstockexchange_realtime_amd_v1_2_3.trade_bust_message.dissect,
  [22] = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_statistics_message.dissect,
  [23] = aquis_aquisstockexchange_realtime_amd_v1_2_3.trader_definition_message.dissect,
  [7] = aquis_aquisstockexchange_realtime_amd_v1_2_3.tick_table_data_message.dissect,
  [8] = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_definition_message.dissect,
  [9] = aquis_aquisstockexchange_realtime_amd_v1_2_3.security_status_message.dissect,
  [17] = aquis_aquisstockexchange_realtime_amd_v1_2_3.aod_update_message.dissect,
}

-- Dissect: Payload
aquis_aquisstockexchange_realtime_amd_v1_2_3.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = aquis_aquisstockexchange_realtime_amd_v1_2_3.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
aquis_aquisstockexchange_realtime_amd_v1_2_3.message_header = {}

-- Size: Message Header
aquis_aquisstockexchange_realtime_amd_v1_2_3.message_header.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_type.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_length.size + 
  aquis_aquisstockexchange_realtime_amd_v1_2_3.seq_no.size

-- Display: Message Header
aquis_aquisstockexchange_realtime_amd_v1_2_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
aquis_aquisstockexchange_realtime_amd_v1_2_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: u8
  index, msg_type = aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: u8
  index, msg_length = aquis_aquisstockexchange_realtime_amd_v1_2_3.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: u32
  index, seq_no = aquis_aquisstockexchange_realtime_amd_v1_2_3.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
aquis_aquisstockexchange_realtime_amd_v1_2_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.message_header, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.message = {}

-- Display: Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = aquis_aquisstockexchange_realtime_amd_v1_2_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 17 branches
  index = aquis_aquisstockexchange_realtime_amd_v1_2_3.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
aquis_aquisstockexchange_realtime_amd_v1_2_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.message, buffer(offset, 0))
    local current = aquis_aquisstockexchange_realtime_amd_v1_2_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aquis_aquisstockexchange_realtime_amd_v1_2_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
aquis_aquisstockexchange_realtime_amd_v1_2_3.packet_header = {}

-- Size: Packet Header
aquis_aquisstockexchange_realtime_amd_v1_2_3.packet_header.size =
  aquis_aquisstockexchange_realtime_amd_v1_2_3.message_count.size

-- Display: Packet Header
aquis_aquisstockexchange_realtime_amd_v1_2_3.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
aquis_aquisstockexchange_realtime_amd_v1_2_3.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: u8
  index, message_count = aquis_aquisstockexchange_realtime_amd_v1_2_3.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
aquis_aquisstockexchange_realtime_amd_v1_2_3.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.fields.packet_header, buffer(offset, 0))
    local index = aquis_aquisstockexchange_realtime_amd_v1_2_3.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_realtime_amd_v1_2_3.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_realtime_amd_v1_2_3.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
aquis_aquisstockexchange_realtime_amd_v1_2_3.packet = {}

-- Verify required size of Udp packet
aquis_aquisstockexchange_realtime_amd_v1_2_3.packet.requiredsize = function(buffer)
  return buffer:len() >= aquis_aquisstockexchange_realtime_amd_v1_2_3.packet_header.size
end

-- Dissect Packet
aquis_aquisstockexchange_realtime_amd_v1_2_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 1 fields
  index, packet_header = aquis_aquisstockexchange_realtime_amd_v1_2_3.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = aquis_aquisstockexchange_realtime_amd_v1_2_3.message.dissect(buffer, index, packet, parent, msg_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.init()
end

-- Dissector for Aquis AquisStockExchange RealTime Amd 1.2.3
function omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3, buffer(), omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.description, "("..buffer:len().." Bytes)")
  return aquis_aquisstockexchange_realtime_amd_v1_2_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
aquis_aquisstockexchange_realtime_amd_v1_2_3.packet.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local msg_type = buffer(1, 1):uint()

  -- Heartbeat Message
  if msg_type == 1 then
    return true
  end

  -- Order Add Message
  if msg_type == 2 then
    return true
  end

  -- Order Cancel Message
  if msg_type == 3 then
    return true
  end

  -- Order Modify Message
  if msg_type == 4 then
    return true
  end

  -- Quote Add Replace Message
  if msg_type == 20 then
    return true
  end

  -- Quote Cancel Message
  if msg_type == 21 then
    return true
  end

  -- Trade Message
  if msg_type == 5 then
    return true
  end

  -- Trade Report Message
  if msg_type == 25 then
    return true
  end

  -- Trade Report Modify Message
  if msg_type == 26 then
    return true
  end

  -- Trade Report Cancel Message
  if msg_type == 27 then
    return true
  end

  -- Trade Bust Message
  if msg_type == 6 then
    return true
  end

  -- Security Statistics Message
  if msg_type == 22 then
    return true
  end

  -- Trader Definition Message
  if msg_type == 23 then
    return true
  end

  -- Tick Table Data Message
  if msg_type == 7 then
    return true
  end

  -- Security Definition Message
  if msg_type == 8 then
    return true
  end

  -- Security Status Message
  if msg_type == 9 then
    return true
  end

  -- Aod Update Message
  if msg_type == 17 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Aquis AquisStockExchange RealTime Amd 1.2.3 (Udp)
local function omi_aquis_aquisstockexchange_realtime_amd_v1_2_3_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aquis_aquisstockexchange_realtime_amd_v1_2_3.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not aquis_aquisstockexchange_realtime_amd_v1_2_3.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aquis_aquisstockexchange_realtime_amd_v1_2_3
  omi_aquis_aquisstockexchange_realtime_amd_v1_2_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Aquis AquisStockExchange RealTime Amd 1.2.3
omi_aquis_aquisstockexchange_realtime_amd_v1_2_3:register_heuristic("udp", omi_aquis_aquisstockexchange_realtime_amd_v1_2_3_udp_heuristic)

-- Register Aquis AquisStockExchange RealTime Amd 1.2.3 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_aquis_aquisstockexchange_realtime_amd_v1_2_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 1.2.3
--   Date: Tuesday, April 23, 2024
--   Specification: Aquis Stock Exchange Multicast Market Data Specification v1.2.3 (2024).pdf
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
