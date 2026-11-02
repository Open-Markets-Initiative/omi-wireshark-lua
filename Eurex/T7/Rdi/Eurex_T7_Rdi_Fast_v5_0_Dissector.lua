-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex T7 Rdi Fast 5.0 Protocol
local omi_eurex_t7_rdi_fast_v5_0 = Proto("Omi.Eurex.T7.Rdi.Fast.v5.0", "Eurex T7 Rdi Fast 5.0")

-- Protocol table
local eurex_t7_rdi_fast_v5_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex T7 Rdi Fast 5.0 Framing
omi_eurex_t7_rdi_fast_v5_0.fields.message = ProtoField.new("Message", "eurex.t7.rdi.fast.v5.0.message", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.message_header = ProtoField.new("Message Header", "eurex.t7.rdi.fast.v5.0.messageheader", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_map = ProtoField.new("Presence Map", "eurex.t7.rdi.fast.v5.0.presencemap", ftypes.BYTES)
omi_eurex_t7_rdi_fast_v5_0.fields.template_id = ProtoField.new("Template Id", "eurex.t7.rdi.fast.v5.0.templateid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.record = ProtoField.new("Record", "eurex.t7.rdi.fast.v5.0.record", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_stop = ProtoField.new("Stop Bit", "eurex.t7.rdi.fast.v5.0.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_identified = ProtoField.new("Template Id", "eurex.t7.rdi.fast.v5.0.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_unused = ProtoField.new("Unused", "eurex.t7.rdi.fast.v5.0.presenceunused", ftypes.UINT8, nil, base.HEX)

-- Eurex T7 Rdi Fast 5.0 Presence Map Fields
omi_eurex_t7_rdi_fast_v5_0.fields.presence_msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.t7.rdi.fast.v5.0.msgseqnumpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_market_id = ProtoField.new("Market Id", "eurex.t7.rdi.fast.v5.0.marketidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_effective_business_date = ProtoField.new("Effective Business Date", "eurex.t7.rdi.fast.v5.0.effectivebusinessdatepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_next_effective_business_date = ProtoField.new("Next Effective Business Date", "eurex.t7.rdi.fast.v5.0.nexteffectivebusinessdatepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_market_segment_status = ProtoField.new("Market Segment Status", "eurex.t7.rdi.fast.v5.0.marketsegmentstatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_partition_id = ProtoField.new("Partition Id", "eurex.t7.rdi.fast.v5.0.partitionidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_derivatives_descriptor_group = ProtoField.new("Derivatives Descriptor Group", "eurex.t7.rdi.fast.v5.0.derivativesdescriptorgrouppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_underlying_descriptor_group = ProtoField.new("Underlying Descriptor Group", "eurex.t7.rdi.fast.v5.0.underlyingdescriptorgrouppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_no_instrument_scopes = ProtoField.new("No Instrument Scopes", "eurex.t7.rdi.fast.v5.0.noinstrumentscopespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_base_trading_rules_derivatives = ProtoField.new("Base Trading Rules Derivatives", "eurex.t7.rdi.fast.v5.0.basetradingrulesderivativespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_base_trading_rules_cash = ProtoField.new("Base Trading Rules Cash", "eurex.t7.rdi.fast.v5.0.basetradingrulescashpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_no_match_rules = ProtoField.new("No Match Rules", "eurex.t7.rdi.fast.v5.0.nomatchrulespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_no_md_feed_types = ProtoField.new("No Md Feed Types", "eurex.t7.rdi.fast.v5.0.nomdfeedtypespresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_security_type = ProtoField.new("Security Type", "eurex.t7.rdi.fast.v5.0.securitytypepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_security_status = ProtoField.new("Security Status", "eurex.t7.rdi.fast.v5.0.securitystatuspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_security_exchange = ProtoField.new("Security Exchange", "eurex.t7.rdi.fast.v5.0.securityexchangepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_product_complex = ProtoField.new("Product Complex", "eurex.t7.rdi.fast.v5.0.productcomplexpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_cash_descriptor_group = ProtoField.new("Cash Descriptor Group", "eurex.t7.rdi.fast.v5.0.cashdescriptorgrouppresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_instrument_price_precision = ProtoField.new("Instrument Price Precision", "eurex.t7.rdi.fast.v5.0.instrumentpriceprecisionpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_min_price_increment = ProtoField.new("Min Price Increment", "eurex.t7.rdi.fast.v5.0.minpriceincrementpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_min_price_increment_clearing = ProtoField.new("Min Price Increment Clearing", "eurex.t7.rdi.fast.v5.0.minpriceincrementclearingpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "eurex.t7.rdi.fast.v5.0.minpriceincrementamountpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_prior_settl_price = ProtoField.new("Prior Settl Price", "eurex.t7.rdi.fast.v5.0.priorsettlpricepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_settl_price = ProtoField.new("Settl Price", "eurex.t7.rdi.fast.v5.0.settlpricepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_sender_sub_id = ProtoField.new("Sender Sub Id", "eurex.t7.rdi.fast.v5.0.sendersubidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_md_report_event = ProtoField.new("Md Report Event", "eurex.t7.rdi.fast.v5.0.mdreporteventpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_tot_no_market_segment_reports = ProtoField.new("Tot No Market Segment Reports", "eurex.t7.rdi.fast.v5.0.totnomarketsegmentreportspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_tot_no_instrument_reports = ProtoField.new("Tot No Instrument Reports", "eurex.t7.rdi.fast.v5.0.totnoinstrumentreportspresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_eurex_t7_rdi_fast_v5_0.fields.presence_sender_comp_id = ProtoField.new("Sender Comp Id", "eurex.t7.rdi.fast.v5.0.sendercompidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

-- Eurex T7 Rdi Fast 5.0 Fields
omi_eurex_t7_rdi_fast_v5_0.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "eurex.t7.rdi.fast.v5.0.sendercompid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.packet_seq_num = ProtoField.new("Packet Seq Num", "eurex.t7.rdi.fast.v5.0.packetseqnum", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.sending_time = ProtoField.new("Sending Time", "eurex.t7.rdi.fast.v5.0.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_rdi_fast_v5_0.fields.msg_type = ProtoField.new("Msg Type", "eurex.t7.rdi.fast.v5.0.msgtype", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.t7.rdi.fast.v5.0.msgseqnum", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.market_id = ProtoField.new("Market Id", "eurex.t7.rdi.fast.v5.0.marketid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.t7.rdi.fast.v5.0.marketsegmentid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.effective_business_date = ProtoField.new("Effective Business Date", "eurex.t7.rdi.fast.v5.0.effectivebusinessdate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.next_effective_business_date = ProtoField.new("Next Effective Business Date", "eurex.t7.rdi.fast.v5.0.nexteffectivebusinessdate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.market_segment = ProtoField.new("Market Segment", "eurex.t7.rdi.fast.v5.0.marketsegment", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_status = ProtoField.new("Market Segment Status", "eurex.t7.rdi.fast.v5.0.marketsegmentstatus", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.partition_id = ProtoField.new("Partition Id", "eurex.t7.rdi.fast.v5.0.partitionid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.currency = ProtoField.new("Currency", "eurex.t7.rdi.fast.v5.0.currency", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_desc = ProtoField.new("Market Segment Desc", "eurex.t7.rdi.fast.v5.0.marketsegmentdesc", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_symbol = ProtoField.new("Market Segment Symbol", "eurex.t7.rdi.fast.v5.0.marketsegmentsymbol", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.parent_mkt_segm_id = ProtoField.new("Parent Mkt Segm Id", "eurex.t7.rdi.fast.v5.0.parentmktsegmid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.us_firm_flag = ProtoField.new("Us Firm Flag", "eurex.t7.rdi.fast.v5.0.usfirmflag", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_type = ProtoField.new("Market Segment Type", "eurex.t7.rdi.fast.v5.0.marketsegmenttype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_sub_type = ProtoField.new("Market Segment Sub Type", "eurex.t7.rdi.fast.v5.0.marketsegmentsubtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.underlying_security_exchange = ProtoField.new("Underlying Security Exchange", "eurex.t7.rdi.fast.v5.0.underlyingsecurityexchange", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "eurex.t7.rdi.fast.v5.0.underlyingsymbol", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "eurex.t7.rdi.fast.v5.0.underlyingsecurityid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.underlying_security_id_source = ProtoField.new("Underlying Security Id Source", "eurex.t7.rdi.fast.v5.0.underlyingsecurityidsource", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.underlying_prev_close_px = ProtoField.new("Underlying Prev Close Px", "eurex.t7.rdi.fast.v5.0.underlyingprevclosepx", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.no_instrument_scopes = ProtoField.new("No Instrument Scopes", "eurex.t7.rdi.fast.v5.0.noinstrumentscopes", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_scope_operator = ProtoField.new("Instrument Scope Operator", "eurex.t7.rdi.fast.v5.0.instrumentscopeoperator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_scope_security_type = ProtoField.new("Instrument Scope Security Type", "eurex.t7.rdi.fast.v5.0.instrumentscopesecuritytype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_scope_security_sub_type = ProtoField.new("Instrument Scope Security Sub Type", "eurex.t7.rdi.fast.v5.0.instrumentscopesecuritysubtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.no_related_market_segments = ProtoField.new("No Related Market Segments", "eurex.t7.rdi.fast.v5.0.norelatedmarketsegments", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.related_market_segment_id = ProtoField.new("Related Market Segment Id", "eurex.t7.rdi.fast.v5.0.relatedmarketsegmentid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.market_segments_relationship = ProtoField.new("Market Segments Relationship", "eurex.t7.rdi.fast.v5.0.marketsegmentsrelationship", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.no_tick_rules = ProtoField.new("No Tick Rules", "eurex.t7.rdi.fast.v5.0.notickrules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.tick_rule_id = ProtoField.new("Tick Rule Id", "eurex.t7.rdi.fast.v5.0.tickruleid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.tick_rule_product_complex = ProtoField.new("Tick Rule Product Complex", "eurex.t7.rdi.fast.v5.0.tickruleproductcomplex", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.start_tick_price_range = ProtoField.new("Start Tick Price Range", "eurex.t7.rdi.fast.v5.0.starttickpricerange", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.end_tick_price_range = ProtoField.new("End Tick Price Range", "eurex.t7.rdi.fast.v5.0.endtickpricerange", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.tick_increment = ProtoField.new("Tick Increment", "eurex.t7.rdi.fast.v5.0.tickincrement", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.no_price_range_rules = ProtoField.new("No Price Range Rules", "eurex.t7.rdi.fast.v5.0.nopricerangerules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.price_range_rule_id = ProtoField.new("Price Range Rule Id", "eurex.t7.rdi.fast.v5.0.pricerangeruleid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.price_range_product_complex = ProtoField.new("Price Range Product Complex", "eurex.t7.rdi.fast.v5.0.pricerangeproductcomplex", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.start_price_range = ProtoField.new("Start Price Range", "eurex.t7.rdi.fast.v5.0.startpricerange", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.end_price_range = ProtoField.new("End Price Range", "eurex.t7.rdi.fast.v5.0.endpricerange", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.price_range_value = ProtoField.new("Price Range Value", "eurex.t7.rdi.fast.v5.0.pricerangevalue", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.price_range_percentage = ProtoField.new("Price Range Percentage", "eurex.t7.rdi.fast.v5.0.pricerangepercentage", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.quote_side_indicator = ProtoField.new("Quote Side Indicator", "eurex.t7.rdi.fast.v5.0.quotesideindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.fast_market_percentage = ProtoField.new("Fast Market Percentage", "eurex.t7.rdi.fast.v5.0.fastmarketpercentage", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.no_quote_size_rules = ProtoField.new("No Quote Size Rules", "eurex.t7.rdi.fast.v5.0.noquotesizerules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.min_bid_size = ProtoField.new("Min Bid Size", "eurex.t7.rdi.fast.v5.0.minbidsize", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.min_offer_size = ProtoField.new("Min Offer Size", "eurex.t7.rdi.fast.v5.0.minoffersize", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "eurex.t7.rdi.fast.v5.0.fastmarketindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.no_flex_product_eligibilities = ProtoField.new("No Flex Product Eligibilities", "eurex.t7.rdi.fast.v5.0.noflexproducteligibilities", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.flex_product_eligibility_complex = ProtoField.new("Flex Product Eligibility Complex", "eurex.t7.rdi.fast.v5.0.flexproducteligibilitycomplex", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.flex_product_eligibility_indicator = ProtoField.new("Flex Product Eligibility Indicator", "eurex.t7.rdi.fast.v5.0.flexproducteligibilityindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.no_auction_type_rules = ProtoField.new("No Auction Type Rules", "eurex.t7.rdi.fast.v5.0.noauctiontyperules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.auction_type = ProtoField.new("Auction Type", "eurex.t7.rdi.fast.v5.0.auctiontype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.closed_book_indicator = ProtoField.new("Closed Book Indicator", "eurex.t7.rdi.fast.v5.0.closedbookindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.market_imbalance_indicator = ProtoField.new("Market Imbalance Indicator", "eurex.t7.rdi.fast.v5.0.marketimbalanceindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.no_match_rules = ProtoField.new("No Match Rules", "eurex.t7.rdi.fast.v5.0.nomatchrules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.match_rule_product_complex = ProtoField.new("Match Rule Product Complex", "eurex.t7.rdi.fast.v5.0.matchruleproductcomplex", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.match_algorithm = ProtoField.new("Match Algorithm", "eurex.t7.rdi.fast.v5.0.matchalgorithm", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.match_type = ProtoField.new("Match Type", "eurex.t7.rdi.fast.v5.0.matchtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.no_md_feed_types = ProtoField.new("No Md Feed Types", "eurex.t7.rdi.fast.v5.0.nomdfeedtypes", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.md_feed_type = ProtoField.new("Md Feed Type", "eurex.t7.rdi.fast.v5.0.mdfeedtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.md_book_type = ProtoField.new("Md Book Type", "eurex.t7.rdi.fast.v5.0.mdbooktype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.market_depth = ProtoField.new("Market Depth", "eurex.t7.rdi.fast.v5.0.marketdepth", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.market_depth_time_interval = ProtoField.new("Market Depth Time Interval", "eurex.t7.rdi.fast.v5.0.marketdepthtimeinterval", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.md_recovery_time_interval = ProtoField.new("Md Recovery Time Interval", "eurex.t7.rdi.fast.v5.0.mdrecoverytimeinterval", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.primary_service_location_id = ProtoField.new("Primary Service Location Id", "eurex.t7.rdi.fast.v5.0.primaryservicelocationid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.primary_service_location_sub_id = ProtoField.new("Primary Service Location Sub Id", "eurex.t7.rdi.fast.v5.0.primaryservicelocationsubid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.secondary_service_location_id = ProtoField.new("Secondary Service Location Id", "eurex.t7.rdi.fast.v5.0.secondaryservicelocationid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.secondary_service_location_sub_id = ProtoField.new("Secondary Service Location Sub Id", "eurex.t7.rdi.fast.v5.0.secondaryservicelocationsubid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.security_id = ProtoField.new("Security Id", "eurex.t7.rdi.fast.v5.0.securityid", ftypes.INT64)
omi_eurex_t7_rdi_fast_v5_0.fields.security_id_source = ProtoField.new("Security Id Source", "eurex.t7.rdi.fast.v5.0.securityidsource", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.no_security_alt_id = ProtoField.new("No Security Alt Id", "eurex.t7.rdi.fast.v5.0.nosecurityaltid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.security_alt_id = ProtoField.new("Security Alt Id", "eurex.t7.rdi.fast.v5.0.securityaltid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "eurex.t7.rdi.fast.v5.0.securityaltidsource", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.security_type = ProtoField.new("Security Type", "eurex.t7.rdi.fast.v5.0.securitytype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.security_status = ProtoField.new("Security Status", "eurex.t7.rdi.fast.v5.0.securitystatus", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.security_desc = ProtoField.new("Security Desc", "eurex.t7.rdi.fast.v5.0.securitydesc", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.security_exchange = ProtoField.new("Security Exchange", "eurex.t7.rdi.fast.v5.0.securityexchange", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.product_complex = ProtoField.new("Product Complex", "eurex.t7.rdi.fast.v5.0.productcomplex", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.cfi_code = ProtoField.new("Cfi Code", "eurex.t7.rdi.fast.v5.0.cficode", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.security_sub_type = ProtoField.new("Security Sub Type", "eurex.t7.rdi.fast.v5.0.securitysubtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.maturity_date = ProtoField.new("Maturity Date", "eurex.t7.rdi.fast.v5.0.maturitydate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "eurex.t7.rdi.fast.v5.0.maturitymonthyear", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.strike_price = ProtoField.new("Strike Price", "eurex.t7.rdi.fast.v5.0.strikeprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.strike_price_precision = ProtoField.new("Strike Price Precision", "eurex.t7.rdi.fast.v5.0.strikepriceprecision", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "eurex.t7.rdi.fast.v5.0.contractmultiplier", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.put_or_call = ProtoField.new("Put Or Call", "eurex.t7.rdi.fast.v5.0.putorcall", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.opt_attribute = ProtoField.new("Opt Attribute", "eurex.t7.rdi.fast.v5.0.optattribute", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.exercise_style = ProtoField.new("Exercise Style", "eurex.t7.rdi.fast.v5.0.exercisestyle", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.orig_strike_price = ProtoField.new("Orig Strike Price", "eurex.t7.rdi.fast.v5.0.origstrikeprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.contract_generation_number = ProtoField.new("Contract Generation Number", "eurex.t7.rdi.fast.v5.0.contractgenerationnumber", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.low_exercise_price_option_indicator = ProtoField.new("Low Exercise Price Option Indicator", "eurex.t7.rdi.fast.v5.0.lowexercisepriceoptionindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.valuation_method = ProtoField.new("Valuation Method", "eurex.t7.rdi.fast.v5.0.valuationmethod", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.settl_method = ProtoField.new("Settl Method", "eurex.t7.rdi.fast.v5.0.settlmethod", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.settl_sub_method = ProtoField.new("Settl Sub Method", "eurex.t7.rdi.fast.v5.0.settlsubmethod", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.prior_settl_price = ProtoField.new("Prior Settl Price", "eurex.t7.rdi.fast.v5.0.priorsettlprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.symbol = ProtoField.new("Symbol", "eurex.t7.rdi.fast.v5.0.symbol", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.no_legs = ProtoField.new("No Legs", "eurex.t7.rdi.fast.v5.0.nolegs", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.leg_symbol = ProtoField.new("Leg Symbol", "eurex.t7.rdi.fast.v5.0.legsymbol", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.leg_security_id = ProtoField.new("Leg Security Id", "eurex.t7.rdi.fast.v5.0.legsecurityid", ftypes.INT64)
omi_eurex_t7_rdi_fast_v5_0.fields.leg_security_id_source = ProtoField.new("Leg Security Id Source", "eurex.t7.rdi.fast.v5.0.legsecurityidsource", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.leg_security_type = ProtoField.new("Leg Security Type", "eurex.t7.rdi.fast.v5.0.legsecuritytype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.leg_side = ProtoField.new("Leg Side", "eurex.t7.rdi.fast.v5.0.legside", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "eurex.t7.rdi.fast.v5.0.legratioqty", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.leg_price = ProtoField.new("Leg Price", "eurex.t7.rdi.fast.v5.0.legprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.transact_time = ProtoField.new("Transact Time", "eurex.t7.rdi.fast.v5.0.transacttime", ftypes.ABSOLUTE_TIME, nil, base.UTC)
omi_eurex_t7_rdi_fast_v5_0.fields.ref_tick_table_id = ProtoField.new("Ref Tick Table Id", "eurex.t7.rdi.fast.v5.0.refticktableid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.settl_currency = ProtoField.new("Settl Currency", "eurex.t7.rdi.fast.v5.0.settlcurrency", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.no_instrument_parties = ProtoField.new("No Instrument Parties", "eurex.t7.rdi.fast.v5.0.noinstrumentparties", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_id = ProtoField.new("Instrument Party Id", "eurex.t7.rdi.fast.v5.0.instrumentpartyid", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_id_source = ProtoField.new("Instrument Party Id Source", "eurex.t7.rdi.fast.v5.0.instrumentpartyidsource", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_role = ProtoField.new("Instrument Party Role", "eurex.t7.rdi.fast.v5.0.instrumentpartyrole", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_role_qualifier = ProtoField.new("Instrument Party Role Qualifier", "eurex.t7.rdi.fast.v5.0.instrumentpartyrolequalifier", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.no_instr_attrib = ProtoField.new("No Instr Attrib", "eurex.t7.rdi.fast.v5.0.noinstrattrib", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.instr_attrib_type = ProtoField.new("Instr Attrib Type", "eurex.t7.rdi.fast.v5.0.instrattribtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.instr_attrib_value = ProtoField.new("Instr Attrib Value", "eurex.t7.rdi.fast.v5.0.instrattribvalue", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.no_events = ProtoField.new("No Events", "eurex.t7.rdi.fast.v5.0.noevents", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.event_type = ProtoField.new("Event Type", "eurex.t7.rdi.fast.v5.0.eventtype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.event_date = ProtoField.new("Event Date", "eurex.t7.rdi.fast.v5.0.eventdate", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_price_precision = ProtoField.new("Instrument Price Precision", "eurex.t7.rdi.fast.v5.0.instrumentpriceprecision", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.min_price_increment = ProtoField.new("Min Price Increment", "eurex.t7.rdi.fast.v5.0.minpriceincrement", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.min_price_increment_clearing = ProtoField.new("Min Price Increment Clearing", "eurex.t7.rdi.fast.v5.0.minpriceincrementclearing", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "eurex.t7.rdi.fast.v5.0.minpriceincrementamount", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.no_market_segments = ProtoField.new("No Market Segments", "eurex.t7.rdi.fast.v5.0.nomarketsegments", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "eurex.t7.rdi.fast.v5.0.impliedmarketindicator", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.multileg_model = ProtoField.new("Multileg Model", "eurex.t7.rdi.fast.v5.0.multilegmodel", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.price_type = ProtoField.new("Price Type", "eurex.t7.rdi.fast.v5.0.pricetype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.post_trade_anonymity = ProtoField.new("Post Trade Anonymity", "eurex.t7.rdi.fast.v5.0.posttradeanonymity", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.settl_business_days = ProtoField.new("Settl Business Days", "eurex.t7.rdi.fast.v5.0.settlbusinessdays", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.no_trading_session_rules = ProtoField.new("No Trading Session Rules", "eurex.t7.rdi.fast.v5.0.notradingsessionrules", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "eurex.t7.rdi.fast.v5.0.tradingsessionid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.t7.rdi.fast.v5.0.tradingsessionsubid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.security_update_action = ProtoField.new("Security Update Action", "eurex.t7.rdi.fast.v5.0.securityupdateaction", ftypes.STRING)
omi_eurex_t7_rdi_fast_v5_0.fields.no_clearing_price_parameters = ProtoField.new("No Clearing Price Parameters", "eurex.t7.rdi.fast.v5.0.noclearingpriceparameters", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.business_day_type = ProtoField.new("Business Day Type", "eurex.t7.rdi.fast.v5.0.businessdaytype", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.clearing_price_offset = ProtoField.new("Clearing Price Offset", "eurex.t7.rdi.fast.v5.0.clearingpriceoffset", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.vega_multiplier = ProtoField.new("Vega Multiplier", "eurex.t7.rdi.fast.v5.0.vegamultiplier", ftypes.UINT64)
omi_eurex_t7_rdi_fast_v5_0.fields.annual_trading_business_days = ProtoField.new("Annual Trading Business Days", "eurex.t7.rdi.fast.v5.0.annualtradingbusinessdays", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.total_trading_business_days = ProtoField.new("Total Trading Business Days", "eurex.t7.rdi.fast.v5.0.totaltradingbusinessdays", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.trading_business_days = ProtoField.new("Trading Business Days", "eurex.t7.rdi.fast.v5.0.tradingbusinessdays", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.standard_variance = ProtoField.new("Standard Variance", "eurex.t7.rdi.fast.v5.0.standardvariance", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.related_close_price = ProtoField.new("Related Close Price", "eurex.t7.rdi.fast.v5.0.relatedcloseprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.realized_variance = ProtoField.new("Realized Variance", "eurex.t7.rdi.fast.v5.0.realizedvariance", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.risk_free_rate = ProtoField.new("Risk Free Rate", "eurex.t7.rdi.fast.v5.0.riskfreerate", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.discount_factor = ProtoField.new("Discount Factor", "eurex.t7.rdi.fast.v5.0.discountfactor", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.overnight_interest_rate = ProtoField.new("Overnight Interest Rate", "eurex.t7.rdi.fast.v5.0.overnightinterestrate", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.accumulated_return_modified_variation_margin = ProtoField.new("Accumulated Return Modified Variation Margin", "eurex.t7.rdi.fast.v5.0.accumulatedreturnmodifiedvariationmargin", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.volatility = ProtoField.new("Volatility", "eurex.t7.rdi.fast.v5.0.volatility", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.clearing_settl_price = ProtoField.new("Clearing Settl Price", "eurex.t7.rdi.fast.v5.0.clearingsettlprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.calculation_method = ProtoField.new("Calculation Method", "eurex.t7.rdi.fast.v5.0.calculationmethod", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.settl_price = ProtoField.new("Settl Price", "eurex.t7.rdi.fast.v5.0.settlprice", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.annual_calendar_days = ProtoField.new("Annual Calendar Days", "eurex.t7.rdi.fast.v5.0.annualcalendardays", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.remaining_calendar_days = ProtoField.new("Remaining Calendar Days", "eurex.t7.rdi.fast.v5.0.remainingcalendardays", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.current_payment_parameter = ProtoField.new("Current Payment Parameter", "eurex.t7.rdi.fast.v5.0.currentpaymentparameter", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.accrued_payment_parameter = ProtoField.new("Accrued Payment Parameter", "eurex.t7.rdi.fast.v5.0.accruedpaymentparameter", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.related_index_value = ProtoField.new("Related Index Value", "eurex.t7.rdi.fast.v5.0.relatedindexvalue", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.current_collection_parameter = ProtoField.new("Current Collection Parameter", "eurex.t7.rdi.fast.v5.0.currentcollectionparameter", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.accrued_collection_parameter = ProtoField.new("Accrued Collection Parameter", "eurex.t7.rdi.fast.v5.0.accruedcollectionparameter", ftypes.DOUBLE)
omi_eurex_t7_rdi_fast_v5_0.fields.md_report_count = ProtoField.new("Md Report Count", "eurex.t7.rdi.fast.v5.0.mdreportcount", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.sender_sub_id = ProtoField.new("Sender Sub Id", "eurex.t7.rdi.fast.v5.0.sendersubid", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "eurex.t7.rdi.fast.v5.0.lastmsgseqnumprocessed", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.md_report_event = ProtoField.new("Md Report Event", "eurex.t7.rdi.fast.v5.0.mdreportevent", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.tot_no_market_segment_reports = ProtoField.new("Tot No Market Segment Reports", "eurex.t7.rdi.fast.v5.0.totnomarketsegmentreports", ftypes.UINT32)
omi_eurex_t7_rdi_fast_v5_0.fields.tot_no_instrument_reports = ProtoField.new("Tot No Instrument Reports", "eurex.t7.rdi.fast.v5.0.totnoinstrumentreports", ftypes.UINT32)

-- Eurex T7 Rdi Fast 5.0 Messages
omi_eurex_t7_rdi_fast_v5_0.fields.rd_packet_header = ProtoField.new("Rd Packet Header Framing", "eurex.t7.rdi.fast.v5.0.rdpacketheader", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.product_snapshot = ProtoField.new("Product Snapshot Message", "eurex.t7.rdi.fast.v5.0.productsnapshot", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.product_snapshot_derivatives_descriptor_group = ProtoField.new("Product Snapshot Derivatives Descriptor Group", "eurex.t7.rdi.fast.v5.0.productsnapshotderivativesdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.underlying_descriptor_group = ProtoField.new("Underlying Descriptor Group", "eurex.t7.rdi.fast.v5.0.underlyingdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_scopes = ProtoField.new("Instrument Scopes", "eurex.t7.rdi.fast.v5.0.instrumentscopes", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.related_market_segments = ProtoField.new("Related Market Segments", "eurex.t7.rdi.fast.v5.0.relatedmarketsegments", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.base_trading_rules = ProtoField.new("Base Trading Rules", "eurex.t7.rdi.fast.v5.0.basetradingrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.tick_rules = ProtoField.new("Tick Rules", "eurex.t7.rdi.fast.v5.0.tickrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.product_snapshot_price_range_rules = ProtoField.new("Product Snapshot Price Range Rules", "eurex.t7.rdi.fast.v5.0.productsnapshotpricerangerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.base_trading_rules_derivatives = ProtoField.new("Base Trading Rules Derivatives", "eurex.t7.rdi.fast.v5.0.basetradingrulesderivatives", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.product_snapshot_quote_size_rules = ProtoField.new("Product Snapshot Quote Size Rules", "eurex.t7.rdi.fast.v5.0.productsnapshotquotesizerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.flex_rules = ProtoField.new("Flex Rules", "eurex.t7.rdi.fast.v5.0.flexrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.base_trading_rules_cash = ProtoField.new("Base Trading Rules Cash", "eurex.t7.rdi.fast.v5.0.basetradingrulescash", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.auction_type_rules = ProtoField.new("Auction Type Rules", "eurex.t7.rdi.fast.v5.0.auctiontyperules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.match_rules = ProtoField.new("Match Rules", "eurex.t7.rdi.fast.v5.0.matchrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.feeds = ProtoField.new("Feeds", "eurex.t7.rdi.fast.v5.0.feeds", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_snapshot = ProtoField.new("Instrument Snapshot Message", "eurex.t7.rdi.fast.v5.0.instrumentsnapshot", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.security_alt = ProtoField.new("Security Alt", "eurex.t7.rdi.fast.v5.0.securityalt", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_snapshot_derivatives_descriptor_group = ProtoField.new("Instrument Snapshot Derivatives Descriptor Group", "eurex.t7.rdi.fast.v5.0.instrumentsnapshotderivativesdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.simple_instrument_descriptor_group = ProtoField.new("Simple Instrument Descriptor Group", "eurex.t7.rdi.fast.v5.0.simpleinstrumentdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.complex_instrument_descriptor_group = ProtoField.new("Complex Instrument Descriptor Group", "eurex.t7.rdi.fast.v5.0.complexinstrumentdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrmt_leg_grp = ProtoField.new("Instrmt Leg Grp", "eurex.t7.rdi.fast.v5.0.instrmtleggrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.cash_descriptor_group = ProtoField.new("Cash Descriptor Group", "eurex.t7.rdi.fast.v5.0.cashdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_parties = ProtoField.new("Instrument Parties", "eurex.t7.rdi.fast.v5.0.instrumentparties", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_attributes = ProtoField.new("Instrument Attributes", "eurex.t7.rdi.fast.v5.0.instrumentattributes", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.events = ProtoField.new("Events", "eurex.t7.rdi.fast.v5.0.events", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_grp = ProtoField.new("Market Segment Grp", "eurex.t7.rdi.fast.v5.0.marketsegmentgrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_snapshot_quote_size_rules = ProtoField.new("Instrument Snapshot Quote Size Rules", "eurex.t7.rdi.fast.v5.0.instrumentsnapshotquotesizerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_snapshot_price_range_rules = ProtoField.new("Instrument Snapshot Price Range Rules", "eurex.t7.rdi.fast.v5.0.instrumentsnapshotpricerangerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.trading_session_rules = ProtoField.new("Trading Session Rules", "eurex.t7.rdi.fast.v5.0.tradingsessionrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_incremental = ProtoField.new("Instrument Incremental Message", "eurex.t7.rdi.fast.v5.0.instrumentincremental", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.security_alt = ProtoField.new("Security Alt", "eurex.t7.rdi.fast.v5.0.securityalt", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_incremental_derivatives_descriptor_group = ProtoField.new("Instrument Incremental Derivatives Descriptor Group", "eurex.t7.rdi.fast.v5.0.instrumentincrementalderivativesdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.simple_instrument_descriptor_group = ProtoField.new("Simple Instrument Descriptor Group", "eurex.t7.rdi.fast.v5.0.simpleinstrumentdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.complex_instrument_descriptor_group = ProtoField.new("Complex Instrument Descriptor Group", "eurex.t7.rdi.fast.v5.0.complexinstrumentdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrmt_leg_grp = ProtoField.new("Instrmt Leg Grp", "eurex.t7.rdi.fast.v5.0.instrmtleggrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.cash_descriptor_group = ProtoField.new("Cash Descriptor Group", "eurex.t7.rdi.fast.v5.0.cashdescriptorgroup", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_parties = ProtoField.new("Instrument Parties", "eurex.t7.rdi.fast.v5.0.instrumentparties", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_attributes = ProtoField.new("Instrument Attributes", "eurex.t7.rdi.fast.v5.0.instrumentattributes", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.events = ProtoField.new("Events", "eurex.t7.rdi.fast.v5.0.events", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_grp = ProtoField.new("Market Segment Grp", "eurex.t7.rdi.fast.v5.0.marketsegmentgrp", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_incremental_quote_size_rules = ProtoField.new("Instrument Incremental Quote Size Rules", "eurex.t7.rdi.fast.v5.0.instrumentincrementalquotesizerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.instrument_incremental_price_range_rules = ProtoField.new("Instrument Incremental Price Range Rules", "eurex.t7.rdi.fast.v5.0.instrumentincrementalpricerangerules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.trading_session_rules = ProtoField.new("Trading Session Rules", "eurex.t7.rdi.fast.v5.0.tradingsessionrules", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.variance_futures_status = ProtoField.new("Variance Futures Status Message", "eurex.t7.rdi.fast.v5.0.variancefuturesstatus", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.variance_futures_status_clearing_price_parameters = ProtoField.new("Variance Futures Status Clearing Price Parameters", "eurex.t7.rdi.fast.v5.0.variancefuturesstatusclearingpriceparameters", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.total_return_futures_status = ProtoField.new("Total Return Futures Status Message", "eurex.t7.rdi.fast.v5.0.totalreturnfuturesstatus", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.total_return_futures_status_clearing_price_parameters = ProtoField.new("Total Return Futures Status Clearing Price Parameters", "eurex.t7.rdi.fast.v5.0.totalreturnfuturesstatusclearingpriceparameters", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.trade_at_reference_price_status = ProtoField.new("Trade At Reference Price Status Message", "eurex.t7.rdi.fast.v5.0.tradeatreferencepricestatus", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.trade_at_reference_price_status_clearing_price_parameters = ProtoField.new("Trade At Reference Price Status Clearing Price Parameters", "eurex.t7.rdi.fast.v5.0.tradeatreferencepricestatusclearingpriceparameters", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.market_data_report = ProtoField.new("Market Data Report Message", "eurex.t7.rdi.fast.v5.0.marketdatareport", ftypes.NONE)
omi_eurex_t7_rdi_fast_v5_0.fields.beacon = ProtoField.new("Beacon Message", "eurex.t7.rdi.fast.v5.0.beacon", ftypes.NONE)

-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- read a fast presence map: seven bits an octet, closed by the stop bit
local function read_presence_map(buffer, offset)
  local bits = {}
  local masks = { 0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01 }
  local octet

  repeat
    if offset >= buffer:len() then error("truncated FAST presence map") end
    octet = buffer(offset, 1):uint()
    offset = offset + 1

    for _, mask in ipairs(masks) do
      bits[#bits + 1] = bit.band(octet, mask) ~= 0
    end
  until bit.band(octet, 0x80) ~= 0

  return bits, offset
end

-- add a presence map to the tree as the bitfield it is.
--
-- The first bit of the first octet says whether the template id was sent; the
-- rest gate the fields that read the map, in the order the template declares
-- them. Which field each bit is comes from the template, so named carries that
-- template's bits and each line reads as the field it gates. A bit the template
-- does not name falls back to its number.
-- one bit of an octet, as the one or nought a presence field is added with
local function presence_bit(octet, mask)
  if bit.band(octet, mask) ~= 0 then
    return 1
  end

  return 0
end

-- an octet's bits written out, so the map line shows the layout the fields
-- beneath it are read from
local function presence_layout(octet)
  local written = ""

  for position = 0, 7 do
    if position == 4 then written = written .. " " end

    written = written .. presence_bit(octet, bit.rshift(0x80, position))
  end

  return written
end

local function add_presence_map(parent, range, map_field, stop_field, identified, unused_field, named)
  local node = parent:add(map_field, range)
  local layout = {}

  for octet = 0, range:len() - 1 do
    local scope = node
    local octet_range = range:range(octet, 1)
    local octet_value = octet_range:uint()
    local first = octet * 7 + 1
    local unused = 0
    local unnamed = 0

    layout[#layout + 1] = presence_layout(octet_value)

    -- a map wider than one octet says which fields each octet carries, or every
    -- octet would show the same seven bits with nothing to tell them apart
    if range:len() > 1 then
      scope = node:add(map_field, octet_range)
      scope:set_text(string.format("Octet %d: fields %d to %d",
        octet + 1, first, first + 6))
    end

    -- the eighth bit closes the run rather than gating a field
    scope:add(stop_field, octet_range, presence_bit(octet_value, 0x80))

    for position = 0, 6 do
      local index = first + position
      local mask = bit.rshift(0x40, position)

      if index == 1 then
        scope:add(identified, octet_range, presence_bit(octet_value, mask))
      elseif named ~= nil and named[index] ~= nil then
        scope:add(named[index], octet_range, presence_bit(octet_value, mask))
      else
        -- carries no field this dissector names, so it joins the unused run
        unnamed = unnamed + 1
        unused = unused + bit.band(octet_value, mask)
      end
    end

    if unnamed > 0 then
      scope:add(unused_field, octet_range, unused)
    end
  end

  node:append_text(" (" .. table.concat(layout, " ") .. ")")

  return node
end

-- Seven bits an octet, so ten octets hold the widest value FAST carries and a
-- longer run is not an integer of any width. Reading one on matters because a
-- Lua integer wraps on overflow rather than widening: the run would come back
-- negative and be used as a length, which raises from inside Wireshark rather
-- than saying what was wrong with the packet. The two that accumulate into
-- Wireshark's own 64 bit values take all ten; the two that accumulate into a
-- Lua integer stop at the nine that cannot overflow it, a value needing the
-- tenth being wider than anything they are asked to read.
local FAST_WIDE_OCTETS = 10
local FAST_NUMBER_OCTETS = 9

-- read an unsigned fast integer
local function read_stop_bit_unsigned(buffer, offset)
  local value = 0
  local octet
  local octets = 0

  repeat
    if offset >= buffer:len() then error("truncated FAST unsigned integer") end
    if octets == FAST_NUMBER_OCTETS then error("FAST unsigned integer wider than 63 bits") end
    octet = buffer(offset, 1):uint()
    value = (value * 128) + bit.band(octet, 0x7f)
    offset = offset + 1
    octets = octets + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- read a signed fast integer, its sign taken from the first octet
local function read_stop_bit_signed(buffer, offset)
  if offset >= buffer:len() then error("truncated FAST signed integer") end
  local octet = buffer(offset, 1):uint()
  local value = (bit.band(octet, 0x40) ~= 0) and -1 or 0
  local octets = 0

  repeat
    if offset >= buffer:len() then error("truncated FAST signed integer") end
    if octets == FAST_NUMBER_OCTETS then error("FAST signed integer wider than 63 bits") end
    octet = buffer(offset, 1):uint()
    value = (value * 128) + bit.band(octet, 0x7f)
    offset = offset + 1
    octets = octets + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- read a wide unsigned fast integer, which keeps its low bits as a UInt64
local function read_stop_bit_uint64(buffer, offset)
  local value = UInt64(0)
  local octet
  local octets = 0

  repeat
    if offset >= buffer:len() then error("truncated FAST unsigned integer") end
    if octets == FAST_WIDE_OCTETS then error("FAST unsigned integer wider than 64 bits") end
    octet = buffer(offset, 1):uint()
    value = value * 128 + bit.band(octet, 0x7f)
    offset = offset + 1
    octets = octets + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- read a wide signed fast integer, which keeps its low bits as an Int64
local function read_stop_bit_int64(buffer, offset)
  if offset >= buffer:len() then error("truncated FAST signed integer") end
  local octet = buffer(offset, 1):uint()
  local value = (bit.band(octet, 0x40) ~= 0) and Int64(-1) or Int64(0)
  local octets = 0

  repeat
    if offset >= buffer:len() then error("truncated FAST signed integer") end
    if octets == FAST_WIDE_OCTETS then error("FAST signed integer wider than 64 bits") end
    octet = buffer(offset, 1):uint()
    value = value * 128 + bit.band(octet, 0x7f)
    offset = offset + 1
    octets = octets + 1
  until bit.band(octet, 0x80) ~= 0

  return value, offset
end

-- Optional integers shift by one on the wire: zero is the explicit null
local function read_nullable_unsigned(buffer, offset)
  local value
  value, offset = read_stop_bit_unsigned(buffer, offset)
  if value == 0 then return nil, offset end

  return value - 1, offset
end

local function read_nullable_signed(buffer, offset)
  local value
  value, offset = read_stop_bit_signed(buffer, offset)
  if value == 0 then return nil, offset end
  if value > 0 then return value - 1, offset end

  return value, offset
end

local function read_nullable_uint64(buffer, offset)
  local value
  value, offset = read_stop_bit_uint64(buffer, offset)
  if value == UInt64(0) then return nil, offset end

  return value - 1, offset
end

local function read_nullable_int64(buffer, offset)
  local value
  value, offset = read_stop_bit_int64(buffer, offset)
  if value == Int64(0) then return nil, offset end
  if value > Int64(0) then return value - 1, offset end

  return value, offset
end

-- read a fast ascii string, which runs to the octet carrying the stop bit
local function read_ascii_string(buffer, offset)
  local start = offset
  local octet

  repeat
    if offset >= buffer:len() then error("truncated FAST ascii string") end
    octet = buffer(offset, 1):uint()
    offset = offset + 1
  until bit.band(octet, 0x80) ~= 0

  -- Every character but the last is 7 bit and reads as it stands. The last
  -- octet carries the stop bit in its high bit, so it is masked back to the
  -- character it carries rather than read as text: read as text it is not a
  -- character at all, and Wireshark substitutes a replacement character three
  -- bytes wide where the octet was one, which would leave two stray bytes
  -- inside every string the wire carries.
  local text = buffer(start, offset - start - 1):string()
  local last = bit.band(octet, 0x7f)

  -- a run closing on a nul carries no character there: the string ends before it
  if last == 0 then
    return text, offset
  end

  return text .. string.char(last), offset
end

-- the same where the field is optional. Fast spells a nullable string's null
-- as one octet carrying nothing, and its empty string as a nul ahead of that
-- one, so a leading nul is the null indicator rather than a character: read
-- plain, a null comes back as the empty string and a field that is absent is
-- reported as one that is there and blank
local function read_nullable_ascii_string(buffer, offset)
  local start = offset
  local octet

  repeat
    if offset >= buffer:len() then error("truncated FAST ascii string") end
    octet = buffer(offset, 1):uint()
    offset = offset + 1
  until bit.band(octet, 0x80) ~= 0

  local last = bit.band(octet, 0x7f)

  -- one octet carrying nothing says the field is absent
  if offset - start == 1 and last == 0 then
    return nil, offset
  end

  -- the characters begin after the null indicator where the run carries one.
  -- Read from the octets rather than through :string() of the whole run, so a
  -- nul inside it cannot end the text early.
  local from = buffer(start, 1):uint() == 0 and start + 1 or start
  local text = offset - 1 > from and buffer(from, offset - 1 - from):string() or ""

  -- a run closing on a nul carries no character there: the string ends before it
  if last == 0 then
    return text, offset
  end

  return text .. string.char(last), offset
end

-- splice a string delta onto the value the stream last sent: a subtraction
-- length says how much of it to drop, and the characters that follow take the
-- dropped part's place. A non-negative length drops from the tail and the
-- difference goes after what is left; a negative one drops from the head and
-- the difference goes in front, counting from -1 for nothing dropped, there
-- being no negative zero to say it with.
local function splice_string_delta(buffer, offset, base, length)
  local text
  text, offset = read_ascii_string(buffer, offset)
  base = base or ""

  -- sub clamps, so a length longer than what is remembered drops all of it
  -- rather than reading off the end of the string
  if length < 0 then
    return text .. base:sub(-length), offset
  end

  return base:sub(1, #base - length) .. text, offset
end

-- read a fast string delta, whose subtraction length leads
local function read_string_delta(buffer, offset, base)
  local length
  length, offset = read_stop_bit_signed(buffer, offset)

  return splice_string_delta(buffer, offset, base, length)
end

-- the same where the field is optional: the subtraction length carries the
-- null, and a null one says the field is absent, with no difference behind it
local function read_nullable_string_delta(buffer, offset, base)
  local length
  length, offset = read_nullable_signed(buffer, offset)
  if length == nil then return nil, offset end

  return splice_string_delta(buffer, offset, base, length)
end

-- read a fast byte vector, counted by the length that precedes it
local function read_byte_vector(buffer, offset)
  local length
  length, offset = read_stop_bit_unsigned(buffer, offset)

  -- the length is checked against what is left rather than by adding it to the
  -- offset, so that a length too large to add cannot pass the check it breaks
  if length < 0 or length > buffer:len() - offset then
    error("truncated FAST byte vector")
  end

  return buffer(offset, length), offset + length
end

-- the same where the field is optional: the length carries the null, and a null
-- one says the field is absent, with no octets behind it
local function read_nullable_byte_vector(buffer, offset)
  local length
  length, offset = read_nullable_unsigned(buffer, offset)
  if length == nil then return nil, offset end

  if length < 0 or length > buffer:len() - offset then
    error("truncated FAST byte vector")
  end

  return buffer(offset, length), offset + length
end

-- read a byte vector whose octets carry a big endian unsigned integer. A field
-- a receiver must be able to skip without decoding cannot be a stop bit
-- integer, which is as wide as its value needs, so a protocol carries the
-- integer in a vector of fixed width instead.
local function read_byte_vector_unsigned(buffer, offset)
  local range
  range, offset = read_byte_vector(buffer, offset)
  if range:len() == 0 then return 0, offset end
  if range:len() > 4 then error("FAST byte vector too wide for a 32 bit integer") end

  return range:uint(), offset
end

local function read_byte_vector_uint64(buffer, offset)
  local range
  range, offset = read_byte_vector(buffer, offset)
  if range:len() == 0 then return UInt64(0), offset end
  if range:len() > 8 then error("FAST byte vector too wide for a 64 bit integer") end

  return range:uint64(), offset
end

-- the same, read signed: an instant is accumulated signed because Wireshark
-- refuses arithmetic between an Int64 and a UInt64, and turning a count of
-- time units into a time divides it
local function read_byte_vector_int64(buffer, offset)
  local range
  range, offset = read_byte_vector(buffer, offset)
  if range:len() == 0 then return Int64(0), offset end
  if range:len() > 8 then error("FAST byte vector too wide for a 64 bit integer") end

  return range:int64(), offset
end

-- transfer operator state, isolated by directed transport stream
local stream_states = {}

local function state_for(packet)
  local key = tostring(packet.src) .. ":" .. tostring(packet.src_port)
    .. ">" .. tostring(packet.dst) .. ":" .. tostring(packet.dst_port)
  local state = stream_states[key]

  if state == nil then
    state = { values = {}, last_template_id = nil }
    stream_states[key] = state
  end

  return state
end


-----------------------------------------------------------------------
-- Eurex T7 Rdi Fast 5.0 Fields
-----------------------------------------------------------------------

-- Sender Comp Id (Sent)
eurex_t7_rdi_fast_v5_0.sender_comp_id_sent = {}

-- Dissect: Sender Comp Id (Sent)
eurex_t7_rdi_fast_v5_0.sender_comp_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Sender Comp Id (Copy)
eurex_t7_rdi_fast_v5_0.sender_comp_id_copy = {}

-- Dissect: Sender Comp Id (Copy)
eurex_t7_rdi_fast_v5_0.sender_comp_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Sender Comp Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.sender_comp_id, range, 0)
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Packet Seq Num
eurex_t7_rdi_fast_v5_0.packet_seq_num = {}

-- Dissect: Packet Seq Num
eurex_t7_rdi_fast_v5_0.packet_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.packet_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.packet_seq_num, range, 0)
    absent:set_text("Packet Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
eurex_t7_rdi_fast_v5_0.sending_time = {}

-- Dissect: Sending Time
eurex_t7_rdi_fast_v5_0.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector_int64(buffer, offset)

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.sending_time, range, NSTime.new(0, 0))
    absent:set_text("Sending Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.sending_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_bu = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_bu.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_bu.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BU"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.msg_type_constant_bu.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_d = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_d.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_d.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "d"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.msg_type_constant_d.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_bp = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_bp.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_bp.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BP"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.msg_type_constant_bp.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_f = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_f.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_f.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "f"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.msg_type_constant_f.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_dr = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_dr.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_dr.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "DR"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.msg_type_constant_dr.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_0 = {}

-- Display: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_0.display = function(value)
  if value == nil then
    return "Msg Type: No Value"
  end

  if value == "0" then
    return "Msg Type: Heartbeat (0)"
  end
  if value == "BP" then
    return "Msg Type: Security Definition Update Report (BP)"
  end
  if value == "d" then
    return "Msg Type: Security Definition (d)"
  end
  if value == "f" then
    return "Msg Type: Security Status (f)"
  end

  return "Msg Type: "..value
end

-- Dissect: Msg Type (Constant)
eurex_t7_rdi_fast_v5_0.msg_type_constant_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "0"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.msg_type_constant_0.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_type, range, value, display)
  end

  return offset, value
end

-- Msg Seq Num
eurex_t7_rdi_fast_v5_0.msg_seq_num = {}

-- Dissect: Msg Seq Num
eurex_t7_rdi_fast_v5_0.msg_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = state.values[key]
    if value ~= nil then value = value + 1 end
  end

  state.values[key] = value

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Msg Seq Num was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Market Id
eurex_t7_rdi_fast_v5_0.market_id = {}

-- Dissect: Market Id
eurex_t7_rdi_fast_v5_0.market_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Market Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_id, range, "")
    absent:set_text("Market Id: No Value")
  end

  return offset, value
end

-- Market Segment Id (Delta)
eurex_t7_rdi_fast_v5_0.market_segment_id_delta = {}

-- Dissect: Market Segment Id (Delta)
eurex_t7_rdi_fast_v5_0.market_segment_id_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_id, range, 0)
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Market Segment Id (Copy)
eurex_t7_rdi_fast_v5_0.market_segment_id_copy = {}

-- Dissect: Market Segment Id (Copy)
eurex_t7_rdi_fast_v5_0.market_segment_id_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Market Segment Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_id, range, 0)
    absent:set_text("Market Segment Id: No Value")
  end

  return offset, value
end

-- Effective Business Date
eurex_t7_rdi_fast_v5_0.effective_business_date = {}

-- Dissect: Effective Business Date
eurex_t7_rdi_fast_v5_0.effective_business_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Effective Business Date was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.effective_business_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.effective_business_date, range, 0)
    absent:set_text("Effective Business Date: No Value")
  end

  return offset, value
end

-- Next Effective Business Date
eurex_t7_rdi_fast_v5_0.next_effective_business_date = {}

-- Dissect: Next Effective Business Date
eurex_t7_rdi_fast_v5_0.next_effective_business_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Next Effective Business Date was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.next_effective_business_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.next_effective_business_date, range, 0)
    absent:set_text("Next Effective Business Date: No Value")
  end

  return offset, value
end

-- Market Segment
eurex_t7_rdi_fast_v5_0.market_segment = {}

-- Dissect: Market Segment
eurex_t7_rdi_fast_v5_0.market_segment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_string_delta(buffer, offset, state.values[key])
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment, range, "")
    absent:set_text("Market Segment: No Value")
  end

  return offset, value
end

-- Market Segment Status
eurex_t7_rdi_fast_v5_0.market_segment_status = {}

-- Display: Market Segment Status
eurex_t7_rdi_fast_v5_0.market_segment_status.display = function(value)
  if value == nil then
    return "Market Segment Status: No Value"
  end

  if value == 0 then
    return "Market Segment Status: Active (1)"
  end
  if value == 1 then
    return "Market Segment Status: Inactive (2)"
  end
  if value == 2 then
    return "Market Segment Status: Expired (4)"
  end
  if value == 3 then
    return "Market Segment Status: Suspended (9)"
  end
  if value == 4 then
    return "Market Segment Status: Published (10)"
  end

  return "Market Segment Status: Unknown("..value..")"
end

-- Dissect: Market Segment Status
eurex_t7_rdi_fast_v5_0.market_segment_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Market Segment Status was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.market_segment_status.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_status, range, value, display)
  end

  return offset, value
end

-- Partition Id
eurex_t7_rdi_fast_v5_0.partition_id = {}

-- Dissect: Partition Id
eurex_t7_rdi_fast_v5_0.partition_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Partition Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.partition_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.partition_id, range, 0)
    absent:set_text("Partition Id: No Value")
  end

  return offset, value
end

-- Currency
eurex_t7_rdi_fast_v5_0.currency = {}

-- Dissect: Currency
eurex_t7_rdi_fast_v5_0.currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "EUR"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.currency, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Market Segment Desc
eurex_t7_rdi_fast_v5_0.market_segment_desc = {}

-- Dissect: Market Segment Desc
eurex_t7_rdi_fast_v5_0.market_segment_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_string_delta(buffer, offset, state.values[key])
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_desc, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_desc, range, "")
    absent:set_text("Market Segment Desc: No Value")
  end

  return offset, value
end

-- Market Segment Symbol
eurex_t7_rdi_fast_v5_0.market_segment_symbol = {}

-- Dissect: Market Segment Symbol
eurex_t7_rdi_fast_v5_0.market_segment_symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_string_delta(buffer, offset, state.values[key])

  if value ~= nil then
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_symbol, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_symbol, range, "")
    absent:set_text("Market Segment Symbol: No Value")
  end

  return offset, value
end

-- Parent Mkt Segm Id
eurex_t7_rdi_fast_v5_0.parent_mkt_segm_id = {}

-- Dissect: Parent Mkt Segm Id
eurex_t7_rdi_fast_v5_0.parent_mkt_segm_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Parent Mkt Segm Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.parent_mkt_segm_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.parent_mkt_segm_id, range, "")
    absent:set_text("Parent Mkt Segm Id: No Value")
  end

  return offset, value
end

-- Us Firm Flag
eurex_t7_rdi_fast_v5_0.us_firm_flag = {}

-- Display: Us Firm Flag
eurex_t7_rdi_fast_v5_0.us_firm_flag.display = function(value)
  if value == nil then
    return "Us Firm Flag: No Value"
  end

  if value == 0 then
    return "Us Firm Flag: No (N)"
  end
  if value == 1 then
    return "Us Firm Flag: Yes (Y)"
  end

  return "Us Firm Flag: Unknown("..value..")"
end

-- Dissect: Us Firm Flag
eurex_t7_rdi_fast_v5_0.us_firm_flag.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.us_firm_flag.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.us_firm_flag, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.us_firm_flag, range, value, display)
  end

  return offset, value
end

-- Market Segment Type
eurex_t7_rdi_fast_v5_0.market_segment_type = {}

-- Display: Market Segment Type
eurex_t7_rdi_fast_v5_0.market_segment_type.display = function(value)
  if value == nil then
    return "Market Segment Type: No Value"
  end

  if value == 0 then
    return "Market Segment Type: Pool (1)"
  end

  return "Market Segment Type: Unknown("..value..")"
end

-- Dissect: Market Segment Type
eurex_t7_rdi_fast_v5_0.market_segment_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.market_segment_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_type, range, value, display)
  end

  return offset, value
end

-- Market Segment Sub Type
eurex_t7_rdi_fast_v5_0.market_segment_sub_type = {}

-- Display: Market Segment Sub Type
eurex_t7_rdi_fast_v5_0.market_segment_sub_type.display = function(value)
  if value == nil then
    return "Market Segment Sub Type: No Value"
  end

  if value == 0 then
    return "Market Segment Sub Type: InterProductSpread (1)"
  end

  return "Market Segment Sub Type: Unknown("..value..")"
end

-- Dissect: Market Segment Sub Type
eurex_t7_rdi_fast_v5_0.market_segment_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.market_segment_sub_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_sub_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_sub_type, range, value, display)
  end

  return offset, value
end

-- Underlying Security Exchange
eurex_t7_rdi_fast_v5_0.underlying_security_exchange = {}

-- Dissect: Underlying Security Exchange
eurex_t7_rdi_fast_v5_0.underlying_security_exchange.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.underlying_security_exchange, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.underlying_security_exchange, range, "")
    absent:set_text("Underlying Security Exchange: No Value")
  end

  return offset, value
end

-- Underlying Symbol
eurex_t7_rdi_fast_v5_0.underlying_symbol = {}

-- Dissect: Underlying Symbol
eurex_t7_rdi_fast_v5_0.underlying_symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_string_delta(buffer, offset, state.values[key])

  if value ~= nil then
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.underlying_symbol, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.underlying_symbol, range, "")
    absent:set_text("Underlying Symbol: No Value")
  end

  return offset, value
end

-- Underlying Security Id
eurex_t7_rdi_fast_v5_0.underlying_security_id = {}

-- Dissect: Underlying Security Id
eurex_t7_rdi_fast_v5_0.underlying_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_string_delta(buffer, offset, state.values[key])

  if value ~= nil then
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.underlying_security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.underlying_security_id, range, "")
    absent:set_text("Underlying Security Id: No Value")
  end

  return offset, value
end

-- Underlying Security Id Source
eurex_t7_rdi_fast_v5_0.underlying_security_id_source = {}

-- Dissect: Underlying Security Id Source
eurex_t7_rdi_fast_v5_0.underlying_security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = "4"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.underlying_security_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.underlying_security_id_source, range, "")
    absent:set_text("Underlying Security Id Source: No Value")
  end

  return offset, value
end

-- Underlying Prev Close Px
eurex_t7_rdi_fast_v5_0.underlying_prev_close_px = {}

-- Display: Underlying Prev Close Px
eurex_t7_rdi_fast_v5_0.underlying_prev_close_px.display = function(value)
  if value == nil then
    return "Underlying Prev Close Px: No Value"
  end

  return "Underlying Prev Close Px: "..value
end

-- Dissect: Underlying Prev Close Px
eurex_t7_rdi_fast_v5_0.underlying_prev_close_px.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  local exponent_delta = nil
  local mantissa_delta = nil
  exponent_delta, offset = read_nullable_signed(buffer, offset)

  if exponent_delta ~= nil then
    mantissa_delta, offset = read_stop_bit_signed(buffer, offset)
    exponent = (state.values[key[1]] or 0) + exponent_delta
    mantissa = (state.values[key[2]] or 0) + mantissa_delta
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.underlying_prev_close_px.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.underlying_prev_close_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.underlying_prev_close_px, range, value, display)
  end

  return offset, value
end

-- No Instrument Scopes
eurex_t7_rdi_fast_v5_0.no_instrument_scopes = {}

-- Dissect: No Instrument Scopes
eurex_t7_rdi_fast_v5_0.no_instrument_scopes.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_instrument_scopes, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_instrument_scopes, range, 0)
    absent:set_text("No Instrument Scopes: No Value")
  end

  return offset, value
end

-- Instrument Scope Operator
eurex_t7_rdi_fast_v5_0.instrument_scope_operator = {}

-- Display: Instrument Scope Operator
eurex_t7_rdi_fast_v5_0.instrument_scope_operator.display = function(value)
  if value == nil then
    return "Instrument Scope Operator: No Value"
  end

  if value == 0 then
    return "Instrument Scope Operator: Include (1)"
  end

  return "Instrument Scope Operator: Unknown("..value..")"
end

-- Dissect: Instrument Scope Operator
eurex_t7_rdi_fast_v5_0.instrument_scope_operator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.instrument_scope_operator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_scope_operator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_scope_operator, range, value, display)
  end

  return offset, value
end

-- Instrument Scope Security Type
eurex_t7_rdi_fast_v5_0.instrument_scope_security_type = {}

-- Display: Instrument Scope Security Type
eurex_t7_rdi_fast_v5_0.instrument_scope_security_type.display = function(value)
  if value == nil then
    return "Instrument Scope Security Type: No Value"
  end

  if value == 0 then
    return "Instrument Scope Security Type: Option (OPT)"
  end
  if value == 1 then
    return "Instrument Scope Security Type: Future (FUT)"
  end
  if value == 2 then
    return "Instrument Scope Security Type: MultiLegInstrument (MLEG)"
  end
  if value == 3 then
    return "Instrument Scope Security Type: VarianceFutures (VAR)"
  end
  if value == 4 then
    return "Instrument Scope Security Type: TotalReturnFutures (TRF)"
  end
  if value == 5 then
    return "Instrument Scope Security Type: CommonStock (CS)"
  end
  if value == 6 then
    return "Instrument Scope Security Type: Bond (BOND)"
  end
  if value == 7 then
    return "Instrument Scope Security Type: TradeAtReferencePrice (TARP)"
  end
  if value == 8 then
    return "Instrument Scope Security Type: ExchangeTradedFund (ETF)"
  end
  if value == 9 then
    return "Instrument Scope Security Type: ExchangeTradedCommodity (ETC)"
  end
  if value == 10 then
    return "Instrument Scope Security Type: ExchangeTradedNote (ETN)"
  end
  if value == 11 then
    return "Instrument Scope Security Type: Other (OTHER)"
  end

  return "Instrument Scope Security Type: Unknown("..value..")"
end

-- Dissect: Instrument Scope Security Type
eurex_t7_rdi_fast_v5_0.instrument_scope_security_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 2
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.instrument_scope_security_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_scope_security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_scope_security_type, range, value, display)
  end

  return offset, value
end

-- Instrument Scope Security Sub Type
eurex_t7_rdi_fast_v5_0.instrument_scope_security_sub_type = {}

-- Dissect: Instrument Scope Security Sub Type
eurex_t7_rdi_fast_v5_0.instrument_scope_security_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_signed(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or 0) + value_delta
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_scope_security_sub_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_scope_security_sub_type, range, 0)
    absent:set_text("Instrument Scope Security Sub Type: No Value")
  end

  return offset, value
end

-- No Related Market Segments
eurex_t7_rdi_fast_v5_0.no_related_market_segments = {}

-- Dissect: No Related Market Segments
eurex_t7_rdi_fast_v5_0.no_related_market_segments.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_related_market_segments, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_related_market_segments, range, 0)
    absent:set_text("No Related Market Segments: No Value")
  end

  return offset, value
end

-- Related Market Segment Id
eurex_t7_rdi_fast_v5_0.related_market_segment_id = {}

-- Dissect: Related Market Segment Id
eurex_t7_rdi_fast_v5_0.related_market_segment_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.related_market_segment_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.related_market_segment_id, range, 0)
    absent:set_text("Related Market Segment Id: No Value")
  end

  return offset, value
end

-- Market Segments Relationship
eurex_t7_rdi_fast_v5_0.market_segments_relationship = {}

-- Display: Market Segments Relationship
eurex_t7_rdi_fast_v5_0.market_segments_relationship.display = function(value)
  if value == nil then
    return "Market Segments Relationship: No Value"
  end

  if value == 0 then
    return "Market Segments Relationship: CashLegForVolatilityStrategies (100)"
  end

  return "Market Segments Relationship: Unknown("..value..")"
end

-- Dissect: Market Segments Relationship
eurex_t7_rdi_fast_v5_0.market_segments_relationship.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.market_segments_relationship.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segments_relationship, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segments_relationship, range, value, display)
  end

  return offset, value
end

-- No Tick Rules
eurex_t7_rdi_fast_v5_0.no_tick_rules = {}

-- Dissect: No Tick Rules
eurex_t7_rdi_fast_v5_0.no_tick_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "No Tick Rules was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_tick_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_tick_rules, range, 0)
    absent:set_text("No Tick Rules: No Value")
  end

  return offset, value
end

-- Tick Rule Id
eurex_t7_rdi_fast_v5_0.tick_rule_id = {}

-- Dissect: Tick Rule Id
eurex_t7_rdi_fast_v5_0.tick_rule_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.tick_rule_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.tick_rule_id, range, 0)
    absent:set_text("Tick Rule Id: No Value")
  end

  return offset, value
end

-- Tick Rule Product Complex
eurex_t7_rdi_fast_v5_0.tick_rule_product_complex = {}

-- Display: Tick Rule Product Complex
eurex_t7_rdi_fast_v5_0.tick_rule_product_complex.display = function(value)
  if value == nil then
    return "Tick Rule Product Complex: No Value"
  end

  if value == 0 then
    return "Tick Rule Product Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Tick Rule Product Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Tick Rule Product Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Tick Rule Product Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Tick Rule Product Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Tick Rule Product Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Tick Rule Product Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Tick Rule Product Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Tick Rule Product Complex: Strip (9)"
  end
  if value == 9 then
    return "Tick Rule Product Complex: FlexibleInstrument (10)"
  end

  return "Tick Rule Product Complex: Unknown("..value..")"
end

-- Dissect: Tick Rule Product Complex
eurex_t7_rdi_fast_v5_0.tick_rule_product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.tick_rule_product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.tick_rule_product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.tick_rule_product_complex, range, value, display)
  end

  return offset, value
end

-- Start Tick Price Range
eurex_t7_rdi_fast_v5_0.start_tick_price_range = {}

-- Display: Start Tick Price Range
eurex_t7_rdi_fast_v5_0.start_tick_price_range.display = function(value)
  if value == nil then
    return "Start Tick Price Range: No Value"
  end

  return "Start Tick Price Range: "..value
end

-- Dissect: Start Tick Price Range
eurex_t7_rdi_fast_v5_0.start_tick_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.start_tick_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.start_tick_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.start_tick_price_range, range, value, display)
  end

  return offset, value
end

-- End Tick Price Range
eurex_t7_rdi_fast_v5_0.end_tick_price_range = {}

-- Display: End Tick Price Range
eurex_t7_rdi_fast_v5_0.end_tick_price_range.display = function(value)
  if value == nil then
    return "End Tick Price Range: No Value"
  end

  return "End Tick Price Range: "..value
end

-- Dissect: End Tick Price Range
eurex_t7_rdi_fast_v5_0.end_tick_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.end_tick_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.end_tick_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.end_tick_price_range, range, value, display)
  end

  return offset, value
end

-- Tick Increment
eurex_t7_rdi_fast_v5_0.tick_increment = {}

-- Display: Tick Increment
eurex_t7_rdi_fast_v5_0.tick_increment.display = function(value)
  if value == nil then
    return "Tick Increment: No Value"
  end

  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
eurex_t7_rdi_fast_v5_0.tick_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.tick_increment.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.tick_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.tick_increment, range, value, display)
  end

  return offset, value
end

-- No Price Range Rules (Sent)
eurex_t7_rdi_fast_v5_0.no_price_range_rules_sent = {}

-- Dissect: No Price Range Rules (Sent)
eurex_t7_rdi_fast_v5_0.no_price_range_rules_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_price_range_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_price_range_rules, range, 0)
    absent:set_text("No Price Range Rules: No Value")
  end

  return offset, value
end

-- No Price Range Rules (Constant)
eurex_t7_rdi_fast_v5_0.no_price_range_rules_constant = {}

-- Dissect: No Price Range Rules (Constant)
eurex_t7_rdi_fast_v5_0.no_price_range_rules_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_price_range_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_price_range_rules, range, 0)
    absent:set_text("No Price Range Rules: No Value")
  end

  return offset, value
end

-- Price Range Rule Id
eurex_t7_rdi_fast_v5_0.price_range_rule_id = {}

-- Dissect: Price Range Rule Id
eurex_t7_rdi_fast_v5_0.price_range_rule_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Price Range Rule Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.price_range_rule_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.price_range_rule_id, range, 0)
    absent:set_text("Price Range Rule Id: No Value")
  end

  return offset, value
end

-- Price Range Product Complex
eurex_t7_rdi_fast_v5_0.price_range_product_complex = {}

-- Display: Price Range Product Complex
eurex_t7_rdi_fast_v5_0.price_range_product_complex.display = function(value)
  if value == nil then
    return "Price Range Product Complex: No Value"
  end

  if value == 0 then
    return "Price Range Product Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Price Range Product Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Price Range Product Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Price Range Product Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Price Range Product Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Price Range Product Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Price Range Product Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Price Range Product Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Price Range Product Complex: Strip (9)"
  end
  if value == 9 then
    return "Price Range Product Complex: FlexibleInstrument (10)"
  end

  return "Price Range Product Complex: Unknown("..value..")"
end

-- Dissect: Price Range Product Complex
eurex_t7_rdi_fast_v5_0.price_range_product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Price Range Product Complex was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.price_range_product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.price_range_product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.price_range_product_complex, range, value, display)
  end

  return offset, value
end

-- Start Price Range
eurex_t7_rdi_fast_v5_0.start_price_range = {}

-- Display: Start Price Range
eurex_t7_rdi_fast_v5_0.start_price_range.display = function(value)
  if value == nil then
    return "Start Price Range: No Value"
  end

  return "Start Price Range: "..value
end

-- Dissect: Start Price Range
eurex_t7_rdi_fast_v5_0.start_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
  else
    exponent = nil
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.start_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.start_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.start_price_range, range, value, display)
  end

  return offset, value
end

-- End Price Range
eurex_t7_rdi_fast_v5_0.end_price_range = {}

-- Display: End Price Range
eurex_t7_rdi_fast_v5_0.end_price_range.display = function(value)
  if value == nil then
    return "End Price Range: No Value"
  end

  return "End Price Range: "..value
end

-- Dissect: End Price Range
eurex_t7_rdi_fast_v5_0.end_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.end_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.end_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.end_price_range, range, value, display)
  end

  return offset, value
end

-- Price Range Value
eurex_t7_rdi_fast_v5_0.price_range_value = {}

-- Display: Price Range Value
eurex_t7_rdi_fast_v5_0.price_range_value.display = function(value)
  if value == nil then
    return "Price Range Value: No Value"
  end

  return "Price Range Value: "..value
end

-- Dissect: Price Range Value
eurex_t7_rdi_fast_v5_0.price_range_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.price_range_value.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.price_range_value, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.price_range_value, range, value, display)
  end

  return offset, value
end

-- Price Range Percentage
eurex_t7_rdi_fast_v5_0.price_range_percentage = {}

-- Display: Price Range Percentage
eurex_t7_rdi_fast_v5_0.price_range_percentage.display = function(value)
  if value == nil then
    return "Price Range Percentage: No Value"
  end

  return "Price Range Percentage: "..value
end

-- Dissect: Price Range Percentage
eurex_t7_rdi_fast_v5_0.price_range_percentage.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.price_range_percentage.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.price_range_percentage, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.price_range_percentage, range, value, display)
  end

  return offset, value
end

-- Quote Side Indicator
eurex_t7_rdi_fast_v5_0.quote_side_indicator = {}

-- Display: Quote Side Indicator
eurex_t7_rdi_fast_v5_0.quote_side_indicator.display = function(value)
  if value == nil then
    return "Quote Side Indicator: No Value"
  end

  if value == 0 then
    return "Quote Side Indicator: OneSidedQuoteNotAllowed (0)"
  end
  if value == 1 then
    return "Quote Side Indicator: OneSidedQuoteAllowed (1)"
  end

  return "Quote Side Indicator: Unknown("..value..")"
end

-- Dissect: Quote Side Indicator
eurex_t7_rdi_fast_v5_0.quote_side_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.quote_side_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.quote_side_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.quote_side_indicator, range, value, display)
  end

  return offset, value
end

-- Fast Market Percentage
eurex_t7_rdi_fast_v5_0.fast_market_percentage = {}

-- Display: Fast Market Percentage
eurex_t7_rdi_fast_v5_0.fast_market_percentage.display = function(value)
  if value == nil then
    return "Fast Market Percentage: No Value"
  end

  return "Fast Market Percentage: "..value
end

-- Dissect: Fast Market Percentage
eurex_t7_rdi_fast_v5_0.fast_market_percentage.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.fast_market_percentage.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.fast_market_percentage, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.fast_market_percentage, range, value, display)
  end

  return offset, value
end

-- No Quote Size Rules (Default)
eurex_t7_rdi_fast_v5_0.no_quote_size_rules_default = {}

-- Dissect: No Quote Size Rules (Default)
eurex_t7_rdi_fast_v5_0.no_quote_size_rules_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_quote_size_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_quote_size_rules, range, 0)
    absent:set_text("No Quote Size Rules: No Value")
  end

  return offset, value
end

-- No Quote Size Rules (Constant)
eurex_t7_rdi_fast_v5_0.no_quote_size_rules_constant = {}

-- Dissect: No Quote Size Rules (Constant)
eurex_t7_rdi_fast_v5_0.no_quote_size_rules_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_quote_size_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_quote_size_rules, range, 0)
    absent:set_text("No Quote Size Rules: No Value")
  end

  return offset, value
end

-- Min Bid Size
eurex_t7_rdi_fast_v5_0.min_bid_size = {}

-- Dissect: Min Bid Size
eurex_t7_rdi_fast_v5_0.min_bid_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Min Bid Size was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.min_bid_size, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.min_bid_size, range, 0)
    absent:set_text("Min Bid Size: No Value")
  end

  return offset, value
end

-- Min Offer Size
eurex_t7_rdi_fast_v5_0.min_offer_size = {}

-- Dissect: Min Offer Size
eurex_t7_rdi_fast_v5_0.min_offer_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Min Offer Size was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.min_offer_size, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.min_offer_size, range, 0)
    absent:set_text("Min Offer Size: No Value")
  end

  return offset, value
end

-- Fast Market Indicator
eurex_t7_rdi_fast_v5_0.fast_market_indicator = {}

-- Display: Fast Market Indicator
eurex_t7_rdi_fast_v5_0.fast_market_indicator.display = function(value)
  if value == nil then
    return "Fast Market Indicator: No Value"
  end

  if value == 0 then
    return "Fast Market Indicator: No (0)"
  end
  if value == 1 then
    return "Fast Market Indicator: Yes (1)"
  end

  return "Fast Market Indicator: Unknown("..value..")"
end

-- Dissect: Fast Market Indicator
eurex_t7_rdi_fast_v5_0.fast_market_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Fast Market Indicator was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.fast_market_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.fast_market_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.fast_market_indicator, range, value, display)
  end

  return offset, value
end

-- No Flex Product Eligibilities
eurex_t7_rdi_fast_v5_0.no_flex_product_eligibilities = {}

-- Dissect: No Flex Product Eligibilities
eurex_t7_rdi_fast_v5_0.no_flex_product_eligibilities.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "No Flex Product Eligibilities was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_flex_product_eligibilities, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_flex_product_eligibilities, range, 0)
    absent:set_text("No Flex Product Eligibilities: No Value")
  end

  return offset, value
end

-- Flex Product Eligibility Complex
eurex_t7_rdi_fast_v5_0.flex_product_eligibility_complex = {}

-- Display: Flex Product Eligibility Complex
eurex_t7_rdi_fast_v5_0.flex_product_eligibility_complex.display = function(value)
  if value == nil then
    return "Flex Product Eligibility Complex: No Value"
  end

  if value == 0 then
    return "Flex Product Eligibility Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Flex Product Eligibility Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Flex Product Eligibility Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Flex Product Eligibility Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Flex Product Eligibility Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Flex Product Eligibility Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Flex Product Eligibility Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Flex Product Eligibility Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Flex Product Eligibility Complex: Strip (9)"
  end
  if value == 9 then
    return "Flex Product Eligibility Complex: FlexibleInstrument (10)"
  end

  return "Flex Product Eligibility Complex: Unknown("..value..")"
end

-- Dissect: Flex Product Eligibility Complex
eurex_t7_rdi_fast_v5_0.flex_product_eligibility_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Flex Product Eligibility Complex was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.flex_product_eligibility_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.flex_product_eligibility_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.flex_product_eligibility_complex, range, value, display)
  end

  return offset, value
end

-- Flex Product Eligibility Indicator
eurex_t7_rdi_fast_v5_0.flex_product_eligibility_indicator = {}

-- Display: Flex Product Eligibility Indicator
eurex_t7_rdi_fast_v5_0.flex_product_eligibility_indicator.display = function(value)
  if value == nil then
    return "Flex Product Eligibility Indicator: No Value"
  end

  if value == 0 then
    return "Flex Product Eligibility Indicator: No (N)"
  end
  if value == 1 then
    return "Flex Product Eligibility Indicator: Yes (Y)"
  end

  return "Flex Product Eligibility Indicator: Unknown("..value..")"
end

-- Dissect: Flex Product Eligibility Indicator
eurex_t7_rdi_fast_v5_0.flex_product_eligibility_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.flex_product_eligibility_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.flex_product_eligibility_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.flex_product_eligibility_indicator, range, value, display)
  end

  return offset, value
end

-- No Auction Type Rules
eurex_t7_rdi_fast_v5_0.no_auction_type_rules = {}

-- Dissect: No Auction Type Rules
eurex_t7_rdi_fast_v5_0.no_auction_type_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 1

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_auction_type_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_auction_type_rules, range, 0)
    absent:set_text("No Auction Type Rules: No Value")
  end

  return offset, value
end

-- Auction Type
eurex_t7_rdi_fast_v5_0.auction_type = {}

-- Display: Auction Type
eurex_t7_rdi_fast_v5_0.auction_type.display = function(value)
  if value == nil then
    return "Auction Type: No Value"
  end

  if value == 0 then
    return "Auction Type: AnyAuction (100)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
eurex_t7_rdi_fast_v5_0.auction_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 0

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.auction_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.auction_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.auction_type, range, value, display)
  end

  return offset, value
end

-- Closed Book Indicator
eurex_t7_rdi_fast_v5_0.closed_book_indicator = {}

-- Display: Closed Book Indicator
eurex_t7_rdi_fast_v5_0.closed_book_indicator.display = function(value)
  if value == nil then
    return "Closed Book Indicator: No Value"
  end

  if value == 0 then
    return "Closed Book Indicator: No (0)"
  end
  if value == 1 then
    return "Closed Book Indicator: Yes (1)"
  end

  return "Closed Book Indicator: Unknown("..value..")"
end

-- Dissect: Closed Book Indicator
eurex_t7_rdi_fast_v5_0.closed_book_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Closed Book Indicator was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.closed_book_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.closed_book_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.closed_book_indicator, range, value, display)
  end

  return offset, value
end

-- Market Imbalance Indicator
eurex_t7_rdi_fast_v5_0.market_imbalance_indicator = {}

-- Display: Market Imbalance Indicator
eurex_t7_rdi_fast_v5_0.market_imbalance_indicator.display = function(value)
  if value == nil then
    return "Market Imbalance Indicator: No Value"
  end

  if value == 0 then
    return "Market Imbalance Indicator: No (0)"
  end
  if value == 1 then
    return "Market Imbalance Indicator: Yes (1)"
  end

  return "Market Imbalance Indicator: Unknown("..value..")"
end

-- Dissect: Market Imbalance Indicator
eurex_t7_rdi_fast_v5_0.market_imbalance_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Market Imbalance Indicator was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.market_imbalance_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_imbalance_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_imbalance_indicator, range, value, display)
  end

  return offset, value
end

-- No Match Rules
eurex_t7_rdi_fast_v5_0.no_match_rules = {}

-- Dissect: No Match Rules
eurex_t7_rdi_fast_v5_0.no_match_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "No Match Rules was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_match_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_match_rules, range, 0)
    absent:set_text("No Match Rules: No Value")
  end

  return offset, value
end

-- Match Rule Product Complex
eurex_t7_rdi_fast_v5_0.match_rule_product_complex = {}

-- Display: Match Rule Product Complex
eurex_t7_rdi_fast_v5_0.match_rule_product_complex.display = function(value)
  if value == nil then
    return "Match Rule Product Complex: No Value"
  end

  if value == 0 then
    return "Match Rule Product Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Match Rule Product Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Match Rule Product Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Match Rule Product Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Match Rule Product Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Match Rule Product Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Match Rule Product Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Match Rule Product Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Match Rule Product Complex: Strip (9)"
  end
  if value == 9 then
    return "Match Rule Product Complex: FlexibleInstrument (10)"
  end

  return "Match Rule Product Complex: Unknown("..value..")"
end

-- Dissect: Match Rule Product Complex
eurex_t7_rdi_fast_v5_0.match_rule_product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.match_rule_product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.match_rule_product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.match_rule_product_complex, range, value, display)
  end

  return offset, value
end

-- Match Algorithm
eurex_t7_rdi_fast_v5_0.match_algorithm = {}

-- Display: Match Algorithm
eurex_t7_rdi_fast_v5_0.match_algorithm.display = function(value)
  if value == nil then
    return "Match Algorithm: No Value"
  end

  if value == 0 then
    return "Match Algorithm: PriceTime (PT)"
  end
  if value == 1 then
    return "Match Algorithm: ProRata (PR)"
  end
  if value == 2 then
    return "Match Algorithm: TimeProRata (TPR)"
  end

  return "Match Algorithm: Unknown("..value..")"
end

-- Dissect: Match Algorithm
eurex_t7_rdi_fast_v5_0.match_algorithm.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.match_algorithm.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.match_algorithm, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.match_algorithm, range, value, display)
  end

  return offset, value
end

-- Match Type
eurex_t7_rdi_fast_v5_0.match_type = {}

-- Display: Match Type
eurex_t7_rdi_fast_v5_0.match_type.display = function(value)
  if value == nil then
    return "Match Type: No Value"
  end

  if value == 0 then
    return "Match Type: AutoMatch (4)"
  end
  if value == 1 then
    return "Match Type: CallAuction (7)"
  end

  return "Match Type: Unknown("..value..")"
end

-- Dissect: Match Type
eurex_t7_rdi_fast_v5_0.match_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.match_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.match_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.match_type, range, value, display)
  end

  return offset, value
end

-- No Md Feed Types
eurex_t7_rdi_fast_v5_0.no_md_feed_types = {}

-- Dissect: No Md Feed Types
eurex_t7_rdi_fast_v5_0.no_md_feed_types.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "No Md Feed Types was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_md_feed_types, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_md_feed_types, range, 0)
    absent:set_text("No Md Feed Types: No Value")
  end

  return offset, value
end

-- Md Feed Type
eurex_t7_rdi_fast_v5_0.md_feed_type = {}

-- Display: Md Feed Type
eurex_t7_rdi_fast_v5_0.md_feed_type.display = function(value)
  if value == nil then
    return "Md Feed Type: No Value"
  end

  if value == 0 then
    return "Md Feed Type: HighIncremental (HI)"
  end
  if value == 1 then
    return "Md Feed Type: HighSnapshot (HS)"
  end
  if value == 2 then
    return "Md Feed Type: Low (L)"
  end

  return "Md Feed Type: Unknown("..value..")"
end

-- Dissect: Md Feed Type
eurex_t7_rdi_fast_v5_0.md_feed_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.md_feed_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.md_feed_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.md_feed_type, range, value, display)
  end

  return offset, value
end

-- Md Book Type
eurex_t7_rdi_fast_v5_0.md_book_type = {}

-- Display: Md Book Type
eurex_t7_rdi_fast_v5_0.md_book_type.display = function(value)
  if value == nil then
    return "Md Book Type: No Value"
  end

  if value == 0 then
    return "Md Book Type: TopOfBook (1)"
  end
  if value == 1 then
    return "Md Book Type: PriceDepth (2)"
  end
  if value == 2 then
    return "Md Book Type: OrderDepth (3)"
  end

  return "Md Book Type: Unknown("..value..")"
end

-- Dissect: Md Book Type
eurex_t7_rdi_fast_v5_0.md_book_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.md_book_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.md_book_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.md_book_type, range, value, display)
  end

  return offset, value
end

-- Market Depth
eurex_t7_rdi_fast_v5_0.market_depth = {}

-- Dissect: Market Depth
eurex_t7_rdi_fast_v5_0.market_depth.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_depth, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_depth, range, 0)
    absent:set_text("Market Depth: No Value")
  end

  return offset, value
end

-- Market Depth Time Interval
eurex_t7_rdi_fast_v5_0.market_depth_time_interval = {}

-- Dissect: Market Depth Time Interval
eurex_t7_rdi_fast_v5_0.market_depth_time_interval.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_depth_time_interval, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_depth_time_interval, range, 0)
    absent:set_text("Market Depth Time Interval: No Value")
  end

  return offset, value
end

-- Md Recovery Time Interval
eurex_t7_rdi_fast_v5_0.md_recovery_time_interval = {}

-- Dissect: Md Recovery Time Interval
eurex_t7_rdi_fast_v5_0.md_recovery_time_interval.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.md_recovery_time_interval, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.md_recovery_time_interval, range, 0)
    absent:set_text("Md Recovery Time Interval: No Value")
  end

  return offset, value
end

-- Primary Service Location Id
eurex_t7_rdi_fast_v5_0.primary_service_location_id = {}

-- Dissect: Primary Service Location Id
eurex_t7_rdi_fast_v5_0.primary_service_location_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_string_delta(buffer, offset, state.values[key])
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.primary_service_location_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.primary_service_location_id, range, "")
    absent:set_text("Primary Service Location Id: No Value")
  end

  return offset, value
end

-- Primary Service Location Sub Id
eurex_t7_rdi_fast_v5_0.primary_service_location_sub_id = {}

-- Dissect: Primary Service Location Sub Id
eurex_t7_rdi_fast_v5_0.primary_service_location_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.primary_service_location_sub_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.primary_service_location_sub_id, range, 0)
    absent:set_text("Primary Service Location Sub Id: No Value")
  end

  return offset, value
end

-- Secondary Service Location Id
eurex_t7_rdi_fast_v5_0.secondary_service_location_id = {}

-- Dissect: Secondary Service Location Id
eurex_t7_rdi_fast_v5_0.secondary_service_location_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_string_delta(buffer, offset, state.values[key])

  if value ~= nil then
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.secondary_service_location_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.secondary_service_location_id, range, "")
    absent:set_text("Secondary Service Location Id: No Value")
  end

  return offset, value
end

-- Secondary Service Location Sub Id
eurex_t7_rdi_fast_v5_0.secondary_service_location_sub_id = {}

-- Dissect: Secondary Service Location Sub Id
eurex_t7_rdi_fast_v5_0.secondary_service_location_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_signed(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or 0) + value_delta
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.secondary_service_location_sub_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.secondary_service_location_sub_id, range, 0)
    absent:set_text("Secondary Service Location Sub Id: No Value")
  end

  return offset, value
end

-- Security Id
eurex_t7_rdi_fast_v5_0.security_id = {}

-- Dissect: Security Id
eurex_t7_rdi_fast_v5_0.security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_id, range, Int64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id Source
eurex_t7_rdi_fast_v5_0.security_id_source = {}

-- Display: Security Id Source
eurex_t7_rdi_fast_v5_0.security_id_source.display = function(value)
  if value == nil then
    return "Security Id Source: No Value"
  end

  if value == "M" then
    return "Security Id Source: Marketplace (M)"
  end

  return "Security Id Source: "..value
end

-- Dissect: Security Id Source
eurex_t7_rdi_fast_v5_0.security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.security_id_source.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_id_source, range, "", display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_id_source, range, value, display)
  end

  return offset, value
end

-- No Security Alt Id
eurex_t7_rdi_fast_v5_0.no_security_alt_id = {}

-- Dissect: No Security Alt Id
eurex_t7_rdi_fast_v5_0.no_security_alt_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_security_alt_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_security_alt_id, range, 0)
    absent:set_text("No Security Alt Id: No Value")
  end

  return offset, value
end

-- Security Alt Id
eurex_t7_rdi_fast_v5_0.security_alt_id = {}

-- Dissect: Security Alt Id
eurex_t7_rdi_fast_v5_0.security_alt_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_string_delta(buffer, offset, state.values[key])
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_alt_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_alt_id, range, "")
    absent:set_text("Security Alt Id: No Value")
  end

  return offset, value
end

-- Security Alt Id Source
eurex_t7_rdi_fast_v5_0.security_alt_id_source = {}

-- Dissect: Security Alt Id Source
eurex_t7_rdi_fast_v5_0.security_alt_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Alt Id Source was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_alt_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_alt_id_source, range, "")
    absent:set_text("Security Alt Id Source: No Value")
  end

  return offset, value
end

-- Security Type (Copy)
eurex_t7_rdi_fast_v5_0.security_type_copy = {}

-- Display: Security Type (Copy)
eurex_t7_rdi_fast_v5_0.security_type_copy.display = function(value)
  if value == nil then
    return "Security Type: No Value"
  end

  if value == 0 then
    return "Security Type: Option (OPT)"
  end
  if value == 1 then
    return "Security Type: Future (FUT)"
  end
  if value == 2 then
    return "Security Type: MultiLegInstrument (MLEG)"
  end
  if value == 3 then
    return "Security Type: VarianceFutures (VAR)"
  end
  if value == 4 then
    return "Security Type: TotalReturnFutures (TRF)"
  end
  if value == 5 then
    return "Security Type: CommonStock (CS)"
  end
  if value == 6 then
    return "Security Type: Bond (BOND)"
  end
  if value == 7 then
    return "Security Type: TradeAtReferencePrice (TARP)"
  end
  if value == 8 then
    return "Security Type: ExchangeTradedFund (ETF)"
  end
  if value == 9 then
    return "Security Type: ExchangeTradedCommodity (ETC)"
  end
  if value == 10 then
    return "Security Type: ExchangeTradedNote (ETN)"
  end
  if value == 11 then
    return "Security Type: Other (OTHER)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type (Copy)
eurex_t7_rdi_fast_v5_0.security_type_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.security_type_copy.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_type, range, value, display)
  end

  return offset, value
end

-- Security Type (Constant)
eurex_t7_rdi_fast_v5_0.security_type_constant_3 = {}

-- Display: Security Type (Constant)
eurex_t7_rdi_fast_v5_0.security_type_constant_3.display = function(value)
  if value == nil then
    return "Security Type: No Value"
  end

  if value == 0 then
    return "Security Type: Option (OPT)"
  end
  if value == 1 then
    return "Security Type: Future (FUT)"
  end
  if value == 2 then
    return "Security Type: MultiLegInstrument (MLEG)"
  end
  if value == 3 then
    return "Security Type: VarianceFutures (VAR)"
  end
  if value == 4 then
    return "Security Type: TotalReturnFutures (TRF)"
  end
  if value == 5 then
    return "Security Type: CommonStock (CS)"
  end
  if value == 6 then
    return "Security Type: Bond (BOND)"
  end
  if value == 7 then
    return "Security Type: TradeAtReferencePrice (TARP)"
  end
  if value == 8 then
    return "Security Type: ExchangeTradedFund (ETF)"
  end
  if value == 9 then
    return "Security Type: ExchangeTradedCommodity (ETC)"
  end
  if value == 10 then
    return "Security Type: ExchangeTradedNote (ETN)"
  end
  if value == 11 then
    return "Security Type: Other (OTHER)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type (Constant)
eurex_t7_rdi_fast_v5_0.security_type_constant_3.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 3

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.security_type_constant_3.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_type, range, value, display)
  end

  return offset, value
end

-- Security Type (Constant)
eurex_t7_rdi_fast_v5_0.security_type_constant_4 = {}

-- Display: Security Type (Constant)
eurex_t7_rdi_fast_v5_0.security_type_constant_4.display = function(value)
  if value == nil then
    return "Security Type: No Value"
  end

  if value == 0 then
    return "Security Type: Option (OPT)"
  end
  if value == 1 then
    return "Security Type: Future (FUT)"
  end
  if value == 2 then
    return "Security Type: MultiLegInstrument (MLEG)"
  end
  if value == 3 then
    return "Security Type: VarianceFutures (VAR)"
  end
  if value == 4 then
    return "Security Type: TotalReturnFutures (TRF)"
  end
  if value == 5 then
    return "Security Type: CommonStock (CS)"
  end
  if value == 6 then
    return "Security Type: Bond (BOND)"
  end
  if value == 7 then
    return "Security Type: TradeAtReferencePrice (TARP)"
  end
  if value == 8 then
    return "Security Type: ExchangeTradedFund (ETF)"
  end
  if value == 9 then
    return "Security Type: ExchangeTradedCommodity (ETC)"
  end
  if value == 10 then
    return "Security Type: ExchangeTradedNote (ETN)"
  end
  if value == 11 then
    return "Security Type: Other (OTHER)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type (Constant)
eurex_t7_rdi_fast_v5_0.security_type_constant_4.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 4

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.security_type_constant_4.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_type, range, value, display)
  end

  return offset, value
end

-- Security Type (Constant)
eurex_t7_rdi_fast_v5_0.security_type_constant_7 = {}

-- Display: Security Type (Constant)
eurex_t7_rdi_fast_v5_0.security_type_constant_7.display = function(value)
  if value == nil then
    return "Security Type: No Value"
  end

  if value == 0 then
    return "Security Type: Option (OPT)"
  end
  if value == 1 then
    return "Security Type: Future (FUT)"
  end
  if value == 2 then
    return "Security Type: MultiLegInstrument (MLEG)"
  end
  if value == 3 then
    return "Security Type: VarianceFutures (VAR)"
  end
  if value == 4 then
    return "Security Type: TotalReturnFutures (TRF)"
  end
  if value == 5 then
    return "Security Type: CommonStock (CS)"
  end
  if value == 6 then
    return "Security Type: Bond (BOND)"
  end
  if value == 7 then
    return "Security Type: TradeAtReferencePrice (TARP)"
  end
  if value == 8 then
    return "Security Type: ExchangeTradedFund (ETF)"
  end
  if value == 9 then
    return "Security Type: ExchangeTradedCommodity (ETC)"
  end
  if value == 10 then
    return "Security Type: ExchangeTradedNote (ETN)"
  end
  if value == 11 then
    return "Security Type: Other (OTHER)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type (Constant)
eurex_t7_rdi_fast_v5_0.security_type_constant_7.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 7

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.security_type_constant_7.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_type, range, value, display)
  end

  return offset, value
end

-- Security Status
eurex_t7_rdi_fast_v5_0.security_status = {}

-- Display: Security Status
eurex_t7_rdi_fast_v5_0.security_status.display = function(value)
  if value == nil then
    return "Security Status: No Value"
  end

  if value == 0 then
    return "Security Status: Active (1)"
  end
  if value == 1 then
    return "Security Status: Inactive (2)"
  end
  if value == 2 then
    return "Security Status: Expired (4)"
  end
  if value == 3 then
    return "Security Status: Suspended (9)"
  end
  if value == 4 then
    return "Security Status: Published (10)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
eurex_t7_rdi_fast_v5_0.security_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Status was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.security_status.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_status, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_status, range, value, display)
  end

  return offset, value
end

-- Security Desc
eurex_t7_rdi_fast_v5_0.security_desc = {}

-- Dissect: Security Desc
eurex_t7_rdi_fast_v5_0.security_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_string_delta(buffer, offset, state.values[key])

  if value ~= nil then
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_desc, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_desc, range, "")
    absent:set_text("Security Desc: No Value")
  end

  return offset, value
end

-- Security Exchange
eurex_t7_rdi_fast_v5_0.security_exchange = {}

-- Dissect: Security Exchange
eurex_t7_rdi_fast_v5_0.security_exchange.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_exchange, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_exchange, range, "")
    absent:set_text("Security Exchange: No Value")
  end

  return offset, value
end

-- Product Complex
eurex_t7_rdi_fast_v5_0.product_complex = {}

-- Display: Product Complex
eurex_t7_rdi_fast_v5_0.product_complex.display = function(value)
  if value == nil then
    return "Product Complex: No Value"
  end

  if value == 0 then
    return "Product Complex: SimpleInstrument (1)"
  end
  if value == 1 then
    return "Product Complex: StandardOptionStrategy (2)"
  end
  if value == 2 then
    return "Product Complex: NonStandardOptionStrategy (3)"
  end
  if value == 3 then
    return "Product Complex: VolatilityStrategy (4)"
  end
  if value == 4 then
    return "Product Complex: FuturesSpread (5)"
  end
  if value == 5 then
    return "Product Complex: InterProductSpread (6)"
  end
  if value == 6 then
    return "Product Complex: StandardFuturesStrategy (7)"
  end
  if value == 7 then
    return "Product Complex: PackAndBundle (8)"
  end
  if value == 8 then
    return "Product Complex: Strip (9)"
  end
  if value == 9 then
    return "Product Complex: FlexibleInstrument (10)"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
eurex_t7_rdi_fast_v5_0.product_complex.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Product Complex was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.product_complex.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.product_complex, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.product_complex, range, value, display)
  end

  return offset, value
end

-- Cfi Code
eurex_t7_rdi_fast_v5_0.cfi_code = {}

-- Dissect: Cfi Code
eurex_t7_rdi_fast_v5_0.cfi_code.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Cfi Code was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.cfi_code, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.cfi_code, range, "")
    absent:set_text("Cfi Code: No Value")
  end

  return offset, value
end

-- Security Sub Type
eurex_t7_rdi_fast_v5_0.security_sub_type = {}

-- Dissect: Security Sub Type
eurex_t7_rdi_fast_v5_0.security_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_sub_type, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_sub_type, range, 0)
    absent:set_text("Security Sub Type: No Value")
  end

  return offset, value
end

-- Maturity Date
eurex_t7_rdi_fast_v5_0.maturity_date = {}

-- Dissect: Maturity Date
eurex_t7_rdi_fast_v5_0.maturity_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Maturity Date was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.maturity_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.maturity_date, range, 0)
    absent:set_text("Maturity Date: No Value")
  end

  return offset, value
end

-- Maturity Month Year
eurex_t7_rdi_fast_v5_0.maturity_month_year = {}

-- Dissect: Maturity Month Year
eurex_t7_rdi_fast_v5_0.maturity_month_year.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Maturity Month Year was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.maturity_month_year, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.maturity_month_year, range, 0)
    absent:set_text("Maturity Month Year: No Value")
  end

  return offset, value
end

-- Strike Price
eurex_t7_rdi_fast_v5_0.strike_price = {}

-- Display: Strike Price
eurex_t7_rdi_fast_v5_0.strike_price.display = function(value)
  if value == nil then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
eurex_t7_rdi_fast_v5_0.strike_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.strike_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.strike_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.strike_price, range, value, display)
  end

  return offset, value
end

-- Strike Price Precision
eurex_t7_rdi_fast_v5_0.strike_price_precision = {}

-- Dissect: Strike Price Precision
eurex_t7_rdi_fast_v5_0.strike_price_precision.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.strike_price_precision, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.strike_price_precision, range, 0)
    absent:set_text("Strike Price Precision: No Value")
  end

  return offset, value
end

-- Contract Multiplier
eurex_t7_rdi_fast_v5_0.contract_multiplier = {}

-- Display: Contract Multiplier
eurex_t7_rdi_fast_v5_0.contract_multiplier.display = function(value)
  if value == nil then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
eurex_t7_rdi_fast_v5_0.contract_multiplier.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.contract_multiplier.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.contract_multiplier, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.contract_multiplier, range, value, display)
  end

  return offset, value
end

-- Put Or Call
eurex_t7_rdi_fast_v5_0.put_or_call = {}

-- Display: Put Or Call
eurex_t7_rdi_fast_v5_0.put_or_call.display = function(value)
  if value == nil then
    return "Put Or Call: No Value"
  end

  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
eurex_t7_rdi_fast_v5_0.put_or_call.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.put_or_call.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.put_or_call, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.put_or_call, range, value, display)
  end

  return offset, value
end

-- Opt Attribute
eurex_t7_rdi_fast_v5_0.opt_attribute = {}

-- Dissect: Opt Attribute
eurex_t7_rdi_fast_v5_0.opt_attribute.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.opt_attribute, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.opt_attribute, range, 0)
    absent:set_text("Opt Attribute: No Value")
  end

  return offset, value
end

-- Exercise Style
eurex_t7_rdi_fast_v5_0.exercise_style = {}

-- Display: Exercise Style
eurex_t7_rdi_fast_v5_0.exercise_style.display = function(value)
  if value == nil then
    return "Exercise Style: No Value"
  end

  if value == 0 then
    return "Exercise Style: European (0)"
  end
  if value == 1 then
    return "Exercise Style: American (1)"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
eurex_t7_rdi_fast_v5_0.exercise_style.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.exercise_style.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.exercise_style, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.exercise_style, range, value, display)
  end

  return offset, value
end

-- Orig Strike Price
eurex_t7_rdi_fast_v5_0.orig_strike_price = {}

-- Display: Orig Strike Price
eurex_t7_rdi_fast_v5_0.orig_strike_price.display = function(value)
  if value == nil then
    return "Orig Strike Price: No Value"
  end

  return "Orig Strike Price: "..value
end

-- Dissect: Orig Strike Price
eurex_t7_rdi_fast_v5_0.orig_strike_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.orig_strike_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.orig_strike_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.orig_strike_price, range, value, display)
  end

  return offset, value
end

-- Contract Generation Number
eurex_t7_rdi_fast_v5_0.contract_generation_number = {}

-- Dissect: Contract Generation Number
eurex_t7_rdi_fast_v5_0.contract_generation_number.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.contract_generation_number, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.contract_generation_number, range, 0)
    absent:set_text("Contract Generation Number: No Value")
  end

  return offset, value
end

-- Low Exercise Price Option Indicator
eurex_t7_rdi_fast_v5_0.low_exercise_price_option_indicator = {}

-- Display: Low Exercise Price Option Indicator
eurex_t7_rdi_fast_v5_0.low_exercise_price_option_indicator.display = function(value)
  if value == nil then
    return "Low Exercise Price Option Indicator: No Value"
  end

  if value == 0 then
    return "Low Exercise Price Option Indicator: No (N)"
  end
  if value == 1 then
    return "Low Exercise Price Option Indicator: Yes (Y)"
  end

  return "Low Exercise Price Option Indicator: Unknown("..value..")"
end

-- Dissect: Low Exercise Price Option Indicator
eurex_t7_rdi_fast_v5_0.low_exercise_price_option_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.low_exercise_price_option_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.low_exercise_price_option_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.low_exercise_price_option_indicator, range, value, display)
  end

  return offset, value
end

-- Valuation Method
eurex_t7_rdi_fast_v5_0.valuation_method = {}

-- Display: Valuation Method
eurex_t7_rdi_fast_v5_0.valuation_method.display = function(value)
  if value == nil then
    return "Valuation Method: No Value"
  end

  if value == 0 then
    return "Valuation Method: PremiumStyle (EQTY)"
  end
  if value == 1 then
    return "Valuation Method: FuturesStyleMarkToMarket (FUT)"
  end

  return "Valuation Method: Unknown("..value..")"
end

-- Dissect: Valuation Method
eurex_t7_rdi_fast_v5_0.valuation_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.valuation_method.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.valuation_method, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.valuation_method, range, value, display)
  end

  return offset, value
end

-- Settl Method
eurex_t7_rdi_fast_v5_0.settl_method = {}

-- Display: Settl Method
eurex_t7_rdi_fast_v5_0.settl_method.display = function(value)
  if value == nil then
    return "Settl Method: No Value"
  end

  if value == 0 then
    return "Settl Method: Cash (C)"
  end
  if value == 1 then
    return "Settl Method: Physical (P)"
  end

  return "Settl Method: Unknown("..value..")"
end

-- Dissect: Settl Method
eurex_t7_rdi_fast_v5_0.settl_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.settl_method.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.settl_method, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.settl_method, range, value, display)
  end

  return offset, value
end

-- Settl Sub Method
eurex_t7_rdi_fast_v5_0.settl_sub_method = {}

-- Display: Settl Sub Method
eurex_t7_rdi_fast_v5_0.settl_sub_method.display = function(value)
  if value == nil then
    return "Settl Sub Method: No Value"
  end

  if value == 0 then
    return "Settl Sub Method: Shares (1)"
  end
  if value == 1 then
    return "Settl Sub Method: Derivatives (2)"
  end
  if value == 2 then
    return "Settl Sub Method: PaymentVsPayment (3)"
  end
  if value == 3 then
    return "Settl Sub Method: Notional (4)"
  end
  if value == 4 then
    return "Settl Sub Method: Cascade (5)"
  end
  if value == 5 then
    return "Settl Sub Method: Other (99)"
  end

  return "Settl Sub Method: Unknown("..value..")"
end

-- Dissect: Settl Sub Method
eurex_t7_rdi_fast_v5_0.settl_sub_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.settl_sub_method.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.settl_sub_method, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.settl_sub_method, range, value, display)
  end

  return offset, value
end

-- Prior Settl Price (Copy)
eurex_t7_rdi_fast_v5_0.prior_settl_price_copy_optional = {}

-- Display: Prior Settl Price (Copy)
eurex_t7_rdi_fast_v5_0.prior_settl_price_copy_optional.display = function(value)
  if value == nil then
    return "Prior Settl Price: No Value"
  end

  return "Prior Settl Price: "..value
end

-- Dissect: Prior Settl Price (Copy)
eurex_t7_rdi_fast_v5_0.prior_settl_price_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.prior_settl_price_copy_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.prior_settl_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.prior_settl_price, range, value, display)
  end

  return offset, value
end

-- Prior Settl Price (Copy)
eurex_t7_rdi_fast_v5_0.prior_settl_price_copy_required = {}

-- Display: Prior Settl Price (Copy)
eurex_t7_rdi_fast_v5_0.prior_settl_price_copy_required.display = function(value)
  if value == nil then
    return "Prior Settl Price: No Value"
  end

  return "Prior Settl Price: "..value
end

-- Dissect: Prior Settl Price (Copy)
eurex_t7_rdi_fast_v5_0.prior_settl_price_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.prior_settl_price_copy_required.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.prior_settl_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.prior_settl_price, range, value, display)
  end

  return offset, value
end

-- Symbol
eurex_t7_rdi_fast_v5_0.symbol = {}

-- Dissect: Symbol
eurex_t7_rdi_fast_v5_0.symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.symbol, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- No Legs
eurex_t7_rdi_fast_v5_0.no_legs = {}

-- Dissect: No Legs
eurex_t7_rdi_fast_v5_0.no_legs.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "No Legs was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_legs, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_legs, range, 0)
    absent:set_text("No Legs: No Value")
  end

  return offset, value
end

-- Leg Symbol
eurex_t7_rdi_fast_v5_0.leg_symbol = {}

-- Dissect: Leg Symbol
eurex_t7_rdi_fast_v5_0.leg_symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_symbol, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_symbol, range, 0)
    absent:set_text("Leg Symbol: No Value")
  end

  return offset, value
end

-- Leg Security Id
eurex_t7_rdi_fast_v5_0.leg_security_id = {}

-- Dissect: Leg Security Id
eurex_t7_rdi_fast_v5_0.leg_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_security_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_security_id, range, Int64(0))
    absent:set_text("Leg Security Id: No Value")
  end

  return offset, value
end

-- Leg Security Id Source
eurex_t7_rdi_fast_v5_0.leg_security_id_source = {}

-- Dissect: Leg Security Id Source
eurex_t7_rdi_fast_v5_0.leg_security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "M"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_security_id_source, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_security_id_source, range, "")
    absent:set_text("Leg Security Id Source: No Value")
  end

  return offset, value
end

-- Leg Security Type
eurex_t7_rdi_fast_v5_0.leg_security_type = {}

-- Display: Leg Security Type
eurex_t7_rdi_fast_v5_0.leg_security_type.display = function(value)
  if value == nil then
    return "Leg Security Type: No Value"
  end

  if value == 0 then
    return "Leg Security Type: PartOfMultilegInstrument (MLEG)"
  end
  if value == 1 then
    return "Leg Security Type: UnderlyingLeg (ULEG)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
eurex_t7_rdi_fast_v5_0.leg_security_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.leg_security_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_security_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_security_type, range, value, display)
  end

  return offset, value
end

-- Leg Side
eurex_t7_rdi_fast_v5_0.leg_side = {}

-- Display: Leg Side
eurex_t7_rdi_fast_v5_0.leg_side.display = function(value)
  if value == nil then
    return "Leg Side: No Value"
  end

  if value == 0 then
    return "Leg Side: Buy (1)"
  end
  if value == 1 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
eurex_t7_rdi_fast_v5_0.leg_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.leg_side.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_side, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_side, range, value, display)
  end

  return offset, value
end

-- Leg Ratio Qty
eurex_t7_rdi_fast_v5_0.leg_ratio_qty = {}

-- Dissect: Leg Ratio Qty
eurex_t7_rdi_fast_v5_0.leg_ratio_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_ratio_qty, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_ratio_qty, range, 0)
    absent:set_text("Leg Ratio Qty: No Value")
  end

  return offset, value
end

-- Leg Price
eurex_t7_rdi_fast_v5_0.leg_price = {}

-- Display: Leg Price
eurex_t7_rdi_fast_v5_0.leg_price.display = function(value)
  if value == nil then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Dissect: Leg Price
eurex_t7_rdi_fast_v5_0.leg_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.leg_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.leg_price, range, value, display)
  end

  return offset, value
end

-- Transact Time (Delta)
eurex_t7_rdi_fast_v5_0.transact_time_delta_optional = {}

-- Dissect: Transact Time (Delta)
eurex_t7_rdi_fast_v5_0.transact_time_delta_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_int64(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or Int64(0)) + value_delta
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Transact Time (Delta)
eurex_t7_rdi_fast_v5_0.transact_time_delta_required = {}

-- Dissect: Transact Time (Delta)
eurex_t7_rdi_fast_v5_0.transact_time_delta_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or Int64(0)) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.transact_time, range, NSTime.new(0, 0))
    absent:set_text("Transact Time: No Value")
  else
    local seconds = (value / Int64(1000000000)):tonumber()
    local nanos = (value % Int64(1000000000)):tonumber()
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.transact_time, range, NSTime.new(seconds, nanos))
  end

  return offset, value
end

-- Ref Tick Table Id
eurex_t7_rdi_fast_v5_0.ref_tick_table_id = {}

-- Dissect: Ref Tick Table Id
eurex_t7_rdi_fast_v5_0.ref_tick_table_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Ref Tick Table Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.ref_tick_table_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.ref_tick_table_id, range, 0)
    absent:set_text("Ref Tick Table Id: No Value")
  end

  return offset, value
end

-- Settl Currency
eurex_t7_rdi_fast_v5_0.settl_currency = {}

-- Dissect: Settl Currency
eurex_t7_rdi_fast_v5_0.settl_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "EUR"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.settl_currency, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.settl_currency, range, "")
    absent:set_text("Settl Currency: No Value")
  end

  return offset, value
end

-- No Instrument Parties
eurex_t7_rdi_fast_v5_0.no_instrument_parties = {}

-- Dissect: No Instrument Parties
eurex_t7_rdi_fast_v5_0.no_instrument_parties.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_instrument_parties, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_instrument_parties, range, 0)
    absent:set_text("No Instrument Parties: No Value")
  end

  return offset, value
end

-- Instrument Party Id
eurex_t7_rdi_fast_v5_0.instrument_party_id = {}

-- Dissect: Instrument Party Id
eurex_t7_rdi_fast_v5_0.instrument_party_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Instrument Party Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_id, range, "")
    absent:set_text("Instrument Party Id: No Value")
  end

  return offset, value
end

-- Instrument Party Id Source
eurex_t7_rdi_fast_v5_0.instrument_party_id_source = {}

-- Display: Instrument Party Id Source
eurex_t7_rdi_fast_v5_0.instrument_party_id_source.display = function(value)
  if value == nil then
    return "Instrument Party Id Source: No Value"
  end

  if value == 0 then
    return "Instrument Party Id Source: Proprietary (D)"
  end

  return "Instrument Party Id Source: Unknown("..value..")"
end

-- Dissect: Instrument Party Id Source
eurex_t7_rdi_fast_v5_0.instrument_party_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Instrument Party Id Source was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.instrument_party_id_source.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_id_source, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_id_source, range, value, display)
  end

  return offset, value
end

-- Instrument Party Role
eurex_t7_rdi_fast_v5_0.instrument_party_role = {}

-- Display: Instrument Party Role
eurex_t7_rdi_fast_v5_0.instrument_party_role.display = function(value)
  if value == nil then
    return "Instrument Party Role: No Value"
  end

  if value == 0 then
    return "Instrument Party Role: ClearingOrganization (21)"
  end
  if value == 1 then
    return "Instrument Party Role: MarketMaker (66)"
  end

  return "Instrument Party Role: Unknown("..value..")"
end

-- Dissect: Instrument Party Role
eurex_t7_rdi_fast_v5_0.instrument_party_role.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Instrument Party Role was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.instrument_party_role.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_role, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_role, range, value, display)
  end

  return offset, value
end

-- Instrument Party Role Qualifier
eurex_t7_rdi_fast_v5_0.instrument_party_role_qualifier = {}

-- Display: Instrument Party Role Qualifier
eurex_t7_rdi_fast_v5_0.instrument_party_role_qualifier.display = function(value)
  if value == nil then
    return "Instrument Party Role Qualifier: No Value"
  end

  if value == 0 then
    return "Instrument Party Role Qualifier: DesignatedSponsor (20)"
  end

  return "Instrument Party Role Qualifier: Unknown("..value..")"
end

-- Dissect: Instrument Party Role Qualifier
eurex_t7_rdi_fast_v5_0.instrument_party_role_qualifier.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.instrument_party_role_qualifier.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_role_qualifier, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_party_role_qualifier, range, value, display)
  end

  return offset, value
end

-- No Instr Attrib
eurex_t7_rdi_fast_v5_0.no_instr_attrib = {}

-- Dissect: No Instr Attrib
eurex_t7_rdi_fast_v5_0.no_instr_attrib.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_instr_attrib, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_instr_attrib, range, 0)
    absent:set_text("No Instr Attrib: No Value")
  end

  return offset, value
end

-- Instr Attrib Type
eurex_t7_rdi_fast_v5_0.instr_attrib_type = {}

-- Display: Instr Attrib Type
eurex_t7_rdi_fast_v5_0.instr_attrib_type.display = function(value)
  if value == nil then
    return "Instr Attrib Type: No Value"
  end

  if value == 0 then
    return "Instr Attrib Type: MinimumReserveOrderVolume (100)"
  end
  if value == 1 then
    return "Instr Attrib Type: MinimumDisplayVolume (101)"
  end
  if value == 2 then
    return "Instr Attrib Type: IssuerName (102)"
  end
  if value == 3 then
    return "Instr Attrib Type: IssuerNumber (103)"
  end
  if value == 4 then
    return "Instr Attrib Type: MarketType (104)"
  end
  if value == 5 then
    return "Instr Attrib Type: MarketTypeSupplement (105)"
  end
  if value == 6 then
    return "Instr Attrib Type: ReportingMarket (106)"
  end
  if value == 7 then
    return "Instr Attrib Type: CumExIndicator (107)"
  end
  if value == 8 then
    return "Instr Attrib Type: ProductAssignmentGroup (108)"
  end
  if value == 9 then
    return "Instr Attrib Type: ProductAssignmentGroupDescription (109)"
  end
  if value == 10 then
    return "Instr Attrib Type: DomesticIndicator (110)"
  end

  return "Instr Attrib Type: Unknown("..value..")"
end

-- Dissect: Instr Attrib Type
eurex_t7_rdi_fast_v5_0.instr_attrib_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Instr Attrib Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.instr_attrib_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instr_attrib_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instr_attrib_type, range, value, display)
  end

  return offset, value
end

-- Instr Attrib Value
eurex_t7_rdi_fast_v5_0.instr_attrib_value = {}

-- Dissect: Instr Attrib Value
eurex_t7_rdi_fast_v5_0.instr_attrib_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Instr Attrib Value was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instr_attrib_value, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instr_attrib_value, range, "")
    absent:set_text("Instr Attrib Value: No Value")
  end

  return offset, value
end

-- No Events
eurex_t7_rdi_fast_v5_0.no_events = {}

-- Dissect: No Events
eurex_t7_rdi_fast_v5_0.no_events.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_events, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_events, range, 0)
    absent:set_text("No Events: No Value")
  end

  return offset, value
end

-- Event Type
eurex_t7_rdi_fast_v5_0.event_type = {}

-- Display: Event Type
eurex_t7_rdi_fast_v5_0.event_type.display = function(value)
  if value == nil then
    return "Event Type: No Value"
  end

  if value == 0 then
    return "Event Type: LastEligibleTradeDate (7)"
  end
  if value == 1 then
    return "Event Type: FirstEligibleTradeDate (100)"
  end
  if value == 2 then
    return "Event Type: CapitalAdjustmentDate (101)"
  end
  if value == 3 then
    return "Event Type: DividendPaymentDate (102)"
  end

  return "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
eurex_t7_rdi_fast_v5_0.event_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.event_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.event_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.event_type, range, value, display)
  end

  return offset, value
end

-- Event Date
eurex_t7_rdi_fast_v5_0.event_date = {}

-- Dissect: Event Date
eurex_t7_rdi_fast_v5_0.event_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Event Date was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.event_date, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.event_date, range, 0)
    absent:set_text("Event Date: No Value")
  end

  return offset, value
end

-- Instrument Price Precision
eurex_t7_rdi_fast_v5_0.instrument_price_precision = {}

-- Dissect: Instrument Price Precision
eurex_t7_rdi_fast_v5_0.instrument_price_precision.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_price_precision, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_price_precision, range, 0)
    absent:set_text("Instrument Price Precision: No Value")
  end

  return offset, value
end

-- Min Price Increment
eurex_t7_rdi_fast_v5_0.min_price_increment = {}

-- Display: Min Price Increment
eurex_t7_rdi_fast_v5_0.min_price_increment.display = function(value)
  if value == nil then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Dissect: Min Price Increment
eurex_t7_rdi_fast_v5_0.min_price_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.min_price_increment.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.min_price_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.min_price_increment, range, value, display)
  end

  return offset, value
end

-- Min Price Increment Clearing
eurex_t7_rdi_fast_v5_0.min_price_increment_clearing = {}

-- Display: Min Price Increment Clearing
eurex_t7_rdi_fast_v5_0.min_price_increment_clearing.display = function(value)
  if value == nil then
    return "Min Price Increment Clearing: No Value"
  end

  return "Min Price Increment Clearing: "..value
end

-- Dissect: Min Price Increment Clearing
eurex_t7_rdi_fast_v5_0.min_price_increment_clearing.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.min_price_increment_clearing.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.min_price_increment_clearing, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.min_price_increment_clearing, range, value, display)
  end

  return offset, value
end

-- Min Price Increment Amount
eurex_t7_rdi_fast_v5_0.min_price_increment_amount = {}

-- Display: Min Price Increment Amount
eurex_t7_rdi_fast_v5_0.min_price_increment_amount.display = function(value)
  if value == nil then
    return "Min Price Increment Amount: No Value"
  end

  return "Min Price Increment Amount: "..value
end

-- Dissect: Min Price Increment Amount
eurex_t7_rdi_fast_v5_0.min_price_increment_amount.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.min_price_increment_amount.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.min_price_increment_amount, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.min_price_increment_amount, range, value, display)
  end

  return offset, value
end

-- No Market Segments
eurex_t7_rdi_fast_v5_0.no_market_segments = {}

-- Dissect: No Market Segments
eurex_t7_rdi_fast_v5_0.no_market_segments.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 1

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_market_segments, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_market_segments, range, 0)
    absent:set_text("No Market Segments: No Value")
  end

  return offset, value
end

-- Implied Market Indicator
eurex_t7_rdi_fast_v5_0.implied_market_indicator = {}

-- Display: Implied Market Indicator
eurex_t7_rdi_fast_v5_0.implied_market_indicator.display = function(value)
  if value == nil then
    return "Implied Market Indicator: No Value"
  end

  if value == 0 then
    return "Implied Market Indicator: NotImplied (0)"
  end
  if value == 1 then
    return "Implied Market Indicator: BothImpliedInAndImpliedOut (3)"
  end

  return "Implied Market Indicator: Unknown("..value..")"
end

-- Dissect: Implied Market Indicator
eurex_t7_rdi_fast_v5_0.implied_market_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.implied_market_indicator.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.implied_market_indicator, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.implied_market_indicator, range, value, display)
  end

  return offset, value
end

-- Multileg Model
eurex_t7_rdi_fast_v5_0.multileg_model = {}

-- Display: Multileg Model
eurex_t7_rdi_fast_v5_0.multileg_model.display = function(value)
  if value == nil then
    return "Multileg Model: No Value"
  end

  if value == 0 then
    return "Multileg Model: PredefinedMultilegSecurity (0)"
  end
  if value == 1 then
    return "Multileg Model: UserDefinedMultilegSecurity (1)"
  end

  return "Multileg Model: Unknown("..value..")"
end

-- Dissect: Multileg Model
eurex_t7_rdi_fast_v5_0.multileg_model.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.multileg_model.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.multileg_model, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.multileg_model, range, value, display)
  end

  return offset, value
end

-- Price Type
eurex_t7_rdi_fast_v5_0.price_type = {}

-- Display: Price Type
eurex_t7_rdi_fast_v5_0.price_type.display = function(value)
  if value == nil then
    return "Price Type: No Value"
  end

  if value == 0 then
    return "Price Type: Percent (1)"
  end
  if value == 1 then
    return "Price Type: Shares (2)"
  end
  if value == 2 then
    return "Price Type: Points (22)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
eurex_t7_rdi_fast_v5_0.price_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.price_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.price_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.price_type, range, value, display)
  end

  return offset, value
end

-- Post Trade Anonymity
eurex_t7_rdi_fast_v5_0.post_trade_anonymity = {}

-- Display: Post Trade Anonymity
eurex_t7_rdi_fast_v5_0.post_trade_anonymity.display = function(value)
  if value == nil then
    return "Post Trade Anonymity: No Value"
  end

  if value == 0 then
    return "Post Trade Anonymity: Disabled (0)"
  end
  if value == 1 then
    return "Post Trade Anonymity: Enabled (1)"
  end
  if value == 2 then
    return "Post Trade Anonymity: CentralCounterparty (2)"
  end

  return "Post Trade Anonymity: Unknown("..value..")"
end

-- Dissect: Post Trade Anonymity
eurex_t7_rdi_fast_v5_0.post_trade_anonymity.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.post_trade_anonymity.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.post_trade_anonymity, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.post_trade_anonymity, range, value, display)
  end

  return offset, value
end

-- Settl Business Days
eurex_t7_rdi_fast_v5_0.settl_business_days = {}

-- Dissect: Settl Business Days
eurex_t7_rdi_fast_v5_0.settl_business_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.settl_business_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.settl_business_days, range, 0)
    absent:set_text("Settl Business Days: No Value")
  end

  return offset, value
end

-- No Trading Session Rules
eurex_t7_rdi_fast_v5_0.no_trading_session_rules = {}

-- Dissect: No Trading Session Rules
eurex_t7_rdi_fast_v5_0.no_trading_session_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_trading_session_rules, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_trading_session_rules, range, 0)
    absent:set_text("No Trading Session Rules: No Value")
  end

  return offset, value
end

-- Trading Session Id
eurex_t7_rdi_fast_v5_0.trading_session_id = {}

-- Display: Trading Session Id
eurex_t7_rdi_fast_v5_0.trading_session_id.display = function(value)
  if value == nil then
    return "Trading Session Id: No Value"
  end

  if value == 0 then
    return "Trading Session Id: Day (1)"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
eurex_t7_rdi_fast_v5_0.trading_session_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 0

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.trading_session_id.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.trading_session_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.trading_session_id, range, value, display)
  end

  return offset, value
end

-- Trading Session Sub Id
eurex_t7_rdi_fast_v5_0.trading_session_sub_id = {}

-- Display: Trading Session Sub Id
eurex_t7_rdi_fast_v5_0.trading_session_sub_id.display = function(value)
  if value == nil then
    return "Trading Session Sub Id: No Value"
  end

  if value == 0 then
    return "Trading Session Sub Id: ContinuousTrading (3)"
  end
  if value == 1 then
    return "Trading Session Sub Id: OneAuction (6)"
  end
  if value == 2 then
    return "Trading Session Sub Id: MultipleAuctions (8)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
eurex_t7_rdi_fast_v5_0.trading_session_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Trading Session Sub Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.trading_session_sub_id.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.trading_session_sub_id, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.trading_session_sub_id, range, value, display)
  end

  return offset, value
end

-- Security Update Action
eurex_t7_rdi_fast_v5_0.security_update_action = {}

-- Dissect: Security Update Action
eurex_t7_rdi_fast_v5_0.security_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "A"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_update_action, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_update_action, range, "")
    absent:set_text("Security Update Action: No Value")
  end

  return offset, value
end

-- No Clearing Price Parameters
eurex_t7_rdi_fast_v5_0.no_clearing_price_parameters = {}

-- Dissect: No Clearing Price Parameters
eurex_t7_rdi_fast_v5_0.no_clearing_price_parameters.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 2

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_clearing_price_parameters, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.no_clearing_price_parameters, range, 0)
    absent:set_text("No Clearing Price Parameters: No Value")
  end

  return offset, value
end

-- Business Day Type
eurex_t7_rdi_fast_v5_0.business_day_type = {}

-- Display: Business Day Type
eurex_t7_rdi_fast_v5_0.business_day_type.display = function(value)
  if value == nil then
    return "Business Day Type: No Value"
  end

  if value == 0 then
    return "Business Day Type: PrecedingDay (5)"
  end
  if value == 1 then
    return "Business Day Type: CurrentDay (1)"
  end

  return "Business Day Type: Unknown("..value..")"
end

-- Dissect: Business Day Type
eurex_t7_rdi_fast_v5_0.business_day_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.business_day_type.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.business_day_type, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.business_day_type, range, value, display)
  end

  return offset, value
end

-- Clearing Price Offset
eurex_t7_rdi_fast_v5_0.clearing_price_offset = {}

-- Display: Clearing Price Offset
eurex_t7_rdi_fast_v5_0.clearing_price_offset.display = function(value)
  if value == nil then
    return "Clearing Price Offset: No Value"
  end

  return "Clearing Price Offset: "..value
end

-- Dissect: Clearing Price Offset
eurex_t7_rdi_fast_v5_0.clearing_price_offset.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.clearing_price_offset.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.clearing_price_offset, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.clearing_price_offset, range, value, display)
  end

  return offset, value
end

-- Vega Multiplier
eurex_t7_rdi_fast_v5_0.vega_multiplier = {}

-- Dissect: Vega Multiplier
eurex_t7_rdi_fast_v5_0.vega_multiplier.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_uint64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.vega_multiplier, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.vega_multiplier, range, UInt64(0))
    absent:set_text("Vega Multiplier: No Value")
  end

  return offset, value
end

-- Annual Trading Business Days
eurex_t7_rdi_fast_v5_0.annual_trading_business_days = {}

-- Dissect: Annual Trading Business Days
eurex_t7_rdi_fast_v5_0.annual_trading_business_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.annual_trading_business_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.annual_trading_business_days, range, 0)
    absent:set_text("Annual Trading Business Days: No Value")
  end

  return offset, value
end

-- Total Trading Business Days
eurex_t7_rdi_fast_v5_0.total_trading_business_days = {}

-- Dissect: Total Trading Business Days
eurex_t7_rdi_fast_v5_0.total_trading_business_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.total_trading_business_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.total_trading_business_days, range, 0)
    absent:set_text("Total Trading Business Days: No Value")
  end

  return offset, value
end

-- Trading Business Days
eurex_t7_rdi_fast_v5_0.trading_business_days = {}

-- Dissect: Trading Business Days
eurex_t7_rdi_fast_v5_0.trading_business_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.trading_business_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.trading_business_days, range, 0)
    absent:set_text("Trading Business Days: No Value")
  end

  return offset, value
end

-- Standard Variance
eurex_t7_rdi_fast_v5_0.standard_variance = {}

-- Display: Standard Variance
eurex_t7_rdi_fast_v5_0.standard_variance.display = function(value)
  if value == nil then
    return "Standard Variance: No Value"
  end

  return "Standard Variance: "..value
end

-- Dissect: Standard Variance
eurex_t7_rdi_fast_v5_0.standard_variance.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.standard_variance.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.standard_variance, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.standard_variance, range, value, display)
  end

  return offset, value
end

-- Related Close Price
eurex_t7_rdi_fast_v5_0.related_close_price = {}

-- Display: Related Close Price
eurex_t7_rdi_fast_v5_0.related_close_price.display = function(value)
  if value == nil then
    return "Related Close Price: No Value"
  end

  return "Related Close Price: "..value
end

-- Dissect: Related Close Price
eurex_t7_rdi_fast_v5_0.related_close_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.related_close_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.related_close_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.related_close_price, range, value, display)
  end

  return offset, value
end

-- Realized Variance
eurex_t7_rdi_fast_v5_0.realized_variance = {}

-- Display: Realized Variance
eurex_t7_rdi_fast_v5_0.realized_variance.display = function(value)
  if value == nil then
    return "Realized Variance: No Value"
  end

  return "Realized Variance: "..value
end

-- Dissect: Realized Variance
eurex_t7_rdi_fast_v5_0.realized_variance.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.realized_variance.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.realized_variance, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.realized_variance, range, value, display)
  end

  return offset, value
end

-- Risk Free Rate
eurex_t7_rdi_fast_v5_0.risk_free_rate = {}

-- Display: Risk Free Rate
eurex_t7_rdi_fast_v5_0.risk_free_rate.display = function(value)
  if value == nil then
    return "Risk Free Rate: No Value"
  end

  return "Risk Free Rate: "..value
end

-- Dissect: Risk Free Rate
eurex_t7_rdi_fast_v5_0.risk_free_rate.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.risk_free_rate.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.risk_free_rate, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.risk_free_rate, range, value, display)
  end

  return offset, value
end

-- Discount Factor
eurex_t7_rdi_fast_v5_0.discount_factor = {}

-- Display: Discount Factor
eurex_t7_rdi_fast_v5_0.discount_factor.display = function(value)
  if value == nil then
    return "Discount Factor: No Value"
  end

  return "Discount Factor: "..value
end

-- Dissect: Discount Factor
eurex_t7_rdi_fast_v5_0.discount_factor.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.discount_factor.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.discount_factor, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.discount_factor, range, value, display)
  end

  return offset, value
end

-- Overnight Interest Rate
eurex_t7_rdi_fast_v5_0.overnight_interest_rate = {}

-- Display: Overnight Interest Rate
eurex_t7_rdi_fast_v5_0.overnight_interest_rate.display = function(value)
  if value == nil then
    return "Overnight Interest Rate: No Value"
  end

  return "Overnight Interest Rate: "..value
end

-- Dissect: Overnight Interest Rate
eurex_t7_rdi_fast_v5_0.overnight_interest_rate.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.overnight_interest_rate.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.overnight_interest_rate, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.overnight_interest_rate, range, value, display)
  end

  return offset, value
end

-- Accumulated Return Modified Variation Margin
eurex_t7_rdi_fast_v5_0.accumulated_return_modified_variation_margin = {}

-- Display: Accumulated Return Modified Variation Margin
eurex_t7_rdi_fast_v5_0.accumulated_return_modified_variation_margin.display = function(value)
  if value == nil then
    return "Accumulated Return Modified Variation Margin: No Value"
  end

  return "Accumulated Return Modified Variation Margin: "..value
end

-- Dissect: Accumulated Return Modified Variation Margin
eurex_t7_rdi_fast_v5_0.accumulated_return_modified_variation_margin.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.accumulated_return_modified_variation_margin.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.accumulated_return_modified_variation_margin, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.accumulated_return_modified_variation_margin, range, value, display)
  end

  return offset, value
end

-- Volatility
eurex_t7_rdi_fast_v5_0.volatility = {}

-- Display: Volatility
eurex_t7_rdi_fast_v5_0.volatility.display = function(value)
  if value == nil then
    return "Volatility: No Value"
  end

  return "Volatility: "..value
end

-- Dissect: Volatility
eurex_t7_rdi_fast_v5_0.volatility.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.volatility.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.volatility, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.volatility, range, value, display)
  end

  return offset, value
end

-- Clearing Settl Price
eurex_t7_rdi_fast_v5_0.clearing_settl_price = {}

-- Display: Clearing Settl Price
eurex_t7_rdi_fast_v5_0.clearing_settl_price.display = function(value)
  if value == nil then
    return "Clearing Settl Price: No Value"
  end

  return "Clearing Settl Price: "..value
end

-- Dissect: Clearing Settl Price
eurex_t7_rdi_fast_v5_0.clearing_settl_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.clearing_settl_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.clearing_settl_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.clearing_settl_price, range, value, display)
  end

  return offset, value
end

-- Calculation Method
eurex_t7_rdi_fast_v5_0.calculation_method = {}

-- Display: Calculation Method
eurex_t7_rdi_fast_v5_0.calculation_method.display = function(value)
  if value == nil then
    return "Calculation Method: No Value"
  end

  if value == 0 then
    return "Calculation Method: Automatic (0)"
  end
  if value == 1 then
    return "Calculation Method: Manual (1)"
  end

  return "Calculation Method: Unknown("..value..")"
end

-- Dissect: Calculation Method
eurex_t7_rdi_fast_v5_0.calculation_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.calculation_method.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.calculation_method, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.calculation_method, range, value, display)
  end

  return offset, value
end

-- Settl Price
eurex_t7_rdi_fast_v5_0.settl_price = {}

-- Display: Settl Price
eurex_t7_rdi_fast_v5_0.settl_price.display = function(value)
  if value == nil then
    return "Settl Price: No Value"
  end

  return "Settl Price: "..value
end

-- Dissect: Settl Price
eurex_t7_rdi_fast_v5_0.settl_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.settl_price.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.settl_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.settl_price, range, value, display)
  end

  return offset, value
end

-- Annual Calendar Days
eurex_t7_rdi_fast_v5_0.annual_calendar_days = {}

-- Dissect: Annual Calendar Days
eurex_t7_rdi_fast_v5_0.annual_calendar_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.annual_calendar_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.annual_calendar_days, range, 0)
    absent:set_text("Annual Calendar Days: No Value")
  end

  return offset, value
end

-- Remaining Calendar Days
eurex_t7_rdi_fast_v5_0.remaining_calendar_days = {}

-- Dissect: Remaining Calendar Days
eurex_t7_rdi_fast_v5_0.remaining_calendar_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.remaining_calendar_days, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.remaining_calendar_days, range, 0)
    absent:set_text("Remaining Calendar Days: No Value")
  end

  return offset, value
end

-- Current Payment Parameter
eurex_t7_rdi_fast_v5_0.current_payment_parameter = {}

-- Display: Current Payment Parameter
eurex_t7_rdi_fast_v5_0.current_payment_parameter.display = function(value)
  if value == nil then
    return "Current Payment Parameter: No Value"
  end

  return "Current Payment Parameter: "..value
end

-- Dissect: Current Payment Parameter
eurex_t7_rdi_fast_v5_0.current_payment_parameter.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.current_payment_parameter.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.current_payment_parameter, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.current_payment_parameter, range, value, display)
  end

  return offset, value
end

-- Accrued Payment Parameter
eurex_t7_rdi_fast_v5_0.accrued_payment_parameter = {}

-- Display: Accrued Payment Parameter
eurex_t7_rdi_fast_v5_0.accrued_payment_parameter.display = function(value)
  if value == nil then
    return "Accrued Payment Parameter: No Value"
  end

  return "Accrued Payment Parameter: "..value
end

-- Dissect: Accrued Payment Parameter
eurex_t7_rdi_fast_v5_0.accrued_payment_parameter.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.accrued_payment_parameter.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.accrued_payment_parameter, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.accrued_payment_parameter, range, value, display)
  end

  return offset, value
end

-- Related Index Value
eurex_t7_rdi_fast_v5_0.related_index_value = {}

-- Display: Related Index Value
eurex_t7_rdi_fast_v5_0.related_index_value.display = function(value)
  if value == nil then
    return "Related Index Value: No Value"
  end

  return "Related Index Value: "..value
end

-- Dissect: Related Index Value
eurex_t7_rdi_fast_v5_0.related_index_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.related_index_value.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.related_index_value, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.related_index_value, range, value, display)
  end

  return offset, value
end

-- Current Collection Parameter
eurex_t7_rdi_fast_v5_0.current_collection_parameter = {}

-- Display: Current Collection Parameter
eurex_t7_rdi_fast_v5_0.current_collection_parameter.display = function(value)
  if value == nil then
    return "Current Collection Parameter: No Value"
  end

  return "Current Collection Parameter: "..value
end

-- Dissect: Current Collection Parameter
eurex_t7_rdi_fast_v5_0.current_collection_parameter.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.current_collection_parameter.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.current_collection_parameter, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.current_collection_parameter, range, value, display)
  end

  return offset, value
end

-- Accrued Collection Parameter
eurex_t7_rdi_fast_v5_0.accrued_collection_parameter = {}

-- Display: Accrued Collection Parameter
eurex_t7_rdi_fast_v5_0.accrued_collection_parameter.display = function(value)
  if value == nil then
    return "Accrued Collection Parameter: No Value"
  end

  return "Accrued Collection Parameter: "..value
end

-- Dissect: Accrued Collection Parameter
eurex_t7_rdi_fast_v5_0.accrued_collection_parameter.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    if exponent ~= nil then mantissa, offset = read_stop_bit_signed(buffer, offset) end
    state.values[key[1]] = exponent
    state.values[key[2]] = mantissa
  else
    exponent = state.values[key[1]]
    mantissa = state.values[key[2]]
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.accrued_collection_parameter.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.accrued_collection_parameter, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.accrued_collection_parameter, range, value, display)
  end

  return offset, value
end

-- Md Report Count
eurex_t7_rdi_fast_v5_0.md_report_count = {}

-- Dissect: Md Report Count
eurex_t7_rdi_fast_v5_0.md_report_count.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.md_report_count, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.md_report_count, range, 0)
    absent:set_text("Md Report Count: No Value")
  end

  return offset, value
end

-- Sender Sub Id
eurex_t7_rdi_fast_v5_0.sender_sub_id = {}

-- Dissect: Sender Sub Id
eurex_t7_rdi_fast_v5_0.sender_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Sender Sub Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.sender_sub_id, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.sender_sub_id, range, 0)
    absent:set_text("Sender Sub Id: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed (Delta)
eurex_t7_rdi_fast_v5_0.last_msg_seq_num_processed_delta = {}

-- Dissect: Last Msg Seq Num Processed (Delta)
eurex_t7_rdi_fast_v5_0.last_msg_seq_num_processed_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_signed(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or 0) + value_delta
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed (Sent)
eurex_t7_rdi_fast_v5_0.last_msg_seq_num_processed_sent = {}

-- Dissect: Last Msg Seq Num Processed (Sent)
eurex_t7_rdi_fast_v5_0.last_msg_seq_num_processed_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Md Report Event
eurex_t7_rdi_fast_v5_0.md_report_event = {}

-- Display: Md Report Event
eurex_t7_rdi_fast_v5_0.md_report_event.display = function(value)
  if value == nil then
    return "Md Report Event: No Value"
  end

  if value == 0 then
    return "Md Report Event: StartOfReferenceData (1)"
  end
  if value == 1 then
    return "Md Report Event: EndOfReferenceData (2)"
  end
  if value == 2 then
    return "Md Report Event: StartOfOtcTrades (3)"
  end
  if value == 3 then
    return "Md Report Event: EndOfOtcTrades (4)"
  end
  if value == 4 then
    return "Md Report Event: StartOfExchTrades (5)"
  end
  if value == 5 then
    return "Md Report Event: EndOfExchTrades (6)"
  end
  if value == 6 then
    return "Md Report Event: StartOfOpenInterest (7)"
  end
  if value == 7 then
    return "Md Report Event: EndOfOpenInterest (8)"
  end
  if value == 8 then
    return "Md Report Event: StartOfSettlement (9)"
  end
  if value == 9 then
    return "Md Report Event: EndOfSettlement (10)"
  end
  if value == 10 then
    return "Md Report Event: StartOfStatisticMetaData (11)"
  end
  if value == 11 then
    return "Md Report Event: EndOfStatisticMetaData (12)"
  end

  return "Md Report Event: Unknown("..value..")"
end

-- Dissect: Md Report Event
eurex_t7_rdi_fast_v5_0.md_report_event.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Report Event was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  local display = eurex_t7_rdi_fast_v5_0.md_report_event.display(value)

  if value == nil then
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.md_report_event, range, 0, display)
    absent:set_text(display)
  else
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.md_report_event, range, value, display)
  end

  return offset, value
end

-- Tot No Market Segment Reports
eurex_t7_rdi_fast_v5_0.tot_no_market_segment_reports = {}

-- Dissect: Tot No Market Segment Reports
eurex_t7_rdi_fast_v5_0.tot_no_market_segment_reports.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.tot_no_market_segment_reports, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.tot_no_market_segment_reports, range, 0)
    absent:set_text("Tot No Market Segment Reports: No Value")
  end

  return offset, value
end

-- Tot No Instrument Reports
eurex_t7_rdi_fast_v5_0.tot_no_instrument_reports = {}

-- Dissect: Tot No Instrument Reports
eurex_t7_rdi_fast_v5_0.tot_no_instrument_reports.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.tot_no_instrument_reports, range, value)
  else
    local absent = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.tot_no_instrument_reports, range, 0)
    absent:set_text("Tot No Instrument Reports: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect Eurex T7 Rdi Fast 5.0
-----------------------------------------------------------------------

-- Beacon Message
eurex_t7_rdi_fast_v5_0.beacon = {}

eurex_t7_rdi_fast_v5_0.beacon.node = omi_eurex_t7_rdi_fast_v5_0.fields.beacon
eurex_t7_rdi_fast_v5_0.beacon.presence = {
  [2] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_sender_comp_id,
  [3] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_sender_sub_id,
}

-- Dissect Fields: Beacon Message
eurex_t7_rdi_fast_v5_0.beacon.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.msg_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.sender_comp_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|12:SenderCompID")

  -- Sender Sub Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.sender_sub_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|11:SenderSubID")

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = eurex_t7_rdi_fast_v5_0.last_msg_seq_num_processed_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Beacon Message
eurex_t7_rdi_fast_v5_0.beacon.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v5_0.beacon.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Market Data Report Message
eurex_t7_rdi_fast_v5_0.market_data_report = {}

eurex_t7_rdi_fast_v5_0.market_data_report.node = omi_eurex_t7_rdi_fast_v5_0.fields.market_data_report
eurex_t7_rdi_fast_v5_0.market_data_report.presence = {
  [2] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_sender_sub_id,
  [3] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_market_id,
  [4] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_md_report_event,
  [5] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_tot_no_market_segment_reports,
  [6] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_tot_no_instrument_reports,
}

-- Dissect Fields: Market Data Report Message
eurex_t7_rdi_fast_v5_0.market_data_report.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.msg_type_constant_dr.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Report Count: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v5_0.md_report_count.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Sub Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.sender_sub_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:SenderSubID")

  -- Market Id: string, Copy
  index, value = eurex_t7_rdi_fast_v5_0.market_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|8:MarketID")

  -- Last Msg Seq Num Processed: uInt32, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.last_msg_seq_num_processed_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|22:LastMsgSeqNumProcessed")

  -- Md Report Event: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.md_report_event.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|13:MDReportEvent")

  -- Transact Time: timestamp, Delta
  index, value = eurex_t7_rdi_fast_v5_0.transact_time_delta_required.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  -- Tot No Market Segment Reports: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.tot_no_market_segment_reports.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|25:TotNoMarketSegmentReports")

  -- Tot No Instrument Reports: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.tot_no_instrument_reports.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|22:TotNoInstrumentReports")

  return index
end

-- Dissect: Market Data Report Message
eurex_t7_rdi_fast_v5_0.market_data_report.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v5_0.market_data_report.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trade At Reference Price Status Clearing Price Parameters
eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status_clearing_price_parameters = {}

-- Dissect Fields: Trade At Reference Price Status Clearing Price Parameters
eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status_clearing_price_parameters.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Business Day Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.business_day_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Clearing Price Offset: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.clearing_price_offset.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, { "6:global|0:|19:ClearingPriceOffset|E", "6:global|0:|19:ClearingPriceOffset|M" })

  -- Related Close Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.related_close_price.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|17:RelatedClosePrice|E", "6:global|0:|17:RelatedClosePrice|M" })

  return index
end

-- Dissect: Trade At Reference Price Status Clearing Price Parameters
eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status_clearing_price_parameters.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.trade_at_reference_price_status_clearing_price_parameters, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status_clearing_price_parameters.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Trade At Reference Price Status Message
eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status = {}

eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status.node = omi_eurex_t7_rdi_fast_v5_0.fields.trade_at_reference_price_status
eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status.presence = {
  [2] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_msg_seq_num,
}

-- Dissect Fields: Trade At Reference Price Status Message
eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.msg_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v5_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Market Segment Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v5_0.market_segment_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|15:MarketSegmentID")

  -- Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v5_0.security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.security_type_constant_7.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Clearing Price Parameters: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.no_clearing_price_parameters.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Clearing Price Parameters: No Clearing Price Parameters entries
  local count = value or 0
  for trade_at_reference_price_status_clearing_price_parameters_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status_clearing_price_parameters.dissect(buffer, index, packet, parent, presence_map, base, state, trade_at_reference_price_status_clearing_price_parameters_index)
  end

  return index
end

-- Dissect: Trade At Reference Price Status Message
eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Total Return Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v5_0.total_return_futures_status_clearing_price_parameters = {}

-- Dissect Fields: Total Return Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v5_0.total_return_futures_status_clearing_price_parameters.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Business Day Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.business_day_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Annual Calendar Days: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.annual_calendar_days.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|18:AnnualCalendarDays")

  -- Remaining Calendar Days: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.remaining_calendar_days.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|21:RemainingCalendarDays")

  -- Overnight Interest Rate: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.overnight_interest_rate.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, { "6:global|0:|21:OvernightInterestRate|E", "6:global|0:|21:OvernightInterestRate|M" })

  -- Current Payment Parameter: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.current_payment_parameter.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|23:CurrentPaymentParameter|E", "6:global|0:|23:CurrentPaymentParameter|M" })

  -- Accrued Payment Parameter: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.accrued_payment_parameter.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|23:AccruedPaymentParameter|E", "6:global|0:|23:AccruedPaymentParameter|M" })

  -- Related Index Value: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.related_index_value.dissect(buffer, index, packet, parent, { presence_map[base + 6], false }, state, { "6:global|0:|17:RelatedIndexValue|E", "6:global|0:|17:RelatedIndexValue|M" })

  -- Current Collection Parameter: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.current_collection_parameter.dissect(buffer, index, packet, parent, { presence_map[base + 7], false }, state, { "6:global|0:|26:CurrentCollectionParameter|E", "6:global|0:|26:CurrentCollectionParameter|M" })

  -- Accrued Collection Parameter: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.accrued_collection_parameter.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, { "6:global|0:|26:AccruedCollectionParameter|E", "6:global|0:|26:AccruedCollectionParameter|M" })

  -- Related Close Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.related_close_price.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, { "6:global|0:|17:RelatedClosePrice|E", "6:global|0:|17:RelatedClosePrice|M" })

  return index
end

-- Dissect: Total Return Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v5_0.total_return_futures_status_clearing_price_parameters.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.total_return_futures_status_clearing_price_parameters, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.total_return_futures_status_clearing_price_parameters.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Total Return Futures Status Message
eurex_t7_rdi_fast_v5_0.total_return_futures_status = {}

eurex_t7_rdi_fast_v5_0.total_return_futures_status.node = omi_eurex_t7_rdi_fast_v5_0.fields.total_return_futures_status
eurex_t7_rdi_fast_v5_0.total_return_futures_status.presence = {
  [2] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_msg_seq_num,
  [3] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_prior_settl_price,
  [4] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_settl_price,
}

-- Dissect Fields: Total Return Futures Status Message
eurex_t7_rdi_fast_v5_0.total_return_futures_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.msg_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v5_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Market Segment Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v5_0.market_segment_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|15:MarketSegmentID")

  -- Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v5_0.security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.security_type_constant_4.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Prior Settl Price: decimal, Copy
  index, value = eurex_t7_rdi_fast_v5_0.prior_settl_price_copy_required.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, { "6:global|0:|15:PriorSettlPrice|E", "6:global|0:|15:PriorSettlPrice|M" })

  -- Settl Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.settl_price.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|10:SettlPrice|E", "6:global|0:|10:SettlPrice|M" })

  -- No Clearing Price Parameters: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.no_clearing_price_parameters.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Clearing Price Parameters: No Clearing Price Parameters entries
  local count = value or 0
  for total_return_futures_status_clearing_price_parameters_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.total_return_futures_status_clearing_price_parameters.dissect(buffer, index, packet, parent, presence_map, base, state, total_return_futures_status_clearing_price_parameters_index)
  end

  return index
end

-- Dissect: Total Return Futures Status Message
eurex_t7_rdi_fast_v5_0.total_return_futures_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v5_0.total_return_futures_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Variance Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v5_0.variance_futures_status_clearing_price_parameters = {}

-- Dissect Fields: Variance Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v5_0.variance_futures_status_clearing_price_parameters.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Business Day Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.business_day_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Clearing Price Offset: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.clearing_price_offset.dissect(buffer, index, packet, parent, { presence_map[base + 1], false }, state, { "6:global|0:|19:ClearingPriceOffset|E", "6:global|0:|19:ClearingPriceOffset|M" })

  -- Vega Multiplier: uInt64, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.vega_multiplier.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|14:VegaMultiplier")

  -- Annual Trading Business Days: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.annual_trading_business_days.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|25:AnnualTradingBusinessDays")

  -- Total Trading Business Days: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.total_trading_business_days.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|24:TotalTradingBusinessDays")

  -- Trading Business Days: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.trading_business_days.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|19:TradingBusinessDays")

  -- Standard Variance: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.standard_variance.dissect(buffer, index, packet, parent, { presence_map[base + 6], false }, state, { "6:global|0:|16:StandardVariance|E", "6:global|0:|16:StandardVariance|M" })

  -- Related Close Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.related_close_price.dissect(buffer, index, packet, parent, { presence_map[base + 7], false }, state, { "6:global|0:|17:RelatedClosePrice|E", "6:global|0:|17:RelatedClosePrice|M" })

  -- Realized Variance: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.realized_variance.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, { "6:global|0:|16:RealizedVariance|E", "6:global|0:|16:RealizedVariance|M" })

  -- Risk Free Rate: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.risk_free_rate.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, { "6:global|0:|12:RiskFreeRate|E", "6:global|0:|12:RiskFreeRate|M" })

  -- Discount Factor: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.discount_factor.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, { "6:global|0:|14:DiscountFactor|E", "6:global|0:|14:DiscountFactor|M" })

  -- Overnight Interest Rate: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.overnight_interest_rate.dissect(buffer, index, packet, parent, { presence_map[base + 11], false }, state, { "6:global|0:|21:OvernightInterestRate|E", "6:global|0:|21:OvernightInterestRate|M" })

  -- Accumulated Return Modified Variation Margin: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.accumulated_return_modified_variation_margin.dissect(buffer, index, packet, parent, { presence_map[base + 12], false }, state, { "6:global|0:|40:AccumulatedReturnModifiedVariationMargin|E", "6:global|0:|40:AccumulatedReturnModifiedVariationMargin|M" })

  -- Volatility: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.volatility.dissect(buffer, index, packet, parent, { presence_map[base + 13], false }, state, { "6:global|0:|10:Volatility|E", "6:global|0:|10:Volatility|M" })

  -- Clearing Settl Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.clearing_settl_price.dissect(buffer, index, packet, parent, { presence_map[base + 14], false }, state, { "6:global|0:|18:ClearingSettlPrice|E", "6:global|0:|18:ClearingSettlPrice|M" })

  -- Calculation Method: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v5_0.calculation_method.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  return index
end

-- Dissect: Variance Futures Status Clearing Price Parameters
eurex_t7_rdi_fast_v5_0.variance_futures_status_clearing_price_parameters.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.variance_futures_status_clearing_price_parameters, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.variance_futures_status_clearing_price_parameters.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Variance Futures Status Message
eurex_t7_rdi_fast_v5_0.variance_futures_status = {}

eurex_t7_rdi_fast_v5_0.variance_futures_status.node = omi_eurex_t7_rdi_fast_v5_0.fields.variance_futures_status
eurex_t7_rdi_fast_v5_0.variance_futures_status.presence = {
  [2] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_msg_seq_num,
}

-- Dissect Fields: Variance Futures Status Message
eurex_t7_rdi_fast_v5_0.variance_futures_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.msg_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v5_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Market Segment Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v5_0.market_segment_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|15:MarketSegmentID")

  -- Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v5_0.security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.security_type_constant_3.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Clearing Price Parameters: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.no_clearing_price_parameters.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Clearing Price Parameters: No Clearing Price Parameters entries
  local count = value or 0
  for variance_futures_status_clearing_price_parameters_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.variance_futures_status_clearing_price_parameters.dissect(buffer, index, packet, parent, presence_map, base, state, variance_futures_status_clearing_price_parameters_index)
  end

  return index
end

-- Dissect: Variance Futures Status Message
eurex_t7_rdi_fast_v5_0.variance_futures_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v5_0.variance_futures_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trading Session Rules
eurex_t7_rdi_fast_v5_0.trading_session_rules = {}

-- Dissect Fields: Trading Session Rules
eurex_t7_rdi_fast_v5_0.trading_session_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trading Session Id: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.trading_session_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.trading_session_sub_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|19:TradingSessionSubID")

  return index
end

-- Dissect: Trading Session Rules
eurex_t7_rdi_fast_v5_0.trading_session_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.trading_session_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.trading_session_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Incremental Price Range Rules
eurex_t7_rdi_fast_v5_0.instrument_incremental_price_range_rules = {}

-- Dissect Fields: Instrument Incremental Price Range Rules
eurex_t7_rdi_fast_v5_0.instrument_incremental_price_range_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Price Range Rule Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.price_range_rule_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|16:PriceRangeRuleID")

  return index
end

-- Dissect: Instrument Incremental Price Range Rules
eurex_t7_rdi_fast_v5_0.instrument_incremental_price_range_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_incremental_price_range_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrument_incremental_price_range_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Incremental Quote Size Rules
eurex_t7_rdi_fast_v5_0.instrument_incremental_quote_size_rules = {}

-- Dissect Fields: Instrument Incremental Quote Size Rules
eurex_t7_rdi_fast_v5_0.instrument_incremental_quote_size_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Min Bid Size: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.min_bid_size.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|10:MinBidSize")

  -- Min Offer Size: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.min_offer_size.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:MinOfferSize")

  return index
end

-- Dissect: Instrument Incremental Quote Size Rules
eurex_t7_rdi_fast_v5_0.instrument_incremental_quote_size_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_incremental_quote_size_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrument_incremental_quote_size_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Segment Grp
eurex_t7_rdi_fast_v5_0.market_segment_grp = {}

-- Dissect Fields: Market Segment Grp
eurex_t7_rdi_fast_v5_0.market_segment_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:MarketSegmentID")

  -- Implied Market Indicator: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.implied_market_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|22:ImpliedMarketIndicator")

  -- Multileg Model: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.multileg_model.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|13:MultilegModel")

  -- Price Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.price_type.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|9:PriceType")

  -- Post Trade Anonymity: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.post_trade_anonymity.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|18:PostTradeAnonymity")

  -- Settl Business Days: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v5_0.settl_business_days.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- No Quote Size Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_quote_size_rules_constant.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Quote Size Rules: No Quote Size Rules entries
  local count = value or 0
  for instrument_incremental_quote_size_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.instrument_incremental_quote_size_rules.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_incremental_quote_size_rules_index)
  end

  -- No Price Range Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_price_range_rules_constant.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Range Rules: No Price Range Rules entries
  local count = value or 0
  for instrument_incremental_price_range_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.instrument_incremental_price_range_rules.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_incremental_price_range_rules_index)
  end

  -- No Trading Session Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_trading_session_rules.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Trading Session Rules: No Trading Session Rules entries
  local count = value or 0
  for trading_session_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.trading_session_rules.dissect(buffer, index, packet, parent, presence_map, base, state, trading_session_rules_index)
  end

  return index
end

-- Dissect: Market Segment Grp
eurex_t7_rdi_fast_v5_0.market_segment_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.market_segment_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Events
eurex_t7_rdi_fast_v5_0.events = {}

-- Dissect Fields: Events
eurex_t7_rdi_fast_v5_0.events.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Event Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.event_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Event Date: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.event_date.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|9:EventDate")

  return index
end

-- Dissect: Events
eurex_t7_rdi_fast_v5_0.events.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.events, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.events.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Attributes
eurex_t7_rdi_fast_v5_0.instrument_attributes = {}

-- Dissect Fields: Instrument Attributes
eurex_t7_rdi_fast_v5_0.instrument_attributes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instr Attrib Type: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.instr_attrib_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:InstrAttribType")

  -- Instr Attrib Value: string, Copy
  index, value = eurex_t7_rdi_fast_v5_0.instr_attrib_value.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|16:InstrAttribValue")

  return index
end

-- Dissect: Instrument Attributes
eurex_t7_rdi_fast_v5_0.instrument_attributes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_attributes, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrument_attributes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Parties
eurex_t7_rdi_fast_v5_0.instrument_parties = {}

-- Dissect Fields: Instrument Parties
eurex_t7_rdi_fast_v5_0.instrument_parties.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instrument Party Id: string, Copy
  index, value = eurex_t7_rdi_fast_v5_0.instrument_party_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|17:InstrumentPartyID")

  -- Instrument Party Id Source: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.instrument_party_id_source.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|23:InstrumentPartyIDSource")

  -- Instrument Party Role: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.instrument_party_role.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|19:InstrumentPartyRole")

  -- Instrument Party Role Qualifier: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.instrument_party_role_qualifier.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|28:InstrumentPartyRoleQualifier")

  return index
end

-- Dissect: Instrument Parties
eurex_t7_rdi_fast_v5_0.instrument_parties.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_parties, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrument_parties.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Cash Descriptor Group
eurex_t7_rdi_fast_v5_0.cash_descriptor_group = {}

-- Dissect Fields: Cash Descriptor Group
eurex_t7_rdi_fast_v5_0.cash_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Ref Tick Table Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.ref_tick_table_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|14:RefTickTableID")

  -- Currency: string, Default
  index, value = eurex_t7_rdi_fast_v5_0.currency.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Settl Currency: string, Default
  index, value = eurex_t7_rdi_fast_v5_0.settl_currency.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- No Instrument Parties: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_instrument_parties.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Parties: No Instrument Parties entries
  local count = value or 0
  for instrument_parties_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.instrument_parties.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_parties_index)
  end

  -- No Instr Attrib: uInt32, sent
  index, value = eurex_t7_rdi_fast_v5_0.no_instr_attrib.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Attributes: No Instr Attrib entries
  local count = value or 0
  for instrument_attributes_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.instrument_attributes.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_attributes_index)
  end

  return index
end

-- Dissect: Cash Descriptor Group
eurex_t7_rdi_fast_v5_0.cash_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.cash_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.cash_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrmt Leg Grp
eurex_t7_rdi_fast_v5_0.instrmt_leg_grp = {}

-- Dissect Fields: Instrmt Leg Grp
eurex_t7_rdi_fast_v5_0.instrmt_leg_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.leg_symbol.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:LegSymbol")

  -- Leg Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v5_0.leg_security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:LegSecurityID")

  -- Leg Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.leg_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.leg_security_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Leg Side: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.leg_side.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Leg Ratio Qty: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.leg_ratio_qty.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Leg Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.leg_price.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|8:LegPrice|E", "6:global|0:|8:LegPrice|M" })

  return index
end

-- Dissect: Instrmt Leg Grp
eurex_t7_rdi_fast_v5_0.instrmt_leg_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrmt_leg_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrmt_leg_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.complex_instrument_descriptor_group = {}

-- Dissect Fields: Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.complex_instrument_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Legs: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.no_legs.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|6:NoLegs")

  -- Instrmt Leg Grp: No Legs entries
  local count = value or 0
  for instrmt_leg_grp_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.instrmt_leg_grp.dissect(buffer, index, packet, parent, presence_map, base, state, instrmt_leg_grp_index)
  end

  return index
end

-- Dissect: Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.complex_instrument_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.complex_instrument_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.complex_instrument_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.simple_instrument_descriptor_group = {}

-- Dissect Fields: Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.simple_instrument_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Maturity Date: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.maturity_date.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|12:MaturityDate")

  -- Maturity Month Year: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.maturity_month_year.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|17:MaturityMonthYear")

  -- Strike Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|11:StrikePrice|E", "6:global|0:|11:StrikePrice|M" })

  -- Strike Price Precision: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.strike_price_precision.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|20:StrikePricePrecision")

  -- Contract Multiplier: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.contract_multiplier.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|18:ContractMultiplier|E", "6:global|0:|18:ContractMultiplier|M" })

  -- Put Or Call: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v5_0.put_or_call.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Opt Attribute: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.opt_attribute.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|12:OptAttribute")

  -- Exercise Style: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.exercise_style.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|13:ExerciseStyle")

  -- Orig Strike Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.orig_strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, { "6:global|0:|15:OrigStrikePrice|E", "6:global|0:|15:OrigStrikePrice|M" })

  -- Contract Generation Number: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.contract_generation_number.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|24:ContractGenerationNumber")

  -- Low Exercise Price Option Indicator: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v5_0.low_exercise_price_option_indicator.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Valuation Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.valuation_method.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "6:global|0:|15:ValuationMethod")

  -- Settl Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.settl_method.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|11:SettlMethod")

  -- Settl Sub Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.settl_sub_method.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "6:global|0:|14:SettlSubMethod")

  -- Prior Settl Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.prior_settl_price_copy_optional.dissect(buffer, index, packet, parent, { presence_map[base + 14], false }, state, { "6:global|0:|15:PriorSettlPrice|E", "6:global|0:|15:PriorSettlPrice|M" })

  -- Symbol: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.symbol.dissect(buffer, index, packet, parent, presence_map[base + 15], state, "6:global|0:|6:Symbol")

  return index
end

-- Dissect: Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.simple_instrument_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.simple_instrument_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.simple_instrument_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Incremental Derivatives Descriptor Group
eurex_t7_rdi_fast_v5_0.instrument_incremental_derivatives_descriptor_group = {}

-- Dissect Fields: Instrument Incremental Derivatives Descriptor Group
eurex_t7_rdi_fast_v5_0.instrument_incremental_derivatives_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Cfi Code: string, Copy
  index, value = eurex_t7_rdi_fast_v5_0.cfi_code.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|7:CFICode")

  -- Security Sub Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.security_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|15:SecuritySubType")

  -- Simple Instrument Descriptor Group: group, optional
  if presence_map[base + 2] then
    index = eurex_t7_rdi_fast_v5_0.simple_instrument_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Complex Instrument Descriptor Group: group, optional
  if presence_map[base + 3] then
    index = eurex_t7_rdi_fast_v5_0.complex_instrument_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Transact Time: timestamp, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.transact_time_delta_optional.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  return index
end

-- Dissect: Instrument Incremental Derivatives Descriptor Group
eurex_t7_rdi_fast_v5_0.instrument_incremental_derivatives_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_incremental_derivatives_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrument_incremental_derivatives_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt
eurex_t7_rdi_fast_v5_0.security_alt = {}

-- Dissect Fields: Security Alt
eurex_t7_rdi_fast_v5_0.security_alt.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt Id: string, Delta
  index, value = eurex_t7_rdi_fast_v5_0.security_alt_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:SecurityAltID")

  -- Security Alt Id Source: string, Copy
  index, value = eurex_t7_rdi_fast_v5_0.security_alt_id_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|19:SecurityAltIDSource")

  return index
end

-- Dissect: Security Alt
eurex_t7_rdi_fast_v5_0.security_alt.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_alt, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.security_alt.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Incremental Message
eurex_t7_rdi_fast_v5_0.instrument_incremental = {}

eurex_t7_rdi_fast_v5_0.instrument_incremental.node = omi_eurex_t7_rdi_fast_v5_0.fields.instrument_incremental
eurex_t7_rdi_fast_v5_0.instrument_incremental.presence = {
  [2] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_msg_seq_num,
  [3] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_security_type,
  [4] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_security_status,
  [5] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_security_exchange,
  [6] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_product_complex,
  [7] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_derivatives_descriptor_group,
  [8] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_cash_descriptor_group,
  [9] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_instrument_price_precision,
  [10] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_min_price_increment,
  [11] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_min_price_increment_clearing,
  [12] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_min_price_increment_amount,
}

-- Dissect Fields: Instrument Incremental Message
eurex_t7_rdi_fast_v5_0.instrument_incremental.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.msg_type_constant_bp.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v5_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Security Update Action: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.security_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v5_0.security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Security Alt Id: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt: No Security Alt Id entries
  local count = value or 0
  for security_alt_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.security_alt.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_index)
  end

  -- Security Type: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.security_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SecurityType")

  -- Security Status: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.security_status.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|14:SecurityStatus")

  -- Security Desc: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.security_desc.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:SecurityDesc")

  -- Security Exchange: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.security_exchange.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|16:SecurityExchange")

  -- Product Complex: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.product_complex.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|14:ProductComplex")

  -- Derivatives Descriptor Group: group, optional
  if presence_map[base + 5] then
    index = eurex_t7_rdi_fast_v5_0.instrument_incremental_derivatives_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Cash Descriptor Group: group, optional
  if presence_map[base + 6] then
    index = eurex_t7_rdi_fast_v5_0.cash_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Events: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_events.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Events: No Events entries
  local count = value or 0
  for events_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.events.dissect(buffer, index, packet, parent, presence_map, base, state, events_index)
  end

  -- Instrument Price Precision: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.instrument_price_precision.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|24:InstrumentPricePrecision")

  -- Min Price Increment: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.min_price_increment.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, { "6:global|0:|17:MinPriceIncrement|E", "6:global|0:|17:MinPriceIncrement|M" })

  -- Min Price Increment Clearing: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.min_price_increment_clearing.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, { "6:global|0:|25:MinPriceIncrementClearing|E", "6:global|0:|25:MinPriceIncrementClearing|M" })

  -- Min Price Increment Amount: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.min_price_increment_amount.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, { "6:global|0:|23:MinPriceIncrementAmount|E", "6:global|0:|23:MinPriceIncrementAmount|M" })

  -- No Market Segments: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.no_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Grp: No Market Segments entries
  local count = value or 0
  for market_segment_grp_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.market_segment_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_segment_grp_index)
  end

  return index
end

-- Dissect: Instrument Incremental Message
eurex_t7_rdi_fast_v5_0.instrument_incremental.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v5_0.instrument_incremental.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Trading Session Rules
eurex_t7_rdi_fast_v5_0.trading_session_rules = {}

-- Dissect Fields: Trading Session Rules
eurex_t7_rdi_fast_v5_0.trading_session_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Trading Session Id: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.trading_session_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.trading_session_sub_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|19:TradingSessionSubID")

  return index
end

-- Dissect: Trading Session Rules
eurex_t7_rdi_fast_v5_0.trading_session_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.trading_session_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.trading_session_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Snapshot Price Range Rules
eurex_t7_rdi_fast_v5_0.instrument_snapshot_price_range_rules = {}

-- Dissect Fields: Instrument Snapshot Price Range Rules
eurex_t7_rdi_fast_v5_0.instrument_snapshot_price_range_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Price Range Rule Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.price_range_rule_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|16:PriceRangeRuleID")

  return index
end

-- Dissect: Instrument Snapshot Price Range Rules
eurex_t7_rdi_fast_v5_0.instrument_snapshot_price_range_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_snapshot_price_range_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrument_snapshot_price_range_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Snapshot Quote Size Rules
eurex_t7_rdi_fast_v5_0.instrument_snapshot_quote_size_rules = {}

-- Dissect Fields: Instrument Snapshot Quote Size Rules
eurex_t7_rdi_fast_v5_0.instrument_snapshot_quote_size_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Min Bid Size: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.min_bid_size.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|10:MinBidSize")

  -- Min Offer Size: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.min_offer_size.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:MinOfferSize")

  return index
end

-- Dissect: Instrument Snapshot Quote Size Rules
eurex_t7_rdi_fast_v5_0.instrument_snapshot_quote_size_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_snapshot_quote_size_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrument_snapshot_quote_size_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Market Segment Grp
eurex_t7_rdi_fast_v5_0.market_segment_grp = {}

-- Dissect Fields: Market Segment Grp
eurex_t7_rdi_fast_v5_0.market_segment_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Market Segment Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.market_segment_id_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:MarketSegmentID")

  -- Implied Market Indicator: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.implied_market_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|22:ImpliedMarketIndicator")

  -- Multileg Model: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.multileg_model.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|13:MultilegModel")

  -- Price Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.price_type.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|9:PriceType")

  -- Post Trade Anonymity: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.post_trade_anonymity.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|18:PostTradeAnonymity")

  -- Settl Business Days: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v5_0.settl_business_days.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- No Quote Size Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_quote_size_rules_constant.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Quote Size Rules: No Quote Size Rules entries
  local count = value or 0
  for instrument_snapshot_quote_size_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.instrument_snapshot_quote_size_rules.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_snapshot_quote_size_rules_index)
  end

  -- No Price Range Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_price_range_rules_constant.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Range Rules: No Price Range Rules entries
  local count = value or 0
  for instrument_snapshot_price_range_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.instrument_snapshot_price_range_rules.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_snapshot_price_range_rules_index)
  end

  -- No Trading Session Rules: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_trading_session_rules.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Trading Session Rules: No Trading Session Rules entries
  local count = value or 0
  for trading_session_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.trading_session_rules.dissect(buffer, index, packet, parent, presence_map, base, state, trading_session_rules_index)
  end

  return index
end

-- Dissect: Market Segment Grp
eurex_t7_rdi_fast_v5_0.market_segment_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.market_segment_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.market_segment_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Events
eurex_t7_rdi_fast_v5_0.events = {}

-- Dissect Fields: Events
eurex_t7_rdi_fast_v5_0.events.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Event Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.event_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Event Date: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.event_date.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|9:EventDate")

  return index
end

-- Dissect: Events
eurex_t7_rdi_fast_v5_0.events.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.events, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.events.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Attributes
eurex_t7_rdi_fast_v5_0.instrument_attributes = {}

-- Dissect Fields: Instrument Attributes
eurex_t7_rdi_fast_v5_0.instrument_attributes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instr Attrib Type: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.instr_attrib_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|15:InstrAttribType")

  -- Instr Attrib Value: string, Copy
  index, value = eurex_t7_rdi_fast_v5_0.instr_attrib_value.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|16:InstrAttribValue")

  return index
end

-- Dissect: Instrument Attributes
eurex_t7_rdi_fast_v5_0.instrument_attributes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_attributes, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrument_attributes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Parties
eurex_t7_rdi_fast_v5_0.instrument_parties = {}

-- Dissect Fields: Instrument Parties
eurex_t7_rdi_fast_v5_0.instrument_parties.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instrument Party Id: string, Copy
  index, value = eurex_t7_rdi_fast_v5_0.instrument_party_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|17:InstrumentPartyID")

  -- Instrument Party Id Source: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.instrument_party_id_source.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|23:InstrumentPartyIDSource")

  -- Instrument Party Role: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.instrument_party_role.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|19:InstrumentPartyRole")

  -- Instrument Party Role Qualifier: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.instrument_party_role_qualifier.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|28:InstrumentPartyRoleQualifier")

  return index
end

-- Dissect: Instrument Parties
eurex_t7_rdi_fast_v5_0.instrument_parties.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_parties, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrument_parties.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Cash Descriptor Group
eurex_t7_rdi_fast_v5_0.cash_descriptor_group = {}

-- Dissect Fields: Cash Descriptor Group
eurex_t7_rdi_fast_v5_0.cash_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Ref Tick Table Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.ref_tick_table_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|14:RefTickTableID")

  -- Currency: string, Default
  index, value = eurex_t7_rdi_fast_v5_0.currency.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Settl Currency: string, Default
  index, value = eurex_t7_rdi_fast_v5_0.settl_currency.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- No Instrument Parties: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_instrument_parties.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Parties: No Instrument Parties entries
  local count = value or 0
  for instrument_parties_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.instrument_parties.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_parties_index)
  end

  -- No Instr Attrib: uInt32, sent
  index, value = eurex_t7_rdi_fast_v5_0.no_instr_attrib.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Attributes: No Instr Attrib entries
  local count = value or 0
  for instrument_attributes_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.instrument_attributes.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_attributes_index)
  end

  return index
end

-- Dissect: Cash Descriptor Group
eurex_t7_rdi_fast_v5_0.cash_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.cash_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.cash_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrmt Leg Grp
eurex_t7_rdi_fast_v5_0.instrmt_leg_grp = {}

-- Dissect Fields: Instrmt Leg Grp
eurex_t7_rdi_fast_v5_0.instrmt_leg_grp.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.leg_symbol.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:LegSymbol")

  -- Leg Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v5_0.leg_security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:LegSecurityID")

  -- Leg Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.leg_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.leg_security_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Leg Side: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.leg_side.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Leg Ratio Qty: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.leg_ratio_qty.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Leg Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.leg_price.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|8:LegPrice|E", "6:global|0:|8:LegPrice|M" })

  return index
end

-- Dissect: Instrmt Leg Grp
eurex_t7_rdi_fast_v5_0.instrmt_leg_grp.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrmt_leg_grp, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrmt_leg_grp.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.complex_instrument_descriptor_group = {}

-- Dissect Fields: Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.complex_instrument_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Legs: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.no_legs.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|6:NoLegs")

  -- Instrmt Leg Grp: No Legs entries
  local count = value or 0
  for instrmt_leg_grp_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.instrmt_leg_grp.dissect(buffer, index, packet, parent, presence_map, base, state, instrmt_leg_grp_index)
  end

  return index
end

-- Dissect: Complex Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.complex_instrument_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.complex_instrument_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.complex_instrument_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.simple_instrument_descriptor_group = {}

-- Dissect Fields: Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.simple_instrument_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Maturity Date: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.maturity_date.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|12:MaturityDate")

  -- Maturity Month Year: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.maturity_month_year.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|17:MaturityMonthYear")

  -- Strike Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|11:StrikePrice|E", "6:global|0:|11:StrikePrice|M" })

  -- Strike Price Precision: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.strike_price_precision.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|20:StrikePricePrecision")

  -- Contract Multiplier: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.contract_multiplier.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|18:ContractMultiplier|E", "6:global|0:|18:ContractMultiplier|M" })

  -- Put Or Call: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v5_0.put_or_call.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Opt Attribute: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.opt_attribute.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "6:global|0:|12:OptAttribute")

  -- Exercise Style: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.exercise_style.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|13:ExerciseStyle")

  -- Orig Strike Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.orig_strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, { "6:global|0:|15:OrigStrikePrice|E", "6:global|0:|15:OrigStrikePrice|M" })

  -- Contract Generation Number: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.contract_generation_number.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "6:global|0:|24:ContractGenerationNumber")

  -- Low Exercise Price Option Indicator: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v5_0.low_exercise_price_option_indicator.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Valuation Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.valuation_method.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "6:global|0:|15:ValuationMethod")

  -- Settl Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.settl_method.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|11:SettlMethod")

  -- Settl Sub Method: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.settl_sub_method.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "6:global|0:|14:SettlSubMethod")

  -- Prior Settl Price: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.prior_settl_price_copy_optional.dissect(buffer, index, packet, parent, { presence_map[base + 14], false }, state, { "6:global|0:|15:PriorSettlPrice|E", "6:global|0:|15:PriorSettlPrice|M" })

  -- Symbol: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.symbol.dissect(buffer, index, packet, parent, presence_map[base + 15], state, "6:global|0:|6:Symbol")

  return index
end

-- Dissect: Simple Instrument Descriptor Group
eurex_t7_rdi_fast_v5_0.simple_instrument_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.simple_instrument_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.simple_instrument_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v5_0.instrument_snapshot_derivatives_descriptor_group = {}

-- Dissect Fields: Instrument Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v5_0.instrument_snapshot_derivatives_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Cfi Code: string, Copy
  index, value = eurex_t7_rdi_fast_v5_0.cfi_code.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|7:CFICode")

  -- Security Sub Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.security_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|15:SecuritySubType")

  -- Simple Instrument Descriptor Group: group, optional
  if presence_map[base + 2] then
    index = eurex_t7_rdi_fast_v5_0.simple_instrument_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Complex Instrument Descriptor Group: group, optional
  if presence_map[base + 3] then
    index = eurex_t7_rdi_fast_v5_0.complex_instrument_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Transact Time: timestamp, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.transact_time_delta_optional.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:TransactTime")

  return index
end

-- Dissect: Instrument Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v5_0.instrument_snapshot_derivatives_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_snapshot_derivatives_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrument_snapshot_derivatives_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt
eurex_t7_rdi_fast_v5_0.security_alt = {}

-- Dissect Fields: Security Alt
eurex_t7_rdi_fast_v5_0.security_alt.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt Id: string, Delta
  index, value = eurex_t7_rdi_fast_v5_0.security_alt_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:SecurityAltID")

  -- Security Alt Id Source: string, Copy
  index, value = eurex_t7_rdi_fast_v5_0.security_alt_id_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|19:SecurityAltIDSource")

  return index
end

-- Dissect: Security Alt
eurex_t7_rdi_fast_v5_0.security_alt.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.security_alt, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.security_alt.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Snapshot Message
eurex_t7_rdi_fast_v5_0.instrument_snapshot = {}

eurex_t7_rdi_fast_v5_0.instrument_snapshot.node = omi_eurex_t7_rdi_fast_v5_0.fields.instrument_snapshot
eurex_t7_rdi_fast_v5_0.instrument_snapshot.presence = {
  [2] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_msg_seq_num,
  [3] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_security_type,
  [4] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_security_status,
  [5] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_security_exchange,
  [6] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_product_complex,
  [7] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_derivatives_descriptor_group,
  [8] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_cash_descriptor_group,
  [9] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_instrument_price_precision,
  [10] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_min_price_increment,
  [11] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_min_price_increment_clearing,
  [12] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_min_price_increment_amount,
}

-- Dissect Fields: Instrument Snapshot Message
eurex_t7_rdi_fast_v5_0.instrument_snapshot.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.msg_type_constant_d.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v5_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Security Id: int64, Delta
  index, value = eurex_t7_rdi_fast_v5_0.security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Security Alt Id: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt: No Security Alt Id entries
  local count = value or 0
  for security_alt_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.security_alt.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_index)
  end

  -- Security Type: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.security_type_copy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:SecurityType")

  -- Security Status: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.security_status.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|14:SecurityStatus")

  -- Security Desc: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.security_desc.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|12:SecurityDesc")

  -- Security Exchange: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.security_exchange.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|16:SecurityExchange")

  -- Product Complex: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.product_complex.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|14:ProductComplex")

  -- Derivatives Descriptor Group: group, optional
  if presence_map[base + 5] then
    index = eurex_t7_rdi_fast_v5_0.instrument_snapshot_derivatives_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Cash Descriptor Group: group, optional
  if presence_map[base + 6] then
    index = eurex_t7_rdi_fast_v5_0.cash_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Events: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_events.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Events: No Events entries
  local count = value or 0
  for events_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.events.dissect(buffer, index, packet, parent, presence_map, base, state, events_index)
  end

  -- Instrument Price Precision: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.instrument_price_precision.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "6:global|0:|24:InstrumentPricePrecision")

  -- Min Price Increment: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.min_price_increment.dissect(buffer, index, packet, parent, { presence_map[base + 8], false }, state, { "6:global|0:|17:MinPriceIncrement|E", "6:global|0:|17:MinPriceIncrement|M" })

  -- Min Price Increment Clearing: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.min_price_increment_clearing.dissect(buffer, index, packet, parent, { presence_map[base + 9], false }, state, { "6:global|0:|25:MinPriceIncrementClearing|E", "6:global|0:|25:MinPriceIncrementClearing|M" })

  -- Min Price Increment Amount: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.min_price_increment_amount.dissect(buffer, index, packet, parent, { presence_map[base + 10], false }, state, { "6:global|0:|23:MinPriceIncrementAmount|E", "6:global|0:|23:MinPriceIncrementAmount|M" })

  -- No Market Segments: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.no_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment Grp: No Market Segments entries
  local count = value or 0
  for market_segment_grp_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.market_segment_grp.dissect(buffer, index, packet, parent, presence_map, base, state, market_segment_grp_index)
  end

  return index
end

-- Dissect: Instrument Snapshot Message
eurex_t7_rdi_fast_v5_0.instrument_snapshot.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v5_0.instrument_snapshot.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Feeds
eurex_t7_rdi_fast_v5_0.feeds = {}

-- Dissect Fields: Feeds
eurex_t7_rdi_fast_v5_0.feeds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Feed Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.md_feed_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Book Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.md_book_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Market Depth: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.market_depth.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|11:MarketDepth")

  -- Market Depth Time Interval: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.market_depth_time_interval.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|23:MarketDepthTimeInterval")

  -- Md Recovery Time Interval: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.md_recovery_time_interval.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|22:MDRecoveryTimeInterval")

  -- Primary Service Location Id: string, Delta
  index, value = eurex_t7_rdi_fast_v5_0.primary_service_location_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|24:PrimaryServiceLocationID")

  -- Primary Service Location Sub Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v5_0.primary_service_location_sub_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|27:PrimaryServiceLocationSubID")

  -- Secondary Service Location Id: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.secondary_service_location_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|26:SecondaryServiceLocationID")

  -- Secondary Service Location Sub Id: uInt32, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.secondary_service_location_sub_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|29:SecondaryServiceLocationSubID")

  return index
end

-- Dissect: Feeds
eurex_t7_rdi_fast_v5_0.feeds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.feeds, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.feeds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Match Rules
eurex_t7_rdi_fast_v5_0.match_rules = {}

-- Dissect Fields: Match Rules
eurex_t7_rdi_fast_v5_0.match_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Match Rule Product Complex: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.match_rule_product_complex.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Match Algorithm: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.match_algorithm.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Match Type: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.match_type.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|9:MatchType")

  return index
end

-- Dissect: Match Rules
eurex_t7_rdi_fast_v5_0.match_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.match_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.match_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Auction Type Rules
eurex_t7_rdi_fast_v5_0.auction_type_rules = {}

-- Dissect Fields: Auction Type Rules
eurex_t7_rdi_fast_v5_0.auction_type_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Auction Type: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.auction_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Closed Book Indicator: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.closed_book_indicator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|19:ClosedBookIndicator")

  -- Market Imbalance Indicator: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.market_imbalance_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|24:MarketImbalanceIndicator")

  return index
end

-- Dissect: Auction Type Rules
eurex_t7_rdi_fast_v5_0.auction_type_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.auction_type_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.auction_type_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Base Trading Rules Cash
eurex_t7_rdi_fast_v5_0.base_trading_rules_cash = {}

-- Dissect Fields: Base Trading Rules Cash
eurex_t7_rdi_fast_v5_0.base_trading_rules_cash.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Auction Type Rules: uInt32, Constant
  index, value = eurex_t7_rdi_fast_v5_0.no_auction_type_rules.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Auction Type Rules: No Auction Type Rules entries
  local count = value or 0
  for auction_type_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.auction_type_rules.dissect(buffer, index, packet, parent, presence_map, base, state, auction_type_rules_index)
  end

  return index
end

-- Dissect: Base Trading Rules Cash
eurex_t7_rdi_fast_v5_0.base_trading_rules_cash.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.base_trading_rules_cash, buffer(offset, 0))
  local index = offset

  index = eurex_t7_rdi_fast_v5_0.base_trading_rules_cash.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Flex Rules
eurex_t7_rdi_fast_v5_0.flex_rules = {}

-- Dissect Fields: Flex Rules
eurex_t7_rdi_fast_v5_0.flex_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Flex Product Eligibility Complex: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.flex_product_eligibility_complex.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|29:FlexProductEligibilityComplex")

  -- Flex Product Eligibility Indicator: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.flex_product_eligibility_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  return index
end

-- Dissect: Flex Rules
eurex_t7_rdi_fast_v5_0.flex_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.flex_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.flex_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Product Snapshot Quote Size Rules
eurex_t7_rdi_fast_v5_0.product_snapshot_quote_size_rules = {}

-- Dissect Fields: Product Snapshot Quote Size Rules
eurex_t7_rdi_fast_v5_0.product_snapshot_quote_size_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Min Bid Size: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.min_bid_size.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|10:MinBidSize")

  -- Min Offer Size: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.min_offer_size.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|12:MinOfferSize")

  -- Fast Market Indicator: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.fast_market_indicator.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|19:FastMarketIndicator")

  return index
end

-- Dissect: Product Snapshot Quote Size Rules
eurex_t7_rdi_fast_v5_0.product_snapshot_quote_size_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.product_snapshot_quote_size_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.product_snapshot_quote_size_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Base Trading Rules Derivatives
eurex_t7_rdi_fast_v5_0.base_trading_rules_derivatives = {}

-- Dissect Fields: Base Trading Rules Derivatives
eurex_t7_rdi_fast_v5_0.base_trading_rules_derivatives.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Quote Size Rules: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.no_quote_size_rules_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Quote Size Rules: No Quote Size Rules entries
  local count = value or 0
  for product_snapshot_quote_size_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.product_snapshot_quote_size_rules.dissect(buffer, index, packet, parent, presence_map, base, state, product_snapshot_quote_size_rules_index)
  end

  -- No Flex Product Eligibilities: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.no_flex_product_eligibilities.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|26:NoFlexProductEligibilities")

  -- Flex Rules: No Flex Product Eligibilities entries
  local count = value or 0
  for flex_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.flex_rules.dissect(buffer, index, packet, parent, presence_map, base, state, flex_rules_index)
  end

  return index
end

-- Dissect: Base Trading Rules Derivatives
eurex_t7_rdi_fast_v5_0.base_trading_rules_derivatives.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.base_trading_rules_derivatives, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.base_trading_rules_derivatives.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Product Snapshot Price Range Rules
eurex_t7_rdi_fast_v5_0.product_snapshot_price_range_rules = {}

-- Dissect Fields: Product Snapshot Price Range Rules
eurex_t7_rdi_fast_v5_0.product_snapshot_price_range_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Price Range Rule Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.price_range_rule_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|16:PriceRangeRuleID")

  -- Price Range Product Complex: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.price_range_product_complex.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|24:PriceRangeProductComplex")

  -- Start Price Range: decimal, Default
  index, value = eurex_t7_rdi_fast_v5_0.start_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, nil)

  -- End Price Range: decimal, Copy
  index, value = eurex_t7_rdi_fast_v5_0.end_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, { "6:global|0:|13:EndPriceRange|E", "6:global|0:|13:EndPriceRange|M" })

  -- Price Range Value: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.price_range_value.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|15:PriceRangeValue|E", "6:global|0:|15:PriceRangeValue|M" })

  -- Price Range Percentage: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.price_range_percentage.dissect(buffer, index, packet, parent, { presence_map[base + 5], false }, state, { "6:global|0:|20:PriceRangePercentage|E", "6:global|0:|20:PriceRangePercentage|M" })

  return index
end

-- Dissect: Product Snapshot Price Range Rules
eurex_t7_rdi_fast_v5_0.product_snapshot_price_range_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.product_snapshot_price_range_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.product_snapshot_price_range_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Tick Rules
eurex_t7_rdi_fast_v5_0.tick_rules = {}

-- Dissect Fields: Tick Rules
eurex_t7_rdi_fast_v5_0.tick_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Tick Rule Id: uInt32, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.tick_rule_id.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|10:TickRuleID")

  -- Tick Rule Product Complex: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.tick_rule_product_complex.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Start Tick Price Range: decimal, Copy
  index, value = eurex_t7_rdi_fast_v5_0.start_tick_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|19:StartTickPriceRange|E", "6:global|0:|19:StartTickPriceRange|M" })

  -- End Tick Price Range: decimal, Copy
  index, value = eurex_t7_rdi_fast_v5_0.end_tick_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 3], false }, state, { "6:global|0:|17:EndTickPriceRange|E", "6:global|0:|17:EndTickPriceRange|M" })

  -- Tick Increment: decimal, Copy
  index, value = eurex_t7_rdi_fast_v5_0.tick_increment.dissect(buffer, index, packet, parent, { presence_map[base + 4], false }, state, { "6:global|0:|13:TickIncrement|E", "6:global|0:|13:TickIncrement|M" })

  return index
end

-- Dissect: Tick Rules
eurex_t7_rdi_fast_v5_0.tick_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.tick_rules, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.tick_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Base Trading Rules
eurex_t7_rdi_fast_v5_0.base_trading_rules = {}

-- Dissect Fields: Base Trading Rules
eurex_t7_rdi_fast_v5_0.base_trading_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- No Tick Rules: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.no_tick_rules.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|11:NoTickRules")

  -- Tick Rules: No Tick Rules entries
  local count = value or 0
  for tick_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.tick_rules.dissect(buffer, index, packet, parent, presence_map, base, state, tick_rules_index)
  end

  -- No Price Range Rules: uInt32, sent
  index, value = eurex_t7_rdi_fast_v5_0.no_price_range_rules_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Range Rules: No Price Range Rules entries
  local count = value or 0
  for product_snapshot_price_range_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.product_snapshot_price_range_rules.dissect(buffer, index, packet, parent, presence_map, base, state, product_snapshot_price_range_rules_index)
  end

  -- Quote Side Indicator: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.quote_side_indicator.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Fast Market Percentage: decimal, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.fast_market_percentage.dissect(buffer, index, packet, parent, { presence_map[base + 2], false }, state, { "6:global|0:|20:FastMarketPercentage|E", "6:global|0:|20:FastMarketPercentage|M" })

  return index
end

-- Dissect: Base Trading Rules
eurex_t7_rdi_fast_v5_0.base_trading_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.base_trading_rules, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.base_trading_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Related Market Segments
eurex_t7_rdi_fast_v5_0.related_market_segments = {}

-- Dissect Fields: Related Market Segments
eurex_t7_rdi_fast_v5_0.related_market_segments.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Related Market Segment Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v5_0.related_market_segment_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|22:RelatedMarketSegmentID")

  -- Market Segments Relationship: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.market_segments_relationship.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  return index
end

-- Dissect: Related Market Segments
eurex_t7_rdi_fast_v5_0.related_market_segments.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.related_market_segments, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.related_market_segments.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instrument Scopes
eurex_t7_rdi_fast_v5_0.instrument_scopes = {}

-- Dissect Fields: Instrument Scopes
eurex_t7_rdi_fast_v5_0.instrument_scopes.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instrument Scope Operator: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.instrument_scope_operator.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Instrument Scope Security Type: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.instrument_scope_security_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Instrument Scope Security Sub Type: uInt32, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.instrument_scope_security_sub_type.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|30:InstrumentScopeSecuritySubType")

  return index
end

-- Dissect: Instrument Scopes
eurex_t7_rdi_fast_v5_0.instrument_scopes.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.instrument_scopes, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.instrument_scopes.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Underlying Descriptor Group
eurex_t7_rdi_fast_v5_0.underlying_descriptor_group = {}

-- Dissect Fields: Underlying Descriptor Group
eurex_t7_rdi_fast_v5_0.underlying_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security Exchange: string, Copy, optional
  index, value = eurex_t7_rdi_fast_v5_0.underlying_security_exchange.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|26:UnderlyingSecurityExchange")

  -- Underlying Symbol: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.underlying_symbol.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|16:UnderlyingSymbol")

  -- Underlying Security Id: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.underlying_security_id.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|20:UnderlyingSecurityID")

  -- Underlying Security Id Source: string, Default, optional
  index, value = eurex_t7_rdi_fast_v5_0.underlying_security_id_source.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Underlying Prev Close Px: decimal, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.underlying_prev_close_px.dissect(buffer, index, packet, parent, { nil, false }, state, { "6:global|0:|21:UnderlyingPrevClosePx|E", "6:global|0:|21:UnderlyingPrevClosePx|M" })

  return index
end

-- Dissect: Underlying Descriptor Group
eurex_t7_rdi_fast_v5_0.underlying_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.underlying_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.underlying_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Product Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v5_0.product_snapshot_derivatives_descriptor_group = {}

-- Dissect Fields: Product Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v5_0.product_snapshot_derivatives_descriptor_group.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Currency: string, Default
  index, value = eurex_t7_rdi_fast_v5_0.currency.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Market Segment Desc: string, Delta
  index, value = eurex_t7_rdi_fast_v5_0.market_segment_desc.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|17:MarketSegmentDesc")

  -- Market Segment Symbol: string, Delta, optional
  index, value = eurex_t7_rdi_fast_v5_0.market_segment_symbol.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|19:MarketSegmentSymbol")

  -- Parent Mkt Segm Id: string, Copy
  index, value = eurex_t7_rdi_fast_v5_0.parent_mkt_segm_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|15:ParentMktSegmID")

  -- Us Firm Flag: uInt32, Default
  index, value = eurex_t7_rdi_fast_v5_0.us_firm_flag.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Market Segment Type: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v5_0.market_segment_type.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Market Segment Sub Type: uInt32, Default, optional
  index, value = eurex_t7_rdi_fast_v5_0.market_segment_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  return index
end

-- Dissect: Product Snapshot Derivatives Descriptor Group
eurex_t7_rdi_fast_v5_0.product_snapshot_derivatives_descriptor_group.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_eurex_t7_rdi_fast_v5_0.fields.product_snapshot_derivatives_descriptor_group, buffer(offset, 0))
  local index = offset

  -- entries of a repeating group each open with a presence map of their own
  local entry_map = nil
  entry_map, index = read_presence_map(buffer, index)
  presence_map = entry_map
  base = 1

  index = eurex_t7_rdi_fast_v5_0.product_snapshot_derivatives_descriptor_group.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Product Snapshot Message
eurex_t7_rdi_fast_v5_0.product_snapshot = {}

eurex_t7_rdi_fast_v5_0.product_snapshot.node = omi_eurex_t7_rdi_fast_v5_0.fields.product_snapshot
eurex_t7_rdi_fast_v5_0.product_snapshot.presence = {
  [2] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_msg_seq_num,
  [3] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_market_id,
  [4] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_effective_business_date,
  [5] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_next_effective_business_date,
  [6] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_market_segment_status,
  [7] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_partition_id,
  [8] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_derivatives_descriptor_group,
  [9] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_underlying_descriptor_group,
  [10] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_no_instrument_scopes,
  [11] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_base_trading_rules_derivatives,
  [12] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_base_trading_rules_cash,
  [13] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_no_match_rules,
  [14] = omi_eurex_t7_rdi_fast_v5_0.fields.presence_no_md_feed_types,
}

-- Dissect Fields: Product Snapshot Message
eurex_t7_rdi_fast_v5_0.product_snapshot.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = eurex_t7_rdi_fast_v5_0.msg_type_constant_bu.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, Increment
  index, value = eurex_t7_rdi_fast_v5_0.msg_seq_num.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "6:global|0:|9:MsgSeqNum")

  -- Market Id: string, Copy
  index, value = eurex_t7_rdi_fast_v5_0.market_id.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "6:global|0:|8:MarketID")

  -- Market Segment Id: uInt32, Delta
  index, value = eurex_t7_rdi_fast_v5_0.market_segment_id_delta.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|15:MarketSegmentID")

  -- Effective Business Date: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.effective_business_date.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "6:global|0:|21:EffectiveBusinessDate")

  -- Next Effective Business Date: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.next_effective_business_date.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "6:global|0:|25:NextEffectiveBusinessDate")

  -- Market Segment: string, Delta
  index, value = eurex_t7_rdi_fast_v5_0.market_segment.dissect(buffer, index, packet, parent, nil, state, "6:global|0:|13:MarketSegment")

  -- Market Segment Status: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.market_segment_status.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "6:global|0:|19:MarketSegmentStatus")

  -- Partition Id: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.partition_id.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "6:global|0:|11:PartitionID")

  -- Derivatives Descriptor Group: group, optional
  if presence_map[base + 6] then
    index = eurex_t7_rdi_fast_v5_0.product_snapshot_derivatives_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Underlying Descriptor Group: group, optional
  if presence_map[base + 7] then
    index = eurex_t7_rdi_fast_v5_0.underlying_descriptor_group.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Instrument Scopes: uInt32, Constant, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_instrument_scopes.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Instrument Scopes: No Instrument Scopes entries
  local count = value or 0
  for instrument_scopes_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.instrument_scopes.dissect(buffer, index, packet, parent, presence_map, base, state, instrument_scopes_index)
  end

  -- No Related Market Segments: uInt32, sent, optional
  index, value = eurex_t7_rdi_fast_v5_0.no_related_market_segments.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Market Segments: No Related Market Segments entries
  local count = value or 0
  for related_market_segments_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.related_market_segments.dissect(buffer, index, packet, parent, presence_map, base, state, related_market_segments_index)
  end

  -- Base Trading Rules: group
  index = eurex_t7_rdi_fast_v5_0.base_trading_rules.dissect(buffer, index, packet, parent, presence_map, base, state, nil)

  -- Base Trading Rules Derivatives: group, optional
  if presence_map[base + 9] then
    index = eurex_t7_rdi_fast_v5_0.base_trading_rules_derivatives.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- Base Trading Rules Cash: group, optional
  if presence_map[base + 10] then
    index = eurex_t7_rdi_fast_v5_0.base_trading_rules_cash.dissect(buffer, index, packet, parent, presence_map, base, state, nil)
  end

  -- No Match Rules: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.no_match_rules.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "6:global|0:|12:NoMatchRules")

  -- Match Rules: No Match Rules entries
  local count = value or 0
  for match_rules_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.match_rules.dissect(buffer, index, packet, parent, presence_map, base, state, match_rules_index)
  end

  -- No Md Feed Types: uInt32, Copy
  index, value = eurex_t7_rdi_fast_v5_0.no_md_feed_types.dissect(buffer, index, packet, parent, presence_map[base + 12], state, "6:global|0:|13:NoMDFeedTypes")

  -- Feeds: No Md Feed Types entries
  local count = value or 0
  for feeds_index = 1, count do
    index = eurex_t7_rdi_fast_v5_0.feeds.dissect(buffer, index, packet, parent, presence_map, base, state, feeds_index)
  end

  return index
end

-- Dissect: Product Snapshot Message
eurex_t7_rdi_fast_v5_0.product_snapshot.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v5_0.product_snapshot.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Rd Packet Header Framing
eurex_t7_rdi_fast_v5_0.rd_packet_header = {}

eurex_t7_rdi_fast_v5_0.rd_packet_header.node = omi_eurex_t7_rdi_fast_v5_0.fields.rd_packet_header

-- Dissect Fields: Rd Packet Header Framing
eurex_t7_rdi_fast_v5_0.rd_packet_header.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Sender Comp Id: uInt32, sent
  index, value = eurex_t7_rdi_fast_v5_0.sender_comp_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Packet Seq Num: byteVector, sent
  index, value = eurex_t7_rdi_fast_v5_0.packet_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: byteVector, sent
  index, value = eurex_t7_rdi_fast_v5_0.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Rd Packet Header Framing
eurex_t7_rdi_fast_v5_0.rd_packet_header.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = eurex_t7_rdi_fast_v5_0.rd_packet_header.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Eurex T7 Rdi Fast 5.0 Message Dispatch
eurex_t7_rdi_fast_v5_0.templates = {
  [73] = eurex_t7_rdi_fast_v5_0.rd_packet_header,
  [122] = eurex_t7_rdi_fast_v5_0.product_snapshot,
  [123] = eurex_t7_rdi_fast_v5_0.instrument_snapshot,
  [121] = eurex_t7_rdi_fast_v5_0.instrument_incremental,
  [162] = eurex_t7_rdi_fast_v5_0.variance_futures_status,
  [514] = eurex_t7_rdi_fast_v5_0.total_return_futures_status,
  [515] = eurex_t7_rdi_fast_v5_0.trade_at_reference_price_status,
  [125] = eurex_t7_rdi_fast_v5_0.market_data_report,
  [109] = eurex_t7_rdi_fast_v5_0.beacon,
}

-- Eurex T7 Rdi Fast 5.0 Template Names
eurex_t7_rdi_fast_v5_0.template_id = {}

-- Display: Template Id
eurex_t7_rdi_fast_v5_0.template_id.display = function(value)
  if value == 73 then
    return "Template Id: RDPacketHeader (73)"
  end
  if value == 122 then
    return "Template Id: ProductSnapshot (122)"
  end
  if value == 123 then
    return "Template Id: InstrumentSnapshot (123)"
  end
  if value == 121 then
    return "Template Id: InstrumentIncremental (121)"
  end
  if value == 162 then
    return "Template Id: VarianceFuturesStatus (162)"
  end
  if value == 514 then
    return "Template Id: TotalReturnFuturesStatus (514)"
  end
  if value == 515 then
    return "Template Id: TradeAtReferencePriceStatus (515)"
  end
  if value == 125 then
    return "Template Id: MarketDataReport (125)"
  end
  if value == 109 then
    return "Template Id: Beacon (109)"
  end
  if value == 120 then
    return "Template Id: Reset (120)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
eurex_t7_rdi_fast_v5_0.template_id.name = function(value)
  if value == 73 then
    return "RDPacketHeader"
  end
  if value == 122 then
    return "ProductSnapshot"
  end
  if value == 123 then
    return "InstrumentSnapshot"
  end
  if value == 121 then
    return "InstrumentIncremental"
  end
  if value == 162 then
    return "VarianceFuturesStatus"
  end
  if value == 514 then
    return "TotalReturnFuturesStatus"
  end
  if value == 515 then
    return "TradeAtReferencePriceStatus"
  end
  if value == 125 then
    return "MarketDataReport"
  end
  if value == 109 then
    return "Beacon"
  end
  if value == 120 then
    return "Reset"
  end

  return "Unknown"
end

-- Eurex T7 Rdi Fast 5.0 Framing
eurex_t7_rdi_fast_v5_0.header = 73
eurex_t7_rdi_fast_v5_0.reset = 120

-- Eurex T7 Rdi Fast 5.0 Packet Dissector
omi_eurex_t7_rdi_fast_v5_0.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "Eurex T7 Rdi Fast 5.0"
  local root = parent:add(omi_eurex_t7_rdi_fast_v5_0, buffer(), "Eurex T7 Rdi Fast 5.0")
  local state = state_for(packet)
  local offset = 0
  local messages = 0

  while offset < buffer:len() do
    local start = offset

    local holder = root

    local presence_map = nil
    presence_map, offset = read_presence_map(buffer, offset)
    local mapped = offset

    -- the first bit says whether the template id was sent
    local template_id = nil
    local identified = offset
    if presence_map[1] then
      template_id, offset = read_stop_bit_unsigned(buffer, offset)
      state.last_template_id = template_id
    else
      template_id = state.last_template_id
    end

    if template_id == nil then
      root:add_expert_info(PI_MALFORMED, PI_ERROR, "FAST template id was omitted before the stream sent one")
      return
    end

    local template = eurex_t7_rdi_fast_v5_0.templates[template_id]
    local message_tree = nil

    if template ~= nil then
      message_tree = holder:add(template.node, buffer(start, 0))
    else
      message_tree = holder:add(omi_eurex_t7_rdi_fast_v5_0.fields.message, buffer(start, 0))
      message_tree:set_text(eurex_t7_rdi_fast_v5_0.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_eurex_t7_rdi_fast_v5_0.fields.message_header, buffer(start, offset - start))
    local named = nil
    if template ~= nil then
      named = template.presence
    end
    add_presence_map(header, buffer(start, mapped - start), omi_eurex_t7_rdi_fast_v5_0.fields.presence_map, omi_eurex_t7_rdi_fast_v5_0.fields.presence_stop, omi_eurex_t7_rdi_fast_v5_0.fields.presence_identified, omi_eurex_t7_rdi_fast_v5_0.fields.presence_unused, named)
    header:add(omi_eurex_t7_rdi_fast_v5_0.fields.template_id, buffer(identified, offset - identified), template_id, eurex_t7_rdi_fast_v5_0.template_id.display(template_id))

    -- the reset template tells a receiver to forget what the stream remembered
    if template_id == eurex_t7_rdi_fast_v5_0.reset then
      state.values = {}
      state.last_template_id = nil
    else
      if template == nil then
        message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 73 (RDPacketHeader), 122 (ProductSnapshot), 123 (InstrumentSnapshot), 121 (InstrumentIncremental), 162 (VarianceFuturesStatus), 514 (TotalReturnFuturesStatus), 515 (TradeAtReferencePriceStatus), 125 (MarketDataReport), 109 (Beacon)")
        message_tree:set_len(offset - start)
        return
      end

      -- every packet opens with the template the model frames them with
      if messages == 0 and template_id ~= eurex_t7_rdi_fast_v5_0.header then
        root:add_expert_info(PI_PROTOCOL, PI_WARN, "FAST packet did not open with its packet header template")
      end

      offset = template.dissect(buffer, offset, packet, message_tree, presence_map, 2, state, nil)
      messages = messages + 1
    end

    -- the message occupies whatever its framing and its fields consumed
    message_tree:set_len(offset - start)

    -- a dissection that read nothing would read the same octets for ever
    if offset <= start then
      root:add_expert_info(PI_MALFORMED, PI_ERROR, "FAST message made no forward progress")
      return
    end
  end
end

-- a reload starts every stream's remembered values again
omi_eurex_t7_rdi_fast_v5_0.init = function()
  stream_states = {}
end

-- Register Eurex T7 Rdi Fast 5.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_eurex_t7_rdi_fast_v5_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Eurex Exchange
--   Version: v5.0
--   Specification: T7 Market and Reference Data Interfaces Manual
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
