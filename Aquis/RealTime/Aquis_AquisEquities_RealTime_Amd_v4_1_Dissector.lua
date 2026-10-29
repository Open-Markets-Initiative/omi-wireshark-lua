-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis AquisEquities RealTime Amd 4.1 Protocol
local omi_aquis_aquisequities_realtime_amd_v4_1 = Proto("Omi.Aquis.AquisEquities.RealTime.Amd.v4.1", "Aquis AquisEquities RealTime Amd 4.1")

-- Protocol table
local aquis_aquisequities_realtime_amd_v4_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis AquisEquities RealTime Amd 4.1 Fields
omi_aquis_aquisequities_realtime_amd_v4_1.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "aquis.aquisequities.realtime.amd.v4.1.algorithmicindicator", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x01000000)
omi_aquis_aquisequities_realtime_amd_v4_1.fields.aod_enabled = ProtoField.new("Aod Enabled", "aquis.aquisequities.realtime.amd.v4.1.aodenabled", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "0 = Not enabled for AoD, 1 = Enabled for AoD")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.avx_enabled = ProtoField.new("Avx Enabled", "aquis.aquisequities.realtime.amd.v4.1.avxenabled", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080, "0 = Not enabled for AVM, 1 = Enabled for AVM")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.benchmark_reference_price_indicator = ProtoField.new("Benchmark Reference Price Indicator", "aquis.aquisequities.realtime.amd.v4.1.benchmarkreferencepriceindicator", ftypes.UINT32, {[1]="Benchmark Trade", [2]="Reference Price Trade", [3]="No Benchmark Or Reference Price"}, base.DEC, 0x00030000, "Benchmark or reference price indicator")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.binary_mmt = ProtoField.new("Binary Mmt", "aquis.aquisequities.realtime.amd.v4.1.binarymmt", ftypes.STRING, nil, nil, nil, "Post-trade regulatory flags (MMT)")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.closing_buy_qty = ProtoField.new("Closing Buy Qty", "aquis.aquisequities.realtime.amd.v4.1.closingbuyqty", ftypes.UINT32, nil, nil, nil, "Total order quantity on the buy side during the closing market; otherwise set to 0")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.closing_sell_qty = ProtoField.new("Closing Sell Qty", "aquis.aquisequities.realtime.amd.v4.1.closingsellqty", ftypes.UINT32, nil, nil, nil, "Total order quantity on the sell side during the closing market; otherwise set to 0")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.crossing_trade = ProtoField.new("Crossing Trade", "aquis.aquisequities.realtime.amd.v4.1.crossingtrade", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00002000)
omi_aquis_aquisequities_realtime_amd_v4_1.fields.currency = ProtoField.new("Currency", "aquis.aquisequities.realtime.amd.v4.1.currency", ftypes.STRING, nil, nil, nil, "Trading currency for the security")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.deferral_type = ProtoField.new("Deferral Type", "aquis.aquisequities.realtime.amd.v4.1.deferraltype", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x10000000)
omi_aquis_aquisequities_realtime_amd_v4_1.fields.dividend = ProtoField.new("Dividend", "aquis.aquisequities.realtime.amd.v4.1.dividend", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00040000)
omi_aquis_aquisequities_realtime_amd_v4_1.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "aquis.aquisequities.realtime.amd.v4.1.duplicativeindicator", ftypes.UINT32, {[0]="Unique", [1]="Duplicative"}, base.DEC, 0x20000000)
omi_aquis_aquisequities_realtime_amd_v4_1.fields.illiquid = ProtoField.new("Illiquid", "aquis.aquisequities.realtime.amd.v4.1.illiquid", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "0 = Liquid, 1 = Illiquid")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.indicative_price = ProtoField.new("Indicative Price", "aquis.aquisequities.realtime.amd.v4.1.indicativeprice", ftypes.DOUBLE, nil, nil, nil, "Indicative auction price")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.isin = ProtoField.new("Isin", "aquis.aquisequities.realtime.amd.v4.1.isin", ftypes.STRING, nil, nil, nil, "ISIN for the security")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.lot_size = ProtoField.new("Lot Size", "aquis.aquisequities.realtime.amd.v4.1.lotsize", ftypes.UINT64, nil, nil, nil, "Lot size for the security; always set to 1,000,000,000 to represent a lot size of 1")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.lot_size_composite = ProtoField.new("Lot Size Composite", "aquis.aquisequities.realtime.amd.v4.1.lotsizecomposite", ftypes.STRING, nil, nil, nil, "Lot size scaled at runtime by lotSizeDecimal")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.lot_size_decimal = ProtoField.new("Lot Size Decimal", "aquis.aquisequities.realtime.amd.v4.1.lotsizedecimal", ftypes.UINT8, nil, nil, nil, "Number of decimals implied in lotSize; always set to 9")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.mac_enabled = ProtoField.new("Mac Enabled", "aquis.aquisequities.realtime.amd.v4.1.macenabled", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "0 = Not enabled for MaC, 1 = Enabled for MaC")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.mac_open = ProtoField.new("Mac Open", "aquis.aquisequities.realtime.amd.v4.1.macopen", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "MaC status; 0 = Closed, 1 = Open")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.mac_run = ProtoField.new("Mac Run", "aquis.aquisequities.realtime.amd.v4.1.macrun", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "MaC lockdown status; 0 = Not locked down, 1 = Locked down")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.market_flags = ProtoField.new("Market Flags", "aquis.aquisequities.realtime.amd.v4.1.marketflags", ftypes.STRING, nil, nil, nil, "Market status flags")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.market_mechanism = ProtoField.new("Market Mechanism", "aquis.aquisequities.realtime.amd.v4.1.marketmechanism", ftypes.UINT32, {[1]="Central Limit Order Book", [2]="Quote Driven Market", [3]="Dark Order Book", [4]="Off Book", [5]="Periodic Auction", [6]="Rfq", [7]="Other"}, base.DEC, 0x00000007)
omi_aquis_aquisequities_realtime_amd_v4_1.fields.match_vol = ProtoField.new("Match Vol", "aquis.aquisequities.realtime.amd.v4.1.matchvol", ftypes.UINT32, nil, nil, nil, "Indicative matched volume")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.md_flags = ProtoField.new("Md Flags", "aquis.aquisequities.realtime.amd.v4.1.mdflags", ftypes.STRING, nil, nil, nil, "Market data flags")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.message_count = ProtoField.new("Message Count", "aquis.aquisequities.realtime.amd.v4.1.messagecount", ftypes.UINT8, nil, nil, nil, "Number of messages in this packet")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.mic = ProtoField.new("Mic", "aquis.aquisequities.realtime.amd.v4.1.mic", ftypes.STRING, nil, nil, nil, "Segment MIC")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.modification_indicator = ProtoField.new("Modification Indicator", "aquis.aquisequities.realtime.amd.v4.1.modificationindicator", ftypes.UINT32, {[1]="Trade Cancelation", [2]="Trade Amendment", [3]="New Trade"}, base.DEC, 0x0000C000)
omi_aquis_aquisequities_realtime_amd_v4_1.fields.msg_length = ProtoField.new("Msg Length", "aquis.aquisequities.realtime.amd.v4.1.msglength", ftypes.UINT8, nil, nil, nil, "Length of market data message, including header")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.msg_type = ProtoField.new("Msg Type", "aquis.aquisequities.realtime.amd.v4.1.msgtype", ftypes.UINT8, nil, nil, nil, "Message type identifier")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.name = ProtoField.new("Name", "aquis.aquisequities.realtime.amd.v4.1.name", ftypes.STRING, nil, nil, nil, "Short name")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.negotiation_indicator_or_pre_trade_transparency_waiver = ProtoField.new("Negotiation Indicator Or Pre Trade Transparency Waiver", "aquis.aquisequities.realtime.amd.v4.1.negotiationindicatororpretradetransparencywaiver", ftypes.UINT32, {[0]="Negotiated Trade", [1]="Negotiated Trade In Liquid Instruments", [2]="Negotiated Trade In Illiquid Instruments", [3]="Negotiated Trade Other Than Current Market Price", [4]="No Negotiated Trade", [5]="Si Illiquid Instruments", [6]="Si Above Standard Market Size", [7]="Ilqd And Size"}, base.DEC, 0x00001C00, "Negotiation indicator or pre-trade transparency waiver")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.off_book_automation = ProtoField.new("Off Book Automation", "aquis.aquisequities.realtime.amd.v4.1.offbookautomation", ftypes.UINT32, {[1]="Unspecified", [2]="Off Book Non Automated", [3]="Off Book Automated"}, base.DEC, 0x00180000)
omi_aquis_aquisequities_realtime_amd_v4_1.fields.order_ref = ProtoField.new("Order Ref", "aquis.aquisequities.realtime.amd.v4.1.orderref", ftypes.UINT32, nil, nil, nil, "Unique order reference number for the day")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.price = ProtoField.new("Price", "aquis.aquisequities.realtime.amd.v4.1.price", ftypes.DOUBLE, nil, nil, nil, "The price of the order")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.price_formation_discovery_process = ProtoField.new("Price Formation Discovery Process", "aquis.aquisequities.realtime.amd.v4.1.priceformationdiscoveryprocess", ftypes.UINT32, {[1]="Plain Vanilla", [2]="Non Price Forming", [3]="Trade Not Contributing To Price Discovery", [4]="Price Not Currently Available But Pending"}, base.DEC, 0x00E00000, "Price formation or discovery process")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.publication_mode_post_trade_deferral = ProtoField.new("Publication Mode Post Trade Deferral", "aquis.aquisequities.realtime.amd.v4.1.publicationmodeposttradedeferral", ftypes.UINT32, {[1]="Immediate Publication", [2]="Non Immediate Publication", [3]="Lrgs", [4]="Ilqd", [5]="Size", [6]="Ilqd And Size", [7]="Ilqd And Lrgs"}, base.DEC, 0x0E000000, "Publication mode or post-trade deferral")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.quantity = ProtoField.new("Quantity", "aquis.aquisequities.realtime.amd.v4.1.quantity", ftypes.UINT32, nil, nil, nil, "Number of shares being added to the book")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.reserved_20 = ProtoField.new("Reserved 20", "aquis.aquisequities.realtime.amd.v4.1.reserved20", ftypes.STRING, nil, nil, nil, "Reserved")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.security_definition_flags = ProtoField.new("Security Definition Flags", "aquis.aquisequities.realtime.amd.v4.1.securitydefinitionflags", ftypes.STRING)
omi_aquis_aquisequities_realtime_amd_v4_1.fields.security_id = ProtoField.new("Security Id", "aquis.aquisequities.realtime.amd.v4.1.securityid", ftypes.UINT16, nil, nil, nil, "Numeric identifier of the relevant security")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.seq_no = ProtoField.new("Seq No", "aquis.aquisequities.realtime.amd.v4.1.seqno", ftypes.UINT32, nil, nil, nil, "Sequence number of this message in the market data stream for the current trading day")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.side = ProtoField.new("Side", "aquis.aquisequities.realtime.amd.v4.1.side", ftypes.UINT8, nil, nil, nil, "Side of the order")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.test_stock = ProtoField.new("Test Stock", "aquis.aquisequities.realtime.amd.v4.1.teststock", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "0 = Not a test stock, 1 = Test stock")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.threshold = ProtoField.new("Threshold", "aquis.aquisequities.realtime.amd.v4.1.threshold", ftypes.DOUBLE, nil, nil, nil, "The price threshold at which this tick data applies")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.tick_size = ProtoField.new("Tick Size", "aquis.aquisequities.realtime.amd.v4.1.ticksize", ftypes.DOUBLE, nil, nil, nil, "The tick size (price increment)")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.tick_table_id = ProtoField.new("Tick Table Id", "aquis.aquisequities.realtime.amd.v4.1.ticktableid", ftypes.UINT8, nil, nil, nil, "Numeric identifier for this tick table or static tick")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.timestamp = ProtoField.new("Timestamp", "aquis.aquisequities.realtime.amd.v4.1.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Timestamp of this market data event")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.timestamp_utc = ProtoField.new("Timestamp", "aquis.aquisequities.realtime.amd.v4.1.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp of this market data event")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.trade_ref = ProtoField.new("Trade Ref", "aquis.aquisequities.realtime.amd.v4.1.traderef", ftypes.UINT32, nil, nil, nil, "Trade reference number")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.trade_type = ProtoField.new("Trade Type", "aquis.aquisequities.realtime.amd.v4.1.tradetype", ftypes.UINT8, nil, nil, nil, "Code identifying type of trade")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.trading = ProtoField.new("Trading", "aquis.aquisequities.realtime.amd.v4.1.trading", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Continuous trading status; 0 = Closed, 1 = Open")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.trading_mode = ProtoField.new("Trading Mode", "aquis.aquisequities.realtime.amd.v4.1.tradingmode", ftypes.UINT32, {[1]="Undefined Auction", [2]="Opening Auction", [3]="Closing Auction", [4]="Intraday Auction", [5]="Unscheduled Auction", [6]="Continuous Trading", [7]="At Market Close", [8]="Out Of Main Session", [9]="On Exchange Trade Reporting", [10]="Off Exchange Trade Reporting", [11]="Systematic Internalizer Trade Reporting"}, base.DEC, 0x00000078)
omi_aquis_aquisequities_realtime_amd_v4_1.fields.trading_phase = ProtoField.new("Trading Phase", "aquis.aquisequities.realtime.amd.v4.1.tradingphase", ftypes.UINT8, nil, nil, nil, "Trading phase of the security")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.trading_status = ProtoField.new("Trading Status", "aquis.aquisequities.realtime.amd.v4.1.tradingstatus", ftypes.UINT8, nil, nil, nil, "Trading status of the security")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.transaction_category = ProtoField.new("Transaction Category", "aquis.aquisequities.realtime.amd.v4.1.transactioncategory", ftypes.UINT32, {[1]="Dark Trade", [2]="Trade That Has Received Price Improvement", [3]="Package Trade", [4]="Exchange For Physicals", [5]="None Apply"}, base.DEC, 0x00000380)
omi_aquis_aquisequities_realtime_amd_v4_1.fields.umtf = ProtoField.new("Umtf", "aquis.aquisequities.realtime.amd.v4.1.umtf", ftypes.STRING, nil, nil, nil, "Uniform UMTF code for the security")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.unrestricted_liquidity_indicator = ProtoField.new("Unrestricted Liquidity Indicator", "aquis.aquisequities.realtime.amd.v4.1.unrestrictedliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Indicates whether unrestricted liquidity is available at the top of the book")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.unused_1 = ProtoField.new("Unused 1", "aquis.aquisequities.realtime.amd.v4.1.unused1", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "Reserved")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.unused_2 = ProtoField.new("Unused 2", "aquis.aquisequities.realtime.amd.v4.1.unused2", ftypes.UINT32, nil, base.DEC, 0xC0000000, "Spare")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.unused_5 = ProtoField.new("Unused 5", "aquis.aquisequities.realtime.amd.v4.1.unused5", ftypes.UINT8, nil, base.DEC, 0xF8, "Reserved")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.unused_7 = ProtoField.new("Unused 7", "aquis.aquisequities.realtime.amd.v4.1.unused7", ftypes.UINT8, nil, base.DEC, 0xFE, "Reserved")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.unused_8 = ProtoField.new("Unused 8", "aquis.aquisequities.realtime.amd.v4.1.unused8", ftypes.UINT16, nil, base.DEC, 0xFF00, "Reserved")

-- Aquis AquisEquities RealTime Amd 4.1 Framing
omi_aquis_aquisequities_realtime_amd_v4_1.fields.message = ProtoField.new("Message", "aquis.aquisequities.realtime.amd.v4.1.message", ftypes.STRING, nil, nil, nil, "Aquis Amd Message")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.message_header = ProtoField.new("Message Header", "aquis.aquisequities.realtime.amd.v4.1.messageheader", ftypes.STRING, nil, nil, nil, "Aquis market data message header")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.packet = ProtoField.new("Packet", "aquis.aquisequities.realtime.amd.v4.1.packet", ftypes.STRING, nil, nil, nil, "Aquis Udp Packet")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.packet_header = ProtoField.new("Packet Header", "aquis.aquisequities.realtime.amd.v4.1.packetheader", ftypes.STRING, nil, nil, nil, "Aquis udp packet header")

-- Aquis AquisEquities RealTime 4.1 Application Messages
omi_aquis_aquisequities_realtime_amd_v4_1.fields.ao_d_update_message = ProtoField.new("Ao D Update Message", "aquis.aquisequities.realtime.amd.v4.1.aodupdatemessage", ftypes.STRING, nil, nil, nil, "Published during AoD to provide the indicative price and matched volume.")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.ma_c_update_message = ProtoField.new("Ma C Update Message", "aquis.aquisequities.realtime.amd.v4.1.macupdatemessage", ftypes.STRING, nil, nil, nil, "During the MaC this message is used to publish the indicative price from the buy and sell order totals.")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.order_add = ProtoField.new("Order Add", "aquis.aquisequities.realtime.amd.v4.1.orderadd", ftypes.STRING, nil, nil, nil, "The Order Add message is published when order quantity is posted to the order book for a particular security.")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.order_cancel = ProtoField.new("Order Cancel", "aquis.aquisequities.realtime.amd.v4.1.ordercancel", ftypes.STRING, nil, nil, nil, "Published when a visible order is removed from the book.")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.order_modify = ProtoField.new("Order Modify", "aquis.aquisequities.realtime.amd.v4.1.ordermodify", ftypes.STRING, nil, nil, nil, "Published when a visible order is modified by the client.")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.security_definition_message = ProtoField.new("Security Definition Message", "aquis.aquisequities.realtime.amd.v4.1.securitydefinitionmessage", ftypes.STRING, nil, nil, nil, "Published pre-market to identify securities traded on Aquis, associating securityID with a particular security.")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.security_status_message = ProtoField.new("Security Status Message", "aquis.aquisequities.realtime.amd.v4.1.securitystatusmessage", ftypes.STRING, nil, nil, nil, "Published when the trading status of a security or its market changes.")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.tick_table_data_message = ProtoField.new("Tick Table Data Message", "aquis.aquisequities.realtime.amd.v4.1.ticktabledatamessage", ftypes.STRING, nil, nil, nil, "Published pre-market to specify dynamic tick tables and static ticks controlling valid price increments for securities on the order book.")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.trade = ProtoField.new("Trade", "aquis.aquisequities.realtime.amd.v4.1.trade", ftypes.STRING, nil, nil, nil, "Published whenever an order trades, partially or fully.")
omi_aquis_aquisequities_realtime_amd_v4_1.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "aquis.aquisequities.realtime.amd.v4.1.tradebustmessage", ftypes.STRING, nil, nil, nil, "Published when a trade has been declared erroneous by Aquis.")

-- Aquis AquisEquities RealTime Amd 4.1 Generated Fields
omi_aquis_aquisequities_realtime_amd_v4_1.fields.message_index = ProtoField.new("Message Index", "aquis.aquisequities.realtime.amd.v4.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Aquis AquisEquities RealTime Amd 4.1 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
aquis_aquisequities_realtime_amd_v4_1.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aquis AquisEquities RealTime Amd 4.1 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Aquis AquisEquities RealTime Amd 4.1 Show Options
omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_aquis_aquisequities_realtime_amd_v4_1.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_aquis_aquisequities_realtime_amd_v4_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_application_messages then
    show.application_messages = omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_application_messages
  end
  if show.headers ~= omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_headers then
    show.headers = omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_headers
  end
  if show.structs ~= omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_structs then
    show.structs = omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_structs
  end
  if show.indexes ~= omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_indexes then
    show.indexes = omi_aquis_aquisequities_realtime_amd_v4_1.prefs.show_indexes
  end
  if aquis_aquisequities_realtime_amd_v4_1.absolute_time_base ~= omi_aquis_aquisequities_realtime_amd_v4_1.prefs.absolute_time_base then
    aquis_aquisequities_realtime_amd_v4_1.absolute_time_base = omi_aquis_aquisequities_realtime_amd_v4_1.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Aquis AquisEquities RealTime Amd 4.1 Fields
-----------------------------------------------------------------------

-- Closing Buy Qty
aquis_aquisequities_realtime_amd_v4_1.closing_buy_qty = {}

-- Size: Closing Buy Qty
aquis_aquisequities_realtime_amd_v4_1.closing_buy_qty.size = 4

-- Display: Closing Buy Qty
aquis_aquisequities_realtime_amd_v4_1.closing_buy_qty.display = function(value)
  return "Closing Buy Qty: "..value
end

-- Dissect: Closing Buy Qty
aquis_aquisequities_realtime_amd_v4_1.closing_buy_qty.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.closing_buy_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.closing_buy_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.closing_buy_qty, range, value, display)

  return offset + length, value
end

-- Closing Sell Qty
aquis_aquisequities_realtime_amd_v4_1.closing_sell_qty = {}

-- Size: Closing Sell Qty
aquis_aquisequities_realtime_amd_v4_1.closing_sell_qty.size = 4

-- Display: Closing Sell Qty
aquis_aquisequities_realtime_amd_v4_1.closing_sell_qty.display = function(value)
  return "Closing Sell Qty: "..value
end

-- Dissect: Closing Sell Qty
aquis_aquisequities_realtime_amd_v4_1.closing_sell_qty.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.closing_sell_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.closing_sell_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.closing_sell_qty, range, value, display)

  return offset + length, value
end

-- Currency
aquis_aquisequities_realtime_amd_v4_1.currency = {}

-- Size: Currency
aquis_aquisequities_realtime_amd_v4_1.currency.size = 3

-- Display: Currency
aquis_aquisequities_realtime_amd_v4_1.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
aquis_aquisequities_realtime_amd_v4_1.currency.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.currency.size
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

  local display = aquis_aquisequities_realtime_amd_v4_1.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Indicative Price
aquis_aquisequities_realtime_amd_v4_1.indicative_price = {}

-- Size: Indicative Price
aquis_aquisequities_realtime_amd_v4_1.indicative_price.size = 8

-- Display: Indicative Price
aquis_aquisequities_realtime_amd_v4_1.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
aquis_aquisequities_realtime_amd_v4_1.indicative_price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Indicative Price
aquis_aquisequities_realtime_amd_v4_1.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisequities_realtime_amd_v4_1.indicative_price.translate(raw)
  local display = aquis_aquisequities_realtime_amd_v4_1.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Isin
aquis_aquisequities_realtime_amd_v4_1.isin = {}

-- Size: Isin
aquis_aquisequities_realtime_amd_v4_1.isin.size = 12

-- Display: Isin
aquis_aquisequities_realtime_amd_v4_1.isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin: No Value"
  end

  return "Isin: "..value
end

-- Dissect: Isin
aquis_aquisequities_realtime_amd_v4_1.isin.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.isin.size
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

  local display = aquis_aquisequities_realtime_amd_v4_1.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.isin, range, value, display)

  return offset + length, value
end

-- Lot Size
aquis_aquisequities_realtime_amd_v4_1.lot_size = {}

-- Size: Lot Size
aquis_aquisequities_realtime_amd_v4_1.lot_size.size = 8

-- Display: Lot Size
aquis_aquisequities_realtime_amd_v4_1.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
aquis_aquisequities_realtime_amd_v4_1.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = aquis_aquisequities_realtime_amd_v4_1.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lot Size Decimal
aquis_aquisequities_realtime_amd_v4_1.lot_size_decimal = {}

-- Size: Lot Size Decimal
aquis_aquisequities_realtime_amd_v4_1.lot_size_decimal.size = 1

-- Display: Lot Size Decimal
aquis_aquisequities_realtime_amd_v4_1.lot_size_decimal.display = function(value)
  return "Lot Size Decimal: "..value
end

-- Dissect: Lot Size Decimal
aquis_aquisequities_realtime_amd_v4_1.lot_size_decimal.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.lot_size_decimal.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.lot_size_decimal.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.lot_size_decimal, range, value, display)

  return offset + length, value
end

-- Match Vol
aquis_aquisequities_realtime_amd_v4_1.match_vol = {}

-- Size: Match Vol
aquis_aquisequities_realtime_amd_v4_1.match_vol.size = 4

-- Display: Match Vol
aquis_aquisequities_realtime_amd_v4_1.match_vol.display = function(value)
  return "Match Vol: "..value
end

-- Dissect: Match Vol
aquis_aquisequities_realtime_amd_v4_1.match_vol.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.match_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.match_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.match_vol, range, value, display)

  return offset + length, value
end

-- Message Count
aquis_aquisequities_realtime_amd_v4_1.message_count = {}

-- Size: Message Count
aquis_aquisequities_realtime_amd_v4_1.message_count.size = 1

-- Display: Message Count
aquis_aquisequities_realtime_amd_v4_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
aquis_aquisequities_realtime_amd_v4_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Mic
aquis_aquisequities_realtime_amd_v4_1.mic = {}

-- Size: Mic
aquis_aquisequities_realtime_amd_v4_1.mic.size = 4

-- Display: Mic
aquis_aquisequities_realtime_amd_v4_1.mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
aquis_aquisequities_realtime_amd_v4_1.mic.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.mic.size
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

  local display = aquis_aquisequities_realtime_amd_v4_1.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.mic, range, value, display)

  return offset + length, value
end

-- Msg Length
aquis_aquisequities_realtime_amd_v4_1.msg_length = {}

-- Size: Msg Length
aquis_aquisequities_realtime_amd_v4_1.msg_length.size = 1

-- Display: Msg Length
aquis_aquisequities_realtime_amd_v4_1.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
aquis_aquisequities_realtime_amd_v4_1.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
aquis_aquisequities_realtime_amd_v4_1.msg_type = {}

-- Size: Msg Type
aquis_aquisequities_realtime_amd_v4_1.msg_type.size = 1

-- Display: Msg Type
aquis_aquisequities_realtime_amd_v4_1.msg_type.labels = {
  [2] = "Msg Type: Order Add (2)",
  [3] = "Msg Type: Order Cancel (3)",
  [4] = "Msg Type: Order Modify (4)",
  [5] = "Msg Type: Trade (5)",
  [6] = "Msg Type: Trade Bust Message (6)",
  [7] = "Msg Type: Tick Table Data Message (7)",
  [8] = "Msg Type: Security Definition Message (8)",
  [9] = "Msg Type: Security Status Message (9)",
  [17] = "Msg Type: Ao D Update Message (17)",
  [16] = "Msg Type: Ma C Update Message (16)",
}

aquis_aquisequities_realtime_amd_v4_1.msg_type.display = function(value)
  return aquis_aquisequities_realtime_amd_v4_1.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
aquis_aquisequities_realtime_amd_v4_1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Name
aquis_aquisequities_realtime_amd_v4_1.name = {}

-- Size: Name
aquis_aquisequities_realtime_amd_v4_1.name.size = 10

-- Display: Name
aquis_aquisequities_realtime_amd_v4_1.name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Name: No Value"
  end

  return "Name: "..value
end

-- Dissect: Name
aquis_aquisequities_realtime_amd_v4_1.name.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.name.size
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

  local display = aquis_aquisequities_realtime_amd_v4_1.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.name, range, value, display)

  return offset + length, value
end

-- Order Ref
aquis_aquisequities_realtime_amd_v4_1.order_ref = {}

-- Size: Order Ref
aquis_aquisequities_realtime_amd_v4_1.order_ref.size = 4

-- Display: Order Ref
aquis_aquisequities_realtime_amd_v4_1.order_ref.display = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
aquis_aquisequities_realtime_amd_v4_1.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Price
aquis_aquisequities_realtime_amd_v4_1.price = {}

-- Size: Price
aquis_aquisequities_realtime_amd_v4_1.price.size = 8

-- Display: Price
aquis_aquisequities_realtime_amd_v4_1.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
aquis_aquisequities_realtime_amd_v4_1.price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Price
aquis_aquisequities_realtime_amd_v4_1.price.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisequities_realtime_amd_v4_1.price.translate(raw)
  local display = aquis_aquisequities_realtime_amd_v4_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
aquis_aquisequities_realtime_amd_v4_1.quantity = {}

-- Size: Quantity
aquis_aquisequities_realtime_amd_v4_1.quantity.size = 4

-- Display: Quantity
aquis_aquisequities_realtime_amd_v4_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
aquis_aquisequities_realtime_amd_v4_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reserved 20
aquis_aquisequities_realtime_amd_v4_1.reserved_20 = {}

-- Size: Reserved 20
aquis_aquisequities_realtime_amd_v4_1.reserved_20.size = 20

-- Display: Reserved 20
aquis_aquisequities_realtime_amd_v4_1.reserved_20.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reserved 20: No Value"
  end

  return "Reserved 20: "..value
end

-- Dissect: Reserved 20
aquis_aquisequities_realtime_amd_v4_1.reserved_20.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.reserved_20.size
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

  local display = aquis_aquisequities_realtime_amd_v4_1.reserved_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.reserved_20, range, value, display)

  return offset + length, value
end

-- Security Id
aquis_aquisequities_realtime_amd_v4_1.security_id = {}

-- Size: Security Id
aquis_aquisequities_realtime_amd_v4_1.security_id.size = 2

-- Display: Security Id
aquis_aquisequities_realtime_amd_v4_1.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
aquis_aquisequities_realtime_amd_v4_1.security_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Seq No
aquis_aquisequities_realtime_amd_v4_1.seq_no = {}

-- Size: Seq No
aquis_aquisequities_realtime_amd_v4_1.seq_no.size = 4

-- Display: Seq No
aquis_aquisequities_realtime_amd_v4_1.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
aquis_aquisequities_realtime_amd_v4_1.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Side
aquis_aquisequities_realtime_amd_v4_1.side = {}

-- Size: Side
aquis_aquisequities_realtime_amd_v4_1.side.size = 1

-- Display: Side
aquis_aquisequities_realtime_amd_v4_1.side.labels = {
  [1] = "Side: Buy Order (1)",
  [2] = "Side: Sell Order (2)",
}

aquis_aquisequities_realtime_amd_v4_1.side.display = function(value)
  return aquis_aquisequities_realtime_amd_v4_1.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
aquis_aquisequities_realtime_amd_v4_1.side.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.side, range, value, display)

  return offset + length, value
end

-- Threshold
aquis_aquisequities_realtime_amd_v4_1.threshold = {}

-- Size: Threshold
aquis_aquisequities_realtime_amd_v4_1.threshold.size = 8

-- Display: Threshold
aquis_aquisequities_realtime_amd_v4_1.threshold.display = function(value)
  return "Threshold: "..value
end

-- Translate: Threshold
aquis_aquisequities_realtime_amd_v4_1.threshold.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Threshold
aquis_aquisequities_realtime_amd_v4_1.threshold.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.threshold.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisequities_realtime_amd_v4_1.threshold.translate(raw)
  local display = aquis_aquisequities_realtime_amd_v4_1.threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.threshold, range, value, display)

  return offset + length, value
end

-- Tick Size
aquis_aquisequities_realtime_amd_v4_1.tick_size = {}

-- Size: Tick Size
aquis_aquisequities_realtime_amd_v4_1.tick_size.size = 8

-- Display: Tick Size
aquis_aquisequities_realtime_amd_v4_1.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Translate: Tick Size
aquis_aquisequities_realtime_amd_v4_1.tick_size.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Tick Size
aquis_aquisequities_realtime_amd_v4_1.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.tick_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = aquis_aquisequities_realtime_amd_v4_1.tick_size.translate(raw)
  local display = aquis_aquisequities_realtime_amd_v4_1.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Tick Table Id
aquis_aquisequities_realtime_amd_v4_1.tick_table_id = {}

-- Size: Tick Table Id
aquis_aquisequities_realtime_amd_v4_1.tick_table_id.size = 1

-- Display: Tick Table Id
aquis_aquisequities_realtime_amd_v4_1.tick_table_id.display = function(value)
  return "Tick Table Id: "..value
end

-- Dissect: Tick Table Id
aquis_aquisequities_realtime_amd_v4_1.tick_table_id.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.tick_table_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.tick_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.tick_table_id, range, value, display)

  return offset + length, value
end

-- Timestamp
aquis_aquisequities_realtime_amd_v4_1.timestamp = {}

-- Size: Timestamp
aquis_aquisequities_realtime_amd_v4_1.timestamp.size = 8

-- Dissect: Timestamp
aquis_aquisequities_realtime_amd_v4_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_aquis_aquisequities_realtime_amd_v4_1.fields.timestamp
  if aquis_aquisequities_realtime_amd_v4_1.absolute_time_base == 1 then field = omi_aquis_aquisequities_realtime_amd_v4_1.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trade Ref
aquis_aquisequities_realtime_amd_v4_1.trade_ref = {}

-- Size: Trade Ref
aquis_aquisequities_realtime_amd_v4_1.trade_ref.size = 4

-- Display: Trade Ref
aquis_aquisequities_realtime_amd_v4_1.trade_ref.display = function(value)
  return "Trade Ref: "..value
end

-- Dissect: Trade Ref
aquis_aquisequities_realtime_amd_v4_1.trade_ref.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.trade_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.trade_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.trade_ref, range, value, display)

  return offset + length, value
end

-- Trade Type
aquis_aquisequities_realtime_amd_v4_1.trade_type = {}

-- Size: Trade Type
aquis_aquisequities_realtime_amd_v4_1.trade_type.size = 1

-- Display: Trade Type
aquis_aquisequities_realtime_amd_v4_1.trade_type.labels = {
  [1] = "Trade Type: Visible Order (1)",
  [2] = "Trade Type: Hidden Order (2)",
  [3] = "Trade Type: Market At Close (3)",
  [4] = "Trade Type: Lis Cross (4)",
  [5] = "Trade Type: Benchmark Cross (5)",
  [6] = "Trade Type: Auction On Demand (6)",
  [12] = "Trade Type: Aquis Vwap Match (12)",
}

aquis_aquisequities_realtime_amd_v4_1.trade_type.display = function(value)
  return aquis_aquisequities_realtime_amd_v4_1.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
aquis_aquisequities_realtime_amd_v4_1.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Phase
aquis_aquisequities_realtime_amd_v4_1.trading_phase = {}

-- Size: Trading Phase
aquis_aquisequities_realtime_amd_v4_1.trading_phase.size = 1

-- Display: Trading Phase
aquis_aquisequities_realtime_amd_v4_1.trading_phase.labels = {
  [0] = "Trading Phase: Closed (0)",
  [1] = "Trading Phase: Continuous (1)",
}

aquis_aquisequities_realtime_amd_v4_1.trading_phase.display = function(value)
  return aquis_aquisequities_realtime_amd_v4_1.trading_phase.labels[value] or "Trading Phase: Unknown("..value..")"
end

-- Dissect: Trading Phase
aquis_aquisequities_realtime_amd_v4_1.trading_phase.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.trading_phase.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.trading_phase.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.trading_phase, range, value, display)

  return offset + length, value
end

-- Trading Status
aquis_aquisequities_realtime_amd_v4_1.trading_status = {}

-- Size: Trading Status
aquis_aquisequities_realtime_amd_v4_1.trading_status.size = 1

-- Display: Trading Status
aquis_aquisequities_realtime_amd_v4_1.trading_status.labels = {
  [1] = "Trading Status: Active (1)",
  [2] = "Trading Status: Halted (2)",
  [3] = "Trading Status: Suspended (3)",
  [8] = "Trading Status: Ao D Start (8)",
  [24] = "Trading Status: Ao D End (24)",
}

aquis_aquisequities_realtime_amd_v4_1.trading_status.display = function(value)
  return aquis_aquisequities_realtime_amd_v4_1.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
aquis_aquisequities_realtime_amd_v4_1.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Umtf
aquis_aquisequities_realtime_amd_v4_1.umtf = {}

-- Size: Umtf
aquis_aquisequities_realtime_amd_v4_1.umtf.size = 6

-- Display: Umtf
aquis_aquisequities_realtime_amd_v4_1.umtf.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Umtf: No Value"
  end

  return "Umtf: "..value
end

-- Dissect: Umtf
aquis_aquisequities_realtime_amd_v4_1.umtf.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisequities_realtime_amd_v4_1.umtf.size
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

  local display = aquis_aquisequities_realtime_amd_v4_1.umtf.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.umtf, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Aquis AquisEquities RealTime Amd 4.1
-----------------------------------------------------------------------

-- Ma C Update Message
aquis_aquisequities_realtime_amd_v4_1.ma_c_update_message = {}

-- Size: Ma C Update Message
aquis_aquisequities_realtime_amd_v4_1.ma_c_update_message.size =
  aquis_aquisequities_realtime_amd_v4_1.security_id.size + 
  aquis_aquisequities_realtime_amd_v4_1.indicative_price.size + 
  aquis_aquisequities_realtime_amd_v4_1.closing_buy_qty.size + 
  aquis_aquisequities_realtime_amd_v4_1.closing_sell_qty.size + 
  aquis_aquisequities_realtime_amd_v4_1.timestamp.size

-- Display: Ma C Update Message
aquis_aquisequities_realtime_amd_v4_1.ma_c_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ma C Update Message
aquis_aquisequities_realtime_amd_v4_1.ma_c_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_realtime_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = aquis_aquisequities_realtime_amd_v4_1.indicative_price.dissect(buffer, index, packet, parent)

  -- Closing Buy Qty: u32
  index, closing_buy_qty = aquis_aquisequities_realtime_amd_v4_1.closing_buy_qty.dissect(buffer, index, packet, parent)

  -- Closing Sell Qty: u32
  index, closing_sell_qty = aquis_aquisequities_realtime_amd_v4_1.closing_sell_qty.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisequities_realtime_amd_v4_1.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ma C Update Message
aquis_aquisequities_realtime_amd_v4_1.ma_c_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.ma_c_update_message, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.ma_c_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.ma_c_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.ma_c_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Ao D Update Message
aquis_aquisequities_realtime_amd_v4_1.ao_d_update_message = {}

-- Size: Ao D Update Message
aquis_aquisequities_realtime_amd_v4_1.ao_d_update_message.size =
  aquis_aquisequities_realtime_amd_v4_1.security_id.size + 
  aquis_aquisequities_realtime_amd_v4_1.indicative_price.size + 
  aquis_aquisequities_realtime_amd_v4_1.match_vol.size + 
  aquis_aquisequities_realtime_amd_v4_1.timestamp.size

-- Display: Ao D Update Message
aquis_aquisequities_realtime_amd_v4_1.ao_d_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ao D Update Message
aquis_aquisequities_realtime_amd_v4_1.ao_d_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_realtime_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Indicative Price: u64
  index, indicative_price = aquis_aquisequities_realtime_amd_v4_1.indicative_price.dissect(buffer, index, packet, parent)

  -- Match Vol: u32
  index, match_vol = aquis_aquisequities_realtime_amd_v4_1.match_vol.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisequities_realtime_amd_v4_1.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ao D Update Message
aquis_aquisequities_realtime_amd_v4_1.ao_d_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.ao_d_update_message, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.ao_d_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.ao_d_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.ao_d_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Flags
aquis_aquisequities_realtime_amd_v4_1.market_flags = {}

-- Size: Market Flags
aquis_aquisequities_realtime_amd_v4_1.market_flags.size = 1

-- Display: Market Flags
aquis_aquisequities_realtime_amd_v4_1.market_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trading flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Trading"
  end
  -- Is Mac Open flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Mac Open"
  end
  -- Is Mac Run flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Mac Run"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Flags
aquis_aquisequities_realtime_amd_v4_1.market_flags.bits = function(range, value, packet, parent)

  -- Trading: 1 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.trading, range, value)

  -- Mac Open: 1 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.mac_open, range, value)

  -- Mac Run: 1 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.mac_run, range, value)

  -- Unused 5: 5 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.unused_5, range, value)
end

-- Dissect: Market Flags
aquis_aquisequities_realtime_amd_v4_1.market_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_aquisequities_realtime_amd_v4_1.market_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.market_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.market_flags, range, display)

  if show.structs then
    aquis_aquisequities_realtime_amd_v4_1.market_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Status Message
aquis_aquisequities_realtime_amd_v4_1.security_status_message = {}

-- Size: Security Status Message
aquis_aquisequities_realtime_amd_v4_1.security_status_message.size =
  aquis_aquisequities_realtime_amd_v4_1.security_id.size + 
  aquis_aquisequities_realtime_amd_v4_1.trading_status.size + 
  aquis_aquisequities_realtime_amd_v4_1.market_flags.size + 
  aquis_aquisequities_realtime_amd_v4_1.timestamp.size + 
  aquis_aquisequities_realtime_amd_v4_1.trading_phase.size

-- Display: Security Status Message
aquis_aquisequities_realtime_amd_v4_1.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
aquis_aquisequities_realtime_amd_v4_1.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_realtime_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = aquis_aquisequities_realtime_amd_v4_1.trading_status.dissect(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = aquis_aquisequities_realtime_amd_v4_1.market_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisequities_realtime_amd_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Phase: u8
  index, trading_phase = aquis_aquisequities_realtime_amd_v4_1.trading_phase.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
aquis_aquisequities_realtime_amd_v4_1.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.security_status_message, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Lot Size Composite
aquis_aquisequities_realtime_amd_v4_1.lot_size_composite = {}

-- Size: Lot Size Composite
aquis_aquisequities_realtime_amd_v4_1.lot_size_composite.size =
  aquis_aquisequities_realtime_amd_v4_1.lot_size.size + 
  aquis_aquisequities_realtime_amd_v4_1.lot_size_decimal.size

-- Display: Lot Size Composite
aquis_aquisequities_realtime_amd_v4_1.lot_size_composite.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return tostring(value)
end

-- Dissect Fields: Lot Size Composite
aquis_aquisequities_realtime_amd_v4_1.lot_size_composite.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Lot Size: u64
  index, lot_size = aquis_aquisequities_realtime_amd_v4_1.lot_size.dissect(buffer, index, packet, parent)

  -- Lot Size Decimal: u8
  index, lot_size_decimal = aquis_aquisequities_realtime_amd_v4_1.lot_size_decimal.dissect(buffer, index, packet, parent)

  -- Composite value
  local lot_size_composite = lot_size:tonumber() / 10 ^ lot_size_decimal

  return index, lot_size_composite
end

-- Dissect: Lot Size Composite
aquis_aquisequities_realtime_amd_v4_1.lot_size_composite.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.lot_size_composite, buffer(offset, 0))
    local index, value = aquis_aquisequities_realtime_amd_v4_1.lot_size_composite.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.lot_size_composite.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.lot_size_composite.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Flags
aquis_aquisequities_realtime_amd_v4_1.security_definition_flags = {}

-- Size: Security Definition Flags
aquis_aquisequities_realtime_amd_v4_1.security_definition_flags.size = 2

-- Display: Security Definition Flags
aquis_aquisequities_realtime_amd_v4_1.security_definition_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Mac Enabled flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Mac Enabled"
  end
  -- Is Test Stock flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Test Stock"
  end
  -- Is Illiquid flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Illiquid"
  end
  -- Is Aod Enabled flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Aod Enabled"
  end
  -- Is Avx Enabled flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Avx Enabled"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Definition Flags
aquis_aquisequities_realtime_amd_v4_1.security_definition_flags.bits = function(range, value, packet, parent)

  -- Mac Enabled: 1 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.mac_enabled, range, value)

  -- Test Stock: 1 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.test_stock, range, value)

  -- Illiquid: 1 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.illiquid, range, value)

  -- Unused 1: 1 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.unused_1, range, value)

  -- Aod Enabled: 1 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.aod_enabled, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.unused_2, range, value)

  -- Avx Enabled: 1 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.avx_enabled, range, value)

  -- Unused 8: 8 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.unused_8, range, value)
end

-- Dissect: Security Definition Flags
aquis_aquisequities_realtime_amd_v4_1.security_definition_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_aquisequities_realtime_amd_v4_1.security_definition_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.security_definition_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_aquis_aquisequities_realtime_amd_v4_1.fields.security_definition_flags, range, display)

  if show.structs then
    aquis_aquisequities_realtime_amd_v4_1.security_definition_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Definition Message
aquis_aquisequities_realtime_amd_v4_1.security_definition_message = {}

-- Size: Security Definition Message
aquis_aquisequities_realtime_amd_v4_1.security_definition_message.size =
  aquis_aquisequities_realtime_amd_v4_1.security_id.size + 
  aquis_aquisequities_realtime_amd_v4_1.umtf.size + 
  aquis_aquisequities_realtime_amd_v4_1.isin.size + 
  aquis_aquisequities_realtime_amd_v4_1.currency.size + 
  aquis_aquisequities_realtime_amd_v4_1.mic.size + 
  aquis_aquisequities_realtime_amd_v4_1.tick_table_id.size + 
  aquis_aquisequities_realtime_amd_v4_1.security_definition_flags.size + 
  aquis_aquisequities_realtime_amd_v4_1.reserved_20.size + 
  aquis_aquisequities_realtime_amd_v4_1.lot_size_composite.size

-- Display: Security Definition Message
aquis_aquisequities_realtime_amd_v4_1.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
aquis_aquisequities_realtime_amd_v4_1.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_realtime_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Umtf: char(6)
  index, umtf = aquis_aquisequities_realtime_amd_v4_1.umtf.dissect(buffer, index, packet, parent)

  -- Isin: char(12)
  index, isin = aquis_aquisequities_realtime_amd_v4_1.isin.dissect(buffer, index, packet, parent)

  -- Currency: char(3)
  index, currency = aquis_aquisequities_realtime_amd_v4_1.currency.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = aquis_aquisequities_realtime_amd_v4_1.mic.dissect(buffer, index, packet, parent)

  -- Tick Table Id: u8
  index, tick_table_id = aquis_aquisequities_realtime_amd_v4_1.tick_table_id.dissect(buffer, index, packet, parent)

  -- Security Definition Flags: Struct of 8 fields
  index, security_definition_flags = aquis_aquisequities_realtime_amd_v4_1.security_definition_flags.dissect(buffer, index, packet, parent)

  -- Reserved 20: char(20)
  index, reserved_20 = aquis_aquisequities_realtime_amd_v4_1.reserved_20.dissect(buffer, index, packet, parent)

  -- Lot Size Composite: Struct of 2 fields
  index, lot_size_composite = aquis_aquisequities_realtime_amd_v4_1.lot_size_composite.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message
aquis_aquisequities_realtime_amd_v4_1.security_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.security_definition_message, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.security_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.security_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.security_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Table Data Message
aquis_aquisequities_realtime_amd_v4_1.tick_table_data_message = {}

-- Size: Tick Table Data Message
aquis_aquisequities_realtime_amd_v4_1.tick_table_data_message.size =
  aquis_aquisequities_realtime_amd_v4_1.tick_table_id.size + 
  aquis_aquisequities_realtime_amd_v4_1.name.size + 
  aquis_aquisequities_realtime_amd_v4_1.threshold.size + 
  aquis_aquisequities_realtime_amd_v4_1.tick_size.size

-- Display: Tick Table Data Message
aquis_aquisequities_realtime_amd_v4_1.tick_table_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Data Message
aquis_aquisequities_realtime_amd_v4_1.tick_table_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick Table Id: u8
  index, tick_table_id = aquis_aquisequities_realtime_amd_v4_1.tick_table_id.dissect(buffer, index, packet, parent)

  -- Name: char(10)
  index, name = aquis_aquisequities_realtime_amd_v4_1.name.dissect(buffer, index, packet, parent)

  -- Threshold: u64
  index, threshold = aquis_aquisequities_realtime_amd_v4_1.threshold.dissect(buffer, index, packet, parent)

  -- Tick Size: u64
  index, tick_size = aquis_aquisequities_realtime_amd_v4_1.tick_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Table Data Message
aquis_aquisequities_realtime_amd_v4_1.tick_table_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.tick_table_data_message, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.tick_table_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.tick_table_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.tick_table_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Binary Mmt
aquis_aquisequities_realtime_amd_v4_1.binary_mmt = {}

-- Size: Binary Mmt
aquis_aquisequities_realtime_amd_v4_1.binary_mmt.size = 4

-- Display: Binary Mmt
aquis_aquisequities_realtime_amd_v4_1.binary_mmt.display = function(range, value, packet, parent)
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
aquis_aquisequities_realtime_amd_v4_1.binary_mmt.bits = function(range, value, packet, parent)

  -- Market Mechanism: 3 Bit Unsigned Fixed Width Integer Enum with 7 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.market_mechanism, range, value)

  -- Trading Mode: 4 Bit Unsigned Fixed Width Integer Enum with 11 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.trading_mode, range, value)

  -- Transaction Category: 3 Bit Unsigned Fixed Width Integer Enum with 5 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.transaction_category, range, value)

  -- Negotiation Indicator Or Pre Trade Transparency Waiver: 3 Bit Unsigned Fixed Width Integer Enum with 8 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.negotiation_indicator_or_pre_trade_transparency_waiver, range, value)

  -- Crossing Trade: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.crossing_trade, range, value)

  -- Modification Indicator: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.modification_indicator, range, value)

  -- Benchmark Reference Price Indicator: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.benchmark_reference_price_indicator, range, value)

  -- Dividend: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.dividend, range, value)

  -- Off Book Automation: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.off_book_automation, range, value)

  -- Price Formation Discovery Process: 3 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.price_formation_discovery_process, range, value)

  -- Algorithmic Indicator: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.algorithmic_indicator, range, value)

  -- Publication Mode Post Trade Deferral: 3 Bit Unsigned Fixed Width Integer Enum with 7 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.publication_mode_post_trade_deferral, range, value)

  -- Deferral Type: 1 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.deferral_type, range, value)

  -- Duplicative Indicator: 1 Bit Enum with 2 values
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.duplicative_indicator, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.unused_2, range, value)
end

-- Dissect: Binary Mmt
aquis_aquisequities_realtime_amd_v4_1.binary_mmt.dissect = function(buffer, offset, packet, parent)
  local size = aquis_aquisequities_realtime_amd_v4_1.binary_mmt.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.binary_mmt.display(range, value, packet, parent)
  local element = parent:add_le(omi_aquis_aquisequities_realtime_amd_v4_1.fields.binary_mmt, range, display)

  if show.structs then
    aquis_aquisequities_realtime_amd_v4_1.binary_mmt.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Bust Message
aquis_aquisequities_realtime_amd_v4_1.trade_bust_message = {}

-- Size: Trade Bust Message
aquis_aquisequities_realtime_amd_v4_1.trade_bust_message.size =
  aquis_aquisequities_realtime_amd_v4_1.security_id.size + 
  aquis_aquisequities_realtime_amd_v4_1.quantity.size + 
  aquis_aquisequities_realtime_amd_v4_1.price.size + 
  aquis_aquisequities_realtime_amd_v4_1.trade_ref.size + 
  aquis_aquisequities_realtime_amd_v4_1.timestamp.size + 
  aquis_aquisequities_realtime_amd_v4_1.binary_mmt.size

-- Display: Trade Bust Message
aquis_aquisequities_realtime_amd_v4_1.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
aquis_aquisequities_realtime_amd_v4_1.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_realtime_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_aquisequities_realtime_amd_v4_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_aquisequities_realtime_amd_v4_1.price.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_aquisequities_realtime_amd_v4_1.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisequities_realtime_amd_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Binary Mmt: Struct of 15 fields
  index, binary_mmt = aquis_aquisequities_realtime_amd_v4_1.binary_mmt.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
aquis_aquisequities_realtime_amd_v4_1.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.trade_bust_message, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- Md Flags
aquis_aquisequities_realtime_amd_v4_1.md_flags = {}

-- Size: Md Flags
aquis_aquisequities_realtime_amd_v4_1.md_flags.size = 1

-- Display: Md Flags
aquis_aquisequities_realtime_amd_v4_1.md_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unrestricted Liquidity Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Unrestricted Liquidity Indicator"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Md Flags
aquis_aquisequities_realtime_amd_v4_1.md_flags.bits = function(range, value, packet, parent)

  -- Unrestricted Liquidity Indicator: 1 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.unrestricted_liquidity_indicator, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.unused_7, range, value)
end

-- Dissect: Md Flags
aquis_aquisequities_realtime_amd_v4_1.md_flags.dissect = function(buffer, offset, packet, parent)
  local size = aquis_aquisequities_realtime_amd_v4_1.md_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = aquis_aquisequities_realtime_amd_v4_1.md_flags.display(range, value, packet, parent)
  local element = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.md_flags, range, display)

  if show.structs then
    aquis_aquisequities_realtime_amd_v4_1.md_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade
aquis_aquisequities_realtime_amd_v4_1.trade = {}

-- Size: Trade
aquis_aquisequities_realtime_amd_v4_1.trade.size =
  aquis_aquisequities_realtime_amd_v4_1.security_id.size + 
  aquis_aquisequities_realtime_amd_v4_1.trade_type.size + 
  aquis_aquisequities_realtime_amd_v4_1.quantity.size + 
  aquis_aquisequities_realtime_amd_v4_1.price.size + 
  aquis_aquisequities_realtime_amd_v4_1.order_ref.size + 
  aquis_aquisequities_realtime_amd_v4_1.trade_ref.size + 
  aquis_aquisequities_realtime_amd_v4_1.timestamp.size + 
  aquis_aquisequities_realtime_amd_v4_1.mic.size + 
  aquis_aquisequities_realtime_amd_v4_1.binary_mmt.size + 
  aquis_aquisequities_realtime_amd_v4_1.md_flags.size

-- Display: Trade
aquis_aquisequities_realtime_amd_v4_1.trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
aquis_aquisequities_realtime_amd_v4_1.trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_realtime_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Trade Type: u8
  index, trade_type = aquis_aquisequities_realtime_amd_v4_1.trade_type.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_aquisequities_realtime_amd_v4_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_aquisequities_realtime_amd_v4_1.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_aquisequities_realtime_amd_v4_1.order_ref.dissect(buffer, index, packet, parent)

  -- Trade Ref: u32
  index, trade_ref = aquis_aquisequities_realtime_amd_v4_1.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisequities_realtime_amd_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = aquis_aquisequities_realtime_amd_v4_1.mic.dissect(buffer, index, packet, parent)

  -- Binary Mmt: Struct of 15 fields
  index, binary_mmt = aquis_aquisequities_realtime_amd_v4_1.binary_mmt.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 2 fields
  index, md_flags = aquis_aquisequities_realtime_amd_v4_1.md_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade
aquis_aquisequities_realtime_amd_v4_1.trade.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.trade, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.trade.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify
aquis_aquisequities_realtime_amd_v4_1.order_modify = {}

-- Size: Order Modify
aquis_aquisequities_realtime_amd_v4_1.order_modify.size =
  aquis_aquisequities_realtime_amd_v4_1.security_id.size + 
  aquis_aquisequities_realtime_amd_v4_1.quantity.size + 
  aquis_aquisequities_realtime_amd_v4_1.price.size + 
  aquis_aquisequities_realtime_amd_v4_1.order_ref.size + 
  aquis_aquisequities_realtime_amd_v4_1.timestamp.size + 
  aquis_aquisequities_realtime_amd_v4_1.md_flags.size

-- Display: Order Modify
aquis_aquisequities_realtime_amd_v4_1.order_modify.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify
aquis_aquisequities_realtime_amd_v4_1.order_modify.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_realtime_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_aquisequities_realtime_amd_v4_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_aquisequities_realtime_amd_v4_1.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_aquisequities_realtime_amd_v4_1.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisequities_realtime_amd_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 2 fields
  index, md_flags = aquis_aquisequities_realtime_amd_v4_1.md_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify
aquis_aquisequities_realtime_amd_v4_1.order_modify.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.order_modify, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.order_modify.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.order_modify.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.order_modify.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel
aquis_aquisequities_realtime_amd_v4_1.order_cancel = {}

-- Size: Order Cancel
aquis_aquisequities_realtime_amd_v4_1.order_cancel.size =
  aquis_aquisequities_realtime_amd_v4_1.security_id.size + 
  aquis_aquisequities_realtime_amd_v4_1.order_ref.size + 
  aquis_aquisequities_realtime_amd_v4_1.timestamp.size + 
  aquis_aquisequities_realtime_amd_v4_1.md_flags.size

-- Display: Order Cancel
aquis_aquisequities_realtime_amd_v4_1.order_cancel.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel
aquis_aquisequities_realtime_amd_v4_1.order_cancel.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_realtime_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_aquisequities_realtime_amd_v4_1.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisequities_realtime_amd_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 2 fields
  index, md_flags = aquis_aquisequities_realtime_amd_v4_1.md_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel
aquis_aquisequities_realtime_amd_v4_1.order_cancel.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.order_cancel, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.order_cancel.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.order_cancel.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.order_cancel.fields(buffer, offset, packet, parent)
  end
end

-- Order Add
aquis_aquisequities_realtime_amd_v4_1.order_add = {}

-- Size: Order Add
aquis_aquisequities_realtime_amd_v4_1.order_add.size =
  aquis_aquisequities_realtime_amd_v4_1.security_id.size + 
  aquis_aquisequities_realtime_amd_v4_1.side.size + 
  aquis_aquisequities_realtime_amd_v4_1.quantity.size + 
  aquis_aquisequities_realtime_amd_v4_1.price.size + 
  aquis_aquisequities_realtime_amd_v4_1.order_ref.size + 
  aquis_aquisequities_realtime_amd_v4_1.timestamp.size + 
  aquis_aquisequities_realtime_amd_v4_1.md_flags.size

-- Display: Order Add
aquis_aquisequities_realtime_amd_v4_1.order_add.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add
aquis_aquisequities_realtime_amd_v4_1.order_add.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u16
  index, security_id = aquis_aquisequities_realtime_amd_v4_1.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = aquis_aquisequities_realtime_amd_v4_1.side.dissect(buffer, index, packet, parent)

  -- Quantity: u32
  index, quantity = aquis_aquisequities_realtime_amd_v4_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: u64
  index, price = aquis_aquisequities_realtime_amd_v4_1.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u32
  index, order_ref = aquis_aquisequities_realtime_amd_v4_1.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: u64
  index, timestamp = aquis_aquisequities_realtime_amd_v4_1.timestamp.dissect(buffer, index, packet, parent)

  -- Md Flags: Struct of 2 fields
  index, md_flags = aquis_aquisequities_realtime_amd_v4_1.md_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add
aquis_aquisequities_realtime_amd_v4_1.order_add.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.order_add, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.order_add.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.order_add.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.order_add.fields(buffer, offset, packet, parent)
  end
end

-- Payload
aquis_aquisequities_realtime_amd_v4_1.payload = {}

-- Dispatch: Payload
aquis_aquisequities_realtime_amd_v4_1.payload.dispatch = {
  [2] = aquis_aquisequities_realtime_amd_v4_1.order_add.dissect,
  [3] = aquis_aquisequities_realtime_amd_v4_1.order_cancel.dissect,
  [4] = aquis_aquisequities_realtime_amd_v4_1.order_modify.dissect,
  [5] = aquis_aquisequities_realtime_amd_v4_1.trade.dissect,
  [6] = aquis_aquisequities_realtime_amd_v4_1.trade_bust_message.dissect,
  [7] = aquis_aquisequities_realtime_amd_v4_1.tick_table_data_message.dissect,
  [8] = aquis_aquisequities_realtime_amd_v4_1.security_definition_message.dissect,
  [9] = aquis_aquisequities_realtime_amd_v4_1.security_status_message.dissect,
  [17] = aquis_aquisequities_realtime_amd_v4_1.ao_d_update_message.dissect,
  [16] = aquis_aquisequities_realtime_amd_v4_1.ma_c_update_message.dissect,
}

-- Dissect: Payload
aquis_aquisequities_realtime_amd_v4_1.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = aquis_aquisequities_realtime_amd_v4_1.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
aquis_aquisequities_realtime_amd_v4_1.message_header = {}

-- Size: Message Header
aquis_aquisequities_realtime_amd_v4_1.message_header.size =
  aquis_aquisequities_realtime_amd_v4_1.msg_type.size + 
  aquis_aquisequities_realtime_amd_v4_1.msg_length.size + 
  aquis_aquisequities_realtime_amd_v4_1.seq_no.size

-- Display: Message Header
aquis_aquisequities_realtime_amd_v4_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
aquis_aquisequities_realtime_amd_v4_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: u8
  index, msg_type = aquis_aquisequities_realtime_amd_v4_1.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: u8
  index, msg_length = aquis_aquisequities_realtime_amd_v4_1.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: u32
  index, seq_no = aquis_aquisequities_realtime_amd_v4_1.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
aquis_aquisequities_realtime_amd_v4_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.message_header, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
aquis_aquisequities_realtime_amd_v4_1.message = {}

-- Display: Message
aquis_aquisequities_realtime_amd_v4_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
aquis_aquisequities_realtime_amd_v4_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = aquis_aquisequities_realtime_amd_v4_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 10 branches
  index = aquis_aquisequities_realtime_amd_v4_1.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
aquis_aquisequities_realtime_amd_v4_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.message, buffer(offset, 0))
    local current = aquis_aquisequities_realtime_amd_v4_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = aquis_aquisequities_realtime_amd_v4_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aquis_aquisequities_realtime_amd_v4_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
aquis_aquisequities_realtime_amd_v4_1.packet_header = {}

-- Size: Packet Header
aquis_aquisequities_realtime_amd_v4_1.packet_header.size =
  aquis_aquisequities_realtime_amd_v4_1.message_count.size

-- Display: Packet Header
aquis_aquisequities_realtime_amd_v4_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
aquis_aquisequities_realtime_amd_v4_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: u8
  index, message_count = aquis_aquisequities_realtime_amd_v4_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
aquis_aquisequities_realtime_amd_v4_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1.fields.packet_header, buffer(offset, 0))
    local index = aquis_aquisequities_realtime_amd_v4_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisequities_realtime_amd_v4_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisequities_realtime_amd_v4_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
aquis_aquisequities_realtime_amd_v4_1.packet = {}

-- Verify required size of Udp packet
aquis_aquisequities_realtime_amd_v4_1.packet.requiredsize = function(buffer)
  return buffer:len() >= aquis_aquisequities_realtime_amd_v4_1.packet_header.size
end

-- Dissect Packet
aquis_aquisequities_realtime_amd_v4_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 1 fields
  index, packet_header = aquis_aquisequities_realtime_amd_v4_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = aquis_aquisequities_realtime_amd_v4_1.message.dissect(buffer, index, packet, parent, msg_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_aquis_aquisequities_realtime_amd_v4_1.init()
end

-- Dissector for Aquis AquisEquities RealTime Amd 4.1
function omi_aquis_aquisequities_realtime_amd_v4_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_aquis_aquisequities_realtime_amd_v4_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_aquis_aquisequities_realtime_amd_v4_1, buffer(), omi_aquis_aquisequities_realtime_amd_v4_1.description, "("..buffer:len().." Bytes)")
  return aquis_aquisequities_realtime_amd_v4_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
aquis_aquisequities_realtime_amd_v4_1.packet.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local msg_type = buffer(1, 1):uint()

  -- Order Add
  if msg_type == 2 then
    return true
  end

  -- Order Cancel
  if msg_type == 3 then
    return true
  end

  -- Order Modify
  if msg_type == 4 then
    return true
  end

  -- Trade
  if msg_type == 5 then
    return true
  end

  -- Trade Bust Message
  if msg_type == 6 then
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

  -- Ao D Update Message
  if msg_type == 17 then
    return true
  end

  -- Ma C Update Message
  if msg_type == 16 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Aquis AquisEquities RealTime Amd 4.1 (Udp)
local function omi_aquis_aquisequities_realtime_amd_v4_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aquis_aquisequities_realtime_amd_v4_1.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not aquis_aquisequities_realtime_amd_v4_1.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aquis_aquisequities_realtime_amd_v4_1
  omi_aquis_aquisequities_realtime_amd_v4_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Aquis AquisEquities RealTime Amd 4.1
omi_aquis_aquisequities_realtime_amd_v4_1:register_heuristic("udp", omi_aquis_aquisequities_realtime_amd_v4_1_udp_heuristic)

-- Register Aquis AquisEquities RealTime Amd 4.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_aquis_aquisequities_realtime_amd_v4_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 4.1
--   Date: Thursday, January 1, 2026
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
