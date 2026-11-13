-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- AsiaNext AsiaNextDerivatives RealTime Amd 1.3 Protocol
local omi_asianext_asianextderivatives_realtime_amd_v1_3 = Proto("Omi.AsiaNext.AsiaNextDerivatives.RealTime.Amd.v1.3", "AsiaNext AsiaNextDerivatives RealTime Amd 1.3")

-- Protocol table
local asianext_asianextderivatives_realtime_amd_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- AsiaNext AsiaNextDerivatives RealTime Amd 1.3 Fields
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "asianext.asianextderivatives.realtime.amd.v1.3.algorithmicindicator", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x01000000)
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.aod_enabled = ProtoField.new("Aod Enabled", "asianext.asianextderivatives.realtime.amd.v1.3.aodenabled", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "0 = Security is not enabled for the AoD, 1 = Security is enabled. This is not applicable to AsiaNext")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.benchmark_reference_price_indicator = ProtoField.new("Benchmark Reference Price Indicator", "asianext.asianextderivatives.realtime.amd.v1.3.benchmarkreferencepriceindicator", ftypes.UINT32, {[1]="Benchmark Trade", [2]="Reference Price Trade", [3]="No Benchmark Or Ref Price"}, base.DEC, 0x00030000, "Benchmark/Reference Price Indicator")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.binary_mmt = ProtoField.new("Binary Mmt", "asianext.asianextderivatives.realtime.amd.v1.3.binarymmt", ftypes.STRING, nil, nil, nil, "MMT flags")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.contract_size = ProtoField.new("Contract Size", "asianext.asianextderivatives.realtime.amd.v1.3.contractsize", ftypes.UINT64, nil, nil, nil, "The contract size by which a price must be adjusted to determine the nominal value of a futures contract")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.contract_size_composite = ProtoField.new("Contract Size Composite", "asianext.asianextderivatives.realtime.amd.v1.3.contractsizecomposite", ftypes.STRING, nil, nil, nil, "Contract size scaled at runtime by contractSizeDecimals")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.contract_size_decimals = ProtoField.new("Contract Size Decimals", "asianext.asianextderivatives.realtime.amd.v1.3.contractsizedecimals", ftypes.UINT8, nil, nil, nil, "Number of decimal places implied in contractSize")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.crossing_trade = ProtoField.new("Crossing Trade", "asianext.asianextderivatives.realtime.amd.v1.3.crossingtrade", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00002000)
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.currency = ProtoField.new("Currency", "asianext.asianextderivatives.realtime.amd.v1.3.currency", ftypes.STRING, nil, nil, nil, "Trading currency for the security")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.deferral_type = ProtoField.new("Deferral Type", "asianext.asianextderivatives.realtime.amd.v1.3.deferraltype", ftypes.UINT32, {[0]="None Apply"}, base.DEC, 0x10000000)
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.dividend = ProtoField.new("Dividend", "asianext.asianextderivatives.realtime.amd.v1.3.dividend", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00040000)
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "asianext.asianextderivatives.realtime.amd.v1.3.duplicativeindicator", ftypes.UINT32, {[0]="Unique", [1]="Duplicative"}, base.DEC, 0x20000000)
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.exchange_symbol = ProtoField.new("Exchange Symbol", "asianext.asianextderivatives.realtime.amd.v1.3.exchangesymbol", ftypes.STRING, nil, nil, nil, "Exchange symbol for the security")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.exercise_style = ProtoField.new("Exercise Style", "asianext.asianextderivatives.realtime.amd.v1.3.exercisestyle", ftypes.UINT8, nil, nil, nil, "The exercise style of the contract")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.flags = ProtoField.new("Flags", "asianext.asianextderivatives.realtime.amd.v1.3.flags", ftypes.STRING, nil, nil, nil, "Security flags")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.futures_flags = ProtoField.new("Futures Flags", "asianext.asianextderivatives.realtime.amd.v1.3.futuresflags", ftypes.STRING, nil, nil, nil, "Futures security flags")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.illiquid = ProtoField.new("Illiquid", "asianext.asianextderivatives.realtime.amd.v1.3.illiquid", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "0 = Security is liquid, 1 = Security is illiquid")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.isin = ProtoField.new("Isin", "asianext.asianextderivatives.realtime.amd.v1.3.isin", ftypes.STRING, nil, nil, nil, "ISIN for the security. This is not applicable to AsiaNext")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.live = ProtoField.new("Live", "asianext.asianextderivatives.realtime.amd.v1.3.live", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008, "0 = Security is not live, 1 = Security is live")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.lot_size = ProtoField.new("Lot Size", "asianext.asianextderivatives.realtime.amd.v1.3.lotsize", ftypes.UINT64, nil, nil, nil, "Lot Size for the security")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.lot_size_composite = ProtoField.new("Lot Size Composite", "asianext.asianextderivatives.realtime.amd.v1.3.lotsizecomposite", ftypes.STRING, nil, nil, nil, "Lot size scaled at runtime by lotSizeDecimal")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.lot_size_decimal = ProtoField.new("Lot Size Decimal", "asianext.asianextderivatives.realtime.amd.v1.3.lotsizedecimal", ftypes.UINT8, nil, nil, nil, "Number of decimals implied in lotSize")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.mac_enabled = ProtoField.new("Mac Enabled", "asianext.asianextderivatives.realtime.amd.v1.3.macenabled", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001, "Not in used. Default to 0")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.mac_open = ProtoField.new("Mac Open", "asianext.asianextderivatives.realtime.amd.v1.3.macopen", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "0 = MaC is Closed, 1 = MaC is Open. Not Applicable to AsiaNext")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.mac_run = ProtoField.new("Mac Run", "asianext.asianextderivatives.realtime.amd.v1.3.macrun", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "0 = MaC is not locked down, 1 = MaC is locked down. Not Applicable to AsiaNext")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.market_flags = ProtoField.new("Market Flags", "asianext.asianextderivatives.realtime.amd.v1.3.marketflags", ftypes.STRING, nil, nil, nil, "Market status flags")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.market_mechanism = ProtoField.new("Market Mechanism", "asianext.asianextderivatives.realtime.amd.v1.3.marketmechanism", ftypes.UINT32, {[1]="Central Limit Order Book", [2]="Quote Driven Market", [3]="Dark Order Book", [4]="Off Book", [5]="Periodic Auction", [6]="Rfq", [7]="Other"}, base.DEC, 0x00000007)
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.maturity_date = ProtoField.new("Maturity Date", "asianext.asianextderivatives.realtime.amd.v1.3.maturitydate", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The date and time a futures instrument will expire. Maturity date is not applicable for perpetual futures. The value is defaulted to 7956835200000000000 in Timestamp format, ie, 2222-02-22T00:00:00.0000000Z")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.maturity_date_utc = ProtoField.new("Maturity Date", "asianext.asianextderivatives.realtime.amd.v1.3.maturitydate.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The date and time a futures instrument will expire. Maturity date is not applicable for perpetual futures. The value is defaulted to 7956835200000000000 in Timestamp format, ie, 2222-02-22T00:00:00.0000000Z")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.message_count = ProtoField.new("Message Count", "asianext.asianextderivatives.realtime.amd.v1.3.messagecount", ftypes.UINT8, nil, nil, nil, "number of messages (n) in this packet")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.mic = ProtoField.new("Mic", "asianext.asianextderivatives.realtime.amd.v1.3.mic", ftypes.STRING, nil, nil, nil, "MIC for the security's market of listing")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.modification_indicator = ProtoField.new("Modification Indicator", "asianext.asianextderivatives.realtime.amd.v1.3.modificationindicator", ftypes.UINT32, {[1]="Trade Cancellation", [2]="Trade Amendment", [3]="New Trade"}, base.DEC, 0x0000C000)
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.msg_length = ProtoField.new("Msg Length", "asianext.asianextderivatives.realtime.amd.v1.3.msglength", ftypes.UINT8, nil, nil, nil, "Length of market data message, including header")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.msg_type = ProtoField.new("Msg Type", "asianext.asianextderivatives.realtime.amd.v1.3.msgtype", ftypes.UINT8, nil, nil, nil, "Message type identifier")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.name = ProtoField.new("Name", "asianext.asianextderivatives.realtime.amd.v1.3.name", ftypes.STRING, nil, nil, nil, "Short name")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.negotiation_indicator_or_pre_trade_transparency_waiver = ProtoField.new("Negotiation Indicator Or Pre Trade Transparency Waiver", "asianext.asianextderivatives.realtime.amd.v1.3.negotiationindicatororpretradetransparencywaiver", ftypes.UINT32, {[0]="Negotiated Trade", [1]="Negotiated Trade In Liquid Instruments", [2]="Negotiated Trade In Illiquid Instruments", [3]="Negotiated Trade Other Than Current Market Price", [4]="No Negotiated Trade", [5]="Si Illiquid Instruments", [6]="Si Above Standard Market Size", [7]="Ilqd And Size"}, base.DEC, 0x00001C00, "Negotiation Indicator or Pre-Trade Transparency Waiver")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.next_seq_no = ProtoField.new("Next Seq No", "asianext.asianextderivatives.realtime.amd.v1.3.nextseqno", ftypes.UINT32, nil, nil, nil, "Sequence number of the next message published following this message. This value will always be 1")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.off_book_automation = ProtoField.new("Off Book Automation", "asianext.asianextderivatives.realtime.amd.v1.3.offbookautomation", ftypes.UINT32, {[1]="Unspecified", [2]="Off Book Non Automated", [3]="Off Book Automated"}, base.DEC, 0x00180000)
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.option_type = ProtoField.new("Option Type", "asianext.asianextderivatives.realtime.amd.v1.3.optiontype", ftypes.UINT8, nil, nil, nil, "The option type of the contract")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.options_flags = ProtoField.new("Options Flags", "asianext.asianextderivatives.realtime.amd.v1.3.optionsflags", ftypes.STRING, nil, nil, nil, "Options security flags")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.order_ref = ProtoField.new("Order Ref", "asianext.asianextderivatives.realtime.amd.v1.3.orderref", ftypes.UINT64, nil, nil, nil, "Unique order reference number for the session")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.price = ProtoField.new("Price", "asianext.asianextderivatives.realtime.amd.v1.3.price", ftypes.DOUBLE, nil, nil, nil, "The price of the order")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.price_formation_discovery_process = ProtoField.new("Price Formation Discovery Process", "asianext.asianextderivatives.realtime.amd.v1.3.priceformationdiscoveryprocess", ftypes.UINT32, {[1]="Plain Vanilla", [2]="Non Price Forming", [3]="Trade Not Contributing To Price Discovery", [4]="Price Not Currently Available But Pending"}, base.DEC, 0x00E00000, "Price Formation / Discovery Process")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.publication_mode_post_trade_deferral = ProtoField.new("Publication Mode Post Trade Deferral", "asianext.asianextderivatives.realtime.amd.v1.3.publicationmodeposttradedeferral", ftypes.UINT32, {[1]="Immediate Publication", [2]="Non Immediate Publication", [3]="Lrgs", [4]="Ilqd", [5]="Size", [6]="Ilqd And Size", [7]="Ilqd And Lrgs"}, base.DEC, 0x0E000000, "Publication Mode – Post-Trade Deferral")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.quantity = ProtoField.new("Quantity", "asianext.asianextderivatives.realtime.amd.v1.3.quantity", ftypes.UINT64, nil, nil, nil, "Number of contracts being added to the book")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.rfq_only = ProtoField.new("Rfq Only", "asianext.asianextderivatives.realtime.amd.v1.3.rfqonly", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040, "0 = Security is not RFQ only, 1 = Security is available for RFQ trading only")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.second_unused_1 = ProtoField.new("Second Unused 1", "asianext.asianextderivatives.realtime.amd.v1.3.secondunused1", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Reserved")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.security_id = ProtoField.new("Security Id", "asianext.asianextderivatives.realtime.amd.v1.3.securityid", ftypes.UINT32, nil, nil, nil, "Numeric identifier of the relevant security")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.seq_no = ProtoField.new("Seq No", "asianext.asianextderivatives.realtime.amd.v1.3.seqno", ftypes.UINT32, nil, nil, nil, "Sequence number of this message in the market data stream for the current trading day")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.settlement_type = ProtoField.new("Settlement Type", "asianext.asianextderivatives.realtime.amd.v1.3.settlementtype", ftypes.UINT8, nil, nil, nil, "Settlement type of the instrument")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.side = ProtoField.new("Side", "asianext.asianextderivatives.realtime.amd.v1.3.side", ftypes.UINT8, nil, nil, nil, "1 = Buy Order, 2 = Sell Order")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.strike_price = ProtoField.new("Strike Price", "asianext.asianextderivatives.realtime.amd.v1.3.strikeprice", ftypes.UINT64, nil, nil, nil, "The strike price of the contract")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.test_stock = ProtoField.new("Test Stock", "asianext.asianextderivatives.realtime.amd.v1.3.teststock", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "0 = Security is not a test stock, 1 = Security is a test stock")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.threshold = ProtoField.new("Threshold", "asianext.asianextderivatives.realtime.amd.v1.3.threshold", ftypes.DOUBLE, nil, nil, nil, "The price threshold at which this tick data applies")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.tick_size = ProtoField.new("Tick Size", "asianext.asianextderivatives.realtime.amd.v1.3.ticksize", ftypes.DOUBLE, nil, nil, nil, "The tick size (price increment)")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.tick_table_id = ProtoField.new("Tick Table Id", "asianext.asianextderivatives.realtime.amd.v1.3.ticktableid", ftypes.UINT8, nil, nil, nil, "Numeric identifier for this tick table or static tick")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.timestamp = ProtoField.new("Timestamp", "asianext.asianextderivatives.realtime.amd.v1.3.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Timestamp of this market data event")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.timestamp_utc = ProtoField.new("Timestamp", "asianext.asianextderivatives.realtime.amd.v1.3.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Timestamp of this market data event")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trade_ref = ProtoField.new("Trade Ref", "asianext.asianextderivatives.realtime.amd.v1.3.traderef", ftypes.UINT64, nil, nil, nil, "Trade reference number")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trade_type = ProtoField.new("Trade Type", "asianext.asianextderivatives.realtime.amd.v1.3.tradetype", ftypes.UINT8, nil, nil, nil, "1 = a trade against visible order quantity in the continuous trading order book")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trading = ProtoField.new("Trading", "asianext.asianextderivatives.realtime.amd.v1.3.trading", ftypes.UINT8, {[0]="Continuous Trading Closed", [1]="Continuous Trading Open"}, base.DEC, 0x01, "0 = Continuous Trading Closed, 1 = Continuous Trading Open")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trading_mode = ProtoField.new("Trading Mode", "asianext.asianextderivatives.realtime.amd.v1.3.tradingmode", ftypes.UINT32, {[1]="Undefined Auction", [2]="Opening Auction", [3]="Closing Auction", [4]="Intraday Auction", [5]="Unscheduled Auction", [6]="Continuous Trading", [7]="At Market Close", [8]="Out Of Main Session", [9]="On Exchange Trade Reporting", [10]="Off Exchange Trade Reporting", [11]="Systematic Internalizer Trade Reporting"}, base.DEC, 0x00000078)
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trading_phase = ProtoField.new("Trading Phase", "asianext.asianextderivatives.realtime.amd.v1.3.tradingphase", ftypes.UINT8, nil, nil, nil, "1= Continuous trading")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trading_status = ProtoField.new("Trading Status", "asianext.asianextderivatives.realtime.amd.v1.3.tradingstatus", ftypes.UINT8, nil, nil, nil, "Possible values: 1 = Active, 2 = Halted, 3 = Suspended")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.transaction_category = ProtoField.new("Transaction Category", "asianext.asianextderivatives.realtime.amd.v1.3.transactioncategory", ftypes.UINT32, {[1]="Dark Trade", [2]="Trade That Has Received Price Improvement", [3]="Package Trade", [4]="Exchange For Physicals", [5]="None Apply"}, base.DEC, 0x00000380)
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.umtf = ProtoField.new("Umtf", "asianext.asianextderivatives.realtime.amd.v1.3.umtf", ftypes.STRING, nil, nil, nil, "This is used to represent the exchange Symbol")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.underlying = ProtoField.new("Underlying", "asianext.asianextderivatives.realtime.amd.v1.3.underlying", ftypes.STRING, nil, nil, nil, "The asset or security on which the contract is based")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.underlying_flag = ProtoField.new("Underlying Flag", "asianext.asianextderivatives.realtime.amd.v1.3.underlyingflag", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020, "0 = Security is not an underlying, 1 = Security is an underlying")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_1 = ProtoField.new("Unused 1", "asianext.asianextderivatives.realtime.amd.v1.3.unused1", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010, "Reserved")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_11 = ProtoField.new("Unused 11", "asianext.asianextderivatives.realtime.amd.v1.3.unused11", ftypes.UINT16, nil, base.DEC, 0xFFE0, "Reserved")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_2 = ProtoField.new("Unused 2", "asianext.asianextderivatives.realtime.amd.v1.3.unused2", ftypes.UINT32, nil, base.DEC, 0xC0000000, "Spare")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_5 = ProtoField.new("Unused 5", "asianext.asianextderivatives.realtime.amd.v1.3.unused5", ftypes.UINT8, nil, base.DEC, 0xF8, "Reserved")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_9 = ProtoField.new("Unused 9", "asianext.asianextderivatives.realtime.amd.v1.3.unused9", ftypes.UINT16, nil, base.DEC, 0xFF80, "Reserved")

-- AsiaNext AsiaNextDerivatives RealTime Amd 1.3 Framing
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.message = ProtoField.new("Message", "asianext.asianextderivatives.realtime.amd.v1.3.message", ftypes.STRING, nil, nil, nil, "Aquis Amd Message")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.message_header = ProtoField.new("Message Header", "asianext.asianextderivatives.realtime.amd.v1.3.messageheader", ftypes.STRING, nil, nil, nil, "Aquis market data message header")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.packet = ProtoField.new("Packet", "asianext.asianextderivatives.realtime.amd.v1.3.packet", ftypes.STRING, nil, nil, nil, "Aquis Udp Packet")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.packet_header = ProtoField.new("Packet Header", "asianext.asianextderivatives.realtime.amd.v1.3.packetheader", ftypes.STRING, nil, nil, nil, "Aquis udp packet header")

-- AsiaNext AsiaNextDerivatives RealTime 1.3 Application Messages
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "asianext.asianextderivatives.realtime.amd.v1.3.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "The Heartbeat message carries no data; it is simply a message header with msgType of 1.")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.order_add_message = ProtoField.new("Order Add Message", "asianext.asianextderivatives.realtime.amd.v1.3.orderaddmessage", ftypes.STRING, nil, nil, nil, "The Order Add message is published when order quantity is posted to the order book for a particular security.")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "asianext.asianextderivatives.realtime.amd.v1.3.ordercancelmessage", ftypes.STRING, nil, nil, nil, "The Order Cancel message is published when a visible order is removed from the book.")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.order_modify_message = ProtoField.new("Order Modify Message", "asianext.asianextderivatives.realtime.amd.v1.3.ordermodifymessage", ftypes.STRING, nil, nil, nil, "The Order Modify message is published when a visible order is modified by the client (change of price and/or quantity).")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.security_definition_futures_message = ProtoField.new("Security Definition Futures Message", "asianext.asianextderivatives.realtime.amd.v1.3.securitydefinitionfuturesmessage", ftypes.STRING, nil, nil, nil, "Security Definition messages are published to identify the Futures securities traded on AsiaNext.")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.security_definition_message = ProtoField.new("Security Definition Message", "asianext.asianextderivatives.realtime.amd.v1.3.securitydefinitionmessage", ftypes.STRING, nil, nil, nil, "Security Definition messages are published to identify the securities traded on AsiaNext.")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.security_definition_options_message = ProtoField.new("Security Definition Options Message", "asianext.asianextderivatives.realtime.amd.v1.3.securitydefinitionoptionsmessage", ftypes.STRING, nil, nil, nil, "Security Definition messages are published to identify the Option securities traded on AsiaNext.")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.security_status_message = ProtoField.new("Security Status Message", "asianext.asianextderivatives.realtime.amd.v1.3.securitystatusmessage", ftypes.STRING, nil, nil, nil, "The Security Status message is published when the trading status of a security changes or when there is a change to the status of the market on AsiaNext to which the security belongs.")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "asianext.asianextderivatives.realtime.amd.v1.3.sequencenumberresetmessage", ftypes.STRING, nil, nil, nil, "The Sequence Number Reset is published when AsiaNext initiates a seqNo reset.")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.tick_table_data_message = ProtoField.new("Tick Table Data Message", "asianext.asianextderivatives.realtime.amd.v1.3.ticktabledatamessage", ftypes.STRING, nil, nil, nil, "A series of Tick Table Data messages are published to specify the dynamic tick tables and static ticks that apply to the securities traded on AsiaNext.")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trade_bust_message = ProtoField.new("Trade Bust Message", "asianext.asianextderivatives.realtime.amd.v1.3.tradebustmessage", ftypes.STRING, nil, nil, nil, "If a trade has been declared erroneous by AsiaNext then a Trade Bust message is published.")
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trade_message = ProtoField.new("Trade Message", "asianext.asianextderivatives.realtime.amd.v1.3.trademessage", ftypes.STRING, nil, nil, nil, "Whenever an order trades, partially or fully, a Trade message is published.")

-- AsiaNext AsiaNextDerivatives RealTime Amd 1.3 Generated Fields
omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.message_index = ProtoField.new("Message Index", "asianext.asianextderivatives.realtime.amd.v1.3.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- AsiaNext AsiaNextDerivatives RealTime Amd 1.3 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
asianext_asianextderivatives_realtime_amd_v1_3.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- AsiaNext AsiaNextDerivatives RealTime Amd 1.3 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true

-- Register AsiaNext AsiaNextDerivatives RealTime Amd 1.3 Show Options
omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_application_messages then
    show.application_messages = omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_application_messages
  end
  if show.headers ~= omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_headers then
    show.headers = omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_headers
  end
  if show.structs ~= omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_structs then
    show.structs = omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_structs
  end
  if show.indexes ~= omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_indexes then
    show.indexes = omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.show_indexes
  end
  if asianext_asianextderivatives_realtime_amd_v1_3.timestamp_format ~= omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.timestamp_format then
    asianext_asianextderivatives_realtime_amd_v1_3.timestamp_format = omi_asianext_asianextderivatives_realtime_amd_v1_3.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- AsiaNext AsiaNextDerivatives RealTime Amd 1.3 Fields
-----------------------------------------------------------------------

-- Contract Size
asianext_asianextderivatives_realtime_amd_v1_3.contract_size = {}

-- Size: Contract Size
asianext_asianextderivatives_realtime_amd_v1_3.contract_size.size = 8

-- Display: Contract Size
asianext_asianextderivatives_realtime_amd_v1_3.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
asianext_asianextderivatives_realtime_amd_v1_3.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.contract_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Contract Size Decimals
asianext_asianextderivatives_realtime_amd_v1_3.contract_size_decimals = {}

-- Size: Contract Size Decimals
asianext_asianextderivatives_realtime_amd_v1_3.contract_size_decimals.size = 1

-- Display: Contract Size Decimals
asianext_asianextderivatives_realtime_amd_v1_3.contract_size_decimals.display = function(value)
  return "Contract Size Decimals: "..value
end

-- Dissect: Contract Size Decimals
asianext_asianextderivatives_realtime_amd_v1_3.contract_size_decimals.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.contract_size_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.contract_size_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.contract_size_decimals, range, value, display)

  return offset + length, value
end

-- Currency
asianext_asianextderivatives_realtime_amd_v1_3.currency = {}

-- Size: Currency
asianext_asianextderivatives_realtime_amd_v1_3.currency.size = 3

-- Display: Currency
asianext_asianextderivatives_realtime_amd_v1_3.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
asianext_asianextderivatives_realtime_amd_v1_3.currency.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.currency.size
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

  local display = asianext_asianextderivatives_realtime_amd_v1_3.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.currency, range, value, display)

  return offset + length, value
end

-- Exchange Symbol
asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol = {}

-- Size: Exchange Symbol
asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol.size = 20

-- Display: Exchange Symbol
asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exchange Symbol: No Value"
  end

  return "Exchange Symbol: "..value
end

-- Dissect: Exchange Symbol
asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol.size
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

  local display = asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.exchange_symbol, range, value, display)

  return offset + length, value
end

-- Exercise Style
asianext_asianextderivatives_realtime_amd_v1_3.exercise_style = {}

-- Size: Exercise Style
asianext_asianextderivatives_realtime_amd_v1_3.exercise_style.size = 1

-- Display: Exercise Style
asianext_asianextderivatives_realtime_amd_v1_3.exercise_style.labels = {
  [1] = "Exercise Style: American (1)",
  [2] = "Exercise Style: European (2)",
  [3] = "Exercise Style: Asian (3)",
  [4] = "Exercise Style: Bermudan (4)",
}

asianext_asianextderivatives_realtime_amd_v1_3.exercise_style.display = function(value)
  return asianext_asianextderivatives_realtime_amd_v1_3.exercise_style.labels[value] or "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
asianext_asianextderivatives_realtime_amd_v1_3.exercise_style.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.exercise_style.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.exercise_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Isin
asianext_asianextderivatives_realtime_amd_v1_3.isin = {}

-- Size: Isin
asianext_asianextderivatives_realtime_amd_v1_3.isin.size = 12

-- Display: Isin
asianext_asianextderivatives_realtime_amd_v1_3.isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin: No Value"
  end

  return "Isin: "..value
end

-- Dissect: Isin
asianext_asianextderivatives_realtime_amd_v1_3.isin.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.isin.size
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

  local display = asianext_asianextderivatives_realtime_amd_v1_3.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.isin, range, value, display)

  return offset + length, value
end

-- Lot Size
asianext_asianextderivatives_realtime_amd_v1_3.lot_size = {}

-- Size: Lot Size
asianext_asianextderivatives_realtime_amd_v1_3.lot_size.size = 8

-- Display: Lot Size
asianext_asianextderivatives_realtime_amd_v1_3.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
asianext_asianextderivatives_realtime_amd_v1_3.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Lot Size Decimal
asianext_asianextderivatives_realtime_amd_v1_3.lot_size_decimal = {}

-- Size: Lot Size Decimal
asianext_asianextderivatives_realtime_amd_v1_3.lot_size_decimal.size = 1

-- Display: Lot Size Decimal
asianext_asianextderivatives_realtime_amd_v1_3.lot_size_decimal.display = function(value)
  return "Lot Size Decimal: "..value
end

-- Dissect: Lot Size Decimal
asianext_asianextderivatives_realtime_amd_v1_3.lot_size_decimal.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.lot_size_decimal.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.lot_size_decimal.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.lot_size_decimal, range, value, display)

  return offset + length, value
end

-- Maturity Date
asianext_asianextderivatives_realtime_amd_v1_3.maturity_date = {}

-- Size: Maturity Date
asianext_asianextderivatives_realtime_amd_v1_3.maturity_date.size = 8

-- Dissect: Maturity Date
asianext_asianextderivatives_realtime_amd_v1_3.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.maturity_date
  if asianext_asianextderivatives_realtime_amd_v1_3.timestamp_format == 3 then field = omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.maturity_date_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Message Count
asianext_asianextderivatives_realtime_amd_v1_3.message_count = {}

-- Size: Message Count
asianext_asianextderivatives_realtime_amd_v1_3.message_count.size = 1

-- Display: Message Count
asianext_asianextderivatives_realtime_amd_v1_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
asianext_asianextderivatives_realtime_amd_v1_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Mic
asianext_asianextderivatives_realtime_amd_v1_3.mic = {}

-- Size: Mic
asianext_asianextderivatives_realtime_amd_v1_3.mic.size = 4

-- Display: Mic
asianext_asianextderivatives_realtime_amd_v1_3.mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
asianext_asianextderivatives_realtime_amd_v1_3.mic.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.mic.size
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

  local display = asianext_asianextderivatives_realtime_amd_v1_3.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.mic, range, value, display)

  return offset + length, value
end

-- Msg Length
asianext_asianextderivatives_realtime_amd_v1_3.msg_length = {}

-- Size: Msg Length
asianext_asianextderivatives_realtime_amd_v1_3.msg_length.size = 1

-- Display: Msg Length
asianext_asianextderivatives_realtime_amd_v1_3.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
asianext_asianextderivatives_realtime_amd_v1_3.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
asianext_asianextderivatives_realtime_amd_v1_3.msg_type = {}

-- Size: Msg Type
asianext_asianextderivatives_realtime_amd_v1_3.msg_type.size = 1

-- Display: Msg Type
asianext_asianextderivatives_realtime_amd_v1_3.msg_type.labels = {
  [1] = "Msg Type: Heartbeat Message (1)",
  [29] = "Msg Type: Sequence Number Reset Message (29)",
  [2] = "Msg Type: Order Add Message (2)",
  [3] = "Msg Type: Order Cancel Message (3)",
  [4] = "Msg Type: Order Modify Message (4)",
  [5] = "Msg Type: Trade Message (5)",
  [6] = "Msg Type: Trade Bust Message (6)",
  [7] = "Msg Type: Tick Table Data Message (7)",
  [8] = "Msg Type: Security Definition Message (8)",
  [30] = "Msg Type: Security Definition Futures Message (30)",
  [32] = "Msg Type: Security Definition Options Message (32)",
  [9] = "Msg Type: Security Status Message (9)",
}

asianext_asianextderivatives_realtime_amd_v1_3.msg_type.display = function(value)
  return asianext_asianextderivatives_realtime_amd_v1_3.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
asianext_asianextderivatives_realtime_amd_v1_3.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Name
asianext_asianextderivatives_realtime_amd_v1_3.name = {}

-- Size: Name
asianext_asianextderivatives_realtime_amd_v1_3.name.size = 10

-- Display: Name
asianext_asianextderivatives_realtime_amd_v1_3.name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Name: No Value"
  end

  return "Name: "..value
end

-- Dissect: Name
asianext_asianextderivatives_realtime_amd_v1_3.name.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.name.size
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

  local display = asianext_asianextderivatives_realtime_amd_v1_3.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.name, range, value, display)

  return offset + length, value
end

-- Next Seq No
asianext_asianextderivatives_realtime_amd_v1_3.next_seq_no = {}

-- Size: Next Seq No
asianext_asianextderivatives_realtime_amd_v1_3.next_seq_no.size = 4

-- Display: Next Seq No
asianext_asianextderivatives_realtime_amd_v1_3.next_seq_no.display = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
asianext_asianextderivatives_realtime_amd_v1_3.next_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.next_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.next_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- Option Type
asianext_asianextderivatives_realtime_amd_v1_3.option_type = {}

-- Size: Option Type
asianext_asianextderivatives_realtime_amd_v1_3.option_type.size = 1

-- Display: Option Type
asianext_asianextderivatives_realtime_amd_v1_3.option_type.labels = {
  [1] = "Option Type: Call (1)",
  [2] = "Option Type: Put (2)",
}

asianext_asianextderivatives_realtime_amd_v1_3.option_type.display = function(value)
  return asianext_asianextderivatives_realtime_amd_v1_3.option_type.labels[value] or "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
asianext_asianextderivatives_realtime_amd_v1_3.option_type.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.option_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Ref
asianext_asianextderivatives_realtime_amd_v1_3.order_ref = {}

-- Size: Order Ref
asianext_asianextderivatives_realtime_amd_v1_3.order_ref.size = 8

-- Display: Order Ref
asianext_asianextderivatives_realtime_amd_v1_3.order_ref.display = function(value)
  return "Order Ref: "..value
end

-- Dissect: Order Ref
asianext_asianextderivatives_realtime_amd_v1_3.order_ref.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.order_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.order_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.order_ref, range, value, display)

  return offset + length, value
end

-- Price
asianext_asianextderivatives_realtime_amd_v1_3.price = {}

-- Size: Price
asianext_asianextderivatives_realtime_amd_v1_3.price.size = 8

-- Display: Price
asianext_asianextderivatives_realtime_amd_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
asianext_asianextderivatives_realtime_amd_v1_3.price.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Price
asianext_asianextderivatives_realtime_amd_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = asianext_asianextderivatives_realtime_amd_v1_3.price.translate(raw)
  local display = asianext_asianextderivatives_realtime_amd_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
asianext_asianextderivatives_realtime_amd_v1_3.quantity = {}

-- Size: Quantity
asianext_asianextderivatives_realtime_amd_v1_3.quantity.size = 8

-- Display: Quantity
asianext_asianextderivatives_realtime_amd_v1_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
asianext_asianextderivatives_realtime_amd_v1_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Security Id
asianext_asianextderivatives_realtime_amd_v1_3.security_id = {}

-- Size: Security Id
asianext_asianextderivatives_realtime_amd_v1_3.security_id.size = 4

-- Display: Security Id
asianext_asianextderivatives_realtime_amd_v1_3.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
asianext_asianextderivatives_realtime_amd_v1_3.security_id.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.security_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.security_id, range, value, display)

  return offset + length, value
end

-- Seq No
asianext_asianextderivatives_realtime_amd_v1_3.seq_no = {}

-- Size: Seq No
asianext_asianextderivatives_realtime_amd_v1_3.seq_no.size = 4

-- Display: Seq No
asianext_asianextderivatives_realtime_amd_v1_3.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
asianext_asianextderivatives_realtime_amd_v1_3.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Settlement Type
asianext_asianextderivatives_realtime_amd_v1_3.settlement_type = {}

-- Size: Settlement Type
asianext_asianextderivatives_realtime_amd_v1_3.settlement_type.size = 1

-- Display: Settlement Type
asianext_asianextderivatives_realtime_amd_v1_3.settlement_type.labels = {
  [1] = "Settlement Type: Cash (1)",
  [2] = "Settlement Type: Physical (2)",
}

asianext_asianextderivatives_realtime_amd_v1_3.settlement_type.display = function(value)
  return asianext_asianextderivatives_realtime_amd_v1_3.settlement_type.labels[value] or "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
asianext_asianextderivatives_realtime_amd_v1_3.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.settlement_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Side
asianext_asianextderivatives_realtime_amd_v1_3.side = {}

-- Size: Side
asianext_asianextderivatives_realtime_amd_v1_3.side.size = 1

-- Display: Side
asianext_asianextderivatives_realtime_amd_v1_3.side.labels = {
  [1] = "Side: Buy Order (1)",
  [2] = "Side: Sell Order (2)",
}

asianext_asianextderivatives_realtime_amd_v1_3.side.display = function(value)
  return asianext_asianextderivatives_realtime_amd_v1_3.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
asianext_asianextderivatives_realtime_amd_v1_3.side.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.side.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.side, range, value, display)

  return offset + length, value
end

-- Strike Price
asianext_asianextderivatives_realtime_amd_v1_3.strike_price = {}

-- Size: Strike Price
asianext_asianextderivatives_realtime_amd_v1_3.strike_price.size = 8

-- Display: Strike Price
asianext_asianextderivatives_realtime_amd_v1_3.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
asianext_asianextderivatives_realtime_amd_v1_3.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.strike_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Threshold
asianext_asianextderivatives_realtime_amd_v1_3.threshold = {}

-- Size: Threshold
asianext_asianextderivatives_realtime_amd_v1_3.threshold.size = 8

-- Display: Threshold
asianext_asianextderivatives_realtime_amd_v1_3.threshold.display = function(value)
  return "Threshold: "..value
end

-- Translate: Threshold
asianext_asianextderivatives_realtime_amd_v1_3.threshold.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Threshold
asianext_asianextderivatives_realtime_amd_v1_3.threshold.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.threshold.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = asianext_asianextderivatives_realtime_amd_v1_3.threshold.translate(raw)
  local display = asianext_asianextderivatives_realtime_amd_v1_3.threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.threshold, range, value, display)

  return offset + length, value
end

-- Tick Size
asianext_asianextderivatives_realtime_amd_v1_3.tick_size = {}

-- Size: Tick Size
asianext_asianextderivatives_realtime_amd_v1_3.tick_size.size = 8

-- Display: Tick Size
asianext_asianextderivatives_realtime_amd_v1_3.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Translate: Tick Size
asianext_asianextderivatives_realtime_amd_v1_3.tick_size.translate = function(raw)
  return raw:tonumber()/100000
end

-- Dissect: Tick Size
asianext_asianextderivatives_realtime_amd_v1_3.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.tick_size.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = asianext_asianextderivatives_realtime_amd_v1_3.tick_size.translate(raw)
  local display = asianext_asianextderivatives_realtime_amd_v1_3.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Tick Table Id
asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id = {}

-- Size: Tick Table Id
asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.size = 1

-- Display: Tick Table Id
asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.display = function(value)
  return "Tick Table Id: "..value
end

-- Dissect: Tick Table Id
asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.tick_table_id, range, value, display)

  return offset + length, value
end

-- Timestamp
asianext_asianextderivatives_realtime_amd_v1_3.timestamp = {}

-- Size: Timestamp
asianext_asianextderivatives_realtime_amd_v1_3.timestamp.size = 8

-- Dissect: Timestamp
asianext_asianextderivatives_realtime_amd_v1_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.timestamp
  if asianext_asianextderivatives_realtime_amd_v1_3.timestamp_format == 3 then field = omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Trade Ref
asianext_asianextderivatives_realtime_amd_v1_3.trade_ref = {}

-- Size: Trade Ref
asianext_asianextderivatives_realtime_amd_v1_3.trade_ref.size = 8

-- Display: Trade Ref
asianext_asianextderivatives_realtime_amd_v1_3.trade_ref.display = function(value)
  return "Trade Ref: "..value
end

-- Dissect: Trade Ref
asianext_asianextderivatives_realtime_amd_v1_3.trade_ref.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.trade_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.trade_ref.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trade_ref, range, value, display)

  return offset + length, value
end

-- Trade Type
asianext_asianextderivatives_realtime_amd_v1_3.trade_type = {}

-- Size: Trade Type
asianext_asianextderivatives_realtime_amd_v1_3.trade_type.size = 1

-- Display: Trade Type
asianext_asianextderivatives_realtime_amd_v1_3.trade_type.labels = {
  [1] = "Trade Type: Visible (1)",
}

asianext_asianextderivatives_realtime_amd_v1_3.trade_type.display = function(value)
  return asianext_asianextderivatives_realtime_amd_v1_3.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
asianext_asianextderivatives_realtime_amd_v1_3.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.trade_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trading Phase
asianext_asianextderivatives_realtime_amd_v1_3.trading_phase = {}

-- Size: Trading Phase
asianext_asianextderivatives_realtime_amd_v1_3.trading_phase.size = 1

-- Display: Trading Phase
asianext_asianextderivatives_realtime_amd_v1_3.trading_phase.labels = {
  [1] = "Trading Phase: Continuous Trading (1)",
}

asianext_asianextderivatives_realtime_amd_v1_3.trading_phase.display = function(value)
  return asianext_asianextderivatives_realtime_amd_v1_3.trading_phase.labels[value] or "Trading Phase: Unknown("..value..")"
end

-- Dissect: Trading Phase
asianext_asianextderivatives_realtime_amd_v1_3.trading_phase.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.trading_phase.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.trading_phase.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trading_phase, range, value, display)

  return offset + length, value
end

-- Trading Status
asianext_asianextderivatives_realtime_amd_v1_3.trading_status = {}

-- Size: Trading Status
asianext_asianextderivatives_realtime_amd_v1_3.trading_status.size = 1

-- Display: Trading Status
asianext_asianextderivatives_realtime_amd_v1_3.trading_status.labels = {
  [1] = "Trading Status: Active (1)",
  [2] = "Trading Status: Halted (2)",
  [3] = "Trading Status: Suspended (3)",
}

asianext_asianextderivatives_realtime_amd_v1_3.trading_status.display = function(value)
  return asianext_asianextderivatives_realtime_amd_v1_3.trading_status.labels[value] or "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
asianext_asianextderivatives_realtime_amd_v1_3.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.trading_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Umtf
asianext_asianextderivatives_realtime_amd_v1_3.umtf = {}

-- Size: Umtf
asianext_asianextderivatives_realtime_amd_v1_3.umtf.size = 6

-- Display: Umtf
asianext_asianextderivatives_realtime_amd_v1_3.umtf.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Umtf: No Value"
  end

  return "Umtf: "..value
end

-- Dissect: Umtf
asianext_asianextderivatives_realtime_amd_v1_3.umtf.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.umtf.size
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

  local display = asianext_asianextderivatives_realtime_amd_v1_3.umtf.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.umtf, range, value, display)

  return offset + length, value
end

-- Underlying
asianext_asianextderivatives_realtime_amd_v1_3.underlying = {}

-- Size: Underlying
asianext_asianextderivatives_realtime_amd_v1_3.underlying.size = 20

-- Display: Underlying
asianext_asianextderivatives_realtime_amd_v1_3.underlying.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying: No Value"
  end

  return "Underlying: "..value
end

-- Dissect: Underlying
asianext_asianextderivatives_realtime_amd_v1_3.underlying.dissect = function(buffer, offset, packet, parent)
  local length = asianext_asianextderivatives_realtime_amd_v1_3.underlying.size
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

  local display = asianext_asianextderivatives_realtime_amd_v1_3.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.underlying, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect AsiaNext AsiaNextDerivatives RealTime Amd 1.3
-----------------------------------------------------------------------

-- Market Flags
asianext_asianextderivatives_realtime_amd_v1_3.market_flags = {}

-- Size: Market Flags
asianext_asianextderivatives_realtime_amd_v1_3.market_flags.size = 1

-- Display: Market Flags
asianext_asianextderivatives_realtime_amd_v1_3.market_flags.display = function(range, value, packet, parent)
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
asianext_asianextderivatives_realtime_amd_v1_3.market_flags.bits = function(range, value, packet, parent)

  -- Trading: 1 Bit Enum with 2 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trading, range, value)

  -- Mac Open: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.mac_open, range, value)

  -- Mac Run: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.mac_run, range, value)

  -- Unused 5: 5 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_5, range, value)
end

-- Dissect: Market Flags
asianext_asianextderivatives_realtime_amd_v1_3.market_flags.dissect = function(buffer, offset, packet, parent)
  local size = asianext_asianextderivatives_realtime_amd_v1_3.market_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.market_flags.display(range, value, packet, parent)
  local element = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.market_flags, range, display)

  if show.structs then
    asianext_asianextderivatives_realtime_amd_v1_3.market_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Status Message
asianext_asianextderivatives_realtime_amd_v1_3.security_status_message = {}

-- Size: Security Status Message
asianext_asianextderivatives_realtime_amd_v1_3.security_status_message.size =
  asianext_asianextderivatives_realtime_amd_v1_3.security_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.trading_status.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.market_flags.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.timestamp.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.trading_phase.size

-- Display: Security Status Message
asianext_asianextderivatives_realtime_amd_v1_3.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
asianext_asianextderivatives_realtime_amd_v1_3.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u32
  index, security_id = asianext_asianextderivatives_realtime_amd_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trading Status: u8
  index, trading_status = asianext_asianextderivatives_realtime_amd_v1_3.trading_status.dissect(buffer, index, packet, parent)

  -- Market Flags: Struct of 4 fields
  index, market_flags = asianext_asianextderivatives_realtime_amd_v1_3.market_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = asianext_asianextderivatives_realtime_amd_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Phase: u8
  index, trading_phase = asianext_asianextderivatives_realtime_amd_v1_3.trading_phase.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
asianext_asianextderivatives_realtime_amd_v1_3.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.security_status_message, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Contract Size Composite
asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite = {}

-- Size: Contract Size Composite
asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite.size =
  asianext_asianextderivatives_realtime_amd_v1_3.contract_size.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.contract_size_decimals.size

-- Display: Contract Size Composite
asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return tostring(value)
end

-- Dissect Fields: Contract Size Composite
asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Contract Size: u64
  index, contract_size = asianext_asianextderivatives_realtime_amd_v1_3.contract_size.dissect(buffer, index, packet, parent)

  -- Contract Size Decimals: u8
  index, contract_size_decimals = asianext_asianextderivatives_realtime_amd_v1_3.contract_size_decimals.dissect(buffer, index, packet, parent)

  -- Composite value
  local contract_size_composite = contract_size:tonumber() / 10 ^ contract_size_decimals

  return index, contract_size_composite
end

-- Dissect: Contract Size Composite
asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.contract_size_composite, buffer(offset, 0))
    local index, value = asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite.fields(buffer, offset, packet, parent)
  end
end

-- Lot Size Composite
asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite = {}

-- Size: Lot Size Composite
asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.size =
  asianext_asianextderivatives_realtime_amd_v1_3.lot_size.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.lot_size_decimal.size

-- Display: Lot Size Composite
asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return tostring(value)
end

-- Dissect Fields: Lot Size Composite
asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Lot Size: u64
  index, lot_size = asianext_asianextderivatives_realtime_amd_v1_3.lot_size.dissect(buffer, index, packet, parent)

  -- Lot Size Decimal: u8
  index, lot_size_decimal = asianext_asianextderivatives_realtime_amd_v1_3.lot_size_decimal.dissect(buffer, index, packet, parent)

  -- Composite value
  local lot_size_composite = lot_size:tonumber() / 10 ^ lot_size_decimal

  return index, lot_size_composite
end

-- Dissect: Lot Size Composite
asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.lot_size_composite, buffer(offset, 0))
    local index, value = asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.fields(buffer, offset, packet, parent)
  end
end

-- Options Flags
asianext_asianextderivatives_realtime_amd_v1_3.options_flags = {}

-- Size: Options Flags
asianext_asianextderivatives_realtime_amd_v1_3.options_flags.size = 2

-- Display: Options Flags
asianext_asianextderivatives_realtime_amd_v1_3.options_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Test Stock flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Test Stock"
  end
  -- Is Illiquid flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Illiquid"
  end
  -- Is Live flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Live"
  end
  -- Is Underlying Flag flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Underlying Flag"
  end
  -- Is Rfq Only flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Rfq Only"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Options Flags
asianext_asianextderivatives_realtime_amd_v1_3.options_flags.bits = function(range, value, packet, parent)

  -- Unused 1: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_1, range, value)

  -- Test Stock: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.test_stock, range, value)

  -- Illiquid: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.illiquid, range, value)

  -- Live: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.live, range, value)

  -- Second Unused 1: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.second_unused_1, range, value)

  -- Underlying Flag: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.underlying_flag, range, value)

  -- Rfq Only: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.rfq_only, range, value)

  -- Unused 9: 9 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_9, range, value)
end

-- Dissect: Options Flags
asianext_asianextderivatives_realtime_amd_v1_3.options_flags.dissect = function(buffer, offset, packet, parent)
  local size = asianext_asianextderivatives_realtime_amd_v1_3.options_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.options_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.options_flags, range, display)

  if show.structs then
    asianext_asianextderivatives_realtime_amd_v1_3.options_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Definition Options Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_options_message = {}

-- Size: Security Definition Options Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_options_message.size =
  asianext_asianextderivatives_realtime_amd_v1_3.security_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.umtf.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.isin.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.currency.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.mic.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.options_flags.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.maturity_date.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.settlement_type.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.underlying.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.option_type.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.exercise_style.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.strike_price.size

-- Display: Security Definition Options Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_options_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Options Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_options_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u32
  index, security_id = asianext_asianextderivatives_realtime_amd_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Umtf: char(6)
  index, umtf = asianext_asianextderivatives_realtime_amd_v1_3.umtf.dissect(buffer, index, packet, parent)

  -- Isin: char(12)
  index, isin = asianext_asianextderivatives_realtime_amd_v1_3.isin.dissect(buffer, index, packet, parent)

  -- Currency: char(3)
  index, currency = asianext_asianextderivatives_realtime_amd_v1_3.currency.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = asianext_asianextderivatives_realtime_amd_v1_3.mic.dissect(buffer, index, packet, parent)

  -- Tick Table Id: u8
  index, tick_table_id = asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.dissect(buffer, index, packet, parent)

  -- Options Flags: Struct of 8 fields
  index, options_flags = asianext_asianextderivatives_realtime_amd_v1_3.options_flags.dissect(buffer, index, packet, parent)

  -- Exchange Symbol: char(20)
  index, exchange_symbol = asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol.dissect(buffer, index, packet, parent)

  -- Lot Size Composite: Struct of 2 fields
  index, lot_size_composite = asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.dissect(buffer, index, packet, parent)

  -- Maturity Date: Timestamp
  index, maturity_date = asianext_asianextderivatives_realtime_amd_v1_3.maturity_date.dissect(buffer, index, packet, parent)

  -- Settlement Type: u8
  index, settlement_type = asianext_asianextderivatives_realtime_amd_v1_3.settlement_type.dissect(buffer, index, packet, parent)

  -- Contract Size Composite: Struct of 2 fields
  index, contract_size_composite = asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite.dissect(buffer, index, packet, parent)

  -- Underlying: char (20)
  index, underlying = asianext_asianextderivatives_realtime_amd_v1_3.underlying.dissect(buffer, index, packet, parent)

  -- Option Type: u8
  index, option_type = asianext_asianextderivatives_realtime_amd_v1_3.option_type.dissect(buffer, index, packet, parent)

  -- Exercise Style: u8
  index, exercise_style = asianext_asianextderivatives_realtime_amd_v1_3.exercise_style.dissect(buffer, index, packet, parent)

  -- Strike Price: u64
  index, strike_price = asianext_asianextderivatives_realtime_amd_v1_3.strike_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Options Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_options_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.security_definition_options_message, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.security_definition_options_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.security_definition_options_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.security_definition_options_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Flags
asianext_asianextderivatives_realtime_amd_v1_3.futures_flags = {}

-- Size: Futures Flags
asianext_asianextderivatives_realtime_amd_v1_3.futures_flags.size = 2

-- Display: Futures Flags
asianext_asianextderivatives_realtime_amd_v1_3.futures_flags.display = function(range, value, packet, parent)
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
  -- Is Live flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Live"
  end
  -- Is Underlying Flag flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Underlying Flag"
  end
  -- Is Rfq Only flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Rfq Only"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Futures Flags
asianext_asianextderivatives_realtime_amd_v1_3.futures_flags.bits = function(range, value, packet, parent)

  -- Mac Enabled: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.mac_enabled, range, value)

  -- Test Stock: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.test_stock, range, value)

  -- Illiquid: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.illiquid, range, value)

  -- Live: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.live, range, value)

  -- Unused 1: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_1, range, value)

  -- Underlying Flag: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.underlying_flag, range, value)

  -- Rfq Only: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.rfq_only, range, value)

  -- Unused 9: 9 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_9, range, value)
end

-- Dissect: Futures Flags
asianext_asianextderivatives_realtime_amd_v1_3.futures_flags.dissect = function(buffer, offset, packet, parent)
  local size = asianext_asianextderivatives_realtime_amd_v1_3.futures_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.futures_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.futures_flags, range, display)

  if show.structs then
    asianext_asianextderivatives_realtime_amd_v1_3.futures_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Definition Futures Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_futures_message = {}

-- Size: Security Definition Futures Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_futures_message.size =
  asianext_asianextderivatives_realtime_amd_v1_3.security_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.umtf.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.isin.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.currency.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.mic.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.futures_flags.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.maturity_date.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.settlement_type.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.underlying.size

-- Display: Security Definition Futures Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_futures_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Futures Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_futures_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u32
  index, security_id = asianext_asianextderivatives_realtime_amd_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Umtf: char(6)
  index, umtf = asianext_asianextderivatives_realtime_amd_v1_3.umtf.dissect(buffer, index, packet, parent)

  -- Isin: char(12)
  index, isin = asianext_asianextderivatives_realtime_amd_v1_3.isin.dissect(buffer, index, packet, parent)

  -- Currency: char(3)
  index, currency = asianext_asianextderivatives_realtime_amd_v1_3.currency.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = asianext_asianextderivatives_realtime_amd_v1_3.mic.dissect(buffer, index, packet, parent)

  -- Tick Table Id: u8
  index, tick_table_id = asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.dissect(buffer, index, packet, parent)

  -- Futures Flags: Struct of 8 fields
  index, futures_flags = asianext_asianextderivatives_realtime_amd_v1_3.futures_flags.dissect(buffer, index, packet, parent)

  -- Exchange Symbol: char(20)
  index, exchange_symbol = asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol.dissect(buffer, index, packet, parent)

  -- Lot Size Composite: Struct of 2 fields
  index, lot_size_composite = asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.dissect(buffer, index, packet, parent)

  -- Maturity Date: Timestamp
  index, maturity_date = asianext_asianextderivatives_realtime_amd_v1_3.maturity_date.dissect(buffer, index, packet, parent)

  -- Settlement Type: u8
  index, settlement_type = asianext_asianextderivatives_realtime_amd_v1_3.settlement_type.dissect(buffer, index, packet, parent)

  -- Contract Size Composite: Struct of 2 fields
  index, contract_size_composite = asianext_asianextderivatives_realtime_amd_v1_3.contract_size_composite.dissect(buffer, index, packet, parent)

  -- Underlying: char (20)
  index, underlying = asianext_asianextderivatives_realtime_amd_v1_3.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Futures Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_futures_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.security_definition_futures_message, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.security_definition_futures_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.security_definition_futures_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.security_definition_futures_message.fields(buffer, offset, packet, parent)
  end
end

-- Flags
asianext_asianextderivatives_realtime_amd_v1_3.flags = {}

-- Size: Flags
asianext_asianextderivatives_realtime_amd_v1_3.flags.size = 2

-- Display: Flags
asianext_asianextderivatives_realtime_amd_v1_3.flags.display = function(range, value, packet, parent)
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
  -- Is Live flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Live"
  end
  -- Is Aod Enabled flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Aod Enabled"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags
asianext_asianextderivatives_realtime_amd_v1_3.flags.bits = function(range, value, packet, parent)

  -- Mac Enabled: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.mac_enabled, range, value)

  -- Test Stock: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.test_stock, range, value)

  -- Illiquid: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.illiquid, range, value)

  -- Live: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.live, range, value)

  -- Aod Enabled: 1 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.aod_enabled, range, value)

  -- Unused 11: 11 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_11, range, value)
end

-- Dissect: Flags
asianext_asianextderivatives_realtime_amd_v1_3.flags.dissect = function(buffer, offset, packet, parent)
  local size = asianext_asianextderivatives_realtime_amd_v1_3.flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.flags, range, display)

  if show.structs then
    asianext_asianextderivatives_realtime_amd_v1_3.flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Definition Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_message = {}

-- Size: Security Definition Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_message.size =
  asianext_asianextderivatives_realtime_amd_v1_3.security_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.umtf.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.isin.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.currency.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.mic.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.flags.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.size

-- Display: Security Definition Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u32
  index, security_id = asianext_asianextderivatives_realtime_amd_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Umtf: char(6)
  index, umtf = asianext_asianextderivatives_realtime_amd_v1_3.umtf.dissect(buffer, index, packet, parent)

  -- Isin: char(12)
  index, isin = asianext_asianextderivatives_realtime_amd_v1_3.isin.dissect(buffer, index, packet, parent)

  -- Currency: char(3)
  index, currency = asianext_asianextderivatives_realtime_amd_v1_3.currency.dissect(buffer, index, packet, parent)

  -- Mic: char(4)
  index, mic = asianext_asianextderivatives_realtime_amd_v1_3.mic.dissect(buffer, index, packet, parent)

  -- Tick Table Id: u8
  index, tick_table_id = asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 6 fields
  index, flags = asianext_asianextderivatives_realtime_amd_v1_3.flags.dissect(buffer, index, packet, parent)

  -- Exchange Symbol: char(20)
  index, exchange_symbol = asianext_asianextderivatives_realtime_amd_v1_3.exchange_symbol.dissect(buffer, index, packet, parent)

  -- Lot Size Composite: Struct of 2 fields
  index, lot_size_composite = asianext_asianextderivatives_realtime_amd_v1_3.lot_size_composite.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message
asianext_asianextderivatives_realtime_amd_v1_3.security_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.security_definition_message, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.security_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.security_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.security_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Table Data Message
asianext_asianextderivatives_realtime_amd_v1_3.tick_table_data_message = {}

-- Size: Tick Table Data Message
asianext_asianextderivatives_realtime_amd_v1_3.tick_table_data_message.size =
  asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.name.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.threshold.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.tick_size.size

-- Display: Tick Table Data Message
asianext_asianextderivatives_realtime_amd_v1_3.tick_table_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Data Message
asianext_asianextderivatives_realtime_amd_v1_3.tick_table_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tick Table Id: u8
  index, tick_table_id = asianext_asianextderivatives_realtime_amd_v1_3.tick_table_id.dissect(buffer, index, packet, parent)

  -- Name: char(10)
  index, name = asianext_asianextderivatives_realtime_amd_v1_3.name.dissect(buffer, index, packet, parent)

  -- Threshold: u64
  index, threshold = asianext_asianextderivatives_realtime_amd_v1_3.threshold.dissect(buffer, index, packet, parent)

  -- Tick Size: Price
  index, tick_size = asianext_asianextderivatives_realtime_amd_v1_3.tick_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Table Data Message
asianext_asianextderivatives_realtime_amd_v1_3.tick_table_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.tick_table_data_message, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.tick_table_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.tick_table_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.tick_table_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Binary Mmt
asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt = {}

-- Size: Binary Mmt
asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt.size = 4

-- Display: Binary Mmt
asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt.display = function(range, value, packet, parent)
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
asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt.bits = function(range, value, packet, parent)

  -- Market Mechanism: 3 Bit Unsigned Fixed Width Integer Enum with 7 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.market_mechanism, range, value)

  -- Trading Mode: 4 Bit Unsigned Fixed Width Integer Enum with 11 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trading_mode, range, value)

  -- Transaction Category: 3 Bit Unsigned Fixed Width Integer Enum with 5 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.transaction_category, range, value)

  -- Negotiation Indicator Or Pre Trade Transparency Waiver: 3 Bit Unsigned Fixed Width Integer Enum with 8 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.negotiation_indicator_or_pre_trade_transparency_waiver, range, value)

  -- Crossing Trade: 1 Bit Enum with 2 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.crossing_trade, range, value)

  -- Modification Indicator: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.modification_indicator, range, value)

  -- Benchmark Reference Price Indicator: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.benchmark_reference_price_indicator, range, value)

  -- Dividend: 1 Bit Enum with 2 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.dividend, range, value)

  -- Off Book Automation: 2 Bit Unsigned Fixed Width Integer Enum with 3 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.off_book_automation, range, value)

  -- Price Formation Discovery Process: 3 Bit Unsigned Fixed Width Integer Enum with 4 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.price_formation_discovery_process, range, value)

  -- Algorithmic Indicator: 1 Bit Enum with 2 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.algorithmic_indicator, range, value)

  -- Publication Mode Post Trade Deferral: 3 Bit Unsigned Fixed Width Integer Enum with 7 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.publication_mode_post_trade_deferral, range, value)

  -- Deferral Type: 1 Bit Enum with 1 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.deferral_type, range, value)

  -- Duplicative Indicator: 1 Bit Enum with 2 values
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.duplicative_indicator, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.unused_2, range, value)
end

-- Dissect: Binary Mmt
asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt.dissect = function(buffer, offset, packet, parent)
  local size = asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt.display(range, value, packet, parent)
  local element = parent:add_le(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.binary_mmt, range, display)

  if show.structs then
    asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Bust Message
asianext_asianextderivatives_realtime_amd_v1_3.trade_bust_message = {}

-- Size: Trade Bust Message
asianext_asianextderivatives_realtime_amd_v1_3.trade_bust_message.size =
  asianext_asianextderivatives_realtime_amd_v1_3.security_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.quantity.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.price.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.trade_ref.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.timestamp.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt.size

-- Display: Trade Bust Message
asianext_asianextderivatives_realtime_amd_v1_3.trade_bust_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Message
asianext_asianextderivatives_realtime_amd_v1_3.trade_bust_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u32
  index, security_id = asianext_asianextderivatives_realtime_amd_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u64
  index, quantity = asianext_asianextderivatives_realtime_amd_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asianext_asianextderivatives_realtime_amd_v1_3.price.dissect(buffer, index, packet, parent)

  -- Trade Ref: u64
  index, trade_ref = asianext_asianextderivatives_realtime_amd_v1_3.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = asianext_asianextderivatives_realtime_amd_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Binary Mmt: Struct of 15 fields
  index, binary_mmt = asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Message
asianext_asianextderivatives_realtime_amd_v1_3.trade_bust_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trade_bust_message, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.trade_bust_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.trade_bust_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.trade_bust_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
asianext_asianextderivatives_realtime_amd_v1_3.trade_message = {}

-- Size: Trade Message
asianext_asianextderivatives_realtime_amd_v1_3.trade_message.size =
  asianext_asianextderivatives_realtime_amd_v1_3.security_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.trade_type.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.quantity.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.price.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.order_ref.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.trade_ref.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.timestamp.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt.size

-- Display: Trade Message
asianext_asianextderivatives_realtime_amd_v1_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
asianext_asianextderivatives_realtime_amd_v1_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u32
  index, security_id = asianext_asianextderivatives_realtime_amd_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Trade Type: u8
  index, trade_type = asianext_asianextderivatives_realtime_amd_v1_3.trade_type.dissect(buffer, index, packet, parent)

  -- Quantity: u64
  index, quantity = asianext_asianextderivatives_realtime_amd_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asianext_asianextderivatives_realtime_amd_v1_3.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u64
  index, order_ref = asianext_asianextderivatives_realtime_amd_v1_3.order_ref.dissect(buffer, index, packet, parent)

  -- Trade Ref: u64
  index, trade_ref = asianext_asianextderivatives_realtime_amd_v1_3.trade_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = asianext_asianextderivatives_realtime_amd_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Binary Mmt: Struct of 15 fields
  index, binary_mmt = asianext_asianextderivatives_realtime_amd_v1_3.binary_mmt.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
asianext_asianextderivatives_realtime_amd_v1_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.trade_message, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Message
asianext_asianextderivatives_realtime_amd_v1_3.order_modify_message = {}

-- Size: Order Modify Message
asianext_asianextderivatives_realtime_amd_v1_3.order_modify_message.size =
  asianext_asianextderivatives_realtime_amd_v1_3.security_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.quantity.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.price.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.order_ref.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.timestamp.size

-- Display: Order Modify Message
asianext_asianextderivatives_realtime_amd_v1_3.order_modify_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Message
asianext_asianextderivatives_realtime_amd_v1_3.order_modify_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u32
  index, security_id = asianext_asianextderivatives_realtime_amd_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Quantity: u64
  index, quantity = asianext_asianextderivatives_realtime_amd_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asianext_asianextderivatives_realtime_amd_v1_3.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u64
  index, order_ref = asianext_asianextderivatives_realtime_amd_v1_3.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = asianext_asianextderivatives_realtime_amd_v1_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Message
asianext_asianextderivatives_realtime_amd_v1_3.order_modify_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.order_modify_message, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.order_modify_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.order_modify_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.order_modify_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
asianext_asianextderivatives_realtime_amd_v1_3.order_cancel_message = {}

-- Size: Order Cancel Message
asianext_asianextderivatives_realtime_amd_v1_3.order_cancel_message.size =
  asianext_asianextderivatives_realtime_amd_v1_3.security_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.order_ref.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.timestamp.size

-- Display: Order Cancel Message
asianext_asianextderivatives_realtime_amd_v1_3.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
asianext_asianextderivatives_realtime_amd_v1_3.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u32
  index, security_id = asianext_asianextderivatives_realtime_amd_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Order Ref: u64
  index, order_ref = asianext_asianextderivatives_realtime_amd_v1_3.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = asianext_asianextderivatives_realtime_amd_v1_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
asianext_asianextderivatives_realtime_amd_v1_3.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.order_cancel_message, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Add Message
asianext_asianextderivatives_realtime_amd_v1_3.order_add_message = {}

-- Size: Order Add Message
asianext_asianextderivatives_realtime_amd_v1_3.order_add_message.size =
  asianext_asianextderivatives_realtime_amd_v1_3.security_id.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.side.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.quantity.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.price.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.order_ref.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.timestamp.size

-- Display: Order Add Message
asianext_asianextderivatives_realtime_amd_v1_3.order_add_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Add Message
asianext_asianextderivatives_realtime_amd_v1_3.order_add_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: u32
  index, security_id = asianext_asianextderivatives_realtime_amd_v1_3.security_id.dissect(buffer, index, packet, parent)

  -- Side: u8
  index, side = asianext_asianextderivatives_realtime_amd_v1_3.side.dissect(buffer, index, packet, parent)

  -- Quantity: u64
  index, quantity = asianext_asianextderivatives_realtime_amd_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = asianext_asianextderivatives_realtime_amd_v1_3.price.dissect(buffer, index, packet, parent)

  -- Order Ref: u64
  index, order_ref = asianext_asianextderivatives_realtime_amd_v1_3.order_ref.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = asianext_asianextderivatives_realtime_amd_v1_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add Message
asianext_asianextderivatives_realtime_amd_v1_3.order_add_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.order_add_message, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.order_add_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.order_add_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.order_add_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
asianext_asianextderivatives_realtime_amd_v1_3.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
asianext_asianextderivatives_realtime_amd_v1_3.sequence_number_reset_message.size =
  asianext_asianextderivatives_realtime_amd_v1_3.next_seq_no.size

-- Display: Sequence Number Reset Message
asianext_asianextderivatives_realtime_amd_v1_3.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
asianext_asianextderivatives_realtime_amd_v1_3.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Seq No: u32
  index, next_seq_no = asianext_asianextderivatives_realtime_amd_v1_3.next_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
asianext_asianextderivatives_realtime_amd_v1_3.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
asianext_asianextderivatives_realtime_amd_v1_3.heartbeat_message = {}

-- Display: Heartbeat Message
asianext_asianextderivatives_realtime_amd_v1_3.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
asianext_asianextderivatives_realtime_amd_v1_3.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = asianext_asianextderivatives_realtime_amd_v1_3.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
asianext_asianextderivatives_realtime_amd_v1_3.payload = {}

-- Dispatch: Payload
asianext_asianextderivatives_realtime_amd_v1_3.payload.dispatch = {
  [1] = asianext_asianextderivatives_realtime_amd_v1_3.heartbeat_message.dissect,
  [29] = asianext_asianextderivatives_realtime_amd_v1_3.sequence_number_reset_message.dissect,
  [2] = asianext_asianextderivatives_realtime_amd_v1_3.order_add_message.dissect,
  [3] = asianext_asianextderivatives_realtime_amd_v1_3.order_cancel_message.dissect,
  [4] = asianext_asianextderivatives_realtime_amd_v1_3.order_modify_message.dissect,
  [5] = asianext_asianextderivatives_realtime_amd_v1_3.trade_message.dissect,
  [6] = asianext_asianextderivatives_realtime_amd_v1_3.trade_bust_message.dissect,
  [7] = asianext_asianextderivatives_realtime_amd_v1_3.tick_table_data_message.dissect,
  [8] = asianext_asianextderivatives_realtime_amd_v1_3.security_definition_message.dissect,
  [30] = asianext_asianextderivatives_realtime_amd_v1_3.security_definition_futures_message.dissect,
  [32] = asianext_asianextderivatives_realtime_amd_v1_3.security_definition_options_message.dissect,
  [9] = asianext_asianextderivatives_realtime_amd_v1_3.security_status_message.dissect,
}

-- Dissect: Payload
asianext_asianextderivatives_realtime_amd_v1_3.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = asianext_asianextderivatives_realtime_amd_v1_3.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
asianext_asianextderivatives_realtime_amd_v1_3.message_header = {}

-- Size: Message Header
asianext_asianextderivatives_realtime_amd_v1_3.message_header.size =
  asianext_asianextderivatives_realtime_amd_v1_3.msg_type.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.msg_length.size + 
  asianext_asianextderivatives_realtime_amd_v1_3.seq_no.size

-- Display: Message Header
asianext_asianextderivatives_realtime_amd_v1_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
asianext_asianextderivatives_realtime_amd_v1_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: u8
  index, msg_type = asianext_asianextderivatives_realtime_amd_v1_3.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: u8
  index, msg_length = asianext_asianextderivatives_realtime_amd_v1_3.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: u32
  index, seq_no = asianext_asianextderivatives_realtime_amd_v1_3.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
asianext_asianextderivatives_realtime_amd_v1_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.message_header, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
asianext_asianextderivatives_realtime_amd_v1_3.message = {}

-- Display: Message
asianext_asianextderivatives_realtime_amd_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
asianext_asianextderivatives_realtime_amd_v1_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = asianext_asianextderivatives_realtime_amd_v1_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 12 branches
  index = asianext_asianextderivatives_realtime_amd_v1_3.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
asianext_asianextderivatives_realtime_amd_v1_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.message, buffer(offset, 0))
    local current = asianext_asianextderivatives_realtime_amd_v1_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    asianext_asianextderivatives_realtime_amd_v1_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
asianext_asianextderivatives_realtime_amd_v1_3.packet_header = {}

-- Size: Packet Header
asianext_asianextderivatives_realtime_amd_v1_3.packet_header.size =
  asianext_asianextderivatives_realtime_amd_v1_3.message_count.size

-- Display: Packet Header
asianext_asianextderivatives_realtime_amd_v1_3.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
asianext_asianextderivatives_realtime_amd_v1_3.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: u8
  index, message_count = asianext_asianextderivatives_realtime_amd_v1_3.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
asianext_asianextderivatives_realtime_amd_v1_3.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3.fields.packet_header, buffer(offset, 0))
    local index = asianext_asianextderivatives_realtime_amd_v1_3.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asianext_asianextderivatives_realtime_amd_v1_3.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asianext_asianextderivatives_realtime_amd_v1_3.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
asianext_asianextderivatives_realtime_amd_v1_3.packet = {}

-- Verify required size of Udp packet
asianext_asianextderivatives_realtime_amd_v1_3.packet.requiredsize = function(buffer)
  return buffer:len() >= asianext_asianextderivatives_realtime_amd_v1_3.packet_header.size
end

-- Dissect Packet
asianext_asianextderivatives_realtime_amd_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 1 fields
  index, packet_header = asianext_asianextderivatives_realtime_amd_v1_3.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = asianext_asianextderivatives_realtime_amd_v1_3.message.dissect(buffer, index, packet, parent, msg_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_asianext_asianextderivatives_realtime_amd_v1_3.init()
end

-- Dissector for AsiaNext AsiaNextDerivatives RealTime Amd 1.3
function omi_asianext_asianextderivatives_realtime_amd_v1_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_asianext_asianextderivatives_realtime_amd_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_asianext_asianextderivatives_realtime_amd_v1_3, buffer(), omi_asianext_asianextderivatives_realtime_amd_v1_3.description, "("..buffer:len().." Bytes)")
  return asianext_asianextderivatives_realtime_amd_v1_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
asianext_asianextderivatives_realtime_amd_v1_3.packet.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local msg_type = buffer(1, 1):uint()

  -- Heartbeat Message
  if msg_type == 1 then
    return true
  end

  -- Sequence Number Reset Message
  if msg_type == 29 then
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

  -- Trade Message
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

  -- Security Definition Futures Message
  if msg_type == 30 then
    return true
  end

  -- Security Definition Options Message
  if msg_type == 32 then
    return true
  end

  -- Security Status Message
  if msg_type == 9 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for AsiaNext AsiaNextDerivatives RealTime Amd 1.3 (Udp)
local function omi_asianext_asianextderivatives_realtime_amd_v1_3_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not asianext_asianextderivatives_realtime_amd_v1_3.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not asianext_asianextderivatives_realtime_amd_v1_3.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_asianext_asianextderivatives_realtime_amd_v1_3
  omi_asianext_asianextderivatives_realtime_amd_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for AsiaNext AsiaNextDerivatives RealTime Amd 1.3
omi_asianext_asianextderivatives_realtime_amd_v1_3:register_heuristic("udp", omi_asianext_asianextderivatives_realtime_amd_v1_3_udp_heuristic)

-- Register AsiaNext AsiaNextDerivatives RealTime Amd 1.3 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_asianext_asianextderivatives_realtime_amd_v1_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: AsiaNext
--   Version: 1.3
--   Date: Friday, November 6, 2026
--   Specification: AsiaNext-Market-Data-Technical-Specification-v1.3.pdf
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
