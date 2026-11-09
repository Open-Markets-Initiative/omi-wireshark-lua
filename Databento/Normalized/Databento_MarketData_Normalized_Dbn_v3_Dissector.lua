-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Databento MarketData Normalized Dbn 3 Protocol
local omi_databento_marketdata_normalized_dbn_v3 = Proto("Omi.Databento.MarketData.Normalized.Dbn.v3", "Databento MarketData Normalized Dbn 3")

-- Protocol table
local databento_marketdata_normalized_dbn_v3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Databento MarketData Normalized Dbn 3 Fields
omi_databento_marketdata_normalized_dbn_v3.fields.action = ProtoField.new("Action", "databento.marketdata.normalized.dbn.v3.action", ftypes.STRING, nil, nil, nil, "The event action")
omi_databento_marketdata_normalized_dbn_v3.fields.activation = ProtoField.new("Activation", "databento.marketdata.normalized.dbn.v3.activation", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The time of instrument activation expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.activation_utc = ProtoField.new("Activation", "databento.marketdata.normalized.dbn.v3.activation.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The time of instrument activation expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.appl_id = ProtoField.new("Appl Id", "databento.marketdata.normalized.dbn.v3.applid", ftypes.INT16, nil, nil, nil, "The appl id")
omi_databento_marketdata_normalized_dbn_v3.fields.ask_ct = ProtoField.new("Ask Ct", "databento.marketdata.normalized.dbn.v3.askct", ftypes.UINT32, nil, nil, nil, "The number of ask orders")
omi_databento_marketdata_normalized_dbn_v3.fields.ask_pb = ProtoField.new("Ask Pb", "databento.marketdata.normalized.dbn.v3.askpb", ftypes.UINT16, nil, nil, nil, "The publisher ID indicating the venue containing the best ask")
omi_databento_marketdata_normalized_dbn_v3.fields.ask_px = ProtoField.new("Ask Px", "databento.marketdata.normalized.dbn.v3.askpx", ftypes.DOUBLE, nil, nil, nil, "The ask price")
omi_databento_marketdata_normalized_dbn_v3.fields.ask_sz = ProtoField.new("Ask Sz", "databento.marketdata.normalized.dbn.v3.asksz", ftypes.UINT32, nil, nil, nil, "The ask size")
omi_databento_marketdata_normalized_dbn_v3.fields.asset = ProtoField.new("Asset", "databento.marketdata.normalized.dbn.v3.asset", ftypes.STRING, nil, nil, nil, "The asset")
omi_databento_marketdata_normalized_dbn_v3.fields.auct_interest_clr_price = ProtoField.new("Auct Interest Clr Price", "databento.marketdata.normalized.dbn.v3.auctinterestclrprice", ftypes.DOUBLE, nil, nil, nil, "The hypothetical auction-clearing price for cross orders only")
omi_databento_marketdata_normalized_dbn_v3.fields.auction_status = ProtoField.new("Auction Status", "databento.marketdata.normalized.dbn.v3.auctionstatus", ftypes.UINT8, nil, nil, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.auction_time = ProtoField.new("Auction Time", "databento.marketdata.normalized.dbn.v3.auctiontime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.auction_time_utc = ProtoField.new("Auction Time", "databento.marketdata.normalized.dbn.v3.auctiontime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.auction_type = ProtoField.new("Auction Type", "databento.marketdata.normalized.dbn.v3.auctiontype", ftypes.STRING, nil, nil, nil, "Venue-specific character code indicating the auction type; ~ when unused")
omi_databento_marketdata_normalized_dbn_v3.fields.authentication_response = ProtoField.new("Authentication Response", "databento.marketdata.normalized.dbn.v3.authenticationresponse", ftypes.STRING, nil, nil, nil, "The gateway sends this response following the client's authentication request (success, and error or session_id)")
omi_databento_marketdata_normalized_dbn_v3.fields.bad_ts_recv = ProtoField.new("Bad Ts Recv", "databento.marketdata.normalized.dbn.v3.badtsrecv", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08, "Indicates the ts_recv value is inaccurate due to clock issues or packet reordering (bit 3)")
omi_databento_marketdata_normalized_dbn_v3.fields.bid_ask_pair = ProtoField.new("Bid Ask Pair", "databento.marketdata.normalized.dbn.v3.bidaskpair", ftypes.STRING, nil, nil, nil, "A level")
omi_databento_marketdata_normalized_dbn_v3.fields.bid_ct = ProtoField.new("Bid Ct", "databento.marketdata.normalized.dbn.v3.bidct", ftypes.UINT32, nil, nil, nil, "The number of bid orders")
omi_databento_marketdata_normalized_dbn_v3.fields.bid_pb = ProtoField.new("Bid Pb", "databento.marketdata.normalized.dbn.v3.bidpb", ftypes.UINT16, nil, nil, nil, "The publisher ID indicating the venue containing the best bid")
omi_databento_marketdata_normalized_dbn_v3.fields.bid_px = ProtoField.new("Bid Px", "databento.marketdata.normalized.dbn.v3.bidpx", ftypes.DOUBLE, nil, nil, nil, "The bid price")
omi_databento_marketdata_normalized_dbn_v3.fields.bid_sz = ProtoField.new("Bid Sz", "databento.marketdata.normalized.dbn.v3.bidsz", ftypes.UINT32, nil, nil, nil, "The bid size")
omi_databento_marketdata_normalized_dbn_v3.fields.cfi = ProtoField.new("Cfi", "databento.marketdata.normalized.dbn.v3.cfi", ftypes.STRING, nil, nil, nil, "The cfi")
omi_databento_marketdata_normalized_dbn_v3.fields.challenge_request = ProtoField.new("Challenge Request", "databento.marketdata.normalized.dbn.v3.challengerequest", ftypes.STRING, nil, nil, nil, "The gateway sends this message immediately following the greeting message to authenticate the client (cram: a randomly-generated challenge string)")
omi_databento_marketdata_normalized_dbn_v3.fields.channel = ProtoField.new("Channel", "databento.marketdata.normalized.dbn.v3.channel", ftypes.UINT16, nil, nil, nil, "The channel ID assigned by Databento as an incrementing integer starting at zero")
omi_databento_marketdata_normalized_dbn_v3.fields.channel_id = ProtoField.new("Channel Id", "databento.marketdata.normalized.dbn.v3.channelid", ftypes.UINT8, nil, nil, nil, "The channel ID assigned by Databento as an incrementing integer starting at zero")
omi_databento_marketdata_normalized_dbn_v3.fields.close = ProtoField.new("Close", "databento.marketdata.normalized.dbn.v3.close", ftypes.DOUBLE, nil, nil, nil, "The close price for the bar")
omi_databento_marketdata_normalized_dbn_v3.fields.consolidated_bid_ask_pair = ProtoField.new("Consolidated Bid Ask Pair", "databento.marketdata.normalized.dbn.v3.consolidatedbidaskpair", ftypes.STRING, nil, nil, nil, "A price level consolidated from multiple venues")
omi_databento_marketdata_normalized_dbn_v3.fields.cont_book_clr_price = ProtoField.new("Cont Book Clr Price", "databento.marketdata.normalized.dbn.v3.contbookclrprice", ftypes.DOUBLE, nil, nil, nil, "The hypothetical auction-clearing price for both cross and continuous orders")
omi_databento_marketdata_normalized_dbn_v3.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "databento.marketdata.normalized.dbn.v3.contractmultiplier", ftypes.INT32, nil, nil, nil, "The contract multiplier")
omi_databento_marketdata_normalized_dbn_v3.fields.contract_multiplier_unit = ProtoField.new("Contract Multiplier Unit", "databento.marketdata.normalized.dbn.v3.contractmultiplierunit", ftypes.INT8, nil, nil, nil, "The contract multiplier unit")
omi_databento_marketdata_normalized_dbn_v3.fields.control_fields = ProtoField.new("Control Fields", "databento.marketdata.normalized.dbn.v3.controlfields", ftypes.STRING, nil, nil, nil, "ASCII key=value pairs separated by the | character, terminated by a newline character")
omi_databento_marketdata_normalized_dbn_v3.fields.currency = ProtoField.new("Currency", "databento.marketdata.normalized.dbn.v3.currency", ftypes.STRING, nil, nil, nil, "The currency")
omi_databento_marketdata_normalized_dbn_v3.fields.dataset = ProtoField.new("Dataset", "databento.marketdata.normalized.dbn.v3.dataset", ftypes.STRING, nil, nil, nil, "The dataset code")
omi_databento_marketdata_normalized_dbn_v3.fields.decay_quantity = ProtoField.new("Decay Quantity", "databento.marketdata.normalized.dbn.v3.decayquantity", ftypes.INT32, nil, nil, nil, "The decay quantity")
omi_databento_marketdata_normalized_dbn_v3.fields.decay_start_date = ProtoField.new("Decay Start Date", "databento.marketdata.normalized.dbn.v3.decaystartdate", ftypes.UINT16, nil, nil, nil, "The decay start date")
omi_databento_marketdata_normalized_dbn_v3.fields.depth = ProtoField.new("Depth", "databento.marketdata.normalized.dbn.v3.depth", ftypes.UINT8, nil, nil, nil, "The book level where the update event occurred")
omi_databento_marketdata_normalized_dbn_v3.fields.display_factor = ProtoField.new("Display Factor", "databento.marketdata.normalized.dbn.v3.displayfactor", ftypes.DOUBLE, nil, nil, nil, "The display factor, where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.end_ = ProtoField.new("End", "databento.marketdata.normalized.dbn.v3.end", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The end time of query range in UNIX epoch nanoseconds; no value when unbounded")
omi_databento_marketdata_normalized_dbn_v3.fields.end__utc = ProtoField.new("End", "databento.marketdata.normalized.dbn.v3.end.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The end time of query range in UNIX epoch nanoseconds; no value when unbounded")
omi_databento_marketdata_normalized_dbn_v3.fields.end_date = ProtoField.new("End Date", "databento.marketdata.normalized.dbn.v3.enddate", ftypes.UINT32, nil, nil, nil, "The UTC end date of the mapping interval, as a YYYYMMDD integer")
omi_databento_marketdata_normalized_dbn_v3.fields.end_ts = ProtoField.new("End Ts", "databento.marketdata.normalized.dbn.v3.endts", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The end of the mapping interval expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.end_ts_utc = ProtoField.new("End Ts", "databento.marketdata.normalized.dbn.v3.endts.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The end of the mapping interval expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.err = ProtoField.new("Err", "databento.marketdata.normalized.dbn.v3.err", ftypes.STRING, nil, nil, nil, "The error message")
omi_databento_marketdata_normalized_dbn_v3.fields.error_code = ProtoField.new("Error Code", "databento.marketdata.normalized.dbn.v3.errorcode", ftypes.UINT8, nil, nil, nil, "The error code")
omi_databento_marketdata_normalized_dbn_v3.fields.exchange = ProtoField.new("Exchange", "databento.marketdata.normalized.dbn.v3.exchange", ftypes.STRING, nil, nil, nil, "The exchange")
omi_databento_marketdata_normalized_dbn_v3.fields.expiration = ProtoField.new("Expiration", "databento.marketdata.normalized.dbn.v3.expiration", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The last eligible trade time expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.expiration_utc = ProtoField.new("Expiration", "databento.marketdata.normalized.dbn.v3.expiration.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The last eligible trade time expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.flags = ProtoField.new("Flags", "databento.marketdata.normalized.dbn.v3.flags", ftypes.STRING, nil, nil, nil, "A bit field indicating event end, message characteristics, and data quality; declared least significant bit first")
omi_databento_marketdata_normalized_dbn_v3.fields.flow_schedule_type = ProtoField.new("Flow Schedule Type", "databento.marketdata.normalized.dbn.v3.flowscheduletype", ftypes.INT8, nil, nil, nil, "The flow schedule type")
omi_databento_marketdata_normalized_dbn_v3.fields.freeze_status = ProtoField.new("Freeze Status", "databento.marketdata.normalized.dbn.v3.freezestatus", ftypes.UINT8, nil, nil, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.greeting = ProtoField.new("Greeting", "databento.marketdata.normalized.dbn.v3.greeting", ftypes.STRING, nil, nil, nil, "The message sent by the gateway immediately after a client connects (lsg_version: the live gateway version)")
omi_databento_marketdata_normalized_dbn_v3.fields.group = ProtoField.new("Group", "databento.marketdata.normalized.dbn.v3.group", ftypes.STRING, nil, nil, nil, "The group")
omi_databento_marketdata_normalized_dbn_v3.fields.high = ProtoField.new("High", "databento.marketdata.normalized.dbn.v3.high", ftypes.DOUBLE, nil, nil, nil, "The high price for the bar")
omi_databento_marketdata_normalized_dbn_v3.fields.high_limit_price = ProtoField.new("High Limit Price", "databento.marketdata.normalized.dbn.v3.highlimitprice", ftypes.DOUBLE, nil, nil, nil, "The high limit price, where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.ind_match_price = ProtoField.new("Ind Match Price", "databento.marketdata.normalized.dbn.v3.indmatchprice", ftypes.DOUBLE, nil, nil, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.inst_attrib_value = ProtoField.new("Inst Attrib Value", "databento.marketdata.normalized.dbn.v3.instattribvalue", ftypes.INT32, nil, nil, nil, "A bitmap of instrument eligibility attributes; venue-specific")
omi_databento_marketdata_normalized_dbn_v3.fields.instrument_class = ProtoField.new("Instrument Class", "databento.marketdata.normalized.dbn.v3.instrumentclass", ftypes.STRING, nil, nil, nil, "The classification of the instrument")
omi_databento_marketdata_normalized_dbn_v3.fields.instrument_id = ProtoField.new("Instrument Id", "databento.marketdata.normalized.dbn.v3.instrumentid", ftypes.UINT32, nil, nil, nil, "The numeric instrument ID")
omi_databento_marketdata_normalized_dbn_v3.fields.interval_count = ProtoField.new("Interval Count", "databento.marketdata.normalized.dbn.v3.intervalcount", ftypes.UINT32, nil, nil, nil, "The number of mapping intervals of the symbol")
omi_databento_marketdata_normalized_dbn_v3.fields.is_last = ProtoField.new("Is Last", "databento.marketdata.normalized.dbn.v3.islast", ftypes.UINT8, nil, nil, nil, "Sometimes multiple errors are sent together; 1 when this is the last in the series")
omi_databento_marketdata_normalized_dbn_v3.fields.is_quoting = ProtoField.new("Is Quoting", "databento.marketdata.normalized.dbn.v3.isquoting", ftypes.STRING, nil, nil, nil, "The state of quoting in the instrument")
omi_databento_marketdata_normalized_dbn_v3.fields.is_short_sell_restricted = ProtoField.new("Is Short Sell Restricted", "databento.marketdata.normalized.dbn.v3.isshortsellrestricted", ftypes.STRING, nil, nil, nil, "The state of short sell restrictions for the instrument")
omi_databento_marketdata_normalized_dbn_v3.fields.is_trading = ProtoField.new("Is Trading", "databento.marketdata.normalized.dbn.v3.istrading", ftypes.STRING, nil, nil, nil, "The state of trading in the instrument")
omi_databento_marketdata_normalized_dbn_v3.fields.last = ProtoField.new("Last", "databento.marketdata.normalized.dbn.v3.last", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80, "Marks the last record in a single event for a given instrument_id (bit 7)")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_count = ProtoField.new("Leg Count", "databento.marketdata.normalized.dbn.v3.legcount", ftypes.UINT16, nil, nil, nil, "The leg count")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_delta = ProtoField.new("Leg Delta", "databento.marketdata.normalized.dbn.v3.legdelta", ftypes.DOUBLE, nil, nil, nil, "The leg delta, where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_index = ProtoField.new("Leg Index", "databento.marketdata.normalized.dbn.v3.legindex", ftypes.UINT16, nil, nil, nil, "The leg index")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_instrument_class = ProtoField.new("Leg Instrument Class", "databento.marketdata.normalized.dbn.v3.leginstrumentclass", ftypes.STRING, nil, nil, nil, "The classification of the leg instrument")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_instrument_id = ProtoField.new("Leg Instrument Id", "databento.marketdata.normalized.dbn.v3.leginstrumentid", ftypes.UINT32, nil, nil, nil, "The leg instrument id")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_price = ProtoField.new("Leg Price", "databento.marketdata.normalized.dbn.v3.legprice", ftypes.DOUBLE, nil, nil, nil, "The leg price, where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_ratio_price_denominator = ProtoField.new("Leg Ratio Price Denominator", "databento.marketdata.normalized.dbn.v3.legratiopricedenominator", ftypes.INT32, nil, nil, nil, "The leg ratio price denominator")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_ratio_price_numerator = ProtoField.new("Leg Ratio Price Numerator", "databento.marketdata.normalized.dbn.v3.legratiopricenumerator", ftypes.INT32, nil, nil, nil, "The leg ratio price numerator")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_ratio_qty_denominator = ProtoField.new("Leg Ratio Qty Denominator", "databento.marketdata.normalized.dbn.v3.legratioqtydenominator", ftypes.INT32, nil, nil, nil, "The leg ratio qty denominator")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_ratio_qty_numerator = ProtoField.new("Leg Ratio Qty Numerator", "databento.marketdata.normalized.dbn.v3.legratioqtynumerator", ftypes.INT32, nil, nil, nil, "The leg ratio qty numerator")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_raw_symbol = ProtoField.new("Leg Raw Symbol", "databento.marketdata.normalized.dbn.v3.legrawsymbol", ftypes.STRING, nil, nil, nil, "The leg raw symbol")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_side = ProtoField.new("Leg Side", "databento.marketdata.normalized.dbn.v3.legside", ftypes.STRING, nil, nil, nil, "The side taken for the leg when purchasing the spread")
omi_databento_marketdata_normalized_dbn_v3.fields.leg_underlying_id = ProtoField.new("Leg Underlying Id", "databento.marketdata.normalized.dbn.v3.legunderlyingid", ftypes.UINT32, nil, nil, nil, "The leg underlying id")
omi_databento_marketdata_normalized_dbn_v3.fields.limit = ProtoField.new("Limit", "databento.marketdata.normalized.dbn.v3.limit", ftypes.UINT64, nil, nil, nil, "The maximum number of records to return; no value when unlimited")
omi_databento_marketdata_normalized_dbn_v3.fields.low = ProtoField.new("Low", "databento.marketdata.normalized.dbn.v3.low", ftypes.DOUBLE, nil, nil, nil, "The low price for the bar")
omi_databento_marketdata_normalized_dbn_v3.fields.low_limit_price = ProtoField.new("Low Limit Price", "databento.marketdata.normalized.dbn.v3.lowlimitprice", ftypes.DOUBLE, nil, nil, nil, "The low limit price, where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.lower_collar = ProtoField.new("Lower Collar", "databento.marketdata.normalized.dbn.v3.lowercollar", ftypes.DOUBLE, nil, nil, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.magic = ProtoField.new("Magic", "databento.marketdata.normalized.dbn.v3.magic", ftypes.STRING, nil, nil, nil, "The DBN magic string")
omi_databento_marketdata_normalized_dbn_v3.fields.main_fraction = ProtoField.new("Main Fraction", "databento.marketdata.normalized.dbn.v3.mainfraction", ftypes.UINT8, nil, nil, nil, "The main fraction")
omi_databento_marketdata_normalized_dbn_v3.fields.mapped_symbol = ProtoField.new("Mapped Symbol", "databento.marketdata.normalized.dbn.v3.mappedsymbol", ftypes.STRING, nil, nil, nil, "The resolved symbol for this interval")
omi_databento_marketdata_normalized_dbn_v3.fields.mapping_interval = ProtoField.new("Mapping Interval", "databento.marketdata.normalized.dbn.v3.mappinginterval", ftypes.STRING, nil, nil, nil, "The resolution of a symbol for a date range")
omi_databento_marketdata_normalized_dbn_v3.fields.mappings_count = ProtoField.new("Mappings Count", "databento.marketdata.normalized.dbn.v3.mappingscount", ftypes.UINT32, nil, nil, nil, "The number of symbol mappings")
omi_databento_marketdata_normalized_dbn_v3.fields.market_depth = ProtoField.new("Market Depth", "databento.marketdata.normalized.dbn.v3.marketdepth", ftypes.INT32, nil, nil, nil, "The market depth")
omi_databento_marketdata_normalized_dbn_v3.fields.market_depth_implied = ProtoField.new("Market Depth Implied", "databento.marketdata.normalized.dbn.v3.marketdepthimplied", ftypes.INT32, nil, nil, nil, "The market depth implied")
omi_databento_marketdata_normalized_dbn_v3.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "databento.marketdata.normalized.dbn.v3.marketimbalanceqty", ftypes.UINT32, nil, nil, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.market_segment_id = ProtoField.new("Market Segment Id", "databento.marketdata.normalized.dbn.v3.marketsegmentid", ftypes.UINT32, nil, nil, nil, "The market segment id")
omi_databento_marketdata_normalized_dbn_v3.fields.match_algorithm = ProtoField.new("Match Algorithm", "databento.marketdata.normalized.dbn.v3.matchalgorithm", ftypes.STRING, nil, nil, nil, "The matching algorithm used for the instrument, typically FIFO")
omi_databento_marketdata_normalized_dbn_v3.fields.maturity_day = ProtoField.new("Maturity Day", "databento.marketdata.normalized.dbn.v3.maturityday", ftypes.UINT8, nil, nil, nil, "The maturity day")
omi_databento_marketdata_normalized_dbn_v3.fields.maturity_month = ProtoField.new("Maturity Month", "databento.marketdata.normalized.dbn.v3.maturitymonth", ftypes.UINT8, nil, nil, nil, "The maturity month")
omi_databento_marketdata_normalized_dbn_v3.fields.maturity_week = ProtoField.new("Maturity Week", "databento.marketdata.normalized.dbn.v3.maturityweek", ftypes.UINT8, nil, nil, nil, "The maturity week")
omi_databento_marketdata_normalized_dbn_v3.fields.maturity_year = ProtoField.new("Maturity Year", "databento.marketdata.normalized.dbn.v3.maturityyear", ftypes.UINT16, nil, nil, nil, "The maturity year")
omi_databento_marketdata_normalized_dbn_v3.fields.max_price_variation = ProtoField.new("Max Price Variation", "databento.marketdata.normalized.dbn.v3.maxpricevariation", ftypes.DOUBLE, nil, nil, nil, "The max price variation, where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "databento.marketdata.normalized.dbn.v3.maxtradevol", ftypes.UINT32, nil, nil, nil, "The max trade vol")
omi_databento_marketdata_normalized_dbn_v3.fields.maybe_bad_book = ProtoField.new("Maybe Bad Book", "databento.marketdata.normalized.dbn.v3.maybebadbook", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04, "Indicates an unrecoverable gap was detected in the channel (bit 2)")
omi_databento_marketdata_normalized_dbn_v3.fields.mbp = ProtoField.new("Mbp", "databento.marketdata.normalized.dbn.v3.mbp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10, "Indicates an aggregated price level message, not an individual order (bit 4)")
omi_databento_marketdata_normalized_dbn_v3.fields.metadata = ProtoField.new("Metadata", "databento.marketdata.normalized.dbn.v3.metadata", ftypes.STRING, nil, nil, nil, "DBN metadata header, once at the start of a file or stream")
omi_databento_marketdata_normalized_dbn_v3.fields.metadata_length = ProtoField.new("Metadata Length", "databento.marketdata.normalized.dbn.v3.metadatalength", ftypes.UINT32, nil, nil, nil, "The length of the metadata after this field, in bytes")
omi_databento_marketdata_normalized_dbn_v3.fields.metadata_padding = ProtoField.new("Metadata Padding", "databento.marketdata.normalized.dbn.v3.metadatapadding", ftypes.BYTES, nil, nil, nil, "Padding to an 8 byte boundary")
omi_databento_marketdata_normalized_dbn_v3.fields.metadata_reserved = ProtoField.new("Metadata Reserved", "databento.marketdata.normalized.dbn.v3.metadatareserved", ftypes.BYTES, nil, nil, nil, "Reserved, 53 bytes")
omi_databento_marketdata_normalized_dbn_v3.fields.min_lot_size = ProtoField.new("Min Lot Size", "databento.marketdata.normalized.dbn.v3.minlotsize", ftypes.INT32, nil, nil, nil, "The min lot size")
omi_databento_marketdata_normalized_dbn_v3.fields.min_lot_size_block = ProtoField.new("Min Lot Size Block", "databento.marketdata.normalized.dbn.v3.minlotsizeblock", ftypes.INT32, nil, nil, nil, "The min lot size block")
omi_databento_marketdata_normalized_dbn_v3.fields.min_lot_size_round_lot = ProtoField.new("Min Lot Size Round Lot", "databento.marketdata.normalized.dbn.v3.minlotsizeroundlot", ftypes.INT32, nil, nil, nil, "The min lot size round lot")
omi_databento_marketdata_normalized_dbn_v3.fields.min_price_increment = ProtoField.new("Min Price Increment", "databento.marketdata.normalized.dbn.v3.minpriceincrement", ftypes.DOUBLE, nil, nil, nil, "The min price increment, where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "databento.marketdata.normalized.dbn.v3.minpriceincrementamount", ftypes.DOUBLE, nil, nil, nil, "The min price increment amount, where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "databento.marketdata.normalized.dbn.v3.mintradevol", ftypes.UINT32, nil, nil, nil, "The min trade vol")
omi_databento_marketdata_normalized_dbn_v3.fields.msg = ProtoField.new("Msg", "databento.marketdata.normalized.dbn.v3.msg", ftypes.STRING, nil, nil, nil, "The message from the Databento Live Subscription Gateway (LSG)")
omi_databento_marketdata_normalized_dbn_v3.fields.not_found_count = ProtoField.new("Not Found Count", "databento.marketdata.normalized.dbn.v3.notfoundcount", ftypes.UINT32, nil, nil, nil, "The number of symbols that did not resolve for any day in the query time range")
omi_databento_marketdata_normalized_dbn_v3.fields.not_found_symbol = ProtoField.new("Not Found Symbol", "databento.marketdata.normalized.dbn.v3.notfoundsymbol", ftypes.STRING, nil, nil, nil, "One of the symbols that did not resolve for any day in the query time range")
omi_databento_marketdata_normalized_dbn_v3.fields.num_extensions = ProtoField.new("Num Extensions", "databento.marketdata.normalized.dbn.v3.numextensions", ftypes.UINT8, nil, nil, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.open = ProtoField.new("Open", "databento.marketdata.normalized.dbn.v3.open", ftypes.DOUBLE, nil, nil, nil, "The open price for the bar")
omi_databento_marketdata_normalized_dbn_v3.fields.order_id = ProtoField.new("Order Id", "databento.marketdata.normalized.dbn.v3.orderid", ftypes.UINT64, nil, nil, nil, "The order ID assigned at the venue")
omi_databento_marketdata_normalized_dbn_v3.fields.original_contract_size = ProtoField.new("Original Contract Size", "databento.marketdata.normalized.dbn.v3.originalcontractsize", ftypes.INT32, nil, nil, nil, "The original contract size")
omi_databento_marketdata_normalized_dbn_v3.fields.paired_qty = ProtoField.new("Paired Qty", "databento.marketdata.normalized.dbn.v3.pairedqty", ftypes.UINT32, nil, nil, nil, "The quantity of shares that are eligible to be matched at ref_price")
omi_databento_marketdata_normalized_dbn_v3.fields.partial_count = ProtoField.new("Partial Count", "databento.marketdata.normalized.dbn.v3.partialcount", ftypes.UINT32, nil, nil, nil, "The number of symbols that did not resolve for at least one day in the query time range")
omi_databento_marketdata_normalized_dbn_v3.fields.partial_symbol = ProtoField.new("Partial Symbol", "databento.marketdata.normalized.dbn.v3.partialsymbol", ftypes.STRING, nil, nil, nil, "One of the symbols that did not resolve for at least one day in the query time range")
omi_databento_marketdata_normalized_dbn_v3.fields.price = ProtoField.new("Price", "databento.marketdata.normalized.dbn.v3.price", ftypes.DOUBLE, nil, nil, nil, "The price where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.price_display_format = ProtoField.new("Price Display Format", "databento.marketdata.normalized.dbn.v3.pricedisplayformat", ftypes.UINT8, nil, nil, nil, "The price display format")
omi_databento_marketdata_normalized_dbn_v3.fields.price_ratio = ProtoField.new("Price Ratio", "databento.marketdata.normalized.dbn.v3.priceratio", ftypes.DOUBLE, nil, nil, nil, "The price ratio, where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.publisher_id = ProtoField.new("Publisher Id", "databento.marketdata.normalized.dbn.v3.publisherid", ftypes.UINT16, nil, nil, nil, "The publisher ID assigned by Databento, which denotes the dataset and venue")
omi_databento_marketdata_normalized_dbn_v3.fields.publisher_specific = ProtoField.new("Publisher Specific", "databento.marketdata.normalized.dbn.v3.publisherspecific", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02, "Indicates a publisher-specific event (bit 1)")
omi_databento_marketdata_normalized_dbn_v3.fields.quantity = ProtoField.new("Quantity", "databento.marketdata.normalized.dbn.v3.quantity", ftypes.INT64, nil, nil, nil, "The value for non-price statistics")
omi_databento_marketdata_normalized_dbn_v3.fields.raw_instrument_id = ProtoField.new("Raw Instrument Id", "databento.marketdata.normalized.dbn.v3.rawinstrumentid", ftypes.UINT64, nil, nil, nil, "The instrument ID assigned by the publisher; may be the same as instrument_id")
omi_databento_marketdata_normalized_dbn_v3.fields.raw_symbol = ProtoField.new("Raw Symbol", "databento.marketdata.normalized.dbn.v3.rawsymbol", ftypes.STRING, nil, nil, nil, "The raw symbol")
omi_databento_marketdata_normalized_dbn_v3.fields.raw_symbol_in = ProtoField.new("Raw Symbol In", "databento.marketdata.normalized.dbn.v3.rawsymbolin", ftypes.STRING, nil, nil, nil, "The symbol assigned by publisher")
omi_databento_marketdata_normalized_dbn_v3.fields.record_header = ProtoField.new("Record Header", "databento.marketdata.normalized.dbn.v3.recordheader", ftypes.STRING, nil, nil, nil, "DBN common header of every record")
omi_databento_marketdata_normalized_dbn_v3.fields.record_length = ProtoField.new("Record Length", "databento.marketdata.normalized.dbn.v3.recordlength", ftypes.UINT8, nil, nil, nil, "The length of the record in 32-bit words, including this header and any ts_out trailer")
omi_databento_marketdata_normalized_dbn_v3.fields.ref_price = ProtoField.new("Ref Price", "databento.marketdata.normalized.dbn.v3.refprice", ftypes.DOUBLE, nil, nil, nil, "The price at which the imbalance shares are calculated")
omi_databento_marketdata_normalized_dbn_v3.fields.reserved_1 = ProtoField.new("Reserved 1", "databento.marketdata.normalized.dbn.v3.reserved1", ftypes.BYTES, nil, nil, nil, "Reserved, 1 byte")
omi_databento_marketdata_normalized_dbn_v3.fields.reserved_17 = ProtoField.new("Reserved 17", "databento.marketdata.normalized.dbn.v3.reserved17", ftypes.BYTES, nil, nil, nil, "Reserved, 17 bytes")
omi_databento_marketdata_normalized_dbn_v3.fields.reserved_18 = ProtoField.new("Reserved 18", "databento.marketdata.normalized.dbn.v3.reserved18", ftypes.BYTES, nil, nil, nil, "Reserved, 18 bytes")
omi_databento_marketdata_normalized_dbn_v3.fields.reserved_2 = ProtoField.new("Reserved 2", "databento.marketdata.normalized.dbn.v3.reserved2", ftypes.BYTES, nil, nil, nil, "Reserved, 2 bytes")
omi_databento_marketdata_normalized_dbn_v3.fields.reserved_4 = ProtoField.new("Reserved 4", "databento.marketdata.normalized.dbn.v3.reserved4", ftypes.BYTES, nil, nil, nil, "Reserved, 4 bytes")
omi_databento_marketdata_normalized_dbn_v3.fields.reserved_7 = ProtoField.new("Reserved 7", "databento.marketdata.normalized.dbn.v3.reserved7", ftypes.BYTES, nil, nil, nil, "Reserved, 7 bytes")
omi_databento_marketdata_normalized_dbn_v3.fields.reserved_8 = ProtoField.new("Reserved 8", "databento.marketdata.normalized.dbn.v3.reserved8", ftypes.BYTES, nil, nil, nil, "Reserved, 8 bytes")
omi_databento_marketdata_normalized_dbn_v3.fields.reserved_flag = ProtoField.new("Reserved Flag", "databento.marketdata.normalized.dbn.v3.reservedflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01, "Bit 0, unused")
omi_databento_marketdata_normalized_dbn_v3.fields.rtype = ProtoField.new("Rtype", "databento.marketdata.normalized.dbn.v3.rtype", ftypes.UINT8, nil, nil, nil, "The record type, which selects the record that follows the header")
omi_databento_marketdata_normalized_dbn_v3.fields.schema = ProtoField.new("Schema", "databento.marketdata.normalized.dbn.v3.schema", ftypes.UINT16, nil, nil, nil, "The data record schema; no value for a file of mixed schemas")
omi_databento_marketdata_normalized_dbn_v3.fields.schema_definition = ProtoField.new("Schema Definition", "databento.marketdata.normalized.dbn.v3.schemadefinition", ftypes.BYTES, nil, nil, nil, "The schema definition; always empty")
omi_databento_marketdata_normalized_dbn_v3.fields.schema_definition_length = ProtoField.new("Schema Definition Length", "databento.marketdata.normalized.dbn.v3.schemadefinitionlength", ftypes.UINT32, nil, nil, nil, "The length of the schema definition; always 0")
omi_databento_marketdata_normalized_dbn_v3.fields.second_reserved_1 = ProtoField.new("Second Reserved 1", "databento.marketdata.normalized.dbn.v3.secondreserved1", ftypes.BYTES, nil, nil, nil, "Reserved, 1 byte")
omi_databento_marketdata_normalized_dbn_v3.fields.second_reserved_2 = ProtoField.new("Second Reserved 2", "databento.marketdata.normalized.dbn.v3.secondreserved2", ftypes.BYTES, nil, nil, nil, "Reserved, 2 bytes")
omi_databento_marketdata_normalized_dbn_v3.fields.secsubtype = ProtoField.new("Secsubtype", "databento.marketdata.normalized.dbn.v3.secsubtype", ftypes.STRING, nil, nil, nil, "The secsubtype")
omi_databento_marketdata_normalized_dbn_v3.fields.security_type = ProtoField.new("Security Type", "databento.marketdata.normalized.dbn.v3.securitytype", ftypes.STRING, nil, nil, nil, "The security type")
omi_databento_marketdata_normalized_dbn_v3.fields.security_update_action = ProtoField.new("Security Update Action", "databento.marketdata.normalized.dbn.v3.securityupdateaction", ftypes.STRING, nil, nil, nil, "Indicates if the instrument definition has been added, modified, or deleted")
omi_databento_marketdata_normalized_dbn_v3.fields.sequence = ProtoField.new("Sequence", "databento.marketdata.normalized.dbn.v3.sequence", ftypes.UINT32, nil, nil, nil, "The message sequence number assigned at the venue")
omi_databento_marketdata_normalized_dbn_v3.fields.settl_currency = ProtoField.new("Settl Currency", "databento.marketdata.normalized.dbn.v3.settlcurrency", ftypes.STRING, nil, nil, nil, "The settl currency")
omi_databento_marketdata_normalized_dbn_v3.fields.side = ProtoField.new("Side", "databento.marketdata.normalized.dbn.v3.side", ftypes.STRING, nil, nil, nil, "The side that initiates the event")
omi_databento_marketdata_normalized_dbn_v3.fields.significant_imbalance = ProtoField.new("Significant Imbalance", "databento.marketdata.normalized.dbn.v3.significantimbalance", ftypes.STRING, nil, nil, nil, "Venue-specific character code; for Nasdaq, contains the raw Price Variation Indicator")
omi_databento_marketdata_normalized_dbn_v3.fields.size = ProtoField.new("Size", "databento.marketdata.normalized.dbn.v3.size", ftypes.UINT32, nil, nil, nil, "The order quantity")
omi_databento_marketdata_normalized_dbn_v3.fields.snapshot = ProtoField.new("Snapshot", "databento.marketdata.normalized.dbn.v3.snapshot", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20, "Indicates the message was sourced from a replay, such as a snapshot server (bit 5)")
omi_databento_marketdata_normalized_dbn_v3.fields.ssr_filling_price = ProtoField.new("Ssr Filling Price", "databento.marketdata.normalized.dbn.v3.ssrfillingprice", ftypes.DOUBLE, nil, nil, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.start = ProtoField.new("Start", "databento.marketdata.normalized.dbn.v3.start", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The start time of query range in UNIX epoch nanoseconds")
omi_databento_marketdata_normalized_dbn_v3.fields.start_utc = ProtoField.new("Start", "databento.marketdata.normalized.dbn.v3.start.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The start time of query range in UNIX epoch nanoseconds")
omi_databento_marketdata_normalized_dbn_v3.fields.start_date = ProtoField.new("Start Date", "databento.marketdata.normalized.dbn.v3.startdate", ftypes.UINT32, nil, nil, nil, "The UTC start date of the mapping interval, as a YYYYMMDD integer")
omi_databento_marketdata_normalized_dbn_v3.fields.start_ts = ProtoField.new("Start Ts", "databento.marketdata.normalized.dbn.v3.startts", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The start of the mapping interval expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.start_ts_utc = ProtoField.new("Start Ts", "databento.marketdata.normalized.dbn.v3.startts.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The start of the mapping interval expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.stat_flags = ProtoField.new("Stat Flags", "databento.marketdata.normalized.dbn.v3.statflags", ftypes.UINT8, nil, nil, nil, "Additional flags associated with certain stat types")
omi_databento_marketdata_normalized_dbn_v3.fields.stat_type = ProtoField.new("Stat Type", "databento.marketdata.normalized.dbn.v3.stattype", ftypes.UINT16, nil, nil, nil, "The type of statistic value contained in the message")
omi_databento_marketdata_normalized_dbn_v3.fields.status_action = ProtoField.new("Status Action", "databento.marketdata.normalized.dbn.v3.statusaction", ftypes.UINT16, nil, nil, nil, "The type of status change")
omi_databento_marketdata_normalized_dbn_v3.fields.status_reason = ProtoField.new("Status Reason", "databento.marketdata.normalized.dbn.v3.statusreason", ftypes.UINT16, nil, nil, nil, "Additional details about the cause of the status change")
omi_databento_marketdata_normalized_dbn_v3.fields.strike_price = ProtoField.new("Strike Price", "databento.marketdata.normalized.dbn.v3.strikeprice", ftypes.DOUBLE, nil, nil, nil, "The strike price, where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "databento.marketdata.normalized.dbn.v3.strikepricecurrency", ftypes.STRING, nil, nil, nil, "The strike price currency")
omi_databento_marketdata_normalized_dbn_v3.fields.stype_in = ProtoField.new("Stype In", "databento.marketdata.normalized.dbn.v3.stypein", ftypes.UINT8, nil, nil, nil, "The input symbology type")
omi_databento_marketdata_normalized_dbn_v3.fields.stype_in_symbol = ProtoField.new("Stype In Symbol", "databento.marketdata.normalized.dbn.v3.stypeinsymbol", ftypes.STRING, nil, nil, nil, "The input symbol")
omi_databento_marketdata_normalized_dbn_v3.fields.stype_out = ProtoField.new("Stype Out", "databento.marketdata.normalized.dbn.v3.stypeout", ftypes.UINT8, nil, nil, nil, "The output symbology type")
omi_databento_marketdata_normalized_dbn_v3.fields.stype_out_symbol = ProtoField.new("Stype Out Symbol", "databento.marketdata.normalized.dbn.v3.stypeoutsymbol", ftypes.STRING, nil, nil, nil, "The output symbol")
omi_databento_marketdata_normalized_dbn_v3.fields.sub_fraction = ProtoField.new("Sub Fraction", "databento.marketdata.normalized.dbn.v3.subfraction", ftypes.UINT8, nil, nil, nil, "The sub fraction")
omi_databento_marketdata_normalized_dbn_v3.fields.symbol = ProtoField.new("Symbol", "databento.marketdata.normalized.dbn.v3.symbol", ftypes.STRING, nil, nil, nil, "One of the query input symbols")
omi_databento_marketdata_normalized_dbn_v3.fields.symbol_cstr_len = ProtoField.new("Symbol Cstr Len", "databento.marketdata.normalized.dbn.v3.symbolcstrlen", ftypes.UINT16, nil, nil, nil, "The number of bytes in fixed-length symbol strings, including a null terminator byte; 71 in version 3")
omi_databento_marketdata_normalized_dbn_v3.fields.symbol_mapping = ProtoField.new("Symbol Mapping", "databento.marketdata.normalized.dbn.v3.symbolmapping", ftypes.STRING, nil, nil, nil, "The mappings of one raw symbol")
omi_databento_marketdata_normalized_dbn_v3.fields.symbols_count = ProtoField.new("Symbols Count", "databento.marketdata.normalized.dbn.v3.symbolscount", ftypes.UINT32, nil, nil, nil, "The number of query input symbols")
omi_databento_marketdata_normalized_dbn_v3.fields.system_code = ProtoField.new("System Code", "databento.marketdata.normalized.dbn.v3.systemcode", ftypes.UINT8, nil, nil, nil, "Type of system message")
omi_databento_marketdata_normalized_dbn_v3.fields.tick_rule = ProtoField.new("Tick Rule", "databento.marketdata.normalized.dbn.v3.tickrule", ftypes.UINT8, nil, nil, nil, "The tick rule")
omi_databento_marketdata_normalized_dbn_v3.fields.tob = ProtoField.new("Tob", "databento.marketdata.normalized.dbn.v3.tob", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40, "Indicates a top-of-book message, not an individual order (bit 6)")
omi_databento_marketdata_normalized_dbn_v3.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "databento.marketdata.normalized.dbn.v3.totalimbalanceqty", ftypes.UINT32, nil, nil, nil, "The quantity of shares that are not paired at ref_price")
omi_databento_marketdata_normalized_dbn_v3.fields.trading_event = ProtoField.new("Trading Event", "databento.marketdata.normalized.dbn.v3.tradingevent", ftypes.UINT16, nil, nil, nil, "Further information about a status update")
omi_databento_marketdata_normalized_dbn_v3.fields.ts_event = ProtoField.new("Ts Event", "databento.marketdata.normalized.dbn.v3.tsevent", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The matching-engine-received timestamp expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.ts_event_utc = ProtoField.new("Ts Event", "databento.marketdata.normalized.dbn.v3.tsevent.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The matching-engine-received timestamp expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.ts_in_delta = ProtoField.new("Ts In Delta", "databento.marketdata.normalized.dbn.v3.tsindelta", ftypes.INT32, nil, nil, nil, "The matching-engine-sending timestamp expressed as the number of nanoseconds before ts_recv")
omi_databento_marketdata_normalized_dbn_v3.fields.ts_out = ProtoField.new("Ts Out", "databento.marketdata.normalized.dbn.v3.tsout", ftypes.UINT8, nil, nil, nil, "Whether every record carries a ts_out trailer, the live gateway send timestamp")
omi_databento_marketdata_normalized_dbn_v3.fields.ts_out_time = ProtoField.new("Ts Out Time", "databento.marketdata.normalized.dbn.v3.tsouttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The live gateway send timestamp, present on every record when the metadata ts_out flag is set")
omi_databento_marketdata_normalized_dbn_v3.fields.ts_out_time_utc = ProtoField.new("Ts Out Time", "databento.marketdata.normalized.dbn.v3.tsouttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The live gateway send timestamp, present on every record when the metadata ts_out flag is set")
omi_databento_marketdata_normalized_dbn_v3.fields.ts_recv = ProtoField.new("Ts Recv", "databento.marketdata.normalized.dbn.v3.tsrecv", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The capture-server-received timestamp expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.ts_recv_utc = ProtoField.new("Ts Recv", "databento.marketdata.normalized.dbn.v3.tsrecv.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The capture-server-received timestamp expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.ts_ref = ProtoField.new("Ts Ref", "databento.marketdata.normalized.dbn.v3.tsref", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The reference timestamp of the statistic value expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.ts_ref_utc = ProtoField.new("Ts Ref", "databento.marketdata.normalized.dbn.v3.tsref.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The reference timestamp of the statistic value expressed as the number of nanoseconds since the UNIX epoch")
omi_databento_marketdata_normalized_dbn_v3.fields.underlying = ProtoField.new("Underlying", "databento.marketdata.normalized.dbn.v3.underlying", ftypes.STRING, nil, nil, nil, "The underlying")
omi_databento_marketdata_normalized_dbn_v3.fields.underlying_id = ProtoField.new("Underlying Id", "databento.marketdata.normalized.dbn.v3.underlyingid", ftypes.UINT32, nil, nil, nil, "The underlying id")
omi_databento_marketdata_normalized_dbn_v3.fields.underlying_product = ProtoField.new("Underlying Product", "databento.marketdata.normalized.dbn.v3.underlyingproduct", ftypes.UINT8, nil, nil, nil, "The underlying product")
omi_databento_marketdata_normalized_dbn_v3.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "databento.marketdata.normalized.dbn.v3.unitofmeasure", ftypes.STRING, nil, nil, nil, "The unit of measure")
omi_databento_marketdata_normalized_dbn_v3.fields.unit_of_measure_qty = ProtoField.new("Unit Of Measure Qty", "databento.marketdata.normalized.dbn.v3.unitofmeasureqty", ftypes.DOUBLE, nil, nil, nil, "The unit of measure qty, where every 1 unit corresponds to 1e-9")
omi_databento_marketdata_normalized_dbn_v3.fields.unpaired_qty = ProtoField.new("Unpaired Qty", "databento.marketdata.normalized.dbn.v3.unpairedqty", ftypes.UINT32, nil, nil, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.unpaired_side = ProtoField.new("Unpaired Side", "databento.marketdata.normalized.dbn.v3.unpairedside", ftypes.STRING, nil, nil, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.update_action = ProtoField.new("Update Action", "databento.marketdata.normalized.dbn.v3.updateaction", ftypes.UINT8, nil, nil, nil, "Indicates if the statistic is newly added or deleted")
omi_databento_marketdata_normalized_dbn_v3.fields.upper_collar = ProtoField.new("Upper Collar", "databento.marketdata.normalized.dbn.v3.uppercollar", ftypes.DOUBLE, nil, nil, nil, "Reserved for future use")
omi_databento_marketdata_normalized_dbn_v3.fields.user_defined_instrument = ProtoField.new("User Defined Instrument", "databento.marketdata.normalized.dbn.v3.userdefinedinstrument", ftypes.STRING, nil, nil, nil, "Indicates if the instrument is user defined")
omi_databento_marketdata_normalized_dbn_v3.fields.version = ProtoField.new("Version", "databento.marketdata.normalized.dbn.v3.version", ftypes.UINT8, nil, nil, nil, "The DBN schema version number")
omi_databento_marketdata_normalized_dbn_v3.fields.volume = ProtoField.new("Volume", "databento.marketdata.normalized.dbn.v3.volume", ftypes.UINT64, nil, nil, nil, "The total volume traded during the aggregation period")

-- Databento MarketData Normalized Dbn 3 Framing
omi_databento_marketdata_normalized_dbn_v3.fields.client_stream = ProtoField.new("Client Stream", "databento.marketdata.normalized.dbn.v3.clientstream", ftypes.STRING, nil, nil, nil, "The client's control messages: authentication, subscriptions and the session start")
omi_databento_marketdata_normalized_dbn_v3.fields.control_message = ProtoField.new("Control Message", "databento.marketdata.normalized.dbn.v3.controlmessage", ftypes.STRING, nil, nil, nil, "A control message: key=value fields separated by |, ending on a newline")
omi_databento_marketdata_normalized_dbn_v3.fields.file = ProtoField.new("File", "databento.marketdata.normalized.dbn.v3.file", ftypes.STRING, nil, nil, nil, "A DBN file: the metadata, then records to its end")
omi_databento_marketdata_normalized_dbn_v3.fields.gateway_stream = ProtoField.new("Gateway Stream", "databento.marketdata.normalized.dbn.v3.gatewaystream", ftypes.STRING, nil, nil, nil, "The gateway's control messages, then the DBN stream: its metadata, then records")
omi_databento_marketdata_normalized_dbn_v3.fields.record = ProtoField.new("Record", "databento.marketdata.normalized.dbn.v3.record", ftypes.STRING, nil, nil, nil, "A DBN record: the common header, the record its rtype selects, and the ts_out trailer when the metadata asks for it")

-- Databento MarketData Normalized 3 Application Messages
omi_databento_marketdata_normalized_dbn_v3.fields.bbo_msg = ProtoField.new("Bbo Msg", "databento.marketdata.normalized.dbn.v3.bbomsg", ftypes.STRING, nil, nil, nil, "Subsampled market by price with a known book depth of 1; the record of the bbo-1s and bbo-1m schemas")
omi_databento_marketdata_normalized_dbn_v3.fields.cbbo_msg = ProtoField.new("Cbbo Msg", "databento.marketdata.normalized.dbn.v3.cbbomsg", ftypes.STRING, nil, nil, nil, "Subsampled consolidated market by price with a known book depth of 1; the record of the cbbo-1s and cbbo-1m schemas")
omi_databento_marketdata_normalized_dbn_v3.fields.cmbp_1_msg = ProtoField.new("Cmbp 1 Msg", "databento.marketdata.normalized.dbn.v3.cmbp1msg", ftypes.STRING, nil, nil, nil, "Consolidated market by price implementation with a known book depth of 1; the record of the cmbp-1 and tcbbo schemas")
omi_databento_marketdata_normalized_dbn_v3.fields.error_msg = ProtoField.new("Error Msg", "databento.marketdata.normalized.dbn.v3.errormsg", ftypes.STRING, nil, nil, nil, "An error message from the Databento Live Subscription Gateway (LSG)")
omi_databento_marketdata_normalized_dbn_v3.fields.imbalance_msg = ProtoField.new("Imbalance Msg", "databento.marketdata.normalized.dbn.v3.imbalancemsg", ftypes.STRING, nil, nil, nil, "An auction imbalance message; the record of the imbalance schema")
omi_databento_marketdata_normalized_dbn_v3.fields.instrument_def_msg = ProtoField.new("Instrument Def Msg", "databento.marketdata.normalized.dbn.v3.instrumentdefmsg", ftypes.STRING, nil, nil, nil, "A definition of an instrument; the record of the definition schema")
omi_databento_marketdata_normalized_dbn_v3.fields.mbo_msg = ProtoField.new("Mbo Msg", "databento.marketdata.normalized.dbn.v3.mbomsg", ftypes.STRING, nil, nil, nil, "A market-by-order (MBO) tick message")
omi_databento_marketdata_normalized_dbn_v3.fields.mbp_1_msg = ProtoField.new("Mbp 1 Msg", "databento.marketdata.normalized.dbn.v3.mbp1msg", ftypes.STRING, nil, nil, nil, "Market by price implementation with a known book depth of 1; the record of the mbp-1 and tbbo schemas")
omi_databento_marketdata_normalized_dbn_v3.fields.mbp_10_msg = ProtoField.new("Mbp 10 Msg", "databento.marketdata.normalized.dbn.v3.mbp10msg", ftypes.STRING, nil, nil, nil, "Market by price implementation with a known book depth of 10")
omi_databento_marketdata_normalized_dbn_v3.fields.ohlcv_msg = ProtoField.new("Ohlcv Msg", "databento.marketdata.normalized.dbn.v3.ohlcvmsg", ftypes.STRING, nil, nil, nil, "Open, high, low, close, and volume; the record of the ohlcv schemas")
omi_databento_marketdata_normalized_dbn_v3.fields.stat_msg = ProtoField.new("Stat Msg", "databento.marketdata.normalized.dbn.v3.statmsg", ftypes.STRING, nil, nil, nil, "A statistics message; the record of the statistics schema")
omi_databento_marketdata_normalized_dbn_v3.fields.status_msg = ProtoField.new("Status Msg", "databento.marketdata.normalized.dbn.v3.statusmsg", ftypes.STRING, nil, nil, nil, "A trading status update message; the record of the status schema")
omi_databento_marketdata_normalized_dbn_v3.fields.symbol_mapping_msg = ProtoField.new("Symbol Mapping Msg", "databento.marketdata.normalized.dbn.v3.symbolmappingmsg", ftypes.STRING, nil, nil, nil, "A symbol mapping message, which maps a symbol of one SType to another")
omi_databento_marketdata_normalized_dbn_v3.fields.system_msg = ProtoField.new("System Msg", "databento.marketdata.normalized.dbn.v3.systemmsg", ftypes.STRING, nil, nil, nil, "A non-error message from the Databento Live Subscription Gateway (LSG); also used for heartbeating")
omi_databento_marketdata_normalized_dbn_v3.fields.trade_msg = ProtoField.new("Trade Msg", "databento.marketdata.normalized.dbn.v3.trademsg", ftypes.STRING, nil, nil, nil, "Market by price implementation with a book depth of 0; equivalent to MBP-0, the record of the trades schema")

-- Databento MarketData Normalized Dbn 3 Generated Fields
omi_databento_marketdata_normalized_dbn_v3.fields.bid_ask_pair_index = ProtoField.new("Bid Ask Pair Index", "databento.marketdata.normalized.dbn.v3.bidaskpairindex", ftypes.UINT16)
omi_databento_marketdata_normalized_dbn_v3.fields.mapping_interval_index = ProtoField.new("Mapping Interval Index", "databento.marketdata.normalized.dbn.v3.mappingintervalindex", ftypes.UINT16)
omi_databento_marketdata_normalized_dbn_v3.fields.not_found_symbol_index = ProtoField.new("Not Found Symbol Index", "databento.marketdata.normalized.dbn.v3.notfoundsymbolindex", ftypes.UINT16)
omi_databento_marketdata_normalized_dbn_v3.fields.partial_symbol_index = ProtoField.new("Partial Symbol Index", "databento.marketdata.normalized.dbn.v3.partialsymbolindex", ftypes.UINT16)
omi_databento_marketdata_normalized_dbn_v3.fields.symbol_index = ProtoField.new("Symbol Index", "databento.marketdata.normalized.dbn.v3.symbolindex", ftypes.UINT16)
omi_databento_marketdata_normalized_dbn_v3.fields.symbol_mapping_index = ProtoField.new("Symbol Mapping Index", "databento.marketdata.normalized.dbn.v3.symbolmappingindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Databento MarketData Normalized Dbn 3 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
databento_marketdata_normalized_dbn_v3.timestamp_format = 2

-- assumed connection role
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Databento MarketData Normalized Dbn 3 Element Dissection Options
show.structs = true
show.application_messages = true
show.padding = false
show.indexes = true

-- Register Databento MarketData Normalized Dbn 3 Show Options
omi_databento_marketdata_normalized_dbn_v3.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_databento_marketdata_normalized_dbn_v3.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_databento_marketdata_normalized_dbn_v3.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_databento_marketdata_normalized_dbn_v3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_databento_marketdata_normalized_dbn_v3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_databento_marketdata_normalized_dbn_v3.prefs.show_padding = Pref.bool("Show Padding", show.padding, "Parse and add Padding to protocol tree")
omi_databento_marketdata_normalized_dbn_v3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_databento_marketdata_normalized_dbn_v3.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_databento_marketdata_normalized_dbn_v3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_databento_marketdata_normalized_dbn_v3.prefs.show_application_messages then
    show.application_messages = omi_databento_marketdata_normalized_dbn_v3.prefs.show_application_messages
  end
  if show.padding ~= omi_databento_marketdata_normalized_dbn_v3.prefs.show_padding then
    show.padding = omi_databento_marketdata_normalized_dbn_v3.prefs.show_padding
  end
  if show.structs ~= omi_databento_marketdata_normalized_dbn_v3.prefs.show_structs then
    show.structs = omi_databento_marketdata_normalized_dbn_v3.prefs.show_structs
  end
  if show.indexes ~= omi_databento_marketdata_normalized_dbn_v3.prefs.show_indexes then
    show.indexes = omi_databento_marketdata_normalized_dbn_v3.prefs.show_indexes
  end
  if databento_marketdata_normalized_dbn_v3.timestamp_format ~= omi_databento_marketdata_normalized_dbn_v3.prefs.timestamp_format then
    databento_marketdata_normalized_dbn_v3.timestamp_format = omi_databento_marketdata_normalized_dbn_v3.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
databento_marketdata_normalized_dbn_v3.conversation = {}
databento_marketdata_normalized_dbn_v3.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
databento_marketdata_normalized_dbn_v3.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
databento_marketdata_normalized_dbn_v3.conversation.data = function(packet)
  local key = databento_marketdata_normalized_dbn_v3.conversation.key(packet)
  local data = databento_marketdata_normalized_dbn_v3.conversation.flows[key]
  if data == nil then
    data = { ts_out = { last = nil, frames = {} }, stream = { place = 0, frames = {} } }
    databento_marketdata_normalized_dbn_v3.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
databento_marketdata_normalized_dbn_v3.conversation.current = nil

-- Stream place: how far into what its stream opens with each dissection starts
databento_marketdata_normalized_dbn_v3.stream_place = {}
databento_marketdata_normalized_dbn_v3.stream_place.frame = nil
databento_marketdata_normalized_dbn_v3.stream_place.occurrence = 0

-- Context of this dissection: memoized on the first pass, replayed in order on a revisit
databento_marketdata_normalized_dbn_v3.stream_place.context = function(data, packet)
  local memo = data.stream.frames[packet.number]
  if not packet.visited then
    if memo == nil then
      memo = {}
      data.stream.frames[packet.number] = memo
    end
    local context = { place = data.stream.place, ts_out = data.ts_out.last }
    memo[#memo + 1] = context
    return context
  end

  if memo == nil or #memo == 0 then
    return { place = data.stream.place, ts_out = data.ts_out.last }
  end

  if databento_marketdata_normalized_dbn_v3.stream_place.frame ~= packet.number or databento_marketdata_normalized_dbn_v3.stream_place.occurrence >= #memo then
    databento_marketdata_normalized_dbn_v3.stream_place.frame = packet.number
    databento_marketdata_normalized_dbn_v3.stream_place.occurrence = 0
  end
  databento_marketdata_normalized_dbn_v3.stream_place.occurrence = databento_marketdata_normalized_dbn_v3.stream_place.occurrence + 1
  return memo[databento_marketdata_normalized_dbn_v3.stream_place.occurrence]
end


-- Record that the stream has read its preamble up to a place
databento_marketdata_normalized_dbn_v3.stream_place.advance = function(data, packet, place)
  if not packet.visited then
    data.stream.place = place
  end
  return place
end



-----------------------------------------------------------------------
-- Databento MarketData Normalized Dbn 3 Fields
-----------------------------------------------------------------------

-- Action
databento_marketdata_normalized_dbn_v3.action = {}

-- Size: Action
databento_marketdata_normalized_dbn_v3.action.size = 1

-- Display: Action
databento_marketdata_normalized_dbn_v3.action.labels = {
  ["A"] = "Action: Add (A)",
  ["C"] = "Action: Cancel (C)",
  ["F"] = "Action: Fill (F)",
  ["M"] = "Action: Modify (M)",
  ["N"] = "Action: None (N)",
  ["R"] = "Action: Clear (R)",
  ["T"] = "Action: Trade (T)",
}

databento_marketdata_normalized_dbn_v3.action.display = function(value)
  return databento_marketdata_normalized_dbn_v3.action.labels[value] or "Action: Unknown("..value..")"
end

-- Dissect: Action
databento_marketdata_normalized_dbn_v3.action.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.action, range, value, display)

  return offset + length, value
end

-- Activation
databento_marketdata_normalized_dbn_v3.activation = {}

-- Size: Activation
databento_marketdata_normalized_dbn_v3.activation.size = 8

-- Dissect: Activation
databento_marketdata_normalized_dbn_v3.activation.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.activation.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_databento_marketdata_normalized_dbn_v3.fields.activation
  if databento_marketdata_normalized_dbn_v3.timestamp_format == 3 then field = omi_databento_marketdata_normalized_dbn_v3.fields.activation_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Activation: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Appl Id
databento_marketdata_normalized_dbn_v3.appl_id = {}

-- Size: Appl Id
databento_marketdata_normalized_dbn_v3.appl_id.size = 2

-- Display: Appl Id
databento_marketdata_normalized_dbn_v3.appl_id.display = function(value)
  return "Appl Id: "..value
end

-- Dissect: Appl Id
databento_marketdata_normalized_dbn_v3.appl_id.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.appl_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.appl_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Ask Ct
databento_marketdata_normalized_dbn_v3.ask_ct = {}

-- Size: Ask Ct
databento_marketdata_normalized_dbn_v3.ask_ct.size = 4

-- Display: Ask Ct
databento_marketdata_normalized_dbn_v3.ask_ct.display = function(value)
  return "Ask Ct: "..value
end

-- Dissect: Ask Ct
databento_marketdata_normalized_dbn_v3.ask_ct.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ask_ct.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.ask_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.ask_ct, range, value, display)

  return offset + length, value
end

-- Ask Pb
databento_marketdata_normalized_dbn_v3.ask_pb = {}

-- Size: Ask Pb
databento_marketdata_normalized_dbn_v3.ask_pb.size = 2

-- Display: Ask Pb
databento_marketdata_normalized_dbn_v3.ask_pb.display = function(value)
  return "Ask Pb: "..value
end

-- Dissect: Ask Pb
databento_marketdata_normalized_dbn_v3.ask_pb.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ask_pb.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.ask_pb.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.ask_pb, range, value, display)

  return offset + length, value
end

-- Ask Px
databento_marketdata_normalized_dbn_v3.ask_px = {}

-- Size: Ask Px
databento_marketdata_normalized_dbn_v3.ask_px.size = 8

-- Display: Ask Px
databento_marketdata_normalized_dbn_v3.ask_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Ask Px: No Value"
  end

  return "Ask Px: "..value
end

-- Translate: Ask Px
databento_marketdata_normalized_dbn_v3.ask_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Ask Px
databento_marketdata_normalized_dbn_v3.ask_px.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ask_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.ask_px.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.ask_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.ask_px, range, value, display)

  return offset + length, value
end

-- Ask Sz
databento_marketdata_normalized_dbn_v3.ask_sz = {}

-- Size: Ask Sz
databento_marketdata_normalized_dbn_v3.ask_sz.size = 4

-- Display: Ask Sz
databento_marketdata_normalized_dbn_v3.ask_sz.display = function(value)
  return "Ask Sz: "..value
end

-- Dissect: Ask Sz
databento_marketdata_normalized_dbn_v3.ask_sz.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ask_sz.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.ask_sz.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.ask_sz, range, value, display)

  return offset + length, value
end

-- Asset
databento_marketdata_normalized_dbn_v3.asset = {}

-- Size: Asset
databento_marketdata_normalized_dbn_v3.asset.size = 11

-- Display: Asset
databento_marketdata_normalized_dbn_v3.asset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Asset: No Value"
  end

  return "Asset: "..value
end

-- Dissect: Asset
databento_marketdata_normalized_dbn_v3.asset.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.asset.size
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

  local display = databento_marketdata_normalized_dbn_v3.asset.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.asset, range, value, display)

  return offset + length, value
end

-- Auct Interest Clr Price
databento_marketdata_normalized_dbn_v3.auct_interest_clr_price = {}

-- Size: Auct Interest Clr Price
databento_marketdata_normalized_dbn_v3.auct_interest_clr_price.size = 8

-- Display: Auct Interest Clr Price
databento_marketdata_normalized_dbn_v3.auct_interest_clr_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Auct Interest Clr Price: No Value"
  end

  return "Auct Interest Clr Price: "..value
end

-- Translate: Auct Interest Clr Price
databento_marketdata_normalized_dbn_v3.auct_interest_clr_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Auct Interest Clr Price
databento_marketdata_normalized_dbn_v3.auct_interest_clr_price.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.auct_interest_clr_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.auct_interest_clr_price.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.auct_interest_clr_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.auct_interest_clr_price, range, value, display)

  return offset + length, value
end

-- Auction Status
databento_marketdata_normalized_dbn_v3.auction_status = {}

-- Size: Auction Status
databento_marketdata_normalized_dbn_v3.auction_status.size = 1

-- Display: Auction Status
databento_marketdata_normalized_dbn_v3.auction_status.display = function(value)
  return "Auction Status: "..value
end

-- Dissect: Auction Status
databento_marketdata_normalized_dbn_v3.auction_status.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.auction_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.auction_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.auction_status, range, value, display)

  return offset + length, value
end

-- Auction Time
databento_marketdata_normalized_dbn_v3.auction_time = {}

-- Size: Auction Time
databento_marketdata_normalized_dbn_v3.auction_time.size = 8

-- Dissect: Auction Time
databento_marketdata_normalized_dbn_v3.auction_time.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.auction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_databento_marketdata_normalized_dbn_v3.fields.auction_time
  if databento_marketdata_normalized_dbn_v3.timestamp_format == 3 then field = omi_databento_marketdata_normalized_dbn_v3.fields.auction_time_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Auction Time: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Auction Type
databento_marketdata_normalized_dbn_v3.auction_type = {}

-- Size: Auction Type
databento_marketdata_normalized_dbn_v3.auction_type.size = 1

-- Display: Auction Type
databento_marketdata_normalized_dbn_v3.auction_type.display = function(value)
  return "Auction Type: "..value
end

-- Dissect: Auction Type
databento_marketdata_normalized_dbn_v3.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bid Ct
databento_marketdata_normalized_dbn_v3.bid_ct = {}

-- Size: Bid Ct
databento_marketdata_normalized_dbn_v3.bid_ct.size = 4

-- Display: Bid Ct
databento_marketdata_normalized_dbn_v3.bid_ct.display = function(value)
  return "Bid Ct: "..value
end

-- Dissect: Bid Ct
databento_marketdata_normalized_dbn_v3.bid_ct.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.bid_ct.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.bid_ct.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.bid_ct, range, value, display)

  return offset + length, value
end

-- Bid Pb
databento_marketdata_normalized_dbn_v3.bid_pb = {}

-- Size: Bid Pb
databento_marketdata_normalized_dbn_v3.bid_pb.size = 2

-- Display: Bid Pb
databento_marketdata_normalized_dbn_v3.bid_pb.display = function(value)
  return "Bid Pb: "..value
end

-- Dissect: Bid Pb
databento_marketdata_normalized_dbn_v3.bid_pb.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.bid_pb.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.bid_pb.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.bid_pb, range, value, display)

  return offset + length, value
end

-- Bid Px
databento_marketdata_normalized_dbn_v3.bid_px = {}

-- Size: Bid Px
databento_marketdata_normalized_dbn_v3.bid_px.size = 8

-- Display: Bid Px
databento_marketdata_normalized_dbn_v3.bid_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Translate: Bid Px
databento_marketdata_normalized_dbn_v3.bid_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Bid Px
databento_marketdata_normalized_dbn_v3.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.bid_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.bid_px.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.bid_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Bid Sz
databento_marketdata_normalized_dbn_v3.bid_sz = {}

-- Size: Bid Sz
databento_marketdata_normalized_dbn_v3.bid_sz.size = 4

-- Display: Bid Sz
databento_marketdata_normalized_dbn_v3.bid_sz.display = function(value)
  return "Bid Sz: "..value
end

-- Dissect: Bid Sz
databento_marketdata_normalized_dbn_v3.bid_sz.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.bid_sz.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.bid_sz.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.bid_sz, range, value, display)

  return offset + length, value
end

-- Cfi
databento_marketdata_normalized_dbn_v3.cfi = {}

-- Size: Cfi
databento_marketdata_normalized_dbn_v3.cfi.size = 7

-- Display: Cfi
databento_marketdata_normalized_dbn_v3.cfi.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi: No Value"
  end

  return "Cfi: "..value
end

-- Dissect: Cfi
databento_marketdata_normalized_dbn_v3.cfi.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.cfi.size
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

  local display = databento_marketdata_normalized_dbn_v3.cfi.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.cfi, range, value, display)

  return offset + length, value
end

-- Channel
databento_marketdata_normalized_dbn_v3.channel = {}

-- Size: Channel
databento_marketdata_normalized_dbn_v3.channel.size = 2

-- Display: Channel
databento_marketdata_normalized_dbn_v3.channel.display = function(value)
  return "Channel: "..value
end

-- Dissect: Channel
databento_marketdata_normalized_dbn_v3.channel.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.channel.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.channel.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.channel, range, value, display)

  return offset + length, value
end

-- Channel Id
databento_marketdata_normalized_dbn_v3.channel_id = {}

-- Size: Channel Id
databento_marketdata_normalized_dbn_v3.channel_id.size = 1

-- Display: Channel Id
databento_marketdata_normalized_dbn_v3.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
databento_marketdata_normalized_dbn_v3.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.channel_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Close
databento_marketdata_normalized_dbn_v3.close = {}

-- Size: Close
databento_marketdata_normalized_dbn_v3.close.size = 8

-- Display: Close
databento_marketdata_normalized_dbn_v3.close.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Close: No Value"
  end

  return "Close: "..value
end

-- Translate: Close
databento_marketdata_normalized_dbn_v3.close.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Close
databento_marketdata_normalized_dbn_v3.close.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.close.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.close.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.close.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.close, range, value, display)

  return offset + length, value
end

-- Cont Book Clr Price
databento_marketdata_normalized_dbn_v3.cont_book_clr_price = {}

-- Size: Cont Book Clr Price
databento_marketdata_normalized_dbn_v3.cont_book_clr_price.size = 8

-- Display: Cont Book Clr Price
databento_marketdata_normalized_dbn_v3.cont_book_clr_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Cont Book Clr Price: No Value"
  end

  return "Cont Book Clr Price: "..value
end

-- Translate: Cont Book Clr Price
databento_marketdata_normalized_dbn_v3.cont_book_clr_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Cont Book Clr Price
databento_marketdata_normalized_dbn_v3.cont_book_clr_price.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.cont_book_clr_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.cont_book_clr_price.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.cont_book_clr_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.cont_book_clr_price, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
databento_marketdata_normalized_dbn_v3.contract_multiplier = {}

-- Size: Contract Multiplier
databento_marketdata_normalized_dbn_v3.contract_multiplier.size = 4

-- Display: Contract Multiplier
databento_marketdata_normalized_dbn_v3.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
databento_marketdata_normalized_dbn_v3.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Contract Multiplier Unit
databento_marketdata_normalized_dbn_v3.contract_multiplier_unit = {}

-- Size: Contract Multiplier Unit
databento_marketdata_normalized_dbn_v3.contract_multiplier_unit.size = 1

-- Display: Contract Multiplier Unit
databento_marketdata_normalized_dbn_v3.contract_multiplier_unit.display = function(value)
  return "Contract Multiplier Unit: "..value
end

-- Dissect: Contract Multiplier Unit
databento_marketdata_normalized_dbn_v3.contract_multiplier_unit.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.contract_multiplier_unit.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = databento_marketdata_normalized_dbn_v3.contract_multiplier_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.contract_multiplier_unit, range, value, display)

  return offset + length, value
end

-- Control Fields
databento_marketdata_normalized_dbn_v3.control_fields = {}

-- Size: Control Fields
databento_marketdata_normalized_dbn_v3.control_fields.size = function(buffer, offset)
  local maximum = buffer:len() - offset
  local terminator = 10
  local length = 0
  while length < maximum and buffer(offset + length, 1):uint() ~= terminator do
    length = length + 1
  end
  -- consume the terminator byte itself when present
  if length < maximum and buffer:len() > offset + length and buffer(offset + length, 1):uint() == terminator then
    length = length + 1
  end

  return length
end

-- Display: Control Fields
databento_marketdata_normalized_dbn_v3.control_fields.display = function(value)
  -- Check if field has value
  if value == "" then
    return "Control Fields: No Value"
  end

  return "Control Fields: "..value
end

-- Dissect: Control Fields
databento_marketdata_normalized_dbn_v3.control_fields.dissect = function(buffer, offset, packet, parent)
  local maximum = buffer:len() - offset
  local terminator = 10
  local length = 0
  while length < maximum and buffer(offset + length, 1):uint() ~= terminator do
    length = length + 1
  end
  -- consume the terminator byte itself when present
  if length < maximum and buffer:len() > offset + length and buffer(offset + length, 1):uint() == terminator then
    length = length + 1
  end

  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.control_fields.display(value, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.control_fields, range, value, display)

  return offset + length, value
end

-- Currency
databento_marketdata_normalized_dbn_v3.currency = {}

-- Size: Currency
databento_marketdata_normalized_dbn_v3.currency.size = 4

-- Display: Currency
databento_marketdata_normalized_dbn_v3.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
databento_marketdata_normalized_dbn_v3.currency.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.currency.size
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

  local display = databento_marketdata_normalized_dbn_v3.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.currency, range, value, display)

  return offset + length, value
end

-- Dataset
databento_marketdata_normalized_dbn_v3.dataset = {}

-- Size: Dataset
databento_marketdata_normalized_dbn_v3.dataset.size = 16

-- Display: Dataset
databento_marketdata_normalized_dbn_v3.dataset.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Dataset: No Value"
  end

  return "Dataset: "..value
end

-- Dissect: Dataset
databento_marketdata_normalized_dbn_v3.dataset.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.dataset.size
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

  local display = databento_marketdata_normalized_dbn_v3.dataset.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.dataset, range, value, display)

  return offset + length, value
end

-- Decay Quantity
databento_marketdata_normalized_dbn_v3.decay_quantity = {}

-- Size: Decay Quantity
databento_marketdata_normalized_dbn_v3.decay_quantity.size = 4

-- Display: Decay Quantity
databento_marketdata_normalized_dbn_v3.decay_quantity.display = function(value)
  return "Decay Quantity: "..value
end

-- Dissect: Decay Quantity
databento_marketdata_normalized_dbn_v3.decay_quantity.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.decay_quantity.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.decay_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.decay_quantity, range, value, display)

  return offset + length, value
end

-- Decay Start Date
databento_marketdata_normalized_dbn_v3.decay_start_date = {}

-- Size: Decay Start Date
databento_marketdata_normalized_dbn_v3.decay_start_date.size = 2

-- Display: Decay Start Date
databento_marketdata_normalized_dbn_v3.decay_start_date.display = function(value)
  return "Decay Start Date: "..value
end

-- Dissect: Decay Start Date
databento_marketdata_normalized_dbn_v3.decay_start_date.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.decay_start_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.decay_start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.decay_start_date, range, value, display)

  return offset + length, value
end

-- Depth
databento_marketdata_normalized_dbn_v3.depth = {}

-- Size: Depth
databento_marketdata_normalized_dbn_v3.depth.size = 1

-- Display: Depth
databento_marketdata_normalized_dbn_v3.depth.display = function(value)
  return "Depth: "..value
end

-- Dissect: Depth
databento_marketdata_normalized_dbn_v3.depth.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.depth.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.depth, range, value, display)

  return offset + length, value
end

-- Display Factor
databento_marketdata_normalized_dbn_v3.display_factor = {}

-- Size: Display Factor
databento_marketdata_normalized_dbn_v3.display_factor.size = 8

-- Display: Display Factor
databento_marketdata_normalized_dbn_v3.display_factor.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Display Factor: No Value"
  end

  return "Display Factor: "..value
end

-- Translate: Display Factor
databento_marketdata_normalized_dbn_v3.display_factor.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Display Factor
databento_marketdata_normalized_dbn_v3.display_factor.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.display_factor.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.display_factor.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.display_factor.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.display_factor, range, value, display)

  return offset + length, value
end

-- End
databento_marketdata_normalized_dbn_v3.end_ = {}

-- Size: End
databento_marketdata_normalized_dbn_v3.end_.size = 8

-- Dissect: End
databento_marketdata_normalized_dbn_v3.end_.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.end_.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_databento_marketdata_normalized_dbn_v3.fields.end_
  if databento_marketdata_normalized_dbn_v3.timestamp_format == 3 then field = omi_databento_marketdata_normalized_dbn_v3.fields.end__utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("End: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- End Date
databento_marketdata_normalized_dbn_v3.end_date = {}

-- Size: End Date
databento_marketdata_normalized_dbn_v3.end_date.size = 4

-- Display: End Date
databento_marketdata_normalized_dbn_v3.end_date.display = function(value)
  return "End Date: "..value
end

-- Dissect: End Date
databento_marketdata_normalized_dbn_v3.end_date.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.end_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.end_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.end_date, range, value, display)

  return offset + length, value
end

-- End Ts
databento_marketdata_normalized_dbn_v3.end_ts = {}

-- Size: End Ts
databento_marketdata_normalized_dbn_v3.end_ts.size = 8

-- Dissect: End Ts
databento_marketdata_normalized_dbn_v3.end_ts.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.end_ts.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_databento_marketdata_normalized_dbn_v3.fields.end_ts
  if databento_marketdata_normalized_dbn_v3.timestamp_format == 3 then field = omi_databento_marketdata_normalized_dbn_v3.fields.end_ts_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("End Ts: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Err
databento_marketdata_normalized_dbn_v3.err = {}

-- Size: Err
databento_marketdata_normalized_dbn_v3.err.size = 302

-- Display: Err
databento_marketdata_normalized_dbn_v3.err.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Err: No Value"
  end

  return "Err: "..value
end

-- Dissect: Err
databento_marketdata_normalized_dbn_v3.err.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.err.size
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

  local display = databento_marketdata_normalized_dbn_v3.err.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.err, range, value, display)

  return offset + length, value
end

-- Error Code
databento_marketdata_normalized_dbn_v3.error_code = {}

-- Size: Error Code
databento_marketdata_normalized_dbn_v3.error_code.size = 1

-- Display: Error Code
databento_marketdata_normalized_dbn_v3.error_code.labels = {
  [1] = "Error Code: Auth Failed (1)",
  [2] = "Error Code: Api Key Deactivated (2)",
  [3] = "Error Code: Connection Limit Exceeded (3)",
  [4] = "Error Code: Symbol Resolution Failed (4)",
  [5] = "Error Code: Invalid Subscription (5)",
  [6] = "Error Code: Internal Error (6)",
  [7] = "Error Code: Skipped Records After Slow Reading (7)",
  [8] = "Error Code: Replay Data Aged Out (8)",
  [255] = "Error Code: Unset (255)",
}

databento_marketdata_normalized_dbn_v3.error_code.display = function(value)
  return databento_marketdata_normalized_dbn_v3.error_code.labels[value] or "Error Code: Unknown("..value..")"
end

-- Dissect: Error Code
databento_marketdata_normalized_dbn_v3.error_code.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.error_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.error_code, range, value, display)

  return offset + length, value
end

-- Exchange
databento_marketdata_normalized_dbn_v3.exchange = {}

-- Size: Exchange
databento_marketdata_normalized_dbn_v3.exchange.size = 5

-- Display: Exchange
databento_marketdata_normalized_dbn_v3.exchange.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exchange: No Value"
  end

  return "Exchange: "..value
end

-- Dissect: Exchange
databento_marketdata_normalized_dbn_v3.exchange.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.exchange.size
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

  local display = databento_marketdata_normalized_dbn_v3.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.exchange, range, value, display)

  return offset + length, value
end

-- Expiration
databento_marketdata_normalized_dbn_v3.expiration = {}

-- Size: Expiration
databento_marketdata_normalized_dbn_v3.expiration.size = 8

-- Dissect: Expiration
databento_marketdata_normalized_dbn_v3.expiration.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.expiration.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_databento_marketdata_normalized_dbn_v3.fields.expiration
  if databento_marketdata_normalized_dbn_v3.timestamp_format == 3 then field = omi_databento_marketdata_normalized_dbn_v3.fields.expiration_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Expiration: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Flow Schedule Type
databento_marketdata_normalized_dbn_v3.flow_schedule_type = {}

-- Size: Flow Schedule Type
databento_marketdata_normalized_dbn_v3.flow_schedule_type.size = 1

-- Display: Flow Schedule Type
databento_marketdata_normalized_dbn_v3.flow_schedule_type.display = function(value)
  return "Flow Schedule Type: "..value
end

-- Dissect: Flow Schedule Type
databento_marketdata_normalized_dbn_v3.flow_schedule_type.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.flow_schedule_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = databento_marketdata_normalized_dbn_v3.flow_schedule_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.flow_schedule_type, range, value, display)

  return offset + length, value
end

-- Freeze Status
databento_marketdata_normalized_dbn_v3.freeze_status = {}

-- Size: Freeze Status
databento_marketdata_normalized_dbn_v3.freeze_status.size = 1

-- Display: Freeze Status
databento_marketdata_normalized_dbn_v3.freeze_status.display = function(value)
  return "Freeze Status: "..value
end

-- Dissect: Freeze Status
databento_marketdata_normalized_dbn_v3.freeze_status.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.freeze_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.freeze_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.freeze_status, range, value, display)

  return offset + length, value
end

-- Group
databento_marketdata_normalized_dbn_v3.group = {}

-- Size: Group
databento_marketdata_normalized_dbn_v3.group.size = 21

-- Display: Group
databento_marketdata_normalized_dbn_v3.group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Group: No Value"
  end

  return "Group: "..value
end

-- Dissect: Group
databento_marketdata_normalized_dbn_v3.group.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.group.size
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

  local display = databento_marketdata_normalized_dbn_v3.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.group, range, value, display)

  return offset + length, value
end

-- High
databento_marketdata_normalized_dbn_v3.high = {}

-- Size: High
databento_marketdata_normalized_dbn_v3.high.size = 8

-- Display: High
databento_marketdata_normalized_dbn_v3.high.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "High: No Value"
  end

  return "High: "..value
end

-- Translate: High
databento_marketdata_normalized_dbn_v3.high.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: High
databento_marketdata_normalized_dbn_v3.high.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.high.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.high.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.high.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.high, range, value, display)

  return offset + length, value
end

-- High Limit Price
databento_marketdata_normalized_dbn_v3.high_limit_price = {}

-- Size: High Limit Price
databento_marketdata_normalized_dbn_v3.high_limit_price.size = 8

-- Display: High Limit Price
databento_marketdata_normalized_dbn_v3.high_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Translate: High Limit Price
databento_marketdata_normalized_dbn_v3.high_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: High Limit Price
databento_marketdata_normalized_dbn_v3.high_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.high_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.high_limit_price.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.high_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.high_limit_price, range, value, display)

  return offset + length, value
end

-- Ind Match Price
databento_marketdata_normalized_dbn_v3.ind_match_price = {}

-- Size: Ind Match Price
databento_marketdata_normalized_dbn_v3.ind_match_price.size = 8

-- Display: Ind Match Price
databento_marketdata_normalized_dbn_v3.ind_match_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Ind Match Price: No Value"
  end

  return "Ind Match Price: "..value
end

-- Translate: Ind Match Price
databento_marketdata_normalized_dbn_v3.ind_match_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Ind Match Price
databento_marketdata_normalized_dbn_v3.ind_match_price.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ind_match_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.ind_match_price.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.ind_match_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.ind_match_price, range, value, display)

  return offset + length, value
end

-- Inst Attrib Value
databento_marketdata_normalized_dbn_v3.inst_attrib_value = {}

-- Size: Inst Attrib Value
databento_marketdata_normalized_dbn_v3.inst_attrib_value.size = 4

-- Display: Inst Attrib Value
databento_marketdata_normalized_dbn_v3.inst_attrib_value.display = function(value)
  return "Inst Attrib Value: "..value
end

-- Dissect: Inst Attrib Value
databento_marketdata_normalized_dbn_v3.inst_attrib_value.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.inst_attrib_value.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.inst_attrib_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.inst_attrib_value, range, value, display)

  return offset + length, value
end

-- Instrument Class
databento_marketdata_normalized_dbn_v3.instrument_class = {}

-- Size: Instrument Class
databento_marketdata_normalized_dbn_v3.instrument_class.size = 1

-- Display: Instrument Class
databento_marketdata_normalized_dbn_v3.instrument_class.labels = {
  ["B"] = "Instrument Class: Bond (B)",
  ["C"] = "Instrument Class: Call (C)",
  ["F"] = "Instrument Class: Future (F)",
  ["I"] = "Instrument Class: Index (I)",
  ["K"] = "Instrument Class: Stock (K)",
  ["M"] = "Instrument Class: Mixed Spread (M)",
  ["P"] = "Instrument Class: Put (P)",
  ["S"] = "Instrument Class: Future Spread (S)",
  ["T"] = "Instrument Class: Option Spread (T)",
  ["X"] = "Instrument Class: Fx Spot (X)",
  ["Y"] = "Instrument Class: Commodity Spot (Y)",
}

databento_marketdata_normalized_dbn_v3.instrument_class.display = function(value)
  return databento_marketdata_normalized_dbn_v3.instrument_class.labels[value] or "Instrument Class: Unknown("..value..")"
end

-- Dissect: Instrument Class
databento_marketdata_normalized_dbn_v3.instrument_class.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.instrument_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.instrument_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.instrument_class, range, value, display)

  return offset + length, value
end

-- Instrument Id
databento_marketdata_normalized_dbn_v3.instrument_id = {}

-- Size: Instrument Id
databento_marketdata_normalized_dbn_v3.instrument_id.size = 4

-- Display: Instrument Id
databento_marketdata_normalized_dbn_v3.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
databento_marketdata_normalized_dbn_v3.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Interval Count
databento_marketdata_normalized_dbn_v3.interval_count = {}

-- Size: Interval Count
databento_marketdata_normalized_dbn_v3.interval_count.size = 4

-- Display: Interval Count
databento_marketdata_normalized_dbn_v3.interval_count.display = function(value)
  return "Interval Count: "..value
end

-- Dissect: Interval Count
databento_marketdata_normalized_dbn_v3.interval_count.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.interval_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.interval_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.interval_count, range, value, display)

  return offset + length, value
end

-- Is Last
databento_marketdata_normalized_dbn_v3.is_last = {}

-- Size: Is Last
databento_marketdata_normalized_dbn_v3.is_last.size = 1

-- Display: Is Last
databento_marketdata_normalized_dbn_v3.is_last.display = function(value)
  return "Is Last: "..value
end

-- Dissect: Is Last
databento_marketdata_normalized_dbn_v3.is_last.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.is_last.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.is_last.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.is_last, range, value, display)

  return offset + length, value
end

-- Is Quoting
databento_marketdata_normalized_dbn_v3.is_quoting = {}

-- Size: Is Quoting
databento_marketdata_normalized_dbn_v3.is_quoting.size = 1

-- Display: Is Quoting
databento_marketdata_normalized_dbn_v3.is_quoting.labels = {
  ["~"] = "Is Quoting: Not Available (~)",
  ["N"] = "Is Quoting: No (N)",
  ["Y"] = "Is Quoting: Yes (Y)",
}

databento_marketdata_normalized_dbn_v3.is_quoting.display = function(value)
  return databento_marketdata_normalized_dbn_v3.is_quoting.labels[value] or "Is Quoting: Unknown("..value..")"
end

-- Dissect: Is Quoting
databento_marketdata_normalized_dbn_v3.is_quoting.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.is_quoting.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.is_quoting.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.is_quoting, range, value, display)

  return offset + length, value
end

-- Is Short Sell Restricted
databento_marketdata_normalized_dbn_v3.is_short_sell_restricted = {}

-- Size: Is Short Sell Restricted
databento_marketdata_normalized_dbn_v3.is_short_sell_restricted.size = 1

-- Display: Is Short Sell Restricted
databento_marketdata_normalized_dbn_v3.is_short_sell_restricted.labels = {
  ["~"] = "Is Short Sell Restricted: Not Available (~)",
  ["N"] = "Is Short Sell Restricted: No (N)",
  ["Y"] = "Is Short Sell Restricted: Yes (Y)",
}

databento_marketdata_normalized_dbn_v3.is_short_sell_restricted.display = function(value)
  return databento_marketdata_normalized_dbn_v3.is_short_sell_restricted.labels[value] or "Is Short Sell Restricted: Unknown("..value..")"
end

-- Dissect: Is Short Sell Restricted
databento_marketdata_normalized_dbn_v3.is_short_sell_restricted.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.is_short_sell_restricted.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.is_short_sell_restricted.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.is_short_sell_restricted, range, value, display)

  return offset + length, value
end

-- Is Trading
databento_marketdata_normalized_dbn_v3.is_trading = {}

-- Size: Is Trading
databento_marketdata_normalized_dbn_v3.is_trading.size = 1

-- Display: Is Trading
databento_marketdata_normalized_dbn_v3.is_trading.labels = {
  ["~"] = "Is Trading: Not Available (~)",
  ["N"] = "Is Trading: No (N)",
  ["Y"] = "Is Trading: Yes (Y)",
}

databento_marketdata_normalized_dbn_v3.is_trading.display = function(value)
  return databento_marketdata_normalized_dbn_v3.is_trading.labels[value] or "Is Trading: Unknown("..value..")"
end

-- Dissect: Is Trading
databento_marketdata_normalized_dbn_v3.is_trading.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.is_trading.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.is_trading.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.is_trading, range, value, display)

  return offset + length, value
end

-- Leg Count
databento_marketdata_normalized_dbn_v3.leg_count = {}

-- Size: Leg Count
databento_marketdata_normalized_dbn_v3.leg_count.size = 2

-- Display: Leg Count
databento_marketdata_normalized_dbn_v3.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
databento_marketdata_normalized_dbn_v3.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Delta
databento_marketdata_normalized_dbn_v3.leg_delta = {}

-- Size: Leg Delta
databento_marketdata_normalized_dbn_v3.leg_delta.size = 8

-- Display: Leg Delta
databento_marketdata_normalized_dbn_v3.leg_delta.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Leg Delta: No Value"
  end

  return "Leg Delta: "..value
end

-- Translate: Leg Delta
databento_marketdata_normalized_dbn_v3.leg_delta.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Leg Delta
databento_marketdata_normalized_dbn_v3.leg_delta.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_delta.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.leg_delta.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.leg_delta.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_delta, range, value, display)

  return offset + length, value
end

-- Leg Index
databento_marketdata_normalized_dbn_v3.leg_index = {}

-- Size: Leg Index
databento_marketdata_normalized_dbn_v3.leg_index.size = 2

-- Display: Leg Index
databento_marketdata_normalized_dbn_v3.leg_index.display = function(value)
  return "Leg Index: "..value
end

-- Dissect: Leg Index
databento_marketdata_normalized_dbn_v3.leg_index.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.leg_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_index, range, value, display)

  return offset + length, value
end

-- Leg Instrument Class
databento_marketdata_normalized_dbn_v3.leg_instrument_class = {}

-- Size: Leg Instrument Class
databento_marketdata_normalized_dbn_v3.leg_instrument_class.size = 1

-- Display: Leg Instrument Class
databento_marketdata_normalized_dbn_v3.leg_instrument_class.labels = {
  ["B"] = "Leg Instrument Class: Bond (B)",
  ["C"] = "Leg Instrument Class: Call (C)",
  ["F"] = "Leg Instrument Class: Future (F)",
  ["I"] = "Leg Instrument Class: Index (I)",
  ["K"] = "Leg Instrument Class: Stock (K)",
  ["M"] = "Leg Instrument Class: Mixed Spread (M)",
  ["P"] = "Leg Instrument Class: Put (P)",
  ["S"] = "Leg Instrument Class: Future Spread (S)",
  ["T"] = "Leg Instrument Class: Option Spread (T)",
  ["X"] = "Leg Instrument Class: Fx Spot (X)",
  ["Y"] = "Leg Instrument Class: Commodity Spot (Y)",
}

databento_marketdata_normalized_dbn_v3.leg_instrument_class.display = function(value)
  return databento_marketdata_normalized_dbn_v3.leg_instrument_class.labels[value] or "Leg Instrument Class: Unknown("..value..")"
end

-- Dissect: Leg Instrument Class
databento_marketdata_normalized_dbn_v3.leg_instrument_class.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_instrument_class.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.leg_instrument_class.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_instrument_class, range, value, display)

  return offset + length, value
end

-- Leg Instrument Id
databento_marketdata_normalized_dbn_v3.leg_instrument_id = {}

-- Size: Leg Instrument Id
databento_marketdata_normalized_dbn_v3.leg_instrument_id.size = 4

-- Display: Leg Instrument Id
databento_marketdata_normalized_dbn_v3.leg_instrument_id.display = function(value)
  return "Leg Instrument Id: "..value
end

-- Dissect: Leg Instrument Id
databento_marketdata_normalized_dbn_v3.leg_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.leg_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_instrument_id, range, value, display)

  return offset + length, value
end

-- Leg Price
databento_marketdata_normalized_dbn_v3.leg_price = {}

-- Size: Leg Price
databento_marketdata_normalized_dbn_v3.leg_price.size = 8

-- Display: Leg Price
databento_marketdata_normalized_dbn_v3.leg_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Translate: Leg Price
databento_marketdata_normalized_dbn_v3.leg_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Leg Price
databento_marketdata_normalized_dbn_v3.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.leg_price.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.leg_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Leg Ratio Price Denominator
databento_marketdata_normalized_dbn_v3.leg_ratio_price_denominator = {}

-- Size: Leg Ratio Price Denominator
databento_marketdata_normalized_dbn_v3.leg_ratio_price_denominator.size = 4

-- Display: Leg Ratio Price Denominator
databento_marketdata_normalized_dbn_v3.leg_ratio_price_denominator.display = function(value)
  return "Leg Ratio Price Denominator: "..value
end

-- Dissect: Leg Ratio Price Denominator
databento_marketdata_normalized_dbn_v3.leg_ratio_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_ratio_price_denominator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.leg_ratio_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_ratio_price_denominator, range, value, display)

  return offset + length, value
end

-- Leg Ratio Price Numerator
databento_marketdata_normalized_dbn_v3.leg_ratio_price_numerator = {}

-- Size: Leg Ratio Price Numerator
databento_marketdata_normalized_dbn_v3.leg_ratio_price_numerator.size = 4

-- Display: Leg Ratio Price Numerator
databento_marketdata_normalized_dbn_v3.leg_ratio_price_numerator.display = function(value)
  return "Leg Ratio Price Numerator: "..value
end

-- Dissect: Leg Ratio Price Numerator
databento_marketdata_normalized_dbn_v3.leg_ratio_price_numerator.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_ratio_price_numerator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.leg_ratio_price_numerator.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_ratio_price_numerator, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty Denominator
databento_marketdata_normalized_dbn_v3.leg_ratio_qty_denominator = {}

-- Size: Leg Ratio Qty Denominator
databento_marketdata_normalized_dbn_v3.leg_ratio_qty_denominator.size = 4

-- Display: Leg Ratio Qty Denominator
databento_marketdata_normalized_dbn_v3.leg_ratio_qty_denominator.display = function(value)
  return "Leg Ratio Qty Denominator: "..value
end

-- Dissect: Leg Ratio Qty Denominator
databento_marketdata_normalized_dbn_v3.leg_ratio_qty_denominator.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_ratio_qty_denominator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.leg_ratio_qty_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_ratio_qty_denominator, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty Numerator
databento_marketdata_normalized_dbn_v3.leg_ratio_qty_numerator = {}

-- Size: Leg Ratio Qty Numerator
databento_marketdata_normalized_dbn_v3.leg_ratio_qty_numerator.size = 4

-- Display: Leg Ratio Qty Numerator
databento_marketdata_normalized_dbn_v3.leg_ratio_qty_numerator.display = function(value)
  return "Leg Ratio Qty Numerator: "..value
end

-- Dissect: Leg Ratio Qty Numerator
databento_marketdata_normalized_dbn_v3.leg_ratio_qty_numerator.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_ratio_qty_numerator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.leg_ratio_qty_numerator.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_ratio_qty_numerator, range, value, display)

  return offset + length, value
end

-- Leg Raw Symbol
databento_marketdata_normalized_dbn_v3.leg_raw_symbol = {}

-- Size: Leg Raw Symbol
databento_marketdata_normalized_dbn_v3.leg_raw_symbol.size = 71

-- Display: Leg Raw Symbol
databento_marketdata_normalized_dbn_v3.leg_raw_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Raw Symbol: No Value"
  end

  return "Leg Raw Symbol: "..value
end

-- Dissect: Leg Raw Symbol
databento_marketdata_normalized_dbn_v3.leg_raw_symbol.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_raw_symbol.size
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

  local display = databento_marketdata_normalized_dbn_v3.leg_raw_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_raw_symbol, range, value, display)

  return offset + length, value
end

-- Leg Side
databento_marketdata_normalized_dbn_v3.leg_side = {}

-- Size: Leg Side
databento_marketdata_normalized_dbn_v3.leg_side.size = 1

-- Display: Leg Side
databento_marketdata_normalized_dbn_v3.leg_side.labels = {
  ["A"] = "Leg Side: Ask (A)",
  ["B"] = "Leg Side: Bid (B)",
  ["N"] = "Leg Side: None (N)",
}

databento_marketdata_normalized_dbn_v3.leg_side.display = function(value)
  return databento_marketdata_normalized_dbn_v3.leg_side.labels[value] or "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
databento_marketdata_normalized_dbn_v3.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Underlying Id
databento_marketdata_normalized_dbn_v3.leg_underlying_id = {}

-- Size: Leg Underlying Id
databento_marketdata_normalized_dbn_v3.leg_underlying_id.size = 4

-- Display: Leg Underlying Id
databento_marketdata_normalized_dbn_v3.leg_underlying_id.display = function(value)
  return "Leg Underlying Id: "..value
end

-- Dissect: Leg Underlying Id
databento_marketdata_normalized_dbn_v3.leg_underlying_id.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.leg_underlying_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.leg_underlying_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.leg_underlying_id, range, value, display)

  return offset + length, value
end

-- Limit
databento_marketdata_normalized_dbn_v3.limit = {}

-- Size: Limit
databento_marketdata_normalized_dbn_v3.limit.size = 8

-- Display: Limit
databento_marketdata_normalized_dbn_v3.limit.display = function(value)
  -- Check if field has value
  if value == UInt64(0x00000000, 0x00000000) then
    return "Limit: No Value"
  end

  return "Limit: "..value
end

-- Dissect: Limit
databento_marketdata_normalized_dbn_v3.limit.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.limit.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = databento_marketdata_normalized_dbn_v3.limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.limit, range, value, display)

  return offset + length, value
end

-- Low
databento_marketdata_normalized_dbn_v3.low = {}

-- Size: Low
databento_marketdata_normalized_dbn_v3.low.size = 8

-- Display: Low
databento_marketdata_normalized_dbn_v3.low.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Low: No Value"
  end

  return "Low: "..value
end

-- Translate: Low
databento_marketdata_normalized_dbn_v3.low.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Low
databento_marketdata_normalized_dbn_v3.low.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.low.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.low.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.low.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.low, range, value, display)

  return offset + length, value
end

-- Low Limit Price
databento_marketdata_normalized_dbn_v3.low_limit_price = {}

-- Size: Low Limit Price
databento_marketdata_normalized_dbn_v3.low_limit_price.size = 8

-- Display: Low Limit Price
databento_marketdata_normalized_dbn_v3.low_limit_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Translate: Low Limit Price
databento_marketdata_normalized_dbn_v3.low_limit_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Low Limit Price
databento_marketdata_normalized_dbn_v3.low_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.low_limit_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.low_limit_price.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.low_limit_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.low_limit_price, range, value, display)

  return offset + length, value
end

-- Lower Collar
databento_marketdata_normalized_dbn_v3.lower_collar = {}

-- Size: Lower Collar
databento_marketdata_normalized_dbn_v3.lower_collar.size = 8

-- Display: Lower Collar
databento_marketdata_normalized_dbn_v3.lower_collar.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Lower Collar: No Value"
  end

  return "Lower Collar: "..value
end

-- Translate: Lower Collar
databento_marketdata_normalized_dbn_v3.lower_collar.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Lower Collar
databento_marketdata_normalized_dbn_v3.lower_collar.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.lower_collar.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.lower_collar.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.lower_collar.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.lower_collar, range, value, display)

  return offset + length, value
end

-- Magic
databento_marketdata_normalized_dbn_v3.magic = {}

-- Size: Magic
databento_marketdata_normalized_dbn_v3.magic.size = 3

-- Display: Magic
databento_marketdata_normalized_dbn_v3.magic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Magic: No Value"
  end

  return "Magic: "..value
end

-- Dissect: Magic
databento_marketdata_normalized_dbn_v3.magic.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.magic.size
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

  local display = databento_marketdata_normalized_dbn_v3.magic.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.magic, range, value, display)

  return offset + length, value
end

-- Main Fraction
databento_marketdata_normalized_dbn_v3.main_fraction = {}

-- Size: Main Fraction
databento_marketdata_normalized_dbn_v3.main_fraction.size = 1

-- Display: Main Fraction
databento_marketdata_normalized_dbn_v3.main_fraction.display = function(value)
  return "Main Fraction: "..value
end

-- Dissect: Main Fraction
databento_marketdata_normalized_dbn_v3.main_fraction.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.main_fraction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.main_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.main_fraction, range, value, display)

  return offset + length, value
end

-- Mapped Symbol
databento_marketdata_normalized_dbn_v3.mapped_symbol = {}

-- Size: Mapped Symbol
databento_marketdata_normalized_dbn_v3.mapped_symbol.size = 71

-- Display: Mapped Symbol
databento_marketdata_normalized_dbn_v3.mapped_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mapped Symbol: No Value"
  end

  return "Mapped Symbol: "..value
end

-- Dissect: Mapped Symbol
databento_marketdata_normalized_dbn_v3.mapped_symbol.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.mapped_symbol.size
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

  local display = databento_marketdata_normalized_dbn_v3.mapped_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.mapped_symbol, range, value, display)

  return offset + length, value
end

-- Mappings Count
databento_marketdata_normalized_dbn_v3.mappings_count = {}

-- Size: Mappings Count
databento_marketdata_normalized_dbn_v3.mappings_count.size = 4

-- Display: Mappings Count
databento_marketdata_normalized_dbn_v3.mappings_count.display = function(value)
  return "Mappings Count: "..value
end

-- Dissect: Mappings Count
databento_marketdata_normalized_dbn_v3.mappings_count.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.mappings_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.mappings_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.mappings_count, range, value, display)

  return offset + length, value
end

-- Market Depth
databento_marketdata_normalized_dbn_v3.market_depth = {}

-- Size: Market Depth
databento_marketdata_normalized_dbn_v3.market_depth.size = 4

-- Display: Market Depth
databento_marketdata_normalized_dbn_v3.market_depth.display = function(value)
  return "Market Depth: "..value
end

-- Dissect: Market Depth
databento_marketdata_normalized_dbn_v3.market_depth.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.market_depth.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.market_depth, range, value, display)

  return offset + length, value
end

-- Market Depth Implied
databento_marketdata_normalized_dbn_v3.market_depth_implied = {}

-- Size: Market Depth Implied
databento_marketdata_normalized_dbn_v3.market_depth_implied.size = 4

-- Display: Market Depth Implied
databento_marketdata_normalized_dbn_v3.market_depth_implied.display = function(value)
  return "Market Depth Implied: "..value
end

-- Dissect: Market Depth Implied
databento_marketdata_normalized_dbn_v3.market_depth_implied.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.market_depth_implied.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.market_depth_implied.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.market_depth_implied, range, value, display)

  return offset + length, value
end

-- Market Imbalance Qty
databento_marketdata_normalized_dbn_v3.market_imbalance_qty = {}

-- Size: Market Imbalance Qty
databento_marketdata_normalized_dbn_v3.market_imbalance_qty.size = 4

-- Display: Market Imbalance Qty
databento_marketdata_normalized_dbn_v3.market_imbalance_qty.display = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
databento_marketdata_normalized_dbn_v3.market_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.market_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.market_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Market Segment Id
databento_marketdata_normalized_dbn_v3.market_segment_id = {}

-- Size: Market Segment Id
databento_marketdata_normalized_dbn_v3.market_segment_id.size = 4

-- Display: Market Segment Id
databento_marketdata_normalized_dbn_v3.market_segment_id.display = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
databento_marketdata_normalized_dbn_v3.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Match Algorithm
databento_marketdata_normalized_dbn_v3.match_algorithm = {}

-- Size: Match Algorithm
databento_marketdata_normalized_dbn_v3.match_algorithm.size = 1

-- Display: Match Algorithm
databento_marketdata_normalized_dbn_v3.match_algorithm.display = function(value)
  if value == " " then
    return "Match Algorithm: Undefined (<whitespace>)"
  end
  if value == "A" then
    return "Match Algorithm: Allocation (A)"
  end
  if value == "C" then
    return "Match Algorithm: Pro Rata (C)"
  end
  if value == "F" then
    return "Match Algorithm: Fifo (F)"
  end
  if value == "K" then
    return "Match Algorithm: Configurable (K)"
  end
  if value == "O" then
    return "Match Algorithm: Threshold Pro Rata (O)"
  end
  if value == "P" then
    return "Match Algorithm: Time Pro Rata (P)"
  end
  if value == "Q" then
    return "Match Algorithm: Threshold Pro Rata Lmm (Q)"
  end
  if value == "S" then
    return "Match Algorithm: Fifo Top Lmm (S)"
  end
  if value == "T" then
    return "Match Algorithm: Fifo Lmm (T)"
  end
  if value == "V" then
    return "Match Algorithm: Institutional Prioritization (V)"
  end
  if value == "Y" then
    return "Match Algorithm: Eurodollar Futures (Y)"
  end

  return "Match Algorithm: Unknown("..value..")"
end

-- Dissect: Match Algorithm
databento_marketdata_normalized_dbn_v3.match_algorithm.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.match_algorithm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.match_algorithm.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.match_algorithm, range, value, display)

  return offset + length, value
end

-- Maturity Day
databento_marketdata_normalized_dbn_v3.maturity_day = {}

-- Size: Maturity Day
databento_marketdata_normalized_dbn_v3.maturity_day.size = 1

-- Display: Maturity Day
databento_marketdata_normalized_dbn_v3.maturity_day.display = function(value)
  return "Maturity Day: "..value
end

-- Dissect: Maturity Day
databento_marketdata_normalized_dbn_v3.maturity_day.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.maturity_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.maturity_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.maturity_day, range, value, display)

  return offset + length, value
end

-- Maturity Month
databento_marketdata_normalized_dbn_v3.maturity_month = {}

-- Size: Maturity Month
databento_marketdata_normalized_dbn_v3.maturity_month.size = 1

-- Display: Maturity Month
databento_marketdata_normalized_dbn_v3.maturity_month.display = function(value)
  return "Maturity Month: "..value
end

-- Dissect: Maturity Month
databento_marketdata_normalized_dbn_v3.maturity_month.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.maturity_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.maturity_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.maturity_month, range, value, display)

  return offset + length, value
end

-- Maturity Week
databento_marketdata_normalized_dbn_v3.maturity_week = {}

-- Size: Maturity Week
databento_marketdata_normalized_dbn_v3.maturity_week.size = 1

-- Display: Maturity Week
databento_marketdata_normalized_dbn_v3.maturity_week.display = function(value)
  return "Maturity Week: "..value
end

-- Dissect: Maturity Week
databento_marketdata_normalized_dbn_v3.maturity_week.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.maturity_week.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.maturity_week.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.maturity_week, range, value, display)

  return offset + length, value
end

-- Maturity Year
databento_marketdata_normalized_dbn_v3.maturity_year = {}

-- Size: Maturity Year
databento_marketdata_normalized_dbn_v3.maturity_year.size = 2

-- Display: Maturity Year
databento_marketdata_normalized_dbn_v3.maturity_year.display = function(value)
  return "Maturity Year: "..value
end

-- Dissect: Maturity Year
databento_marketdata_normalized_dbn_v3.maturity_year.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.maturity_year.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.maturity_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.maturity_year, range, value, display)

  return offset + length, value
end

-- Max Price Variation
databento_marketdata_normalized_dbn_v3.max_price_variation = {}

-- Size: Max Price Variation
databento_marketdata_normalized_dbn_v3.max_price_variation.size = 8

-- Display: Max Price Variation
databento_marketdata_normalized_dbn_v3.max_price_variation.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Max Price Variation: No Value"
  end

  return "Max Price Variation: "..value
end

-- Translate: Max Price Variation
databento_marketdata_normalized_dbn_v3.max_price_variation.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Max Price Variation
databento_marketdata_normalized_dbn_v3.max_price_variation.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.max_price_variation.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.max_price_variation.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.max_price_variation.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.max_price_variation, range, value, display)

  return offset + length, value
end

-- Max Trade Vol
databento_marketdata_normalized_dbn_v3.max_trade_vol = {}

-- Size: Max Trade Vol
databento_marketdata_normalized_dbn_v3.max_trade_vol.size = 4

-- Display: Max Trade Vol
databento_marketdata_normalized_dbn_v3.max_trade_vol.display = function(value)
  return "Max Trade Vol: "..value
end

-- Dissect: Max Trade Vol
databento_marketdata_normalized_dbn_v3.max_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.max_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.max_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.max_trade_vol, range, value, display)

  return offset + length, value
end

-- Metadata Length
databento_marketdata_normalized_dbn_v3.metadata_length = {}

-- Size: Metadata Length
databento_marketdata_normalized_dbn_v3.metadata_length.size = 4

-- Display: Metadata Length
databento_marketdata_normalized_dbn_v3.metadata_length.display = function(value)
  return "Metadata Length: "..value
end

-- Dissect: Metadata Length
databento_marketdata_normalized_dbn_v3.metadata_length.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.metadata_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.metadata_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.metadata_length, range, value, display)

  return offset + length, value
end

-- Metadata Padding
databento_marketdata_normalized_dbn_v3.metadata_padding = {}

-- Display: Metadata Padding
databento_marketdata_normalized_dbn_v3.metadata_padding.display = function(value)
  return "Metadata Padding: "..value
end

-- Dissect runtime sized field: Metadata Padding
databento_marketdata_normalized_dbn_v3.metadata_padding.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.metadata_padding.display(value, packet, parent, size)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.metadata_padding, range, value, display)

  return offset + size, value
end

-- Metadata Reserved
databento_marketdata_normalized_dbn_v3.metadata_reserved = {}

-- Size: Metadata Reserved
databento_marketdata_normalized_dbn_v3.metadata_reserved.size = 53

-- Display: Metadata Reserved
databento_marketdata_normalized_dbn_v3.metadata_reserved.display = function(value)
  return "Metadata Reserved: "..value
end

-- Dissect: Metadata Reserved
databento_marketdata_normalized_dbn_v3.metadata_reserved.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.metadata_reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.metadata_reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.metadata_reserved, range, value, display)

  return offset + length, value
end

-- Min Lot Size
databento_marketdata_normalized_dbn_v3.min_lot_size = {}

-- Size: Min Lot Size
databento_marketdata_normalized_dbn_v3.min_lot_size.size = 4

-- Display: Min Lot Size
databento_marketdata_normalized_dbn_v3.min_lot_size.display = function(value)
  return "Min Lot Size: "..value
end

-- Dissect: Min Lot Size
databento_marketdata_normalized_dbn_v3.min_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.min_lot_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.min_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.min_lot_size, range, value, display)

  return offset + length, value
end

-- Min Lot Size Block
databento_marketdata_normalized_dbn_v3.min_lot_size_block = {}

-- Size: Min Lot Size Block
databento_marketdata_normalized_dbn_v3.min_lot_size_block.size = 4

-- Display: Min Lot Size Block
databento_marketdata_normalized_dbn_v3.min_lot_size_block.display = function(value)
  return "Min Lot Size Block: "..value
end

-- Dissect: Min Lot Size Block
databento_marketdata_normalized_dbn_v3.min_lot_size_block.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.min_lot_size_block.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.min_lot_size_block.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.min_lot_size_block, range, value, display)

  return offset + length, value
end

-- Min Lot Size Round Lot
databento_marketdata_normalized_dbn_v3.min_lot_size_round_lot = {}

-- Size: Min Lot Size Round Lot
databento_marketdata_normalized_dbn_v3.min_lot_size_round_lot.size = 4

-- Display: Min Lot Size Round Lot
databento_marketdata_normalized_dbn_v3.min_lot_size_round_lot.display = function(value)
  return "Min Lot Size Round Lot: "..value
end

-- Dissect: Min Lot Size Round Lot
databento_marketdata_normalized_dbn_v3.min_lot_size_round_lot.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.min_lot_size_round_lot.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.min_lot_size_round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.min_lot_size_round_lot, range, value, display)

  return offset + length, value
end

-- Min Price Increment
databento_marketdata_normalized_dbn_v3.min_price_increment = {}

-- Size: Min Price Increment
databento_marketdata_normalized_dbn_v3.min_price_increment.size = 8

-- Display: Min Price Increment
databento_marketdata_normalized_dbn_v3.min_price_increment.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
databento_marketdata_normalized_dbn_v3.min_price_increment.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Min Price Increment
databento_marketdata_normalized_dbn_v3.min_price_increment.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.min_price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.min_price_increment.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.min_price_increment.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Min Price Increment Amount
databento_marketdata_normalized_dbn_v3.min_price_increment_amount = {}

-- Size: Min Price Increment Amount
databento_marketdata_normalized_dbn_v3.min_price_increment_amount.size = 8

-- Display: Min Price Increment Amount
databento_marketdata_normalized_dbn_v3.min_price_increment_amount.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Amount: No Value"
  end

  return "Min Price Increment Amount: "..value
end

-- Translate: Min Price Increment Amount
databento_marketdata_normalized_dbn_v3.min_price_increment_amount.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Min Price Increment Amount
databento_marketdata_normalized_dbn_v3.min_price_increment_amount.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.min_price_increment_amount.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.min_price_increment_amount.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.min_price_increment_amount.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.min_price_increment_amount, range, value, display)

  return offset + length, value
end

-- Min Trade Vol
databento_marketdata_normalized_dbn_v3.min_trade_vol = {}

-- Size: Min Trade Vol
databento_marketdata_normalized_dbn_v3.min_trade_vol.size = 4

-- Display: Min Trade Vol
databento_marketdata_normalized_dbn_v3.min_trade_vol.display = function(value)
  return "Min Trade Vol: "..value
end

-- Dissect: Min Trade Vol
databento_marketdata_normalized_dbn_v3.min_trade_vol.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.min_trade_vol.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.min_trade_vol.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.min_trade_vol, range, value, display)

  return offset + length, value
end

-- Msg
databento_marketdata_normalized_dbn_v3.msg = {}

-- Size: Msg
databento_marketdata_normalized_dbn_v3.msg.size = 303

-- Display: Msg
databento_marketdata_normalized_dbn_v3.msg.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Msg: No Value"
  end

  return "Msg: "..value
end

-- Dissect: Msg
databento_marketdata_normalized_dbn_v3.msg.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.msg.size
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

  local display = databento_marketdata_normalized_dbn_v3.msg.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.msg, range, value, display)

  return offset + length, value
end

-- Not Found Count
databento_marketdata_normalized_dbn_v3.not_found_count = {}

-- Size: Not Found Count
databento_marketdata_normalized_dbn_v3.not_found_count.size = 4

-- Display: Not Found Count
databento_marketdata_normalized_dbn_v3.not_found_count.display = function(value)
  return "Not Found Count: "..value
end

-- Dissect: Not Found Count
databento_marketdata_normalized_dbn_v3.not_found_count.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.not_found_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.not_found_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.not_found_count, range, value, display)

  return offset + length, value
end

-- Not Found Symbol
databento_marketdata_normalized_dbn_v3.not_found_symbol = {}

-- Size: Not Found Symbol
databento_marketdata_normalized_dbn_v3.not_found_symbol.size = 71

-- Display: Not Found Symbol
databento_marketdata_normalized_dbn_v3.not_found_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Not Found Symbol: No Value"
  end

  return "Not Found Symbol: "..value
end

-- Dissect: Not Found Symbol
databento_marketdata_normalized_dbn_v3.not_found_symbol.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.not_found_symbol.size
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

  local display = databento_marketdata_normalized_dbn_v3.not_found_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.not_found_symbol, range, value, display)

  return offset + length, value
end

-- Num Extensions
databento_marketdata_normalized_dbn_v3.num_extensions = {}

-- Size: Num Extensions
databento_marketdata_normalized_dbn_v3.num_extensions.size = 1

-- Display: Num Extensions
databento_marketdata_normalized_dbn_v3.num_extensions.display = function(value)
  return "Num Extensions: "..value
end

-- Dissect: Num Extensions
databento_marketdata_normalized_dbn_v3.num_extensions.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.num_extensions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.num_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.num_extensions, range, value, display)

  return offset + length, value
end

-- Open
databento_marketdata_normalized_dbn_v3.open = {}

-- Size: Open
databento_marketdata_normalized_dbn_v3.open.size = 8

-- Display: Open
databento_marketdata_normalized_dbn_v3.open.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Open: No Value"
  end

  return "Open: "..value
end

-- Translate: Open
databento_marketdata_normalized_dbn_v3.open.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Open
databento_marketdata_normalized_dbn_v3.open.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.open.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.open.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.open.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.open, range, value, display)

  return offset + length, value
end

-- Order Id
databento_marketdata_normalized_dbn_v3.order_id = {}

-- Size: Order Id
databento_marketdata_normalized_dbn_v3.order_id.size = 8

-- Display: Order Id
databento_marketdata_normalized_dbn_v3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
databento_marketdata_normalized_dbn_v3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = databento_marketdata_normalized_dbn_v3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Original Contract Size
databento_marketdata_normalized_dbn_v3.original_contract_size = {}

-- Size: Original Contract Size
databento_marketdata_normalized_dbn_v3.original_contract_size.size = 4

-- Display: Original Contract Size
databento_marketdata_normalized_dbn_v3.original_contract_size.display = function(value)
  return "Original Contract Size: "..value
end

-- Dissect: Original Contract Size
databento_marketdata_normalized_dbn_v3.original_contract_size.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.original_contract_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.original_contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.original_contract_size, range, value, display)

  return offset + length, value
end

-- Paired Qty
databento_marketdata_normalized_dbn_v3.paired_qty = {}

-- Size: Paired Qty
databento_marketdata_normalized_dbn_v3.paired_qty.size = 4

-- Display: Paired Qty
databento_marketdata_normalized_dbn_v3.paired_qty.display = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
databento_marketdata_normalized_dbn_v3.paired_qty.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.paired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.paired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Partial Count
databento_marketdata_normalized_dbn_v3.partial_count = {}

-- Size: Partial Count
databento_marketdata_normalized_dbn_v3.partial_count.size = 4

-- Display: Partial Count
databento_marketdata_normalized_dbn_v3.partial_count.display = function(value)
  return "Partial Count: "..value
end

-- Dissect: Partial Count
databento_marketdata_normalized_dbn_v3.partial_count.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.partial_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.partial_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.partial_count, range, value, display)

  return offset + length, value
end

-- Partial Symbol
databento_marketdata_normalized_dbn_v3.partial_symbol = {}

-- Size: Partial Symbol
databento_marketdata_normalized_dbn_v3.partial_symbol.size = 71

-- Display: Partial Symbol
databento_marketdata_normalized_dbn_v3.partial_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Partial Symbol: No Value"
  end

  return "Partial Symbol: "..value
end

-- Dissect: Partial Symbol
databento_marketdata_normalized_dbn_v3.partial_symbol.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.partial_symbol.size
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

  local display = databento_marketdata_normalized_dbn_v3.partial_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.partial_symbol, range, value, display)

  return offset + length, value
end

-- Price
databento_marketdata_normalized_dbn_v3.price = {}

-- Size: Price
databento_marketdata_normalized_dbn_v3.price.size = 8

-- Display: Price
databento_marketdata_normalized_dbn_v3.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
databento_marketdata_normalized_dbn_v3.price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Price
databento_marketdata_normalized_dbn_v3.price.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.price.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.price, range, value, display)

  return offset + length, value
end

-- Price Display Format
databento_marketdata_normalized_dbn_v3.price_display_format = {}

-- Size: Price Display Format
databento_marketdata_normalized_dbn_v3.price_display_format.size = 1

-- Display: Price Display Format
databento_marketdata_normalized_dbn_v3.price_display_format.display = function(value)
  return "Price Display Format: "..value
end

-- Dissect: Price Display Format
databento_marketdata_normalized_dbn_v3.price_display_format.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.price_display_format.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.price_display_format.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.price_display_format, range, value, display)

  return offset + length, value
end

-- Price Ratio
databento_marketdata_normalized_dbn_v3.price_ratio = {}

-- Size: Price Ratio
databento_marketdata_normalized_dbn_v3.price_ratio.size = 8

-- Display: Price Ratio
databento_marketdata_normalized_dbn_v3.price_ratio.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Price Ratio: No Value"
  end

  return "Price Ratio: "..value
end

-- Translate: Price Ratio
databento_marketdata_normalized_dbn_v3.price_ratio.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Price Ratio
databento_marketdata_normalized_dbn_v3.price_ratio.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.price_ratio.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.price_ratio.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.price_ratio.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.price_ratio, range, value, display)

  return offset + length, value
end

-- Publisher Id
databento_marketdata_normalized_dbn_v3.publisher_id = {}

-- Size: Publisher Id
databento_marketdata_normalized_dbn_v3.publisher_id.size = 2

-- Display: Publisher Id
databento_marketdata_normalized_dbn_v3.publisher_id.display = function(value)
  return "Publisher Id: "..value
end

-- Dissect: Publisher Id
databento_marketdata_normalized_dbn_v3.publisher_id.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.publisher_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.publisher_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.publisher_id, range, value, display)

  return offset + length, value
end

-- Quantity
databento_marketdata_normalized_dbn_v3.quantity = {}

-- Size: Quantity
databento_marketdata_normalized_dbn_v3.quantity.size = 8

-- Display: Quantity
databento_marketdata_normalized_dbn_v3.quantity.display = function(value)
  -- Check if field has value
  if value == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Quantity: No Value"
  end

  return "Quantity: "..value
end

-- Dissect: Quantity
databento_marketdata_normalized_dbn_v3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.quantity.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = databento_marketdata_normalized_dbn_v3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Raw Instrument Id
databento_marketdata_normalized_dbn_v3.raw_instrument_id = {}

-- Size: Raw Instrument Id
databento_marketdata_normalized_dbn_v3.raw_instrument_id.size = 8

-- Display: Raw Instrument Id
databento_marketdata_normalized_dbn_v3.raw_instrument_id.display = function(value)
  return "Raw Instrument Id: "..value
end

-- Dissect: Raw Instrument Id
databento_marketdata_normalized_dbn_v3.raw_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.raw_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = databento_marketdata_normalized_dbn_v3.raw_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.raw_instrument_id, range, value, display)

  return offset + length, value
end

-- Raw Symbol
databento_marketdata_normalized_dbn_v3.raw_symbol = {}

-- Size: Raw Symbol
databento_marketdata_normalized_dbn_v3.raw_symbol.size = 71

-- Display: Raw Symbol
databento_marketdata_normalized_dbn_v3.raw_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Raw Symbol: No Value"
  end

  return "Raw Symbol: "..value
end

-- Dissect: Raw Symbol
databento_marketdata_normalized_dbn_v3.raw_symbol.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.raw_symbol.size
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

  local display = databento_marketdata_normalized_dbn_v3.raw_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.raw_symbol, range, value, display)

  return offset + length, value
end

-- Raw Symbol In
databento_marketdata_normalized_dbn_v3.raw_symbol_in = {}

-- Size: Raw Symbol In
databento_marketdata_normalized_dbn_v3.raw_symbol_in.size = 71

-- Display: Raw Symbol In
databento_marketdata_normalized_dbn_v3.raw_symbol_in.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Raw Symbol In: No Value"
  end

  return "Raw Symbol In: "..value
end

-- Dissect: Raw Symbol In
databento_marketdata_normalized_dbn_v3.raw_symbol_in.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.raw_symbol_in.size
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

  local display = databento_marketdata_normalized_dbn_v3.raw_symbol_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.raw_symbol_in, range, value, display)

  return offset + length, value
end

-- Record Length
databento_marketdata_normalized_dbn_v3.record_length = {}

-- Size: Record Length
databento_marketdata_normalized_dbn_v3.record_length.size = 1

-- Display: Record Length
databento_marketdata_normalized_dbn_v3.record_length.display = function(value)
  return "Record Length: "..value
end

-- Dissect: Record Length
databento_marketdata_normalized_dbn_v3.record_length.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.record_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.record_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.record_length, range, value, display)

  return offset + length, value
end

-- Ref Price
databento_marketdata_normalized_dbn_v3.ref_price = {}

-- Size: Ref Price
databento_marketdata_normalized_dbn_v3.ref_price.size = 8

-- Display: Ref Price
databento_marketdata_normalized_dbn_v3.ref_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Ref Price: No Value"
  end

  return "Ref Price: "..value
end

-- Translate: Ref Price
databento_marketdata_normalized_dbn_v3.ref_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Ref Price
databento_marketdata_normalized_dbn_v3.ref_price.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ref_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.ref_price.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.ref_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.ref_price, range, value, display)

  return offset + length, value
end

-- Reserved 1
databento_marketdata_normalized_dbn_v3.reserved_1 = {}

-- Size: Reserved 1
databento_marketdata_normalized_dbn_v3.reserved_1.size = 1

-- Display: Reserved 1
databento_marketdata_normalized_dbn_v3.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
databento_marketdata_normalized_dbn_v3.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 17
databento_marketdata_normalized_dbn_v3.reserved_17 = {}

-- Size: Reserved 17
databento_marketdata_normalized_dbn_v3.reserved_17.size = 17

-- Display: Reserved 17
databento_marketdata_normalized_dbn_v3.reserved_17.display = function(value)
  return "Reserved 17: "..value
end

-- Dissect: Reserved 17
databento_marketdata_normalized_dbn_v3.reserved_17.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.reserved_17.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.reserved_17.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.reserved_17, range, value, display)

  return offset + length, value
end

-- Reserved 18
databento_marketdata_normalized_dbn_v3.reserved_18 = {}

-- Size: Reserved 18
databento_marketdata_normalized_dbn_v3.reserved_18.size = 18

-- Display: Reserved 18
databento_marketdata_normalized_dbn_v3.reserved_18.display = function(value)
  return "Reserved 18: "..value
end

-- Dissect: Reserved 18
databento_marketdata_normalized_dbn_v3.reserved_18.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.reserved_18.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.reserved_18.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.reserved_18, range, value, display)

  return offset + length, value
end

-- Reserved 2
databento_marketdata_normalized_dbn_v3.reserved_2 = {}

-- Size: Reserved 2
databento_marketdata_normalized_dbn_v3.reserved_2.size = 2

-- Display: Reserved 2
databento_marketdata_normalized_dbn_v3.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
databento_marketdata_normalized_dbn_v3.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
databento_marketdata_normalized_dbn_v3.reserved_4 = {}

-- Size: Reserved 4
databento_marketdata_normalized_dbn_v3.reserved_4.size = 4

-- Display: Reserved 4
databento_marketdata_normalized_dbn_v3.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
databento_marketdata_normalized_dbn_v3.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 7
databento_marketdata_normalized_dbn_v3.reserved_7 = {}

-- Size: Reserved 7
databento_marketdata_normalized_dbn_v3.reserved_7.size = 7

-- Display: Reserved 7
databento_marketdata_normalized_dbn_v3.reserved_7.display = function(value)
  return "Reserved 7: "..value
end

-- Dissect: Reserved 7
databento_marketdata_normalized_dbn_v3.reserved_7.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.reserved_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.reserved_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.reserved_7, range, value, display)

  return offset + length, value
end

-- Reserved 8
databento_marketdata_normalized_dbn_v3.reserved_8 = {}

-- Size: Reserved 8
databento_marketdata_normalized_dbn_v3.reserved_8.size = 8

-- Display: Reserved 8
databento_marketdata_normalized_dbn_v3.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
databento_marketdata_normalized_dbn_v3.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.reserved_8.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Rtype
databento_marketdata_normalized_dbn_v3.rtype = {}

-- Size: Rtype
databento_marketdata_normalized_dbn_v3.rtype.size = 1

-- Display: Rtype
databento_marketdata_normalized_dbn_v3.rtype.labels = {
  [0] = "Rtype: Market By Price 0 (0)",
  [1] = "Rtype: Market By Price 1 (1)",
  [10] = "Rtype: Market By Price 10 (10)",
  [17] = "Rtype: Ohlcv Deprecated (17)",
  [18] = "Rtype: Status (18)",
  [19] = "Rtype: Instrument Definition (19)",
  [20] = "Rtype: Imbalance (20)",
  [21] = "Rtype: Error (21)",
  [22] = "Rtype: Symbol Mapping (22)",
  [23] = "Rtype: System (23)",
  [24] = "Rtype: Statistics (24)",
  [32] = "Rtype: Ohlcv 1 Second (32)",
  [33] = "Rtype: Ohlcv 1 Minute (33)",
  [34] = "Rtype: Ohlcv 1 Hour (34)",
  [35] = "Rtype: Ohlcv 1 Day (35)",
  [36] = "Rtype: Ohlcv End Of Day (36)",
  [160] = "Rtype: Market By Order (160)",
  [177] = "Rtype: Consolidated Market By Price 1 (177)",
  [192] = "Rtype: Consolidated Bbo 1 Second (192)",
  [193] = "Rtype: Consolidated Bbo 1 Minute (193)",
  [194] = "Rtype: Trade With Consolidated Bbo (194)",
  [195] = "Rtype: Bbo 1 Second (195)",
  [196] = "Rtype: Bbo 1 Minute (196)",
}

databento_marketdata_normalized_dbn_v3.rtype.display = function(value)
  return databento_marketdata_normalized_dbn_v3.rtype.labels[value] or "Rtype: Unknown("..value..")"
end

-- Dissect: Rtype
databento_marketdata_normalized_dbn_v3.rtype.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.rtype.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.rtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.rtype, range, value, display)

  return offset + length, value
end

-- Schema
databento_marketdata_normalized_dbn_v3.schema = {}

-- Size: Schema
databento_marketdata_normalized_dbn_v3.schema.size = 2

-- Display: Schema
databento_marketdata_normalized_dbn_v3.schema.display = function(value)
  if value == 0 then
    return "Schema: Mbo (0)"
  end
  if value == 1 then
    return "Schema: Mbp1 (1)"
  end
  if value == 2 then
    return "Schema: Mbp10 (2)"
  end
  if value == 3 then
    return "Schema: Tbbo (3)"
  end
  if value == 4 then
    return "Schema: Trades (4)"
  end
  if value == 5 then
    return "Schema: Ohlcv1 S (5)"
  end
  if value == 6 then
    return "Schema: Ohlcv1 M (6)"
  end
  if value == 7 then
    return "Schema: Ohlcv1 H (7)"
  end
  if value == 8 then
    return "Schema: Ohlcv1 D (8)"
  end
  if value == 9 then
    return "Schema: Definition (9)"
  end
  if value == 10 then
    return "Schema: Statistics (10)"
  end
  if value == 11 then
    return "Schema: Status (11)"
  end
  if value == 12 then
    return "Schema: Imbalance (12)"
  end
  if value == 13 then
    return "Schema: Ohlcv Eod (13)"
  end
  if value == 14 then
    return "Schema: Cmbp1 (14)"
  end
  if value == 15 then
    return "Schema: Cbbo1 S (15)"
  end
  if value == 16 then
    return "Schema: Cbbo1 M (16)"
  end
  if value == 17 then
    return "Schema: Tcbbo (17)"
  end
  if value == 18 then
    return "Schema: Bbo1 S (18)"
  end
  if value == 19 then
    return "Schema: Bbo1 M (19)"
  end
  if value == 65535 then
    return "Schema: No Value"
  end

  return "Schema: Unknown("..value..")"
end

-- Dissect: Schema
databento_marketdata_normalized_dbn_v3.schema.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.schema.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.schema.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.schema, range, value, display)

  return offset + length, value
end

-- Schema Definition
databento_marketdata_normalized_dbn_v3.schema_definition = {}

-- Display: Schema Definition
databento_marketdata_normalized_dbn_v3.schema_definition.display = function(value)
  return "Schema Definition: "..value
end

-- Dissect runtime sized field: Schema Definition
databento_marketdata_normalized_dbn_v3.schema_definition.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.schema_definition.display(value, packet, parent, size)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.schema_definition, range, value, display)

  return offset + size, value
end

-- Schema Definition Length
databento_marketdata_normalized_dbn_v3.schema_definition_length = {}

-- Size: Schema Definition Length
databento_marketdata_normalized_dbn_v3.schema_definition_length.size = 4

-- Display: Schema Definition Length
databento_marketdata_normalized_dbn_v3.schema_definition_length.display = function(value)
  return "Schema Definition Length: "..value
end

-- Dissect: Schema Definition Length
databento_marketdata_normalized_dbn_v3.schema_definition_length.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.schema_definition_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.schema_definition_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.schema_definition_length, range, value, display)

  return offset + length, value
end

-- Second Reserved 1
databento_marketdata_normalized_dbn_v3.second_reserved_1 = {}

-- Size: Second Reserved 1
databento_marketdata_normalized_dbn_v3.second_reserved_1.size = 1

-- Display: Second Reserved 1
databento_marketdata_normalized_dbn_v3.second_reserved_1.display = function(value)
  return "Second Reserved 1: "..value
end

-- Dissect: Second Reserved 1
databento_marketdata_normalized_dbn_v3.second_reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.second_reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.second_reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.second_reserved_1, range, value, display)

  return offset + length, value
end

-- Second Reserved 2
databento_marketdata_normalized_dbn_v3.second_reserved_2 = {}

-- Size: Second Reserved 2
databento_marketdata_normalized_dbn_v3.second_reserved_2.size = 2

-- Display: Second Reserved 2
databento_marketdata_normalized_dbn_v3.second_reserved_2.display = function(value)
  return "Second Reserved 2: "..value
end

-- Dissect: Second Reserved 2
databento_marketdata_normalized_dbn_v3.second_reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.second_reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = databento_marketdata_normalized_dbn_v3.second_reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.second_reserved_2, range, value, display)

  return offset + length, value
end

-- Secsubtype
databento_marketdata_normalized_dbn_v3.secsubtype = {}

-- Size: Secsubtype
databento_marketdata_normalized_dbn_v3.secsubtype.size = 6

-- Display: Secsubtype
databento_marketdata_normalized_dbn_v3.secsubtype.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Secsubtype: No Value"
  end

  return "Secsubtype: "..value
end

-- Dissect: Secsubtype
databento_marketdata_normalized_dbn_v3.secsubtype.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.secsubtype.size
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

  local display = databento_marketdata_normalized_dbn_v3.secsubtype.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.secsubtype, range, value, display)

  return offset + length, value
end

-- Security Type
databento_marketdata_normalized_dbn_v3.security_type = {}

-- Size: Security Type
databento_marketdata_normalized_dbn_v3.security_type.size = 7

-- Display: Security Type
databento_marketdata_normalized_dbn_v3.security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
databento_marketdata_normalized_dbn_v3.security_type.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.security_type.size
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

  local display = databento_marketdata_normalized_dbn_v3.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.security_type, range, value, display)

  return offset + length, value
end

-- Security Update Action
databento_marketdata_normalized_dbn_v3.security_update_action = {}

-- Size: Security Update Action
databento_marketdata_normalized_dbn_v3.security_update_action.size = 1

-- Display: Security Update Action
databento_marketdata_normalized_dbn_v3.security_update_action.labels = {
  ["A"] = "Security Update Action: Add (A)",
  ["D"] = "Security Update Action: Delete (D)",
  ["M"] = "Security Update Action: Modify (M)",
  ["~"] = "Security Update Action: Invalid (~)",
}

databento_marketdata_normalized_dbn_v3.security_update_action.display = function(value)
  return databento_marketdata_normalized_dbn_v3.security_update_action.labels[value] or "Security Update Action: Unknown("..value..")"
end

-- Dissect: Security Update Action
databento_marketdata_normalized_dbn_v3.security_update_action.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.security_update_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.security_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.security_update_action, range, value, display)

  return offset + length, value
end

-- Sequence
databento_marketdata_normalized_dbn_v3.sequence = {}

-- Size: Sequence
databento_marketdata_normalized_dbn_v3.sequence.size = 4

-- Display: Sequence
databento_marketdata_normalized_dbn_v3.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
databento_marketdata_normalized_dbn_v3.sequence.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.sequence, range, value, display)

  return offset + length, value
end

-- Settl Currency
databento_marketdata_normalized_dbn_v3.settl_currency = {}

-- Size: Settl Currency
databento_marketdata_normalized_dbn_v3.settl_currency.size = 4

-- Display: Settl Currency
databento_marketdata_normalized_dbn_v3.settl_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settl Currency: No Value"
  end

  return "Settl Currency: "..value
end

-- Dissect: Settl Currency
databento_marketdata_normalized_dbn_v3.settl_currency.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.settl_currency.size
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

  local display = databento_marketdata_normalized_dbn_v3.settl_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.settl_currency, range, value, display)

  return offset + length, value
end

-- Side
databento_marketdata_normalized_dbn_v3.side = {}

-- Size: Side
databento_marketdata_normalized_dbn_v3.side.size = 1

-- Display: Side
databento_marketdata_normalized_dbn_v3.side.labels = {
  ["A"] = "Side: Ask (A)",
  ["B"] = "Side: Bid (B)",
  ["N"] = "Side: None (N)",
}

databento_marketdata_normalized_dbn_v3.side.display = function(value)
  return databento_marketdata_normalized_dbn_v3.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
databento_marketdata_normalized_dbn_v3.side.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.side, range, value, display)

  return offset + length, value
end

-- Significant Imbalance
databento_marketdata_normalized_dbn_v3.significant_imbalance = {}

-- Size: Significant Imbalance
databento_marketdata_normalized_dbn_v3.significant_imbalance.size = 1

-- Display: Significant Imbalance
databento_marketdata_normalized_dbn_v3.significant_imbalance.display = function(value)
  return "Significant Imbalance: "..value
end

-- Dissect: Significant Imbalance
databento_marketdata_normalized_dbn_v3.significant_imbalance.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.significant_imbalance.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.significant_imbalance.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.significant_imbalance, range, value, display)

  return offset + length, value
end

-- Size
databento_marketdata_normalized_dbn_v3.size = {}

-- Size: Size
databento_marketdata_normalized_dbn_v3.size.size = 4

-- Display: Size
databento_marketdata_normalized_dbn_v3.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
databento_marketdata_normalized_dbn_v3.size.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.size, range, value, display)

  return offset + length, value
end

-- Ssr Filling Price
databento_marketdata_normalized_dbn_v3.ssr_filling_price = {}

-- Size: Ssr Filling Price
databento_marketdata_normalized_dbn_v3.ssr_filling_price.size = 8

-- Display: Ssr Filling Price
databento_marketdata_normalized_dbn_v3.ssr_filling_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Ssr Filling Price: No Value"
  end

  return "Ssr Filling Price: "..value
end

-- Translate: Ssr Filling Price
databento_marketdata_normalized_dbn_v3.ssr_filling_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Ssr Filling Price
databento_marketdata_normalized_dbn_v3.ssr_filling_price.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ssr_filling_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.ssr_filling_price.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.ssr_filling_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.ssr_filling_price, range, value, display)

  return offset + length, value
end

-- Start
databento_marketdata_normalized_dbn_v3.start = {}

-- Size: Start
databento_marketdata_normalized_dbn_v3.start.size = 8

-- Dissect: Start
databento_marketdata_normalized_dbn_v3.start.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.start.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_databento_marketdata_normalized_dbn_v3.fields.start
  if databento_marketdata_normalized_dbn_v3.timestamp_format == 3 then field = omi_databento_marketdata_normalized_dbn_v3.fields.start_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Start Date
databento_marketdata_normalized_dbn_v3.start_date = {}

-- Size: Start Date
databento_marketdata_normalized_dbn_v3.start_date.size = 4

-- Display: Start Date
databento_marketdata_normalized_dbn_v3.start_date.display = function(value)
  return "Start Date: "..value
end

-- Dissect: Start Date
databento_marketdata_normalized_dbn_v3.start_date.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.start_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.start_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.start_date, range, value, display)

  return offset + length, value
end

-- Start Ts
databento_marketdata_normalized_dbn_v3.start_ts = {}

-- Size: Start Ts
databento_marketdata_normalized_dbn_v3.start_ts.size = 8

-- Dissect: Start Ts
databento_marketdata_normalized_dbn_v3.start_ts.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.start_ts.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_databento_marketdata_normalized_dbn_v3.fields.start_ts
  if databento_marketdata_normalized_dbn_v3.timestamp_format == 3 then field = omi_databento_marketdata_normalized_dbn_v3.fields.start_ts_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Start Ts: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Stat Flags
databento_marketdata_normalized_dbn_v3.stat_flags = {}

-- Size: Stat Flags
databento_marketdata_normalized_dbn_v3.stat_flags.size = 1

-- Display: Stat Flags
databento_marketdata_normalized_dbn_v3.stat_flags.display = function(value)
  return "Stat Flags: "..value
end

-- Dissect: Stat Flags
databento_marketdata_normalized_dbn_v3.stat_flags.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.stat_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.stat_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.stat_flags, range, value, display)

  return offset + length, value
end

-- Stat Type
databento_marketdata_normalized_dbn_v3.stat_type = {}

-- Size: Stat Type
databento_marketdata_normalized_dbn_v3.stat_type.size = 2

-- Display: Stat Type
databento_marketdata_normalized_dbn_v3.stat_type.labels = {
  [1] = "Stat Type: Opening Price (1)",
  [2] = "Stat Type: Indicative Opening Price (2)",
  [3] = "Stat Type: Settlement Price (3)",
  [4] = "Stat Type: Trading Session Low Price (4)",
  [5] = "Stat Type: Trading Session High Price (5)",
  [6] = "Stat Type: Cleared Volume (6)",
  [7] = "Stat Type: Lowest Offer (7)",
  [8] = "Stat Type: Highest Bid (8)",
  [9] = "Stat Type: Open Interest (9)",
  [10] = "Stat Type: Fixing Price (10)",
  [11] = "Stat Type: Close Price (11)",
  [12] = "Stat Type: Net Change (12)",
  [13] = "Stat Type: Vwap (13)",
  [14] = "Stat Type: Volatility (14)",
  [15] = "Stat Type: Delta (15)",
  [16] = "Stat Type: Uncrossing Price (16)",
  [17] = "Stat Type: Upper Price Limit (17)",
  [18] = "Stat Type: Lower Price Limit (18)",
  [19] = "Stat Type: Block Volume (19)",
  [20] = "Stat Type: Indicative Close Price (20)",
  [21] = "Stat Type: Mwcb Level1 (21)",
  [22] = "Stat Type: Mwcb Level2 (22)",
  [23] = "Stat Type: Mwcb Level3 (23)",
  [24] = "Stat Type: Auction Collar Reference Price (24)",
  [25] = "Stat Type: Auction Collar Upper Price (25)",
  [26] = "Stat Type: Auction Collar Lower Price (26)",
  [10001] = "Stat Type: Venue Specific Volume1 (10001)",
  [10002] = "Stat Type: Venue Specific Price1 (10002)",
}

databento_marketdata_normalized_dbn_v3.stat_type.display = function(value)
  return databento_marketdata_normalized_dbn_v3.stat_type.labels[value] or "Stat Type: Unknown("..value..")"
end

-- Dissect: Stat Type
databento_marketdata_normalized_dbn_v3.stat_type.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.stat_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.stat_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.stat_type, range, value, display)

  return offset + length, value
end

-- Status Action
databento_marketdata_normalized_dbn_v3.status_action = {}

-- Size: Status Action
databento_marketdata_normalized_dbn_v3.status_action.size = 2

-- Display: Status Action
databento_marketdata_normalized_dbn_v3.status_action.labels = {
  [0] = "Status Action: None (0)",
  [1] = "Status Action: Pre Open (1)",
  [2] = "Status Action: Pre Cross (2)",
  [3] = "Status Action: Quoting (3)",
  [4] = "Status Action: Cross (4)",
  [5] = "Status Action: Rotation (5)",
  [6] = "Status Action: New Price Indication (6)",
  [7] = "Status Action: Trading (7)",
  [8] = "Status Action: Halt (8)",
  [9] = "Status Action: Pause (9)",
  [10] = "Status Action: Suspend (10)",
  [11] = "Status Action: Pre Close (11)",
  [12] = "Status Action: Close (12)",
  [13] = "Status Action: Post Close (13)",
  [14] = "Status Action: Ssr Change (14)",
  [15] = "Status Action: Not Available For Trading (15)",
}

databento_marketdata_normalized_dbn_v3.status_action.display = function(value)
  return databento_marketdata_normalized_dbn_v3.status_action.labels[value] or "Status Action: Unknown("..value..")"
end

-- Dissect: Status Action
databento_marketdata_normalized_dbn_v3.status_action.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.status_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.status_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.status_action, range, value, display)

  return offset + length, value
end

-- Status Reason
databento_marketdata_normalized_dbn_v3.status_reason = {}

-- Size: Status Reason
databento_marketdata_normalized_dbn_v3.status_reason.size = 2

-- Display: Status Reason
databento_marketdata_normalized_dbn_v3.status_reason.labels = {
  [0] = "Status Reason: None (0)",
  [1] = "Status Reason: Scheduled (1)",
  [2] = "Status Reason: Surveillance Intervention (2)",
  [3] = "Status Reason: Market Event (3)",
  [4] = "Status Reason: Instrument Activation (4)",
  [5] = "Status Reason: Instrument Expiration (5)",
  [6] = "Status Reason: Recovery In Process (6)",
  [10] = "Status Reason: Regulatory (10)",
  [11] = "Status Reason: Administrative (11)",
  [12] = "Status Reason: Non Compliance (12)",
  [13] = "Status Reason: Filings Not Current (13)",
  [14] = "Status Reason: Sec Trading Suspension (14)",
  [15] = "Status Reason: New Issue (15)",
  [16] = "Status Reason: Issue Available (16)",
  [17] = "Status Reason: Issues Reviewed (17)",
  [18] = "Status Reason: Filing Reqs Satisfied (18)",
  [30] = "Status Reason: News Pending (30)",
  [31] = "Status Reason: News Released (31)",
  [32] = "Status Reason: News And Resumption Times (32)",
  [33] = "Status Reason: News Not Forthcoming (33)",
  [40] = "Status Reason: Order Imbalance (40)",
  [50] = "Status Reason: Luld Pause (50)",
  [60] = "Status Reason: Operational (60)",
  [70] = "Status Reason: Additional Information Requested (70)",
  [80] = "Status Reason: Merger Effective (80)",
  [90] = "Status Reason: Etf (90)",
  [100] = "Status Reason: Corporate Action (100)",
  [110] = "Status Reason: New Security Offering (110)",
  [120] = "Status Reason: Market Wide Halt Level1 (120)",
  [121] = "Status Reason: Market Wide Halt Level2 (121)",
  [122] = "Status Reason: Market Wide Halt Level3 (122)",
  [123] = "Status Reason: Market Wide Halt Carryover (123)",
  [124] = "Status Reason: Market Wide Halt Resumption (124)",
  [130] = "Status Reason: Quotation Not Available (130)",
}

databento_marketdata_normalized_dbn_v3.status_reason.display = function(value)
  return databento_marketdata_normalized_dbn_v3.status_reason.labels[value] or "Status Reason: Unknown("..value..")"
end

-- Dissect: Status Reason
databento_marketdata_normalized_dbn_v3.status_reason.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.status_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.status_reason, range, value, display)

  return offset + length, value
end

-- Strike Price
databento_marketdata_normalized_dbn_v3.strike_price = {}

-- Size: Strike Price
databento_marketdata_normalized_dbn_v3.strike_price.size = 8

-- Display: Strike Price
databento_marketdata_normalized_dbn_v3.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
databento_marketdata_normalized_dbn_v3.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Strike Price
databento_marketdata_normalized_dbn_v3.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.strike_price.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Price Currency
databento_marketdata_normalized_dbn_v3.strike_price_currency = {}

-- Size: Strike Price Currency
databento_marketdata_normalized_dbn_v3.strike_price_currency.size = 4

-- Display: Strike Price Currency
databento_marketdata_normalized_dbn_v3.strike_price_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strike Price Currency: No Value"
  end

  return "Strike Price Currency: "..value
end

-- Dissect: Strike Price Currency
databento_marketdata_normalized_dbn_v3.strike_price_currency.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.strike_price_currency.size
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

  local display = databento_marketdata_normalized_dbn_v3.strike_price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Stype In
databento_marketdata_normalized_dbn_v3.stype_in = {}

-- Size: Stype In
databento_marketdata_normalized_dbn_v3.stype_in.size = 1

-- Display: Stype In
databento_marketdata_normalized_dbn_v3.stype_in.display = function(value)
  if value == 0 then
    return "Stype In: Instrument Id (0)"
  end
  if value == 1 then
    return "Stype In: Raw Symbol (1)"
  end
  if value == 2 then
    return "Stype In: Smart (2)"
  end
  if value == 3 then
    return "Stype In: Continuous (3)"
  end
  if value == 4 then
    return "Stype In: Parent (4)"
  end
  if value == 5 then
    return "Stype In: Nasdaq Symbol (5)"
  end
  if value == 6 then
    return "Stype In: Cms Symbol (6)"
  end
  if value == 7 then
    return "Stype In: Isin (7)"
  end
  if value == 8 then
    return "Stype In: Us Code (8)"
  end
  if value == 9 then
    return "Stype In: Bbg Comp Id (9)"
  end
  if value == 10 then
    return "Stype In: Bbg Comp Ticker (10)"
  end
  if value == 11 then
    return "Stype In: Figi (11)"
  end
  if value == 12 then
    return "Stype In: Figi Ticker (12)"
  end
  if value == 13 then
    return "Stype In: Listing Id (13)"
  end
  if value == 14 then
    return "Stype In: Issuer Id (14)"
  end
  if value == 15 then
    return "Stype In: Security Id (15)"
  end
  if value == 255 then
    return "Stype In: No Value"
  end

  return "Stype In: Unknown("..value..")"
end

-- Dissect: Stype In
databento_marketdata_normalized_dbn_v3.stype_in.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.stype_in.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.stype_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.stype_in, range, value, display)

  return offset + length, value
end

-- Stype In Symbol
databento_marketdata_normalized_dbn_v3.stype_in_symbol = {}

-- Size: Stype In Symbol
databento_marketdata_normalized_dbn_v3.stype_in_symbol.size = 71

-- Display: Stype In Symbol
databento_marketdata_normalized_dbn_v3.stype_in_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Stype In Symbol: No Value"
  end

  return "Stype In Symbol: "..value
end

-- Dissect: Stype In Symbol
databento_marketdata_normalized_dbn_v3.stype_in_symbol.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.stype_in_symbol.size
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

  local display = databento_marketdata_normalized_dbn_v3.stype_in_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.stype_in_symbol, range, value, display)

  return offset + length, value
end

-- Stype Out
databento_marketdata_normalized_dbn_v3.stype_out = {}

-- Size: Stype Out
databento_marketdata_normalized_dbn_v3.stype_out.size = 1

-- Display: Stype Out
databento_marketdata_normalized_dbn_v3.stype_out.labels = {
  [0] = "Stype Out: Instrument Id (0)",
  [1] = "Stype Out: Raw Symbol (1)",
  [2] = "Stype Out: Smart (2)",
  [3] = "Stype Out: Continuous (3)",
  [4] = "Stype Out: Parent (4)",
  [5] = "Stype Out: Nasdaq Symbol (5)",
  [6] = "Stype Out: Cms Symbol (6)",
  [7] = "Stype Out: Isin (7)",
  [8] = "Stype Out: Us Code (8)",
  [9] = "Stype Out: Bbg Comp Id (9)",
  [10] = "Stype Out: Bbg Comp Ticker (10)",
  [11] = "Stype Out: Figi (11)",
  [12] = "Stype Out: Figi Ticker (12)",
  [13] = "Stype Out: Listing Id (13)",
  [14] = "Stype Out: Issuer Id (14)",
  [15] = "Stype Out: Security Id (15)",
}

databento_marketdata_normalized_dbn_v3.stype_out.display = function(value)
  return databento_marketdata_normalized_dbn_v3.stype_out.labels[value] or "Stype Out: Unknown("..value..")"
end

-- Dissect: Stype Out
databento_marketdata_normalized_dbn_v3.stype_out.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.stype_out.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.stype_out.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.stype_out, range, value, display)

  return offset + length, value
end

-- Stype Out Symbol
databento_marketdata_normalized_dbn_v3.stype_out_symbol = {}

-- Size: Stype Out Symbol
databento_marketdata_normalized_dbn_v3.stype_out_symbol.size = 71

-- Display: Stype Out Symbol
databento_marketdata_normalized_dbn_v3.stype_out_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Stype Out Symbol: No Value"
  end

  return "Stype Out Symbol: "..value
end

-- Dissect: Stype Out Symbol
databento_marketdata_normalized_dbn_v3.stype_out_symbol.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.stype_out_symbol.size
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

  local display = databento_marketdata_normalized_dbn_v3.stype_out_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.stype_out_symbol, range, value, display)

  return offset + length, value
end

-- Sub Fraction
databento_marketdata_normalized_dbn_v3.sub_fraction = {}

-- Size: Sub Fraction
databento_marketdata_normalized_dbn_v3.sub_fraction.size = 1

-- Display: Sub Fraction
databento_marketdata_normalized_dbn_v3.sub_fraction.display = function(value)
  return "Sub Fraction: "..value
end

-- Dissect: Sub Fraction
databento_marketdata_normalized_dbn_v3.sub_fraction.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.sub_fraction.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.sub_fraction.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.sub_fraction, range, value, display)

  return offset + length, value
end

-- Symbol
databento_marketdata_normalized_dbn_v3.symbol = {}

-- Size: Symbol
databento_marketdata_normalized_dbn_v3.symbol.size = 71

-- Display: Symbol
databento_marketdata_normalized_dbn_v3.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
databento_marketdata_normalized_dbn_v3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.symbol.size
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

  local display = databento_marketdata_normalized_dbn_v3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Cstr Len
databento_marketdata_normalized_dbn_v3.symbol_cstr_len = {}

-- Size: Symbol Cstr Len
databento_marketdata_normalized_dbn_v3.symbol_cstr_len.size = 2

-- Display: Symbol Cstr Len
databento_marketdata_normalized_dbn_v3.symbol_cstr_len.display = function(value)
  return "Symbol Cstr Len: "..value
end

-- Dissect: Symbol Cstr Len
databento_marketdata_normalized_dbn_v3.symbol_cstr_len.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.symbol_cstr_len.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.symbol_cstr_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.symbol_cstr_len, range, value, display)

  return offset + length, value
end

-- Symbols Count
databento_marketdata_normalized_dbn_v3.symbols_count = {}

-- Size: Symbols Count
databento_marketdata_normalized_dbn_v3.symbols_count.size = 4

-- Display: Symbols Count
databento_marketdata_normalized_dbn_v3.symbols_count.display = function(value)
  return "Symbols Count: "..value
end

-- Dissect: Symbols Count
databento_marketdata_normalized_dbn_v3.symbols_count.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.symbols_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.symbols_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.symbols_count, range, value, display)

  return offset + length, value
end

-- System Code
databento_marketdata_normalized_dbn_v3.system_code = {}

-- Size: System Code
databento_marketdata_normalized_dbn_v3.system_code.size = 1

-- Display: System Code
databento_marketdata_normalized_dbn_v3.system_code.labels = {
  [0] = "System Code: Heartbeat (0)",
  [1] = "System Code: Subscription Ack (1)",
  [2] = "System Code: Slow Reader Warning (2)",
  [3] = "System Code: Replay Completed (3)",
  [4] = "System Code: End Of Interval (4)",
  [5] = "System Code: Unsubscribe Ack (5)",
  [255] = "System Code: Unset (255)",
}

databento_marketdata_normalized_dbn_v3.system_code.display = function(value)
  return databento_marketdata_normalized_dbn_v3.system_code.labels[value] or "System Code: Unknown("..value..")"
end

-- Dissect: System Code
databento_marketdata_normalized_dbn_v3.system_code.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.system_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.system_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.system_code, range, value, display)

  return offset + length, value
end

-- Tick Rule
databento_marketdata_normalized_dbn_v3.tick_rule = {}

-- Size: Tick Rule
databento_marketdata_normalized_dbn_v3.tick_rule.size = 1

-- Display: Tick Rule
databento_marketdata_normalized_dbn_v3.tick_rule.display = function(value)
  return "Tick Rule: "..value
end

-- Dissect: Tick Rule
databento_marketdata_normalized_dbn_v3.tick_rule.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.tick_rule.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.tick_rule.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.tick_rule, range, value, display)

  return offset + length, value
end

-- Total Imbalance Qty
databento_marketdata_normalized_dbn_v3.total_imbalance_qty = {}

-- Size: Total Imbalance Qty
databento_marketdata_normalized_dbn_v3.total_imbalance_qty.size = 4

-- Display: Total Imbalance Qty
databento_marketdata_normalized_dbn_v3.total_imbalance_qty.display = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
databento_marketdata_normalized_dbn_v3.total_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.total_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.total_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Trading Event
databento_marketdata_normalized_dbn_v3.trading_event = {}

-- Size: Trading Event
databento_marketdata_normalized_dbn_v3.trading_event.size = 2

-- Display: Trading Event
databento_marketdata_normalized_dbn_v3.trading_event.labels = {
  [0] = "Trading Event: None (0)",
  [1] = "Trading Event: No Cancel (1)",
  [2] = "Trading Event: Change Trading Session (2)",
  [3] = "Trading Event: Implied Matching On (3)",
  [4] = "Trading Event: Implied Matching Off (4)",
}

databento_marketdata_normalized_dbn_v3.trading_event.display = function(value)
  return databento_marketdata_normalized_dbn_v3.trading_event.labels[value] or "Trading Event: Unknown("..value..")"
end

-- Dissect: Trading Event
databento_marketdata_normalized_dbn_v3.trading_event.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.trading_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.trading_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.trading_event, range, value, display)

  return offset + length, value
end

-- Ts Event
databento_marketdata_normalized_dbn_v3.ts_event = {}

-- Size: Ts Event
databento_marketdata_normalized_dbn_v3.ts_event.size = 8

-- Dissect: Ts Event
databento_marketdata_normalized_dbn_v3.ts_event.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ts_event.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_databento_marketdata_normalized_dbn_v3.fields.ts_event
  if databento_marketdata_normalized_dbn_v3.timestamp_format == 3 then field = omi_databento_marketdata_normalized_dbn_v3.fields.ts_event_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Ts Event: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ts In Delta
databento_marketdata_normalized_dbn_v3.ts_in_delta = {}

-- Size: Ts In Delta
databento_marketdata_normalized_dbn_v3.ts_in_delta.size = 4

-- Display: Ts In Delta
databento_marketdata_normalized_dbn_v3.ts_in_delta.display = function(value)
  return "Ts In Delta: "..value
end

-- Dissect: Ts In Delta
databento_marketdata_normalized_dbn_v3.ts_in_delta.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ts_in_delta.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = databento_marketdata_normalized_dbn_v3.ts_in_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.ts_in_delta, range, value, display)

  return offset + length, value
end

-- Ts Out
databento_marketdata_normalized_dbn_v3.ts_out = {}

-- Size: Ts Out
databento_marketdata_normalized_dbn_v3.ts_out.size = 1

-- Store: Ts Out
databento_marketdata_normalized_dbn_v3.ts_out.current = nil

-- Generated: Ts Out
databento_marketdata_normalized_dbn_v3.ts_out.generated = function(value, range, packet, parent)
  local display = databento_marketdata_normalized_dbn_v3.ts_out.display(value)
  local ts_out = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.ts_out, range, value, display)
  ts_out:set_generated()
end

-- Display: Ts Out
databento_marketdata_normalized_dbn_v3.ts_out.labels = {
  [0] = "Ts Out: No (0)",
  [1] = "Ts Out: Yes (1)",
}

databento_marketdata_normalized_dbn_v3.ts_out.display = function(value)
  return databento_marketdata_normalized_dbn_v3.ts_out.labels[value] or "Ts Out: Unknown("..value..")"
end

-- Dissect: Ts Out
databento_marketdata_normalized_dbn_v3.ts_out.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ts_out.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.ts_out.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.ts_out, range, value, display)

  return offset + length, value
end

-- Ts Out Time
databento_marketdata_normalized_dbn_v3.ts_out_time = {}

-- Size: Ts Out Time
databento_marketdata_normalized_dbn_v3.ts_out_time.size = 8

-- Dissect: Ts Out Time
databento_marketdata_normalized_dbn_v3.ts_out_time.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ts_out_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_databento_marketdata_normalized_dbn_v3.fields.ts_out_time
  if databento_marketdata_normalized_dbn_v3.timestamp_format == 3 then field = omi_databento_marketdata_normalized_dbn_v3.fields.ts_out_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ts Recv
databento_marketdata_normalized_dbn_v3.ts_recv = {}

-- Size: Ts Recv
databento_marketdata_normalized_dbn_v3.ts_recv.size = 8

-- Dissect: Ts Recv
databento_marketdata_normalized_dbn_v3.ts_recv.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ts_recv.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_databento_marketdata_normalized_dbn_v3.fields.ts_recv
  if databento_marketdata_normalized_dbn_v3.timestamp_format == 3 then field = omi_databento_marketdata_normalized_dbn_v3.fields.ts_recv_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Ts Recv: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Ts Ref
databento_marketdata_normalized_dbn_v3.ts_ref = {}

-- Size: Ts Ref
databento_marketdata_normalized_dbn_v3.ts_ref.size = 8

-- Dissect: Ts Ref
databento_marketdata_normalized_dbn_v3.ts_ref.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.ts_ref.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_databento_marketdata_normalized_dbn_v3.fields.ts_ref
  if databento_marketdata_normalized_dbn_v3.timestamp_format == 3 then field = omi_databento_marketdata_normalized_dbn_v3.fields.ts_ref_utc end

  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    -- Null: the field keeps its type, and the line says so instead
    local item = parent:add(field, range, NSTime.new(0, 0))
    item:set_text("Ts Ref: No Value")
    return offset + length, value
  end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Underlying
databento_marketdata_normalized_dbn_v3.underlying = {}

-- Size: Underlying
databento_marketdata_normalized_dbn_v3.underlying.size = 21

-- Display: Underlying
databento_marketdata_normalized_dbn_v3.underlying.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying: No Value"
  end

  return "Underlying: "..value
end

-- Dissect: Underlying
databento_marketdata_normalized_dbn_v3.underlying.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.underlying.size
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

  local display = databento_marketdata_normalized_dbn_v3.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.underlying, range, value, display)

  return offset + length, value
end

-- Underlying Id
databento_marketdata_normalized_dbn_v3.underlying_id = {}

-- Size: Underlying Id
databento_marketdata_normalized_dbn_v3.underlying_id.size = 4

-- Display: Underlying Id
databento_marketdata_normalized_dbn_v3.underlying_id.display = function(value)
  return "Underlying Id: "..value
end

-- Dissect: Underlying Id
databento_marketdata_normalized_dbn_v3.underlying_id.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.underlying_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.underlying_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.underlying_id, range, value, display)

  return offset + length, value
end

-- Underlying Product
databento_marketdata_normalized_dbn_v3.underlying_product = {}

-- Size: Underlying Product
databento_marketdata_normalized_dbn_v3.underlying_product.size = 1

-- Display: Underlying Product
databento_marketdata_normalized_dbn_v3.underlying_product.display = function(value)
  return "Underlying Product: "..value
end

-- Dissect: Underlying Product
databento_marketdata_normalized_dbn_v3.underlying_product.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.underlying_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.underlying_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.underlying_product, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
databento_marketdata_normalized_dbn_v3.unit_of_measure = {}

-- Size: Unit Of Measure
databento_marketdata_normalized_dbn_v3.unit_of_measure.size = 31

-- Display: Unit Of Measure
databento_marketdata_normalized_dbn_v3.unit_of_measure.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure: No Value"
  end

  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
databento_marketdata_normalized_dbn_v3.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.unit_of_measure.size
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

  local display = databento_marketdata_normalized_dbn_v3.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Unit Of Measure Qty
databento_marketdata_normalized_dbn_v3.unit_of_measure_qty = {}

-- Size: Unit Of Measure Qty
databento_marketdata_normalized_dbn_v3.unit_of_measure_qty.size = 8

-- Display: Unit Of Measure Qty
databento_marketdata_normalized_dbn_v3.unit_of_measure_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Unit Of Measure Qty: No Value"
  end

  return "Unit Of Measure Qty: "..value
end

-- Translate: Unit Of Measure Qty
databento_marketdata_normalized_dbn_v3.unit_of_measure_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Unit Of Measure Qty
databento_marketdata_normalized_dbn_v3.unit_of_measure_qty.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.unit_of_measure_qty.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.unit_of_measure_qty.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.unit_of_measure_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.unit_of_measure_qty, range, value, display)

  return offset + length, value
end

-- Unpaired Qty
databento_marketdata_normalized_dbn_v3.unpaired_qty = {}

-- Size: Unpaired Qty
databento_marketdata_normalized_dbn_v3.unpaired_qty.size = 4

-- Display: Unpaired Qty
databento_marketdata_normalized_dbn_v3.unpaired_qty.display = function(value)
  return "Unpaired Qty: "..value
end

-- Dissect: Unpaired Qty
databento_marketdata_normalized_dbn_v3.unpaired_qty.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.unpaired_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.unpaired_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.unpaired_qty, range, value, display)

  return offset + length, value
end

-- Unpaired Side
databento_marketdata_normalized_dbn_v3.unpaired_side = {}

-- Size: Unpaired Side
databento_marketdata_normalized_dbn_v3.unpaired_side.size = 1

-- Display: Unpaired Side
databento_marketdata_normalized_dbn_v3.unpaired_side.labels = {
  ["A"] = "Unpaired Side: Ask (A)",
  ["B"] = "Unpaired Side: Bid (B)",
  ["N"] = "Unpaired Side: None (N)",
}

databento_marketdata_normalized_dbn_v3.unpaired_side.display = function(value)
  return databento_marketdata_normalized_dbn_v3.unpaired_side.labels[value] or "Unpaired Side: Unknown("..value..")"
end

-- Dissect: Unpaired Side
databento_marketdata_normalized_dbn_v3.unpaired_side.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.unpaired_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.unpaired_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.unpaired_side, range, value, display)

  return offset + length, value
end

-- Update Action
databento_marketdata_normalized_dbn_v3.update_action = {}

-- Size: Update Action
databento_marketdata_normalized_dbn_v3.update_action.size = 1

-- Display: Update Action
databento_marketdata_normalized_dbn_v3.update_action.labels = {
  [1] = "Update Action: New (1)",
  [2] = "Update Action: Delete (2)",
}

databento_marketdata_normalized_dbn_v3.update_action.display = function(value)
  return databento_marketdata_normalized_dbn_v3.update_action.labels[value] or "Update Action: Unknown("..value..")"
end

-- Dissect: Update Action
databento_marketdata_normalized_dbn_v3.update_action.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.update_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.update_action, range, value, display)

  return offset + length, value
end

-- Upper Collar
databento_marketdata_normalized_dbn_v3.upper_collar = {}

-- Size: Upper Collar
databento_marketdata_normalized_dbn_v3.upper_collar.size = 8

-- Display: Upper Collar
databento_marketdata_normalized_dbn_v3.upper_collar.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Upper Collar: No Value"
  end

  return "Upper Collar: "..value
end

-- Translate: Upper Collar
databento_marketdata_normalized_dbn_v3.upper_collar.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/1000000000
end

-- Dissect: Upper Collar
databento_marketdata_normalized_dbn_v3.upper_collar.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.upper_collar.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = databento_marketdata_normalized_dbn_v3.upper_collar.translate(raw)
  local display = databento_marketdata_normalized_dbn_v3.upper_collar.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.upper_collar, range, value, display)

  return offset + length, value
end

-- User Defined Instrument
databento_marketdata_normalized_dbn_v3.user_defined_instrument = {}

-- Size: User Defined Instrument
databento_marketdata_normalized_dbn_v3.user_defined_instrument.size = 1

-- Display: User Defined Instrument
databento_marketdata_normalized_dbn_v3.user_defined_instrument.labels = {
  ["N"] = "User Defined Instrument: No (N)",
  ["Y"] = "User Defined Instrument: Yes (Y)",
}

databento_marketdata_normalized_dbn_v3.user_defined_instrument.display = function(value)
  return databento_marketdata_normalized_dbn_v3.user_defined_instrument.labels[value] or "User Defined Instrument: Unknown("..value..")"
end

-- Dissect: User Defined Instrument
databento_marketdata_normalized_dbn_v3.user_defined_instrument.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.user_defined_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = databento_marketdata_normalized_dbn_v3.user_defined_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.user_defined_instrument, range, value, display)

  return offset + length, value
end

-- Version
databento_marketdata_normalized_dbn_v3.version = {}

-- Size: Version
databento_marketdata_normalized_dbn_v3.version.size = 1

-- Display: Version
databento_marketdata_normalized_dbn_v3.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
databento_marketdata_normalized_dbn_v3.version.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = databento_marketdata_normalized_dbn_v3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.version, range, value, display)

  return offset + length, value
end

-- Volume
databento_marketdata_normalized_dbn_v3.volume = {}

-- Size: Volume
databento_marketdata_normalized_dbn_v3.volume.size = 8

-- Display: Volume
databento_marketdata_normalized_dbn_v3.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
databento_marketdata_normalized_dbn_v3.volume.dissect = function(buffer, offset, packet, parent)
  local length = databento_marketdata_normalized_dbn_v3.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = databento_marketdata_normalized_dbn_v3.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Databento MarketData Normalized Dbn 3
-----------------------------------------------------------------------

-- Control Message
databento_marketdata_normalized_dbn_v3.control_message = {}

-- Display: Control Message
databento_marketdata_normalized_dbn_v3.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
databento_marketdata_normalized_dbn_v3.control_message.fields = function(buffer, offset, packet, parent, size_of_control_message)
  local index = offset

  -- Control Fields: 0 Byte Ascii String
  index, control_fields = databento_marketdata_normalized_dbn_v3.control_fields.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Control Message
databento_marketdata_normalized_dbn_v3.control_message.dissect = function(buffer, offset, packet, parent, size_of_control_message)
  local index = offset + size_of_control_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.control_message, buffer(offset, 0))
    local current = databento_marketdata_normalized_dbn_v3.control_message.fields(buffer, offset, packet, parent, size_of_control_message)
    parent:set_len(size_of_control_message)
    local display = databento_marketdata_normalized_dbn_v3.control_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    databento_marketdata_normalized_dbn_v3.control_message.fields(buffer, offset, packet, parent, size_of_control_message)

    return index
  end
end

-- Remaining Bytes For: Control Message
local control_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- A message runs to the first terminator byte: scan for it
  local terminator = 10
  local current = 0
  while current < remaining and buffer(index + current, 1):uint() ~= terminator do
    current = current + 1
  end

  -- The terminator is not in the bytes available yet: ask for one more segment
  if current >= remaining then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- The message includes the terminator byte it ends on
  current = current + 1

  return remaining, current
end

-- Client Stream
databento_marketdata_normalized_dbn_v3.client_stream = {}

-- Verify required size of Tcp packet
databento_marketdata_normalized_dbn_v3.client_stream.requiredsize = function(buffer)
  return buffer:len() >= 1
end

-- Dissect Client Stream
databento_marketdata_normalized_dbn_v3.client_stream.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Control Message
  local end_of_payload = buffer:len()

  -- Control Message: Struct of 1 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_control_message = control_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_control_message):tvb()
      index = databento_marketdata_normalized_dbn_v3.control_message.dissect(frame, index, packet, parent, size_of_control_message)
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

-- Bid Ask Pair
databento_marketdata_normalized_dbn_v3.bid_ask_pair = {}

-- Size: Bid Ask Pair
databento_marketdata_normalized_dbn_v3.bid_ask_pair.size =
  databento_marketdata_normalized_dbn_v3.bid_px.size + 
  databento_marketdata_normalized_dbn_v3.ask_px.size + 
  databento_marketdata_normalized_dbn_v3.bid_sz.size + 
  databento_marketdata_normalized_dbn_v3.ask_sz.size + 
  databento_marketdata_normalized_dbn_v3.bid_ct.size + 
  databento_marketdata_normalized_dbn_v3.ask_ct.size

-- Display: Bid Ask Pair
databento_marketdata_normalized_dbn_v3.bid_ask_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Ask Pair
databento_marketdata_normalized_dbn_v3.bid_ask_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Px: i64
  index, bid_px = databento_marketdata_normalized_dbn_v3.bid_px.dissect(buffer, index, packet, parent)

  -- Ask Px: i64
  index, ask_px = databento_marketdata_normalized_dbn_v3.ask_px.dissect(buffer, index, packet, parent)

  -- Bid Sz: u32
  index, bid_sz = databento_marketdata_normalized_dbn_v3.bid_sz.dissect(buffer, index, packet, parent)

  -- Ask Sz: u32
  index, ask_sz = databento_marketdata_normalized_dbn_v3.ask_sz.dissect(buffer, index, packet, parent)

  -- Bid Ct: u32
  index, bid_ct = databento_marketdata_normalized_dbn_v3.bid_ct.dissect(buffer, index, packet, parent)

  -- Ask Ct: u32
  index, ask_ct = databento_marketdata_normalized_dbn_v3.ask_ct.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Ask Pair
databento_marketdata_normalized_dbn_v3.bid_ask_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.bid_ask_pair, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.bid_ask_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.bid_ask_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.bid_ask_pair.fields(buffer, offset, packet, parent)
  end
end

-- Flags
databento_marketdata_normalized_dbn_v3.flags = {}

-- Size: Flags
databento_marketdata_normalized_dbn_v3.flags.size = 1

-- Display: Flags
databento_marketdata_normalized_dbn_v3.flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Reserved Flag flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Reserved Flag"
  end
  -- Is Publisher Specific flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Publisher Specific"
  end
  -- Is Maybe Bad Book flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Maybe Bad Book"
  end
  -- Is Bad Ts Recv flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Bad Ts Recv"
  end
  -- Is Mbp flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Mbp"
  end
  -- Is Snapshot flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Snapshot"
  end
  -- Is Tob flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Tob"
  end
  -- Is Last flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Last"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags
databento_marketdata_normalized_dbn_v3.flags.bits = function(range, value, packet, parent)

  -- Reserved Flag: bit
  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.reserved_flag, range, value)

  -- Publisher Specific: bit
  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.publisher_specific, range, value)

  -- Maybe Bad Book: bit
  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.maybe_bad_book, range, value)

  -- Bad Ts Recv: bit
  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.bad_ts_recv, range, value)

  -- Mbp: bit
  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.mbp, range, value)

  -- Snapshot: bit
  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.snapshot, range, value)

  -- Tob: bit
  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.tob, range, value)

  -- Last: bit
  parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.last, range, value)
end

-- Dissect: Flags
databento_marketdata_normalized_dbn_v3.flags.dissect = function(buffer, offset, packet, parent)
  local size = databento_marketdata_normalized_dbn_v3.flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = databento_marketdata_normalized_dbn_v3.flags.display(range, value, packet, parent)
  local element = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.flags, range, display)

  if show.structs then
    databento_marketdata_normalized_dbn_v3.flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Bbo Msg
databento_marketdata_normalized_dbn_v3.bbo_msg = {}

-- Size: Bbo Msg
databento_marketdata_normalized_dbn_v3.bbo_msg.size =
  databento_marketdata_normalized_dbn_v3.price.size + 
  databento_marketdata_normalized_dbn_v3.size.size + 
  databento_marketdata_normalized_dbn_v3.reserved_1.size + 
  databento_marketdata_normalized_dbn_v3.side.size + 
  databento_marketdata_normalized_dbn_v3.flags.size + 
  databento_marketdata_normalized_dbn_v3.second_reserved_1.size + 
  databento_marketdata_normalized_dbn_v3.ts_recv.size + 
  databento_marketdata_normalized_dbn_v3.reserved_4.size + 
  databento_marketdata_normalized_dbn_v3.sequence.size + 
  databento_marketdata_normalized_dbn_v3.bid_ask_pair.size

-- Display: Bbo Msg
databento_marketdata_normalized_dbn_v3.bbo_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bbo Msg
databento_marketdata_normalized_dbn_v3.bbo_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: i64
  index, price = databento_marketdata_normalized_dbn_v3.price.dissect(buffer, index, packet, parent)

  -- Size: u32
  index, size = databento_marketdata_normalized_dbn_v3.size.dissect(buffer, index, packet, parent)

  -- Reserved 1: [u8; 1]
  if show.padding then
    index, reserved_1 = databento_marketdata_normalized_dbn_v3.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.reserved_1.size
  end

  -- Side: c_char
  index, side = databento_marketdata_normalized_dbn_v3.side.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 8 fields
  index, flags = databento_marketdata_normalized_dbn_v3.flags.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: [u8; 1]
  if show.padding then
    index, second_reserved_1 = databento_marketdata_normalized_dbn_v3.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.second_reserved_1.size
  end

  -- Ts Recv: u64
  index, ts_recv = databento_marketdata_normalized_dbn_v3.ts_recv.dissect(buffer, index, packet, parent)

  -- Reserved 4: [u8; 4]
  if show.padding then
    index, reserved_4 = databento_marketdata_normalized_dbn_v3.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.reserved_4.size
  end

  -- Sequence: u32
  index, sequence = databento_marketdata_normalized_dbn_v3.sequence.dissect(buffer, index, packet, parent)

  -- Bid Ask Pair: Struct of 6 fields
  index, bid_ask_pair = databento_marketdata_normalized_dbn_v3.bid_ask_pair.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bbo Msg
databento_marketdata_normalized_dbn_v3.bbo_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.bbo_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.bbo_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.bbo_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.bbo_msg.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Bid Ask Pair
databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair = {}

-- Size: Consolidated Bid Ask Pair
databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair.size =
  databento_marketdata_normalized_dbn_v3.bid_px.size + 
  databento_marketdata_normalized_dbn_v3.ask_px.size + 
  databento_marketdata_normalized_dbn_v3.bid_sz.size + 
  databento_marketdata_normalized_dbn_v3.ask_sz.size + 
  databento_marketdata_normalized_dbn_v3.bid_pb.size + 
  databento_marketdata_normalized_dbn_v3.reserved_2.size + 
  databento_marketdata_normalized_dbn_v3.ask_pb.size + 
  databento_marketdata_normalized_dbn_v3.second_reserved_2.size

-- Display: Consolidated Bid Ask Pair
databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Bid Ask Pair
databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Px: i64
  index, bid_px = databento_marketdata_normalized_dbn_v3.bid_px.dissect(buffer, index, packet, parent)

  -- Ask Px: i64
  index, ask_px = databento_marketdata_normalized_dbn_v3.ask_px.dissect(buffer, index, packet, parent)

  -- Bid Sz: u32
  index, bid_sz = databento_marketdata_normalized_dbn_v3.bid_sz.dissect(buffer, index, packet, parent)

  -- Ask Sz: u32
  index, ask_sz = databento_marketdata_normalized_dbn_v3.ask_sz.dissect(buffer, index, packet, parent)

  -- Bid Pb: u16
  index, bid_pb = databento_marketdata_normalized_dbn_v3.bid_pb.dissect(buffer, index, packet, parent)

  -- Reserved 2: [u8; 2]
  if show.padding then
    index, reserved_2 = databento_marketdata_normalized_dbn_v3.reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.reserved_2.size
  end

  -- Ask Pb: u16
  index, ask_pb = databento_marketdata_normalized_dbn_v3.ask_pb.dissect(buffer, index, packet, parent)

  -- Second Reserved 2: [u8; 2]
  if show.padding then
    index, second_reserved_2 = databento_marketdata_normalized_dbn_v3.second_reserved_2.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.second_reserved_2.size
  end

  return index
end

-- Dissect: Consolidated Bid Ask Pair
databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.consolidated_bid_ask_pair, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair.fields(buffer, offset, packet, parent)
  end
end

-- Cbbo Msg
databento_marketdata_normalized_dbn_v3.cbbo_msg = {}

-- Size: Cbbo Msg
databento_marketdata_normalized_dbn_v3.cbbo_msg.size =
  databento_marketdata_normalized_dbn_v3.price.size + 
  databento_marketdata_normalized_dbn_v3.size.size + 
  databento_marketdata_normalized_dbn_v3.reserved_1.size + 
  databento_marketdata_normalized_dbn_v3.side.size + 
  databento_marketdata_normalized_dbn_v3.flags.size + 
  databento_marketdata_normalized_dbn_v3.second_reserved_1.size + 
  databento_marketdata_normalized_dbn_v3.ts_recv.size + 
  databento_marketdata_normalized_dbn_v3.reserved_8.size + 
  databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair.size

-- Display: Cbbo Msg
databento_marketdata_normalized_dbn_v3.cbbo_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cbbo Msg
databento_marketdata_normalized_dbn_v3.cbbo_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: i64
  index, price = databento_marketdata_normalized_dbn_v3.price.dissect(buffer, index, packet, parent)

  -- Size: u32
  index, size = databento_marketdata_normalized_dbn_v3.size.dissect(buffer, index, packet, parent)

  -- Reserved 1: [u8; 1]
  if show.padding then
    index, reserved_1 = databento_marketdata_normalized_dbn_v3.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.reserved_1.size
  end

  -- Side: c_char
  index, side = databento_marketdata_normalized_dbn_v3.side.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 8 fields
  index, flags = databento_marketdata_normalized_dbn_v3.flags.dissect(buffer, index, packet, parent)

  -- Second Reserved 1: [u8; 1]
  if show.padding then
    index, second_reserved_1 = databento_marketdata_normalized_dbn_v3.second_reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.second_reserved_1.size
  end

  -- Ts Recv: u64
  index, ts_recv = databento_marketdata_normalized_dbn_v3.ts_recv.dissect(buffer, index, packet, parent)

  -- Reserved 8: [u8; 8]
  if show.padding then
    index, reserved_8 = databento_marketdata_normalized_dbn_v3.reserved_8.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.reserved_8.size
  end

  -- Consolidated Bid Ask Pair: Struct of 8 fields
  index, consolidated_bid_ask_pair = databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cbbo Msg
databento_marketdata_normalized_dbn_v3.cbbo_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.cbbo_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.cbbo_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.cbbo_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.cbbo_msg.fields(buffer, offset, packet, parent)
  end
end

-- Cmbp 1 Msg
databento_marketdata_normalized_dbn_v3.cmbp_1_msg = {}

-- Size: Cmbp 1 Msg
databento_marketdata_normalized_dbn_v3.cmbp_1_msg.size =
  databento_marketdata_normalized_dbn_v3.price.size + 
  databento_marketdata_normalized_dbn_v3.size.size + 
  databento_marketdata_normalized_dbn_v3.action.size + 
  databento_marketdata_normalized_dbn_v3.side.size + 
  databento_marketdata_normalized_dbn_v3.flags.size + 
  databento_marketdata_normalized_dbn_v3.reserved_1.size + 
  databento_marketdata_normalized_dbn_v3.ts_recv.size + 
  databento_marketdata_normalized_dbn_v3.ts_in_delta.size + 
  databento_marketdata_normalized_dbn_v3.reserved_4.size + 
  databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair.size

-- Display: Cmbp 1 Msg
databento_marketdata_normalized_dbn_v3.cmbp_1_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cmbp 1 Msg
databento_marketdata_normalized_dbn_v3.cmbp_1_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: i64
  index, price = databento_marketdata_normalized_dbn_v3.price.dissect(buffer, index, packet, parent)

  -- Size: u32
  index, size = databento_marketdata_normalized_dbn_v3.size.dissect(buffer, index, packet, parent)

  -- Action: c_char
  index, action = databento_marketdata_normalized_dbn_v3.action.dissect(buffer, index, packet, parent)

  -- Side: c_char
  index, side = databento_marketdata_normalized_dbn_v3.side.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 8 fields
  index, flags = databento_marketdata_normalized_dbn_v3.flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: [u8; 1]
  if show.padding then
    index, reserved_1 = databento_marketdata_normalized_dbn_v3.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.reserved_1.size
  end

  -- Ts Recv: u64
  index, ts_recv = databento_marketdata_normalized_dbn_v3.ts_recv.dissect(buffer, index, packet, parent)

  -- Ts In Delta: i32
  index, ts_in_delta = databento_marketdata_normalized_dbn_v3.ts_in_delta.dissect(buffer, index, packet, parent)

  -- Reserved 4: [u8; 4]
  if show.padding then
    index, reserved_4 = databento_marketdata_normalized_dbn_v3.reserved_4.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.reserved_4.size
  end

  -- Consolidated Bid Ask Pair: Struct of 8 fields
  index, consolidated_bid_ask_pair = databento_marketdata_normalized_dbn_v3.consolidated_bid_ask_pair.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cmbp 1 Msg
databento_marketdata_normalized_dbn_v3.cmbp_1_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.cmbp_1_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.cmbp_1_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.cmbp_1_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.cmbp_1_msg.fields(buffer, offset, packet, parent)
  end
end

-- Mbo Msg
databento_marketdata_normalized_dbn_v3.mbo_msg = {}

-- Size: Mbo Msg
databento_marketdata_normalized_dbn_v3.mbo_msg.size =
  databento_marketdata_normalized_dbn_v3.order_id.size + 
  databento_marketdata_normalized_dbn_v3.price.size + 
  databento_marketdata_normalized_dbn_v3.size.size + 
  databento_marketdata_normalized_dbn_v3.flags.size + 
  databento_marketdata_normalized_dbn_v3.channel_id.size + 
  databento_marketdata_normalized_dbn_v3.action.size + 
  databento_marketdata_normalized_dbn_v3.side.size + 
  databento_marketdata_normalized_dbn_v3.ts_recv.size + 
  databento_marketdata_normalized_dbn_v3.ts_in_delta.size + 
  databento_marketdata_normalized_dbn_v3.sequence.size

-- Display: Mbo Msg
databento_marketdata_normalized_dbn_v3.mbo_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbo Msg
databento_marketdata_normalized_dbn_v3.mbo_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: u64
  index, order_id = databento_marketdata_normalized_dbn_v3.order_id.dissect(buffer, index, packet, parent)

  -- Price: i64
  index, price = databento_marketdata_normalized_dbn_v3.price.dissect(buffer, index, packet, parent)

  -- Size: u32
  index, size = databento_marketdata_normalized_dbn_v3.size.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 8 fields
  index, flags = databento_marketdata_normalized_dbn_v3.flags.dissect(buffer, index, packet, parent)

  -- Channel Id: u8
  index, channel_id = databento_marketdata_normalized_dbn_v3.channel_id.dissect(buffer, index, packet, parent)

  -- Action: c_char
  index, action = databento_marketdata_normalized_dbn_v3.action.dissect(buffer, index, packet, parent)

  -- Side: c_char
  index, side = databento_marketdata_normalized_dbn_v3.side.dissect(buffer, index, packet, parent)

  -- Ts Recv: u64
  index, ts_recv = databento_marketdata_normalized_dbn_v3.ts_recv.dissect(buffer, index, packet, parent)

  -- Ts In Delta: i32
  index, ts_in_delta = databento_marketdata_normalized_dbn_v3.ts_in_delta.dissect(buffer, index, packet, parent)

  -- Sequence: u32
  index, sequence = databento_marketdata_normalized_dbn_v3.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbo Msg
databento_marketdata_normalized_dbn_v3.mbo_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.mbo_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.mbo_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.mbo_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.mbo_msg.fields(buffer, offset, packet, parent)
  end
end

-- Stat Msg
databento_marketdata_normalized_dbn_v3.stat_msg = {}

-- Size: Stat Msg
databento_marketdata_normalized_dbn_v3.stat_msg.size =
  databento_marketdata_normalized_dbn_v3.ts_recv.size + 
  databento_marketdata_normalized_dbn_v3.ts_ref.size + 
  databento_marketdata_normalized_dbn_v3.price.size + 
  databento_marketdata_normalized_dbn_v3.quantity.size + 
  databento_marketdata_normalized_dbn_v3.sequence.size + 
  databento_marketdata_normalized_dbn_v3.ts_in_delta.size + 
  databento_marketdata_normalized_dbn_v3.stat_type.size + 
  databento_marketdata_normalized_dbn_v3.channel.size + 
  databento_marketdata_normalized_dbn_v3.update_action.size + 
  databento_marketdata_normalized_dbn_v3.stat_flags.size + 
  databento_marketdata_normalized_dbn_v3.reserved_18.size

-- Display: Stat Msg
databento_marketdata_normalized_dbn_v3.stat_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stat Msg
databento_marketdata_normalized_dbn_v3.stat_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ts Recv: u64
  index, ts_recv = databento_marketdata_normalized_dbn_v3.ts_recv.dissect(buffer, index, packet, parent)

  -- Ts Ref: u64
  index, ts_ref = databento_marketdata_normalized_dbn_v3.ts_ref.dissect(buffer, index, packet, parent)

  -- Price: i64
  index, price = databento_marketdata_normalized_dbn_v3.price.dissect(buffer, index, packet, parent)

  -- Quantity: i64
  index, quantity = databento_marketdata_normalized_dbn_v3.quantity.dissect(buffer, index, packet, parent)

  -- Sequence: u32
  index, sequence = databento_marketdata_normalized_dbn_v3.sequence.dissect(buffer, index, packet, parent)

  -- Ts In Delta: i32
  index, ts_in_delta = databento_marketdata_normalized_dbn_v3.ts_in_delta.dissect(buffer, index, packet, parent)

  -- Stat Type: u16
  index, stat_type = databento_marketdata_normalized_dbn_v3.stat_type.dissect(buffer, index, packet, parent)

  -- Channel: u16
  index, channel = databento_marketdata_normalized_dbn_v3.channel.dissect(buffer, index, packet, parent)

  -- Update Action: u8
  index, update_action = databento_marketdata_normalized_dbn_v3.update_action.dissect(buffer, index, packet, parent)

  -- Stat Flags: u8
  index, stat_flags = databento_marketdata_normalized_dbn_v3.stat_flags.dissect(buffer, index, packet, parent)

  -- Reserved 18: [u8; 18]
  if show.padding then
    index, reserved_18 = databento_marketdata_normalized_dbn_v3.reserved_18.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.reserved_18.size
  end

  return index
end

-- Dissect: Stat Msg
databento_marketdata_normalized_dbn_v3.stat_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.stat_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.stat_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.stat_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.stat_msg.fields(buffer, offset, packet, parent)
  end
end

-- System Msg
databento_marketdata_normalized_dbn_v3.system_msg = {}

-- Size: System Msg
databento_marketdata_normalized_dbn_v3.system_msg.size =
  databento_marketdata_normalized_dbn_v3.msg.size + 
  databento_marketdata_normalized_dbn_v3.system_code.size

-- Display: System Msg
databento_marketdata_normalized_dbn_v3.system_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Msg
databento_marketdata_normalized_dbn_v3.system_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg: [c_char; 303]
  index, msg = databento_marketdata_normalized_dbn_v3.msg.dissect(buffer, index, packet, parent)

  -- System Code: u8
  index, system_code = databento_marketdata_normalized_dbn_v3.system_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Msg
databento_marketdata_normalized_dbn_v3.system_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.system_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.system_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.system_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.system_msg.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Msg
databento_marketdata_normalized_dbn_v3.symbol_mapping_msg = {}

-- Size: Symbol Mapping Msg
databento_marketdata_normalized_dbn_v3.symbol_mapping_msg.size =
  databento_marketdata_normalized_dbn_v3.stype_in.size + 
  databento_marketdata_normalized_dbn_v3.stype_in_symbol.size + 
  databento_marketdata_normalized_dbn_v3.stype_out.size + 
  databento_marketdata_normalized_dbn_v3.stype_out_symbol.size + 
  databento_marketdata_normalized_dbn_v3.start_ts.size + 
  databento_marketdata_normalized_dbn_v3.end_ts.size

-- Display: Symbol Mapping Msg
databento_marketdata_normalized_dbn_v3.symbol_mapping_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Msg
databento_marketdata_normalized_dbn_v3.symbol_mapping_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stype In: u8
  index, stype_in = databento_marketdata_normalized_dbn_v3.stype_in.dissect(buffer, index, packet, parent)

  -- Stype In Symbol: [c_char; 71]
  index, stype_in_symbol = databento_marketdata_normalized_dbn_v3.stype_in_symbol.dissect(buffer, index, packet, parent)

  -- Stype Out: u8
  index, stype_out = databento_marketdata_normalized_dbn_v3.stype_out.dissect(buffer, index, packet, parent)

  -- Stype Out Symbol: [c_char; 71]
  index, stype_out_symbol = databento_marketdata_normalized_dbn_v3.stype_out_symbol.dissect(buffer, index, packet, parent)

  -- Start Ts: u64
  index, start_ts = databento_marketdata_normalized_dbn_v3.start_ts.dissect(buffer, index, packet, parent)

  -- End Ts: u64
  index, end_ts = databento_marketdata_normalized_dbn_v3.end_ts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Msg
databento_marketdata_normalized_dbn_v3.symbol_mapping_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.symbol_mapping_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.symbol_mapping_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.symbol_mapping_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.symbol_mapping_msg.fields(buffer, offset, packet, parent)
  end
end

-- Error Msg
databento_marketdata_normalized_dbn_v3.error_msg = {}

-- Size: Error Msg
databento_marketdata_normalized_dbn_v3.error_msg.size =
  databento_marketdata_normalized_dbn_v3.err.size + 
  databento_marketdata_normalized_dbn_v3.error_code.size + 
  databento_marketdata_normalized_dbn_v3.is_last.size

-- Display: Error Msg
databento_marketdata_normalized_dbn_v3.error_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Msg
databento_marketdata_normalized_dbn_v3.error_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Err: [c_char; 302]
  index, err = databento_marketdata_normalized_dbn_v3.err.dissect(buffer, index, packet, parent)

  -- Error Code: u8
  index, error_code = databento_marketdata_normalized_dbn_v3.error_code.dissect(buffer, index, packet, parent)

  -- Is Last: u8
  index, is_last = databento_marketdata_normalized_dbn_v3.is_last.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Msg
databento_marketdata_normalized_dbn_v3.error_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.error_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.error_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.error_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.error_msg.fields(buffer, offset, packet, parent)
  end
end

-- Imbalance Msg
databento_marketdata_normalized_dbn_v3.imbalance_msg = {}

-- Size: Imbalance Msg
databento_marketdata_normalized_dbn_v3.imbalance_msg.size =
  databento_marketdata_normalized_dbn_v3.ts_recv.size + 
  databento_marketdata_normalized_dbn_v3.ref_price.size + 
  databento_marketdata_normalized_dbn_v3.auction_time.size + 
  databento_marketdata_normalized_dbn_v3.cont_book_clr_price.size + 
  databento_marketdata_normalized_dbn_v3.auct_interest_clr_price.size + 
  databento_marketdata_normalized_dbn_v3.ssr_filling_price.size + 
  databento_marketdata_normalized_dbn_v3.ind_match_price.size + 
  databento_marketdata_normalized_dbn_v3.upper_collar.size + 
  databento_marketdata_normalized_dbn_v3.lower_collar.size + 
  databento_marketdata_normalized_dbn_v3.paired_qty.size + 
  databento_marketdata_normalized_dbn_v3.total_imbalance_qty.size + 
  databento_marketdata_normalized_dbn_v3.market_imbalance_qty.size + 
  databento_marketdata_normalized_dbn_v3.unpaired_qty.size + 
  databento_marketdata_normalized_dbn_v3.auction_type.size + 
  databento_marketdata_normalized_dbn_v3.side.size + 
  databento_marketdata_normalized_dbn_v3.auction_status.size + 
  databento_marketdata_normalized_dbn_v3.freeze_status.size + 
  databento_marketdata_normalized_dbn_v3.num_extensions.size + 
  databento_marketdata_normalized_dbn_v3.unpaired_side.size + 
  databento_marketdata_normalized_dbn_v3.significant_imbalance.size + 
  databento_marketdata_normalized_dbn_v3.reserved_1.size

-- Display: Imbalance Msg
databento_marketdata_normalized_dbn_v3.imbalance_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Imbalance Msg
databento_marketdata_normalized_dbn_v3.imbalance_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ts Recv: u64
  index, ts_recv = databento_marketdata_normalized_dbn_v3.ts_recv.dissect(buffer, index, packet, parent)

  -- Ref Price: i64
  index, ref_price = databento_marketdata_normalized_dbn_v3.ref_price.dissect(buffer, index, packet, parent)

  -- Auction Time: u64
  index, auction_time = databento_marketdata_normalized_dbn_v3.auction_time.dissect(buffer, index, packet, parent)

  -- Cont Book Clr Price: i64
  index, cont_book_clr_price = databento_marketdata_normalized_dbn_v3.cont_book_clr_price.dissect(buffer, index, packet, parent)

  -- Auct Interest Clr Price: i64
  index, auct_interest_clr_price = databento_marketdata_normalized_dbn_v3.auct_interest_clr_price.dissect(buffer, index, packet, parent)

  -- Ssr Filling Price: i64
  index, ssr_filling_price = databento_marketdata_normalized_dbn_v3.ssr_filling_price.dissect(buffer, index, packet, parent)

  -- Ind Match Price: i64
  index, ind_match_price = databento_marketdata_normalized_dbn_v3.ind_match_price.dissect(buffer, index, packet, parent)

  -- Upper Collar: i64
  index, upper_collar = databento_marketdata_normalized_dbn_v3.upper_collar.dissect(buffer, index, packet, parent)

  -- Lower Collar: i64
  index, lower_collar = databento_marketdata_normalized_dbn_v3.lower_collar.dissect(buffer, index, packet, parent)

  -- Paired Qty: u32
  index, paired_qty = databento_marketdata_normalized_dbn_v3.paired_qty.dissect(buffer, index, packet, parent)

  -- Total Imbalance Qty: u32
  index, total_imbalance_qty = databento_marketdata_normalized_dbn_v3.total_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Market Imbalance Qty: u32
  index, market_imbalance_qty = databento_marketdata_normalized_dbn_v3.market_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Unpaired Qty: u32
  index, unpaired_qty = databento_marketdata_normalized_dbn_v3.unpaired_qty.dissect(buffer, index, packet, parent)

  -- Auction Type: c_char
  index, auction_type = databento_marketdata_normalized_dbn_v3.auction_type.dissect(buffer, index, packet, parent)

  -- Side: c_char
  index, side = databento_marketdata_normalized_dbn_v3.side.dissect(buffer, index, packet, parent)

  -- Auction Status: u8
  index, auction_status = databento_marketdata_normalized_dbn_v3.auction_status.dissect(buffer, index, packet, parent)

  -- Freeze Status: u8
  index, freeze_status = databento_marketdata_normalized_dbn_v3.freeze_status.dissect(buffer, index, packet, parent)

  -- Num Extensions: u8
  index, num_extensions = databento_marketdata_normalized_dbn_v3.num_extensions.dissect(buffer, index, packet, parent)

  -- Unpaired Side: c_char
  index, unpaired_side = databento_marketdata_normalized_dbn_v3.unpaired_side.dissect(buffer, index, packet, parent)

  -- Significant Imbalance: c_char
  index, significant_imbalance = databento_marketdata_normalized_dbn_v3.significant_imbalance.dissect(buffer, index, packet, parent)

  -- Reserved 1: [u8; 1]
  if show.padding then
    index, reserved_1 = databento_marketdata_normalized_dbn_v3.reserved_1.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.reserved_1.size
  end

  return index
end

-- Dissect: Imbalance Msg
databento_marketdata_normalized_dbn_v3.imbalance_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.imbalance_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.imbalance_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.imbalance_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.imbalance_msg.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Def Msg
databento_marketdata_normalized_dbn_v3.instrument_def_msg = {}

-- Size: Instrument Def Msg
databento_marketdata_normalized_dbn_v3.instrument_def_msg.size =
  databento_marketdata_normalized_dbn_v3.ts_recv.size + 
  databento_marketdata_normalized_dbn_v3.min_price_increment.size + 
  databento_marketdata_normalized_dbn_v3.display_factor.size + 
  databento_marketdata_normalized_dbn_v3.expiration.size + 
  databento_marketdata_normalized_dbn_v3.activation.size + 
  databento_marketdata_normalized_dbn_v3.high_limit_price.size + 
  databento_marketdata_normalized_dbn_v3.low_limit_price.size + 
  databento_marketdata_normalized_dbn_v3.max_price_variation.size + 
  databento_marketdata_normalized_dbn_v3.unit_of_measure_qty.size + 
  databento_marketdata_normalized_dbn_v3.min_price_increment_amount.size + 
  databento_marketdata_normalized_dbn_v3.price_ratio.size + 
  databento_marketdata_normalized_dbn_v3.strike_price.size + 
  databento_marketdata_normalized_dbn_v3.raw_instrument_id.size + 
  databento_marketdata_normalized_dbn_v3.leg_price.size + 
  databento_marketdata_normalized_dbn_v3.leg_delta.size + 
  databento_marketdata_normalized_dbn_v3.inst_attrib_value.size + 
  databento_marketdata_normalized_dbn_v3.underlying_id.size + 
  databento_marketdata_normalized_dbn_v3.market_depth_implied.size + 
  databento_marketdata_normalized_dbn_v3.market_depth.size + 
  databento_marketdata_normalized_dbn_v3.market_segment_id.size + 
  databento_marketdata_normalized_dbn_v3.max_trade_vol.size + 
  databento_marketdata_normalized_dbn_v3.min_lot_size.size + 
  databento_marketdata_normalized_dbn_v3.min_lot_size_block.size + 
  databento_marketdata_normalized_dbn_v3.min_lot_size_round_lot.size + 
  databento_marketdata_normalized_dbn_v3.min_trade_vol.size + 
  databento_marketdata_normalized_dbn_v3.contract_multiplier.size + 
  databento_marketdata_normalized_dbn_v3.decay_quantity.size + 
  databento_marketdata_normalized_dbn_v3.original_contract_size.size + 
  databento_marketdata_normalized_dbn_v3.leg_instrument_id.size + 
  databento_marketdata_normalized_dbn_v3.leg_ratio_price_numerator.size + 
  databento_marketdata_normalized_dbn_v3.leg_ratio_price_denominator.size + 
  databento_marketdata_normalized_dbn_v3.leg_ratio_qty_numerator.size + 
  databento_marketdata_normalized_dbn_v3.leg_ratio_qty_denominator.size + 
  databento_marketdata_normalized_dbn_v3.leg_underlying_id.size + 
  databento_marketdata_normalized_dbn_v3.appl_id.size + 
  databento_marketdata_normalized_dbn_v3.maturity_year.size + 
  databento_marketdata_normalized_dbn_v3.decay_start_date.size + 
  databento_marketdata_normalized_dbn_v3.channel.size + 
  databento_marketdata_normalized_dbn_v3.leg_count.size + 
  databento_marketdata_normalized_dbn_v3.leg_index.size + 
  databento_marketdata_normalized_dbn_v3.currency.size + 
  databento_marketdata_normalized_dbn_v3.settl_currency.size + 
  databento_marketdata_normalized_dbn_v3.secsubtype.size + 
  databento_marketdata_normalized_dbn_v3.raw_symbol.size + 
  databento_marketdata_normalized_dbn_v3.group.size + 
  databento_marketdata_normalized_dbn_v3.exchange.size + 
  databento_marketdata_normalized_dbn_v3.asset.size + 
  databento_marketdata_normalized_dbn_v3.cfi.size + 
  databento_marketdata_normalized_dbn_v3.security_type.size + 
  databento_marketdata_normalized_dbn_v3.unit_of_measure.size + 
  databento_marketdata_normalized_dbn_v3.underlying.size + 
  databento_marketdata_normalized_dbn_v3.strike_price_currency.size + 
  databento_marketdata_normalized_dbn_v3.leg_raw_symbol.size + 
  databento_marketdata_normalized_dbn_v3.instrument_class.size + 
  databento_marketdata_normalized_dbn_v3.match_algorithm.size + 
  databento_marketdata_normalized_dbn_v3.main_fraction.size + 
  databento_marketdata_normalized_dbn_v3.price_display_format.size + 
  databento_marketdata_normalized_dbn_v3.sub_fraction.size + 
  databento_marketdata_normalized_dbn_v3.underlying_product.size + 
  databento_marketdata_normalized_dbn_v3.security_update_action.size + 
  databento_marketdata_normalized_dbn_v3.maturity_month.size + 
  databento_marketdata_normalized_dbn_v3.maturity_day.size + 
  databento_marketdata_normalized_dbn_v3.maturity_week.size + 
  databento_marketdata_normalized_dbn_v3.user_defined_instrument.size + 
  databento_marketdata_normalized_dbn_v3.contract_multiplier_unit.size + 
  databento_marketdata_normalized_dbn_v3.flow_schedule_type.size + 
  databento_marketdata_normalized_dbn_v3.tick_rule.size + 
  databento_marketdata_normalized_dbn_v3.leg_instrument_class.size + 
  databento_marketdata_normalized_dbn_v3.leg_side.size + 
  databento_marketdata_normalized_dbn_v3.reserved_17.size

-- Display: Instrument Def Msg
databento_marketdata_normalized_dbn_v3.instrument_def_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Def Msg
databento_marketdata_normalized_dbn_v3.instrument_def_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ts Recv: u64
  index, ts_recv = databento_marketdata_normalized_dbn_v3.ts_recv.dissect(buffer, index, packet, parent)

  -- Min Price Increment: i64
  index, min_price_increment = databento_marketdata_normalized_dbn_v3.min_price_increment.dissect(buffer, index, packet, parent)

  -- Display Factor: i64
  index, display_factor = databento_marketdata_normalized_dbn_v3.display_factor.dissect(buffer, index, packet, parent)

  -- Expiration: u64
  index, expiration = databento_marketdata_normalized_dbn_v3.expiration.dissect(buffer, index, packet, parent)

  -- Activation: u64
  index, activation = databento_marketdata_normalized_dbn_v3.activation.dissect(buffer, index, packet, parent)

  -- High Limit Price: i64
  index, high_limit_price = databento_marketdata_normalized_dbn_v3.high_limit_price.dissect(buffer, index, packet, parent)

  -- Low Limit Price: i64
  index, low_limit_price = databento_marketdata_normalized_dbn_v3.low_limit_price.dissect(buffer, index, packet, parent)

  -- Max Price Variation: i64
  index, max_price_variation = databento_marketdata_normalized_dbn_v3.max_price_variation.dissect(buffer, index, packet, parent)

  -- Unit Of Measure Qty: i64
  index, unit_of_measure_qty = databento_marketdata_normalized_dbn_v3.unit_of_measure_qty.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount: i64
  index, min_price_increment_amount = databento_marketdata_normalized_dbn_v3.min_price_increment_amount.dissect(buffer, index, packet, parent)

  -- Price Ratio: i64
  index, price_ratio = databento_marketdata_normalized_dbn_v3.price_ratio.dissect(buffer, index, packet, parent)

  -- Strike Price: i64
  index, strike_price = databento_marketdata_normalized_dbn_v3.strike_price.dissect(buffer, index, packet, parent)

  -- Raw Instrument Id: u64
  index, raw_instrument_id = databento_marketdata_normalized_dbn_v3.raw_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Price: i64
  index, leg_price = databento_marketdata_normalized_dbn_v3.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Delta: i64
  index, leg_delta = databento_marketdata_normalized_dbn_v3.leg_delta.dissect(buffer, index, packet, parent)

  -- Inst Attrib Value: i32
  index, inst_attrib_value = databento_marketdata_normalized_dbn_v3.inst_attrib_value.dissect(buffer, index, packet, parent)

  -- Underlying Id: u32
  index, underlying_id = databento_marketdata_normalized_dbn_v3.underlying_id.dissect(buffer, index, packet, parent)

  -- Market Depth Implied: i32
  index, market_depth_implied = databento_marketdata_normalized_dbn_v3.market_depth_implied.dissect(buffer, index, packet, parent)

  -- Market Depth: i32
  index, market_depth = databento_marketdata_normalized_dbn_v3.market_depth.dissect(buffer, index, packet, parent)

  -- Market Segment Id: u32
  index, market_segment_id = databento_marketdata_normalized_dbn_v3.market_segment_id.dissect(buffer, index, packet, parent)

  -- Max Trade Vol: u32
  index, max_trade_vol = databento_marketdata_normalized_dbn_v3.max_trade_vol.dissect(buffer, index, packet, parent)

  -- Min Lot Size: i32
  index, min_lot_size = databento_marketdata_normalized_dbn_v3.min_lot_size.dissect(buffer, index, packet, parent)

  -- Min Lot Size Block: i32
  index, min_lot_size_block = databento_marketdata_normalized_dbn_v3.min_lot_size_block.dissect(buffer, index, packet, parent)

  -- Min Lot Size Round Lot: i32
  index, min_lot_size_round_lot = databento_marketdata_normalized_dbn_v3.min_lot_size_round_lot.dissect(buffer, index, packet, parent)

  -- Min Trade Vol: u32
  index, min_trade_vol = databento_marketdata_normalized_dbn_v3.min_trade_vol.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: i32
  index, contract_multiplier = databento_marketdata_normalized_dbn_v3.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Decay Quantity: i32
  index, decay_quantity = databento_marketdata_normalized_dbn_v3.decay_quantity.dissect(buffer, index, packet, parent)

  -- Original Contract Size: i32
  index, original_contract_size = databento_marketdata_normalized_dbn_v3.original_contract_size.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: u32
  index, leg_instrument_id = databento_marketdata_normalized_dbn_v3.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Numerator: i32
  index, leg_ratio_price_numerator = databento_marketdata_normalized_dbn_v3.leg_ratio_price_numerator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Denominator: i32
  index, leg_ratio_price_denominator = databento_marketdata_normalized_dbn_v3.leg_ratio_price_denominator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Numerator: i32
  index, leg_ratio_qty_numerator = databento_marketdata_normalized_dbn_v3.leg_ratio_qty_numerator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Denominator: i32
  index, leg_ratio_qty_denominator = databento_marketdata_normalized_dbn_v3.leg_ratio_qty_denominator.dissect(buffer, index, packet, parent)

  -- Leg Underlying Id: u32
  index, leg_underlying_id = databento_marketdata_normalized_dbn_v3.leg_underlying_id.dissect(buffer, index, packet, parent)

  -- Appl Id: i16
  index, appl_id = databento_marketdata_normalized_dbn_v3.appl_id.dissect(buffer, index, packet, parent)

  -- Maturity Year: u16
  index, maturity_year = databento_marketdata_normalized_dbn_v3.maturity_year.dissect(buffer, index, packet, parent)

  -- Decay Start Date: u16
  index, decay_start_date = databento_marketdata_normalized_dbn_v3.decay_start_date.dissect(buffer, index, packet, parent)

  -- Channel: u16
  index, channel = databento_marketdata_normalized_dbn_v3.channel.dissect(buffer, index, packet, parent)

  -- Leg Count: u16
  index, leg_count = databento_marketdata_normalized_dbn_v3.leg_count.dissect(buffer, index, packet, parent)

  -- Leg Index: u16
  index, leg_index = databento_marketdata_normalized_dbn_v3.leg_index.dissect(buffer, index, packet, parent)

  -- Currency: [c_char; 4]
  index, currency = databento_marketdata_normalized_dbn_v3.currency.dissect(buffer, index, packet, parent)

  -- Settl Currency: [c_char; 4]
  index, settl_currency = databento_marketdata_normalized_dbn_v3.settl_currency.dissect(buffer, index, packet, parent)

  -- Secsubtype: [c_char; 6]
  index, secsubtype = databento_marketdata_normalized_dbn_v3.secsubtype.dissect(buffer, index, packet, parent)

  -- Raw Symbol: [c_char; 71]
  index, raw_symbol = databento_marketdata_normalized_dbn_v3.raw_symbol.dissect(buffer, index, packet, parent)

  -- Group: [c_char; 21]
  index, group = databento_marketdata_normalized_dbn_v3.group.dissect(buffer, index, packet, parent)

  -- Exchange: [c_char; 5]
  index, exchange = databento_marketdata_normalized_dbn_v3.exchange.dissect(buffer, index, packet, parent)

  -- Asset: [c_char; 11]
  index, asset = databento_marketdata_normalized_dbn_v3.asset.dissect(buffer, index, packet, parent)

  -- Cfi: [c_char; 7]
  index, cfi = databento_marketdata_normalized_dbn_v3.cfi.dissect(buffer, index, packet, parent)

  -- Security Type: [c_char; 7]
  index, security_type = databento_marketdata_normalized_dbn_v3.security_type.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: [c_char; 31]
  index, unit_of_measure = databento_marketdata_normalized_dbn_v3.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Underlying: [c_char; 21]
  index, underlying = databento_marketdata_normalized_dbn_v3.underlying.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: [c_char; 4]
  index, strike_price_currency = databento_marketdata_normalized_dbn_v3.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Leg Raw Symbol: [c_char; 71]
  index, leg_raw_symbol = databento_marketdata_normalized_dbn_v3.leg_raw_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Class: c_char
  index, instrument_class = databento_marketdata_normalized_dbn_v3.instrument_class.dissect(buffer, index, packet, parent)

  -- Match Algorithm: c_char
  index, match_algorithm = databento_marketdata_normalized_dbn_v3.match_algorithm.dissect(buffer, index, packet, parent)

  -- Main Fraction: u8
  index, main_fraction = databento_marketdata_normalized_dbn_v3.main_fraction.dissect(buffer, index, packet, parent)

  -- Price Display Format: u8
  index, price_display_format = databento_marketdata_normalized_dbn_v3.price_display_format.dissect(buffer, index, packet, parent)

  -- Sub Fraction: u8
  index, sub_fraction = databento_marketdata_normalized_dbn_v3.sub_fraction.dissect(buffer, index, packet, parent)

  -- Underlying Product: u8
  index, underlying_product = databento_marketdata_normalized_dbn_v3.underlying_product.dissect(buffer, index, packet, parent)

  -- Security Update Action: c_char
  index, security_update_action = databento_marketdata_normalized_dbn_v3.security_update_action.dissect(buffer, index, packet, parent)

  -- Maturity Month: u8
  index, maturity_month = databento_marketdata_normalized_dbn_v3.maturity_month.dissect(buffer, index, packet, parent)

  -- Maturity Day: u8
  index, maturity_day = databento_marketdata_normalized_dbn_v3.maturity_day.dissect(buffer, index, packet, parent)

  -- Maturity Week: u8
  index, maturity_week = databento_marketdata_normalized_dbn_v3.maturity_week.dissect(buffer, index, packet, parent)

  -- User Defined Instrument: c_char
  index, user_defined_instrument = databento_marketdata_normalized_dbn_v3.user_defined_instrument.dissect(buffer, index, packet, parent)

  -- Contract Multiplier Unit: i8
  index, contract_multiplier_unit = databento_marketdata_normalized_dbn_v3.contract_multiplier_unit.dissect(buffer, index, packet, parent)

  -- Flow Schedule Type: i8
  index, flow_schedule_type = databento_marketdata_normalized_dbn_v3.flow_schedule_type.dissect(buffer, index, packet, parent)

  -- Tick Rule: u8
  index, tick_rule = databento_marketdata_normalized_dbn_v3.tick_rule.dissect(buffer, index, packet, parent)

  -- Leg Instrument Class: c_char
  index, leg_instrument_class = databento_marketdata_normalized_dbn_v3.leg_instrument_class.dissect(buffer, index, packet, parent)

  -- Leg Side: c_char
  index, leg_side = databento_marketdata_normalized_dbn_v3.leg_side.dissect(buffer, index, packet, parent)

  -- Reserved 17: [u8; 17]
  if show.padding then
    index, reserved_17 = databento_marketdata_normalized_dbn_v3.reserved_17.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.reserved_17.size
  end

  return index
end

-- Dissect: Instrument Def Msg
databento_marketdata_normalized_dbn_v3.instrument_def_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.instrument_def_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.instrument_def_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.instrument_def_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.instrument_def_msg.fields(buffer, offset, packet, parent)
  end
end

-- Status Msg
databento_marketdata_normalized_dbn_v3.status_msg = {}

-- Size: Status Msg
databento_marketdata_normalized_dbn_v3.status_msg.size =
  databento_marketdata_normalized_dbn_v3.ts_recv.size + 
  databento_marketdata_normalized_dbn_v3.status_action.size + 
  databento_marketdata_normalized_dbn_v3.status_reason.size + 
  databento_marketdata_normalized_dbn_v3.trading_event.size + 
  databento_marketdata_normalized_dbn_v3.is_trading.size + 
  databento_marketdata_normalized_dbn_v3.is_quoting.size + 
  databento_marketdata_normalized_dbn_v3.is_short_sell_restricted.size + 
  databento_marketdata_normalized_dbn_v3.reserved_7.size

-- Display: Status Msg
databento_marketdata_normalized_dbn_v3.status_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Status Msg
databento_marketdata_normalized_dbn_v3.status_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ts Recv: u64
  index, ts_recv = databento_marketdata_normalized_dbn_v3.ts_recv.dissect(buffer, index, packet, parent)

  -- Status Action: u16
  index, status_action = databento_marketdata_normalized_dbn_v3.status_action.dissect(buffer, index, packet, parent)

  -- Status Reason: u16
  index, status_reason = databento_marketdata_normalized_dbn_v3.status_reason.dissect(buffer, index, packet, parent)

  -- Trading Event: u16
  index, trading_event = databento_marketdata_normalized_dbn_v3.trading_event.dissect(buffer, index, packet, parent)

  -- Is Trading: c_char
  index, is_trading = databento_marketdata_normalized_dbn_v3.is_trading.dissect(buffer, index, packet, parent)

  -- Is Quoting: c_char
  index, is_quoting = databento_marketdata_normalized_dbn_v3.is_quoting.dissect(buffer, index, packet, parent)

  -- Is Short Sell Restricted: c_char
  index, is_short_sell_restricted = databento_marketdata_normalized_dbn_v3.is_short_sell_restricted.dissect(buffer, index, packet, parent)

  -- Reserved 7: [u8; 7]
  if show.padding then
    index, reserved_7 = databento_marketdata_normalized_dbn_v3.reserved_7.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.reserved_7.size
  end

  return index
end

-- Dissect: Status Msg
databento_marketdata_normalized_dbn_v3.status_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.status_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.status_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.status_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.status_msg.fields(buffer, offset, packet, parent)
  end
end

-- Ohlcv Msg
databento_marketdata_normalized_dbn_v3.ohlcv_msg = {}

-- Size: Ohlcv Msg
databento_marketdata_normalized_dbn_v3.ohlcv_msg.size =
  databento_marketdata_normalized_dbn_v3.open.size + 
  databento_marketdata_normalized_dbn_v3.high.size + 
  databento_marketdata_normalized_dbn_v3.low.size + 
  databento_marketdata_normalized_dbn_v3.close.size + 
  databento_marketdata_normalized_dbn_v3.volume.size

-- Display: Ohlcv Msg
databento_marketdata_normalized_dbn_v3.ohlcv_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ohlcv Msg
databento_marketdata_normalized_dbn_v3.ohlcv_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Open: i64
  index, open = databento_marketdata_normalized_dbn_v3.open.dissect(buffer, index, packet, parent)

  -- High: i64
  index, high = databento_marketdata_normalized_dbn_v3.high.dissect(buffer, index, packet, parent)

  -- Low: i64
  index, low = databento_marketdata_normalized_dbn_v3.low.dissect(buffer, index, packet, parent)

  -- Close: i64
  index, close = databento_marketdata_normalized_dbn_v3.close.dissect(buffer, index, packet, parent)

  -- Volume: u64
  index, volume = databento_marketdata_normalized_dbn_v3.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ohlcv Msg
databento_marketdata_normalized_dbn_v3.ohlcv_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.ohlcv_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.ohlcv_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.ohlcv_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.ohlcv_msg.fields(buffer, offset, packet, parent)
  end
end

-- Mbp 10 Msg
databento_marketdata_normalized_dbn_v3.mbp_10_msg = {}

-- Size: Mbp 10 Msg
databento_marketdata_normalized_dbn_v3.mbp_10_msg.size =
  databento_marketdata_normalized_dbn_v3.price.size + 
  databento_marketdata_normalized_dbn_v3.size.size + 
  databento_marketdata_normalized_dbn_v3.action.size + 
  databento_marketdata_normalized_dbn_v3.side.size + 
  databento_marketdata_normalized_dbn_v3.flags.size + 
  databento_marketdata_normalized_dbn_v3.depth.size + 
  databento_marketdata_normalized_dbn_v3.ts_recv.size + 
  databento_marketdata_normalized_dbn_v3.ts_in_delta.size + 
  databento_marketdata_normalized_dbn_v3.sequence.size + 
  10 * databento_marketdata_normalized_dbn_v3.bid_ask_pair.size

-- Display: Mbp 10 Msg
databento_marketdata_normalized_dbn_v3.mbp_10_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp 10 Msg
databento_marketdata_normalized_dbn_v3.mbp_10_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: i64
  index, price = databento_marketdata_normalized_dbn_v3.price.dissect(buffer, index, packet, parent)

  -- Size: u32
  index, size = databento_marketdata_normalized_dbn_v3.size.dissect(buffer, index, packet, parent)

  -- Action: c_char
  index, action = databento_marketdata_normalized_dbn_v3.action.dissect(buffer, index, packet, parent)

  -- Side: c_char
  index, side = databento_marketdata_normalized_dbn_v3.side.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 8 fields
  index, flags = databento_marketdata_normalized_dbn_v3.flags.dissect(buffer, index, packet, parent)

  -- Depth: u8
  index, depth = databento_marketdata_normalized_dbn_v3.depth.dissect(buffer, index, packet, parent)

  -- Ts Recv: u64
  index, ts_recv = databento_marketdata_normalized_dbn_v3.ts_recv.dissect(buffer, index, packet, parent)

  -- Ts In Delta: i32
  index, ts_in_delta = databento_marketdata_normalized_dbn_v3.ts_in_delta.dissect(buffer, index, packet, parent)

  -- Sequence: u32
  index, sequence = databento_marketdata_normalized_dbn_v3.sequence.dissect(buffer, index, packet, parent)

  -- Array Of: Bid Ask Pair
  for bid_ask_pair_index = 1, 10 do
    index, bid_ask_pair = databento_marketdata_normalized_dbn_v3.bid_ask_pair.dissect(buffer, index, packet, parent, bid_ask_pair_index)
  end

  return index
end

-- Dissect: Mbp 10 Msg
databento_marketdata_normalized_dbn_v3.mbp_10_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.mbp_10_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.mbp_10_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.mbp_10_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.mbp_10_msg.fields(buffer, offset, packet, parent)
  end
end

-- Mbp 1 Msg
databento_marketdata_normalized_dbn_v3.mbp_1_msg = {}

-- Size: Mbp 1 Msg
databento_marketdata_normalized_dbn_v3.mbp_1_msg.size =
  databento_marketdata_normalized_dbn_v3.price.size + 
  databento_marketdata_normalized_dbn_v3.size.size + 
  databento_marketdata_normalized_dbn_v3.action.size + 
  databento_marketdata_normalized_dbn_v3.side.size + 
  databento_marketdata_normalized_dbn_v3.flags.size + 
  databento_marketdata_normalized_dbn_v3.depth.size + 
  databento_marketdata_normalized_dbn_v3.ts_recv.size + 
  databento_marketdata_normalized_dbn_v3.ts_in_delta.size + 
  databento_marketdata_normalized_dbn_v3.sequence.size + 
  databento_marketdata_normalized_dbn_v3.bid_ask_pair.size

-- Display: Mbp 1 Msg
databento_marketdata_normalized_dbn_v3.mbp_1_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mbp 1 Msg
databento_marketdata_normalized_dbn_v3.mbp_1_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: i64
  index, price = databento_marketdata_normalized_dbn_v3.price.dissect(buffer, index, packet, parent)

  -- Size: u32
  index, size = databento_marketdata_normalized_dbn_v3.size.dissect(buffer, index, packet, parent)

  -- Action: c_char
  index, action = databento_marketdata_normalized_dbn_v3.action.dissect(buffer, index, packet, parent)

  -- Side: c_char
  index, side = databento_marketdata_normalized_dbn_v3.side.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 8 fields
  index, flags = databento_marketdata_normalized_dbn_v3.flags.dissect(buffer, index, packet, parent)

  -- Depth: u8
  index, depth = databento_marketdata_normalized_dbn_v3.depth.dissect(buffer, index, packet, parent)

  -- Ts Recv: u64
  index, ts_recv = databento_marketdata_normalized_dbn_v3.ts_recv.dissect(buffer, index, packet, parent)

  -- Ts In Delta: i32
  index, ts_in_delta = databento_marketdata_normalized_dbn_v3.ts_in_delta.dissect(buffer, index, packet, parent)

  -- Sequence: u32
  index, sequence = databento_marketdata_normalized_dbn_v3.sequence.dissect(buffer, index, packet, parent)

  -- Bid Ask Pair: Struct of 6 fields
  index, bid_ask_pair = databento_marketdata_normalized_dbn_v3.bid_ask_pair.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mbp 1 Msg
databento_marketdata_normalized_dbn_v3.mbp_1_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.mbp_1_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.mbp_1_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.mbp_1_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.mbp_1_msg.fields(buffer, offset, packet, parent)
  end
end

-- Trade Msg
databento_marketdata_normalized_dbn_v3.trade_msg = {}

-- Size: Trade Msg
databento_marketdata_normalized_dbn_v3.trade_msg.size =
  databento_marketdata_normalized_dbn_v3.price.size + 
  databento_marketdata_normalized_dbn_v3.size.size + 
  databento_marketdata_normalized_dbn_v3.action.size + 
  databento_marketdata_normalized_dbn_v3.side.size + 
  databento_marketdata_normalized_dbn_v3.flags.size + 
  databento_marketdata_normalized_dbn_v3.depth.size + 
  databento_marketdata_normalized_dbn_v3.ts_recv.size + 
  databento_marketdata_normalized_dbn_v3.ts_in_delta.size + 
  databento_marketdata_normalized_dbn_v3.sequence.size

-- Display: Trade Msg
databento_marketdata_normalized_dbn_v3.trade_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Msg
databento_marketdata_normalized_dbn_v3.trade_msg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: i64
  index, price = databento_marketdata_normalized_dbn_v3.price.dissect(buffer, index, packet, parent)

  -- Size: u32
  index, size = databento_marketdata_normalized_dbn_v3.size.dissect(buffer, index, packet, parent)

  -- Action: c_char
  index, action = databento_marketdata_normalized_dbn_v3.action.dissect(buffer, index, packet, parent)

  -- Side: c_char
  index, side = databento_marketdata_normalized_dbn_v3.side.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 8 fields
  index, flags = databento_marketdata_normalized_dbn_v3.flags.dissect(buffer, index, packet, parent)

  -- Depth: u8
  index, depth = databento_marketdata_normalized_dbn_v3.depth.dissect(buffer, index, packet, parent)

  -- Ts Recv: u64
  index, ts_recv = databento_marketdata_normalized_dbn_v3.ts_recv.dissect(buffer, index, packet, parent)

  -- Ts In Delta: i32
  index, ts_in_delta = databento_marketdata_normalized_dbn_v3.ts_in_delta.dissect(buffer, index, packet, parent)

  -- Sequence: u32
  index, sequence = databento_marketdata_normalized_dbn_v3.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Msg
databento_marketdata_normalized_dbn_v3.trade_msg.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.trade_msg, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.trade_msg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.trade_msg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.trade_msg.fields(buffer, offset, packet, parent)
  end
end

-- Record Body
databento_marketdata_normalized_dbn_v3.record_body = {}

-- Dispatch: Record Body
databento_marketdata_normalized_dbn_v3.record_body.dispatch = {
  [0] = databento_marketdata_normalized_dbn_v3.trade_msg.dissect,
  [1] = databento_marketdata_normalized_dbn_v3.mbp_1_msg.dissect,
  [10] = databento_marketdata_normalized_dbn_v3.mbp_10_msg.dissect,
  [17] = databento_marketdata_normalized_dbn_v3.ohlcv_msg.dissect,
  [18] = databento_marketdata_normalized_dbn_v3.status_msg.dissect,
  [19] = databento_marketdata_normalized_dbn_v3.instrument_def_msg.dissect,
  [20] = databento_marketdata_normalized_dbn_v3.imbalance_msg.dissect,
  [21] = databento_marketdata_normalized_dbn_v3.error_msg.dissect,
  [22] = databento_marketdata_normalized_dbn_v3.symbol_mapping_msg.dissect,
  [23] = databento_marketdata_normalized_dbn_v3.system_msg.dissect,
  [24] = databento_marketdata_normalized_dbn_v3.stat_msg.dissect,
  [32] = databento_marketdata_normalized_dbn_v3.ohlcv_msg.dissect,
  [33] = databento_marketdata_normalized_dbn_v3.ohlcv_msg.dissect,
  [34] = databento_marketdata_normalized_dbn_v3.ohlcv_msg.dissect,
  [35] = databento_marketdata_normalized_dbn_v3.ohlcv_msg.dissect,
  [36] = databento_marketdata_normalized_dbn_v3.ohlcv_msg.dissect,
  [160] = databento_marketdata_normalized_dbn_v3.mbo_msg.dissect,
  [177] = databento_marketdata_normalized_dbn_v3.cmbp_1_msg.dissect,
  [192] = databento_marketdata_normalized_dbn_v3.cbbo_msg.dissect,
  [193] = databento_marketdata_normalized_dbn_v3.cbbo_msg.dissect,
  [194] = databento_marketdata_normalized_dbn_v3.cmbp_1_msg.dissect,
  [195] = databento_marketdata_normalized_dbn_v3.bbo_msg.dissect,
  [196] = databento_marketdata_normalized_dbn_v3.bbo_msg.dissect,
}

-- Dissect: Record Body
databento_marketdata_normalized_dbn_v3.record_body.dissect = function(buffer, offset, packet, parent, rtype)
  local dissect = databento_marketdata_normalized_dbn_v3.record_body.dispatch[rtype]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Record Header
databento_marketdata_normalized_dbn_v3.record_header = {}

-- Size: Record Header
databento_marketdata_normalized_dbn_v3.record_header.size =
  databento_marketdata_normalized_dbn_v3.record_length.size + 
  databento_marketdata_normalized_dbn_v3.rtype.size + 
  databento_marketdata_normalized_dbn_v3.publisher_id.size + 
  databento_marketdata_normalized_dbn_v3.instrument_id.size + 
  databento_marketdata_normalized_dbn_v3.ts_event.size

-- Display: Record Header
databento_marketdata_normalized_dbn_v3.record_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Record Header
databento_marketdata_normalized_dbn_v3.record_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Record Length: u8
  index, record_length = databento_marketdata_normalized_dbn_v3.record_length.dissect(buffer, index, packet, parent)

  -- Rtype: u8
  index, rtype = databento_marketdata_normalized_dbn_v3.rtype.dissect(buffer, index, packet, parent)

  -- Publisher Id: u16
  index, publisher_id = databento_marketdata_normalized_dbn_v3.publisher_id.dissect(buffer, index, packet, parent)

  -- Instrument Id: u32
  index, instrument_id = databento_marketdata_normalized_dbn_v3.instrument_id.dissect(buffer, index, packet, parent)

  -- Ts Event: u64
  index, ts_event = databento_marketdata_normalized_dbn_v3.ts_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Record Header
databento_marketdata_normalized_dbn_v3.record_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.record_header, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.record_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.record_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.record_header.fields(buffer, offset, packet, parent)
  end
end

-- Record
databento_marketdata_normalized_dbn_v3.record = {}

-- Display: Record
databento_marketdata_normalized_dbn_v3.record.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Record
databento_marketdata_normalized_dbn_v3.record.fields = function(buffer, offset, packet, parent, size_of_record)
  local index = offset

  -- Record Header: Struct of 5 fields
  index, record_header = databento_marketdata_normalized_dbn_v3.record_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Rtype
  local rtype = buffer(index - 15, 1):uint()

  -- Record Body: Runtime Type with 15 branches
  index = databento_marketdata_normalized_dbn_v3.record_body.dissect(buffer, index, packet, parent, rtype)

  -- Runtime optional field: Ts Out Time
  local ts_out_time = nil

  local ts_out_time_exists = (databento_marketdata_normalized_dbn_v3.ts_out.current or 0) == 1

  if ts_out_time_exists then
    index, ts_out_time = databento_marketdata_normalized_dbn_v3.ts_out_time.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Record
databento_marketdata_normalized_dbn_v3.record.dissect = function(buffer, offset, packet, parent, size_of_record)
  local index = offset + size_of_record

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.record, buffer(offset, 0))
    local current = databento_marketdata_normalized_dbn_v3.record.fields(buffer, offset, packet, parent, size_of_record)
    parent:set_len(size_of_record)
    local display = databento_marketdata_normalized_dbn_v3.record.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    databento_marketdata_normalized_dbn_v3.record.fields(buffer, offset, packet, parent, size_of_record)

    return index
  end
end

-- Remaining Bytes For: Record
local record_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < databento_marketdata_normalized_dbn_v3.record_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 1):uint() * 4

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Mapping Interval
databento_marketdata_normalized_dbn_v3.mapping_interval = {}

-- Size: Mapping Interval
databento_marketdata_normalized_dbn_v3.mapping_interval.size =
  databento_marketdata_normalized_dbn_v3.start_date.size + 
  databento_marketdata_normalized_dbn_v3.end_date.size + 
  databento_marketdata_normalized_dbn_v3.mapped_symbol.size

-- Display: Mapping Interval
databento_marketdata_normalized_dbn_v3.mapping_interval.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mapping Interval
databento_marketdata_normalized_dbn_v3.mapping_interval.fields = function(buffer, offset, packet, parent, mapping_interval_index)
  local index = offset

  -- Implicit Mapping Interval Index
  if mapping_interval_index ~= nil and show.indexes then
    local iteration = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.mapping_interval_index, mapping_interval_index)
    iteration:set_generated()
  end

  -- Start Date: u32
  index, start_date = databento_marketdata_normalized_dbn_v3.start_date.dissect(buffer, index, packet, parent)

  -- End Date: u32
  index, end_date = databento_marketdata_normalized_dbn_v3.end_date.dissect(buffer, index, packet, parent)

  -- Mapped Symbol: [c_char; 71]
  index, mapped_symbol = databento_marketdata_normalized_dbn_v3.mapped_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mapping Interval
databento_marketdata_normalized_dbn_v3.mapping_interval.dissect = function(buffer, offset, packet, parent, mapping_interval_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.mapping_interval, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.mapping_interval.fields(buffer, offset, packet, parent, mapping_interval_index)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.mapping_interval.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.mapping_interval.fields(buffer, offset, packet, parent, mapping_interval_index)
  end
end

-- Symbol Mapping
databento_marketdata_normalized_dbn_v3.symbol_mapping = {}

-- Calculate size of: Symbol Mapping
databento_marketdata_normalized_dbn_v3.symbol_mapping.size = function(buffer, offset)
  local index = 0

  index = index + databento_marketdata_normalized_dbn_v3.raw_symbol_in.size

  index = index + databento_marketdata_normalized_dbn_v3.interval_count.size

  -- Calculate field size from count
  local mapping_interval_count = buffer(offset + index - 4, 4):le_uint()
  index = index + mapping_interval_count * 79

  return index
end

-- Display: Symbol Mapping
databento_marketdata_normalized_dbn_v3.symbol_mapping.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping
databento_marketdata_normalized_dbn_v3.symbol_mapping.fields = function(buffer, offset, packet, parent, symbol_mapping_index)
  local index = offset

  -- Implicit Symbol Mapping Index
  if symbol_mapping_index ~= nil and show.indexes then
    local iteration = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.symbol_mapping_index, symbol_mapping_index)
    iteration:set_generated()
  end

  -- Raw Symbol In: [c_char; 71]
  index, raw_symbol_in = databento_marketdata_normalized_dbn_v3.raw_symbol_in.dissect(buffer, index, packet, parent)

  -- Interval Count: u32
  index, interval_count = databento_marketdata_normalized_dbn_v3.interval_count.dissect(buffer, index, packet, parent)

  -- Repeating: Mapping Interval
  for mapping_interval_index = 1, interval_count do
    index, mapping_interval = databento_marketdata_normalized_dbn_v3.mapping_interval.dissect(buffer, index, packet, parent, mapping_interval_index)
  end

  return index
end

-- Dissect: Symbol Mapping
databento_marketdata_normalized_dbn_v3.symbol_mapping.dissect = function(buffer, offset, packet, parent, symbol_mapping_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.symbol_mapping, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.symbol_mapping.fields(buffer, offset, packet, parent, symbol_mapping_index)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.symbol_mapping.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.symbol_mapping.fields(buffer, offset, packet, parent, symbol_mapping_index)
  end
end

-- Metadata
databento_marketdata_normalized_dbn_v3.metadata = {}

-- Display: Metadata
databento_marketdata_normalized_dbn_v3.metadata.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Metadata
databento_marketdata_normalized_dbn_v3.metadata.fields = function(buffer, offset, packet, parent, size_of_metadata)
  local index = offset

  -- Magic: [u8; 3]
  index, magic = databento_marketdata_normalized_dbn_v3.magic.dissect(buffer, index, packet, parent)

  -- Version: u8
  index, version = databento_marketdata_normalized_dbn_v3.version.dissect(buffer, index, packet, parent)

  -- Metadata Length: u32
  index, metadata_length = databento_marketdata_normalized_dbn_v3.metadata_length.dissect(buffer, index, packet, parent)

  -- Dataset: [c_char; 16]
  index, dataset = databento_marketdata_normalized_dbn_v3.dataset.dissect(buffer, index, packet, parent)

  -- Schema: u16
  index, schema = databento_marketdata_normalized_dbn_v3.schema.dissect(buffer, index, packet, parent)

  -- Start: u64
  index, start = databento_marketdata_normalized_dbn_v3.start.dissect(buffer, index, packet, parent)

  -- End: u64
  index, end_ = databento_marketdata_normalized_dbn_v3.end_.dissect(buffer, index, packet, parent)

  -- Limit: u64
  index, limit = databento_marketdata_normalized_dbn_v3.limit.dissect(buffer, index, packet, parent)

  -- Stype In: u8
  index, stype_in = databento_marketdata_normalized_dbn_v3.stype_in.dissect(buffer, index, packet, parent)

  -- Stype Out: u8
  index, stype_out = databento_marketdata_normalized_dbn_v3.stype_out.dissect(buffer, index, packet, parent)

  -- Ts Out: u8
  index, ts_out = databento_marketdata_normalized_dbn_v3.ts_out.dissect(buffer, index, packet, parent)

  -- Store Ts Out Value
  databento_marketdata_normalized_dbn_v3.ts_out.current = ts_out

  if not packet.visited then
    databento_marketdata_normalized_dbn_v3.conversation.current.ts_out.last = ts_out
  end

  -- Symbol Cstr Len: u16
  index, symbol_cstr_len = databento_marketdata_normalized_dbn_v3.symbol_cstr_len.dissect(buffer, index, packet, parent)

  -- Metadata Reserved: [u8; 53]
  if show.padding then
    index, metadata_reserved = databento_marketdata_normalized_dbn_v3.metadata_reserved.dissect(buffer, index, packet, parent)
  else
    index = index + databento_marketdata_normalized_dbn_v3.metadata_reserved.size
  end

  -- Schema Definition Length: u32
  index, schema_definition_length = databento_marketdata_normalized_dbn_v3.schema_definition_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Schema Definition
  index, schema_definition = databento_marketdata_normalized_dbn_v3.schema_definition.dissect(buffer, index, packet, parent, schema_definition_length)

  -- Symbols Count: u32
  index, symbols_count = databento_marketdata_normalized_dbn_v3.symbols_count.dissect(buffer, index, packet, parent)

  -- Repeating: Symbol
  for symbol_index = 1, symbols_count do
    index, symbol = databento_marketdata_normalized_dbn_v3.symbol.dissect(buffer, index, packet, parent, symbol_index)
  end

  -- Partial Count: u32
  index, partial_count = databento_marketdata_normalized_dbn_v3.partial_count.dissect(buffer, index, packet, parent)

  -- Repeating: Partial Symbol
  for partial_symbol_index = 1, partial_count do
    index, partial_symbol = databento_marketdata_normalized_dbn_v3.partial_symbol.dissect(buffer, index, packet, parent, partial_symbol_index)
  end

  -- Not Found Count: u32
  index, not_found_count = databento_marketdata_normalized_dbn_v3.not_found_count.dissect(buffer, index, packet, parent)

  -- Repeating: Not Found Symbol
  for not_found_symbol_index = 1, not_found_count do
    index, not_found_symbol = databento_marketdata_normalized_dbn_v3.not_found_symbol.dissect(buffer, index, packet, parent, not_found_symbol_index)
  end

  -- Mappings Count: u32
  index, mappings_count = databento_marketdata_normalized_dbn_v3.mappings_count.dissect(buffer, index, packet, parent)

  -- Repeating: Symbol Mapping
  for symbol_mapping_index = 1, mappings_count do
    index, symbol_mapping = databento_marketdata_normalized_dbn_v3.symbol_mapping.dissect(buffer, index, packet, parent, symbol_mapping_index)
  end

  -- Runtime Size Of: Metadata Padding
  local size_of_metadata_padding = offset + size_of_metadata - index

  -- Metadata Padding: [u8]
  index, metadata_padding = databento_marketdata_normalized_dbn_v3.metadata_padding.dissect(buffer, index, packet, parent, size_of_metadata_padding)

  return index
end

-- Dissect: Metadata
databento_marketdata_normalized_dbn_v3.metadata.dissect = function(buffer, offset, packet, parent, size_of_metadata)
  local index = offset + size_of_metadata

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.metadata, buffer(offset, 0))
    local current = databento_marketdata_normalized_dbn_v3.metadata.fields(buffer, offset, packet, parent, size_of_metadata)
    parent:set_len(size_of_metadata)
    local display = databento_marketdata_normalized_dbn_v3.metadata.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    databento_marketdata_normalized_dbn_v3.metadata.fields(buffer, offset, packet, parent, size_of_metadata)

    return index
  end
end

-- Authentication Response
databento_marketdata_normalized_dbn_v3.authentication_response = {}

-- Calculate size of: Authentication Response
databento_marketdata_normalized_dbn_v3.authentication_response.size = function(buffer, offset)
  local index = 0

  index = index + databento_marketdata_normalized_dbn_v3.control_fields.size(buffer, offset + index)

  return index
end

-- Display: Authentication Response
databento_marketdata_normalized_dbn_v3.authentication_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Authentication Response
databento_marketdata_normalized_dbn_v3.authentication_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Fields: 0 Byte Ascii String
  index, control_fields = databento_marketdata_normalized_dbn_v3.control_fields.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Authentication Response
databento_marketdata_normalized_dbn_v3.authentication_response.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.authentication_response, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.authentication_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.authentication_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.authentication_response.fields(buffer, offset, packet, parent)
  end
end

-- Challenge Request
databento_marketdata_normalized_dbn_v3.challenge_request = {}

-- Calculate size of: Challenge Request
databento_marketdata_normalized_dbn_v3.challenge_request.size = function(buffer, offset)
  local index = 0

  index = index + databento_marketdata_normalized_dbn_v3.control_fields.size(buffer, offset + index)

  return index
end

-- Display: Challenge Request
databento_marketdata_normalized_dbn_v3.challenge_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Challenge Request
databento_marketdata_normalized_dbn_v3.challenge_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Fields: 0 Byte Ascii String
  index, control_fields = databento_marketdata_normalized_dbn_v3.control_fields.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Challenge Request
databento_marketdata_normalized_dbn_v3.challenge_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.challenge_request, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.challenge_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.challenge_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.challenge_request.fields(buffer, offset, packet, parent)
  end
end

-- Greeting
databento_marketdata_normalized_dbn_v3.greeting = {}

-- Calculate size of: Greeting
databento_marketdata_normalized_dbn_v3.greeting.size = function(buffer, offset)
  local index = 0

  index = index + databento_marketdata_normalized_dbn_v3.control_fields.size(buffer, offset + index)

  return index
end

-- Display: Greeting
databento_marketdata_normalized_dbn_v3.greeting.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Greeting
databento_marketdata_normalized_dbn_v3.greeting.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Fields: 0 Byte Ascii String
  index, control_fields = databento_marketdata_normalized_dbn_v3.control_fields.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Greeting
databento_marketdata_normalized_dbn_v3.greeting.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_databento_marketdata_normalized_dbn_v3.fields.greeting, buffer(offset, 0))
    local index = databento_marketdata_normalized_dbn_v3.greeting.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = databento_marketdata_normalized_dbn_v3.greeting.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return databento_marketdata_normalized_dbn_v3.greeting.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Stream
databento_marketdata_normalized_dbn_v3.gateway_stream = {}

-- Verify required size of Tcp packet
databento_marketdata_normalized_dbn_v3.gateway_stream.requiredsize = function(buffer)
  return buffer:len() >= 1
end

-- Remaining Bytes For: Greeting
local greeting_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- The element runs to the first terminator byte: scan for it
  local terminator = 10
  local current = 0
  while current < remaining and buffer(index + current, 1):uint() ~= terminator do
    current = current + 1
  end

  -- The terminator is not in the bytes available yet: ask for one more segment
  if current >= remaining then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- The element includes the terminator byte it ends on
  current = current + 1

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Remaining Bytes For: Challenge Request
local challenge_request_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- The element runs to the first terminator byte: scan for it
  local terminator = 10
  local current = 0
  while current < remaining and buffer(index + current, 1):uint() ~= terminator do
    current = current + 1
  end

  -- The terminator is not in the bytes available yet: ask for one more segment
  if current >= remaining then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- The element includes the terminator byte it ends on
  current = current + 1

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Remaining Bytes For: Authentication Response
local authentication_response_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- The element runs to the first terminator byte: scan for it
  local terminator = 10
  local current = 0
  while current < remaining and buffer(index + current, 1):uint() ~= terminator do
    current = current + 1
  end

  -- The terminator is not in the bytes available yet: ask for one more segment
  if current >= remaining then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- The element includes the terminator byte it ends on
  current = current + 1

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Remaining Bytes For: Metadata
local metadata_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if the size can be read
  if remaining < 4 + databento_marketdata_normalized_dbn_v3.metadata_length.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 4, 4):le_uint() + 8

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Dissect Gateway Stream
databento_marketdata_normalized_dbn_v3.gateway_stream.dissect = function(buffer, packet, parent)
  -- establish this dissection's context: its place in the stream and the stored values before it
  local data = databento_marketdata_normalized_dbn_v3.conversation.data(packet)
  local context = databento_marketdata_normalized_dbn_v3.stream_place.context(data, packet)
  databento_marketdata_normalized_dbn_v3.ts_out.current = context.ts_out
  databento_marketdata_normalized_dbn_v3.conversation.current = data

  local index = 0
  local place = context.place

  -- Greeting: read once, at the start of the stream
  if place < 1 then
    local available, size_of_greeting = greeting_bytes_remaining(buffer, index, buffer:len())

    if available <= 0 then
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return buffer:len()
    end

    -- Greeting: Struct of 1 fields
    index, greeting = databento_marketdata_normalized_dbn_v3.greeting.dissect(buffer, index, packet, parent)

    place = databento_marketdata_normalized_dbn_v3.stream_place.advance(data, packet, 1)
  end

  -- Challenge Request: read once, at the start of the stream
  if place < 2 then
    local available, size_of_challenge_request = challenge_request_bytes_remaining(buffer, index, buffer:len())

    if available <= 0 then
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return buffer:len()
    end

    -- Challenge Request: Struct of 1 fields
    index, challenge_request = databento_marketdata_normalized_dbn_v3.challenge_request.dissect(buffer, index, packet, parent)

    place = databento_marketdata_normalized_dbn_v3.stream_place.advance(data, packet, 2)
  end

  -- Authentication Response: read once, at the start of the stream
  if place < 3 then
    local available, size_of_authentication_response = authentication_response_bytes_remaining(buffer, index, buffer:len())

    if available <= 0 then
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return buffer:len()
    end

    -- Authentication Response: Struct of 1 fields
    index, authentication_response = databento_marketdata_normalized_dbn_v3.authentication_response.dissect(buffer, index, packet, parent)

    place = databento_marketdata_normalized_dbn_v3.stream_place.advance(data, packet, 3)
  end

  -- Metadata: read once, at the start of the stream
  if place < 4 then
    local available, size_of_metadata = metadata_bytes_remaining(buffer, index, buffer:len())

    if available <= 0 then
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return buffer:len()
    end

    -- Dependency element: Metadata Length
    local metadata_length = buffer(index + 4, 4):le_uint()

    -- Runtime Size Of: Metadata
    local size_of_metadata = metadata_length + 8

    -- Metadata: Struct of 24 fields
    index, metadata = databento_marketdata_normalized_dbn_v3.metadata.dissect(buffer, index, packet, parent, size_of_metadata)

    place = databento_marketdata_normalized_dbn_v3.stream_place.advance(data, packet, 4)
  end

  -- Dependency for Record
  local end_of_payload = buffer:len()

  -- Record: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_record = record_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_record):tvb()
      index = databento_marketdata_normalized_dbn_v3.record.dissect(frame, index, packet, parent, size_of_record)
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

-- File
databento_marketdata_normalized_dbn_v3.file = {}

-- Verify required size of File packet
databento_marketdata_normalized_dbn_v3.file.requiredsize = function(buffer)
  return buffer:len() >= 1
end

-- Remaining Bytes For: Metadata
local metadata_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if the size can be read
  if remaining < 4 + databento_marketdata_normalized_dbn_v3.metadata_length.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 4, 4):le_uint() + 8

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Dissect File
databento_marketdata_normalized_dbn_v3.file.dissect = function(buffer, packet, parent)
  -- establish this dissection's context: its place in the stream and the stored values before it
  local data = databento_marketdata_normalized_dbn_v3.conversation.data(packet)
  local context = databento_marketdata_normalized_dbn_v3.stream_place.context(data, packet)
  databento_marketdata_normalized_dbn_v3.ts_out.current = context.ts_out
  databento_marketdata_normalized_dbn_v3.conversation.current = data

  local index = 0
  local place = context.place

  -- Metadata: read once, at the start of the stream
  if place < 1 then
    local available, size_of_metadata = metadata_bytes_remaining(buffer, index, buffer:len())

    if available <= 0 then
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      -- Claim the whole buffer: tcp keeps the bytes from desegment_offset for reassembly
      return buffer:len()
    end

    -- Dependency element: Metadata Length
    local metadata_length = buffer(index + 4, 4):le_uint()

    -- Runtime Size Of: Metadata
    local size_of_metadata = metadata_length + 8

    -- Metadata: Struct of 24 fields
    index, metadata = databento_marketdata_normalized_dbn_v3.metadata.dissect(buffer, index, packet, parent, size_of_metadata)

    place = databento_marketdata_normalized_dbn_v3.stream_place.advance(data, packet, 1)
  end

  -- Dependency for Record
  local end_of_payload = buffer:len()

  -- Record: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_record = record_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_record):tvb()
      index = databento_marketdata_normalized_dbn_v3.record.dissect(frame, index, packet, parent, size_of_record)
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
function omi_databento_marketdata_normalized_dbn_v3.init()
  databento_marketdata_normalized_dbn_v3.ts_out.current = nil
  databento_marketdata_normalized_dbn_v3.conversation.current = nil
  databento_marketdata_normalized_dbn_v3.conversation.flows = {}
end

-- Connection roles for Databento MarketData Normalized Dbn 3: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local source = endpoint(packet.src, packet.src_port)
  local destination = endpoint(packet.dst, packet.dst_port)

  if source < destination then
    return source.." "..destination
  end

  return destination.." "..source
end


-- Connection role of the frame's sender
databento_marketdata_normalized_dbn_v3.role = function(packet)
  if omi_databento_marketdata_normalized_dbn_v3.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_databento_marketdata_normalized_dbn_v3.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_databento_marketdata_normalized_dbn_v3.prefs.acceptor_port

  if acceptor_port ~= 0 and packet.dst_port == acceptor_port then
    return "initiator"
  end

  if acceptor_port ~= 0 and packet.src_port == acceptor_port then
    return "acceptor"
  end

  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)

  if initiators[key] == nil then
    initiators[key] = sender
  end

  local sender_initiated = initiators[key] == sender

  if omi_databento_marketdata_normalized_dbn_v3.prefs.swap_sides then
    sender_initiated = not sender_initiated
  end

  if swapped[key] then
    sender_initiated = not sender_initiated
  end

  if sender_initiated then
    return "initiator"
  end

  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
databento_marketdata_normalized_dbn_v3.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Databento MarketData Normalized Dbn 3
function omi_databento_marketdata_normalized_dbn_v3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_databento_marketdata_normalized_dbn_v3.name

  -- Dissect protocol
  local protocol = parent:add(omi_databento_marketdata_normalized_dbn_v3, buffer(), omi_databento_marketdata_normalized_dbn_v3.description, "("..buffer:len().." Bytes)")
  local role = databento_marketdata_normalized_dbn_v3.role(packet)

  if role == "initiator" then
    return databento_marketdata_normalized_dbn_v3.client_stream.dissect(buffer, packet, protocol)
  end

  return databento_marketdata_normalized_dbn_v3.gateway_stream.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Databento MarketData Normalized Dbn 3 (Tcp)
local function omi_databento_marketdata_normalized_dbn_v3_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not databento_marketdata_normalized_dbn_v3.gateway_stream.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_databento_marketdata_normalized_dbn_v3
  omi_databento_marketdata_normalized_dbn_v3.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Databento MarketData Normalized Dbn 3 (Tcp)
local function omi_databento_marketdata_normalized_dbn_v3_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not databento_marketdata_normalized_dbn_v3.client_stream.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_databento_marketdata_normalized_dbn_v3
  omi_databento_marketdata_normalized_dbn_v3.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Databento MarketData Normalized Dbn 3 (Tcp): apply the heuristic of the sender's connection role
local function omi_databento_marketdata_normalized_dbn_v3_tcp_heuristic(buffer, packet, parent)
  local role = databento_marketdata_normalized_dbn_v3.role(packet)
  local initiator = omi_databento_marketdata_normalized_dbn_v3_tcp_initiator_heuristic
  local acceptor = omi_databento_marketdata_normalized_dbn_v3_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  databento_marketdata_normalized_dbn_v3.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  databento_marketdata_normalized_dbn_v3.swap(packet)

  return false
end

-- Register Heuristics for Databento MarketData Normalized Dbn 3
omi_databento_marketdata_normalized_dbn_v3:register_heuristic("tcp", omi_databento_marketdata_normalized_dbn_v3_tcp_heuristic)
-- Databento MarketData Normalized Dbn 3 is read from a file by a file handler, so it is registered for no transport; call databento_marketdata_normalized_dbn_v3.file.dissect to dissect it

-- Register Databento MarketData Normalized Dbn 3 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_databento_marketdata_normalized_dbn_v3)

-----------------------------------------------------------------------
-- File Tree Dissector
-----------------------------------------------------------------------

-- Databento MarketData Normalized Dbn 3 file records: the dissector a file handler's frames name
local omi_databento_marketdata_normalized_dbn_v3_file = Proto("Omi.Databento.MarketData.Normalized.Dbn.v3.File", "Databento MarketData Normalized Dbn 3 File")

-- Dissect a frame of a file: what the file opens with, or one record
function omi_databento_marketdata_normalized_dbn_v3_file.dissector(buffer, packet, parent)
  packet.cols.protocol = omi_databento_marketdata_normalized_dbn_v3.name

  local protocol = parent:add(omi_databento_marketdata_normalized_dbn_v3, buffer(), omi_databento_marketdata_normalized_dbn_v3.description, "("..buffer:len().." Bytes)")
  return databento_marketdata_normalized_dbn_v3.file.dissect(buffer, packet, protocol)
end



-----------------------------------------------------------------------
-- File Reader
-----------------------------------------------------------------------

-- File reader state and functions
databento_marketdata_normalized_dbn_v3.file_handler = {}

-- The constants a file opens with, each at its offset
databento_marketdata_normalized_dbn_v3.file_handler.constants = {
  { offset = 0, bytes = "\068\066\078" },
  { offset = 3, bytes = "\003" },
}

-- How far each element a file opens with extends: a fixed size, or a length read at its start
databento_marketdata_normalized_dbn_v3.file_handler.preamble = {
  { fixed = 0, length = { offset = 4, size = 4, big = false, operator = "Plus", operand = 8 } },
}

-- How the records are framed: their length, and the sizes of the messages their type selects
databento_marketdata_normalized_dbn_v3.file_handler.framing = {
  length = { offset = 0, size = 1, big = false, operator = "Multiply", operand = 4 },
  header = 2,
  discriminator = { offset = 1, size = 1 },
  arms = {
    ["\000"] = { minimum = 48, maximum = 56 },
    ["\001"] = { minimum = 80, maximum = 88 },
    ["\010"] = { minimum = 368, maximum = 376 },
    ["\017"] = { minimum = 56, maximum = 64 },
    ["\032"] = { minimum = 56, maximum = 64 },
    ["\033"] = { minimum = 56, maximum = 64 },
    ["\034"] = { minimum = 56, maximum = 64 },
    ["\035"] = { minimum = 56, maximum = 64 },
    ["\036"] = { minimum = 56, maximum = 64 },
    ["\018"] = { minimum = 40, maximum = 48 },
    ["\019"] = { minimum = 520, maximum = 528 },
    ["\020"] = { minimum = 112, maximum = 120 },
    ["\021"] = { minimum = 320, maximum = 328 },
    ["\022"] = { minimum = 176, maximum = 184 },
    ["\023"] = { minimum = 320, maximum = 328 },
    ["\024"] = { minimum = 80, maximum = 88 },
    ["\160"] = { minimum = 56, maximum = 64 },
    ["\177"] = { minimum = 80, maximum = 88 },
    ["\194"] = { minimum = 80, maximum = 88 },
    ["\192"] = { minimum = 80, maximum = 88 },
    ["\193"] = { minimum = 80, maximum = 88 },
    ["\195"] = { minimum = 80, maximum = 88 },
    ["\196"] = { minimum = 80, maximum = 88 },
  },
}

-- An unsigned integer of a size at an offset (from zero) of a string
databento_marketdata_normalized_dbn_v3.file_handler.unsigned = function(bytes, at, size, big)
  local format = "<I"..size
  if big then
    format = ">I"..size
  end
  return (string.unpack(format, bytes, at + 1))
end


-- The bytes an element spans, from the length read at its start
databento_marketdata_normalized_dbn_v3.file_handler.measure = function(bytes, at, length)
  local value = databento_marketdata_normalized_dbn_v3.file_handler.unsigned(bytes, at + length.offset, length.size, length.big)
  if length.operator == "Plus" then
    return value + length.operand
  end
  if length.operator == "Minus" then
    return value - length.operand
  end
  if length.operator == "Multiply" then
    return value * length.operand
  end
  if length.operator == "Divide" then
    return value // length.operand
  end
  return value
end


-- Does a record of a length frame the message its type selects, at that message's size?
databento_marketdata_normalized_dbn_v3.file_handler.frames = function(bytes, at, total)
  local framing = databento_marketdata_normalized_dbn_v3.file_handler.framing
  if framing.discriminator == nil then
    return true
  end
  local from = at + framing.discriminator.offset
  local arm = framing.arms[bytes:sub(from + 1, from + framing.discriminator.size)]
  if arm == nil or total < arm.minimum then
    return false
  end
  if arm.maximum ~= nil then
    return total <= arm.maximum
  end
  return true
end


-- The layout a file is of: 1 when its first bytes read as a file of the tree (its constants, then up to 16 records framed), else nil
databento_marketdata_normalized_dbn_v3.file_handler.recognize = function(file)
  local head = file:read(65536)
  if head == nil then
    return nil
  end
  for _, constant in ipairs(databento_marketdata_normalized_dbn_v3.file_handler.constants) do
    if head:sub(constant.offset + 1, constant.offset + #constant.bytes) ~= constant.bytes then
      return nil
    end
  end

  local position = 0
  for _, extent in ipairs(databento_marketdata_normalized_dbn_v3.file_handler.preamble) do
    if extent.length == nil then
      position = position + extent.fixed
    else
      if position + extent.length.offset + extent.length.size > #head then
        return 1
      end
      position = position + databento_marketdata_normalized_dbn_v3.file_handler.measure(head, position, extent.length)
    end
  end

  local framing = databento_marketdata_normalized_dbn_v3.file_handler.framing
  local framed = 0
  while framed < 16 and position + framing.header <= #head do
    local total = databento_marketdata_normalized_dbn_v3.file_handler.measure(head, position, framing.length)
    if total < framing.header or not databento_marketdata_normalized_dbn_v3.file_handler.frames(head, position, total) then
      return nil
    end
    position = position + total
    framed = framed + 1
  end

  return 1
end


-- The bytes a file opens with: each element it opens with measured where it starts
databento_marketdata_normalized_dbn_v3.file_handler.opening = function(file)
  local position = 0
  for _, extent in ipairs(databento_marketdata_normalized_dbn_v3.file_handler.preamble) do
    if extent.length == nil then
      position = position + extent.fixed
    else
      local needed = extent.length.offset + extent.length.size
      file:seek("set", position)
      local head = file:read(needed)
      if head == nil or #head < needed then
        return nil
      end
      position = position + databento_marketdata_normalized_dbn_v3.file_handler.measure(head, 0, extent.length)
    end
  end
  return position
end


-- The frame at an offset, or with none the next: what the file opens with, then one record a frame
databento_marketdata_normalized_dbn_v3.file_handler.read = function(file, capture, offset)
  local state = capture.private_table
  if offset == nil then
    offset = state.next or 0
  end

  local size = nil
  if offset == 0 and #databento_marketdata_normalized_dbn_v3.file_handler.preamble > 0 then
    size = databento_marketdata_normalized_dbn_v3.file_handler.opening(file)
  else
    local header = databento_marketdata_normalized_dbn_v3.file_handler.framing.header
    file:seek("set", offset)
    local head = file:read(header)
    if head == nil or #head < header then
      return nil
    end
    size = databento_marketdata_normalized_dbn_v3.file_handler.measure(head, 0, databento_marketdata_normalized_dbn_v3.file_handler.framing.length)
    if size < header then
      return nil
    end
  end
  if size == nil then
    return nil
  end

  file:seek("set", offset)
  local data = file:read(size)
  if data == nil or #data < size then
    return nil
  end
  state.next = offset + size
  return offset, data
end



-----------------------------------------------------------------------
-- File Handler
-----------------------------------------------------------------------

-- File handler state
databento_marketdata_normalized_dbn_v3.file_handler.file = {}

-- Exported pdu tags each frame starts with: the dissector it is for, then the end of the tags
databento_marketdata_normalized_dbn_v3.file_handler.file.prefix = "\000\012\000\048omi.databento.marketdata.normalized.dbn.v3.file\000\000\000\000\000"

-- The layout a file is of, or nil for a file of no layout
databento_marketdata_normalized_dbn_v3.file_handler.file.layout = databento_marketdata_normalized_dbn_v3.file_handler.recognize

-- A record read into a frame, the one at an offset or with none the next: its offset, nil at the end of the file
databento_marketdata_normalized_dbn_v3.file_handler.file.frame = function(file, capture, frame, offset)
  local at, data, seconds, nanoseconds = databento_marketdata_normalized_dbn_v3.file_handler.read(file, capture, offset)
  if at == nil then
    return nil
  end
  data = databento_marketdata_normalized_dbn_v3.file_handler.file.prefix .. data
  frame.rec_type = wtap_rec_types.PACKET
  frame.captured_length = #data
  frame.original_length = #data
  frame.flags = wtap_presence_flags.CAP_LEN
  if seconds ~= nil then
    frame.time = NSTime(seconds, nanoseconds)
    frame.flags = wtap_presence_flags.TS + wtap_presence_flags.CAP_LEN
  end
  frame.data = data
  return at
end

-- Databento MarketData Normalized Dbn 3 (Omi) file handler: a magic number reader, its signatures the magic
databento_marketdata_normalized_dbn_v3.file_handler.file.handler = FileHandler.new("Databento MarketData Normalized Dbn 3 (Omi)", "omi_databento_marketdata_normalized_dbn_v3", "Databento MarketData Normalized Dbn 3 (Omi) file", "rm")

-- A file of a layout is this protocol's; read from its start, so its first line is the first frame
databento_marketdata_normalized_dbn_v3.file_handler.file.handler.read_open = function(file, capture)
  local layout = databento_marketdata_normalized_dbn_v3.file_handler.file.layout(file)
  if layout == nil then
    return false
  end
  databento_marketdata_normalized_dbn_v3.file_handler.file.variant = layout
  file:seek("set", 0)
  capture.private_table = {}
  capture.encap = wtap_encaps.WIRESHARK_UPPER_PDU
  capture.time_precision = wtap_tsprecs.NSEC
  return true
end

-- The next record, returning its offset in the file
databento_marketdata_normalized_dbn_v3.file_handler.file.handler.read = function(file, capture, frame)
  local offset = databento_marketdata_normalized_dbn_v3.file_handler.file.frame(file, capture, frame, nil)
  if offset == nil then
    return false
  end
  return offset
end

-- The record at an offset read before
databento_marketdata_normalized_dbn_v3.file_handler.file.handler.seek_read = function(file, capture, frame, offset)
  return databento_marketdata_normalized_dbn_v3.file_handler.file.frame(file, capture, frame, offset) ~= nil
end

-- Nothing is held open beyond the file Wireshark closes
databento_marketdata_normalized_dbn_v3.file_handler.file.handler.read_close = function(file, capture)
  return true
end

databento_marketdata_normalized_dbn_v3.file_handler.file.handler.seq_read_close = function(file, capture)
  return true
end

-- Register Databento MarketData Normalized Dbn 3 (Omi) files
register_filehandler(databento_marketdata_normalized_dbn_v3.file_handler.file.handler)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Databento
--   Version: 3
--   Date: Sunday, October 4, 2026
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
