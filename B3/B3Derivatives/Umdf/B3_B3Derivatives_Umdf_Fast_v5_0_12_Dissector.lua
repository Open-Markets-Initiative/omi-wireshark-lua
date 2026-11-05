-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- B3 B3Derivatives Umdf Fast 5.0.12 Protocol
local omi_b3_b3derivatives_umdf_fast_v5_0_12 = Proto("Omi.B3.B3Derivatives.Umdf.Fast.v5.0.12", "B3 B3Derivatives Umdf Fast 5.0.12")

-- Protocol table
local b3_b3derivatives_umdf_fast_v5_0_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- B3 B3Derivatives Umdf Fast 5.0.12 Framing
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message = ProtoField.new("Message", "b3.b3derivatives.umdf.fast.v5.0.12.message", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_header = ProtoField.new("Message Header", "b3.b3derivatives.umdf.fast.v5.0.12.messageheader", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_map = ProtoField.new("Presence Map", "b3.b3derivatives.umdf.fast.v5.0.12.presencemap", ftypes.BYTES)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.template_id = ProtoField.new("Template Id", "b3.b3derivatives.umdf.fast.v5.0.12.templateid", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.record = ProtoField.new("Record", "b3.b3derivatives.umdf.fast.v5.0.12.record", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_stop = ProtoField.new("Stop Bit", "b3.b3derivatives.umdf.fast.v5.0.12.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_identified = ProtoField.new("Template Id", "b3.b3derivatives.umdf.fast.v5.0.12.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_unused = ProtoField.new("Unused", "b3.b3derivatives.umdf.fast.v5.0.12.presenceunused", ftypes.UINT8, nil, base.HEX)

-- B3 B3Derivatives Umdf Fast 5.0.12 Presence Map Fields
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_md_req_id = ProtoField.new("MD Req ID", "b3.b3derivatives.umdf.fast.v5.0.12.mdreqidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_md_req_rej_reason = ProtoField.new("MD Req Rej Reason", "b3.b3derivatives.umdf.fast.v5.0.12.mdreqrejreasonpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_pos_dup_flag = ProtoField.new("Pos Dup Flag", "b3.b3derivatives.umdf.fast.v5.0.12.posdupflagpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_security_id_source = ProtoField.new("Security ID Source", "b3.b3derivatives.umdf.fast.v5.0.12.securityidsourcepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_orig_time = ProtoField.new("Orig Time", "b3.b3derivatives.umdf.fast.v5.0.12.origtimepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_news_source = ProtoField.new("News Source", "b3.b3derivatives.umdf.fast.v5.0.12.newssourcepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_news_id = ProtoField.new("News ID", "b3.b3derivatives.umdf.fast.v5.0.12.newsidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_language_code = ProtoField.new("Language Code", "b3.b3derivatives.umdf.fast.v5.0.12.languagecodepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_headline = ProtoField.new("Headline", "b3.b3derivatives.umdf.fast.v5.0.12.headlinepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_url_link = ProtoField.new("URL Link", "b3.b3derivatives.umdf.fast.v5.0.12.urllinkpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_appl_ver_id = ProtoField.new("Appl Ver ID", "b3.b3derivatives.umdf.fast.v5.0.12.applveridpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

-- B3 B3Derivatives Umdf Fast 5.0.12 Fields
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type = ProtoField.new("Message Type", "b3.b3derivatives.umdf.fast.v5.0.12.messagetype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "b3.b3derivatives.umdf.fast.v5.0.12.msgseqnum", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.sending_time_uint64 = ProtoField.new("Sending Time", "b3.b3derivatives.umdf.fast.v5.0.12.sendingtime.uint64", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.sending_time_string = ProtoField.new("Sending Time", "b3.b3derivatives.umdf.fast.v5.0.12.sendingtime.string", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_ver_id = ProtoField.new("Appl Ver ID", "b3.b3derivatives.umdf.fast.v5.0.12.applverid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.data_len = ProtoField.new("Data Len", "b3.b3derivatives.umdf.fast.v5.0.12.datalen", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.data = ProtoField.new("Data", "b3.b3derivatives.umdf.fast.v5.0.12.data", ftypes.BYTES)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_encoding = ProtoField.new("Message Encoding", "b3.b3derivatives.umdf.fast.v5.0.12.messageencoding", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_req_id = ProtoField.new("MD Req ID", "b3.b3derivatives.umdf.fast.v5.0.12.mdreqid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_req_rej_reason = ProtoField.new("MD Req Rej Reason", "b3.b3derivatives.umdf.fast.v5.0.12.mdreqrejreason", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.text = ProtoField.new("Text", "b3.b3derivatives.umdf.fast.v5.0.12.text", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type = ProtoField.new("Msg Type", "b3.b3derivatives.umdf.fast.v5.0.12.msgtype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tot_no_related_sym = ProtoField.new("Tot No Related Sym", "b3.b3derivatives.umdf.fast.v5.0.12.totnorelatedsym", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.last_fragment = ProtoField.new("Last Fragment", "b3.b3derivatives.umdf.fast.v5.0.12.lastfragment", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_related_sym = ProtoField.new("No Related Sym", "b3.b3derivatives.umdf.fast.v5.0.12.norelatedsym", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.symbol = ProtoField.new("Symbol", "b3.b3derivatives.umdf.fast.v5.0.12.symbol", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id = ProtoField.new("Security ID", "b3.b3derivatives.umdf.fast.v5.0.12.securityid", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id_source_string = ProtoField.new("Security ID Source", "b3.b3derivatives.umdf.fast.v5.0.12.securityidsource.string", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id_source_uint32 = ProtoField.new("Security ID Source", "b3.b3derivatives.umdf.fast.v5.0.12.securityidsource.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_exchange = ProtoField.new("Security Exchange", "b3.b3derivatives.umdf.fast.v5.0.12.securityexchange", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_appl_ids = ProtoField.new("No Appl IDs", "b3.b3derivatives.umdf.fast.v5.0.12.noapplids", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_id = ProtoField.new("Appl ID", "b3.b3derivatives.umdf.fast.v5.0.12.applid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_md_feed_types = ProtoField.new("No MD Feed Types", "b3.b3derivatives.umdf.fast.v5.0.12.nomdfeedtypes", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_feed_type = ProtoField.new("MD Feed Type", "b3.b3derivatives.umdf.fast.v5.0.12.mdfeedtype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.market_depth_uint32 = ProtoField.new("Market Depth", "b3.b3derivatives.umdf.fast.v5.0.12.marketdepth.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.market_depth_int32 = ProtoField.new("Market Depth", "b3.b3derivatives.umdf.fast.v5.0.12.marketdepth.int32", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_security_alt_id = ProtoField.new("No Security Alt ID", "b3.b3derivatives.umdf.fast.v5.0.12.nosecurityaltid", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_alt_id = ProtoField.new("Security Alt ID", "b3.b3derivatives.umdf.fast.v5.0.12.securityaltid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_alt_id_source = ProtoField.new("Security Alt ID Source", "b3.b3derivatives.umdf.fast.v5.0.12.securityaltidsource", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_underlyings = ProtoField.new("No Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.nounderlyings", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "b3.b3derivatives.umdf.fast.v5.0.12.underlyingsymbol", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_id = ProtoField.new("Underlying Security ID", "b3.b3derivatives.umdf.fast.v5.0.12.underlyingsecurityid", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_id_source_string = ProtoField.new("Underlying Security ID Source", "b3.b3derivatives.umdf.fast.v5.0.12.underlyingsecurityidsource.string", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_id_source_uint32 = ProtoField.new("Underlying Security ID Source", "b3.b3derivatives.umdf.fast.v5.0.12.underlyingsecurityidsource.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_exchange = ProtoField.new("Underlying Security Exchange", "b3.b3derivatives.umdf.fast.v5.0.12.underlyingsecurityexchange", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_pct = ProtoField.new("Index Pct", "b3.b3derivatives.umdf.fast.v5.0.12.indexpct", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_theoretical_qty = ProtoField.new("Index Theoretical Qty", "b3.b3derivatives.umdf.fast.v5.0.12.indextheoreticalqty", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "b3.b3derivatives.umdf.fast.v5.0.12.impliedmarketindicator", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_instr_attrib = ProtoField.new("No Instr Attrib", "b3.b3derivatives.umdf.fast.v5.0.12.noinstrattrib", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.inst_attrib_type = ProtoField.new("Inst Attrib Type", "b3.b3derivatives.umdf.fast.v5.0.12.instattribtype", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.inst_attrib_value = ProtoField.new("Inst Attrib Value", "b3.b3derivatives.umdf.fast.v5.0.12.instattribvalue", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_tick_rules = ProtoField.new("No Tick Rules", "b3.b3derivatives.umdf.fast.v5.0.12.notickrules", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.start_tick_price_range = ProtoField.new("Start Tick Price Range", "b3.b3derivatives.umdf.fast.v5.0.12.starttickpricerange", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.end_tick_price_range = ProtoField.new("End Tick Price Range", "b3.b3derivatives.umdf.fast.v5.0.12.endtickpricerange", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_increment = ProtoField.new("Tick Increment", "b3.b3derivatives.umdf.fast.v5.0.12.tickincrement", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_rule_type = ProtoField.new("Tick Rule Type", "b3.b3derivatives.umdf.fast.v5.0.12.tickruletype", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_legs = ProtoField.new("No Legs", "b3.b3derivatives.umdf.fast.v5.0.12.nolegs", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_symbol = ProtoField.new("Leg Symbol", "b3.b3derivatives.umdf.fast.v5.0.12.legsymbol", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_id = ProtoField.new("Leg Security ID", "b3.b3derivatives.umdf.fast.v5.0.12.legsecurityid", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_id_source = ProtoField.new("Leg Security ID Source", "b3.b3derivatives.umdf.fast.v5.0.12.legsecurityidsource", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "b3.b3derivatives.umdf.fast.v5.0.12.legratioqty", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_type = ProtoField.new("Leg Security Type", "b3.b3derivatives.umdf.fast.v5.0.12.legsecuritytype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_side = ProtoField.new("Leg Side", "b3.b3derivatives.umdf.fast.v5.0.12.legside", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_exchange = ProtoField.new("Leg Security Exchange", "b3.b3derivatives.umdf.fast.v5.0.12.legsecurityexchange", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_update_action = ProtoField.new("Security Update Action", "b3.b3derivatives.umdf.fast.v5.0.12.securityupdateaction", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_lot_type_rules = ProtoField.new("No Lot Type Rules", "b3.b3derivatives.umdf.fast.v5.0.12.nolottyperules", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.lot_type = ProtoField.new("Lot Type", "b3.b3derivatives.umdf.fast.v5.0.12.lottype", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_lot_size = ProtoField.new("Min Lot Size", "b3.b3derivatives.umdf.fast.v5.0.12.minlotsize", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_price_increment = ProtoField.new("Min Price Increment", "b3.b3derivatives.umdf.fast.v5.0.12.minpriceincrement", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_size_denominator = ProtoField.new("Tick Size Denominator", "b3.b3derivatives.umdf.fast.v5.0.12.ticksizedenominator", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_divisor = ProtoField.new("Price Divisor", "b3.b3derivatives.umdf.fast.v5.0.12.pricedivisor", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_order_qty = ProtoField.new("Min Order Qty", "b3.b3derivatives.umdf.fast.v5.0.12.minorderqty", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.max_order_qty_uint64 = ProtoField.new("Max Order Qty", "b3.b3derivatives.umdf.fast.v5.0.12.maxorderqty.uint64", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.max_order_qty_uint32 = ProtoField.new("Max Order Qty", "b3.b3derivatives.umdf.fast.v5.0.12.maxorderqty.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.multi_leg_model = ProtoField.new("Multi Leg Model", "b3.b3derivatives.umdf.fast.v5.0.12.multilegmodel", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.multi_leg_price_method = ProtoField.new("Multi Leg Price Method", "b3.b3derivatives.umdf.fast.v5.0.12.multilegpricemethod", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.currency = ProtoField.new("Currency", "b3.b3derivatives.umdf.fast.v5.0.12.currency", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_currency = ProtoField.new("Settl Currency", "b3.b3derivatives.umdf.fast.v5.0.12.settlcurrency", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.product = ProtoField.new("Product", "b3.b3derivatives.umdf.fast.v5.0.12.product", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_type = ProtoField.new("Security Type", "b3.b3derivatives.umdf.fast.v5.0.12.securitytype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_sub_type = ProtoField.new("Security Sub Type", "b3.b3derivatives.umdf.fast.v5.0.12.securitysubtype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_strategy_type = ProtoField.new("Security Strategy Type", "b3.b3derivatives.umdf.fast.v5.0.12.securitystrategytype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.asset = ProtoField.new("Asset", "b3.b3derivatives.umdf.fast.v5.0.12.asset", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_desc = ProtoField.new("Security Desc", "b3.b3derivatives.umdf.fast.v5.0.12.securitydesc", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_share_issued = ProtoField.new("No Share Issued", "b3.b3derivatives.umdf.fast.v5.0.12.noshareissued", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.maturity_date = ProtoField.new("Maturity Date", "b3.b3derivatives.umdf.fast.v5.0.12.maturitydate", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "b3.b3derivatives.umdf.fast.v5.0.12.maturitymonthyear", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.strike_price = ProtoField.new("Strike Price", "b3.b3derivatives.umdf.fast.v5.0.12.strikeprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.strike_currency = ProtoField.new("Strike Currency", "b3.b3derivatives.umdf.fast.v5.0.12.strikecurrency", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.exercise_style = ProtoField.new("Exercise Style", "b3.b3derivatives.umdf.fast.v5.0.12.exercisestyle", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.put_or_call = ProtoField.new("Put Or Call", "b3.b3derivatives.umdf.fast.v5.0.12.putorcall", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "b3.b3derivatives.umdf.fast.v5.0.12.contractmultiplier", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.contract_settl_month = ProtoField.new("Contract Settl Month", "b3.b3derivatives.umdf.fast.v5.0.12.contractsettlmonth", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.cfi_code = ProtoField.new("CFI Code", "b3.b3derivatives.umdf.fast.v5.0.12.cficode", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.country_of_issue = ProtoField.new("Country Of Issue", "b3.b3derivatives.umdf.fast.v5.0.12.countryofissue", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.issue_date = ProtoField.new("Issue Date", "b3.b3derivatives.umdf.fast.v5.0.12.issuedate", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.dated_date = ProtoField.new("Dated Date", "b3.b3derivatives.umdf.fast.v5.0.12.dateddate", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.start_date = ProtoField.new("Start Date", "b3.b3derivatives.umdf.fast.v5.0.12.startdate", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.end_date = ProtoField.new("End Date", "b3.b3derivatives.umdf.fast.v5.0.12.enddate", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_type = ProtoField.new("Settl Type", "b3.b3derivatives.umdf.fast.v5.0.12.settltype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_date = ProtoField.new("Settl Date", "b3.b3derivatives.umdf.fast.v5.0.12.settldate", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_validity_timestamp = ProtoField.new("Security Validity Timestamp", "b3.b3derivatives.umdf.fast.v5.0.12.securityvaliditytimestamp", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.market_segment_id = ProtoField.new("Market Segment ID", "b3.b3derivatives.umdf.fast.v5.0.12.marketsegmentid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.governance_indicator = ProtoField.new("Governance Indicator", "b3.b3derivatives.umdf.fast.v5.0.12.governanceindicator", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.corporate_action_event_id = ProtoField.new("Corporate Action Event ID", "b3.b3derivatives.umdf.fast.v5.0.12.corporateactioneventid", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_group = ProtoField.new("Security Group", "b3.b3derivatives.umdf.fast.v5.0.12.securitygroup", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_match_type = ProtoField.new("Security Match Type", "b3.b3derivatives.umdf.fast.v5.0.12.securitymatchtype", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_type = ProtoField.new("Leg Type", "b3.b3derivatives.umdf.fast.v5.0.12.legtype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.buyers_perspective = ProtoField.new("Buyers Perspective", "b3.b3derivatives.umdf.fast.v5.0.12.buyersperspective", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.round_lot = ProtoField.new("Round Lot", "b3.b3derivatives.umdf.fast.v5.0.12.roundlot", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "b3.b3derivatives.umdf.fast.v5.0.12.mintradevol", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.instrument_id = ProtoField.new("Instrument ID", "b3.b3derivatives.umdf.fast.v5.0.12.instrumentid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.pos_dup_flag = ProtoField.new("Pos Dup Flag", "b3.b3derivatives.umdf.fast.v5.0.12.posdupflag", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_md_entries = ProtoField.new("No MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.nomdentries", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_update_action = ProtoField.new("MD Update Action", "b3.b3derivatives.umdf.fast.v5.0.12.mdupdateaction", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_price_level = ProtoField.new("MD Price Level", "b3.b3derivatives.umdf.fast.v5.0.12.mdpricelevel", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_type = ProtoField.new("MD Entry Type", "b3.b3derivatives.umdf.fast.v5.0.12.mdentrytype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.rpt_seq = ProtoField.new("Rpt Seq", "b3.b3derivatives.umdf.fast.v5.0.12.rptseq", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_px = ProtoField.new("MD Entry Px", "b3.b3derivatives.umdf.fast.v5.0.12.mdentrypx", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_time_uint32 = ProtoField.new("MD Entry Time", "b3.b3derivatives.umdf.fast.v5.0.12.mdentrytime.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_time_string = ProtoField.new("MD Entry Time", "b3.b3derivatives.umdf.fast.v5.0.12.mdentrytime.string", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_size_int32 = ProtoField.new("MD Entry Size", "b3.b3derivatives.umdf.fast.v5.0.12.mdentrysize.int32", ftypes.INT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_size_int64 = ProtoField.new("MD Entry Size", "b3.b3derivatives.umdf.fast.v5.0.12.mdentrysize.int64", ftypes.INT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.quote_condition = ProtoField.new("Quote Condition", "b3.b3derivatives.umdf.fast.v5.0.12.quotecondition", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.number_of_orders = ProtoField.new("Number Of Orders", "b3.b3derivatives.umdf.fast.v5.0.12.numberoforders", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_session_id_string = ProtoField.new("Trading Session ID", "b3.b3derivatives.umdf.fast.v5.0.12.tradingsessionid.string", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_session_id_uint32 = ProtoField.new("Trading Session ID", "b3.b3derivatives.umdf.fast.v5.0.12.tradingsessionid.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_date = ProtoField.new("Trade Date", "b3.b3derivatives.umdf.fast.v5.0.12.tradedate", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_interest_rate = ProtoField.new("MD Entry Interest Rate", "b3.b3derivatives.umdf.fast.v5.0.12.mdentryinterestrate", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_type = ProtoField.new("Price Type", "b3.b3derivatives.umdf.fast.v5.0.12.pricetype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_date = ProtoField.new("MD Entry Date", "b3.b3derivatives.umdf.fast.v5.0.12.mdentrydate", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_insert_date = ProtoField.new("MD Insert Date", "b3.b3derivatives.umdf.fast.v5.0.12.mdinsertdate", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_insert_time = ProtoField.new("MD Insert Time", "b3.b3derivatives.umdf.fast.v5.0.12.mdinserttime", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_stream_id = ProtoField.new("MD Stream ID", "b3.b3derivatives.umdf.fast.v5.0.12.mdstreamid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "b3.b3derivatives.umdf.fast.v5.0.12.netchgprevday", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.seller_days = ProtoField.new("Seller Days", "b3.b3derivatives.umdf.fast.v5.0.12.sellerdays", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_volume_uint64 = ProtoField.new("Trade Volume", "b3.b3derivatives.umdf.fast.v5.0.12.tradevolume.uint64", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_volume_uint32 = ProtoField.new("Trade Volume", "b3.b3derivatives.umdf.fast.v5.0.12.tradevolume.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_direction = ProtoField.new("Tick Direction", "b3.b3derivatives.umdf.fast.v5.0.12.tickdirection", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_condition = ProtoField.new("Trade Condition", "b3.b3derivatives.umdf.fast.v5.0.12.tradecondition", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settl_flag_uint32 = ProtoField.new("Open Close Settl Flag", "b3.b3derivatives.umdf.fast.v5.0.12.openclosesettlflag.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settl_flag_string = ProtoField.new("Open Close Settl Flag", "b3.b3derivatives.umdf.fast.v5.0.12.openclosesettlflag.string", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.order_id = ProtoField.new("Order ID", "b3.b3derivatives.umdf.fast.v5.0.12.orderid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_id = ProtoField.new("Trade ID", "b3.b3derivatives.umdf.fast.v5.0.12.tradeid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_buyer = ProtoField.new("MD Entry Buyer", "b3.b3derivatives.umdf.fast.v5.0.12.mdentrybuyer", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_seller = ProtoField.new("MD Entry Seller", "b3.b3derivatives.umdf.fast.v5.0.12.mdentryseller", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_position_no = ProtoField.new("MD Entry Position No", "b3.b3derivatives.umdf.fast.v5.0.12.mdentrypositionno", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.sett_price_type = ProtoField.new("Sett Price Type", "b3.b3derivatives.umdf.fast.v5.0.12.settpricetype", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.last_trade_date = ProtoField.new("Last Trade Date", "b3.b3derivatives.umdf.fast.v5.0.12.lasttradedate", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_adjustment_method = ProtoField.new("Price Adjustment Method", "b3.b3derivatives.umdf.fast.v5.0.12.priceadjustmentmethod", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_band_type = ProtoField.new("Price Band Type", "b3.b3derivatives.umdf.fast.v5.0.12.pricebandtype", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_limit_type = ProtoField.new("Price Limit Type", "b3.b3derivatives.umdf.fast.v5.0.12.pricelimittype", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.low_limit_price = ProtoField.new("Low Limit Price", "b3.b3derivatives.umdf.fast.v5.0.12.lowlimitprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.high_limit_price = ProtoField.new("High Limit Price", "b3.b3derivatives.umdf.fast.v5.0.12.highlimitprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_reference_price = ProtoField.new("Trading Reference Price", "b3.b3derivatives.umdf.fast.v5.0.12.tradingreferenceprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_band_midpoint_price_type = ProtoField.new("Price Band Midpoint Price Type", "b3.b3derivatives.umdf.fast.v5.0.12.pricebandmidpointpricetype", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.avg_daily_traded_qty = ProtoField.new("Avg Daily Traded Qty", "b3.b3derivatives.umdf.fast.v5.0.12.avgdailytradedqty", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.expire_date = ProtoField.new("Expire Date", "b3.b3derivatives.umdf.fast.v5.0.12.expiredate", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.early_termination = ProtoField.new("Early Termination", "b3.b3derivatives.umdf.fast.v5.0.12.earlytermination", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.btb_cert_indicator = ProtoField.new("BTB Cert Indicator", "b3.b3derivatives.umdf.fast.v5.0.12.btbcertindicator", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.btb_contract_info = ProtoField.new("BTB Contract Info", "b3.b3derivatives.umdf.fast.v5.0.12.btbcontractinfo", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.btb_grace_date = ProtoField.new("BTB Grace Date", "b3.b3derivatives.umdf.fast.v5.0.12.btbgracedate", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "b3.b3derivatives.umdf.fast.v5.0.12.maxtradevol", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_px = ProtoField.new("Underlying Px", "b3.b3derivatives.umdf.fast.v5.0.12.underlyingpx", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_px_type = ProtoField.new("Underlying Px Type", "b3.b3derivatives.umdf.fast.v5.0.12.underlyingpxtype", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_seq_uint64 = ProtoField.new("Index Seq", "b3.b3derivatives.umdf.fast.v5.0.12.indexseq.uint64", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_seq_uint32 = ProtoField.new("Index Seq", "b3.b3derivatives.umdf.fast.v5.0.12.indexseq.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settle_flag_uint32 = ProtoField.new("Open Close Settle Flag", "b3.b3derivatives.umdf.fast.v5.0.12.openclosesettleflag.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settle_flag_string = ProtoField.new("Open Close Settle Flag", "b3.b3derivatives.umdf.fast.v5.0.12.openclosesettleflag.string", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settle_price_type = ProtoField.new("Settle Price Type", "b3.b3derivatives.umdf.fast.v5.0.12.settlepricetype", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_ref_price = ProtoField.new("Trading Ref Price", "b3.b3derivatives.umdf.fast.v5.0.12.tradingrefprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub ID", "b3.b3derivatives.umdf.fast.v5.0.12.tradingsessionsubid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_trading_status = ProtoField.new("Security Trading Status", "b3.b3derivatives.umdf.fast.v5.0.12.securitytradingstatus", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trad_ses_open_time_uint64 = ProtoField.new("Trad Ses Open Time", "b3.b3derivatives.umdf.fast.v5.0.12.tradsesopentime.uint64", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trad_ses_open_time_uint32 = ProtoField.new("Trad Ses Open Time", "b3.b3derivatives.umdf.fast.v5.0.12.tradsesopentime.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.transact_time = ProtoField.new("Transact Time", "b3.b3derivatives.umdf.fast.v5.0.12.transacttime", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_trading_event = ProtoField.new("Security Trading Event", "b3.b3derivatives.umdf.fast.v5.0.12.securitytradingevent", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "b3.b3derivatives.umdf.fast.v5.0.12.lastmsgseqnumprocessed", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "b3.b3derivatives.umdf.fast.v5.0.12.totnumreports", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.curerncy = ProtoField.new("Curerncy", "b3.b3derivatives.umdf.fast.v5.0.12.curerncy", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.day_cum_qty = ProtoField.new("Day Cum Qty", "b3.b3derivatives.umdf.fast.v5.0.12.daycumqty", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.orig_time = ProtoField.new("Orig Time", "b3.b3derivatives.umdf.fast.v5.0.12.origtime", ftypes.UINT64)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.news_source = ProtoField.new("News Source", "b3.b3derivatives.umdf.fast.v5.0.12.newssource", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.news_id = ProtoField.new("News ID", "b3.b3derivatives.umdf.fast.v5.0.12.newsid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.language_code = ProtoField.new("Language Code", "b3.b3derivatives.umdf.fast.v5.0.12.languagecode", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.headline = ProtoField.new("Headline", "b3.b3derivatives.umdf.fast.v5.0.12.headline", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.url_link = ProtoField.new("URL Link", "b3.b3derivatives.umdf.fast.v5.0.12.urllink", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_headline_len = ProtoField.new("Encoded Headline Len", "b3.b3derivatives.umdf.fast.v5.0.12.encodedheadlinelen", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_headline = ProtoField.new("Encoded Headline", "b3.b3derivatives.umdf.fast.v5.0.12.encodedheadline", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_lines_of_text = ProtoField.new("No Lines Of Text", "b3.b3derivatives.umdf.fast.v5.0.12.nolinesoftext", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_text_len = ProtoField.new("Encoded Text Len", "b3.b3derivatives.umdf.fast.v5.0.12.encodedtextlen", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_text = ProtoField.new("Encoded Text", "b3.b3derivatives.umdf.fast.v5.0.12.encodedtext", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_routing_ids = ProtoField.new("No Routing IDs", "b3.b3derivatives.umdf.fast.v5.0.12.noroutingids", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.routing_type = ProtoField.new("Routing Type", "b3.b3derivatives.umdf.fast.v5.0.12.routingtype", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.routing_id = ProtoField.new("Routing ID", "b3.b3derivatives.umdf.fast.v5.0.12.routingid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encrypt_method = ProtoField.new("Encrypt Method", "b3.b3derivatives.umdf.fast.v5.0.12.encryptmethod", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.heartbeat_int = ProtoField.new("Heartbeat Int", "b3.b3derivatives.umdf.fast.v5.0.12.heartbeatint", ftypes.UINT32)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.default_appl_ver_id = ProtoField.new("Default Appl Ver ID", "b3.b3derivatives.umdf.fast.v5.0.12.defaultapplverid", ftypes.STRING)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.new_seq_no = ProtoField.new("New Seq No", "b3.b3derivatives.umdf.fast.v5.0.12.newseqno", ftypes.UINT32)

-- B3 B3Derivatives Umdf Fast 5.0.12 Messages
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_non_fix = ProtoField.new("MD Non Fix Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdnonfix", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_tcp_request_reject_117 = ProtoField.new("MD Tcp Request Reject_117 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdtcprequestreject_117", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_149 = ProtoField.new("MD Security List_149 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_149", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_149_related_sym = ProtoField.new("MD Security List_149 Related Sym", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_149relatedsym", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_ids = ProtoField.new("Appl IDs", "b3.b3derivatives.umdf.fast.v5.0.12.applids", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.feed_types = ProtoField.new("Feed Types", "b3.b3derivatives.umdf.fast.v5.0.12.feedtypes", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_alt_ids = ProtoField.new("Security Alt IDs", "b3.b3derivatives.umdf.fast.v5.0.12.securityaltids", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_149_underlyings = ProtoField.new("MD Security List_149 Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_149underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.instr_attrib = ProtoField.new("Instr Attrib", "b3.b3derivatives.umdf.fast.v5.0.12.instrattrib", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_rules = ProtoField.new("Tick Rules", "b3.b3derivatives.umdf.fast.v5.0.12.tickrules", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_149_legs = ProtoField.new("MD Security List_149 Legs", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_149legs", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.lots = ProtoField.new("Lots", "b3.b3derivatives.umdf.fast.v5.0.12.lots", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_148 = ProtoField.new("MD Security List_148 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_148", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_148_related_sym = ProtoField.new("MD Security List_148 Related Sym", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_148relatedsym", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_148_underlyings = ProtoField.new("MD Security List_148 Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_148underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_148_legs = ProtoField.new("MD Security List_148 Legs", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_148legs", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_141 = ProtoField.new("MD Security List_141 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_141", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_141_related_sym = ProtoField.new("MD Security List_141 Related Sym", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_141relatedsym", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_141_underlyings = ProtoField.new("MD Security List_141 Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_141underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_141_legs = ProtoField.new("MD Security List_141 Legs", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_141legs", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_111 = ProtoField.new("MD Security List_111 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_111", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.related_symbols = ProtoField.new("Related Symbols", "b3.b3derivatives.umdf.fast.v5.0.12.relatedsymbols", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_111_underlyings = ProtoField.new("MD Security List_111 Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_111underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_111_legs = ProtoField.new("MD Security List_111 Legs", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritylist_111legs", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_81 = ProtoField.new("MD Inc Refresh_81 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_81", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_81_md_entries = ProtoField.new("MD Inc Refresh_81 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_81mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_150 = ProtoField.new("MD Inc Refresh_150 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_150", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_150_md_entries = ProtoField.new("MD Inc Refresh_150 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_150mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_150_underlyings = ProtoField.new("MD Inc Refresh_150 Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_150underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_145 = ProtoField.new("MD Inc Refresh_145 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_145", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_145_md_entries = ProtoField.new("MD Inc Refresh_145 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_145mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_145_underlyings = ProtoField.new("MD Inc Refresh_145 Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_145underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_138 = ProtoField.new("MD Inc Refresh_138 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_138", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_138_md_entries = ProtoField.new("MD Inc Refresh_138 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_138mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_138_underlyings = ProtoField.new("MD Inc Refresh_138 Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_138underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_123 = ProtoField.new("MD Inc Refresh_123 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_123", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_123_md_entries = ProtoField.new("MD Inc Refresh_123 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_123mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_126 = ProtoField.new("MD Inc Refresh_126 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_126", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_126_md_entries = ProtoField.new("MD Inc Refresh_126 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdincrefresh_126mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_status_142 = ProtoField.new("MD Security Status_142 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritystatus_142", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_status_134 = ProtoField.new("MD Security Status_134 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritystatus_134", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_status_125 = ProtoField.new("MD Security Status_125 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsecuritystatus_125", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_127 = ProtoField.new("MD Snapshot Full Refresh_127 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_127", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_127_md_entries = ProtoField.new("MD Snapshot Full Refresh_127 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_127mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_151 = ProtoField.new("MD Snapshot Full Refresh_151 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_151", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_151_md_entries = ProtoField.new("MD Snapshot Full Refresh_151 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_151mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_151_underlyings = ProtoField.new("MD Snapshot Full Refresh_151 Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_151underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_147 = ProtoField.new("MD Snapshot Full Refresh_147 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_147", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_147_md_entries = ProtoField.new("MD Snapshot Full Refresh_147 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_147mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_147_underlyings = ProtoField.new("MD Snapshot Full Refresh_147 Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_147underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_146 = ProtoField.new("MD Snapshot Full Refresh_146 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_146", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_146_md_entries = ProtoField.new("MD Snapshot Full Refresh_146 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_146mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_146_underlyings = ProtoField.new("MD Snapshot Full Refresh_146 Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_146underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_139 = ProtoField.new("MD Snapshot Full Refresh_139 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_139", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_139_md_entries = ProtoField.new("MD Snapshot Full Refresh_139 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_139mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_139_underlyings = ProtoField.new("MD Snapshot Full Refresh_139 Underlyings", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_139underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_128 = ProtoField.new("MD Snapshot Full Refresh_128 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_128", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_128_md_entries = ProtoField.new("MD Snapshot Full Refresh_128 MD Entries", "b3.b3derivatives.umdf.fast.v5.0.12.mdsnapshotfullrefresh_128mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_143 = ProtoField.new("MD News Message_143 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdnewsmessage_143", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_143_related_sym = ProtoField.new("MD News Message_143 Related Sym", "b3.b3derivatives.umdf.fast.v5.0.12.mdnewsmessage_143relatedsym", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.lines_of_text = ProtoField.new("Lines Of Text", "b3.b3derivatives.umdf.fast.v5.0.12.linesoftext", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_137 = ProtoField.new("MD News Message_137 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdnewsmessage_137", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_137_related_sym = ProtoField.new("MD News Message_137 Related Sym", "b3.b3derivatives.umdf.fast.v5.0.12.mdnewsmessage_137relatedsym", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_120 = ProtoField.new("MD News Message_120 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdnewsmessage_120", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_120_related_sym = ProtoField.new("MD News Message_120 Related Sym", "b3.b3derivatives.umdf.fast.v5.0.12.mdnewsmessage_120relatedsym", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.routing_ids = ProtoField.new("Routing Ids", "b3.b3derivatives.umdf.fast.v5.0.12.routingids", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_heartbeat_144 = ProtoField.new("MD Heartbeat_144 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdheartbeat_144", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_heartbeat_129 = ProtoField.new("MD Heartbeat_129 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdheartbeat_129", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_heartbeat_101 = ProtoField.new("MD Heartbeat_101 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdheartbeat_101", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_logon_118 = ProtoField.new("MD Logon_118 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdlogon_118", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_logout_119 = ProtoField.new("MD Logout_119 Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdlogout_119", ftypes.NONE)
omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_sequence_reset = ProtoField.new("MD Sequence Reset Message", "b3.b3derivatives.umdf.fast.v5.0.12.mdsequencereset", ftypes.NONE)

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
-- B3 B3Derivatives Umdf Fast 5.0.12 Fields
-----------------------------------------------------------------------

-- Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_n = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_n.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "n"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_y_1 = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_y_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "Y"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_y_2 = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_y_2.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "y"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_x = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_x.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "X"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_f = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_f.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "f"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_w = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_w.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "W"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_b = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_b.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "B"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_0 = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "0"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_a = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_a.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "A"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_5 = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_5.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "5"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Msg Seq Num
b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num = {}

-- Dissect: Msg Seq Num
b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64 = {}

-- Dissect: Sending Time (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.sending_time_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.sending_time_uint64, range, UInt64(0))
    absent:set_text("Sending Time: No Value")
  end

  return offset, value
end

-- Sending Time (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_string = {}

-- Dissect: Sending Time (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.sending_time_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.sending_time_string, range, "")
    absent:set_text("Sending Time: No Value")
  end

  return offset, value
end

-- Appl Ver ID (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required = {}

-- Dissect: Appl Ver ID (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "9"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_ver_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_ver_id, range, "")
    absent:set_text("Appl Ver ID: No Value")
  end

  return offset, value
end

-- Appl Ver ID (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_optional = {}

-- Dissect: Appl Ver ID (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = "9"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_ver_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_ver_id, range, "")
    absent:set_text("Appl Ver ID: No Value")
  end

  return offset, value
end

-- Data Len
b3_b3derivatives_umdf_fast_v5_0_12.data_len = {}

-- Dissect: Data Len
b3_b3derivatives_umdf_fast_v5_0_12.data_len.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.data_len, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.data_len, range, 0)
    absent:set_text("Data Len: No Value")
  end

  return offset, value
end

-- Data
b3_b3derivatives_umdf_fast_v5_0_12.data = {}

-- Dissect: Data
b3_b3derivatives_umdf_fast_v5_0_12.data.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_byte_vector(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.data, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.data, buffer(start, 0))
    absent:set_text("Data: No Value")
  end

  return offset, value
end

-- Message Encoding
b3_b3derivatives_umdf_fast_v5_0_12.message_encoding = {}

-- Dissect: Message Encoding
b3_b3derivatives_umdf_fast_v5_0_12.message_encoding.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "RLC-Z5"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_encoding, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_encoding, range, "")
    absent:set_text("Message Encoding: No Value")
  end

  return offset, value
end

-- MD Req ID (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_req_id_copy_required = {}

-- Dissect: MD Req ID (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_req_id_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "MD Req ID was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_req_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_req_id, range, "")
    absent:set_text("MD Req ID: No Value")
  end

  return offset, value
end

-- MD Req ID (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_req_id_copy_optional = {}

-- Dissect: MD Req ID (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_req_id_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_req_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_req_id, range, "")
    absent:set_text("MD Req ID: No Value")
  end

  return offset, value
end

-- MD Req Rej Reason
b3_b3derivatives_umdf_fast_v5_0_12.md_req_rej_reason = {}

-- Dissect: MD Req Rej Reason
b3_b3derivatives_umdf_fast_v5_0_12.md_req_rej_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "MD Req Rej Reason was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_req_rej_reason, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_req_rej_reason, range, "")
    absent:set_text("MD Req Rej Reason: No Value")
  end

  return offset, value
end

-- Text (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.text_sent = {}

-- Dissect: Text (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.text_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.text, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.text, range, "")
    absent:set_text("Text: No Value")
  end

  return offset, value
end

-- Text (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.text_copy = {}

-- Dissect: Text (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.text_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Text was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.text, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.text, range, "")
    absent:set_text("Text: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_y = {}

-- Dissect: Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_y.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "y"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_x = {}

-- Dissect: Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_x.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "X"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_f = {}

-- Dissect: Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_f.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "f"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_w = {}

-- Dissect: Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_w.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "W"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_b = {}

-- Dissect: Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_b.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "B"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_0 = {}

-- Dissect: Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "0"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_4 = {}

-- Dissect: Msg Type (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_4.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "4"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- Tot No Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.tot_no_related_sym = {}

-- Dissect: Tot No Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.tot_no_related_sym.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tot_no_related_sym, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tot_no_related_sym, range, 0)
    absent:set_text("Tot No Related Sym: No Value")
  end

  return offset, value
end

-- Last Fragment
b3_b3derivatives_umdf_fast_v5_0_12.last_fragment = {}

-- Dissect: Last Fragment
b3_b3derivatives_umdf_fast_v5_0_12.last_fragment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.last_fragment, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.last_fragment, range, "")
    absent:set_text("Last Fragment: No Value")
  end

  return offset, value
end

-- No Related Sym (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.no_related_sym_sent_required = {}

-- Dissect: No Related Sym (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.no_related_sym_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_related_sym, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_related_sym, range, 0)
    absent:set_text("No Related Sym: No Value")
  end

  return offset, value
end

-- No Related Sym (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.no_related_sym_sent_optional = {}

-- Dissect: No Related Sym (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.no_related_sym_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_related_sym, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_related_sym, range, 0)
    absent:set_text("No Related Sym: No Value")
  end

  return offset, value
end

-- Symbol (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_required = {}

-- Dissect: Symbol (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.symbol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Symbol (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_optional = {}

-- Dissect: Symbol (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.symbol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Security ID (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required = {}

-- Dissect: Security ID (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_uint64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security ID was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id, range, UInt64(0))
    absent:set_text("Security ID: No Value")
  end

  return offset, value
end

-- Security ID (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_optional = {}

-- Dissect: Security ID (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id, range, UInt64(0))
    absent:set_text("Security ID: No Value")
  end

  return offset, value
end

-- Security ID (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_optional = {}

-- Dissect: Security ID (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id, range, UInt64(0))
    absent:set_text("Security ID: No Value")
  end

  return offset, value
end

-- Security ID (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_required = {}

-- Dissect: Security ID (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id, range, UInt64(0))
    absent:set_text("Security ID: No Value")
  end

  return offset, value
end

-- Security ID Source (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_string = {}

-- Dissect: Security ID Source (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "8"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id_source_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id_source_string, range, "")
    absent:set_text("Security ID Source: No Value")
  end

  return offset, value
end

-- Security ID Source (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_optional = {}

-- Dissect: Security ID Source (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 8
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id_source_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id_source_uint32, range, 0)
    absent:set_text("Security ID Source: No Value")
  end

  return offset, value
end

-- Security ID Source (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32 = {}

-- Dissect: Security ID Source (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 8

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id_source_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_id_source_uint32, range, 0)
    absent:set_text("Security ID Source: No Value")
  end

  return offset, value
end

-- Security Exchange (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant = {}

-- Dissect: Security Exchange (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BVMF"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_exchange, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_exchange, range, "")
    absent:set_text("Security Exchange: No Value")
  end

  return offset, value
end

-- Security Exchange (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_sent_optional = {}

-- Dissect: Security Exchange (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_exchange, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_exchange, range, "")
    absent:set_text("Security Exchange: No Value")
  end

  return offset, value
end

-- Security Exchange (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_sent_required = {}

-- Dissect: Security Exchange (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_exchange, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_exchange, range, "")
    absent:set_text("Security Exchange: No Value")
  end

  return offset, value
end

-- No Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.no_appl_ids = {}

-- Dissect: No Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.no_appl_ids.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_appl_ids, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_appl_ids, range, 0)
    absent:set_text("No Appl IDs: No Value")
  end

  return offset, value
end

-- Appl ID (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.appl_id_sent = {}

-- Dissect: Appl ID (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.appl_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_id, range, "")
    absent:set_text("Appl ID: No Value")
  end

  return offset, value
end

-- Appl ID (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.appl_id_constant = {}

-- Dissect: Appl ID (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.appl_id_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "REPLAY"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_id, range, "")
    absent:set_text("Appl ID: No Value")
  end

  return offset, value
end

-- No MD Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.no_md_feed_types = {}

-- Dissect: No MD Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.no_md_feed_types.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_md_feed_types, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_md_feed_types, range, 0)
    absent:set_text("No MD Feed Types: No Value")
  end

  return offset, value
end

-- MD Feed Type
b3_b3derivatives_umdf_fast_v5_0_12.md_feed_type = {}

-- Dissect: MD Feed Type
b3_b3derivatives_umdf_fast_v5_0_12.md_feed_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_feed_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_feed_type, range, "")
    absent:set_text("MD Feed Type: No Value")
  end

  return offset, value
end

-- Market Depth (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_required = {}

-- Dissect: Market Depth (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.market_depth_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.market_depth_uint32, range, 0)
    absent:set_text("Market Depth: No Value")
  end

  return offset, value
end

-- Market Depth (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_optional = {}

-- Dissect: Market Depth (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.market_depth_int32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.market_depth_int32, range, 0)
    absent:set_text("Market Depth: No Value")
  end

  return offset, value
end

-- No Security Alt ID
b3_b3derivatives_umdf_fast_v5_0_12.no_security_alt_id = {}

-- Dissect: No Security Alt ID
b3_b3derivatives_umdf_fast_v5_0_12.no_security_alt_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_security_alt_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_security_alt_id, range, 0)
    absent:set_text("No Security Alt ID: No Value")
  end

  return offset, value
end

-- Security Alt ID
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id = {}

-- Dissect: Security Alt ID
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_alt_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_alt_id, range, "")
    absent:set_text("Security Alt ID: No Value")
  end

  return offset, value
end

-- Security Alt ID Source
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id_source = {}

-- Dissect: Security Alt ID Source
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Alt ID Source was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_alt_id_source, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_alt_id_source, range, "")
    absent:set_text("Security Alt ID Source: No Value")
  end

  return offset, value
end

-- No Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings = {}

-- Dissect: No Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_underlyings, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_underlyings, range, 0)
    absent:set_text("No Underlyings: No Value")
  end

  return offset, value
end

-- Underlying Symbol
b3_b3derivatives_umdf_fast_v5_0_12.underlying_symbol = {}

-- Dissect: Underlying Symbol
b3_b3derivatives_umdf_fast_v5_0_12.underlying_symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_symbol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_symbol, range, "")
    absent:set_text("Underlying Symbol: No Value")
  end

  return offset, value
end

-- Underlying Security ID (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_sent = {}

-- Dissect: Underlying Security ID (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_id, range, UInt64(0))
    absent:set_text("Underlying Security ID: No Value")
  end

  return offset, value
end

-- Underlying Security ID (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_delta = {}

-- Dissect: Underlying Security ID (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or UInt64(0)) + UInt64.fromhex(value_delta:tohex())
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_id, range, UInt64(0))
    absent:set_text("Underlying Security ID: No Value")
  end

  return offset, value
end

-- Underlying Security ID Source (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_string = {}

-- Dissect: Underlying Security ID Source (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "8"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_id_source_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_id_source_string, range, "")
    absent:set_text("Underlying Security ID Source: No Value")
  end

  return offset, value
end

-- Underlying Security ID Source (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_u_int32 = {}

-- Dissect: Underlying Security ID Source (Constant)
b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 8

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_id_source_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_id_source_uint32, range, 0)
    absent:set_text("Underlying Security ID Source: No Value")
  end

  return offset, value
end

-- Underlying Security Exchange
b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange = {}

-- Dissect: Underlying Security Exchange
b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BVMF"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_exchange, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_security_exchange, range, "")
    absent:set_text("Underlying Security Exchange: No Value")
  end

  return offset, value
end

-- Index Pct
b3_b3derivatives_umdf_fast_v5_0_12.index_pct = {}

-- Display: Index Pct
b3_b3derivatives_umdf_fast_v5_0_12.index_pct.display = function(value)
  if value == nil then
    return "Index Pct: No Value"
  end

  return "Index Pct: "..value
end

-- Dissect: Index Pct
b3_b3derivatives_umdf_fast_v5_0_12.index_pct.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    state.values[key[1]] = exponent
  else
    exponent = state.values[key[1]]
  end


  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.index_pct.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_pct, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_pct, range, value, display)
  end

  return offset, value
end

-- Index Theoretical Qty
b3_b3derivatives_umdf_fast_v5_0_12.index_theoretical_qty = {}

-- Display: Index Theoretical Qty
b3_b3derivatives_umdf_fast_v5_0_12.index_theoretical_qty.display = function(value)
  if value == nil then
    return "Index Theoretical Qty: No Value"
  end

  return "Index Theoretical Qty: "..value
end

-- Dissect: Index Theoretical Qty
b3_b3derivatives_umdf_fast_v5_0_12.index_theoretical_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    state.values[key[1]] = exponent
  else
    exponent = state.values[key[1]]
  end


  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.index_theoretical_qty.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_theoretical_qty, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_theoretical_qty, range, value, display)
  end

  return offset, value
end

-- Implied Market Indicator
b3_b3derivatives_umdf_fast_v5_0_12.implied_market_indicator = {}

-- Dissect: Implied Market Indicator
b3_b3derivatives_umdf_fast_v5_0_12.implied_market_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.implied_market_indicator, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.implied_market_indicator, range, 0)
    absent:set_text("Implied Market Indicator: No Value")
  end

  return offset, value
end

-- No Instr Attrib
b3_b3derivatives_umdf_fast_v5_0_12.no_instr_attrib = {}

-- Dissect: No Instr Attrib
b3_b3derivatives_umdf_fast_v5_0_12.no_instr_attrib.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_instr_attrib, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_instr_attrib, range, 0)
    absent:set_text("No Instr Attrib: No Value")
  end

  return offset, value
end

-- Inst Attrib Type
b3_b3derivatives_umdf_fast_v5_0_12.inst_attrib_type = {}

-- Dissect: Inst Attrib Type
b3_b3derivatives_umdf_fast_v5_0_12.inst_attrib_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.inst_attrib_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.inst_attrib_type, range, 0)
    absent:set_text("Inst Attrib Type: No Value")
  end

  return offset, value
end

-- Inst Attrib Value
b3_b3derivatives_umdf_fast_v5_0_12.inst_attrib_value = {}

-- Dissect: Inst Attrib Value
b3_b3derivatives_umdf_fast_v5_0_12.inst_attrib_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.inst_attrib_value, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.inst_attrib_value, range, "")
    absent:set_text("Inst Attrib Value: No Value")
  end

  return offset, value
end

-- No Tick Rules
b3_b3derivatives_umdf_fast_v5_0_12.no_tick_rules = {}

-- Dissect: No Tick Rules
b3_b3derivatives_umdf_fast_v5_0_12.no_tick_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_tick_rules, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_tick_rules, range, 0)
    absent:set_text("No Tick Rules: No Value")
  end

  return offset, value
end

-- Start Tick Price Range
b3_b3derivatives_umdf_fast_v5_0_12.start_tick_price_range = {}

-- Display: Start Tick Price Range
b3_b3derivatives_umdf_fast_v5_0_12.start_tick_price_range.display = function(value)
  if value == nil then
    return "Start Tick Price Range: No Value"
  end

  return "Start Tick Price Range: "..value
end

-- Dissect: Start Tick Price Range
b3_b3derivatives_umdf_fast_v5_0_12.start_tick_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    state.values[key[1]] = exponent
  else
    exponent = state.values[key[1]]
  end


  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.start_tick_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.start_tick_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.start_tick_price_range, range, value, display)
  end

  return offset, value
end

-- End Tick Price Range
b3_b3derivatives_umdf_fast_v5_0_12.end_tick_price_range = {}

-- Display: End Tick Price Range
b3_b3derivatives_umdf_fast_v5_0_12.end_tick_price_range.display = function(value)
  if value == nil then
    return "End Tick Price Range: No Value"
  end

  return "End Tick Price Range: "..value
end

-- Dissect: End Tick Price Range
b3_b3derivatives_umdf_fast_v5_0_12.end_tick_price_range.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    state.values[key[1]] = exponent
  else
    exponent = state.values[key[1]]
  end


  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.end_tick_price_range.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.end_tick_price_range, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.end_tick_price_range, range, value, display)
  end

  return offset, value
end

-- Tick Increment
b3_b3derivatives_umdf_fast_v5_0_12.tick_increment = {}

-- Display: Tick Increment
b3_b3derivatives_umdf_fast_v5_0_12.tick_increment.display = function(value)
  if value == nil then
    return "Tick Increment: No Value"
  end

  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
b3_b3derivatives_umdf_fast_v5_0_12.tick_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    state.values[key[1]] = exponent
  else
    exponent = state.values[key[1]]
  end


  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.tick_increment.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_increment, range, value, display)
  end

  return offset, value
end

-- Tick Rule Type
b3_b3derivatives_umdf_fast_v5_0_12.tick_rule_type = {}

-- Dissect: Tick Rule Type
b3_b3derivatives_umdf_fast_v5_0_12.tick_rule_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_rule_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_rule_type, range, 0)
    absent:set_text("Tick Rule Type: No Value")
  end

  return offset, value
end

-- No Legs
b3_b3derivatives_umdf_fast_v5_0_12.no_legs = {}

-- Dissect: No Legs
b3_b3derivatives_umdf_fast_v5_0_12.no_legs.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_legs, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_legs, range, 0)
    absent:set_text("No Legs: No Value")
  end

  return offset, value
end

-- Leg Symbol
b3_b3derivatives_umdf_fast_v5_0_12.leg_symbol = {}

-- Dissect: Leg Symbol
b3_b3derivatives_umdf_fast_v5_0_12.leg_symbol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_symbol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_symbol, range, "")
    absent:set_text("Leg Symbol: No Value")
  end

  return offset, value
end

-- Leg Security ID
b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id = {}

-- Dissect: Leg Security ID
b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_id, range, UInt64(0))
    absent:set_text("Leg Security ID: No Value")
  end

  return offset, value
end

-- Leg Security ID Source
b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id_source = {}

-- Dissect: Leg Security ID Source
b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "8"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_id_source, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_id_source, range, "")
    absent:set_text("Leg Security ID Source: No Value")
  end

  return offset, value
end

-- Leg Ratio Qty
b3_b3derivatives_umdf_fast_v5_0_12.leg_ratio_qty = {}

-- Dissect: Leg Ratio Qty
b3_b3derivatives_umdf_fast_v5_0_12.leg_ratio_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_signed(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Leg Ratio Qty was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_ratio_qty, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_ratio_qty, range, 0)
    absent:set_text("Leg Ratio Qty: No Value")
  end

  return offset, value
end

-- Leg Security Type
b3_b3derivatives_umdf_fast_v5_0_12.leg_security_type = {}

-- Dissect: Leg Security Type
b3_b3derivatives_umdf_fast_v5_0_12.leg_security_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_type, range, "")
    absent:set_text("Leg Security Type: No Value")
  end

  return offset, value
end

-- Leg Side
b3_b3derivatives_umdf_fast_v5_0_12.leg_side = {}

-- Dissect: Leg Side
b3_b3derivatives_umdf_fast_v5_0_12.leg_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_side, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_side, range, 0)
    absent:set_text("Leg Side: No Value")
  end

  return offset, value
end

-- Leg Security Exchange
b3_b3derivatives_umdf_fast_v5_0_12.leg_security_exchange = {}

-- Dissect: Leg Security Exchange
b3_b3derivatives_umdf_fast_v5_0_12.leg_security_exchange.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BVMF"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_exchange, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_security_exchange, range, "")
    absent:set_text("Leg Security Exchange: No Value")
  end

  return offset, value
end

-- Security Update Action
b3_b3derivatives_umdf_fast_v5_0_12.security_update_action = {}

-- Dissect: Security Update Action
b3_b3derivatives_umdf_fast_v5_0_12.security_update_action.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_update_action, range, "")
    absent:set_text("Security Update Action: No Value")
  end

  return offset, value
end

-- No Lot Type Rules
b3_b3derivatives_umdf_fast_v5_0_12.no_lot_type_rules = {}

-- Dissect: No Lot Type Rules
b3_b3derivatives_umdf_fast_v5_0_12.no_lot_type_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_lot_type_rules, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_lot_type_rules, range, 0)
    absent:set_text("No Lot Type Rules: No Value")
  end

  return offset, value
end

-- Lot Type
b3_b3derivatives_umdf_fast_v5_0_12.lot_type = {}

-- Dissect: Lot Type
b3_b3derivatives_umdf_fast_v5_0_12.lot_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.lot_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.lot_type, range, 0)
    absent:set_text("Lot Type: No Value")
  end

  return offset, value
end

-- Min Lot Size
b3_b3derivatives_umdf_fast_v5_0_12.min_lot_size = {}

-- Dissect: Min Lot Size
b3_b3derivatives_umdf_fast_v5_0_12.min_lot_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_lot_size, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_lot_size, range, 0)
    absent:set_text("Min Lot Size: No Value")
  end

  return offset, value
end

-- Min Price Increment (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_optional = {}

-- Display: Min Price Increment (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_optional.display = function(value)
  if value == nil then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Dissect: Min Price Increment (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    state.values[key[1]] = exponent
  else
    exponent = state.values[key[1]]
  end


  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_price_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_price_increment, range, value, display)
  end

  return offset, value
end

-- Min Price Increment (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_required = {}

-- Display: Min Price Increment (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_required.display = function(value)
  if value == nil then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Dissect: Min Price Increment (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
    state.values[key[1]] = exponent
  else
    exponent = state.values[key[1]]
  end

  if exponent == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Min Price Increment Exponent was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_required.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_price_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_price_increment, range, value, display)
  end

  return offset, value
end

-- Tick Size Denominator (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.tick_size_denominator_sent_optional = {}

-- Dissect: Tick Size Denominator (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.tick_size_denominator_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_size_denominator, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_size_denominator, range, 0)
    absent:set_text("Tick Size Denominator: No Value")
  end

  return offset, value
end

-- Tick Size Denominator (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.tick_size_denominator_sent_required = {}

-- Dissect: Tick Size Denominator (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.tick_size_denominator_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_size_denominator, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_size_denominator, range, 0)
    absent:set_text("Tick Size Denominator: No Value")
  end

  return offset, value
end

-- Price Divisor
b3_b3derivatives_umdf_fast_v5_0_12.price_divisor = {}

-- Display: Price Divisor
b3_b3derivatives_umdf_fast_v5_0_12.price_divisor.display = function(value)
  if value == nil then
    return "Price Divisor: No Value"
  end

  return "Price Divisor: "..value
end

-- Dissect: Price Divisor
b3_b3derivatives_umdf_fast_v5_0_12.price_divisor.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    state.values[key[1]] = exponent
  else
    exponent = state.values[key[1]]
  end


  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.price_divisor.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_divisor, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_divisor, range, value, display)
  end

  return offset, value
end

-- Min Order Qty (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.min_order_qty_sent_optional = {}

-- Dissect: Min Order Qty (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.min_order_qty_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_order_qty, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_order_qty, range, 0)
    absent:set_text("Min Order Qty: No Value")
  end

  return offset, value
end

-- Min Order Qty (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.min_order_qty_sent_required = {}

-- Dissect: Min Order Qty (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.min_order_qty_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_order_qty, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_order_qty, range, 0)
    absent:set_text("Min Order Qty: No Value")
  end

  return offset, value
end

-- Max Order Qty (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.max_order_qty_sent_optional = {}

-- Dissect: Max Order Qty (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.max_order_qty_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.max_order_qty_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.max_order_qty_uint64, range, UInt64(0))
    absent:set_text("Max Order Qty: No Value")
  end

  return offset, value
end

-- Max Order Qty (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.max_order_qty_sent_required = {}

-- Dissect: Max Order Qty (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.max_order_qty_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.max_order_qty_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.max_order_qty_uint32, range, 0)
    absent:set_text("Max Order Qty: No Value")
  end

  return offset, value
end

-- Multi Leg Model
b3_b3derivatives_umdf_fast_v5_0_12.multi_leg_model = {}

-- Dissect: Multi Leg Model
b3_b3derivatives_umdf_fast_v5_0_12.multi_leg_model.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.multi_leg_model, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.multi_leg_model, range, 0)
    absent:set_text("Multi Leg Model: No Value")
  end

  return offset, value
end

-- Multi Leg Price Method
b3_b3derivatives_umdf_fast_v5_0_12.multi_leg_price_method = {}

-- Dissect: Multi Leg Price Method
b3_b3derivatives_umdf_fast_v5_0_12.multi_leg_price_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.multi_leg_price_method, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.multi_leg_price_method, range, 0)
    absent:set_text("Multi Leg Price Method: No Value")
  end

  return offset, value
end

-- Currency (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.currency_sent_optional = {}

-- Dissect: Currency (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.currency_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Currency (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.currency_sent_required = {}

-- Dissect: Currency (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.currency_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Currency (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.currency_copy = {}

-- Dissect: Currency (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.currency_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Currency (Default)
b3_b3derivatives_umdf_fast_v5_0_12.currency_default = {}

-- Dissect: Currency (Default)
b3_b3derivatives_umdf_fast_v5_0_12.currency_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Settl Currency (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.settl_currency_sent_optional = {}

-- Dissect: Settl Currency (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.settl_currency_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_currency, range, "")
    absent:set_text("Settl Currency: No Value")
  end

  return offset, value
end

-- Settl Currency (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.settl_currency_sent_required = {}

-- Dissect: Settl Currency (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.settl_currency_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_currency, range, "")
    absent:set_text("Settl Currency: No Value")
  end

  return offset, value
end

-- Product
b3_b3derivatives_umdf_fast_v5_0_12.product = {}

-- Dissect: Product
b3_b3derivatives_umdf_fast_v5_0_12.product.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.product, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.product, range, 0)
    absent:set_text("Product: No Value")
  end

  return offset, value
end

-- Security Type
b3_b3derivatives_umdf_fast_v5_0_12.security_type = {}

-- Dissect: Security Type
b3_b3derivatives_umdf_fast_v5_0_12.security_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_type, range, "")
    absent:set_text("Security Type: No Value")
  end

  return offset, value
end

-- Security Sub Type
b3_b3derivatives_umdf_fast_v5_0_12.security_sub_type = {}

-- Dissect: Security Sub Type
b3_b3derivatives_umdf_fast_v5_0_12.security_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_sub_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_sub_type, range, "")
    absent:set_text("Security Sub Type: No Value")
  end

  return offset, value
end

-- Security Strategy Type
b3_b3derivatives_umdf_fast_v5_0_12.security_strategy_type = {}

-- Dissect: Security Strategy Type
b3_b3derivatives_umdf_fast_v5_0_12.security_strategy_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_strategy_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_strategy_type, range, "")
    absent:set_text("Security Strategy Type: No Value")
  end

  return offset, value
end

-- Asset (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.asset_sent_optional = {}

-- Dissect: Asset (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.asset_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.asset, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.asset, range, "")
    absent:set_text("Asset: No Value")
  end

  return offset, value
end

-- Asset (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.asset_sent_required = {}

-- Dissect: Asset (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.asset_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.asset, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.asset, range, "")
    absent:set_text("Asset: No Value")
  end

  return offset, value
end

-- Security Desc
b3_b3derivatives_umdf_fast_v5_0_12.security_desc = {}

-- Dissect: Security Desc
b3_b3derivatives_umdf_fast_v5_0_12.security_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_desc, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_desc, range, "")
    absent:set_text("Security Desc: No Value")
  end

  return offset, value
end

-- No Share Issued
b3_b3derivatives_umdf_fast_v5_0_12.no_share_issued = {}

-- Dissect: No Share Issued
b3_b3derivatives_umdf_fast_v5_0_12.no_share_issued.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_share_issued, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_share_issued, range, UInt64(0))
    absent:set_text("No Share Issued: No Value")
  end

  return offset, value
end

-- Maturity Date
b3_b3derivatives_umdf_fast_v5_0_12.maturity_date = {}

-- Dissect: Maturity Date
b3_b3derivatives_umdf_fast_v5_0_12.maturity_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.maturity_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.maturity_date, range, 0)
    absent:set_text("Maturity Date: No Value")
  end

  return offset, value
end

-- Maturity Month Year
b3_b3derivatives_umdf_fast_v5_0_12.maturity_month_year = {}

-- Dissect: Maturity Month Year
b3_b3derivatives_umdf_fast_v5_0_12.maturity_month_year.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.maturity_month_year, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.maturity_month_year, range, 0)
    absent:set_text("Maturity Month Year: No Value")
  end

  return offset, value
end

-- Strike Price
b3_b3derivatives_umdf_fast_v5_0_12.strike_price = {}

-- Display: Strike Price
b3_b3derivatives_umdf_fast_v5_0_12.strike_price.display = function(value)
  if value == nil then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
b3_b3derivatives_umdf_fast_v5_0_12.strike_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    state.values[key[1]] = exponent
  else
    exponent = state.values[key[1]]
  end


  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.strike_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.strike_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.strike_price, range, value, display)
  end

  return offset, value
end

-- Strike Currency
b3_b3derivatives_umdf_fast_v5_0_12.strike_currency = {}

-- Dissect: Strike Currency
b3_b3derivatives_umdf_fast_v5_0_12.strike_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.strike_currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.strike_currency, range, "")
    absent:set_text("Strike Currency: No Value")
  end

  return offset, value
end

-- Exercise Style
b3_b3derivatives_umdf_fast_v5_0_12.exercise_style = {}

-- Dissect: Exercise Style
b3_b3derivatives_umdf_fast_v5_0_12.exercise_style.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.exercise_style, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.exercise_style, range, 0)
    absent:set_text("Exercise Style: No Value")
  end

  return offset, value
end

-- Put Or Call
b3_b3derivatives_umdf_fast_v5_0_12.put_or_call = {}

-- Dissect: Put Or Call
b3_b3derivatives_umdf_fast_v5_0_12.put_or_call.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.put_or_call, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.put_or_call, range, 0)
    absent:set_text("Put Or Call: No Value")
  end

  return offset, value
end

-- Contract Multiplier (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_optional = {}

-- Display: Contract Multiplier (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_optional.display = function(value)
  if value == nil then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
    state.values[key[1]] = exponent
  else
    exponent = state.values[key[1]]
  end


  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.contract_multiplier, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.contract_multiplier, range, value, display)
  end

  return offset, value
end

-- Contract Multiplier (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_required = {}

-- Display: Contract Multiplier (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_required.display = function(value)
  if value == nil then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
    state.values[key[1]] = exponent
  else
    exponent = state.values[key[1]]
  end

  if exponent == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Contract Multiplier Exponent was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_required.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.contract_multiplier, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.contract_multiplier, range, value, display)
  end

  return offset, value
end

-- Contract Settl Month
b3_b3derivatives_umdf_fast_v5_0_12.contract_settl_month = {}

-- Dissect: Contract Settl Month
b3_b3derivatives_umdf_fast_v5_0_12.contract_settl_month.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.contract_settl_month, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.contract_settl_month, range, 0)
    absent:set_text("Contract Settl Month: No Value")
  end

  return offset, value
end

-- CFI Code
b3_b3derivatives_umdf_fast_v5_0_12.cfi_code = {}

-- Dissect: CFI Code
b3_b3derivatives_umdf_fast_v5_0_12.cfi_code.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.cfi_code, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.cfi_code, range, "")
    absent:set_text("CFI Code: No Value")
  end

  return offset, value
end

-- Country Of Issue
b3_b3derivatives_umdf_fast_v5_0_12.country_of_issue = {}

-- Dissect: Country Of Issue
b3_b3derivatives_umdf_fast_v5_0_12.country_of_issue.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.country_of_issue, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.country_of_issue, range, "")
    absent:set_text("Country Of Issue: No Value")
  end

  return offset, value
end

-- Issue Date
b3_b3derivatives_umdf_fast_v5_0_12.issue_date = {}

-- Dissect: Issue Date
b3_b3derivatives_umdf_fast_v5_0_12.issue_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.issue_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.issue_date, range, 0)
    absent:set_text("Issue Date: No Value")
  end

  return offset, value
end

-- Dated Date (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.dated_date_sent_optional = {}

-- Dissect: Dated Date (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.dated_date_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.dated_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.dated_date, range, 0)
    absent:set_text("Dated Date: No Value")
  end

  return offset, value
end

-- Dated Date (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.dated_date_sent_required = {}

-- Dissect: Dated Date (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.dated_date_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.dated_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.dated_date, range, 0)
    absent:set_text("Dated Date: No Value")
  end

  return offset, value
end

-- Start Date
b3_b3derivatives_umdf_fast_v5_0_12.start_date = {}

-- Dissect: Start Date
b3_b3derivatives_umdf_fast_v5_0_12.start_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.start_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.start_date, range, 0)
    absent:set_text("Start Date: No Value")
  end

  return offset, value
end

-- End Date
b3_b3derivatives_umdf_fast_v5_0_12.end_date = {}

-- Dissect: End Date
b3_b3derivatives_umdf_fast_v5_0_12.end_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.end_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.end_date, range, 0)
    absent:set_text("End Date: No Value")
  end

  return offset, value
end

-- Settl Type (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.settl_type_sent = {}

-- Dissect: Settl Type (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.settl_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_type, range, "")
    absent:set_text("Settl Type: No Value")
  end

  return offset, value
end

-- Settl Type (Default)
b3_b3derivatives_umdf_fast_v5_0_12.settl_type_default = {}

-- Dissect: Settl Type (Default)
b3_b3derivatives_umdf_fast_v5_0_12.settl_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_type, range, "")
    absent:set_text("Settl Type: No Value")
  end

  return offset, value
end

-- Settl Date (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.settl_date_sent = {}

-- Dissect: Settl Date (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.settl_date_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_date, range, 0)
    absent:set_text("Settl Date: No Value")
  end

  return offset, value
end

-- Settl Date (Default)
b3_b3derivatives_umdf_fast_v5_0_12.settl_date_default = {}

-- Dissect: Settl Date (Default)
b3_b3derivatives_umdf_fast_v5_0_12.settl_date_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settl_date, range, 0)
    absent:set_text("Settl Date: No Value")
  end

  return offset, value
end

-- Security Validity Timestamp (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_validity_timestamp_sent = {}

-- Dissect: Security Validity Timestamp (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_validity_timestamp_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_validity_timestamp, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_validity_timestamp, range, UInt64(0))
    absent:set_text("Security Validity Timestamp: No Value")
  end

  return offset, value
end

-- Security Validity Timestamp (Default)
b3_b3derivatives_umdf_fast_v5_0_12.security_validity_timestamp_default = {}

-- Dissect: Security Validity Timestamp (Default)
b3_b3derivatives_umdf_fast_v5_0_12.security_validity_timestamp_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_uint64(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_validity_timestamp, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_validity_timestamp, range, UInt64(0))
    absent:set_text("Security Validity Timestamp: No Value")
  end

  return offset, value
end

-- Market Segment ID
b3_b3derivatives_umdf_fast_v5_0_12.market_segment_id = {}

-- Dissect: Market Segment ID
b3_b3derivatives_umdf_fast_v5_0_12.market_segment_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.market_segment_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.market_segment_id, range, "")
    absent:set_text("Market Segment ID: No Value")
  end

  return offset, value
end

-- Governance Indicator
b3_b3derivatives_umdf_fast_v5_0_12.governance_indicator = {}

-- Dissect: Governance Indicator
b3_b3derivatives_umdf_fast_v5_0_12.governance_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.governance_indicator, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.governance_indicator, range, "")
    absent:set_text("Governance Indicator: No Value")
  end

  return offset, value
end

-- Corporate Action Event ID
b3_b3derivatives_umdf_fast_v5_0_12.corporate_action_event_id = {}

-- Dissect: Corporate Action Event ID
b3_b3derivatives_umdf_fast_v5_0_12.corporate_action_event_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.corporate_action_event_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.corporate_action_event_id, range, 0)
    absent:set_text("Corporate Action Event ID: No Value")
  end

  return offset, value
end

-- Security Group (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_group_sent_required = {}

-- Dissect: Security Group (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_group_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_group, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_group, range, "")
    absent:set_text("Security Group: No Value")
  end

  return offset, value
end

-- Security Group (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_group_sent_optional = {}

-- Dissect: Security Group (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_group_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_group, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_group, range, "")
    absent:set_text("Security Group: No Value")
  end

  return offset, value
end

-- Security Match Type
b3_b3derivatives_umdf_fast_v5_0_12.security_match_type = {}

-- Dissect: Security Match Type
b3_b3derivatives_umdf_fast_v5_0_12.security_match_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_match_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_match_type, range, 0)
    absent:set_text("Security Match Type: No Value")
  end

  return offset, value
end

-- Leg Type
b3_b3derivatives_umdf_fast_v5_0_12.leg_type = {}

-- Dissect: Leg Type
b3_b3derivatives_umdf_fast_v5_0_12.leg_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.leg_type, range, "")
    absent:set_text("Leg Type: No Value")
  end

  return offset, value
end

-- Buyers Perspective
b3_b3derivatives_umdf_fast_v5_0_12.buyers_perspective = {}

-- Dissect: Buyers Perspective
b3_b3derivatives_umdf_fast_v5_0_12.buyers_perspective.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.buyers_perspective, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.buyers_perspective, range, "")
    absent:set_text("Buyers Perspective: No Value")
  end

  return offset, value
end

-- Round Lot
b3_b3derivatives_umdf_fast_v5_0_12.round_lot = {}

-- Dissect: Round Lot
b3_b3derivatives_umdf_fast_v5_0_12.round_lot.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.round_lot, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.round_lot, range, 0)
    absent:set_text("Round Lot: No Value")
  end

  return offset, value
end

-- Min Trade Vol
b3_b3derivatives_umdf_fast_v5_0_12.min_trade_vol = {}

-- Dissect: Min Trade Vol
b3_b3derivatives_umdf_fast_v5_0_12.min_trade_vol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_trade_vol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.min_trade_vol, range, UInt64(0))
    absent:set_text("Min Trade Vol: No Value")
  end

  return offset, value
end

-- Instrument ID
b3_b3derivatives_umdf_fast_v5_0_12.instrument_id = {}

-- Dissect: Instrument ID
b3_b3derivatives_umdf_fast_v5_0_12.instrument_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.instrument_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.instrument_id, range, "")
    absent:set_text("Instrument ID: No Value")
  end

  return offset, value
end

-- Pos Dup Flag
b3_b3derivatives_umdf_fast_v5_0_12.pos_dup_flag = {}

-- Dissect: Pos Dup Flag
b3_b3derivatives_umdf_fast_v5_0_12.pos_dup_flag.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.pos_dup_flag, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.pos_dup_flag, range, "")
    absent:set_text("Pos Dup Flag: No Value")
  end

  return offset, value
end

-- No MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries = {}

-- Dissect: No MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_md_entries, range, 0)
    absent:set_text("No MD Entries: No Value")
  end

  return offset, value
end

-- MD Update Action (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_update_action_copy_0 = {}

-- Dissect: MD Update Action (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_update_action_copy_0.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_update_action, range, 0)
    absent:set_text("MD Update Action: No Value")
  end

  return offset, value
end

-- MD Update Action (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_update_action_copy_1 = {}

-- Dissect: MD Update Action (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_update_action_copy_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "MD Update Action was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_update_action, range, 0)
    absent:set_text("MD Update Action: No Value")
  end

  return offset, value
end

-- MD Price Level (Default)
b3_b3derivatives_umdf_fast_v5_0_12.md_price_level_default = {}

-- Dissect: MD Price Level (Default)
b3_b3derivatives_umdf_fast_v5_0_12.md_price_level_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_price_level, range, 0)
    absent:set_text("MD Price Level: No Value")
  end

  return offset, value
end

-- MD Price Level (Increment)
b3_b3derivatives_umdf_fast_v5_0_12.md_price_level_increment = {}

-- Dissect: MD Price Level (Increment)
b3_b3derivatives_umdf_fast_v5_0_12.md_price_level_increment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = state.values[key]
    if value ~= nil then value = value + 1 end
  end

  state.values[key] = value


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_price_level, range, 0)
    absent:set_text("MD Price Level: No Value")
  end

  return offset, value
end

-- MD Entry Type (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_copy_j = {}

-- Dissect: MD Entry Type (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_copy_j.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "MD Entry Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_type, range, "")
    absent:set_text("MD Entry Type: No Value")
  end

  return offset, value
end

-- MD Entry Type (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_copy_0 = {}

-- Dissect: MD Entry Type (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_copy_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "MD Entry Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_type, range, "")
    absent:set_text("MD Entry Type: No Value")
  end

  return offset, value
end

-- MD Entry Type (Default)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_default = {}

-- Dissect: MD Entry Type (Default)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "2"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_type, range, "")
    absent:set_text("MD Entry Type: No Value")
  end

  return offset, value
end

-- Rpt Seq (Increment)
b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_increment_optional = {}

-- Dissect: Rpt Seq (Increment)
b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_increment_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = state.values[key]
    if value ~= nil then value = value + 1 end
  end

  state.values[key] = value


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.rpt_seq, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.rpt_seq, range, 0)
    absent:set_text("Rpt Seq: No Value")
  end

  return offset, value
end

-- Rpt Seq (Increment)
b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_increment_required = {}

-- Dissect: Rpt Seq (Increment)
b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_increment_required.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Rpt Seq was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.rpt_seq, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.rpt_seq, range, 0)
    absent:set_text("Rpt Seq: No Value")
  end

  return offset, value
end

-- Rpt Seq (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_sent = {}

-- Dissect: Rpt Seq (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.rpt_seq, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.rpt_seq, range, 0)
    absent:set_text("Rpt Seq: No Value")
  end

  return offset, value
end

-- MD Entry Px
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px = {}

-- Display: MD Entry Px
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.display = function(value)
  if value == nil then
    return "MD Entry Px: No Value"
  end

  return "MD Entry Px: "..value
end

-- Dissect: MD Entry Px
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
  else
    exponent = 0
  end

  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- MD Entry Time (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_required = {}

-- Dissect: MD Entry Time (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "MD Entry Time was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_time_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_time_uint32, range, 0)
    absent:set_text("MD Entry Time: No Value")
  end

  return offset, value
end

-- MD Entry Time (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_optional = {}

-- Dissect: MD Entry Time (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_time_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_time_string, range, "")
    absent:set_text("MD Entry Time: No Value")
  end

  return offset, value
end

-- MD Entry Size (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int32 = {}

-- Dissect: MD Entry Size (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_size_int32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_size_int32, range, 0)
    absent:set_text("MD Entry Size: No Value")
  end

  return offset, value
end

-- MD Entry Size (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int64 = {}

-- Dissect: MD Entry Size (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_int64(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or Int64(0)) + value_delta
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_size_int64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_size_int64, range, Int64(0))
    absent:set_text("MD Entry Size: No Value")
  end

  return offset, value
end

-- Quote Condition
b3_b3derivatives_umdf_fast_v5_0_12.quote_condition = {}

-- Dissect: Quote Condition
b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.quote_condition, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.quote_condition, range, "")
    absent:set_text("Quote Condition: No Value")
  end

  return offset, value
end

-- Number Of Orders (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_delta = {}

-- Dissect: Number Of Orders (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Number Of Orders (Default)
b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_default = {}

-- Dissect: Number Of Orders (Default)
b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Number Of Orders (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_copy = {}

-- Dissect: Number Of Orders (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Trading Session ID (Default)
b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_default = {}

-- Dissect: Trading Session ID (Default)
b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = "2"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_session_id_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_session_id_string, range, "")
    absent:set_text("Trading Session ID: No Value")
  end

  return offset, value
end

-- Trading Session ID (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_sent = {}

-- Dissect: Trading Session ID (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_session_id_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_session_id_uint32, range, 0)
    absent:set_text("Trading Session ID: No Value")
  end

  return offset, value
end

-- Trade Date (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_optional = {}

-- Dissect: Trade Date (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_date, range, 0)
    absent:set_text("Trade Date: No Value")
  end

  return offset, value
end

-- Trade Date (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_required = {}

-- Dissect: Trade Date (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_date, range, 0)
    absent:set_text("Trade Date: No Value")
  end

  return offset, value
end

-- MD Entry Interest Rate
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_interest_rate = {}

-- Display: MD Entry Interest Rate
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_interest_rate.display = function(value)
  if value == nil then
    return "MD Entry Interest Rate: No Value"
  end

  return "MD Entry Interest Rate: "..value
end

-- Dissect: MD Entry Interest Rate
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_interest_rate.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
  else
    exponent = -2
  end

  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_interest_rate.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_interest_rate, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_interest_rate, range, value, display)
  end

  return offset, value
end

-- Price Type (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.price_type_sent = {}

-- Dissect: Price Type (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.price_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_type, range, "")
    absent:set_text("Price Type: No Value")
  end

  return offset, value
end

-- Price Type (Default)
b3_b3derivatives_umdf_fast_v5_0_12.price_type_default = {}

-- Dissect: Price Type (Default)
b3_b3derivatives_umdf_fast_v5_0_12.price_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = "2"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_type, range, "")
    absent:set_text("Price Type: No Value")
  end

  return offset, value
end

-- MD Entry Date
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date = {}

-- Dissect: MD Entry Date
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_date, range, 0)
    absent:set_text("MD Entry Date: No Value")
  end

  return offset, value
end

-- MD Insert Date
b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date = {}

-- Dissect: MD Insert Date
b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_insert_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_insert_date, range, 0)
    absent:set_text("MD Insert Date: No Value")
  end

  return offset, value
end

-- MD Insert Time
b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time = {}

-- Dissect: MD Insert Time
b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_insert_time, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_insert_time, range, 0)
    absent:set_text("MD Insert Time: No Value")
  end

  return offset, value
end

-- MD Stream ID (Default)
b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_optional_string_field = {}

-- Dissect: MD Stream ID (Default)
b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_optional_string_field.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_stream_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_stream_id, range, "")
    absent:set_text("MD Stream ID: No Value")
  end

  return offset, value
end

-- MD Stream ID (Default)
b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_e = {}

-- Dissect: MD Stream ID (Default)
b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_e.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = "E"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_stream_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_stream_id, range, "")
    absent:set_text("MD Stream ID: No Value")
  end

  return offset, value
end

-- Net Chg Prev Day
b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day = {}

-- Display: Net Chg Prev Day
b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.display = function(value)
  if value == nil then
    return "Net Chg Prev Day: No Value"
  end

  return "Net Chg Prev Day: "..value
end

-- Dissect: Net Chg Prev Day
b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
  else
    exponent = nil
  end

  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.net_chg_prev_day, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.net_chg_prev_day, range, value, display)
  end

  return offset, value
end

-- Seller Days
b3_b3derivatives_umdf_fast_v5_0_12.seller_days = {}

-- Dissect: Seller Days
b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.seller_days, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.seller_days, range, 0)
    absent:set_text("Seller Days: No Value")
  end

  return offset, value
end

-- Trade Volume (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64 = {}

-- Dissect: Trade Volume (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_nullable_int64(buffer, offset)

  if value_delta ~= nil then
    value = (state.values[key] or UInt64(0)) + UInt64.fromhex(value_delta:tohex())
    state.values[key] = value
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_volume_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_volume_uint64, range, UInt64(0))
    absent:set_text("Trade Volume: No Value")
  end

  return offset, value
end

-- Trade Volume (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int32 = {}

-- Dissect: Trade Volume (Delta)
b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_volume_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_volume_uint32, range, 0)
    absent:set_text("Trade Volume: No Value")
  end

  return offset, value
end

-- Tick Direction
b3_b3derivatives_umdf_fast_v5_0_12.tick_direction = {}

-- Dissect: Tick Direction
b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_direction, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_direction, range, "")
    absent:set_text("Tick Direction: No Value")
  end

  return offset, value
end

-- Trade Condition (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_sent = {}

-- Dissect: Trade Condition (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_condition, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_condition, range, "")
    absent:set_text("Trade Condition: No Value")
  end

  return offset, value
end

-- Trade Condition (Default)
b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_default = {}

-- Dissect: Trade Condition (Default)
b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_condition, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_condition, range, "")
    absent:set_text("Trade Condition: No Value")
  end

  return offset, value
end

-- Open Close Settl Flag (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_sent_optional_u_int32 = {}

-- Dissect: Open Close Settl Flag (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_sent_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settl_flag_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settl_flag_uint32, range, 0)
    absent:set_text("Open Close Settl Flag: No Value")
  end

  return offset, value
end

-- Open Close Settl Flag (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_sent_optional_string = {}

-- Dissect: Open Close Settl Flag (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_sent_optional_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settl_flag_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settl_flag_string, range, "")
    absent:set_text("Open Close Settl Flag: No Value")
  end

  return offset, value
end

-- Open Close Settl Flag (Default)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_default_optional_u_int32 = {}

-- Dissect: Open Close Settl Flag (Default)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_default_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settl_flag_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settl_flag_uint32, range, 0)
    absent:set_text("Open Close Settl Flag: No Value")
  end

  return offset, value
end

-- Open Close Settl Flag (Default)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_default_optional_string = {}

-- Dissect: Open Close Settl Flag (Default)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_default_optional_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settl_flag_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settl_flag_string, range, "")
    absent:set_text("Open Close Settl Flag: No Value")
  end

  return offset, value
end

-- Order ID
b3_b3derivatives_umdf_fast_v5_0_12.order_id = {}

-- Dissect: Order ID
b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.order_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.order_id, range, "")
    absent:set_text("Order ID: No Value")
  end

  return offset, value
end

-- Trade ID
b3_b3derivatives_umdf_fast_v5_0_12.trade_id = {}

-- Dissect: Trade ID
b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trade_id, range, "")
    absent:set_text("Trade ID: No Value")
  end

  return offset, value
end

-- MD Entry Buyer
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer = {}

-- Dissect: MD Entry Buyer
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_buyer, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_buyer, range, "")
    absent:set_text("MD Entry Buyer: No Value")
  end

  return offset, value
end

-- MD Entry Seller
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller = {}

-- Dissect: MD Entry Seller
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_seller, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_seller, range, "")
    absent:set_text("MD Entry Seller: No Value")
  end

  return offset, value
end

-- MD Entry Position No
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no = {}

-- Dissect: MD Entry Position No
b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_position_no, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_entry_position_no, range, 0)
    absent:set_text("MD Entry Position No: No Value")
  end

  return offset, value
end

-- Sett Price Type (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.sett_price_type_sent = {}

-- Dissect: Sett Price Type (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.sett_price_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.sett_price_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.sett_price_type, range, 0)
    absent:set_text("Sett Price Type: No Value")
  end

  return offset, value
end

-- Sett Price Type (Default)
b3_b3derivatives_umdf_fast_v5_0_12.sett_price_type_default = {}

-- Dissect: Sett Price Type (Default)
b3_b3derivatives_umdf_fast_v5_0_12.sett_price_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.sett_price_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.sett_price_type, range, 0)
    absent:set_text("Sett Price Type: No Value")
  end

  return offset, value
end

-- Last Trade Date
b3_b3derivatives_umdf_fast_v5_0_12.last_trade_date = {}

-- Dissect: Last Trade Date
b3_b3derivatives_umdf_fast_v5_0_12.last_trade_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.last_trade_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.last_trade_date, range, 0)
    absent:set_text("Last Trade Date: No Value")
  end

  return offset, value
end

-- Price Adjustment Method
b3_b3derivatives_umdf_fast_v5_0_12.price_adjustment_method = {}

-- Dissect: Price Adjustment Method
b3_b3derivatives_umdf_fast_v5_0_12.price_adjustment_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_adjustment_method, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_adjustment_method, range, 0)
    absent:set_text("Price Adjustment Method: No Value")
  end

  return offset, value
end

-- Price Band Type
b3_b3derivatives_umdf_fast_v5_0_12.price_band_type = {}

-- Dissect: Price Band Type
b3_b3derivatives_umdf_fast_v5_0_12.price_band_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_band_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_band_type, range, "")
    absent:set_text("Price Band Type: No Value")
  end

  return offset, value
end

-- Price Limit Type
b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type = {}

-- Dissect: Price Limit Type
b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_limit_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_limit_type, range, 0)
    absent:set_text("Price Limit Type: No Value")
  end

  return offset, value
end

-- Low Limit Price
b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price = {}

-- Display: Low Limit Price
b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.display = function(value)
  if value == nil then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Dissect: Low Limit Price
b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
  else
    exponent = nil
  end

  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.low_limit_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.low_limit_price, range, value, display)
  end

  return offset, value
end

-- High Limit Price
b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price = {}

-- Display: High Limit Price
b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.display = function(value)
  if value == nil then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Dissect: High Limit Price
b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
  else
    exponent = nil
  end

  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.high_limit_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.high_limit_price, range, value, display)
  end

  return offset, value
end

-- Trading Reference Price
b3_b3derivatives_umdf_fast_v5_0_12.trading_reference_price = {}

-- Display: Trading Reference Price
b3_b3derivatives_umdf_fast_v5_0_12.trading_reference_price.display = function(value)
  if value == nil then
    return "Trading Reference Price: No Value"
  end

  return "Trading Reference Price: "..value
end

-- Dissect: Trading Reference Price
b3_b3derivatives_umdf_fast_v5_0_12.trading_reference_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
  else
    exponent = nil
  end

  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.trading_reference_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_reference_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_reference_price, range, value, display)
  end

  return offset, value
end

-- Price Band Midpoint Price Type
b3_b3derivatives_umdf_fast_v5_0_12.price_band_midpoint_price_type = {}

-- Dissect: Price Band Midpoint Price Type
b3_b3derivatives_umdf_fast_v5_0_12.price_band_midpoint_price_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_band_midpoint_price_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.price_band_midpoint_price_type, range, 0)
    absent:set_text("Price Band Midpoint Price Type: No Value")
  end

  return offset, value
end

-- Avg Daily Traded Qty
b3_b3derivatives_umdf_fast_v5_0_12.avg_daily_traded_qty = {}

-- Dissect: Avg Daily Traded Qty
b3_b3derivatives_umdf_fast_v5_0_12.avg_daily_traded_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.avg_daily_traded_qty, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.avg_daily_traded_qty, range, UInt64(0))
    absent:set_text("Avg Daily Traded Qty: No Value")
  end

  return offset, value
end

-- Expire Date
b3_b3derivatives_umdf_fast_v5_0_12.expire_date = {}

-- Dissect: Expire Date
b3_b3derivatives_umdf_fast_v5_0_12.expire_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.expire_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.expire_date, range, UInt64(0))
    absent:set_text("Expire Date: No Value")
  end

  return offset, value
end

-- Early Termination
b3_b3derivatives_umdf_fast_v5_0_12.early_termination = {}

-- Dissect: Early Termination
b3_b3derivatives_umdf_fast_v5_0_12.early_termination.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.early_termination, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.early_termination, range, UInt64(0))
    absent:set_text("Early Termination: No Value")
  end

  return offset, value
end

-- BTB Cert Indicator
b3_b3derivatives_umdf_fast_v5_0_12.btb_cert_indicator = {}

-- Dissect: BTB Cert Indicator
b3_b3derivatives_umdf_fast_v5_0_12.btb_cert_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.btb_cert_indicator, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.btb_cert_indicator, range, 0)
    absent:set_text("BTB Cert Indicator: No Value")
  end

  return offset, value
end

-- BTB Contract Info
b3_b3derivatives_umdf_fast_v5_0_12.btb_contract_info = {}

-- Dissect: BTB Contract Info
b3_b3derivatives_umdf_fast_v5_0_12.btb_contract_info.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.btb_contract_info, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.btb_contract_info, range, 0)
    absent:set_text("BTB Contract Info: No Value")
  end

  return offset, value
end

-- BTB Grace Date
b3_b3derivatives_umdf_fast_v5_0_12.btb_grace_date = {}

-- Dissect: BTB Grace Date
b3_b3derivatives_umdf_fast_v5_0_12.btb_grace_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.btb_grace_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.btb_grace_date, range, 0)
    absent:set_text("BTB Grace Date: No Value")
  end

  return offset, value
end

-- Max Trade Vol
b3_b3derivatives_umdf_fast_v5_0_12.max_trade_vol = {}

-- Dissect: Max Trade Vol
b3_b3derivatives_umdf_fast_v5_0_12.max_trade_vol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.max_trade_vol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.max_trade_vol, range, UInt64(0))
    absent:set_text("Max Trade Vol: No Value")
  end

  return offset, value
end

-- Underlying Px
b3_b3derivatives_umdf_fast_v5_0_12.underlying_px = {}

-- Display: Underlying Px
b3_b3derivatives_umdf_fast_v5_0_12.underlying_px.display = function(value)
  if value == nil then
    return "Underlying Px: No Value"
  end

  return "Underlying Px: "..value
end

-- Dissect: Underlying Px
b3_b3derivatives_umdf_fast_v5_0_12.underlying_px.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_stop_bit_signed(buffer, offset)
  else
    exponent = -2
  end

  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_px, range, value, display)
  end

  return offset, value
end

-- Underlying Px Type
b3_b3derivatives_umdf_fast_v5_0_12.underlying_px_type = {}

-- Dissect: Underlying Px Type
b3_b3derivatives_umdf_fast_v5_0_12.underlying_px_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_px_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.underlying_px_type, range, 0)
    absent:set_text("Underlying Px Type: No Value")
  end

  return offset, value
end

-- Index Seq (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.index_seq_sent_optional_u_int64 = {}

-- Dissect: Index Seq (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.index_seq_sent_optional_u_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_seq_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_seq_uint64, range, UInt64(0))
    absent:set_text("Index Seq: No Value")
  end

  return offset, value
end

-- Index Seq (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.index_seq_sent_optional_u_int32 = {}

-- Dissect: Index Seq (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.index_seq_sent_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_seq_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.index_seq_uint32, range, 0)
    absent:set_text("Index Seq: No Value")
  end

  return offset, value
end

-- Open Close Settle Flag (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settle_flag_sent = {}

-- Dissect: Open Close Settle Flag (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settle_flag_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settle_flag_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settle_flag_uint32, range, 0)
    absent:set_text("Open Close Settle Flag: No Value")
  end

  return offset, value
end

-- Open Close Settle Flag (Default)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settle_flag_default = {}

-- Dissect: Open Close Settle Flag (Default)
b3_b3derivatives_umdf_fast_v5_0_12.open_close_settle_flag_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settle_flag_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.open_close_settle_flag_string, range, "")
    absent:set_text("Open Close Settle Flag: No Value")
  end

  return offset, value
end

-- Settle Price Type (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.settle_price_type_sent = {}

-- Dissect: Settle Price Type (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.settle_price_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settle_price_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settle_price_type, range, 0)
    absent:set_text("Settle Price Type: No Value")
  end

  return offset, value
end

-- Settle Price Type (Default)
b3_b3derivatives_umdf_fast_v5_0_12.settle_price_type_default = {}

-- Dissect: Settle Price Type (Default)
b3_b3derivatives_umdf_fast_v5_0_12.settle_price_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settle_price_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.settle_price_type, range, 0)
    absent:set_text("Settle Price Type: No Value")
  end

  return offset, value
end

-- Trading Ref Price
b3_b3derivatives_umdf_fast_v5_0_12.trading_ref_price = {}

-- Display: Trading Ref Price
b3_b3derivatives_umdf_fast_v5_0_12.trading_ref_price.display = function(value)
  if value == nil then
    return "Trading Ref Price: No Value"
  end

  return "Trading Ref Price: "..value
end

-- Dissect: Trading Ref Price
b3_b3derivatives_umdf_fast_v5_0_12.trading_ref_price.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local exponent = nil
  local mantissa = nil

  if present[1] then
    exponent, offset = read_nullable_signed(buffer, offset)
  else
    exponent = nil
  end

  if exponent ~= nil then
    local mantissa_delta = nil
    mantissa_delta, offset = read_stop_bit_int64(buffer, offset)
    mantissa = (state.values[key[2]] or Int64(0)) + mantissa_delta
    state.values[key[2]] = mantissa
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa:tonumber() / (10 ^ -exponent)
    else
      value = mantissa:tonumber() * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdf_fast_v5_0_12.trading_ref_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_ref_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_ref_price, range, value, display)
  end

  return offset, value
end

-- Trading Session Sub ID
b3_b3derivatives_umdf_fast_v5_0_12.trading_session_sub_id = {}

-- Dissect: Trading Session Sub ID
b3_b3derivatives_umdf_fast_v5_0_12.trading_session_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_session_sub_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trading_session_sub_id, range, "")
    absent:set_text("Trading Session Sub ID: No Value")
  end

  return offset, value
end

-- Security Trading Status (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_sent = {}

-- Dissect: Security Trading Status (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_trading_status, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_trading_status, range, 0)
    absent:set_text("Security Trading Status: No Value")
  end

  return offset, value
end

-- Security Trading Status (Default)
b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_default = {}

-- Dissect: Security Trading Status (Default)
b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_trading_status, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_trading_status, range, 0)
    absent:set_text("Security Trading Status: No Value")
  end

  return offset, value
end

-- Trad Ses Open Time (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_sent = {}

-- Dissect: Trad Ses Open Time (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trad_ses_open_time_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trad_ses_open_time_uint64, range, UInt64(0))
    absent:set_text("Trad Ses Open Time: No Value")
  end

  return offset, value
end

-- Trad Ses Open Time (Default)
b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_default_optional_u_int32 = {}

-- Dissect: Trad Ses Open Time (Default)
b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_default_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trad_ses_open_time_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trad_ses_open_time_uint32, range, 0)
    absent:set_text("Trad Ses Open Time: No Value")
  end

  return offset, value
end

-- Trad Ses Open Time (Default)
b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_default_optional_u_int64 = {}

-- Dissect: Trad Ses Open Time (Default)
b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_default_optional_u_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_uint64(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trad_ses_open_time_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.trad_ses_open_time_uint64, range, UInt64(0))
    absent:set_text("Trad Ses Open Time: No Value")
  end

  return offset, value
end

-- Transact Time
b3_b3derivatives_umdf_fast_v5_0_12.transact_time = {}

-- Dissect: Transact Time
b3_b3derivatives_umdf_fast_v5_0_12.transact_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.transact_time, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.transact_time, range, UInt64(0))
    absent:set_text("Transact Time: No Value")
  end

  return offset, value
end

-- Security Trading Event
b3_b3derivatives_umdf_fast_v5_0_12.security_trading_event = {}

-- Dissect: Security Trading Event
b3_b3derivatives_umdf_fast_v5_0_12.security_trading_event.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_trading_event, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_trading_event, range, 0)
    absent:set_text("Security Trading Event: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed
b3_b3derivatives_umdf_fast_v5_0_12.last_msg_seq_num_processed = {}

-- Dissect: Last Msg Seq Num Processed
b3_b3derivatives_umdf_fast_v5_0_12.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Tot Num Reports
b3_b3derivatives_umdf_fast_v5_0_12.tot_num_reports = {}

-- Dissect: Tot Num Reports
b3_b3derivatives_umdf_fast_v5_0_12.tot_num_reports.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tot_num_reports, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tot_num_reports, range, 0)
    absent:set_text("Tot Num Reports: No Value")
  end

  return offset, value
end

-- Curerncy
b3_b3derivatives_umdf_fast_v5_0_12.curerncy = {}

-- Dissect: Curerncy
b3_b3derivatives_umdf_fast_v5_0_12.curerncy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.curerncy, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.curerncy, range, "")
    absent:set_text("Curerncy: No Value")
  end

  return offset, value
end

-- Day Cum Qty
b3_b3derivatives_umdf_fast_v5_0_12.day_cum_qty = {}

-- Dissect: Day Cum Qty
b3_b3derivatives_umdf_fast_v5_0_12.day_cum_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.day_cum_qty, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.day_cum_qty, range, 0)
    absent:set_text("Day Cum Qty: No Value")
  end

  return offset, value
end

-- Orig Time (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.orig_time_copy = {}

-- Dissect: Orig Time (Copy)
b3_b3derivatives_umdf_fast_v5_0_12.orig_time_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.orig_time, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.orig_time, range, UInt64(0))
    absent:set_text("Orig Time: No Value")
  end

  return offset, value
end

-- Orig Time (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.orig_time_sent = {}

-- Dissect: Orig Time (Sent)
b3_b3derivatives_umdf_fast_v5_0_12.orig_time_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.orig_time, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.orig_time, range, UInt64(0))
    absent:set_text("Orig Time: No Value")
  end

  return offset, value
end

-- News Source
b3_b3derivatives_umdf_fast_v5_0_12.news_source = {}

-- Dissect: News Source
b3_b3derivatives_umdf_fast_v5_0_12.news_source.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.news_source, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.news_source, range, "")
    absent:set_text("News Source: No Value")
  end

  return offset, value
end

-- News ID
b3_b3derivatives_umdf_fast_v5_0_12.news_id = {}

-- Dissect: News ID
b3_b3derivatives_umdf_fast_v5_0_12.news_id.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.news_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.news_id, range, "")
    absent:set_text("News ID: No Value")
  end

  return offset, value
end

-- Language Code
b3_b3derivatives_umdf_fast_v5_0_12.language_code = {}

-- Dissect: Language Code
b3_b3derivatives_umdf_fast_v5_0_12.language_code.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.language_code, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.language_code, range, "")
    absent:set_text("Language Code: No Value")
  end

  return offset, value
end

-- Headline
b3_b3derivatives_umdf_fast_v5_0_12.headline = {}

-- Dissect: Headline
b3_b3derivatives_umdf_fast_v5_0_12.headline.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.headline, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.headline, range, "")
    absent:set_text("Headline: No Value")
  end

  return offset, value
end

-- URL Link
b3_b3derivatives_umdf_fast_v5_0_12.url_link = {}

-- Dissect: URL Link
b3_b3derivatives_umdf_fast_v5_0_12.url_link.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.url_link, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.url_link, range, "")
    absent:set_text("URL Link: No Value")
  end

  return offset, value
end

-- Encoded Headline Len
b3_b3derivatives_umdf_fast_v5_0_12.encoded_headline_len = {}

-- Dissect: Encoded Headline Len
b3_b3derivatives_umdf_fast_v5_0_12.encoded_headline_len.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_headline_len, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_headline_len, range, 0)
    absent:set_text("Encoded Headline Len: No Value")
  end

  return offset, value
end

-- Encoded Headline
b3_b3derivatives_umdf_fast_v5_0_12.encoded_headline = {}

-- Dissect: Encoded Headline
b3_b3derivatives_umdf_fast_v5_0_12.encoded_headline.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_headline, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_headline, range, "")
    absent:set_text("Encoded Headline: No Value")
  end

  return offset, value
end

-- No Lines Of Text
b3_b3derivatives_umdf_fast_v5_0_12.no_lines_of_text = {}

-- Dissect: No Lines Of Text
b3_b3derivatives_umdf_fast_v5_0_12.no_lines_of_text.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_lines_of_text, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_lines_of_text, range, 0)
    absent:set_text("No Lines Of Text: No Value")
  end

  return offset, value
end

-- Encoded Text Len
b3_b3derivatives_umdf_fast_v5_0_12.encoded_text_len = {}

-- Dissect: Encoded Text Len
b3_b3derivatives_umdf_fast_v5_0_12.encoded_text_len.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_text_len, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_text_len, range, 0)
    absent:set_text("Encoded Text Len: No Value")
  end

  return offset, value
end

-- Encoded Text
b3_b3derivatives_umdf_fast_v5_0_12.encoded_text = {}

-- Dissect: Encoded Text
b3_b3derivatives_umdf_fast_v5_0_12.encoded_text.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_text, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encoded_text, range, "")
    absent:set_text("Encoded Text: No Value")
  end

  return offset, value
end

-- No Routing IDs
b3_b3derivatives_umdf_fast_v5_0_12.no_routing_ids = {}

-- Dissect: No Routing IDs
b3_b3derivatives_umdf_fast_v5_0_12.no_routing_ids.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_routing_ids, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.no_routing_ids, range, 0)
    absent:set_text("No Routing IDs: No Value")
  end

  return offset, value
end

-- Routing Type
b3_b3derivatives_umdf_fast_v5_0_12.routing_type = {}

-- Dissect: Routing Type
b3_b3derivatives_umdf_fast_v5_0_12.routing_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 2
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.routing_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.routing_type, range, 0)
    absent:set_text("Routing Type: No Value")
  end

  return offset, value
end

-- Routing ID
b3_b3derivatives_umdf_fast_v5_0_12.routing_id = {}

-- Dissect: Routing ID
b3_b3derivatives_umdf_fast_v5_0_12.routing_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.routing_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.routing_id, range, "")
    absent:set_text("Routing ID: No Value")
  end

  return offset, value
end

-- Encrypt Method
b3_b3derivatives_umdf_fast_v5_0_12.encrypt_method = {}

-- Dissect: Encrypt Method
b3_b3derivatives_umdf_fast_v5_0_12.encrypt_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 0

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encrypt_method, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.encrypt_method, range, 0)
    absent:set_text("Encrypt Method: No Value")
  end

  return offset, value
end

-- Heartbeat Int
b3_b3derivatives_umdf_fast_v5_0_12.heartbeat_int = {}

-- Dissect: Heartbeat Int
b3_b3derivatives_umdf_fast_v5_0_12.heartbeat_int.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.heartbeat_int, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.heartbeat_int, range, 0)
    absent:set_text("Heartbeat Int: No Value")
  end

  return offset, value
end

-- Default Appl Ver ID
b3_b3derivatives_umdf_fast_v5_0_12.default_appl_ver_id = {}

-- Dissect: Default Appl Ver ID
b3_b3derivatives_umdf_fast_v5_0_12.default_appl_ver_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "9"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.default_appl_ver_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.default_appl_ver_id, range, "")
    absent:set_text("Default Appl Ver ID: No Value")
  end

  return offset, value
end

-- New Seq No
b3_b3derivatives_umdf_fast_v5_0_12.new_seq_no = {}

-- Dissect: New Seq No
b3_b3derivatives_umdf_fast_v5_0_12.new_seq_no.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.new_seq_no, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.new_seq_no, range, 0)
    absent:set_text("New Seq No: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect B3 B3Derivatives Umdf Fast 5.0.12
-----------------------------------------------------------------------

-- MD Sequence Reset Message
b3_b3derivatives_umdf_fast_v5_0_12.md_sequence_reset = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_sequence_reset.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_sequence_reset
b3_b3derivatives_umdf_fast_v5_0_12.md_sequence_reset.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_appl_ver_id,
}

-- Dissect Fields: MD Sequence Reset Message
b3_b3derivatives_umdf_fast_v5_0_12.md_sequence_reset.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_4.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- New Seq No: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.new_seq_no.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Sequence Reset Message
b3_b3derivatives_umdf_fast_v5_0_12.md_sequence_reset.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_sequence_reset.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Logout_119 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_logout_119 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_logout_119.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_logout_119

-- Dissect Fields: MD Logout_119 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_logout_119.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_5.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_id_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Logout_119 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_logout_119.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_logout_119.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Logon_118 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_logon_118 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_logon_118.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_logon_118

-- Dissect Fields: MD Logon_118 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_logon_118.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_a.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_id_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encrypt Method: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.encrypt_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Heartbeat Int: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.heartbeat_int.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Default Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.default_appl_ver_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Logon_118 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_logon_118.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_logon_118.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Heartbeat_101 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_101 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_101.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_heartbeat_101
b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_101.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_pos_dup_flag,
}

-- Dissect Fields: MD Heartbeat_101 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_101.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  return index
end

-- Dissect: MD Heartbeat_101 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_101.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_101.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Heartbeat_129 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_129 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_129.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_heartbeat_129

-- Dissect Fields: MD Heartbeat_129 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_129.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Heartbeat_129 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_129.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_129.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Heartbeat_144 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_144 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_144.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_heartbeat_144

-- Dissect Fields: MD Heartbeat_144 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_144.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Heartbeat_144 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_144.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_144.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Lines Of Text
b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text = {}

-- Dissect Fields: Lines Of Text
b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Text: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.text_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:120|0:|4:Text")

  -- Encoded Text Len: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.encoded_text_len.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encoded Text: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.encoded_text.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Lines Of Text
b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.lines_of_text, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Routing Ids
b3_b3derivatives_umdf_fast_v5_0_12.routing_ids = {}

-- Dissect Fields: Routing Ids
b3_b3derivatives_umdf_fast_v5_0_12.routing_ids.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Routing Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.routing_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Routing ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.routing_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Routing Ids
b3_b3derivatives_umdf_fast_v5_0_12.routing_ids.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.routing_ids, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.routing_ids.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD News Message_120 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120_related_sym = {}

-- Dissect Fields: MD News Message_120 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120_related_sym.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:120|0:|10:SecurityID")

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD News Message_120 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120_related_sym.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_120_related_sym, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120_related_sym.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD News Message_120 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_120
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_news_source,
  [3] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_language_code,
  [4] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_headline,
  [5] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_url_link,
}

-- Dissect Fields: MD News Message_120 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_b.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Time: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.orig_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- News Source: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.news_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:120|0:|10:NewsSource")

  -- Language Code: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.language_code.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:120|0:|12:LanguageCode")

  -- Headline: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.headline.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:120|0:|8:Headline")

  -- URL Link: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.url_link.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:120|0:|7:URLLink")

  -- No Related Sym: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_related_sym_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Sym: No Related Sym entries
  local count = value or 0
  for md_news_message_120_related_sym_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120_related_sym.dissect(buffer, index, packet, parent, presence_map, base, state, md_news_message_120_related_sym_index)
  end

  -- No Routing IDs: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_routing_ids.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Routing Ids: No Routing IDs entries
  local count = value or 0
  for routing_ids_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.routing_ids.dissect(buffer, index, packet, parent, presence_map, base, state, routing_ids_index)
  end

  -- No Lines Of Text: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_lines_of_text.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lines Of Text: No Lines Of Text entries
  local count = value or 0
  for lines_of_text_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.dissect(buffer, index, packet, parent, presence_map, base, state, lines_of_text_index)
  end

  return index
end

-- Dissect: MD News Message_120 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Lines Of Text
b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text = {}

-- Dissect Fields: Lines Of Text
b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Text: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.text_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:137|0:|4:Text")

  -- Encoded Text Len: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.encoded_text_len.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encoded Text: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.encoded_text.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Lines Of Text
b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.lines_of_text, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD News Message_137 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137_related_sym = {}

-- Dissect Fields: MD News Message_137 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137_related_sym.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:137|0:|10:SecurityID")

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD News Message_137 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137_related_sym.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_137_related_sym, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137_related_sym.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD News Message_137 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_137
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_orig_time,
  [3] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_news_source,
  [4] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_news_id,
  [5] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_language_code,
  [6] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_headline,
  [7] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_url_link,
}

-- Dissect Fields: MD News Message_137 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_b.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Time: uInt64, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.orig_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:137|0:|8:OrigTime")

  -- News Source: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.news_source.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:137|0:|10:NewsSource")

  -- News ID: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.news_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:137|0:|6:NewsID")

  -- Language Code: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.language_code.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:137|0:|12:LanguageCode")

  -- Headline: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.headline.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:137|0:|8:Headline")

  -- URL Link: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.url_link.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:137|0:|7:URLLink")

  -- Encoded Headline Len: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.encoded_headline_len.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encoded Headline: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.encoded_headline.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Related Sym: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_related_sym_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Sym: No Related Sym entries
  local count = value or 0
  for md_news_message_137_related_sym_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137_related_sym.dissect(buffer, index, packet, parent, presence_map, base, state, md_news_message_137_related_sym_index)
  end

  -- No Lines Of Text: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_lines_of_text.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lines Of Text: No Lines Of Text entries
  local count = value or 0
  for lines_of_text_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.dissect(buffer, index, packet, parent, presence_map, base, state, lines_of_text_index)
  end

  return index
end

-- Dissect: MD News Message_137 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Lines Of Text
b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text = {}

-- Dissect Fields: Lines Of Text
b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Text: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.text_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:143|0:|4:Text")

  -- Encoded Text Len: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.encoded_text_len.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encoded Text: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.encoded_text.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Lines Of Text
b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.lines_of_text, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD News Message_143 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143_related_sym = {}

-- Dissect Fields: MD News Message_143 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143_related_sym.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:143|0:|10:SecurityID")

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD News Message_143 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143_related_sym.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_143_related_sym, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143_related_sym.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD News Message_143 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_news_message_143
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_orig_time,
  [3] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_news_source,
  [4] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_news_id,
  [5] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_language_code,
  [6] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_headline,
  [7] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_url_link,
}

-- Dissect Fields: MD News Message_143 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_b.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Time: uInt64, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.orig_time_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:143|0:|8:OrigTime")

  -- News Source: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.news_source.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:143|0:|10:NewsSource")

  -- News ID: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.news_id.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:143|0:|6:NewsID")

  -- Language Code: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.language_code.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:143|0:|12:LanguageCode")

  -- Headline: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.headline.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:143|0:|8:Headline")

  -- URL Link: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.url_link.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:143|0:|7:URLLink")

  -- Encoded Headline Len: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.encoded_headline_len.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encoded Headline: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.encoded_headline.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Related Sym: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_related_sym_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Sym: No Related Sym entries
  local count = value or 0
  for md_news_message_143_related_sym_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143_related_sym.dissect(buffer, index, packet, parent, presence_map, base, state, md_news_message_143_related_sym_index)
  end

  -- No Lines Of Text: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_lines_of_text.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lines Of Text: No Lines Of Text entries
  local count = value or 0
  for lines_of_text_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.lines_of_text.dissect(buffer, index, packet, parent, presence_map, base, state, lines_of_text_index)
  end

  return index
end

-- Dissect: MD News Message_143 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Snapshot Full Refresh_128 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128_md_entries = {}

-- Dissect Fields: MD Snapshot Full Refresh_128 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Entry Type: string, Default
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Curerncy: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.curerncy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|3:128|0:|27:decimal-mantissaMDEntryPx" })

  -- MD Entry Size: int64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:128|0:|11:MDEntrySize")

  -- MD Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:128|0:|12:MDInsertDate")

  -- MD Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:128|0:|12:MDInsertTime")

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:128|0:|11:TradeVolume")

  -- MD Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:128|0:|11:MDEntryDate")

  -- MD Entry Time: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|3:128|0:|11:MDEntryTime")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 8], nil }, state, { nil, "10:dictionary|3:128|0:|31:decimal-mantissaNetChgPrevDay" })

  -- MD Stream ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_e.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Price Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Trading Session Sub ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Trad Ses Open Time: uInt64, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_default_optional_u_int64.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Trade ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- MD Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- MD Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_copy.dissect(buffer, index, packet, parent, presence_map[base + 19], state, "10:dictionary|3:128|0:|14:NumberOfOrders")

  -- MD Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- Day Cum Qty: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.day_cum_qty.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Settle Price Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settle_price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 25], nil }, state, { nil, "10:dictionary|3:128|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:128|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Ref Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_ref_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:128|0:|33:decimal-mantissaTradingRefPrice" })

  return index
end

-- Dissect: MD Snapshot Full Refresh_128 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_128_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Snapshot Full Refresh_128 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_128
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_md_req_id,
}

-- Dissect Fields: MD Snapshot Full Refresh_128 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tot_num_reports.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Req ID: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_req_id_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:128|0:|7:MDReqID")

  -- Market Depth: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_snapshot_full_refresh_128_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_128_md_entries_index)
  end

  return index
end

-- Dissect: MD Snapshot Full Refresh_128 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Snapshot Full Refresh_139 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139_underlyings = {}

-- Dissect Fields: MD Snapshot Full Refresh_139 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security ID: uInt64, Delta
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:139|0:|20:UnderlyingSecurityID")

  -- Underlying Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Px: decimal, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { nil, "10:dictionary|3:139|0:|30:decimal-mantissaUnderlyingPx" })

  -- Underlying Px Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Snapshot Full Refresh_139 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_139_underlyings, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Snapshot Full Refresh_139 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139_md_entries = {}

-- Dissect Fields: MD Snapshot Full Refresh_139 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Entry Type: string, Default
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Currency: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|3:139|0:|27:decimal-mantissaMDEntryPx" })

  -- MD Entry Interest Rate: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_interest_rate.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, "10:dictionary|3:139|0:|37:decimal-mantissaMDEntryInterestRate" })

  -- Index Seq: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.index_seq_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:139|0:|11:MDEntrySize")

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:139|0:|11:TradeVolume")

  -- MD Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:139|0:|11:MDEntryDate")

  -- MD Entry Time: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:139|0:|11:MDEntryTime")

  -- MD Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|3:139|0:|12:MDInsertDate")

  -- MD Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|3:139|0:|12:MDInsertTime")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { nil, "10:dictionary|3:139|0:|31:decimal-mantissaNetChgPrevDay" })

  -- MD Stream ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_e.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Price Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Trading Session Sub ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Trad Ses Open Time: uInt64, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_default_optional_u_int64.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Trading Session ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Open Close Settl Flag: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_default_optional_string.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Order ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- MD Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- MD Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_copy.dissect(buffer, index, packet, parent, presence_map[base + 21], state, "10:dictionary|3:139|0:|14:NumberOfOrders")

  -- MD Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Sett Price Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sett_price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Last Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_trade_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Adjustment Method: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_adjustment_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:139|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:139|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Reference Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_reference_price.dissect(buffer, index, packet, parent, { presence_map[base + 28], nil }, state, { nil, "10:dictionary|3:139|0:|39:decimal-mantissaTradingReferencePrice" })

  -- Price Band Midpoint Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_midpoint_price_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Avg Daily Traded Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.avg_daily_traded_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Expire Date: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.expire_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Early Termination: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.early_termination.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.max_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 29], state, nil)

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_snapshot_full_refresh_139_underlyings_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_139_underlyings_index)
  end

  return index
end

-- Dissect: MD Snapshot Full Refresh_139 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_139_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Snapshot Full Refresh_139 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_139
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_md_req_id,
}

-- Dissect Fields: MD Snapshot Full Refresh_139 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tot_num_reports.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Req ID: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_req_id_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:139|0:|7:MDReqID")

  -- Market Depth: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_snapshot_full_refresh_139_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_139_md_entries_index)
  end

  return index
end

-- Dissect: MD Snapshot Full Refresh_139 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Snapshot Full Refresh_146 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146_underlyings = {}

-- Dissect Fields: MD Snapshot Full Refresh_146 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security ID: uInt64, Delta
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:146|0:|20:UnderlyingSecurityID")

  -- Underlying Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Px: decimal, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { nil, "10:dictionary|3:146|0:|30:decimal-mantissaUnderlyingPx" })

  -- Underlying Px Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Snapshot Full Refresh_146 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_146_underlyings, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Snapshot Full Refresh_146 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146_md_entries = {}

-- Dissect Fields: MD Snapshot Full Refresh_146 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Entry Type: string, Default
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Currency: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|3:146|0:|27:decimal-mantissaMDEntryPx" })

  -- MD Entry Interest Rate: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_interest_rate.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, "10:dictionary|3:146|0:|37:decimal-mantissaMDEntryInterestRate" })

  -- Index Seq: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.index_seq_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:146|0:|11:MDEntrySize")

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:146|0:|11:TradeVolume")

  -- MD Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:146|0:|11:MDEntryDate")

  -- MD Entry Time: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:146|0:|11:MDEntryTime")

  -- MD Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|3:146|0:|12:MDInsertDate")

  -- MD Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|3:146|0:|12:MDInsertTime")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { nil, "10:dictionary|3:146|0:|31:decimal-mantissaNetChgPrevDay" })

  -- MD Stream ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_e.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Price Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Trading Session Sub ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Trad Ses Open Time: uInt64, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_default_optional_u_int64.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Trading Session ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Open Close Settl Flag: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_default_optional_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Order ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- MD Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- MD Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_copy.dissect(buffer, index, packet, parent, presence_map[base + 21], state, "10:dictionary|3:146|0:|14:NumberOfOrders")

  -- MD Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Sett Price Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sett_price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Last Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_trade_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Adjustment Method: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_adjustment_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:146|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:146|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Reference Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_reference_price.dissect(buffer, index, packet, parent, { presence_map[base + 28], nil }, state, { nil, "10:dictionary|3:146|0:|39:decimal-mantissaTradingReferencePrice" })

  -- Price Band Midpoint Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_midpoint_price_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Avg Daily Traded Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.avg_daily_traded_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Expire Date: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.expire_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Early Termination: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.early_termination.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.max_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 29], state, nil)

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_snapshot_full_refresh_146_underlyings_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_146_underlyings_index)
  end

  return index
end

-- Dissect: MD Snapshot Full Refresh_146 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_146_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Snapshot Full Refresh_146 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_146
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_md_req_id,
}

-- Dissect Fields: MD Snapshot Full Refresh_146 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tot_num_reports.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Req ID: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_req_id_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:146|0:|7:MDReqID")

  -- Market Depth: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_snapshot_full_refresh_146_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_146_md_entries_index)
  end

  return index
end

-- Dissect: MD Snapshot Full Refresh_146 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Snapshot Full Refresh_147 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147_underlyings = {}

-- Dissect Fields: MD Snapshot Full Refresh_147 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security ID: uInt64, Delta
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:147|0:|20:UnderlyingSecurityID")

  -- Underlying Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Px: decimal, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { nil, "10:dictionary|3:147|0:|30:decimal-mantissaUnderlyingPx" })

  -- Underlying Px Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Snapshot Full Refresh_147 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_147_underlyings, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Snapshot Full Refresh_147 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147_md_entries = {}

-- Dissect Fields: MD Snapshot Full Refresh_147 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Entry Type: string, Default
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Currency: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|3:147|0:|27:decimal-mantissaMDEntryPx" })

  -- MD Entry Interest Rate: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_interest_rate.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, "10:dictionary|3:147|0:|37:decimal-mantissaMDEntryInterestRate" })

  -- Index Seq: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.index_seq_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entry Size: int64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:147|0:|11:MDEntrySize")

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:147|0:|11:TradeVolume")

  -- MD Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:147|0:|11:MDEntryDate")

  -- MD Entry Time: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:147|0:|11:MDEntryTime")

  -- MD Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|3:147|0:|12:MDInsertDate")

  -- MD Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|3:147|0:|12:MDInsertTime")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { nil, "10:dictionary|3:147|0:|31:decimal-mantissaNetChgPrevDay" })

  -- MD Stream ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_e.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Price Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Trading Session Sub ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Trad Ses Open Time: uInt64, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_default_optional_u_int64.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Trading Session ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Open Close Settl Flag: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_default_optional_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Order ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- MD Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- MD Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_copy.dissect(buffer, index, packet, parent, presence_map[base + 21], state, "10:dictionary|3:147|0:|14:NumberOfOrders")

  -- MD Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Sett Price Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sett_price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Last Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_trade_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Adjustment Method: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_adjustment_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:147|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:147|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Reference Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_reference_price.dissect(buffer, index, packet, parent, { presence_map[base + 28], nil }, state, { nil, "10:dictionary|3:147|0:|39:decimal-mantissaTradingReferencePrice" })

  -- Price Band Midpoint Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_midpoint_price_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Avg Daily Traded Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.avg_daily_traded_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Expire Date: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.expire_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Early Termination: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.early_termination.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.max_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 29], state, nil)

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_snapshot_full_refresh_147_underlyings_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_147_underlyings_index)
  end

  return index
end

-- Dissect: MD Snapshot Full Refresh_147 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_147_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Snapshot Full Refresh_147 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_147
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_md_req_id,
}

-- Dissect Fields: MD Snapshot Full Refresh_147 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tot_num_reports.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Req ID: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_req_id_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:147|0:|7:MDReqID")

  -- Market Depth: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_snapshot_full_refresh_147_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_147_md_entries_index)
  end

  return index
end

-- Dissect: MD Snapshot Full Refresh_147 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Snapshot Full Refresh_151 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151_underlyings = {}

-- Dissect Fields: MD Snapshot Full Refresh_151 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security ID: uInt64, Delta
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:151|0:|20:UnderlyingSecurityID")

  -- Underlying Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Px: decimal, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { nil, "10:dictionary|3:151|0:|30:decimal-mantissaUnderlyingPx" })

  -- Underlying Px Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Snapshot Full Refresh_151 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_151_underlyings, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Snapshot Full Refresh_151 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151_md_entries = {}

-- Dissect Fields: MD Snapshot Full Refresh_151 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Entry Type: string, Default
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Currency: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|3:151|0:|27:decimal-mantissaMDEntryPx" })

  -- MD Entry Interest Rate: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_interest_rate.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, "10:dictionary|3:151|0:|37:decimal-mantissaMDEntryInterestRate" })

  -- Index Seq: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.index_seq_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entry Size: int64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:151|0:|11:MDEntrySize")

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:151|0:|11:TradeVolume")

  -- MD Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:151|0:|11:MDEntryDate")

  -- MD Entry Time: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:151|0:|11:MDEntryTime")

  -- MD Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|3:151|0:|12:MDInsertDate")

  -- MD Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|3:151|0:|12:MDInsertTime")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { nil, "10:dictionary|3:151|0:|31:decimal-mantissaNetChgPrevDay" })

  -- MD Stream ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_e.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Price Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Trading Session Sub ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Trad Ses Open Time: uInt64, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_default_optional_u_int64.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Trading Session ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Open Close Settl Flag: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_default_optional_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Order ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- MD Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- MD Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_copy.dissect(buffer, index, packet, parent, presence_map[base + 21], state, "10:dictionary|3:151|0:|14:NumberOfOrders")

  -- MD Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Sett Price Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sett_price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Last Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_trade_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Adjustment Method: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_adjustment_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:151|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:151|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Reference Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_reference_price.dissect(buffer, index, packet, parent, { presence_map[base + 28], nil }, state, { nil, "10:dictionary|3:151|0:|39:decimal-mantissaTradingReferencePrice" })

  -- Price Band Midpoint Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_midpoint_price_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Avg Daily Traded Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.avg_daily_traded_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Expire Date: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.expire_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Early Termination: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.early_termination.dissect(buffer, index, packet, parent, nil, state, nil)

  -- BTB Cert Indicator: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.btb_cert_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- BTB Contract Info: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.btb_contract_info.dissect(buffer, index, packet, parent, nil, state, nil)

  -- BTB Grace Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.btb_grace_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.max_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 29], state, nil)

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_snapshot_full_refresh_151_underlyings_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_151_underlyings_index)
  end

  return index
end

-- Dissect: MD Snapshot Full Refresh_151 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_151_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Snapshot Full Refresh_151 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_151
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_md_req_id,
}

-- Dissect Fields: MD Snapshot Full Refresh_151 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tot_num_reports.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Req ID: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_req_id_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:151|0:|7:MDReqID")

  -- Market Depth: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_snapshot_full_refresh_151_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_151_md_entries_index)
  end

  return index
end

-- Dissect: MD Snapshot Full Refresh_151 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Snapshot Full Refresh_127 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127_md_entries = {}

-- Dissect Fields: MD Snapshot Full Refresh_127 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Entry Type: string, Default
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Curerncy: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.curerncy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|3:127|0:|27:decimal-mantissaMDEntryPx" })

  -- MD Entry Size: int64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:127|0:|11:MDEntrySize")

  -- MD Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:127|0:|12:MDInsertDate")

  -- MD Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:127|0:|12:MDInsertTime")

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:127|0:|11:TradeVolume")

  -- MD Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:127|0:|11:MDEntryDate")

  -- MD Entry Time: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|3:127|0:|11:MDEntryTime")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 8], nil }, state, { nil, "10:dictionary|3:127|0:|31:decimal-mantissaNetChgPrevDay" })

  -- MD Stream ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_e.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Price Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Trading Session Sub ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Trad Ses Open Time: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_default_optional_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Open Close Settle Flag: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.open_close_settle_flag_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Order ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Trade ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- MD Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- MD Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_copy.dissect(buffer, index, packet, parent, presence_map[base + 20], state, "10:dictionary|3:127|0:|14:NumberOfOrders")

  -- MD Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Day Cum Qty: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.day_cum_qty.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Settle Price Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settle_price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:127|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:127|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Ref Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_ref_price.dissect(buffer, index, packet, parent, { presence_map[base + 28], nil }, state, { nil, "10:dictionary|3:127|0:|33:decimal-mantissaTradingRefPrice" })

  return index
end

-- Dissect: MD Snapshot Full Refresh_127 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_127_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Snapshot Full Refresh_127 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_snapshot_full_refresh_127
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_md_req_id,
}

-- Dissect Fields: MD Snapshot Full Refresh_127 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tot_num_reports.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Req ID: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_req_id_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:127|0:|7:MDReqID")

  -- Market Depth: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_snapshot_full_refresh_127_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_127_md_entries_index)
  end

  return index
end

-- Dissect: MD Snapshot Full Refresh_127 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Security Status_125 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_125 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_125.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_status_125
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_125.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_security_id_source,
}

-- Dissect Fields: MD Security Status_125 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_125.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_group_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Exchange: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Open Time: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.transact_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Security Status_125 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_125.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_125.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Security Status_134 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_134 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_134.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_status_134
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_134.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_security_id_source,
}

-- Dissect Fields: MD Security Status_134 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_134.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_group_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Exchange: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Open Time: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.transact_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Security Status_134 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_134.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_134.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Security Status_142 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_142 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_142.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_status_142
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_142.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_security_id_source,
}

-- Dissect Fields: MD Security Status_142 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_142.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_group_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Exchange: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Open Time: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trad_ses_open_time_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.transact_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Security Status_142 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_142.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_142.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Inc Refresh_126 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_126_md_entries = {}

-- Dissect Fields: MD Inc Refresh_126 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_126_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:126|0:|14:MDUpdateAction")

  -- MD Price Level: uInt32, Increment, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_price_level_increment.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:126|0:|12:MDPriceLevel")

  -- MD Entry Type: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:126|0:|11:MDEntryType")

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:126|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:126|0:|6:RptSeq")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:126|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|3:126|0:|11:MDEntryTime")

  -- MD Entry Size: int64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:126|0:|11:MDEntrySize")

  -- MD Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|3:126|0:|11:MDEntryDate")

  -- MD Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "10:dictionary|3:126|0:|12:MDInsertDate")

  -- MD Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "10:dictionary|3:126|0:|12:MDInsertTime")

  -- MD Stream ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_copy.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "10:dictionary|3:126|0:|8:Currency")

  -- Trading Session ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 15], nil }, state, { nil, "10:dictionary|3:126|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:126|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Trade Condition: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Trade ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- MD Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- MD Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- MD Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Settl Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_type_default.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Settle Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settle_price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 26], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:126|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 28], nil }, state, { nil, "10:dictionary|3:126|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Ref Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_ref_price.dissect(buffer, index, packet, parent, { presence_map[base + 29], nil }, state, { nil, "10:dictionary|3:126|0:|33:decimal-mantissaTradingRefPrice" })

  return index
end

-- Dissect: MD Inc Refresh_126 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_126_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_126_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_126_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Inc Refresh_126 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_126 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_126.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_126

-- Dissect Fields: MD Inc Refresh_126 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_126.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_inc_refresh_126_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_126_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_126_md_entries_index)
  end

  return index
end

-- Dissect: MD Inc Refresh_126 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_126.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_126.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Inc Refresh_123 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_123_md_entries = {}

-- Dissect Fields: MD Inc Refresh_123 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_123_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:123|0:|14:MDUpdateAction")

  -- MD Price Level: uInt32, Increment, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_price_level_increment.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:123|0:|12:MDPriceLevel")

  -- MD Entry Type: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:123|0:|11:MDEntryType")

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:123|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:123|0:|6:RptSeq")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:123|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|3:123|0:|11:MDEntryTime")

  -- MD Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:123|0:|11:MDEntrySize")

  -- MD Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|3:123|0:|11:MDEntryDate")

  -- MD Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "10:dictionary|3:123|0:|12:MDInsertDate")

  -- MD Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "10:dictionary|3:123|0:|12:MDInsertTime")

  -- MD Stream ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_copy.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "10:dictionary|3:123|0:|8:Currency")

  -- Trading Session ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 15], nil }, state, { nil, "10:dictionary|3:123|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:123|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Trade Condition: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Trade ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- MD Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- MD Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- MD Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Settl Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_type_default.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Settle Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settle_price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 26], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:123|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 28], nil }, state, { nil, "10:dictionary|3:123|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Ref Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_ref_price.dissect(buffer, index, packet, parent, { presence_map[base + 29], nil }, state, { nil, "10:dictionary|3:123|0:|33:decimal-mantissaTradingRefPrice" })

  return index
end

-- Dissect: MD Inc Refresh_123 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_123_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_123_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_123_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Inc Refresh_123 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_123 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_123.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_123

-- Dissect Fields: MD Inc Refresh_123 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_123.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_inc_refresh_123_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_123_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_123_md_entries_index)
  end

  return index
end

-- Dissect: MD Inc Refresh_123 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_123.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_123.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Inc Refresh_138 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138_underlyings = {}

-- Dissect Fields: MD Inc Refresh_138 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security ID: uInt64, Delta
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:138|0:|20:UnderlyingSecurityID")

  -- Underlying Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Px: decimal, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { nil, "10:dictionary|3:138|0:|30:decimal-mantissaUnderlyingPx" })

  -- Underlying Px Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Inc Refresh_138 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_138_underlyings, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Inc Refresh_138 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138_md_entries = {}

-- Dissect Fields: MD Inc Refresh_138 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:138|0:|14:MDUpdateAction")

  -- MD Entry Type: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:138|0:|11:MDEntryType")

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:138|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:138|0:|6:RptSeq")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|3:138|0:|27:decimal-mantissaMDEntryPx" })

  -- MD Entry Interest Rate: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_interest_rate.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:138|0:|37:decimal-mantissaMDEntryInterestRate" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|3:138|0:|11:MDEntryTime")

  -- MD Entry Size: int64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:138|0:|11:MDEntrySize")

  -- MD Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|3:138|0:|11:MDEntryDate")

  -- MD Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "10:dictionary|3:138|0:|12:MDInsertDate")

  -- MD Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "10:dictionary|3:138|0:|12:MDInsertTime")

  -- MD Stream ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_copy.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "10:dictionary|3:138|0:|8:Currency")

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 14], nil }, state, { nil, "10:dictionary|3:138|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:138|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade Condition: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settl Flag: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_sent_optional_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Trade ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- MD Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- MD Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- MD Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Sett Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sett_price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_trade_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Adjustment Method: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_adjustment_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 24], nil }, state, { nil, "10:dictionary|3:138|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 25], nil }, state, { nil, "10:dictionary|3:138|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Reference Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_reference_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:138|0:|39:decimal-mantissaTradingReferencePrice" })

  -- Price Band Midpoint Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_midpoint_price_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Avg Daily Traded Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.avg_daily_traded_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Expire Date: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.expire_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Early Termination: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.early_termination.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.max_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_inc_refresh_138_underlyings_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_138_underlyings_index)
  end

  -- Index Seq: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.index_seq_sent_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Inc Refresh_138 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_138_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Inc Refresh_138 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_138

-- Dissect Fields: MD Inc Refresh_138 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_inc_refresh_138_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_138_md_entries_index)
  end

  return index
end

-- Dissect: MD Inc Refresh_138 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Inc Refresh_145 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145_underlyings = {}

-- Dissect Fields: MD Inc Refresh_145 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security ID: uInt64, Delta
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:145|0:|20:UnderlyingSecurityID")

  -- Underlying Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Px: decimal, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { nil, "10:dictionary|3:145|0:|30:decimal-mantissaUnderlyingPx" })

  -- Underlying Px Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Inc Refresh_145 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_145_underlyings, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Inc Refresh_145 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145_md_entries = {}

-- Dissect Fields: MD Inc Refresh_145 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:145|0:|14:MDUpdateAction")

  -- MD Entry Type: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:145|0:|11:MDEntryType")

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:145|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:145|0:|6:RptSeq")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|3:145|0:|27:decimal-mantissaMDEntryPx" })

  -- MD Entry Interest Rate: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_interest_rate.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:145|0:|37:decimal-mantissaMDEntryInterestRate" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|3:145|0:|11:MDEntryTime")

  -- MD Entry Size: int64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:145|0:|11:MDEntrySize")

  -- MD Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|3:145|0:|11:MDEntryDate")

  -- MD Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "10:dictionary|3:145|0:|12:MDInsertDate")

  -- MD Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "10:dictionary|3:145|0:|12:MDInsertTime")

  -- MD Stream ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_copy.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "10:dictionary|3:145|0:|8:Currency")

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 14], nil }, state, { nil, "10:dictionary|3:145|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:145|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade Condition: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settl Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Trade ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- MD Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- MD Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- MD Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Sett Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sett_price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_trade_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Adjustment Method: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_adjustment_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 24], nil }, state, { nil, "10:dictionary|3:145|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 25], nil }, state, { nil, "10:dictionary|3:145|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Reference Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_reference_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:145|0:|39:decimal-mantissaTradingReferencePrice" })

  -- Price Band Midpoint Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_midpoint_price_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Avg Daily Traded Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.avg_daily_traded_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Expire Date: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.expire_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Early Termination: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.early_termination.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.max_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_inc_refresh_145_underlyings_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_145_underlyings_index)
  end

  -- Index Seq: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.index_seq_sent_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Inc Refresh_145 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_145_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Inc Refresh_145 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_145

-- Dissect Fields: MD Inc Refresh_145 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_inc_refresh_145_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_145_md_entries_index)
  end

  return index
end

-- Dissect: MD Inc Refresh_145 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Inc Refresh_150 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150_underlyings = {}

-- Dissect Fields: MD Inc Refresh_150 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Security ID: uInt64, Delta
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:150|0:|20:UnderlyingSecurityID")

  -- Underlying Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Px: decimal, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { nil, "10:dictionary|3:150|0:|30:decimal-mantissaUnderlyingPx" })

  -- Underlying Px Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_px_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Inc Refresh_150 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_150_underlyings, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Inc Refresh_150 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150_md_entries = {}

-- Dissect Fields: MD Inc Refresh_150 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:150|0:|14:MDUpdateAction")

  -- MD Entry Type: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:150|0:|11:MDEntryType")

  -- Security ID Source: uInt32, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:150|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:150|0:|6:RptSeq")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|3:150|0:|27:decimal-mantissaMDEntryPx" })

  -- MD Entry Interest Rate: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_interest_rate.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:150|0:|37:decimal-mantissaMDEntryInterestRate" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|3:150|0:|11:MDEntryTime")

  -- MD Entry Size: int64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:150|0:|11:MDEntrySize")

  -- MD Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|3:150|0:|11:MDEntryDate")

  -- MD Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "10:dictionary|3:150|0:|12:MDInsertDate")

  -- MD Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "10:dictionary|3:150|0:|12:MDInsertTime")

  -- MD Stream ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_stream_id_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_copy.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "10:dictionary|3:150|0:|8:Currency")

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 14], nil }, state, { nil, "10:dictionary|3:150|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:150|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade Condition: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settl Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.open_close_settl_flag_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.order_id.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Trade ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- MD Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- MD Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- MD Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Sett Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sett_price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_trade_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Adjustment Method: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_adjustment_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 24], nil }, state, { nil, "10:dictionary|3:150|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 25], nil }, state, { nil, "10:dictionary|3:150|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Reference Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_reference_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:150|0:|39:decimal-mantissaTradingReferencePrice" })

  -- Price Band Midpoint Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_band_midpoint_price_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Avg Daily Traded Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.avg_daily_traded_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Expire Date: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.expire_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Early Termination: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.early_termination.dissect(buffer, index, packet, parent, nil, state, nil)

  -- BTB Cert Indicator: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.btb_cert_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- BTB Contract Info: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.btb_contract_info.dissect(buffer, index, packet, parent, nil, state, nil)

  -- BTB Grace Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.btb_grace_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.max_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_inc_refresh_150_underlyings_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_150_underlyings_index)
  end

  -- Index Seq: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.index_seq_sent_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Inc Refresh_150 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_150_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Inc Refresh_150 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_150

-- Dissect Fields: MD Inc Refresh_150 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_inc_refresh_150_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_150_md_entries_index)
  end

  return index
end

-- Dissect: MD Inc Refresh_150 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Inc Refresh_81 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81_md_entries = {}

-- Dissect Fields: MD Inc Refresh_81 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Update Action: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_update_action_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:81|0:|14:MDUpdateAction")

  -- MD Price Level: uInt32, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_price_level_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- MD Entry Type: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_type_copy_j.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:81|0:|11:MDEntryType")

  -- Security ID Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Security ID: uInt64, Copy, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:81|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.rpt_seq_increment_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:81|0:|6:RptSeq")

  -- MD Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_px.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|2:81|0:|27:decimal-mantissaMDEntryPx" })

  -- MD Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|2:81|0:|11:MDEntryTime")

  -- MD Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:81|0:|11:MDEntrySize")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.quote_condition.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Number Of Orders: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.number_of_orders_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:81|0:|14:NumberOfOrders")

  -- Trading Session ID: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.trading_session_id_default.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  return index
end

-- Dissect: MD Inc Refresh_81 MD Entries
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_81_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Inc Refresh_81 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_inc_refresh_81
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_pos_dup_flag,
}

-- Dissect Fields: MD Inc Refresh_81 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- No MD Entries: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Entries: No MD Entries entries
  local count = value or 0
  for md_inc_refresh_81_md_entries_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_81_md_entries_index)
  end

  return index
end

-- Dissect: MD Inc Refresh_81 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Security List_111 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111_legs = {}

-- Dissect Fields: MD Security List_111 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111_legs.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_symbol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Ratio Qty: int32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_ratio_qty.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:111|0:|11:LegRatioQty")

  -- Leg Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Buyers Perspective: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.buyers_perspective.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Security List_111 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111_legs.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_111_legs, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111_legs.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_111 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111_underlyings = {}

-- Dissect Fields: MD Security List_111 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_symbol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Security List_111 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_111_underlyings, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids = {}

-- Dissect Fields: Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt ID: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt ID Source: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:111|0:|19:SecurityAltIDSource")

  return index
end

-- Dissect: Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_alt_ids, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types = {}

-- Dissect Fields: Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Feed Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_feed_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Depth: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.feed_types, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.feed_types.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids = {}

-- Dissect Fields: Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl ID: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Feed Types: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_feed_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Feed Types: No MD Feed Types entries
  local count = value or 0
  for feed_types_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.feed_types.dissect(buffer, index, packet, parent, presence_map, base, state, feed_types_index)
  end

  return index
end

-- Dissect: Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_ids, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Related Symbols
b3_b3derivatives_umdf_fast_v5_0_12.related_symbols = {}

-- Dissect Fields: Related Symbols
b3_b3derivatives_umdf_fast_v5_0_12.related_symbols.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:111|0:|10:SecurityID")

  -- Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Appl IDs: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_appl_ids.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl IDs: No Appl IDs entries
  local count = value or 0
  for appl_ids_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.dissect(buffer, index, packet, parent, presence_map, base, state, appl_ids_index)
  end

  -- No Security Alt ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt IDs: No Security Alt ID entries
  local count = value or 0
  for security_alt_ids_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_ids_index)
  end

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_security_list_111_underlyings_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_111_underlyings_index)
  end

  -- No Legs: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_legs.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Legs: No Legs entries
  local count = value or 0
  for md_security_list_111_legs_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111_legs.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_111_legs_index)
  end

  -- Security Update Action: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Round Lot: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.round_lot.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Price Increment: decimal, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { "10:dictionary|3:111|0:|35:decimal-exponentMinPriceIncrement", "10:dictionary|3:111|0:|35:decimal-mantissaMinPriceIncrement" })

  -- Tick Size Denominator: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_size_denominator_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Order Qty: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_order_qty_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Order Qty: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.max_order_qty_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument ID: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.instrument_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Currency: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_currency_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Sub Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_sub_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Asset: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.asset_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.maturity_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Month Year: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.maturity_month_year.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Strike Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { "10:dictionary|3:111|0:|29:decimal-exponentStrikePrice", "10:dictionary|3:111|0:|29:decimal-mantissaStrikePrice" })

  -- Strike Currency: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.strike_currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Contract Multiplier: decimal, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { "10:dictionary|3:111|0:|36:decimal-exponentContractMultiplier", "10:dictionary|3:111|0:|36:decimal-mantissaContractMultiplier" })

  -- Contract Settl Month: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.contract_settl_month.dissect(buffer, index, packet, parent, nil, state, nil)

  -- CFI Code: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.cfi_code.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Country Of Issue: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.country_of_issue.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Issue Date: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.issue_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Dated Date: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.dated_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Start Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.start_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- End Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.end_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Validity Timestamp: uInt64, Default, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_validity_timestamp_default.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Security Group: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_group_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Related Symbols
b3_b3derivatives_umdf_fast_v5_0_12.related_symbols.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.related_symbols, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.related_symbols.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_111 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_111

-- Dissect Fields: MD Security List_111 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_y_2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tot_no_related_sym.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_fragment.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_related_sym_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Symbols: No Related Sym entries
  local count = value or 0
  for related_symbols_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.related_symbols.dissect(buffer, index, packet, parent, presence_map, base, state, related_symbols_index)
  end

  return index
end

-- Dissect: MD Security List_111 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Lots
b3_b3derivatives_umdf_fast_v5_0_12.lots = {}

-- Dissect Fields: Lots
b3_b3derivatives_umdf_fast_v5_0_12.lots.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Lot Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.lot_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Lot Size: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_lot_size.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Lots
b3_b3derivatives_umdf_fast_v5_0_12.lots.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.lots, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.lots.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_141 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_legs = {}

-- Dissect Fields: MD Security List_141 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_legs.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_symbol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Ratio Qty: int32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_ratio_qty.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:141|0:|11:LegRatioQty")

  -- Leg Security Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Side: int32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_side.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Security List_141 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_legs.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_141_legs, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_legs.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Tick Rules
b3_b3derivatives_umdf_fast_v5_0_12.tick_rules = {}

-- Dissect Fields: Tick Rules
b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Start Tick Price Range: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.start_tick_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { "10:dictionary|3:141|0:|37:decimal-exponentStartTickPriceRange", "10:dictionary|3:141|0:|37:decimal-mantissaStartTickPriceRange" })

  -- End Tick Price Range: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.end_tick_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { "10:dictionary|3:141|0:|35:decimal-exponentEndTickPriceRange", "10:dictionary|3:141|0:|35:decimal-mantissaEndTickPriceRange" })

  -- Tick Increment: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_increment.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { "10:dictionary|3:141|0:|31:decimal-exponentTickIncrement", "10:dictionary|3:141|0:|31:decimal-mantissaTickIncrement" })

  -- Tick Rule Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_rule_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Tick Rules
b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_rules, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instr Attrib
b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib = {}

-- Dissect Fields: Instr Attrib
b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Inst Attrib Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.inst_attrib_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Inst Attrib Value: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.inst_attrib_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Instr Attrib
b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.instr_attrib, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_141 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_underlyings = {}

-- Dissect Fields: MD Security List_141 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_symbol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Pct: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.index_pct.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { "10:dictionary|3:141|0:|26:decimal-exponentIndexPct", "10:dictionary|3:141|0:|26:decimal-mantissaIndexPct" })

  return index
end

-- Dissect: MD Security List_141 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_141_underlyings, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids = {}

-- Dissect Fields: Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt ID: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt ID Source: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:141|0:|19:SecurityAltIDSource")

  return index
end

-- Dissect: Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_alt_ids, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types = {}

-- Dissect Fields: Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Feed Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_feed_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Depth: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.feed_types, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.feed_types.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids = {}

-- Dissect Fields: Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl ID: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Feed Types: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_feed_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Feed Types: No MD Feed Types entries
  local count = value or 0
  for feed_types_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.feed_types.dissect(buffer, index, packet, parent, presence_map, base, state, feed_types_index)
  end

  return index
end

-- Dissect: Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_ids, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_141 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_related_sym = {}

-- Dissect Fields: MD Security List_141 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_related_sym.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:141|0:|10:SecurityID")

  -- Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Appl IDs: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_appl_ids.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl IDs: No Appl IDs entries
  local count = value or 0
  for appl_ids_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.dissect(buffer, index, packet, parent, presence_map, base, state, appl_ids_index)
  end

  -- No Security Alt ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt IDs: No Security Alt ID entries
  local count = value or 0
  for security_alt_ids_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_ids_index)
  end

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_security_list_141_underlyings_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_141_underlyings_index)
  end

  -- Implied Market Indicator: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.implied_market_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Instr Attrib: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_instr_attrib.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instr Attrib: No Instr Attrib entries
  local count = value or 0
  for instr_attrib_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.dissect(buffer, index, packet, parent, presence_map, base, state, instr_attrib_index)
  end

  -- No Tick Rules: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_tick_rules.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tick Rules: No Tick Rules entries
  local count = value or 0
  for tick_rules_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.dissect(buffer, index, packet, parent, presence_map, base, state, tick_rules_index)
  end

  -- No Legs: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_legs.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Legs: No Legs entries
  local count = value or 0
  for md_security_list_141_legs_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_legs.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_141_legs_index)
  end

  -- Security Update Action: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Lot Type Rules: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_lot_type_rules.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lots: No Lot Type Rules entries
  local count = value or 0
  for lots_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.lots.dissect(buffer, index, packet, parent, presence_map, base, state, lots_index)
  end

  -- Min Price Increment: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { "10:dictionary|3:141|0:|35:decimal-exponentMinPriceIncrement", "10:dictionary|3:141|0:|35:decimal-mantissaMinPriceIncrement" })

  -- Tick Size Denominator: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_size_denominator_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Divisor: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_divisor.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { "10:dictionary|3:141|0:|30:decimal-exponentPriceDivisor", "10:dictionary|3:141|0:|30:decimal-mantissaPriceDivisor" })

  -- Min Order Qty: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_order_qty_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Order Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.max_order_qty_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Multi Leg Model: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.multi_leg_model.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Multi Leg Price Method: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.multi_leg_price_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Currency: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Product: int32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.product.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Sub Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_sub_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Strategy Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_strategy_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Asset: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.asset_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Share Issued: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_share_issued.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.maturity_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Month Year: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.maturity_month_year.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Strike Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { "10:dictionary|3:141|0:|29:decimal-exponentStrikePrice", "10:dictionary|3:141|0:|29:decimal-mantissaStrikePrice" })

  -- Strike Currency: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.strike_currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exercise Style: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.exercise_style.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Put Or Call: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.put_or_call.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Contract Multiplier: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 4], nil }, state, { "10:dictionary|3:141|0:|36:decimal-exponentContractMultiplier", "10:dictionary|3:141|0:|36:decimal-mantissaContractMultiplier" })

  -- Contract Settl Month: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.contract_settl_month.dissect(buffer, index, packet, parent, nil, state, nil)

  -- CFI Code: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.cfi_code.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Country Of Issue: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.country_of_issue.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Issue Date: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.issue_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Dated Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.dated_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Start Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.start_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- End Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.end_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Validity Timestamp: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_validity_timestamp_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_segment_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Governance Indicator: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.governance_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Corporate Action Event ID: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.corporate_action_event_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_group_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Match Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_match_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Security List_141 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_related_sym.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_141_related_sym, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_related_sym.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_141 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_141

-- Dissect Fields: MD Security List_141 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_y.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tot_no_related_sym.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_fragment.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_related_sym_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Sym: No Related Sym entries
  local count = value or 0
  for md_security_list_141_related_sym_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141_related_sym.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_141_related_sym_index)
  end

  return index
end

-- Dissect: MD Security List_141 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Lots
b3_b3derivatives_umdf_fast_v5_0_12.lots = {}

-- Dissect Fields: Lots
b3_b3derivatives_umdf_fast_v5_0_12.lots.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Lot Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.lot_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Lot Size: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_lot_size.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Lots
b3_b3derivatives_umdf_fast_v5_0_12.lots.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.lots, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.lots.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_148 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_legs = {}

-- Dissect Fields: MD Security List_148 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_legs.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_symbol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Ratio Qty: int32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_ratio_qty.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:148|0:|11:LegRatioQty")

  -- Leg Security Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Side: int32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_side.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Security List_148 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_legs.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_148_legs, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_legs.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Tick Rules
b3_b3derivatives_umdf_fast_v5_0_12.tick_rules = {}

-- Dissect Fields: Tick Rules
b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Start Tick Price Range: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.start_tick_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { "10:dictionary|3:148|0:|37:decimal-exponentStartTickPriceRange", "10:dictionary|3:148|0:|37:decimal-mantissaStartTickPriceRange" })

  -- End Tick Price Range: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.end_tick_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { "10:dictionary|3:148|0:|35:decimal-exponentEndTickPriceRange", "10:dictionary|3:148|0:|35:decimal-mantissaEndTickPriceRange" })

  -- Tick Increment: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_increment.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { "10:dictionary|3:148|0:|31:decimal-exponentTickIncrement", "10:dictionary|3:148|0:|31:decimal-mantissaTickIncrement" })

  -- Tick Rule Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_rule_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Tick Rules
b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_rules, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instr Attrib
b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib = {}

-- Dissect Fields: Instr Attrib
b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Inst Attrib Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.inst_attrib_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Inst Attrib Value: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.inst_attrib_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Instr Attrib
b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.instr_attrib, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_148 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_underlyings = {}

-- Dissect Fields: MD Security List_148 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_symbol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Pct: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.index_pct.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { "10:dictionary|3:148|0:|26:decimal-exponentIndexPct", "10:dictionary|3:148|0:|26:decimal-mantissaIndexPct" })

  return index
end

-- Dissect: MD Security List_148 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_148_underlyings, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids = {}

-- Dissect Fields: Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt ID: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt ID Source: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:148|0:|19:SecurityAltIDSource")

  return index
end

-- Dissect: Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_alt_ids, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types = {}

-- Dissect Fields: Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Feed Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_feed_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Depth: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.feed_types, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.feed_types.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids = {}

-- Dissect Fields: Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl ID: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Feed Types: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_feed_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Feed Types: No MD Feed Types entries
  local count = value or 0
  for feed_types_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.feed_types.dissect(buffer, index, packet, parent, presence_map, base, state, feed_types_index)
  end

  return index
end

-- Dissect: Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_ids, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_148 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_related_sym = {}

-- Dissect Fields: MD Security List_148 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_related_sym.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:148|0:|10:SecurityID")

  -- Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Appl IDs: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_appl_ids.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl IDs: No Appl IDs entries
  local count = value or 0
  for appl_ids_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.dissect(buffer, index, packet, parent, presence_map, base, state, appl_ids_index)
  end

  -- No Security Alt ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt IDs: No Security Alt ID entries
  local count = value or 0
  for security_alt_ids_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_ids_index)
  end

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_security_list_148_underlyings_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_148_underlyings_index)
  end

  -- Implied Market Indicator: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.implied_market_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Instr Attrib: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_instr_attrib.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instr Attrib: No Instr Attrib entries
  local count = value or 0
  for instr_attrib_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.dissect(buffer, index, packet, parent, presence_map, base, state, instr_attrib_index)
  end

  -- No Tick Rules: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_tick_rules.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tick Rules: No Tick Rules entries
  local count = value or 0
  for tick_rules_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.dissect(buffer, index, packet, parent, presence_map, base, state, tick_rules_index)
  end

  -- No Legs: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_legs.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Legs: No Legs entries
  local count = value or 0
  for md_security_list_148_legs_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_legs.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_148_legs_index)
  end

  -- Security Update Action: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Lot Type Rules: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_lot_type_rules.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lots: No Lot Type Rules entries
  local count = value or 0
  for lots_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.lots.dissect(buffer, index, packet, parent, presence_map, base, state, lots_index)
  end

  -- Min Price Increment: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { "10:dictionary|3:148|0:|35:decimal-exponentMinPriceIncrement", "10:dictionary|3:148|0:|35:decimal-mantissaMinPriceIncrement" })

  -- Tick Size Denominator: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_size_denominator_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Divisor: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_divisor.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { "10:dictionary|3:148|0:|30:decimal-exponentPriceDivisor", "10:dictionary|3:148|0:|30:decimal-mantissaPriceDivisor" })

  -- Min Order Qty: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_order_qty_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Order Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.max_order_qty_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Multi Leg Model: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.multi_leg_model.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Multi Leg Price Method: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.multi_leg_price_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Currency: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Product: int32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.product.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Sub Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_sub_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Strategy Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_strategy_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Asset: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.asset_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Share Issued: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_share_issued.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.maturity_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Month Year: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.maturity_month_year.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Strike Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { "10:dictionary|3:148|0:|29:decimal-exponentStrikePrice", "10:dictionary|3:148|0:|29:decimal-mantissaStrikePrice" })

  -- Strike Currency: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.strike_currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exercise Style: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.exercise_style.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Put Or Call: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.put_or_call.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Contract Multiplier: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 4], nil }, state, { "10:dictionary|3:148|0:|36:decimal-exponentContractMultiplier", "10:dictionary|3:148|0:|36:decimal-mantissaContractMultiplier" })

  -- Contract Settl Month: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.contract_settl_month.dissect(buffer, index, packet, parent, nil, state, nil)

  -- CFI Code: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.cfi_code.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Country Of Issue: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.country_of_issue.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Issue Date: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.issue_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Dated Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.dated_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Start Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.start_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- End Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.end_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Validity Timestamp: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_validity_timestamp_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_segment_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Governance Indicator: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.governance_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Corporate Action Event ID: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.corporate_action_event_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_group_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Match Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_match_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Security List_148 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_related_sym.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_148_related_sym, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_related_sym.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_148 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_148

-- Dissect Fields: MD Security List_148 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_y.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tot_no_related_sym.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_fragment.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_related_sym_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Sym: No Related Sym entries
  local count = value or 0
  for md_security_list_148_related_sym_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148_related_sym.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_148_related_sym_index)
  end

  return index
end

-- Dissect: MD Security List_148 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Lots
b3_b3derivatives_umdf_fast_v5_0_12.lots = {}

-- Dissect Fields: Lots
b3_b3derivatives_umdf_fast_v5_0_12.lots.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Lot Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.lot_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Lot Size: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_lot_size.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Lots
b3_b3derivatives_umdf_fast_v5_0_12.lots.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.lots, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.lots.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_149 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_legs = {}

-- Dissect Fields: MD Security List_149 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_legs.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_symbol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_id_source.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Ratio Qty: int32, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_ratio_qty.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:149|0:|11:LegRatioQty")

  -- Leg Security Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Side: int32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_side.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.leg_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Security List_149 Legs
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_legs.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_149_legs, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_legs.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Tick Rules
b3_b3derivatives_umdf_fast_v5_0_12.tick_rules = {}

-- Dissect Fields: Tick Rules
b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Start Tick Price Range: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.start_tick_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { "10:dictionary|3:149|0:|37:decimal-exponentStartTickPriceRange", "10:dictionary|3:149|0:|37:decimal-mantissaStartTickPriceRange" })

  -- End Tick Price Range: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.end_tick_price_range.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { "10:dictionary|3:149|0:|35:decimal-exponentEndTickPriceRange", "10:dictionary|3:149|0:|35:decimal-mantissaEndTickPriceRange" })

  -- Tick Increment: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_increment.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { "10:dictionary|3:149|0:|31:decimal-exponentTickIncrement", "10:dictionary|3:149|0:|31:decimal-mantissaTickIncrement" })

  -- Tick Rule Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_rule_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Tick Rules
b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.tick_rules, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instr Attrib
b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib = {}

-- Dissect Fields: Instr Attrib
b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Inst Attrib Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.inst_attrib_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Inst Attrib Value: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.inst_attrib_value.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Instr Attrib
b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.instr_attrib, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_149 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_underlyings = {}

-- Dissect Fields: MD Security List_149 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_symbol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security ID: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_id_source_constant_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Index Pct: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.index_pct.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { "10:dictionary|3:149|0:|26:decimal-exponentIndexPct", "10:dictionary|3:149|0:|26:decimal-mantissaIndexPct" })

  -- Index Theoretical Qty: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.index_theoretical_qty.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { "10:dictionary|3:149|0:|37:decimal-exponentIndexTheoreticalQty", "10:dictionary|3:149|0:|37:decimal-mantissaIndexTheoreticalQty" })

  return index
end

-- Dissect: MD Security List_149 Underlyings
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_149_underlyings, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids = {}

-- Dissect Fields: Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt ID: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt ID Source: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_id_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:149|0:|19:SecurityAltIDSource")

  return index
end

-- Dissect: Security Alt IDs
b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.security_alt_ids, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types = {}

-- Dissect Fields: Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- MD Feed Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_feed_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Depth: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_depth_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Feed Types
b3_b3derivatives_umdf_fast_v5_0_12.feed_types.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.feed_types, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.feed_types.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids = {}

-- Dissect Fields: Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl ID: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No MD Feed Types: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_md_feed_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Feed Types: No MD Feed Types entries
  local count = value or 0
  for feed_types_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.feed_types.dissect(buffer, index, packet, parent, presence_map, base, state, feed_types_index)
  end

  return index
end

-- Dissect: Appl IDs
b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.appl_ids, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_149 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_related_sym = {}

-- Dissect Fields: MD Security List_149 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_related_sym.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Symbol: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security ID: uInt64, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:149|0:|10:SecurityID")

  -- Security ID Source: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_id_source_constant_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Appl IDs: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_appl_ids.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl IDs: No Appl IDs entries
  local count = value or 0
  for appl_ids_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.appl_ids.dissect(buffer, index, packet, parent, presence_map, base, state, appl_ids_index)
  end

  -- No Security Alt ID: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt IDs: No Security Alt ID entries
  local count = value or 0
  for security_alt_ids_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.security_alt_ids.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_ids_index)
  end

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_security_list_149_underlyings_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_149_underlyings_index)
  end

  -- Implied Market Indicator: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.implied_market_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Instr Attrib: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_instr_attrib.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instr Attrib: No Instr Attrib entries
  local count = value or 0
  for instr_attrib_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.instr_attrib.dissect(buffer, index, packet, parent, presence_map, base, state, instr_attrib_index)
  end

  -- No Tick Rules: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_tick_rules.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tick Rules: No Tick Rules entries
  local count = value or 0
  for tick_rules_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.tick_rules.dissect(buffer, index, packet, parent, presence_map, base, state, tick_rules_index)
  end

  -- No Legs: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_legs.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Legs: No Legs entries
  local count = value or 0
  for md_security_list_149_legs_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_legs.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_149_legs_index)
  end

  -- Security Update Action: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_update_action.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Lot Type Rules: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_lot_type_rules.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lots: No Lot Type Rules entries
  local count = value or 0
  for lots_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.lots.dissect(buffer, index, packet, parent, presence_map, base, state, lots_index)
  end

  -- Min Price Increment: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_price_increment_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { "10:dictionary|3:149|0:|35:decimal-exponentMinPriceIncrement", "10:dictionary|3:149|0:|35:decimal-mantissaMinPriceIncrement" })

  -- Tick Size Denominator: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tick_size_denominator_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Divisor: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.price_divisor.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { "10:dictionary|3:149|0:|30:decimal-exponentPriceDivisor", "10:dictionary|3:149|0:|30:decimal-mantissaPriceDivisor" })

  -- Min Order Qty: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.min_order_qty_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Order Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.max_order_qty_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Multi Leg Model: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.multi_leg_model.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Multi Leg Price Method: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.multi_leg_price_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Currency: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Product: int32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.product.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Sub Type: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_sub_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Strategy Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_strategy_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Asset: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.asset_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Share Issued: uInt64, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_share_issued.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.maturity_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Month Year: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.maturity_month_year.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Strike Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { "10:dictionary|3:149|0:|29:decimal-exponentStrikePrice", "10:dictionary|3:149|0:|29:decimal-mantissaStrikePrice" })

  -- Strike Currency: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.strike_currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Exercise Style: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.exercise_style.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Put Or Call: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.put_or_call.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Contract Multiplier: decimal, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.contract_multiplier_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 4], nil }, state, { "10:dictionary|3:149|0:|36:decimal-exponentContractMultiplier", "10:dictionary|3:149|0:|36:decimal-mantissaContractMultiplier" })

  -- Contract Settl Month: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.contract_settl_month.dissect(buffer, index, packet, parent, nil, state, nil)

  -- CFI Code: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.cfi_code.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Country Of Issue: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.country_of_issue.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Issue Date: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.issue_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Dated Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.dated_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Start Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.start_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- End Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.end_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Type: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Validity Timestamp: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_validity_timestamp_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Segment ID: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.market_segment_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Governance Indicator: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.governance_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Corporate Action Event ID: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.corporate_action_event_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_group_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Match Type: int32, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.security_match_type.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Security List_149 Related Sym
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_related_sym.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_149_related_sym, buffer(offset, 0))
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

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_related_sym.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- MD Security List_149 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_security_list_149

-- Dissect Fields: MD Security List_149 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_type_constant_y.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.tot_no_related_sym.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: string, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.last_fragment.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.no_related_sym_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Sym: No Related Sym entries
  local count = value or 0
  for md_security_list_149_related_sym_index = 1, count do
    index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149_related_sym.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_149_related_sym_index)
  end

  return index
end

-- Dissect: MD Security List_149 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Tcp Request Reject_117 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_tcp_request_reject_117 = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_tcp_request_reject_117.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_tcp_request_reject_117
b3_b3derivatives_umdf_fast_v5_0_12.md_tcp_request_reject_117.presence = {
  [2] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_md_req_id,
  [3] = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_md_req_rej_reason,
}

-- Dissect Fields: MD Tcp Request Reject_117 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_tcp_request_reject_117.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_y_1.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- MD Req ID: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_req_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:117|0:|7:MDReqID")

  -- MD Req Rej Reason: string, Copy
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.md_req_rej_reason.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:117|0:|14:MDReqRejReason")

  -- Text: string, sent, optional
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Tcp Request Reject_117 Message
b3_b3derivatives_umdf_fast_v5_0_12.md_tcp_request_reject_117.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_tcp_request_reject_117.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- MD Non Fix Message
b3_b3derivatives_umdf_fast_v5_0_12.md_non_fix = {}

b3_b3derivatives_umdf_fast_v5_0_12.md_non_fix.node = omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.md_non_fix

-- Dissect Fields: MD Non Fix Message
b3_b3derivatives_umdf_fast_v5_0_12.md_non_fix.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_type_constant_n.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.sending_time_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver ID: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.appl_ver_id_constant_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Data Len: uInt32, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.data_len.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Data: byteVector, sent
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.data.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Encoding: string, Constant
  index, value = b3_b3derivatives_umdf_fast_v5_0_12.message_encoding.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: MD Non Fix Message
b3_b3derivatives_umdf_fast_v5_0_12.md_non_fix.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdf_fast_v5_0_12.md_non_fix.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- B3 B3Derivatives Umdf Fast 5.0.12 Message Dispatch
b3_b3derivatives_umdf_fast_v5_0_12.templates = {
  [140] = b3_b3derivatives_umdf_fast_v5_0_12.md_non_fix,
  [117] = b3_b3derivatives_umdf_fast_v5_0_12.md_tcp_request_reject_117,
  [149] = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_149,
  [148] = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_148,
  [141] = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_141,
  [111] = b3_b3derivatives_umdf_fast_v5_0_12.md_security_list_111,
  [81] = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_81,
  [150] = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_150,
  [145] = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_145,
  [138] = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_138,
  [123] = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_123,
  [126] = b3_b3derivatives_umdf_fast_v5_0_12.md_inc_refresh_126,
  [142] = b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_142,
  [134] = b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_134,
  [125] = b3_b3derivatives_umdf_fast_v5_0_12.md_security_status_125,
  [127] = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_127,
  [151] = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_151,
  [147] = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_147,
  [146] = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_146,
  [139] = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_139,
  [128] = b3_b3derivatives_umdf_fast_v5_0_12.md_snapshot_full_refresh_128,
  [143] = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_143,
  [137] = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_137,
  [120] = b3_b3derivatives_umdf_fast_v5_0_12.md_news_message_120,
  [144] = b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_144,
  [129] = b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_129,
  [101] = b3_b3derivatives_umdf_fast_v5_0_12.md_heartbeat_101,
  [118] = b3_b3derivatives_umdf_fast_v5_0_12.md_logon_118,
  [119] = b3_b3derivatives_umdf_fast_v5_0_12.md_logout_119,
  [122] = b3_b3derivatives_umdf_fast_v5_0_12.md_sequence_reset,
}

-- B3 B3Derivatives Umdf Fast 5.0.12 Template Names
b3_b3derivatives_umdf_fast_v5_0_12.template_id = {}

-- Display: Template Id
b3_b3derivatives_umdf_fast_v5_0_12.template_id.display = function(value)
  if value == 140 then
    return "Template Id: MDNonFix (140)"
  end
  if value == 117 then
    return "Template Id: MDTcpRequestReject_117 (117)"
  end
  if value == 149 then
    return "Template Id: MDSecurityList_149 (149)"
  end
  if value == 148 then
    return "Template Id: MDSecurityList_148 (148)"
  end
  if value == 141 then
    return "Template Id: MDSecurityList_141 (141)"
  end
  if value == 111 then
    return "Template Id: MDSecurityList_111 (111)"
  end
  if value == 81 then
    return "Template Id: MDIncRefresh_81 (81)"
  end
  if value == 150 then
    return "Template Id: MDIncRefresh_150 (150)"
  end
  if value == 145 then
    return "Template Id: MDIncRefresh_145 (145)"
  end
  if value == 138 then
    return "Template Id: MDIncRefresh_138 (138)"
  end
  if value == 123 then
    return "Template Id: MDIncRefresh_123 (123)"
  end
  if value == 126 then
    return "Template Id: MDIncRefresh_126 (126)"
  end
  if value == 142 then
    return "Template Id: MDSecurityStatus_142 (142)"
  end
  if value == 134 then
    return "Template Id: MDSecurityStatus_134 (134)"
  end
  if value == 125 then
    return "Template Id: MDSecurityStatus_125 (125)"
  end
  if value == 127 then
    return "Template Id: MDSnapshotFullRefresh_127 (127)"
  end
  if value == 151 then
    return "Template Id: MDSnapshotFullRefresh_151 (151)"
  end
  if value == 147 then
    return "Template Id: MDSnapshotFullRefresh_147 (147)"
  end
  if value == 146 then
    return "Template Id: MDSnapshotFullRefresh_146 (146)"
  end
  if value == 139 then
    return "Template Id: MDSnapshotFullRefresh_139 (139)"
  end
  if value == 128 then
    return "Template Id: MDSnapshotFullRefresh_128 (128)"
  end
  if value == 143 then
    return "Template Id: MDNewsMessage_143 (143)"
  end
  if value == 137 then
    return "Template Id: MDNewsMessage_137 (137)"
  end
  if value == 120 then
    return "Template Id: MDNewsMessage_120 (120)"
  end
  if value == 144 then
    return "Template Id: MDHeartbeat_144 (144)"
  end
  if value == 129 then
    return "Template Id: MDHeartbeat_129 (129)"
  end
  if value == 101 then
    return "Template Id: MDHeartbeat_101 (101)"
  end
  if value == 118 then
    return "Template Id: MDLogon_118 (118)"
  end
  if value == 119 then
    return "Template Id: MDLogout_119 (119)"
  end
  if value == 122 then
    return "Template Id: MDSequenceReset (122)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
b3_b3derivatives_umdf_fast_v5_0_12.template_id.name = function(value)
  if value == 140 then
    return "MDNonFix"
  end
  if value == 117 then
    return "MDTcpRequestReject_117"
  end
  if value == 149 then
    return "MDSecurityList_149"
  end
  if value == 148 then
    return "MDSecurityList_148"
  end
  if value == 141 then
    return "MDSecurityList_141"
  end
  if value == 111 then
    return "MDSecurityList_111"
  end
  if value == 81 then
    return "MDIncRefresh_81"
  end
  if value == 150 then
    return "MDIncRefresh_150"
  end
  if value == 145 then
    return "MDIncRefresh_145"
  end
  if value == 138 then
    return "MDIncRefresh_138"
  end
  if value == 123 then
    return "MDIncRefresh_123"
  end
  if value == 126 then
    return "MDIncRefresh_126"
  end
  if value == 142 then
    return "MDSecurityStatus_142"
  end
  if value == 134 then
    return "MDSecurityStatus_134"
  end
  if value == 125 then
    return "MDSecurityStatus_125"
  end
  if value == 127 then
    return "MDSnapshotFullRefresh_127"
  end
  if value == 151 then
    return "MDSnapshotFullRefresh_151"
  end
  if value == 147 then
    return "MDSnapshotFullRefresh_147"
  end
  if value == 146 then
    return "MDSnapshotFullRefresh_146"
  end
  if value == 139 then
    return "MDSnapshotFullRefresh_139"
  end
  if value == 128 then
    return "MDSnapshotFullRefresh_128"
  end
  if value == 143 then
    return "MDNewsMessage_143"
  end
  if value == 137 then
    return "MDNewsMessage_137"
  end
  if value == 120 then
    return "MDNewsMessage_120"
  end
  if value == 144 then
    return "MDHeartbeat_144"
  end
  if value == 129 then
    return "MDHeartbeat_129"
  end
  if value == 101 then
    return "MDHeartbeat_101"
  end
  if value == 118 then
    return "MDLogon_118"
  end
  if value == 119 then
    return "MDLogout_119"
  end
  if value == 122 then
    return "MDSequenceReset"
  end

  return "Unknown"
end

-- B3 B3Derivatives Umdf Fast 5.0.12 Packet Dissector
omi_b3_b3derivatives_umdf_fast_v5_0_12.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "B3 B3Derivatives Umdf Fast 5.0.12"
  local root = parent:add(omi_b3_b3derivatives_umdf_fast_v5_0_12, buffer(), "B3 B3Derivatives Umdf Fast 5.0.12")
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

    local template = b3_b3derivatives_umdf_fast_v5_0_12.templates[template_id]
    local message_tree = nil

    if template ~= nil then
      message_tree = holder:add(template.node, buffer(start, 0))
    else
      message_tree = holder:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message, buffer(start, 0))
      message_tree:set_text(b3_b3derivatives_umdf_fast_v5_0_12.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.message_header, buffer(start, offset - start))
    local named = nil
    if template ~= nil then
      named = template.presence
    end
    add_presence_map(header, buffer(start, mapped - start), omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_map, omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_stop, omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_identified, omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.presence_unused, named)
    header:add(omi_b3_b3derivatives_umdf_fast_v5_0_12.fields.template_id, buffer(identified, offset - identified), template_id, b3_b3derivatives_umdf_fast_v5_0_12.template_id.display(template_id))

    if template == nil then
      message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 140 (MDNonFix), 117 (MDTcpRequestReject_117), 149 (MDSecurityList_149), 148 (MDSecurityList_148), 141 (MDSecurityList_141), 111 (MDSecurityList_111), 81 (MDIncRefresh_81), 150 (MDIncRefresh_150), 145 (MDIncRefresh_145), 138 (MDIncRefresh_138), 123 (MDIncRefresh_123), 126 (MDIncRefresh_126), 142 (MDSecurityStatus_142), 134 (MDSecurityStatus_134), 125 (MDSecurityStatus_125), 127 (MDSnapshotFullRefresh_127), 151 (MDSnapshotFullRefresh_151), 147 (MDSnapshotFullRefresh_147), 146 (MDSnapshotFullRefresh_146), 139 (MDSnapshotFullRefresh_139), 128 (MDSnapshotFullRefresh_128), 143 (MDNewsMessage_143), 137 (MDNewsMessage_137), 120 (MDNewsMessage_120), 144 (MDHeartbeat_144), 129 (MDHeartbeat_129), 101 (MDHeartbeat_101), 118 (MDLogon_118), 119 (MDLogout_119), 122 (MDSequenceReset)")
      message_tree:set_len(offset - start)
      return
    end

    offset = template.dissect(buffer, offset, packet, message_tree, presence_map, 2, state, nil)
    messages = messages + 1

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
omi_b3_b3derivatives_umdf_fast_v5_0_12.init = function()
  stream_states = {}
end

-- Register B3 B3Derivatives Umdf Fast 5.0.12 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_b3_b3derivatives_umdf_fast_v5_0_12)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Brasil, Bolsa, Balcão
--   Version: v5.0.12
--   Specification: UMDF_FIX-FAST_MarketDataSpecification_v2.1.7.pdf
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
