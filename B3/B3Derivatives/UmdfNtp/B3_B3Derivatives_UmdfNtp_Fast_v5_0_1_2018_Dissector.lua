-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- B3 B3Derivatives UmdfNtp Fast 5.0.1.2018 Protocol
local omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018 = Proto("Omi.B3.B3Derivatives.UmdfNtp.Fast.v5.0.1.2018", "B3 B3Derivatives UmdfNtp Fast 5.0.1.2018")

-- Protocol table
local b3_b3derivatives_umdfntp_fast_v5_0_1_2018 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- B3 B3Derivatives UmdfNtp Fast 5.0.1.2018 Framing
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message = ProtoField.new("Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.message", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_header = ProtoField.new("Message Header", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.messageheader", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_map = ProtoField.new("Presence Map", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.presencemap", ftypes.BYTES)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.template_id = ProtoField.new("Template Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.templateid", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_stop = ProtoField.new("Stop Bit", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.presencestop", ftypes.UINT8, { [0] = "Clear", [1] = "Set" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_identified = ProtoField.new("Template Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.presencetemplateid", ftypes.UINT8, { [0] = "Repeated", [1] = "Sent" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_unused = ProtoField.new("Unused", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.presenceunused", ftypes.UINT8, nil, base.HEX)

-- B3 B3Derivatives UmdfNtp Fast 5.0.1.2018 Presence Map Fields
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_md_req_id = ProtoField.new("Md Req Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdreqidpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_md_req_rej_reason = ProtoField.new("Md Req Rej Reason", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdreqrejreasonpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag = ProtoField.new("Pos Dup Flag", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.posdupflagpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent = ProtoField.new("Exponent", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.exponentpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_security_id_source = ProtoField.new("Security Id Source", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityidsourcepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_user_defined_instrument = ProtoField.new("User Defined Instrument", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.userdefinedinstrumentpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_contract_multiplier_type = ProtoField.new("Contract Multiplier Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.contractmultipliertypepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_news_source = ProtoField.new("News Source", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.newssourcepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_language_code = ProtoField.new("Language Code", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.languagecodepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_headline = ProtoField.new("Headline", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.headlinepresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_url_link = ProtoField.new("Url Link", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.urllinkpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_appl_ver_id = ProtoField.new("Appl Ver Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.applveridpresence", ftypes.UINT8, { [0] = "Absent", [1] = "Present" }, base.DEC)

-- B3 B3Derivatives UmdfNtp Fast 5.0.1.2018 Fields
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type = ProtoField.new("Message Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.messagetype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.msgseqnum", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.sending_time = ProtoField.new("Sending Time", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.sendingtime", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_ver_id = ProtoField.new("Appl Ver Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.applverid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_req_id = ProtoField.new("Md Req Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdreqid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_req_rej_reason = ProtoField.new("Md Req Rej Reason", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdreqrejreason", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.text = ProtoField.new("Text", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.text", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tot_no_related_sym = ProtoField.new("Tot No Related Sym", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.totnorelatedsym", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.last_fragment = ProtoField.new("Last Fragment", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.lastfragment", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_related_sym = ProtoField.new("No Related Sym", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.norelatedsym", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.symbol = ProtoField.new("Symbol", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.symbol", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint64 = ProtoField.new("Security Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityid.uint64", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint32 = ProtoField.new("Security Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityid.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_source_string = ProtoField.new("Security Id Source", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityidsource.string", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_source_uint32 = ProtoField.new("Security Id Source", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityidsource.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_exchange = ProtoField.new("Security Exchange", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityexchange", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_appl_ids = ProtoField.new("No Appl Ids", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.noapplids", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_id = ProtoField.new("Appl Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.applid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_md_feed_types = ProtoField.new("No Md Feed Types", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.nomdfeedtypes", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_type = ProtoField.new("Md Feed Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdfeedtype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.market_depth_uint32 = ProtoField.new("Market Depth", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.marketdepth.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.market_depth_int32 = ProtoField.new("Market Depth", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.marketdepth.int32", ftypes.INT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_security_alt_id = ProtoField.new("No Security Alt Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.nosecurityaltid", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_id = ProtoField.new("Security Alt Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityaltid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_id_source_string = ProtoField.new("Security Alt Id Source", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityaltidsource.string", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_id_source_uint32 = ProtoField.new("Security Alt Id Source", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityaltidsource.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_underlyings = ProtoField.new("No Underlyings", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.nounderlyings", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.underlyingsymbol", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_uint64 = ProtoField.new("Underlying Security Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.underlyingsecurityid.uint64", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_uint32 = ProtoField.new("Underlying Security Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.underlyingsecurityid.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_source_string = ProtoField.new("Underlying Security Id Source", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.underlyingsecurityidsource.string", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_source_uint32 = ProtoField.new("Underlying Security Id Source", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.underlyingsecurityidsource.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_exchange = ProtoField.new("Underlying Security Exchange", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.underlyingsecurityexchange", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_legs = ProtoField.new("No Legs", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.nolegs", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_symbol = ProtoField.new("Leg Symbol", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legsymbol", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_id = ProtoField.new("Leg Security Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legsecurityid", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_id_source_string = ProtoField.new("Leg Security Id Source", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legsecurityidsource.string", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_id_source_uint32 = ProtoField.new("Leg Security Id Source", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legsecurityidsource.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_ratio_qty_int32 = ProtoField.new("Leg Ratio Qty", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legratioqty.int32", ftypes.INT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_ratio_qty_uint32 = ProtoField.new("Leg Ratio Qty", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legratioqty.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_type = ProtoField.new("Leg Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legtype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.buyers_perspective = ProtoField.new("Buyers Perspective", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.buyersperspective", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_exchange = ProtoField.new("Leg Security Exchange", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legsecurityexchange", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_update_action = ProtoField.new("Security Update Action", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityupdateaction", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.round_lot = ProtoField.new("Round Lot", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.roundlot", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_trade_vol = ProtoField.new("Min Trade Vol", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mintradevol", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_price_increment = ProtoField.new("Min Price Increment", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.minpriceincrement", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tick_size_denominator = ProtoField.new("Tick Size Denominator", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.ticksizedenominator", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_order_qty = ProtoField.new("Min Order Qty", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.minorderqty", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.max_order_qty = ProtoField.new("Max Order Qty", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.maxorderqty", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instrument_id = ProtoField.new("Instrument Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.instrumentid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.currency = ProtoField.new("Currency", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.currency", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_currency = ProtoField.new("Settl Currency", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.settlcurrency", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_type = ProtoField.new("Security Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securitytype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_sub_type = ProtoField.new("Security Sub Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securitysubtype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.asset = ProtoField.new("Asset", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.asset", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_desc = ProtoField.new("Security Desc", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securitydesc", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_date_uint32 = ProtoField.new("Maturity Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.maturitydate.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_date_uint64 = ProtoField.new("Maturity Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.maturitydate.uint64", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_month_year_uint32 = ProtoField.new("Maturity Month Year", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.maturitymonthyear.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_month_year_uint64 = ProtoField.new("Maturity Month Year", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.maturitymonthyear.uint64", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.strike_price = ProtoField.new("Strike Price", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.strikeprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.strike_currency = ProtoField.new("Strike Currency", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.strikecurrency", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_multiplier_double = ProtoField.new("Contract Multiplier", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.contractmultiplier.double", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_multiplier_uint32 = ProtoField.new("Contract Multiplier", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.contractmultiplier.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_settl_month = ProtoField.new("Contract Settl Month", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.contractsettlmonth", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.cfi_code = ProtoField.new("Cfi Code", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.cficode", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.country_of_issue = ProtoField.new("Country Of Issue", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.countryofissue", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.issue_date = ProtoField.new("Issue Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.issuedate", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.dated_date = ProtoField.new("Dated Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.dateddate", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.start_date = ProtoField.new("Start Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.startdate", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.end_date = ProtoField.new("End Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.enddate", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_type = ProtoField.new("Settl Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.settltype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_date = ProtoField.new("Settl Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.settldate", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_validity_timestamp = ProtoField.new("Security Validity Timestamp", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityvaliditytimestamp", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_group = ProtoField.new("Security Group", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securitygroup", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.pos_dup_flag = ProtoField.new("Pos Dup Flag", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.posdupflag", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_md_entries = ProtoField.new("No Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.nomdentries", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action = ProtoField.new("Md Update Action", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdupdateaction", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level = ProtoField.new("Md Price Level", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdpricelevel", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_type = ProtoField.new("Md Entry Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdentrytype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.rpt_seq = ProtoField.new("Rpt Seq", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.rptseq", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_px = ProtoField.new("Md Entry Px", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdentrypx", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_time_uint32 = ProtoField.new("Md Entry Time", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdentrytime.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_time_string = ProtoField.new("Md Entry Time", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdentrytime.string", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_size_int32 = ProtoField.new("Md Entry Size", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdentrysize.int32", ftypes.INT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_size_int64 = ProtoField.new("Md Entry Size", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdentrysize.int64", ftypes.INT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_condition = ProtoField.new("Quote Condition", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.quotecondition", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders = ProtoField.new("Number Of Orders", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.numberoforders", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_session_id = ProtoField.new("Trading Session Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradingsessionid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_date = ProtoField.new("Trade Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradedate", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_type = ProtoField.new("Price Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.pricetype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_date = ProtoField.new("Md Entry Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdentrydate", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_insert_date = ProtoField.new("Md Insert Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdinsertdate", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_insert_time = ProtoField.new("Md Insert Time", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdinserttime", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_stream_id = ProtoField.new("Md Stream Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdstreamid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.netchgprevday", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.seller_days = ProtoField.new("Seller Days", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.sellerdays", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_volume_uint64 = ProtoField.new("Trade Volume", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradevolume.uint64", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_volume_uint32 = ProtoField.new("Trade Volume", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradevolume.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tick_direction = ProtoField.new("Tick Direction", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tickdirection", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_condition = ProtoField.new("Trade Condition", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradecondition", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.open_close_settle_flag_uint32 = ProtoField.new("Open Close Settle Flag", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.openclosesettleflag.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.open_close_settle_flag_string = ProtoField.new("Open Close Settle Flag", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.openclosesettleflag.string", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.order_id = ProtoField.new("Order Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.orderid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_id = ProtoField.new("Trade Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradeid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_buyer = ProtoField.new("Md Entry Buyer", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdentrybuyer", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_seller = ProtoField.new("Md Entry Seller", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdentryseller", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_position_no = ProtoField.new("Md Entry Position No", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdentrypositionno", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settle_price_type_uint32 = ProtoField.new("Settle Price Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.settlepricetype.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settle_price_type_string = ProtoField.new("Settle Price Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.settlepricetype.string", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_band_type = ProtoField.new("Price Band Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.pricebandtype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_limit_type = ProtoField.new("Price Limit Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.pricelimittype", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.low_limit_price = ProtoField.new("Low Limit Price", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.lowlimitprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.high_limit_price = ProtoField.new("High Limit Price", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.highlimitprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_ref_price = ProtoField.new("Trading Ref Price", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradingrefprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.sender_comp_id = ProtoField.new("Sender Comp Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.sendercompid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.fixing_bracket = ProtoField.new("Fixing Bracket", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.fixingbracket", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.aggressor_side = ProtoField.new("Aggressor Side", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.aggressorside", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.match_event_indicator = ProtoField.new("Match Event Indicator", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.matcheventindicator", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_type = ProtoField.new("Md Quote Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdquotetype", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.totnumreports", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_events = ProtoField.new("No Events", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.noevents", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.event_type = ProtoField.new("Event Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.eventtype", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.event_date = ProtoField.new("Event Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.eventdate", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.event_time = ProtoField.new("Event Time", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.eventtime", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_reference_price = ProtoField.new("Trading Reference Price", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradingreferenceprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.high_limit_px = ProtoField.new("High Limit Px", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.highlimitpx", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.low_limit_px = ProtoField.new("Low Limit Px", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.lowlimitpx", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_product = ProtoField.new("Underlying Product", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.underlyingproduct", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.pricing_model = ProtoField.new("Pricing Model", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.pricingmodel", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_cab_price = ProtoField.new("Min Cab Price", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mincabprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.expiration_cycle = ProtoField.new("Expiration Cycle", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.expirationcycle", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.unit_of_measure_qty = ProtoField.new("Unit Of Measure Qty", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.unitofmeasureqty", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.max_trade_vol = ProtoField.new("Max Trade Vol", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.maxtradevol", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.match_algo = ProtoField.new("Match Algo", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.matchalgo", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.max_price_variation = ProtoField.new("Max Price Variation", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.maxpricevariation", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.impliedmarketindicator", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_instr_attrib = ProtoField.new("No Instr Attrib", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.noinstrattrib", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib_type = ProtoField.new("Instr Attrib Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.instrattribtype", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib_value = ProtoField.new("Instr Attrib Value", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.instrattribvalue", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.minpriceincrementamount", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.last_update_time = ProtoField.new("Last Update Time", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.lastupdatetime", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.display_factor = ProtoField.new("Display Factor", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.displayfactor", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_desc = ProtoField.new("Leg Security Desc", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legsecuritydesc", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_side = ProtoField.new("Leg Side", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legside", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_group = ProtoField.new("Leg Security Group", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legsecuritygroup", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_cfi_code = ProtoField.new("Leg Cfi Code", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legcficode", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_sub_type = ProtoField.new("Leg Security Sub Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legsecuritysubtype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_currency = ProtoField.new("Leg Currency", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legcurrency", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_maturity_month_year = ProtoField.new("Leg Maturity Month Year", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legmaturitymonthyear", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_strike_price = ProtoField.new("Leg Strike Price", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legstrikeprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_strike_currency = ProtoField.new("Leg Strike Currency", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legstrikecurrency", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_price = ProtoField.new("Leg Price", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legprice", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_option_delta = ProtoField.new("Leg Option Delta", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.legoptiondelta", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.user_defined_instrument = ProtoField.new("User Defined Instrument", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.userdefinedinstrument", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_ratio = ProtoField.new("Price Ratio", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.priceratio", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_multiplier_type = ProtoField.new("Contract Multiplier Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.contractmultipliertype", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.flow_schedule_type = ProtoField.new("Flow Schedule Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.flowscheduletype", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.unitof_measure = ProtoField.new("Unitof Measure", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.unitofmeasure", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.decay_quantity = ProtoField.new("Decay Quantity", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.decayquantity", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.decay_start_date = ProtoField.new("Decay Start Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.decaystartdate", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.original_contract_size = ProtoField.new("Original Contract Size", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.originalcontractsize", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.cleared_volume = ProtoField.new("Cleared Volume", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.clearedvolume", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.open_interest_qty = ProtoField.new("Open Interest Qty", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.openinterestqty", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_reference_date = ProtoField.new("Trading Reference Date", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradingreferencedate", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.num_lot_type_rules = ProtoField.new("Num Lot Type Rules", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.numlottyperules", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.lot_type = ProtoField.new("Lot Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.lottype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_lot_size = ProtoField.new("Min Lot Size", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.minlotsize", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_feed_id = ProtoField.new("Appl Feed Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.applfeedid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_req_id = ProtoField.new("Quote Req Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.quotereqid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.order_qty = ProtoField.new("Order Qty", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.orderqty", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.side = ProtoField.new("Side", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.side", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.transact_time = ProtoField.new("Transact Time", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.transacttime", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_type = ProtoField.new("Quote Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.quotetype", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradingsessionsubid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_trading_status = ProtoField.new("Security Trading Status", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securitytradingstatus", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trad_ses_open_time_uint64 = ProtoField.new("Trad Ses Open Time", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradsesopentime.uint64", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trad_ses_open_time_uint32 = ProtoField.new("Trad Ses Open Time", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.tradsesopentime.uint32", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_trading_event = ProtoField.new("Security Trading Event", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securitytradingevent", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.high_px = ProtoField.new("High Px", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.highpx", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.low_px = ProtoField.new("Low Px", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.lowpx", ftypes.DOUBLE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.halt_reason = ProtoField.new("Halt Reason", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.haltreason", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.lastmsgseqnumprocessed", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.curerncy = ProtoField.new("Curerncy", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.curerncy", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.day_cum_qty = ProtoField.new("Day Cum Qty", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.daycumqty", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_book_type = ProtoField.new("Md Book Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdbooktype", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_trading_status = ProtoField.new("Md Security Trading Status", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritytradingstatus", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.orig_time = ProtoField.new("Orig Time", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.origtime", ftypes.UINT64)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.news_source = ProtoField.new("News Source", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.newssource", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.language_code = ProtoField.new("Language Code", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.languagecode", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.headline = ProtoField.new("Headline", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.headline", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.url_link = ProtoField.new("Url Link", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.urllink", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_routing_i_ds = ProtoField.new("No Routing I Ds", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.noroutingids", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.routing_type = ProtoField.new("Routing Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.routingtype", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.routing_id = ProtoField.new("Routing Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.routingid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_lines_of_text = ProtoField.new("No Lines Of Text", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.nolinesoftext", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.encoded_text_len = ProtoField.new("Encoded Text Len", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.encodedtextlen", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.encoded_text = ProtoField.new("Encoded Text", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.encodedtext", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.encrypt_method = ProtoField.new("Encrypt Method", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.encryptmethod", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.heartbeat_int = ProtoField.new("Heartbeat Int", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.heartbeatint", ftypes.UINT32)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.default_appl_ver_id = ProtoField.new("Default Appl Ver Id", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.defaultapplverid", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.msg_type = ProtoField.new("Msg Type", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.msgtype", ftypes.STRING)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.new_seq_no = ProtoField.new("New Seq No", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.newseqno", ftypes.UINT32)

-- B3 B3Derivatives UmdfNtp Fast 5.0.1.2018 Messages
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_tcp_request_reject_117 = ProtoField.new("Md Tcp Request Reject_117 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdtcprequestreject_117", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_list_111 = ProtoField.new("Md Security List_111 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritylist_111", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.related_symbols = ProtoField.new("Related Symbols", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.relatedsymbols", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_ids = ProtoField.new("Appl Ids", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.applids", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.feed_types = ProtoField.new("Feed Types", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.feedtypes", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_i_ds = ProtoField.new("Security Alt I Ds", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityaltids", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_list_111_underlyings = ProtoField.new("Md Security List_111 Underlyings", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritylist_111underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_list_111_legs = ProtoField.new("Md Security List_111 Legs", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritylist_111legs", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_81 = ProtoField.new("Md Inc Refresh_81 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_81", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_81_md_entries = ProtoField.new("Md Inc Refresh_81 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_81mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_126 = ProtoField.new("Md Inc Refresh_126 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_126", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_126_md_entries = ProtoField.new("Md Inc Refresh_126 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_126mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_123 = ProtoField.new("Md Inc Refresh_123 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_123", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_123_md_entries = ProtoField.new("Md Inc Refresh_123 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_123mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_110 = ProtoField.new("Md Inc Refresh_110 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_110", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_110_md_entries = ProtoField.new("Md Inc Refresh_110 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_110mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_109 = ProtoField.new("Md Inc Refresh_109 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_109", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_109_md_entries = ProtoField.new("Md Inc Refresh_109 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_109mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_108 = ProtoField.new("Md Inc Refresh_108 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_108", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_108_md_entries = ProtoField.new("Md Inc Refresh_108 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_108mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_97 = ProtoField.new("Md Inc Refresh_97 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_97", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_97_md_entries = ProtoField.new("Md Inc Refresh_97 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_97mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_77 = ProtoField.new("Md Inc Refresh_77 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_77", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_77_md_entries = ProtoField.new("Md Inc Refresh_77 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_77mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_103 = ProtoField.new("Md Inc Refresh_103 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_103", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_103_md_entries = ProtoField.new("Md Inc Refresh_103 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_103mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_69 = ProtoField.new("Md Inc Refresh_69 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_69", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_69_md_entries = ProtoField.new("Md Inc Refresh_69 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_69mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_83 = ProtoField.new("Md Inc Refresh_83 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_83", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_83_md_entries = ProtoField.new("Md Inc Refresh_83 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_83mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_32 = ProtoField.new("Md Inc Refresh_32 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_32", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_32_md_entries = ProtoField.new("Md Inc Refresh_32 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_32mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_84 = ProtoField.new("Md Inc Refresh_84 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_84", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_84_md_entries = ProtoField.new("Md Inc Refresh_84 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_84mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_68 = ProtoField.new("Md Inc Refresh_68 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_68", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_68_md_entries = ProtoField.new("Md Inc Refresh_68 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_68mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_104 = ProtoField.new("Md Inc Refresh_104 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_104", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_104_md_entries = ProtoField.new("Md Inc Refresh_104 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_104mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_71 = ProtoField.new("Md Inc Refresh_71 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_71", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_71_md_entries = ProtoField.new("Md Inc Refresh_71 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_71mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_59 = ProtoField.new("Md Inc Refresh_59 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_59", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_59_md_entries = ProtoField.new("Md Inc Refresh_59 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_59mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_86 = ProtoField.new("Md Inc Refresh_86 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_86", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_86_md_entries = ProtoField.new("Md Inc Refresh_86 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_86mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_35 = ProtoField.new("Md Inc Refresh_35 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_35", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_35_md_entries = ProtoField.new("Md Inc Refresh_35 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_35mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_87 = ProtoField.new("Md Inc Refresh_87 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_87", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_87_md_entries = ProtoField.new("Md Inc Refresh_87 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_87mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_36 = ProtoField.new("Md Inc Refresh_36 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_36", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_36_md_entries = ProtoField.new("Md Inc Refresh_36 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_36mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_88 = ProtoField.new("Md Inc Refresh_88 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_88", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_88_md_entries = ProtoField.new("Md Inc Refresh_88 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_88mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_72 = ProtoField.new("Md Inc Refresh_72 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_72", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_72_md_entries = ProtoField.new("Md Inc Refresh_72 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_72mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_105 = ProtoField.new("Md Inc Refresh_105 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_105", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_105_md_entries = ProtoField.new("Md Inc Refresh_105 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_105mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_67 = ProtoField.new("Md Inc Refresh_67 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_67", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_67_md_entries = ProtoField.new("Md Inc Refresh_67 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_67mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_90 = ProtoField.new("Md Inc Refresh_90 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_90", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_90_md_entries = ProtoField.new("Md Inc Refresh_90 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_90mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_39 = ProtoField.new("Md Inc Refresh_39 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_39", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_39_md_entries = ProtoField.new("Md Inc Refresh_39 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_39mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_91 = ProtoField.new("Md Inc Refresh_91 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_91", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_91_md_entries = ProtoField.new("Md Inc Refresh_91 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_91mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_70 = ProtoField.new("Md Inc Refresh_70 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_70", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_70_md_entries = ProtoField.new("Md Inc Refresh_70 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_70mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_93 = ProtoField.new("Md Inc Refresh_93 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_93", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_93_md_entries = ProtoField.new("Md Inc Refresh_93 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_93mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_41 = ProtoField.new("Md Inc Refresh_41 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_41", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_41_md_entries = ProtoField.new("Md Inc Refresh_41 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_41mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_106 = ProtoField.new("Md Inc Refresh_106 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_106", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_106_md_entries = ProtoField.new("Md Inc Refresh_106 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_106mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_73 = ProtoField.new("Md Inc Refresh_73 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_73", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_73_md_entries = ProtoField.new("Md Inc Refresh_73 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_73mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_95 = ProtoField.new("Md Inc Refresh_95 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_95", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_95_md_entries = ProtoField.new("Md Inc Refresh_95 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_95mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_43 = ProtoField.new("Md Inc Refresh_43 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_43", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_43_md_entries = ProtoField.new("Md Inc Refresh_43 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_43mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_96 = ProtoField.new("Md Inc Refresh_96 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_96", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_96_md_entries = ProtoField.new("Md Inc Refresh_96 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_96mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_44 = ProtoField.new("Md Inc Refresh_44 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_44", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_44_md_entries = ProtoField.new("Md Inc Refresh_44 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_44mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_107 = ProtoField.new("Md Inc Refresh_107 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_107", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_107_md_entries = ProtoField.new("Md Inc Refresh_107 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_107mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_74 = ProtoField.new("Md Inc Refresh_74 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_74", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_74_md_entries = ProtoField.new("Md Inc Refresh_74 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdincrefresh_74mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_79 = ProtoField.new("Md Security Definition_79 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritydefinition_79", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.events = ProtoField.new("Events", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.events", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_i_ds = ProtoField.new("Security Alt I Ds", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.securityaltids", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_types = ProtoField.new("Md Feed Types", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdfeedtypes", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_79_underlyings = ProtoField.new("Md Security Definition_79 Underlyings", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritydefinition_79underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib = ProtoField.new("Instr Attrib", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.instrattrib", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_79_legs = ProtoField.new("Md Security Definition_79 Legs", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritydefinition_79legs", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.lot_type_rules = ProtoField.new("Lot Type Rules", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.lottyperules", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_78 = ProtoField.new("Md Security Definition_78 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritydefinition_78", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.events = ProtoField.new("Events", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.events", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_types = ProtoField.new("Md Feed Types", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdfeedtypes", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_78_underlyings = ProtoField.new("Md Security Definition_78 Underlyings", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritydefinition_78underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib = ProtoField.new("Instr Attrib", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.instrattrib", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_78_legs = ProtoField.new("Md Security Definition_78 Legs", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritydefinition_78legs", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_52 = ProtoField.new("Md Security Definition_52 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritydefinition_52", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.events = ProtoField.new("Events", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.events", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_types = ProtoField.new("Md Feed Types", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdfeedtypes", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_52_underlyings = ProtoField.new("Md Security Definition_52 Underlyings", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritydefinition_52underlyings", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib = ProtoField.new("Instr Attrib", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.instrattrib", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_52_legs = ProtoField.new("Md Security Definition_52 Legs", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritydefinition_52legs", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_request_98 = ProtoField.new("Md Quote Request_98 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdquoterequest_98", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_request_98_related_sym = ProtoField.new("Md Quote Request_98 Related Sym", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdquoterequest_98relatedsym", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_request_54 = ProtoField.new("Md Quote Request_54 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdquoterequest_54", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_request_54_related_sym = ProtoField.new("Md Quote Request_54 Related Sym", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdquoterequest_54relatedsym", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status_125 = ProtoField.new("Md Security Status_125 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritystatus_125", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status_113 = ProtoField.new("Md Security Status_113 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritystatus_113", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status_102 = ProtoField.new("Md Security Status_102 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritystatus_102", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status_99 = ProtoField.new("Md Security Status_99 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritystatus_99", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status_76 = ProtoField.new("Md Security Status_76 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritystatus_76", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status = ProtoField.new("Md Security Status Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsecuritystatus", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_127 = ProtoField.new("Md Snapshot Full Refresh_127 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsnapshotfullrefresh_127", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_127_md_entries = ProtoField.new("Md Snapshot Full Refresh_127 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsnapshotfullrefresh_127mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_124 = ProtoField.new("Md Snapshot Full Refresh_124 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsnapshotfullrefresh_124", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_124_md_entries = ProtoField.new("Md Snapshot Full Refresh_124 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsnapshotfullrefresh_124mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_112 = ProtoField.new("Md Snapshot Full Refresh_112 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsnapshotfullrefresh_112", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_112_md_entries = ProtoField.new("Md Snapshot Full Refresh_112 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsnapshotfullrefresh_112mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_80 = ProtoField.new("Md Snapshot Full Refresh_80 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsnapshotfullrefresh_80", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_80_md_entries = ProtoField.new("Md Snapshot Full Refresh_80 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsnapshotfullrefresh_80mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_53 = ProtoField.new("Md Snapshot Full Refresh_53 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsnapshotfullrefresh_53", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_53_md_entries = ProtoField.new("Md Snapshot Full Refresh_53 Md Entries", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsnapshotfullrefresh_53mdentries", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_120 = ProtoField.new("Md News Message_120 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdnewsmessage_120", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_120_related_sym = ProtoField.new("Md News Message_120 Related Sym", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdnewsmessage_120relatedsym", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.routing_ids = ProtoField.new("Routing Ids", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.routingids", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_120_lines_of_text = ProtoField.new("Md News Message_120 Lines Of Text", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdnewsmessage_120linesoftext", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_100 = ProtoField.new("Md News Message_100 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdnewsmessage_100", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_100_lines_of_text = ProtoField.new("Md News Message_100 Lines Of Text", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdnewsmessage_100linesoftext", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message = ProtoField.new("Md News Message Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdnewsmessage", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_lines_of_text = ProtoField.new("Md News Message Lines Of Text", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdnewsmessagelinesoftext", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_heartbeat_101 = ProtoField.new("Md Heartbeat_101 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdheartbeat_101", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_heartbeat = ProtoField.new("Md Heartbeat Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdheartbeat", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logon_118 = ProtoField.new("Md Logon_118 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdlogon_118", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logon_3 = ProtoField.new("Md Logon_3 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdlogon_3", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logon = ProtoField.new("Md Logon Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdlogon", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logout_4 = ProtoField.new("Md Logout_4 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdlogout_4", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logout_119 = ProtoField.new("Md Logout_119 Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdlogout_119", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logout = ProtoField.new("Md Logout Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdlogout", ftypes.NONE)
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_sequence_reset = ProtoField.new("Md Sequence Reset Message", "b3.b3derivatives.umdfntp.fast.v5.0.1.2018.mdsequencereset", ftypes.NONE)

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
-- B3 B3Derivatives UmdfNtp Fast 5.0.1.2018 Fields
-----------------------------------------------------------------------

-- Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_y_1 = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_y_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "Y"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_y_2 = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_y_2.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "y"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "X"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_d = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_d.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "d"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_r = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_r.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "R"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_f = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_f.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "f"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_w = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_w.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "W"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_b = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_b.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "B"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_0 = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "0"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_a = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_a.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "A"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_5 = {}

-- Dissect: Message Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_5.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "5"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_type, range, "")
    absent:set_text("Message Type: No Value")
  end

  return offset, value
end

-- Msg Seq Num
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num = {}

-- Dissect: Msg Seq Num
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.msg_seq_num, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.msg_seq_num, range, 0)
    absent:set_text("Msg Seq Num: No Value")
  end

  return offset, value
end

-- Sending Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time = {}

-- Dissect: Sending Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.sending_time, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.sending_time, range, UInt64(0))
    absent:set_text("Sending Time: No Value")
  end

  return offset, value
end

-- Appl Ver Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9 = {}

-- Dissect: Appl Ver Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "9"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_ver_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_ver_id, range, "")
    absent:set_text("Appl Ver Id: No Value")
  end

  return offset, value
end

-- Appl Ver Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8 = {}

-- Dissect: Appl Ver Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "8"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_ver_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_ver_id, range, "")
    absent:set_text("Appl Ver Id: No Value")
  end

  return offset, value
end

-- Appl Ver Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_optional = {}

-- Dissect: Appl Ver Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = "9"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_ver_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_ver_id, range, "")
    absent:set_text("Appl Ver Id: No Value")
  end

  return offset, value
end

-- Md Req Id (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_req_id_copy_required = {}

-- Dissect: Md Req Id (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_req_id_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Req Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_req_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_req_id, range, "")
    absent:set_text("Md Req Id: No Value")
  end

  return offset, value
end

-- Md Req Id (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_req_id_copy_optional = {}

-- Dissect: Md Req Id (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_req_id_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_req_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_req_id, range, "")
    absent:set_text("Md Req Id: No Value")
  end

  return offset, value
end

-- Md Req Rej Reason
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_req_rej_reason = {}

-- Dissect: Md Req Rej Reason
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_req_rej_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Req Rej Reason was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_req_rej_reason, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_req_rej_reason, range, "")
    absent:set_text("Md Req Rej Reason: No Value")
  end

  return offset, value
end

-- Text (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.text_sent = {}

-- Dissect: Text (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.text_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.text, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.text, range, "")
    absent:set_text("Text: No Value")
  end

  return offset, value
end

-- Text (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.text_copy = {}

-- Dissect: Text (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.text_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.text, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.text, range, "")
    absent:set_text("Text: No Value")
  end

  return offset, value
end

-- Tot No Related Sym
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_no_related_sym = {}

-- Dissect: Tot No Related Sym
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_no_related_sym.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tot_no_related_sym, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tot_no_related_sym, range, 0)
    absent:set_text("Tot No Related Sym: No Value")
  end

  return offset, value
end

-- Last Fragment
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_fragment = {}

-- Dissect: Last Fragment
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_fragment.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.last_fragment, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.last_fragment, range, "")
    absent:set_text("Last Fragment: No Value")
  end

  return offset, value
end

-- No Related Sym (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_related_sym_sent_required = {}

-- Dissect: No Related Sym (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_related_sym_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_related_sym, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_related_sym, range, 0)
    absent:set_text("No Related Sym: No Value")
  end

  return offset, value
end

-- No Related Sym (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_related_sym_sent_optional = {}

-- Dissect: No Related Sym (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_related_sym_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_related_sym, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_related_sym, range, 0)
    absent:set_text("No Related Sym: No Value")
  end

  return offset, value
end

-- Symbol (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_required = {}

-- Dissect: Symbol (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.symbol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Symbol (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional = {}

-- Dissect: Symbol (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.symbol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Symbol (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_constant = {}

-- Dissect: Symbol (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "[N/A]"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.symbol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.symbol, range, "")
    absent:set_text("Symbol: No Value")
  end

  return offset, value
end

-- Security Id (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int64 = {}

-- Dissect: Security Id (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_uint64(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint64, range, UInt64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_optional = {}

-- Dissect: Security Id (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint32, range, 0)
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32 = {}

-- Dissect: Security Id (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Security Id was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint32, range, 0)
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_delta = {}

-- Dissect: Security Id (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint32, range, 0)
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int32 = {}

-- Dissect: Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint32, range, 0)
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_required_u_int32 = {}

-- Dissect: Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_required_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint32, range, 0)
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int64 = {}

-- Dissect: Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint64, range, UInt64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_required_u_int64 = {}

-- Dissect: Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_required_u_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_uint64, range, UInt64(0))
    absent:set_text("Security Id: No Value")
  end

  return offset, value
end

-- Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_string = {}

-- Dissect: Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "8"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_source_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_source_string, range, "")
    absent:set_text("Security Id Source: No Value")
  end

  return offset, value
end

-- Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional = {}

-- Dissect: Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 8
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_source_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_source_uint32, range, 0)
    absent:set_text("Security Id Source: No Value")
  end

  return offset, value
end

-- Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32 = {}

-- Dissect: Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 8

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_source_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_id_source_uint32, range, 0)
    absent:set_text("Security Id Source: No Value")
  end

  return offset, value
end

-- Security Exchange (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_constant = {}

-- Dissect: Security Exchange (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BVMF"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_exchange, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_exchange, range, "")
    absent:set_text("Security Exchange: No Value")
  end

  return offset, value
end

-- Security Exchange (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_sent_optional = {}

-- Dissect: Security Exchange (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_exchange, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_exchange, range, "")
    absent:set_text("Security Exchange: No Value")
  end

  return offset, value
end

-- Security Exchange (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_sent_required = {}

-- Dissect: Security Exchange (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_exchange, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_exchange, range, "")
    absent:set_text("Security Exchange: No Value")
  end

  return offset, value
end

-- No Appl Ids
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_appl_ids = {}

-- Dissect: No Appl Ids
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_appl_ids.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_appl_ids, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_appl_ids, range, 0)
    absent:set_text("No Appl Ids: No Value")
  end

  return offset, value
end

-- Appl Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_sent_required = {}

-- Dissect: Appl Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_id, range, "")
    absent:set_text("Appl Id: No Value")
  end

  return offset, value
end

-- Appl Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_sent_optional = {}

-- Dissect: Appl Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_id, range, "")
    absent:set_text("Appl Id: No Value")
  end

  return offset, value
end

-- Appl Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_constant = {}

-- Dissect: Appl Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "REPLAY"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_id, range, "")
    absent:set_text("Appl Id: No Value")
  end

  return offset, value
end

-- No Md Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_feed_types = {}

-- Dissect: No Md Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_feed_types.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_md_feed_types, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_md_feed_types, range, 0)
    absent:set_text("No Md Feed Types: No Value")
  end

  return offset, value
end

-- Md Feed Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_type_sent = {}

-- Dissect: Md Feed Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_type, range, "")
    absent:set_text("Md Feed Type: No Value")
  end

  return offset, value
end

-- Md Feed Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_type_default = {}

-- Dissect: Md Feed Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "GBX"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_type, range, "")
    absent:set_text("Md Feed Type: No Value")
  end

  return offset, value
end

-- Md Feed Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_type_constant = {}

-- Dissect: Md Feed Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_type_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "GBX"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_type, range, "")
    absent:set_text("Md Feed Type: No Value")
  end

  return offset, value
end

-- Market Depth (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.market_depth_sent_required = {}

-- Dissect: Market Depth (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.market_depth_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.market_depth_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.market_depth_uint32, range, 0)
    absent:set_text("Market Depth: No Value")
  end

  return offset, value
end

-- Market Depth (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.market_depth_sent_optional = {}

-- Dissect: Market Depth (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.market_depth_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_signed(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.market_depth_int32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.market_depth_int32, range, 0)
    absent:set_text("Market Depth: No Value")
  end

  return offset, value
end

-- No Security Alt Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_security_alt_id = {}

-- Dissect: No Security Alt Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_security_alt_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_security_alt_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_security_alt_id, range, 0)
    absent:set_text("No Security Alt Id: No Value")
  end

  return offset, value
end

-- Security Alt Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_sent_required = {}

-- Dissect: Security Alt Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_id, range, "")
    absent:set_text("Security Alt Id: No Value")
  end

  return offset, value
end

-- Security Alt Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_sent_optional = {}

-- Dissect: Security Alt Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_id, range, "")
    absent:set_text("Security Alt Id: No Value")
  end

  return offset, value
end

-- Security Alt Id Source (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_source_copy = {}

-- Dissect: Security Alt Id Source (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_source_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_id_source_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_id_source_string, range, "")
    absent:set_text("Security Alt Id Source: No Value")
  end

  return offset, value
end

-- Security Alt Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_source_constant = {}

-- Dissect: Security Alt Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_source_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 8
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_id_source_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_id_source_uint32, range, 0)
    absent:set_text("Security Alt Id Source: No Value")
  end

  return offset, value
end

-- No Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_underlyings = {}

-- Dissect: No Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_underlyings.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_underlyings, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_underlyings, range, 0)
    absent:set_text("No Underlyings: No Value")
  end

  return offset, value
end

-- Underlying Symbol (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_symbol_sent = {}

-- Dissect: Underlying Symbol (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_symbol_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_symbol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_symbol, range, "")
    absent:set_text("Underlying Symbol: No Value")
  end

  return offset, value
end

-- Underlying Symbol (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_symbol_constant = {}

-- Dissect: Underlying Symbol (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_symbol_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "[N/A]"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_symbol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_symbol, range, "")
    absent:set_text("Underlying Symbol: No Value")
  end

  return offset, value
end

-- Underlying Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_sent = {}

-- Dissect: Underlying Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_uint64, range, UInt64(0))
    absent:set_text("Underlying Security Id: No Value")
  end

  return offset, value
end

-- Underlying Security Id (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_delta = {}

-- Dissect: Underlying Security Id (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_uint32, range, 0)
    absent:set_text("Underlying Security Id: No Value")
  end

  return offset, value
end

-- Underlying Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_source_constant_required_string = {}

-- Dissect: Underlying Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_source_constant_required_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "8"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_source_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_source_string, range, "")
    absent:set_text("Underlying Security Id Source: No Value")
  end

  return offset, value
end

-- Underlying Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_source_constant_required_u_int32 = {}

-- Dissect: Underlying Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_source_constant_required_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 8

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_source_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_id_source_uint32, range, 0)
    absent:set_text("Underlying Security Id Source: No Value")
  end

  return offset, value
end

-- Underlying Security Exchange
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_exchange = {}

-- Dissect: Underlying Security Exchange
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_exchange.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BVMF"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_exchange, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_security_exchange, range, "")
    absent:set_text("Underlying Security Exchange: No Value")
  end

  return offset, value
end

-- No Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_legs = {}

-- Dissect: No Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_legs.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_legs, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_legs, range, 0)
    absent:set_text("No Legs: No Value")
  end

  return offset, value
end

-- Leg Symbol (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_symbol_sent = {}

-- Dissect: Leg Symbol (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_symbol_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_symbol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_symbol, range, "")
    absent:set_text("Leg Symbol: No Value")
  end

  return offset, value
end

-- Leg Symbol (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_symbol_default = {}

-- Dissect: Leg Symbol (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_symbol_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "[N/A]"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_symbol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_symbol, range, "")
    absent:set_text("Leg Symbol: No Value")
  end

  return offset, value
end

-- Leg Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_sent = {}

-- Dissect: Leg Security Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_id, range, UInt64(0))
    absent:set_text("Leg Security Id: No Value")
  end

  return offset, value
end

-- Leg Security Id (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_delta = {}

-- Dissect: Leg Security Id (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or UInt64(0)) + UInt64.fromhex(value_delta:tohex())
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_id, range, UInt64(0))
    absent:set_text("Leg Security Id: No Value")
  end

  return offset, value
end

-- Leg Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_source_constant_required_string = {}

-- Dissect: Leg Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_source_constant_required_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "8"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_id_source_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_id_source_string, range, "")
    absent:set_text("Leg Security Id Source: No Value")
  end

  return offset, value
end

-- Leg Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_source_constant_required_u_int32 = {}

-- Dissect: Leg Security Id Source (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_source_constant_required_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 8

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_id_source_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_id_source_uint32, range, 0)
    absent:set_text("Leg Security Id Source: No Value")
  end

  return offset, value
end

-- Leg Ratio Qty (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_ratio_qty_copy_required_int32 = {}

-- Dissect: Leg Ratio Qty (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_ratio_qty_copy_required_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_ratio_qty_int32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_ratio_qty_int32, range, 0)
    absent:set_text("Leg Ratio Qty: No Value")
  end

  return offset, value
end

-- Leg Ratio Qty (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_ratio_qty_copy_required_u_int32 = {}

-- Dissect: Leg Ratio Qty (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_ratio_qty_copy_required_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_ratio_qty_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_ratio_qty_uint32, range, 0)
    absent:set_text("Leg Ratio Qty: No Value")
  end

  return offset, value
end

-- Leg Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_type = {}

-- Dissect: Leg Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_type, range, "")
    absent:set_text("Leg Type: No Value")
  end

  return offset, value
end

-- Buyers Perspective
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.buyers_perspective = {}

-- Dissect: Buyers Perspective
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.buyers_perspective.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.buyers_perspective, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.buyers_perspective, range, "")
    absent:set_text("Buyers Perspective: No Value")
  end

  return offset, value
end

-- Leg Security Exchange (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_exchange_constant = {}

-- Dissect: Leg Security Exchange (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_exchange_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "BVMF"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_exchange, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_exchange, range, "")
    absent:set_text("Leg Security Exchange: No Value")
  end

  return offset, value
end

-- Leg Security Exchange (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_exchange_copy = {}

-- Dissect: Leg Security Exchange (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_exchange_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_exchange, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_exchange, range, "")
    absent:set_text("Leg Security Exchange: No Value")
  end

  return offset, value
end

-- Security Update Action (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_update_action_sent_required = {}

-- Dissect: Security Update Action (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_update_action_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_update_action, range, "")
    absent:set_text("Security Update Action: No Value")
  end

  return offset, value
end

-- Security Update Action (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_update_action_sent_optional = {}

-- Dissect: Security Update Action (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_update_action_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_update_action, range, "")
    absent:set_text("Security Update Action: No Value")
  end

  return offset, value
end

-- Round Lot
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.round_lot = {}

-- Dissect: Round Lot
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.round_lot.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.round_lot, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.round_lot, range, 0)
    absent:set_text("Round Lot: No Value")
  end

  return offset, value
end

-- Min Trade Vol
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_trade_vol = {}

-- Dissect: Min Trade Vol
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_trade_vol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_trade_vol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_trade_vol, range, UInt64(0))
    absent:set_text("Min Trade Vol: No Value")
  end

  return offset, value
end

-- Min Price Increment (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_required = {}

-- Display: Min Price Increment (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_required.display = function(value)
  if value == nil then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Dissect: Min Price Increment (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_required.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_price_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_price_increment, range, value, display)
  end

  return offset, value
end

-- Min Price Increment (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_optional = {}

-- Display: Min Price Increment (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_optional.display = function(value)
  if value == nil then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Dissect: Min Price Increment (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_price_increment, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_price_increment, range, value, display)
  end

  return offset, value
end

-- Tick Size Denominator
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_size_denominator = {}

-- Dissect: Tick Size Denominator
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_size_denominator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tick_size_denominator, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tick_size_denominator, range, 0)
    absent:set_text("Tick Size Denominator: No Value")
  end

  return offset, value
end

-- Min Order Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_order_qty = {}

-- Dissect: Min Order Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_order_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_order_qty, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_order_qty, range, 0)
    absent:set_text("Min Order Qty: No Value")
  end

  return offset, value
end

-- Max Order Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_order_qty = {}

-- Dissect: Max Order Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_order_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.max_order_qty, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.max_order_qty, range, 0)
    absent:set_text("Max Order Qty: No Value")
  end

  return offset, value
end

-- Instrument Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instrument_id = {}

-- Dissect: Instrument Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instrument_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instrument_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instrument_id, range, "")
    absent:set_text("Instrument Id: No Value")
  end

  return offset, value
end

-- Currency (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_sent_required = {}

-- Dissect: Currency (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Currency (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_copy = {}

-- Dissect: Currency (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Currency (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_sent_optional = {}

-- Dissect: Currency (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.currency, range, "")
    absent:set_text("Currency: No Value")
  end

  return offset, value
end

-- Settl Currency (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_currency_sent_required = {}

-- Dissect: Settl Currency (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_currency_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_currency, range, "")
    absent:set_text("Settl Currency: No Value")
  end

  return offset, value
end

-- Settl Currency (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_currency_sent_optional = {}

-- Dissect: Settl Currency (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_currency_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_currency, range, "")
    absent:set_text("Settl Currency: No Value")
  end

  return offset, value
end

-- Security Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_type = {}

-- Dissect: Security Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_type, range, "")
    absent:set_text("Security Type: No Value")
  end

  return offset, value
end

-- Security Sub Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_sub_type_sent_required = {}

-- Dissect: Security Sub Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_sub_type_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_sub_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_sub_type, range, "")
    absent:set_text("Security Sub Type: No Value")
  end

  return offset, value
end

-- Security Sub Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_sub_type_sent_optional = {}

-- Dissect: Security Sub Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_sub_type_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_sub_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_sub_type, range, "")
    absent:set_text("Security Sub Type: No Value")
  end

  return offset, value
end

-- Asset
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.asset = {}

-- Dissect: Asset
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.asset.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.asset, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.asset, range, "")
    absent:set_text("Asset: No Value")
  end

  return offset, value
end

-- Security Desc (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_desc_sent_required = {}

-- Dissect: Security Desc (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_desc_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_desc, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_desc, range, "")
    absent:set_text("Security Desc: No Value")
  end

  return offset, value
end

-- Security Desc (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_desc_sent_optional = {}

-- Dissect: Security Desc (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_desc_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_desc, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_desc, range, "")
    absent:set_text("Security Desc: No Value")
  end

  return offset, value
end

-- Maturity Date (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_date_sent_optional_u_int32 = {}

-- Dissect: Maturity Date (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_date_sent_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_date_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_date_uint32, range, 0)
    absent:set_text("Maturity Date: No Value")
  end

  return offset, value
end

-- Maturity Date (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_date_sent_optional_u_int64 = {}

-- Dissect: Maturity Date (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_date_sent_optional_u_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_date_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_date_uint64, range, UInt64(0))
    absent:set_text("Maturity Date: No Value")
  end

  return offset, value
end

-- Maturity Month Year (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_month_year_sent_optional_u_int32 = {}

-- Dissect: Maturity Month Year (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_month_year_sent_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_month_year_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_month_year_uint32, range, 0)
    absent:set_text("Maturity Month Year: No Value")
  end

  return offset, value
end

-- Maturity Month Year (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_month_year_sent_optional_u_int64 = {}

-- Dissect: Maturity Month Year (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_month_year_sent_optional_u_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_month_year_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.maturity_month_year_uint64, range, UInt64(0))
    absent:set_text("Maturity Month Year: No Value")
  end

  return offset, value
end

-- Strike Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_price = {}

-- Display: Strike Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_price.display = function(value)
  if value == nil then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Dissect: Strike Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.strike_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.strike_price, range, value, display)
  end

  return offset, value
end

-- Strike Currency
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_currency = {}

-- Dissect: Strike Currency
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.strike_currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.strike_currency, range, "")
    absent:set_text("Strike Currency: No Value")
  end

  return offset, value
end

-- Contract Multiplier (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_sent_required = {}

-- Display: Contract Multiplier (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_sent_required.display = function(value)
  if value == nil then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_sent_required.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_multiplier_double, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_multiplier_double, range, value, display)
  end

  return offset, value
end

-- Contract Multiplier (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_sent_optional = {}

-- Dissect: Contract Multiplier (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_multiplier_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_multiplier_uint32, range, 0)
    absent:set_text("Contract Multiplier: No Value")
  end

  return offset, value
end

-- Contract Settl Month
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_settl_month = {}

-- Dissect: Contract Settl Month
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_settl_month.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_settl_month, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_settl_month, range, 0)
    absent:set_text("Contract Settl Month: No Value")
  end

  return offset, value
end

-- Cfi Code (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cfi_code_sent_required = {}

-- Dissect: Cfi Code (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cfi_code_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.cfi_code, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.cfi_code, range, "")
    absent:set_text("Cfi Code: No Value")
  end

  return offset, value
end

-- Cfi Code (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cfi_code_sent_optional = {}

-- Dissect: Cfi Code (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cfi_code_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.cfi_code, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.cfi_code, range, "")
    absent:set_text("Cfi Code: No Value")
  end

  return offset, value
end

-- Country Of Issue
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.country_of_issue = {}

-- Dissect: Country Of Issue
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.country_of_issue.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.country_of_issue, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.country_of_issue, range, "")
    absent:set_text("Country Of Issue: No Value")
  end

  return offset, value
end

-- Issue Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.issue_date = {}

-- Dissect: Issue Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.issue_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.issue_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.issue_date, range, 0)
    absent:set_text("Issue Date: No Value")
  end

  return offset, value
end

-- Dated Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.dated_date = {}

-- Dissect: Dated Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.dated_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.dated_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.dated_date, range, 0)
    absent:set_text("Dated Date: No Value")
  end

  return offset, value
end

-- Start Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.start_date = {}

-- Dissect: Start Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.start_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.start_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.start_date, range, 0)
    absent:set_text("Start Date: No Value")
  end

  return offset, value
end

-- End Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.end_date = {}

-- Dissect: End Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.end_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.end_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.end_date, range, 0)
    absent:set_text("End Date: No Value")
  end

  return offset, value
end

-- Settl Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_type_sent = {}

-- Dissect: Settl Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_type, range, "")
    absent:set_text("Settl Type: No Value")
  end

  return offset, value
end

-- Settl Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_type_default = {}

-- Dissect: Settl Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_type, range, "")
    absent:set_text("Settl Type: No Value")
  end

  return offset, value
end

-- Settl Date (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_sent = {}

-- Dissect: Settl Date (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_date, range, 0)
    absent:set_text("Settl Date: No Value")
  end

  return offset, value
end

-- Settl Date (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default = {}

-- Dissect: Settl Date (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settl_date, range, 0)
    absent:set_text("Settl Date: No Value")
  end

  return offset, value
end

-- Security Validity Timestamp
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_validity_timestamp = {}

-- Dissect: Security Validity Timestamp
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_validity_timestamp.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_uint64(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_validity_timestamp, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_validity_timestamp, range, UInt64(0))
    absent:set_text("Security Validity Timestamp: No Value")
  end

  return offset, value
end

-- Security Group (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_group_sent_required = {}

-- Dissect: Security Group (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_group_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_group, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_group, range, "")
    absent:set_text("Security Group: No Value")
  end

  return offset, value
end

-- Security Group (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_group_sent_optional = {}

-- Dissect: Security Group (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_group_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_group, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_group, range, "")
    absent:set_text("Security Group: No Value")
  end

  return offset, value
end

-- Pos Dup Flag
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag = {}

-- Dissect: Pos Dup Flag
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.pos_dup_flag, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.pos_dup_flag, range, "")
    absent:set_text("Pos Dup Flag: No Value")
  end

  return offset, value
end

-- No Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries = {}

-- Dissect: No Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_md_entries, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_md_entries, range, 0)
    absent:set_text("No Md Entries: No Value")
  end

  return offset, value
end

-- Md Update Action (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_optional = {}

-- Dissect: Md Update Action (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, 0)
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Md Update Action (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1 = {}

-- Dissect: Md Update Action (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Update Action was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, 0)
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Md Update Action (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_required_u_int32_field_0 = {}

-- Dissect: Md Update Action (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_required_u_int32_field_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Update Action was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, 0)
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Md Update Action (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_0 = {}

-- Dissect: Md Update Action (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 0
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, 0)
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Md Update Action (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_constant = {}

-- Dissect: Md Update Action (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 5

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, 0)
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Md Update Action (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_5 = {}

-- Dissect: Md Update Action (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_5.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 5
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, 0)
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Md Update Action (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_5 = {}

-- Dissect: Md Update Action (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_5.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Update Action was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_update_action, range, 0)
    absent:set_text("Md Update Action: No Value")
  end

  return offset, value
end

-- Md Price Level (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_default = {}

-- Dissect: Md Price Level (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Md Price Level (Increment)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_optional_u_int32_field = {}

-- Dissect: Md Price Level (Increment)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_optional_u_int32_field.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Md Price Level (Increment)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_1 = {}

-- Dissect: Md Price Level (Increment)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_1.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Md Price Level (Increment)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_required = {}

-- Dissect: Md Price Level (Increment)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_required.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Price Level was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Md Price Level (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_optional = {}

-- Dissect: Md Price Level (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Md Price Level (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_required = {}

-- Dissect: Md Price Level (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Price Level was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Md Price Level (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_constant = {}

-- Dissect: Md Price Level (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 1

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_price_level, range, 0)
    absent:set_text("Md Price Level: No Value")
  end

  return offset, value
end

-- Md Entry Type (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_j = {}

-- Dissect: Md Entry Type (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_j.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Entry Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_type, range, "")
    absent:set_text("Md Entry Type: No Value")
  end

  return offset, value
end

-- Md Entry Type (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0 = {}

-- Dissect: Md Entry Type (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Entry Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_type, range, "")
    absent:set_text("Md Entry Type: No Value")
  end

  return offset, value
end

-- Md Entry Type (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_b = {}

-- Dissect: Md Entry Type (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_b.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Entry Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_type, range, "")
    absent:set_text("Md Entry Type: No Value")
  end

  return offset, value
end

-- Md Entry Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default = {}

-- Dissect: Md Entry Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "2"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_type, range, "")
    absent:set_text("Md Entry Type: No Value")
  end

  return offset, value
end

-- Md Entry Type (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1 = {}

-- Dissect: Md Entry Type (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Entry Type was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_type, range, "")
    absent:set_text("Md Entry Type: No Value")
  end

  return offset, value
end

-- Rpt Seq (Increment)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_optional = {}

-- Dissect: Rpt Seq (Increment)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.rpt_seq, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.rpt_seq, range, 0)
    absent:set_text("Rpt Seq: No Value")
  end

  return offset, value
end

-- Rpt Seq (Increment)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required = {}

-- Dissect: Rpt Seq (Increment)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.rpt_seq, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.rpt_seq, range, 0)
    absent:set_text("Rpt Seq: No Value")
  end

  return offset, value
end

-- Rpt Seq (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_delta = {}

-- Dissect: Rpt Seq (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.rpt_seq, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.rpt_seq, range, 0)
    absent:set_text("Rpt Seq: No Value")
  end

  return offset, value
end

-- Rpt Seq (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_sent = {}

-- Dissect: Rpt Seq (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.rpt_seq, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.rpt_seq, range, 0)
    absent:set_text("Rpt Seq: No Value")
  end

  return offset, value
end

-- Md Entry Px (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional = {}

-- Display: Md Entry Px (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Md Entry Px (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required = {}

-- Display: Md Entry Px (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.display = function(value)
  if value == nil then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Dissect: Md Entry Px (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_px, range, value, display)
  end

  return offset, value
end

-- Md Entry Time (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required = {}

-- Dissect: Md Entry Time (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Md Entry Time was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_time_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_time_uint32, range, 0)
    absent:set_text("Md Entry Time: No Value")
  end

  return offset, value
end

-- Md Entry Time (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_delta = {}

-- Dissect: Md Entry Time (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_time_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_time_uint32, range, 0)
    absent:set_text("Md Entry Time: No Value")
  end

  return offset, value
end

-- Md Entry Time (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_optional = {}

-- Dissect: Md Entry Time (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_time_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_time_string, range, "")
    absent:set_text("Md Entry Time: No Value")
  end

  return offset, value
end

-- Md Entry Size (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32 = {}

-- Dissect: Md Entry Size (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_size_int32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_size_int32, range, 0)
    absent:set_text("Md Entry Size: No Value")
  end

  return offset, value
end

-- Md Entry Size (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int64 = {}

-- Dissect: Md Entry Size (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_size_int64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_size_int64, range, Int64(0))
    absent:set_text("Md Entry Size: No Value")
  end

  return offset, value
end

-- Md Entry Size (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required = {}

-- Dissect: Md Entry Size (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_size_int32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_size_int32, range, 0)
    absent:set_text("Md Entry Size: No Value")
  end

  return offset, value
end

-- Quote Condition (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field = {}

-- Dissect: Quote Condition (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_condition, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_condition, range, "")
    absent:set_text("Quote Condition: No Value")
  end

  return offset, value
end

-- Quote Condition (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_copy_optional = {}

-- Dissect: Quote Condition (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_copy_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_condition, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_condition, range, "")
    absent:set_text("Quote Condition: No Value")
  end

  return offset, value
end

-- Quote Condition (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_copy_required = {}

-- Dissect: Quote Condition (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_copy_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Quote Condition was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_condition, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_condition, range, "")
    absent:set_text("Quote Condition: No Value")
  end

  return offset, value
end

-- Quote Condition (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_k = {}

-- Dissect: Quote Condition (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_k.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "K"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_condition, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_condition, range, "")
    absent:set_text("Quote Condition: No Value")
  end

  return offset, value
end

-- Number Of Orders (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_delta_optional = {}

-- Dissect: Number Of Orders (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_delta_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Number Of Orders (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default = {}

-- Dissect: Number Of Orders (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Number Of Orders (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_delta_required = {}

-- Dissect: Number Of Orders (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_delta_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_signed(buffer, offset)
  value = (state.values[key] or 0) + value_delta
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Number Of Orders (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field = {}

-- Dissect: Number Of Orders (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Number Of Orders (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_required_u_int32_field_1 = {}

-- Dissect: Number Of Orders (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_required_u_int32_field_1.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Number Of Orders was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Number Of Orders (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field_1 = {}

-- Dissect: Number Of Orders (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field_1.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Number Of Orders (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_required_u_int32_field = {}

-- Dissect: Number Of Orders (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_required_u_int32_field.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end

  if value == nil then
    parent:add_expert_info(PI_MALFORMED, PI_ERROR, "Number Of Orders was not sent and the stream has remembered no earlier value")
    return offset, nil
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.number_of_orders, range, 0)
    absent:set_text("Number Of Orders: No Value")
  end

  return offset, value
end

-- Trading Session Id (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional = {}

-- Dissect: Trading Session Id (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "2"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_session_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_session_id, range, "")
    absent:set_text("Trading Session Id: No Value")
  end

  return offset, value
end

-- Trading Session Id (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required = {}

-- Dissect: Trading Session Id (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "2"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_session_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_session_id, range, "")
    absent:set_text("Trading Session Id: No Value")
  end

  return offset, value
end

-- Trade Date (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required = {}

-- Dissect: Trade Date (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_date, range, 0)
    absent:set_text("Trade Date: No Value")
  end

  return offset, value
end

-- Trade Date (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_optional = {}

-- Dissect: Trade Date (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_date, range, 0)
    absent:set_text("Trade Date: No Value")
  end

  return offset, value
end

-- Price Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_type_sent = {}

-- Dissect: Price Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_type_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_type, range, "")
    absent:set_text("Price Type: No Value")
  end

  return offset, value
end

-- Price Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_type_default = {}

-- Dissect: Price Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "2"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_type, range, "")
    absent:set_text("Price Type: No Value")
  end

  return offset, value
end

-- Md Entry Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_date = {}

-- Dissect: Md Entry Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_date.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_date, range, 0)
    absent:set_text("Md Entry Date: No Value")
  end

  return offset, value
end

-- Md Insert Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_date = {}

-- Dissect: Md Insert Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_date.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_insert_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_insert_date, range, 0)
    absent:set_text("Md Insert Date: No Value")
  end

  return offset, value
end

-- Md Insert Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_time = {}

-- Dissect: Md Insert Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_time.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_insert_time, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_insert_time, range, 0)
    absent:set_text("Md Insert Time: No Value")
  end

  return offset, value
end

-- Md Stream Id (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_stream_id_default_optional_string_field = {}

-- Dissect: Md Stream Id (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_stream_id_default_optional_string_field.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_stream_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_stream_id, range, "")
    absent:set_text("Md Stream Id: No Value")
  end

  return offset, value
end

-- Md Stream Id (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_stream_id_default_e = {}

-- Dissect: Md Stream Id (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_stream_id_default_e.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "E"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_stream_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_stream_id, range, "")
    absent:set_text("Md Stream Id: No Value")
  end

  return offset, value
end

-- Net Chg Prev Day
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day = {}

-- Display: Net Chg Prev Day
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.display = function(value)
  if value == nil then
    return "Net Chg Prev Day: No Value"
  end

  return "Net Chg Prev Day: "..value
end

-- Dissect: Net Chg Prev Day
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.net_chg_prev_day, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.net_chg_prev_day, range, value, display)
  end

  return offset, value
end

-- Seller Days
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.seller_days = {}

-- Dissect: Seller Days
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.seller_days.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.seller_days, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.seller_days, range, 0)
    absent:set_text("Seller Days: No Value")
  end

  return offset, value
end

-- Trade Volume (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int64 = {}

-- Dissect: Trade Volume (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_volume_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_volume_uint64, range, UInt64(0))
    absent:set_text("Trade Volume: No Value")
  end

  return offset, value
end

-- Trade Volume (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default = {}

-- Dissect: Trade Volume (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_volume_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_volume_uint32, range, 0)
    absent:set_text("Trade Volume: No Value")
  end

  return offset, value
end

-- Trade Volume (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32 = {}

-- Dissect: Trade Volume (Delta)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_volume_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_volume_uint32, range, 0)
    absent:set_text("Trade Volume: No Value")
  end

  return offset, value
end

-- Tick Direction
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction = {}

-- Dissect: Tick Direction
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tick_direction, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tick_direction, range, "")
    absent:set_text("Tick Direction: No Value")
  end

  return offset, value
end

-- Trade Condition (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_sent = {}

-- Dissect: Trade Condition (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_condition, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_condition, range, "")
    absent:set_text("Trade Condition: No Value")
  end

  return offset, value
end

-- Trade Condition (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default = {}

-- Dissect: Trade Condition (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_condition, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_condition, range, "")
    absent:set_text("Trade Condition: No Value")
  end

  return offset, value
end

-- Trade Condition (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_copy = {}

-- Dissect: Trade Condition (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_condition, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_condition, range, "")
    absent:set_text("Trade Condition: No Value")
  end

  return offset, value
end

-- Trade Condition (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_constant = {}

-- Dissect: Trade Condition (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = "U"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_condition, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_condition, range, "")
    absent:set_text("Trade Condition: No Value")
  end

  return offset, value
end

-- Open Close Settle Flag (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent = {}

-- Dissect: Open Close Settle Flag (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.open_close_settle_flag_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.open_close_settle_flag_uint32, range, 0)
    absent:set_text("Open Close Settle Flag: No Value")
  end

  return offset, value
end

-- Open Close Settle Flag (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_default = {}

-- Dissect: Open Close Settle Flag (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.open_close_settle_flag_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.open_close_settle_flag_string, range, "")
    absent:set_text("Open Close Settle Flag: No Value")
  end

  return offset, value
end

-- Order Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_id = {}

-- Dissect: Order Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.order_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.order_id, range, "")
    absent:set_text("Order Id: No Value")
  end

  return offset, value
end

-- Trade Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_id = {}

-- Dissect: Trade Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trade_id, range, "")
    absent:set_text("Trade Id: No Value")
  end

  return offset, value
end

-- Md Entry Buyer
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_buyer = {}

-- Dissect: Md Entry Buyer
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_buyer.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_buyer, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_buyer, range, "")
    absent:set_text("Md Entry Buyer: No Value")
  end

  return offset, value
end

-- Md Entry Seller
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_seller = {}

-- Dissect: Md Entry Seller
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_seller.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_seller, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_seller, range, "")
    absent:set_text("Md Entry Seller: No Value")
  end

  return offset, value
end

-- Md Entry Position No
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_position_no = {}

-- Dissect: Md Entry Position No
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_position_no.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_position_no, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_entry_position_no, range, 0)
    absent:set_text("Md Entry Position No: No Value")
  end

  return offset, value
end

-- Settle Price Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_sent_optional_u_int32 = {}

-- Dissect: Settle Price Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_sent_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settle_price_type_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settle_price_type_uint32, range, 0)
    absent:set_text("Settle Price Type: No Value")
  end

  return offset, value
end

-- Settle Price Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_sent_optional_string = {}

-- Dissect: Settle Price Type (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_sent_optional_string.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settle_price_type_string, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settle_price_type_string, range, "")
    absent:set_text("Settle Price Type: No Value")
  end

  return offset, value
end

-- Settle Price Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_default = {}

-- Dissect: Settle Price Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settle_price_type_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.settle_price_type_uint32, range, 0)
    absent:set_text("Settle Price Type: No Value")
  end

  return offset, value
end

-- Price Band Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_band_type = {}

-- Dissect: Price Band Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_band_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_band_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_band_type, range, "")
    absent:set_text("Price Band Type: No Value")
  end

  return offset, value
end

-- Price Limit Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_limit_type = {}

-- Dissect: Price Limit Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_limit_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_limit_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_limit_type, range, 0)
    absent:set_text("Price Limit Type: No Value")
  end

  return offset, value
end

-- Low Limit Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_price = {}

-- Display: Low Limit Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_price.display = function(value)
  if value == nil then
    return "Low Limit Price: No Value"
  end

  return "Low Limit Price: "..value
end

-- Dissect: Low Limit Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.low_limit_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.low_limit_price, range, value, display)
  end

  return offset, value
end

-- High Limit Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_price = {}

-- Display: High Limit Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_price.display = function(value)
  if value == nil then
    return "High Limit Price: No Value"
  end

  return "High Limit Price: "..value
end

-- Dissect: High Limit Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.high_limit_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.high_limit_price, range, value, display)
  end

  return offset, value
end

-- Trading Ref Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_ref_price = {}

-- Display: Trading Ref Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_ref_price.display = function(value)
  if value == nil then
    return "Trading Ref Price: No Value"
  end

  return "Trading Ref Price: "..value
end

-- Dissect: Trading Ref Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_ref_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_ref_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_ref_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_ref_price, range, value, display)
  end

  return offset, value
end

-- Sender Comp Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id = {}

-- Dissect: Sender Comp Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "CME"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.sender_comp_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.sender_comp_id, range, "")
    absent:set_text("Sender Comp Id: No Value")
  end

  return offset, value
end

-- Fixing Bracket
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fixing_bracket = {}

-- Dissect: Fixing Bracket
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fixing_bracket.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.fixing_bracket, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.fixing_bracket, range, "")
    absent:set_text("Fixing Bracket: No Value")
  end

  return offset, value
end

-- Aggressor Side
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side = {}

-- Dissect: Aggressor Side
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.aggressor_side, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.aggressor_side, range, 0)
    absent:set_text("Aggressor Side: No Value")
  end

  return offset, value
end

-- Match Event Indicator
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator = {}

-- Dissect: Match Event Indicator
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "1"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.match_event_indicator, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.match_event_indicator, range, "")
    absent:set_text("Match Event Indicator: No Value")
  end

  return offset, value
end

-- Md Quote Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_type_default = {}

-- Dissect: Md Quote Type (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_type_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_type, range, 0)
    absent:set_text("Md Quote Type: No Value")
  end

  return offset, value
end

-- Md Quote Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_type_constant = {}

-- Dissect: Md Quote Type (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_type_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = 0
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_type, range, 0)
    absent:set_text("Md Quote Type: No Value")
  end

  return offset, value
end

-- Tot Num Reports (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_optional = {}

-- Dissect: Tot Num Reports (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tot_num_reports, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tot_num_reports, range, 0)
    absent:set_text("Tot Num Reports: No Value")
  end

  return offset, value
end

-- Tot Num Reports (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_required = {}

-- Dissect: Tot Num Reports (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tot_num_reports, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.tot_num_reports, range, 0)
    absent:set_text("Tot Num Reports: No Value")
  end

  return offset, value
end

-- No Events
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_events = {}

-- Dissect: No Events
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_events.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_events, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_events, range, 0)
    absent:set_text("No Events: No Value")
  end

  return offset, value
end

-- Event Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_type = {}

-- Dissect: Event Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_type.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.event_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.event_type, range, 0)
    absent:set_text("Event Type: No Value")
  end

  return offset, value
end

-- Event Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_date = {}

-- Dissect: Event Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_date.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.event_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.event_date, range, UInt64(0))
    absent:set_text("Event Date: No Value")
  end

  return offset, value
end

-- Event Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_time = {}

-- Dissect: Event Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_time.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.event_time, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.event_time, range, UInt64(0))
    absent:set_text("Event Time: No Value")
  end

  return offset, value
end

-- Trading Reference Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_reference_price = {}

-- Display: Trading Reference Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_reference_price.display = function(value)
  if value == nil then
    return "Trading Reference Price: No Value"
  end

  return "Trading Reference Price: "..value
end

-- Dissect: Trading Reference Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_reference_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    mantissa, offset = read_stop_bit_int64(buffer, offset)
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_reference_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_reference_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_reference_price, range, value, display)
  end

  return offset, value
end

-- High Limit Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_px = {}

-- Display: High Limit Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_px.display = function(value)
  if value == nil then
    return "High Limit Px: No Value"
  end

  return "High Limit Px: "..value
end

-- Dissect: High Limit Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    mantissa, offset = read_stop_bit_int64(buffer, offset)
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_px.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.high_limit_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.high_limit_px, range, value, display)
  end

  return offset, value
end

-- Low Limit Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_px = {}

-- Display: Low Limit Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_px.display = function(value)
  if value == nil then
    return "Low Limit Px: No Value"
  end

  return "Low Limit Px: "..value
end

-- Dissect: Low Limit Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    mantissa, offset = read_stop_bit_int64(buffer, offset)
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_px.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.low_limit_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.low_limit_px, range, value, display)
  end

  return offset, value
end

-- Underlying Product
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_product = {}

-- Dissect: Underlying Product
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_product.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_product, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.underlying_product, range, "")
    absent:set_text("Underlying Product: No Value")
  end

  return offset, value
end

-- Pricing Model
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pricing_model = {}

-- Dissect: Pricing Model
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pricing_model.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.pricing_model, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.pricing_model, range, "")
    absent:set_text("Pricing Model: No Value")
  end

  return offset, value
end

-- Min Cab Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_cab_price = {}

-- Display: Min Cab Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_cab_price.display = function(value)
  if value == nil then
    return "Min Cab Price: No Value"
  end

  return "Min Cab Price: "..value
end

-- Dissect: Min Cab Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_cab_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    mantissa, offset = read_stop_bit_int64(buffer, offset)
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_cab_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_cab_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_cab_price, range, value, display)
  end

  return offset, value
end

-- Expiration Cycle
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.expiration_cycle = {}

-- Dissect: Expiration Cycle
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.expiration_cycle.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.expiration_cycle, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.expiration_cycle, range, 0)
    absent:set_text("Expiration Cycle: No Value")
  end

  return offset, value
end

-- Unit Of Measure Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.unit_of_measure_qty = {}

-- Dissect: Unit Of Measure Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.unit_of_measure_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.unit_of_measure_qty, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.unit_of_measure_qty, range, "")
    absent:set_text("Unit Of Measure Qty: No Value")
  end

  return offset, value
end

-- Max Trade Vol
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_trade_vol = {}

-- Dissect: Max Trade Vol
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_trade_vol.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.max_trade_vol, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.max_trade_vol, range, UInt64(0))
    absent:set_text("Max Trade Vol: No Value")
  end

  return offset, value
end

-- Match Algo
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_algo = {}

-- Dissect: Match Algo
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_algo.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.match_algo, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.match_algo, range, "")
    absent:set_text("Match Algo: No Value")
  end

  return offset, value
end

-- Max Price Variation
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_price_variation = {}

-- Dissect: Max Price Variation
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_price_variation.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.max_price_variation, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.max_price_variation, range, "")
    absent:set_text("Max Price Variation: No Value")
  end

  return offset, value
end

-- Implied Market Indicator
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.implied_market_indicator = {}

-- Dissect: Implied Market Indicator
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.implied_market_indicator.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.implied_market_indicator, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.implied_market_indicator, range, "")
    absent:set_text("Implied Market Indicator: No Value")
  end

  return offset, value
end

-- No Instr Attrib
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_instr_attrib = {}

-- Dissect: No Instr Attrib
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_instr_attrib.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_instr_attrib, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_instr_attrib, range, 0)
    absent:set_text("No Instr Attrib: No Value")
  end

  return offset, value
end

-- Instr Attrib Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib_type = {}

-- Dissect: Instr Attrib Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  local value_delta = nil
  value_delta, offset = read_stop_bit_int64(buffer, offset)
  value = (state.values[key] or UInt64(0)) + UInt64.fromhex(value_delta:tohex())
  state.values[key] = value

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib_type, range, UInt64(0))
    absent:set_text("Instr Attrib Type: No Value")
  end

  return offset, value
end

-- Instr Attrib Value
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib_value = {}

-- Dissect: Instr Attrib Value
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib_value.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib_value, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib_value, range, "")
    absent:set_text("Instr Attrib Value: No Value")
  end

  return offset, value
end

-- Min Price Increment Amount
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_amount = {}

-- Display: Min Price Increment Amount
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_amount.display = function(value)
  if value == nil then
    return "Min Price Increment Amount: No Value"
  end

  return "Min Price Increment Amount: "..value
end

-- Dissect: Min Price Increment Amount
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_amount.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    mantissa, offset = read_stop_bit_int64(buffer, offset)
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_amount.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_price_increment_amount, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_price_increment_amount, range, value, display)
  end

  return offset, value
end

-- Last Update Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_update_time = {}

-- Dissect: Last Update Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_update_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.last_update_time, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.last_update_time, range, UInt64(0))
    absent:set_text("Last Update Time: No Value")
  end

  return offset, value
end

-- Display Factor
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.display_factor = {}

-- Display: Display Factor
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.display_factor.display = function(value)
  if value == nil then
    return "Display Factor: No Value"
  end

  return "Display Factor: "..value
end

-- Dissect: Display Factor
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.display_factor.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    mantissa, offset = read_stop_bit_int64(buffer, offset)
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.display_factor.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.display_factor, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.display_factor, range, value, display)
  end

  return offset, value
end

-- Leg Security Desc
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_desc = {}

-- Dissect: Leg Security Desc
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_desc.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_desc, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_desc, range, "")
    absent:set_text("Leg Security Desc: No Value")
  end

  return offset, value
end

-- Leg Side
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_side = {}

-- Dissect: Leg Side
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = "1"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_side, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_side, range, "")
    absent:set_text("Leg Side: No Value")
  end

  return offset, value
end

-- Leg Security Group
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_group = {}

-- Dissect: Leg Security Group
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_group.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_group, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_group, range, "")
    absent:set_text("Leg Security Group: No Value")
  end

  return offset, value
end

-- Leg Cfi Code
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_cfi_code = {}

-- Dissect: Leg Cfi Code
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_cfi_code.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_cfi_code, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_cfi_code, range, "")
    absent:set_text("Leg Cfi Code: No Value")
  end

  return offset, value
end

-- Leg Security Sub Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_sub_type = {}

-- Dissect: Leg Security Sub Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_sub_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_sub_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_security_sub_type, range, "")
    absent:set_text("Leg Security Sub Type: No Value")
  end

  return offset, value
end

-- Leg Currency
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_currency = {}

-- Dissect: Leg Currency
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_currency, range, "")
    absent:set_text("Leg Currency: No Value")
  end

  return offset, value
end

-- Leg Maturity Month Year
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_maturity_month_year = {}

-- Dissect: Leg Maturity Month Year
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_maturity_month_year.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_maturity_month_year, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_maturity_month_year, range, UInt64(0))
    absent:set_text("Leg Maturity Month Year: No Value")
  end

  return offset, value
end

-- Leg Strike Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_price = {}

-- Display: Leg Strike Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_price.display = function(value)
  if value == nil then
    return "Leg Strike Price: No Value"
  end

  return "Leg Strike Price: "..value
end

-- Dissect: Leg Strike Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_strike_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_strike_price, range, value, display)
  end

  return offset, value
end

-- Leg Strike Currency
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_currency = {}

-- Dissect: Leg Strike Currency
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_currency.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_strike_currency, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_strike_currency, range, "")
    absent:set_text("Leg Strike Currency: No Value")
  end

  return offset, value
end

-- Leg Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_price = {}

-- Display: Leg Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_price.display = function(value)
  if value == nil then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Dissect: Leg Price
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_price.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_price.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_price, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_price, range, value, display)
  end

  return offset, value
end

-- Leg Option Delta
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_option_delta = {}

-- Display: Leg Option Delta
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_option_delta.display = function(value)
  if value == nil then
    return "Leg Option Delta: No Value"
  end

  return "Leg Option Delta: "..value
end

-- Dissect: Leg Option Delta
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_option_delta.dissect = function(buffer, offset, packet, parent, present, state, key)
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
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_option_delta.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_option_delta, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.leg_option_delta, range, value, display)
  end

  return offset, value
end

-- User Defined Instrument
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.user_defined_instrument = {}

-- Dissect: User Defined Instrument
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.user_defined_instrument.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value = "Y"
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.user_defined_instrument, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.user_defined_instrument, range, "")
    absent:set_text("User Defined Instrument: No Value")
  end

  return offset, value
end

-- Price Ratio
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_ratio = {}

-- Display: Price Ratio
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_ratio.display = function(value)
  if value == nil then
    return "Price Ratio: No Value"
  end

  return "Price Ratio: "..value
end

-- Dissect: Price Ratio
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_ratio.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    mantissa, offset = read_stop_bit_int64(buffer, offset)
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_ratio.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_ratio, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.price_ratio, range, value, display)
  end

  return offset, value
end

-- Contract Multiplier Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_type = {}

-- Dissect: Contract Multiplier Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_multiplier_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.contract_multiplier_type, range, 0)
    absent:set_text("Contract Multiplier Type: No Value")
  end

  return offset, value
end

-- Flow Schedule Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.flow_schedule_type = {}

-- Dissect: Flow Schedule Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.flow_schedule_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.flow_schedule_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.flow_schedule_type, range, 0)
    absent:set_text("Flow Schedule Type: No Value")
  end

  return offset, value
end

-- Unitof Measure
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.unitof_measure = {}

-- Dissect: Unitof Measure
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.unitof_measure.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.unitof_measure, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.unitof_measure, range, "")
    absent:set_text("Unitof Measure: No Value")
  end

  return offset, value
end

-- Decay Quantity
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.decay_quantity = {}

-- Dissect: Decay Quantity
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.decay_quantity.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.decay_quantity, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.decay_quantity, range, UInt64(0))
    absent:set_text("Decay Quantity: No Value")
  end

  return offset, value
end

-- Decay Start Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.decay_start_date = {}

-- Dissect: Decay Start Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.decay_start_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.decay_start_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.decay_start_date, range, UInt64(0))
    absent:set_text("Decay Start Date: No Value")
  end

  return offset, value
end

-- Original Contract Size
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.original_contract_size = {}

-- Dissect: Original Contract Size
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.original_contract_size.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.original_contract_size, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.original_contract_size, range, UInt64(0))
    absent:set_text("Original Contract Size: No Value")
  end

  return offset, value
end

-- Cleared Volume
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cleared_volume = {}

-- Dissect: Cleared Volume
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cleared_volume.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.cleared_volume, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.cleared_volume, range, 0)
    absent:set_text("Cleared Volume: No Value")
  end

  return offset, value
end

-- Open Interest Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_interest_qty = {}

-- Dissect: Open Interest Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_interest_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.open_interest_qty, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.open_interest_qty, range, 0)
    absent:set_text("Open Interest Qty: No Value")
  end

  return offset, value
end

-- Trading Reference Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_reference_date = {}

-- Dissect: Trading Reference Date
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_reference_date.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_reference_date, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_reference_date, range, 0)
    absent:set_text("Trading Reference Date: No Value")
  end

  return offset, value
end

-- Num Lot Type Rules
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.num_lot_type_rules = {}

-- Dissect: Num Lot Type Rules
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.num_lot_type_rules.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.num_lot_type_rules, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.num_lot_type_rules, range, 0)
    absent:set_text("Num Lot Type Rules: No Value")
  end

  return offset, value
end

-- Lot Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.lot_type = {}

-- Dissect: Lot Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.lot_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.lot_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.lot_type, range, "")
    absent:set_text("Lot Type: No Value")
  end

  return offset, value
end

-- Min Lot Size
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_lot_size = {}

-- Display: Min Lot Size
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_lot_size.display = function(value)
  if value == nil then
    return "Min Lot Size: No Value"
  end

  return "Min Lot Size: "..value
end

-- Dissect: Min Lot Size
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_lot_size.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    mantissa, offset = read_stop_bit_int64(buffer, offset)
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_lot_size.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_lot_size, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.min_lot_size, range, value, display)
  end

  return offset, value
end

-- Appl Feed Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_feed_id_sent = {}

-- Dissect: Appl Feed Id (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_feed_id_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_feed_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_feed_id, range, "")
    absent:set_text("Appl Feed Id: No Value")
  end

  return offset, value
end

-- Appl Feed Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_feed_id_constant = {}

-- Dissect: Appl Feed Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_feed_id_constant.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "REPLAY"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_feed_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_feed_id, range, "")
    absent:set_text("Appl Feed Id: No Value")
  end

  return offset, value
end

-- Quote Req Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_req_id = {}

-- Dissect: Quote Req Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_req_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_req_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_req_id, range, "")
    absent:set_text("Quote Req Id: No Value")
  end

  return offset, value
end

-- Order Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_qty = {}

-- Dissect: Order Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.order_qty, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.order_qty, range, UInt64(0))
    absent:set_text("Order Qty: No Value")
  end

  return offset, value
end

-- Side
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.side = {}

-- Dissect: Side
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.side.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.side, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.side, range, 0)
    absent:set_text("Side: No Value")
  end

  return offset, value
end

-- Transact Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.transact_time = {}

-- Dissect: Transact Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.transact_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.transact_time, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.transact_time, range, UInt64(0))
    absent:set_text("Transact Time: No Value")
  end

  return offset, value
end

-- Quote Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_type = {}

-- Dissect: Quote Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_stop_bit_unsigned(buffer, offset)
  else
    value = 1
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.quote_type, range, 0)
    absent:set_text("Quote Type: No Value")
  end

  return offset, value
end

-- Trading Session Sub Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_sub_id = {}

-- Dissect: Trading Session Sub Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_sub_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_session_sub_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trading_session_sub_id, range, "")
    absent:set_text("Trading Session Sub Id: No Value")
  end

  return offset, value
end

-- Security Trading Status (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_sent = {}

-- Dissect: Security Trading Status (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_trading_status, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_trading_status, range, 0)
    absent:set_text("Security Trading Status: No Value")
  end

  return offset, value
end

-- Security Trading Status (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_default = {}

-- Dissect: Security Trading Status (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_trading_status, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_trading_status, range, 0)
    absent:set_text("Security Trading Status: No Value")
  end

  return offset, value
end

-- Trad Ses Open Time (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trad_ses_open_time_sent_optional_u_int64 = {}

-- Dissect: Trad Ses Open Time (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trad_ses_open_time_sent_optional_u_int64.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trad_ses_open_time_uint64, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trad_ses_open_time_uint64, range, UInt64(0))
    absent:set_text("Trad Ses Open Time: No Value")
  end

  return offset, value
end

-- Trad Ses Open Time (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trad_ses_open_time_sent_optional_u_int32 = {}

-- Dissect: Trad Ses Open Time (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trad_ses_open_time_sent_optional_u_int32.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trad_ses_open_time_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trad_ses_open_time_uint32, range, 0)
    absent:set_text("Trad Ses Open Time: No Value")
  end

  return offset, value
end

-- Trad Ses Open Time (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trad_ses_open_time_default = {}

-- Dissect: Trad Ses Open Time (Default)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trad_ses_open_time_default.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trad_ses_open_time_uint32, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.trad_ses_open_time_uint32, range, 0)
    absent:set_text("Trad Ses Open Time: No Value")
  end

  return offset, value
end

-- Security Trading Event
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_event = {}

-- Dissect: Security Trading Event
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_event.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_trading_event, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_trading_event, range, 0)
    absent:set_text("Security Trading Event: No Value")
  end

  return offset, value
end

-- High Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_px = {}

-- Display: High Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_px.display = function(value)
  if value == nil then
    return "High Px: No Value"
  end

  return "High Px: "..value
end

-- Dissect: High Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    mantissa, offset = read_stop_bit_int64(buffer, offset)
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_px.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.high_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.high_px, range, value, display)
  end

  return offset, value
end

-- Low Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_px = {}

-- Display: Low Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_px.display = function(value)
  if value == nil then
    return "Low Px: No Value"
  end

  return "Low Px: "..value
end

-- Dissect: Low Px
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_px.dissect = function(buffer, offset, packet, parent, present, state, key)
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
    mantissa, offset = read_stop_bit_int64(buffer, offset)
  end

  if exponent ~= nil and mantissa ~= nil then
    if exponent < 0 then
      value = mantissa / (10 ^ -exponent)
    else
      value = mantissa * (10 ^ exponent)
    end
  end

  local range = buffer(start, offset - start)

  local display = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_px.display(value)

  if value == nil then
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.low_px, range, 0/0, display)
    absent:set_text(display)
  else
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.low_px, range, value, display)
  end

  return offset, value
end

-- Halt Reason
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.halt_reason = {}

-- Dissect: Halt Reason
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.halt_reason.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.halt_reason, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.halt_reason, range, 0)
    absent:set_text("Halt Reason: No Value")
  end

  return offset, value
end

-- Last Msg Seq Num Processed
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_msg_seq_num_processed = {}

-- Dissect: Last Msg Seq Num Processed
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_msg_seq_num_processed.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.last_msg_seq_num_processed, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.last_msg_seq_num_processed, range, 0)
    absent:set_text("Last Msg Seq Num Processed: No Value")
  end

  return offset, value
end

-- Curerncy
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.curerncy = {}

-- Dissect: Curerncy
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.curerncy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.curerncy, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.curerncy, range, "")
    absent:set_text("Curerncy: No Value")
  end

  return offset, value
end

-- Day Cum Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.day_cum_qty = {}

-- Dissect: Day Cum Qty
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.day_cum_qty.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = nil
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.day_cum_qty, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.day_cum_qty, range, 0)
    absent:set_text("Day Cum Qty: No Value")
  end

  return offset, value
end

-- Md Book Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_book_type = {}

-- Dissect: Md Book Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_book_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_book_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_book_type, range, 0)
    absent:set_text("Md Book Type: No Value")
  end

  return offset, value
end

-- Md Security Trading Status
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_trading_status = {}

-- Dissect: Md Security Trading Status
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_trading_status.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_trading_status, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_trading_status, range, 0)
    absent:set_text("Md Security Trading Status: No Value")
  end

  return offset, value
end

-- Orig Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.orig_time = {}

-- Dissect: Orig Time
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.orig_time.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_uint64(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.orig_time, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.orig_time, range, UInt64(0))
    absent:set_text("Orig Time: No Value")
  end

  return offset, value
end

-- News Source
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.news_source = {}

-- Dissect: News Source
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.news_source.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.news_source, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.news_source, range, "")
    absent:set_text("News Source: No Value")
  end

  return offset, value
end

-- Language Code
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.language_code = {}

-- Dissect: Language Code
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.language_code.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.language_code, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.language_code, range, "")
    absent:set_text("Language Code: No Value")
  end

  return offset, value
end

-- Headline (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.headline_copy = {}

-- Dissect: Headline (Copy)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.headline_copy.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.headline, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.headline, range, "")
    absent:set_text("Headline: No Value")
  end

  return offset, value
end

-- Headline (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.headline_sent = {}

-- Dissect: Headline (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.headline_sent.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.headline, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.headline, range, "")
    absent:set_text("Headline: No Value")
  end

  return offset, value
end

-- Url Link
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.url_link = {}

-- Dissect: Url Link
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.url_link.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_ascii_string(buffer, offset)
    state.values[key] = value
  else
    value = state.values[key]
  end


  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.url_link, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.url_link, range, "")
    absent:set_text("Url Link: No Value")
  end

  return offset, value
end

-- No Routing I Ds
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_routing_i_ds = {}

-- Dissect: No Routing I Ds
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_routing_i_ds.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_routing_i_ds, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_routing_i_ds, range, 0)
    absent:set_text("No Routing I Ds: No Value")
  end

  return offset, value
end

-- Routing Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.routing_type = {}

-- Dissect: Routing Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.routing_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  if present then
    value, offset = read_nullable_unsigned(buffer, offset)
  else
    value = 2
  end

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.routing_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.routing_type, range, 0)
    absent:set_text("Routing Type: No Value")
  end

  return offset, value
end

-- Routing Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.routing_id = {}

-- Dissect: Routing Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.routing_id.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.routing_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.routing_id, range, "")
    absent:set_text("Routing Id: No Value")
  end

  return offset, value
end

-- No Lines Of Text (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_lines_of_text_sent_optional = {}

-- Dissect: No Lines Of Text (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_lines_of_text_sent_optional.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_lines_of_text, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_lines_of_text, range, 0)
    absent:set_text("No Lines Of Text: No Value")
  end

  return offset, value
end

-- No Lines Of Text (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_lines_of_text_sent_required = {}

-- Dissect: No Lines Of Text (Sent)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_lines_of_text_sent_required.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_lines_of_text, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.no_lines_of_text, range, 0)
    absent:set_text("No Lines Of Text: No Value")
  end

  return offset, value
end

-- Encoded Text Len
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.encoded_text_len = {}

-- Dissect: Encoded Text Len
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.encoded_text_len.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_nullable_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.encoded_text_len, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.encoded_text_len, range, 0)
    absent:set_text("Encoded Text Len: No Value")
  end

  return offset, value
end

-- Encoded Text
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.encoded_text = {}

-- Dissect: Encoded Text
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.encoded_text.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_ascii_string(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.encoded_text, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.encoded_text, range, "")
    absent:set_text("Encoded Text: No Value")
  end

  return offset, value
end

-- Encrypt Method
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.encrypt_method = {}

-- Dissect: Encrypt Method
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.encrypt_method.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = 0

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.encrypt_method, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.encrypt_method, range, 0)
    absent:set_text("Encrypt Method: No Value")
  end

  return offset, value
end

-- Heartbeat Int
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.heartbeat_int = {}

-- Dissect: Heartbeat Int
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.heartbeat_int.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.heartbeat_int, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.heartbeat_int, range, 0)
    absent:set_text("Heartbeat Int: No Value")
  end

  return offset, value
end

-- Default Appl Ver Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.default_appl_ver_id_constant_9 = {}

-- Dissect: Default Appl Ver Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.default_appl_ver_id_constant_9.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "9"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.default_appl_ver_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.default_appl_ver_id, range, "")
    absent:set_text("Default Appl Ver Id: No Value")
  end

  return offset, value
end

-- Default Appl Ver Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.default_appl_ver_id_constant_8 = {}

-- Dissect: Default Appl Ver Id (Constant)
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.default_appl_ver_id_constant_8.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "8"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.default_appl_ver_id, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.default_appl_ver_id, range, "")
    absent:set_text("Default Appl Ver Id: No Value")
  end

  return offset, value
end

-- Msg Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_type = {}

-- Dissect: Msg Type
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_type.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value = "4"

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.msg_type, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.msg_type, range, "")
    absent:set_text("Msg Type: No Value")
  end

  return offset, value
end

-- New Seq No
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.new_seq_no = {}

-- Dissect: New Seq No
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.new_seq_no.dissect = function(buffer, offset, packet, parent, present, state, key)
  local start = offset
  local value = nil

  value, offset = read_stop_bit_unsigned(buffer, offset)

  local range = buffer(start, offset - start)

  if value ~= nil then
    parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.new_seq_no, range, value)
  else
    local absent = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.new_seq_no, range, 0)
    absent:set_text("New Seq No: No Value")
  end

  return offset, value
end


-----------------------------------------------------------------------
-- Dissect B3 B3Derivatives UmdfNtp Fast 5.0.1.2018
-----------------------------------------------------------------------

-- Md Sequence Reset Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_sequence_reset = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_sequence_reset.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_sequence_reset
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_sequence_reset.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_appl_ver_id,
}

-- Dissect Fields: Md Sequence Reset Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_sequence_reset.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Msg Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- New Seq No: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.new_seq_no.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Sequence Reset Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_sequence_reset.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_sequence_reset.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Logout Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logout

-- Dissect Fields: Md Logout Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_5.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Feed Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_feed_id_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Logout Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Logout_119 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_119 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_119.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logout_119

-- Dissect Fields: Md Logout_119 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_119.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_5.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Logout_119 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_119.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_119.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Logout_4 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_4 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_4.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logout_4

-- Dissect Fields: Md Logout_4 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_4.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_5.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Text: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Logout_4 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_4.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_4.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Logon Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logon

-- Dissect Fields: Md Logon Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_a.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Feed Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_feed_id_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encrypt Method: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.encrypt_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Heartbeat Int: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.heartbeat_int.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Default Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.default_appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Logon Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Logon_3 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_3 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_3.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logon_3

-- Dissect Fields: Md Logon_3 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_3.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_a.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encrypt Method: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.encrypt_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Heartbeat Int: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.heartbeat_int.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Default Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.default_appl_ver_id_constant_9.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Logon_3 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_3.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_3.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Logon_118 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_118 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_118.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_logon_118

-- Dissect Fields: Md Logon_118 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_118.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_a.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encrypt Method: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.encrypt_method.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Heartbeat Int: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.heartbeat_int.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Default Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.default_appl_ver_id_constant_9.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Logon_118 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_118.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_118.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Heartbeat Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_heartbeat
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Heartbeat Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  return index
end

-- Dissect: Md Heartbeat Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Heartbeat_101 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat_101 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat_101.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_heartbeat_101
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat_101.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Heartbeat_101 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat_101.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_0.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  return index
end

-- Dissect: Md Heartbeat_101 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat_101.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat_101.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md News Message Lines Of Text
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_lines_of_text = {}

-- Dissect Fields: Md News Message Lines Of Text
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_lines_of_text.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Text: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.text_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:49|0:|4:text")

  return index
end

-- Dissect: Md News Message Lines Of Text
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_lines_of_text.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_lines_of_text, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_lines_of_text.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md News Message Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md News Message Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_b.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Headline: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.headline_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- No Lines Of Text: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_lines_of_text_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lines Of Text: No Lines Of Text entries
  local count = value or 0
  for md_news_message_lines_of_text_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_lines_of_text.dissect(buffer, index, packet, parent, presence_map, base, state, md_news_message_lines_of_text_index)
  end

  return index
end

-- Dissect: Md News Message Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md News Message_100 Lines Of Text
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100_lines_of_text = {}

-- Dissect Fields: Md News Message_100 Lines Of Text
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100_lines_of_text.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Text: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.text_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:100|0:|4:text")

  return index
end

-- Dissect: Md News Message_100 Lines Of Text
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100_lines_of_text.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_100_lines_of_text, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100_lines_of_text.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md News Message_100 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_100
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md News Message_100 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_b.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Headline: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.headline_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- No Lines Of Text: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_lines_of_text_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lines Of Text: No Lines Of Text entries
  local count = value or 0
  for md_news_message_100_lines_of_text_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100_lines_of_text.dissect(buffer, index, packet, parent, presence_map, base, state, md_news_message_100_lines_of_text_index)
  end

  return index
end

-- Dissect: Md News Message_100 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md News Message_120 Lines Of Text
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120_lines_of_text = {}

-- Dissect Fields: Md News Message_120 Lines Of Text
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120_lines_of_text.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Text: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.text_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:120|0:|4:text")

  -- Encoded Text Len: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.encoded_text_len.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Encoded Text: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.encoded_text.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md News Message_120 Lines Of Text
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120_lines_of_text.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_120_lines_of_text, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120_lines_of_text.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Routing Ids
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.routing_ids = {}

-- Dissect Fields: Routing Ids
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.routing_ids.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Routing Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.routing_type.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Routing Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.routing_id.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Routing Ids
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.routing_ids.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.routing_ids, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.routing_ids.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md News Message_120 Related Sym
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120_related_sym = {}

-- Dissect Fields: Md News Message_120 Related Sym
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120_related_sym.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Id: uInt64, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int64.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:120|0:|10:SecurityID")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md News Message_120 Related Sym
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120_related_sym.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_120_related_sym, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120_related_sym.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md News Message_120 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_news_message_120
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_news_source,
  [3] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_language_code,
  [4] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_headline,
  [5] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_url_link,
}

-- Dissect Fields: Md News Message_120 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_b.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Orig Time: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.orig_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- News Source: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.news_source.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:120|0:|10:NewsSource")

  -- Language Code: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.language_code.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:120|0:|12:LanguageCode")

  -- Headline: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.headline_copy.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:120|0:|8:Headline")

  -- Url Link: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.url_link.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:120|0:|7:URLLink")

  -- No Related Sym: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_related_sym_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Sym: No Related Sym entries
  local count = value or 0
  for md_news_message_120_related_sym_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120_related_sym.dissect(buffer, index, packet, parent, presence_map, base, state, md_news_message_120_related_sym_index)
  end

  -- No Routing I Ds: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_routing_i_ds.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Routing Ids: No Routing I Ds entries
  local count = value or 0
  for routing_ids_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.routing_ids.dissect(buffer, index, packet, parent, presence_map, base, state, routing_ids_index)
  end

  -- No Lines Of Text: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_lines_of_text_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lines Of Text: No Lines Of Text entries
  local count = value or 0
  for md_news_message_120_lines_of_text_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120_lines_of_text.dissect(buffer, index, packet, parent, presence_map, base, state, md_news_message_120_lines_of_text_index)
  end

  return index
end

-- Dissect: Md News Message_120 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Snapshot Full Refresh_53 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53_md_entries = {}

-- Dissect Fields: Md Snapshot Full Refresh_53 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { nil, "10:dictionary|2:53|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:53|0:|11:MDEntrySize")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_k.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Trade Condition: string, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_constant.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Md Price Level: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:53|0:|12:MDPriceLevel")

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:53|0:|14:NumberOfOrders")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:53|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 8], nil }, state, { nil, "10:dictionary|2:53|0:|31:decimal-mantissaNetChgPrevDay" })

  return index
end

-- Dissect: Md Snapshot Full Refresh_53 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_53_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Snapshot Full Refresh_53 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_53
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Snapshot Full Refresh_53 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Book Type: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_book_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:53|0:|10:SecurityID")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_snapshot_full_refresh_53_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_53_md_entries_index)
  end

  return index
end

-- Dissect: Md Snapshot Full Refresh_53 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Snapshot Full Refresh_80 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80_md_entries = {}

-- Dissect Fields: Md Snapshot Full Refresh_80 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { nil, "10:dictionary|2:80|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:80|0:|11:MDEntrySize")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_k.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Md Price Level: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:80|0:|12:MDPriceLevel")

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:80|0:|14:NumberOfOrders")

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:80|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|2:80|0:|31:decimal-mantissaNetChgPrevDay" })

  return index
end

-- Dissect: Md Snapshot Full Refresh_80 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_80_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Snapshot Full Refresh_80 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_80
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Snapshot Full Refresh_80 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Book Type: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_book_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Security Trading Status: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_trading_status.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_snapshot_full_refresh_80_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_80_md_entries_index)
  end

  return index
end

-- Dissect: Md Snapshot Full Refresh_80 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Snapshot Full Refresh_112 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112_md_entries = {}

-- Dissect Fields: Md Snapshot Full Refresh_112 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Curerncy: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.curerncy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|3:112|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:112|0:|11:MDEntrySize")

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:112|0:|11:TradeVolume")

  -- Md Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:112|0:|11:MDEntryDate")

  -- Md Entry Time: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:112|0:|11:MDEntryTime")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:112|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Md Stream Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_stream_id_default_e.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Type: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_default.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Trad Ses Open Time: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trad_ses_open_time_default.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Open Close Settle Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Order Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_id.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Trade Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Md Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Md Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 18], state, "10:dictionary|3:112|0:|14:NumberOfOrders")

  -- Md Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Day Cum Qty: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.day_cum_qty.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Settle Price Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 24], nil }, state, { nil, "10:dictionary|3:112|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 25], nil }, state, { nil, "10:dictionary|3:112|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Ref Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_ref_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:112|0:|33:decimal-mantissaTradingRefPrice" })

  return index
end

-- Dissect: Md Snapshot Full Refresh_112 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_112_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Snapshot Full Refresh_112 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_112
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
  [3] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_md_req_id,
}

-- Dissect Fields: Md Snapshot Full Refresh_112 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Req Id: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_req_id_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:112|0:|7:MDReqID")

  -- Market Depth: int32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.market_depth_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_snapshot_full_refresh_112_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_112_md_entries_index)
  end

  return index
end

-- Dissect: Md Snapshot Full Refresh_112 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Snapshot Full Refresh_124 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124_md_entries = {}

-- Dissect Fields: Md Snapshot Full Refresh_124 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Curerncy: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.curerncy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|3:124|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:124|0:|11:MDEntrySize")

  -- Md Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:124|0:|12:MDInsertDate")

  -- Md Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:124|0:|12:MDInsertTime")

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:124|0:|11:TradeVolume")

  -- Md Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:124|0:|11:MDEntryDate")

  -- Md Entry Time: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|3:124|0:|11:MDEntryTime")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 8], nil }, state, { nil, "10:dictionary|3:124|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Md Stream Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_stream_id_default_e.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Price Type: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Trad Ses Open Time: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trad_ses_open_time_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Open Close Settle Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Order Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_id.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Trade Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Md Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Md Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 20], state, "10:dictionary|3:124|0:|14:NumberOfOrders")

  -- Md Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Day Cum Qty: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.day_cum_qty.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Settle Price Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:124|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:124|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Ref Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_ref_price.dissect(buffer, index, packet, parent, { presence_map[base + 28], nil }, state, { nil, "10:dictionary|3:124|0:|33:decimal-mantissaTradingRefPrice" })

  return index
end

-- Dissect: Md Snapshot Full Refresh_124 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_124_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Snapshot Full Refresh_124 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_124
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_md_req_id,
}

-- Dissect Fields: Md Snapshot Full Refresh_124 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Req Id: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_req_id_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:124|0:|7:MDReqID")

  -- Market Depth: int32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.market_depth_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_snapshot_full_refresh_124_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_124_md_entries_index)
  end

  return index
end

-- Dissect: Md Snapshot Full Refresh_124 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Snapshot Full Refresh_127 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127_md_entries = {}

-- Dissect Fields: Md Snapshot Full Refresh_127 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Entry Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Curerncy: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.curerncy.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|3:127|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:127|0:|11:MDEntrySize")

  -- Md Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:127|0:|12:MDInsertDate")

  -- Md Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:127|0:|12:MDInsertTime")

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:127|0:|11:TradeVolume")

  -- Md Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:127|0:|11:MDEntryDate")

  -- Md Entry Time: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|3:127|0:|11:MDEntryTime")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 8], nil }, state, { nil, "10:dictionary|3:127|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Md Stream Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_stream_id_default_e.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Price Type: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Trad Ses Open Time: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trad_ses_open_time_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Open Close Settle Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Order Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_id.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Trade Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Md Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Md Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 20], state, "10:dictionary|3:127|0:|14:NumberOfOrders")

  -- Md Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Day Cum Qty: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.day_cum_qty.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Settle Price Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_default.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:127|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:127|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Ref Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_ref_price.dissect(buffer, index, packet, parent, { presence_map[base + 28], nil }, state, { nil, "10:dictionary|3:127|0:|33:decimal-mantissaTradingRefPrice" })

  return index
end

-- Dissect: Md Snapshot Full Refresh_127 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_127_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Snapshot Full Refresh_127 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_snapshot_full_refresh_127
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_md_req_id,
}

-- Dissect Fields: Md Snapshot Full Refresh_127 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_w.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Msg Seq Num Processed: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_msg_seq_num_processed.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Req Id: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_req_id_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:127|0:|7:MDReqID")

  -- Market Depth: int32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.market_depth_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Rpt Seq: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_required_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_snapshot_full_refresh_127_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_snapshot_full_refresh_127_md_entries_index)
  end

  return index
end

-- Dissect: Md Snapshot Full Refresh_127 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Security Status Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
  [3] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_security_id_source,
  [4] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [5] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
}

-- Dissect Fields: Md Security Status Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Id: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- High Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, nil })

  -- Low Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_px.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, nil })

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security Status Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Security Status_76 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_76 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_76.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status_76
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_76.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
  [3] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_security_id_source,
  [4] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [5] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
}

-- Dissect Fields: Md Security Status_76 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_76.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Id: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- High Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, nil })

  -- Low Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_px.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, nil })

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Halt Reason: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.halt_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security Status_76 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_76.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_76.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Security Status_99 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_99 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_99.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status_99
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_99.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
  [3] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_security_id_source,
  [4] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [5] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
}

-- Dissect Fields: Md Security Status_99 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_99.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Id: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- High Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, nil })

  -- Low Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_px.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, nil })

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Halt Reason: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.halt_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security Status_99 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_99.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_99.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Security Status_102 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_102 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_102.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status_102
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_102.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
  [3] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_security_id_source,
  [4] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [5] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
}

-- Dissect Fields: Md Security Status_102 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_102.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Id: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Trade Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- High Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, nil })

  -- Low Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_px.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, nil })

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Halt Reason: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.halt_reason.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security Status_102 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_102.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_102.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Security Status_113 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_113 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_113.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status_113
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_113.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_security_id_source,
}

-- Dissect Fields: Md Security Status_113 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_113.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_group_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Exchange: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Open Time: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trad_ses_open_time_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.transact_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security Status_113 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_113.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_113.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Security Status_125 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_125 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_125.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_status_125
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_125.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_security_id_source,
}

-- Dissect Fields: Md Security Status_125 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_125.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_f.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Group: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_group_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Security Exchange: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Sub Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_sub_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Status: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_status_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trad Ses Open Time: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trad_ses_open_time_sent_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Transact Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.transact_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Trading Event: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_trading_event.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security Status_125 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_125.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_125.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Quote Request_54 Related Sym
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54_related_sym = {}

-- Dissect Fields: Md Quote Request_54 Related Sym
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54_related_sym.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Symbol: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.side.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Transact Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.transact_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Type: uInt32, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Id: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Quote Request_54 Related Sym
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54_related_sym.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_request_54_related_sym, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54_related_sym.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Quote Request_54 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_request_54
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Quote Request_54 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_r.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Quote Req Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_req_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_related_sym_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Sym: No Related Sym entries
  local count = value or 0
  for md_quote_request_54_related_sym_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54_related_sym.dissect(buffer, index, packet, parent, presence_map, base, state, md_quote_request_54_related_sym_index)
  end

  return index
end

-- Dissect: Md Quote Request_54 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Quote Request_98 Related Sym
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98_related_sym = {}

-- Dissect Fields: Md Quote Request_98 Related Sym
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98_related_sym.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Symbol: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Qty: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.side.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Transact Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.transact_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Quote Type: uInt32, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_type.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Id: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Quote Request_98 Related Sym
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98_related_sym.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_request_98_related_sym, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98_related_sym.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Quote Request_98 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_quote_request_98
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Quote Request_98 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_r.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Quote Req Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_req_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_related_sym_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Sym: No Related Sym entries
  local count = value or 0
  for md_quote_request_98_related_sym_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98_related_sym.dissect(buffer, index, packet, parent, presence_map, base, state, md_quote_request_98_related_sym_index)
  end

  return index
end

-- Dissect: Md Quote Request_98 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Security Definition_52 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52_legs = {}

-- Dissect Fields: Md Security Definition_52 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52_legs.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_symbol_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Leg Ratio Qty: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_ratio_qty_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:52|0:|11:LegRatioQty")

  -- Leg Security Id: uInt64, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:52|0:|13:LegSecurityID")

  -- Leg Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Side: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_side.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Leg Cfi Code: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_cfi_code.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:52|0:|10:LegCFICode")

  -- Leg Security Sub Type: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:52|0:|18:LegSecuritySubType")

  -- Leg Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_currency.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:52|0:|11:LegCurrency")

  -- Leg Maturity Month Year: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_maturity_month_year.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:52|0:|20:LegMaturityMonthYear")

  -- Leg Strike Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { "10:dictionary|2:52|0:|32:decimal-exponentLegStrikePrice", "10:dictionary|2:52|0:|32:decimal-mantissaLegStrikePrice" })

  -- Leg Strike Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_currency.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|2:52|0:|17:LegStrikeCurrency")

  -- Leg Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_price.dissect(buffer, index, packet, parent, { presence_map[base + 8], nil }, state, { "10:dictionary|2:52|0:|26:decimal-exponentLegPrice", "10:dictionary|2:52|0:|26:decimal-mantissaLegPrice" })

  -- Leg Option Delta: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_option_delta.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { "10:dictionary|2:52|0:|32:decimal-exponentLegOptionDelta", "10:dictionary|2:52|0:|32:decimal-mantissaLegOptionDelta" })

  return index
end

-- Dissect: Md Security Definition_52 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52_legs.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_52_legs, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52_legs.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instr Attrib
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib = {}

-- Dissect Fields: Instr Attrib
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instr Attrib Type: uInt64, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib_type.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:52|0:|15:InstrAttribType")

  -- Instr Attrib Value: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib_value.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:52|0:|16:InstrAttribValue")

  return index
end

-- Dissect: Instr Attrib
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Security Definition_52 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52_underlyings = {}

-- Dissect Fields: Md Security Definition_52 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_symbol_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Id: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:52|0:|20:UnderlyingSecurityID")

  -- Underlying Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security Definition_52 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_52_underlyings, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types = {}

-- Dissect Fields: Md Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Feed Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_type_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Depth: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.market_depth_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_types, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Events
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events = {}

-- Dissect Fields: Events
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Event Type: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_type.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:52|0:|9:EventType")

  -- Event Date: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_date.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:52|0:|9:EventDate")

  -- Event Time: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_time.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:52|0:|9:EventTime")

  return index
end

-- Dissect: Events
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.events, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Security Definition_52 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_52
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
  [3] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [4] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [5] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [6] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_security_id_source,
  [7] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [8] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [9] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [10] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [11] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [12] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_user_defined_instrument,
}

-- Dissect Fields: Md Security Definition_52 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_d.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Events: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_events.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Events: No Events entries
  local count = value or 0
  for events_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.dissect(buffer, index, packet, parent, presence_map, base, state, events_index)
  end

  -- Trading Reference Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_reference_price.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { nil, nil })

  -- High Limit Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, nil })

  -- Low Limit Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_px.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, nil })

  -- Security Group: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_group_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_desc_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Cfi Code: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cfi_code_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Product: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_product.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pricing Model: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pricing_model.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Cab Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_cab_price.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, nil })

  -- Expiration Cycle: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.expiration_cycle.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Unit Of Measure Qty: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.unit_of_measure_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Strike Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, nil })

  -- Strike Currency: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Currency: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Feed Types: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_feed_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Feed Types: No Md Feed Types entries
  local count = value or 0
  for md_feed_types_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.dissect(buffer, index, packet, parent, presence_map, base, state, md_feed_types_index)
  end

  -- Match Algo: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_algo.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Sub Type: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_sub_type_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_security_definition_52_underlyings_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_definition_52_underlyings_index)
  end

  -- Max Price Variation: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_price_variation.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Implied Market Indicator: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.implied_market_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Instr Attrib: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_instr_attrib.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instr Attrib: No Instr Attrib entries
  local count = value or 0
  for instr_attrib_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.dissect(buffer, index, packet, parent, presence_map, base, state, instr_attrib_index)
  end

  -- Maturity Date: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_date_sent_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Price Increment: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 7], nil }, state, { "10:dictionary|2:52|0:|35:decimal-exponentMinPriceIncrement", "10:dictionary|2:52|0:|35:decimal-mantissaMinPriceIncrement" })

  -- Min Price Increment Amount: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_amount.dissect(buffer, index, packet, parent, { presence_map[base + 8], nil }, state, { nil, nil })

  -- Display Factor: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.display_factor.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { nil, nil })

  -- No Legs: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_legs.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Legs: No Legs entries
  local count = value or 0
  for md_security_definition_52_legs_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52_legs.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_definition_52_legs_index)
  end

  -- Appl Feed Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_feed_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- User Defined Instrument: string, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.user_defined_instrument.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  return index
end

-- Dissect: Md Security Definition_52 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Security Definition_78 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78_legs = {}

-- Dissect Fields: Md Security Definition_78 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78_legs.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_symbol_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Leg Ratio Qty: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_ratio_qty_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:78|0:|11:LegRatioQty")

  -- Leg Security Id: uInt64, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:78|0:|13:LegSecurityID")

  -- Leg Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Side: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_side.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Leg Cfi Code: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_cfi_code.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:78|0:|10:LegCFICode")

  -- Leg Security Sub Type: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:78|0:|18:LegSecuritySubType")

  -- Leg Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_currency.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:78|0:|11:LegCurrency")

  -- Leg Maturity Month Year: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_maturity_month_year.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:78|0:|20:LegMaturityMonthYear")

  -- Leg Strike Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { "10:dictionary|2:78|0:|32:decimal-exponentLegStrikePrice", "10:dictionary|2:78|0:|32:decimal-mantissaLegStrikePrice" })

  -- Leg Security Exchange: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_exchange_copy.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|2:78|0:|19:LegSecurityExchange")

  -- Leg Strike Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_currency.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|2:78|0:|17:LegStrikeCurrency")

  -- Leg Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_price.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { "10:dictionary|2:78|0:|26:decimal-exponentLegPrice", "10:dictionary|2:78|0:|26:decimal-mantissaLegPrice" })

  -- Leg Option Delta: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_option_delta.dissect(buffer, index, packet, parent, { presence_map[base + 10], nil }, state, { "10:dictionary|2:78|0:|32:decimal-exponentLegOptionDelta", "10:dictionary|2:78|0:|32:decimal-mantissaLegOptionDelta" })

  return index
end

-- Dissect: Md Security Definition_78 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78_legs.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_78_legs, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78_legs.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instr Attrib
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib = {}

-- Dissect Fields: Instr Attrib
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instr Attrib Type: uInt64, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib_type.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:78|0:|15:InstrAttribType")

  -- Instr Attrib Value: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib_value.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:78|0:|16:InstrAttribValue")

  return index
end

-- Dissect: Instr Attrib
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Security Definition_78 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78_underlyings = {}

-- Dissect Fields: Md Security Definition_78 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_symbol_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Id: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:78|0:|20:UnderlyingSecurityID")

  -- Underlying Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security Definition_78 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_78_underlyings, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types = {}

-- Dissect Fields: Md Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Feed Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Market Depth: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.market_depth_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_types, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Events
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events = {}

-- Dissect Fields: Events
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Event Type: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_type.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:78|0:|9:EventType")

  -- Event Date: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_date.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:78|0:|9:EventDate")

  -- Event Time: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_time.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:78|0:|9:EventTime")

  return index
end

-- Dissect: Events
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.events, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Security Definition_78 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_78
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
  [3] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [4] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [5] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [6] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_security_id_source,
  [7] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [8] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [9] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [10] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [11] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [12] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_user_defined_instrument,
  [13] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [14] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_contract_multiplier_type,
  [15] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
}

-- Dissect Fields: Md Security Definition_78 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_d.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Events: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_events.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Events: No Events entries
  local count = value or 0
  for events_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.dissect(buffer, index, packet, parent, presence_map, base, state, events_index)
  end

  -- Trading Reference Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_reference_price.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { nil, nil })

  -- High Limit Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, nil })

  -- Low Limit Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_px.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, nil })

  -- Security Group: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_group_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_desc_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Cfi Code: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cfi_code_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Product: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_product.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pricing Model: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pricing_model.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Cab Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_cab_price.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, nil })

  -- Expiration Cycle: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.expiration_cycle.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Unit Of Measure Qty: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.unit_of_measure_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Strike Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, nil })

  -- Strike Currency: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Currency: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Feed Types: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_feed_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Feed Types: No Md Feed Types entries
  local count = value or 0
  for md_feed_types_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.dissect(buffer, index, packet, parent, presence_map, base, state, md_feed_types_index)
  end

  -- Match Algo: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_algo.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Sub Type: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_sub_type_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_security_definition_78_underlyings_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_definition_78_underlyings_index)
  end

  -- Max Price Variation: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_price_variation.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Implied Market Indicator: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.implied_market_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Instr Attrib: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_instr_attrib.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instr Attrib: No Instr Attrib entries
  local count = value or 0
  for instr_attrib_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.dissect(buffer, index, packet, parent, presence_map, base, state, instr_attrib_index)
  end

  -- Maturity Month Year: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_month_year_sent_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Price Increment: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 7], nil }, state, { "10:dictionary|2:78|0:|35:decimal-exponentMinPriceIncrement", "10:dictionary|2:78|0:|35:decimal-mantissaMinPriceIncrement" })

  -- Min Price Increment Amount: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_amount.dissect(buffer, index, packet, parent, { presence_map[base + 8], nil }, state, { nil, nil })

  -- Display Factor: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.display_factor.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { nil, nil })

  -- No Legs: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_legs.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Legs: No Legs entries
  local count = value or 0
  for md_security_definition_78_legs_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78_legs.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_definition_78_legs_index)
  end

  -- Appl Feed Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_feed_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- User Defined Instrument: string, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.user_defined_instrument.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Price Ratio: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_ratio.dissect(buffer, index, packet, parent, { presence_map[base + 11], nil }, state, { nil, nil })

  -- Contract Multiplier Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_type.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Flow Schedule Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.flow_schedule_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Lot Size: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_lot_size.dissect(buffer, index, packet, parent, { presence_map[base + 13], nil }, state, { nil, nil })

  -- Contract Multiplier: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Unitof Measure: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.unitof_measure.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Decay Quantity: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.decay_quantity.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Decay Start Date: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.decay_start_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Original Contract Size: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.original_contract_size.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cleared Volume: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cleared_volume.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Interest Qty: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_interest_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Reference Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_reference_date.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security Definition_78 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Lot Type Rules
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.lot_type_rules = {}

-- Dissect Fields: Lot Type Rules
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.lot_type_rules.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Lot Type: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.lot_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Lot Size: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_lot_size.dissect(buffer, index, packet, parent, { presence_map[base + 0], nil }, state, { nil, nil })

  return index
end

-- Dissect: Lot Type Rules
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.lot_type_rules.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.lot_type_rules, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.lot_type_rules.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Security Definition_79 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79_legs = {}

-- Dissect Fields: Md Security Definition_79 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79_legs.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_symbol_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Leg Ratio Qty: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_ratio_qty_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:79|0:|11:LegRatioQty")

  -- Leg Security Id: uInt64, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:79|0:|13:LegSecurityID")

  -- Leg Security Desc: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_desc.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Side: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_side.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Leg Security Group: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_group.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:79|0:|16:LegSecurityGroup")

  -- Leg Cfi Code: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_cfi_code.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:79|0:|10:LegCFICode")

  -- Leg Security Sub Type: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_sub_type.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:79|0:|18:LegSecuritySubType")

  -- Leg Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_currency.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|2:79|0:|11:LegCurrency")

  -- Leg Maturity Month Year: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_maturity_month_year.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:79|0:|20:LegMaturityMonthYear")

  -- Leg Strike Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 7], nil }, state, { "10:dictionary|2:79|0:|32:decimal-exponentLegStrikePrice", "10:dictionary|2:79|0:|32:decimal-mantissaLegStrikePrice" })

  -- Leg Security Exchange: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_exchange_copy.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|2:79|0:|19:LegSecurityExchange")

  -- Leg Strike Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_strike_currency.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|2:79|0:|17:LegStrikeCurrency")

  -- Leg Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_price.dissect(buffer, index, packet, parent, { presence_map[base + 10], nil }, state, { "10:dictionary|2:79|0:|26:decimal-exponentLegPrice", "10:dictionary|2:79|0:|26:decimal-mantissaLegPrice" })

  -- Leg Option Delta: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_option_delta.dissect(buffer, index, packet, parent, { presence_map[base + 11], nil }, state, { "10:dictionary|2:79|0:|32:decimal-exponentLegOptionDelta", "10:dictionary|2:79|0:|32:decimal-mantissaLegOptionDelta" })

  return index
end

-- Dissect: Md Security Definition_79 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79_legs.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_79_legs, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79_legs.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Instr Attrib
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib = {}

-- Dissect Fields: Instr Attrib
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Instr Attrib Type: uInt64, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib_type.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:79|0:|15:InstrAttribType")

  -- Instr Attrib Value: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib_value.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:79|0:|16:InstrAttribValue")

  return index
end

-- Dissect: Instr Attrib
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.instr_attrib, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Security Definition_79 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79_underlyings = {}

-- Dissect Fields: Md Security Definition_79 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_symbol_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Id: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:79|0:|20:UnderlyingSecurityID")

  -- Underlying Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security Definition_79 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_79_underlyings, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types = {}

-- Dissect Fields: Md Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Feed Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_type_default.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Market Depth: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.market_depth_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_feed_types, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt I Ds
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_i_ds = {}

-- Dissect Fields: Security Alt I Ds
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt Id Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_source_constant.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  return index
end

-- Dissect: Security Alt I Ds
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_i_ds, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Events
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events = {}

-- Dissect Fields: Events
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Event Type: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_type.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:79|0:|9:EventType")

  -- Event Date: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_date.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:79|0:|9:EventDate")

  -- Event Time: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.event_time.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:79|0:|9:EventTime")

  return index
end

-- Dissect: Events
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.events, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Security Definition_79 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_definition_79
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
  [3] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [4] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [5] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [6] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_security_id_source,
  [7] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [8] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [9] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [10] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [11] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [12] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_user_defined_instrument,
  [13] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_exponent,
  [14] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_contract_multiplier_type,
}

-- Dissect Fields: Md Security Definition_79 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_d.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Tot Num Reports: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_num_reports_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Events: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_events.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Events: No Events entries
  local count = value or 0
  for events_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.events.dissect(buffer, index, packet, parent, presence_map, base, state, events_index)
  end

  -- Trading Reference Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_reference_price.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { nil, nil })

  -- Settle Price Type: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_sent_optional_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- High Limit Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_px.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, nil })

  -- Low Limit Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_px.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, nil })

  -- Security Group: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_group_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_desc_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Cfi Code: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cfi_code_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Product: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_product.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pricing Model: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pricing_model.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Cab Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_cab_price.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, nil })

  -- No Security Alt Id: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt I Ds: No Security Alt Id entries
  local count = value or 0
  for security_alt_i_ds_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_i_ds_index)
  end

  -- Expiration Cycle: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.expiration_cycle.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Unit Of Measure Qty: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.unit_of_measure_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Strike Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, nil })

  -- Strike Currency: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Currency: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_currency_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Feed Types: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_feed_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Feed Types: No Md Feed Types entries
  local count = value or 0
  for md_feed_types_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_types.dissect(buffer, index, packet, parent, presence_map, base, state, md_feed_types_index)
  end

  -- Match Algo: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_algo.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Sub Type: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_sub_type_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_security_definition_79_underlyings_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_definition_79_underlyings_index)
  end

  -- Max Price Variation: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_price_variation.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Implied Market Indicator: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.implied_market_indicator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Instr Attrib: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_instr_attrib.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instr Attrib: No Instr Attrib entries
  local count = value or 0
  for instr_attrib_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instr_attrib.dissect(buffer, index, packet, parent, presence_map, base, state, instr_attrib_index)
  end

  -- Maturity Month Year: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_month_year_sent_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Price Increment: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 7], nil }, state, { "10:dictionary|2:79|0:|35:decimal-exponentMinPriceIncrement", "10:dictionary|2:79|0:|35:decimal-mantissaMinPriceIncrement" })

  -- Min Price Increment Amount: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_amount.dissect(buffer, index, packet, parent, { presence_map[base + 8], nil }, state, { nil, nil })

  -- Last Update Time: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_update_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Update Action: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_update_action_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Display Factor: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.display_factor.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { nil, nil })

  -- No Legs: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_legs.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Legs: No Legs entries
  local count = value or 0
  for md_security_definition_79_legs_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79_legs.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_definition_79_legs_index)
  end

  -- Appl Id: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- User Defined Instrument: string, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.user_defined_instrument.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Price Ratio: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_ratio.dissect(buffer, index, packet, parent, { presence_map[base + 11], nil }, state, { nil, nil })

  -- Contract Multiplier Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_type.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Flow Schedule Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.flow_schedule_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Contract Multiplier: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Unitof Measure: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.unitof_measure.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Decay Quantity: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.decay_quantity.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Decay Start Date: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.decay_start_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Original Contract Size: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.original_contract_size.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cleared Volume: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cleared_volume.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Interest Qty: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_interest_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Reference Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_reference_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Num Lot Type Rules: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.num_lot_type_rules.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Lot Type Rules: Num Lot Type Rules entries
  local count = value or 0
  for lot_type_rules_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.lot_type_rules.dissect(buffer, index, packet, parent, presence_map, base, state, lot_type_rules_index)
  end

  return index
end

-- Dissect: Md Security Definition_79 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_74 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74_md_entries = {}

-- Dissect Fields: Md Inc Refresh_74 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_5.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:74|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:74|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:74|0:|11:MDEntryType")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:74|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:74|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|2:74|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:74|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|2:74|0:|11:MDEntryTime")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field_1.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|2:74|0:|14:NumberOfOrders")

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { nil, "10:dictionary|2:74|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Md Quote Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_type_default.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_74 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_74_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_74 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_74
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_74 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_74_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_74_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_74 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_107 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107_md_entries = {}

-- Dissect Fields: Md Inc Refresh_107 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_5.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:107|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:107|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:107|0:|11:MDEntryType")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:107|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:107|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:107|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:107|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|3:107|0:|11:MDEntryTime")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field_1.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|3:107|0:|14:NumberOfOrders")

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 10], nil }, state, { nil, "10:dictionary|3:107|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Md Quote Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_type_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_107 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_107_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_107 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_107
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_107 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_107_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_107_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_107 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_44 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44_md_entries = {}

-- Dissect Fields: Md Inc Refresh_44 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:44|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:44|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:44|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, "10:dictionary|2:44|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:44|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:44|0:|11:MDEntryTime")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Number Of Orders: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_required_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|2:44|0:|14:NumberOfOrders")

  -- Md Quote Type: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_type_constant.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_44 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_44_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_44 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_44
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_44 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_44_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_44_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_44 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_96 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96_md_entries = {}

-- Dissect Fields: Md Inc Refresh_96 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:96|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:96|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:96|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, "10:dictionary|2:96|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:96|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:96|0:|11:MDEntryTime")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Number Of Orders: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_required_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|2:96|0:|14:NumberOfOrders")

  -- Md Quote Type: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_type_constant.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_96 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_96_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_96 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_96
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_96 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_96_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_96_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_96 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_43 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43_md_entries = {}

-- Dissect Fields: Md Inc Refresh_43 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:43|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:43|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:43|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { nil, "10:dictionary|2:43|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:43|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:43|0:|11:MDEntryTime")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Number Of Orders: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_required_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:43|0:|14:NumberOfOrders")

  -- Md Quote Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_type_default.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_43 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_43_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_43 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_43
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_43 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_43_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_43_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_43 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_95 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95_md_entries = {}

-- Dissect Fields: Md Inc Refresh_95 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:95|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:95|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:95|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|2:95|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:95|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:95|0:|11:MDEntryTime")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Number Of Orders: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_required_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:95|0:|14:NumberOfOrders")

  -- Md Quote Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_type_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_95 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_95_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_95 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_95
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_95 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_95_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_95_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_95 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_73 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73_md_entries = {}

-- Dissect Fields: Md Inc Refresh_73 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_5.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field_1.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:73|0:|14:NumberOfOrders")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:73|0:|11:MDEntryType")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:73|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:73|0:|6:RptSeq")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:73|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|2:73|0:|11:MDEntryTime")

  -- Md Price Level: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 8], nil }, state, { nil, "10:dictionary|2:73|0:|27:decimal-mantissaMDEntryPx" })

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { nil, "10:dictionary|2:73|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_73 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_73_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_73 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_73
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_73 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_73_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_73_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_73 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_106 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106_md_entries = {}

-- Dissect Fields: Md Inc Refresh_106 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_5.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field_1.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:106|0:|14:NumberOfOrders")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:106|0:|11:MDEntryType")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:106|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:106|0:|6:RptSeq")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:106|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|3:106|0:|11:MDEntryTime")

  -- Md Price Level: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_default.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { nil, "10:dictionary|3:106|0:|27:decimal-mantissaMDEntryPx" })

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 10], nil }, state, { nil, "10:dictionary|3:106|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_106 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_106_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_106 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_106
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_106 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_106_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_106_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_106 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_41 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41_md_entries = {}

-- Dissect Fields: Md Inc Refresh_41 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:41|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:41|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:41|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { nil, "10:dictionary|2:41|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:41|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:41|0:|11:MDEntryTime")

  -- Trading Session Id: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required.dissect(buffer, index, packet, parent, presence_map[base + 2], state, nil)

  -- Number Of Orders: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_required_u_int32_field_1.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:41|0:|14:NumberOfOrders")

  return index
end

-- Dissect: Md Inc Refresh_41 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_41_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_41 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_41
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_41 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_41_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_41_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_41 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_93 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93_md_entries = {}

-- Dissect Fields: Md Inc Refresh_93 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Price Level: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:93|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:93|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:93|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|2:93|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:93|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:93|0:|11:MDEntryTime")

  -- Trading Session Id: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Number Of Orders: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_required_u_int32_field_1.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:93|0:|14:NumberOfOrders")

  return index
end

-- Dissect: Md Inc Refresh_93 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_93_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_93 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_93
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_93 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_93_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_93_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_93 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_70 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70_md_entries = {}

-- Dissect Fields: Md Inc Refresh_70 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_0.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:70|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:70|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 4], nil }, state, { nil, "10:dictionary|2:70|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:70|0:|11:MDEntrySize")

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|2:70|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:70|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|2:70|0:|11:MDEntryTime")

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_70 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_70_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_70 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_70
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_70 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_70_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_70_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_70 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_91 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91_md_entries = {}

-- Dissect Fields: Md Inc Refresh_91 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_0.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:91|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:91|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 4], nil }, state, { nil, "10:dictionary|2:91|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:91|0:|11:MDEntrySize")

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|2:91|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:91|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|2:91|0:|11:MDEntryTime")

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_91 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_91_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_91 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_91
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_91 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_91_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_91_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_91 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_39 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39_md_entries = {}

-- Dissect Fields: Md Inc Refresh_39 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:39|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:39|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:39|0:|11:MDEntryType")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:39|0:|11:MDEntryTime")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:39|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:39|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|2:39|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:39|0:|11:MDEntrySize")

  -- Trading Session Id: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Number Of Orders: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:39|0:|14:NumberOfOrders")

  return index
end

-- Dissect: Md Inc Refresh_39 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_39_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_39 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_39
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_39 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_39_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_39_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_39 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_90 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90_md_entries = {}

-- Dissect Fields: Md Inc Refresh_90 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:90|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:90|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:90|0:|11:MDEntryType")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:90|0:|11:MDEntryTime")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:90|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:90|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|2:90|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:90|0:|11:MDEntrySize")

  -- Trading Session Id: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Number Of Orders: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:90|0:|14:NumberOfOrders")

  return index
end

-- Dissect: Md Inc Refresh_90 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_90_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_90 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_90
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_90 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_90_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_90_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_90 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_67 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67_md_entries = {}

-- Dissect Fields: Md Inc Refresh_67 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:67|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Increment, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:67|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:67|0:|11:MDEntryType")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 4], nil }, state, { nil, "10:dictionary|2:67|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|2:67|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|2:67|0:|6:RptSeq")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|2:67|0:|11:MDEntryTime")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 10], nil }, state, { nil, "10:dictionary|2:67|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:67|0:|11:MDEntrySize")

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_67 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_67_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_67 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_67
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_67 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_67_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_67_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_67 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_105 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105_md_entries = {}

-- Dissect Fields: Md Inc Refresh_105 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:105|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Increment, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:105|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:105|0:|11:MDEntryType")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|3:105|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|3:105|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|3:105|0:|6:RptSeq")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "10:dictionary|3:105|0:|11:MDEntryTime")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 11], nil }, state, { nil, "10:dictionary|3:105|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:105|0:|11:MDEntrySize")

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_105 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_105_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_105 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_105
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_105 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_105_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_105_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_105 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_72 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72_md_entries = {}

-- Dissect Fields: Md Inc Refresh_72 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_0.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:72|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:72|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { nil, "10:dictionary|2:72|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:72|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:72|0:|11:MDEntrySize")

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 4], nil }, state, { nil, "10:dictionary|2:72|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:72|0:|11:TradeVolume")

  -- Trade Condition: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_copy.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:72|0:|14:TradeCondition")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_72 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_72_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_72 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_72
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_72 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_72_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_72_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_72 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_88 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88_md_entries = {}

-- Dissect Fields: Md Inc Refresh_88 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_0.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:88|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:88|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { nil, "10:dictionary|2:88|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:88|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:88|0:|11:MDEntrySize")

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|2:88|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:88|0:|11:TradeVolume")

  -- Trade Condition: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_copy.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|2:88|0:|14:TradeCondition")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_88 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_88_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_88 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_88
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_88 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_88_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_88_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_88 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_36 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36_md_entries = {}

-- Dissect Fields: Md Inc Refresh_36 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:36|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:36|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:36|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:36|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:36|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|2:36|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|2:36|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:36|0:|11:MDEntrySize")

  -- Quote Condition: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|2:36|0:|14:QuoteCondition")

  -- Trading Session Id: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_36 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_36_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_36 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_36
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_36 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_36_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_36_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_36 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_87 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87_md_entries = {}

-- Dissect Fields: Md Inc Refresh_87 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:87|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:87|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:87|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:87|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:87|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|2:87|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|2:87|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:87|0:|11:MDEntrySize")

  -- Quote Condition: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|2:87|0:|14:QuoteCondition")

  -- Trading Session Id: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_87 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_87_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_87 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_87
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_87 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_87_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_87_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_87 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_35 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35_md_entries = {}

-- Dissect Fields: Md Inc Refresh_35 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:35|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:35|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:35|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_delta.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:35|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:35|0:|6:RptSeq")

  -- Quote Condition: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:35|0:|14:QuoteCondition")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|2:35|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|2:35|0:|14:NumberOfOrders")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|2:35|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:35|0:|11:MDEntrySize")

  -- Trading Session Id: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_35 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_35_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_35 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_35
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_35 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_35_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_35_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_35 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_86 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86_md_entries = {}

-- Dissect Fields: Md Inc Refresh_86 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:86|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:86|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:86|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:86|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:86|0:|6:RptSeq")

  -- Quote Condition: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:86|0:|14:QuoteCondition")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|2:86|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_copy_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|2:86|0:|14:NumberOfOrders")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|2:86|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:86|0:|11:MDEntrySize")

  -- Trading Session Id: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_86 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_86_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_86 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_86
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_86 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_86_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_86_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_86 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_59 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59_md_entries = {}

-- Dissect Fields: Md Inc Refresh_59 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:59|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:59|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:59|0:|11:MDEntryType")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:59|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:59|0:|6:RptSeq")

  -- Quote Condition: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:59|0:|14:QuoteCondition")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|2:59|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|2:59|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:59|0:|11:MDEntrySize")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 10], nil }, state, { nil, "10:dictionary|2:59|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_59 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_59_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_59 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_59
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_59 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_59_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_59_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_59 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_71 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71_md_entries = {}

-- Dissect Fields: Md Inc Refresh_71 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:71|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:71|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:71|0:|11:MDEntryType")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:71|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:71|0:|6:RptSeq")

  -- Quote Condition: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:71|0:|14:QuoteCondition")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|2:71|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|2:71|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:71|0:|11:MDEntrySize")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 10], nil }, state, { nil, "10:dictionary|2:71|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_71 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_71_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_71 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_71
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_71 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_71_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_71_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_71 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_104 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104_md_entries = {}

-- Dissect Fields: Md Inc Refresh_104 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:104|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:104|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:104|0:|11:MDEntryType")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:104|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:104|0:|6:RptSeq")

  -- Quote Condition: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|3:104|0:|14:QuoteCondition")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 7], nil }, state, { nil, "10:dictionary|3:104|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|3:104|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:104|0:|11:MDEntrySize")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 11], nil }, state, { nil, "10:dictionary|3:104|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_104 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_104_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_104 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_104
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_104 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_104_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_104_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_104 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_68 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68_md_entries = {}

-- Dissect Fields: Md Inc Refresh_68 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_0.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:68|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:68|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 4], nil }, state, { nil, "10:dictionary|2:68|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:68|0:|11:MDEntrySize")

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|2:68|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:68|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|2:68|0:|11:MDEntryTime")

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_68 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_68_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_68 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_68
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_68 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_68_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_68_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_68 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_84 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84_md_entries = {}

-- Dissect Fields: Md Inc Refresh_84 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_default_0.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Md Entry Type: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:84|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:84|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 4], nil }, state, { nil, "10:dictionary|2:84|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:84|0:|11:MDEntrySize")

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|2:84|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:84|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|2:84|0:|11:MDEntryTime")

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_84 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_84_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_84 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_84
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_84 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_84_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_84_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_84 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_32 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32_md_entries = {}

-- Dissect Fields: Md Inc Refresh_32 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:32|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:32|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:32|0:|11:MDEntryType")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:32|0:|11:MDEntryTime")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:32|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:32|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|2:32|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:32|0:|11:MDEntrySize")

  -- Number Of Orders: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:32|0:|14:NumberOfOrders")

  -- Trading Session Id: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_32 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_32_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_32 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_32
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_32 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_32_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_32_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_32 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_83 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83_md_entries = {}

-- Dissect Fields: Md Inc Refresh_83 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:83|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:83|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:83|0:|11:MDEntryType")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:83|0:|11:MDEntryTime")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:83|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:83|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|2:83|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:83|0:|11:MDEntrySize")

  -- Number Of Orders: uInt32, Delta
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_delta_required.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:83|0:|14:NumberOfOrders")

  -- Trading Session Id: string, Default
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_83 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_83_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_83 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_83
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_83 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_83_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_83_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_83 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_69 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69_md_entries = {}

-- Dissect Fields: Md Inc Refresh_69 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:69|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:69|0:|11:MDEntryType")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:69|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:69|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 5], nil }, state, { nil, "10:dictionary|2:69|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 6], state, "10:dictionary|2:69|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:69|0:|11:MDEntrySize")

  -- Number Of Orders: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_delta_optional.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:69|0:|14:NumberOfOrders")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 8], nil }, state, { nil, "10:dictionary|2:69|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_69 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_69_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_69 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_69
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_69 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_69_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_69_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_69 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_103 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103_md_entries = {}

-- Dissect Fields: Md Inc Refresh_103 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:103|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:103|0:|11:MDEntryType")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:103|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|3:103|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:103|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|3:103|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:103|0:|11:MDEntrySize")

  -- Number Of Orders: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_delta_optional.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:103|0:|14:NumberOfOrders")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 9], nil }, state, { nil, "10:dictionary|3:103|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Trade Volume: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_default.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Trade Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_default.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 13], state, nil)

  -- Aggressor Side: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.aggressor_side.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Match Event Indicator: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.match_event_indicator.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_103 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_103_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_103 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_103
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_103 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_103_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_103_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_103 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_77 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77_md_entries = {}

-- Dissect Fields: Md Inc Refresh_77 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_required_u_int32_field_0.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:77|0:|14:MDUpdateAction")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:77|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:77|0:|6:RptSeq")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_b.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:77|0:|11:MDEntryType")

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 4], nil }, state, { nil, "10:dictionary|2:77|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:77|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:77|0:|11:MDEntryTime")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Fixing Bracket: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fixing_bracket.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|2:77|0:|13:FixingBracket")

  return index
end

-- Dissect: Md Inc Refresh_77 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_77_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_77 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_77
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_77 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_8.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_77_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_77_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_77 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_97 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97_md_entries = {}

-- Dissect Fields: Md Inc Refresh_97 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_required_u_int32_field_0.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:97|0:|14:MDUpdateAction")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|2:97|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:97|0:|6:RptSeq")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_b.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|2:97|0:|11:MDEntryType")

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 4], nil }, state, { nil, "10:dictionary|2:97|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:97|0:|11:MDEntrySize")

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:97|0:|11:MDEntryTime")

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 6], state, nil)

  -- Fixing Bracket: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fixing_bracket.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|2:97|0:|13:FixingBracket")

  return index
end

-- Dissect: Md Inc Refresh_97 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_97_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_97 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_97
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_97 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_97_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_97_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_97 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_108 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108_md_entries = {}

-- Dissect Fields: Md Inc Refresh_108 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:108|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Increment, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_1.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:108|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:108|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:108|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:108|0:|6:RptSeq")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:108|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|3:108|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:108|0:|11:MDEntrySize")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 10], nil }, state, { nil, "10:dictionary|3:108|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_108 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_108_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_108 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_108
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_108 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_108_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_108_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_108 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_109 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109_md_entries = {}

-- Dissect Fields: Md Inc Refresh_109 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:109|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Increment, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:109|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:109|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int32.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:109|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:109|0:|6:RptSeq")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Md Entry Px: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:109|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|3:109|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:109|0:|11:MDEntrySize")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 10], nil }, state, { nil, "10:dictionary|3:109|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 11], state, nil)

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_109 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_109_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_109 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_109
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_109 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sender Comp Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sender_comp_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_109_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_109_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_109 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_110 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110_md_entries = {}

-- Dissect Fields: Md Inc Refresh_110 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:110|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Increment, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:110|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:110|0:|11:MDEntryType")

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int64.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:110|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:110|0:|6:RptSeq")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:110|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Type: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|3:110|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:110|0:|11:MDEntrySize")

  -- Md Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|3:110|0:|11:MDEntryDate")

  -- Md Stream Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_stream_id_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 10], state, nil)

  -- Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_copy.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "10:dictionary|3:110|0:|8:Currency")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 13], nil }, state, { nil, "10:dictionary|3:110|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:110|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 15], state, nil)

  -- Trade Condition: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_id.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Md Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Md Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Md Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- Settl Type: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_type_default.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Settle Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 25], nil }, state, { nil, "10:dictionary|3:110|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 26], nil }, state, { nil, "10:dictionary|3:110|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Ref Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_ref_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:110|0:|33:decimal-mantissaTradingRefPrice" })

  return index
end

-- Dissect: Md Inc Refresh_110 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_110_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_110 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_110
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_110 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_110_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_110_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_110 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_123 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_123_md_entries = {}

-- Dissect Fields: Md Inc Refresh_123 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_123_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:123|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Increment, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:123|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:123|0:|11:MDEntryType")

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int64.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:123|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:123|0:|6:RptSeq")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:123|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Type: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|3:123|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:123|0:|11:MDEntrySize")

  -- Md Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|3:123|0:|11:MDEntryDate")

  -- Md Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "10:dictionary|3:123|0:|12:MDInsertDate")

  -- Md Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "10:dictionary|3:123|0:|12:MDInsertTime")

  -- Md Stream Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_stream_id_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_copy.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "10:dictionary|3:123|0:|8:Currency")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 15], nil }, state, { nil, "10:dictionary|3:123|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:123|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Trade Condition: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_id.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Trade Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Md Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- Md Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Md Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Settl Type: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_type_default.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Settle Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 26], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:123|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 28], nil }, state, { nil, "10:dictionary|3:123|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Ref Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_ref_price.dissect(buffer, index, packet, parent, { presence_map[base + 29], nil }, state, { nil, "10:dictionary|3:123|0:|33:decimal-mantissaTradingRefPrice" })

  return index
end

-- Dissect: Md Inc Refresh_123 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_123_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_123_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_123_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_123 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_123 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_123.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_123

-- Dissect Fields: Md Inc Refresh_123 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_123.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_123_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_123_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_123_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_123 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_123.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_123.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_126 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_126_md_entries = {}

-- Dissect Fields: Md Inc Refresh_126 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_126_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_1.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:126|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Increment, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_increment_optional_u_int32_field.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:126|0:|12:MDPriceLevel")

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_0.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|3:126|0:|11:MDEntryType")

  -- Symbol: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_optional.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id Source: uInt32, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int64.dissect(buffer, index, packet, parent, presence_map[base + 3], state, "10:dictionary|3:126|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_required.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|3:126|0:|6:RptSeq")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 5], state, nil)

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|3:126|0:|27:decimal-mantissaMDEntryPx" })

  -- Number Of Orders: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_default.dissect(buffer, index, packet, parent, presence_map[base + 7], state, nil)

  -- Price Type: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 8], state, "10:dictionary|3:126|0:|11:MDEntryTime")

  -- Md Entry Size: int64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:126|0:|11:MDEntrySize")

  -- Md Entry Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_date.dissect(buffer, index, packet, parent, presence_map[base + 9], state, "10:dictionary|3:126|0:|11:MDEntryDate")

  -- Md Insert Date: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_date.dissect(buffer, index, packet, parent, presence_map[base + 10], state, "10:dictionary|3:126|0:|12:MDInsertDate")

  -- Md Insert Time: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_insert_time.dissect(buffer, index, packet, parent, presence_map[base + 11], state, "10:dictionary|3:126|0:|12:MDInsertTime")

  -- Md Stream Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_stream_id_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 12], state, nil)

  -- Currency: string, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_copy.dissect(buffer, index, packet, parent, presence_map[base + 13], state, "10:dictionary|3:126|0:|8:Currency")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 14], state, nil)

  -- Net Chg Prev Day: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.net_chg_prev_day.dissect(buffer, index, packet, parent, { presence_map[base + 15], nil }, state, { nil, "10:dictionary|3:126|0:|31:decimal-mantissaNetChgPrevDay" })

  -- Seller Days: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.seller_days.dissect(buffer, index, packet, parent, presence_map[base + 16], state, nil)

  -- Trade Volume: uInt64, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_volume_delta_optional_u_int64.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|3:126|0:|11:TradeVolume")

  -- Tick Direction: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_direction.dissect(buffer, index, packet, parent, presence_map[base + 17], state, nil)

  -- Trade Condition: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_condition_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Open Close Settle Flag: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.open_close_settle_flag_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Order Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.order_id.dissect(buffer, index, packet, parent, presence_map[base + 18], state, nil)

  -- Trade Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_id.dissect(buffer, index, packet, parent, presence_map[base + 19], state, nil)

  -- Md Entry Buyer: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_buyer.dissect(buffer, index, packet, parent, presence_map[base + 20], state, nil)

  -- Md Entry Seller: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_seller.dissect(buffer, index, packet, parent, presence_map[base + 21], state, nil)

  -- Md Entry Position No: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_position_no.dissect(buffer, index, packet, parent, presence_map[base + 22], state, nil)

  -- Settl Type: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_type_default.dissect(buffer, index, packet, parent, presence_map[base + 23], state, nil)

  -- Settl Date: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_default.dissect(buffer, index, packet, parent, presence_map[base + 24], state, nil)

  -- Settle Price Type: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settle_price_type_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Price Band Type: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_band_type.dissect(buffer, index, packet, parent, presence_map[base + 25], state, nil)

  -- Price Limit Type: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.price_limit_type.dissect(buffer, index, packet, parent, presence_map[base + 26], state, nil)

  -- Low Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.low_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 27], nil }, state, { nil, "10:dictionary|3:126|0:|31:decimal-mantissaLowLimitPrice" })

  -- High Limit Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.high_limit_price.dissect(buffer, index, packet, parent, { presence_map[base + 28], nil }, state, { nil, "10:dictionary|3:126|0:|32:decimal-mantissaHighLimitPrice" })

  -- Trading Ref Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_ref_price.dissect(buffer, index, packet, parent, { presence_map[base + 29], nil }, state, { nil, "10:dictionary|3:126|0:|33:decimal-mantissaTradingRefPrice" })

  return index
end

-- Dissect: Md Inc Refresh_126 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_126_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_126_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_126_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_126 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_126 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_126.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_126

-- Dissect Fields: Md Inc Refresh_126 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_126.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Trade Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trade_date_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_126_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_126_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_126_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_126 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_126.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_126.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Inc Refresh_81 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81_md_entries = {}

-- Dissect Fields: Md Inc Refresh_81 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81_md_entries.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Update Action: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_update_action_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|2:81|0:|14:MDUpdateAction")

  -- Md Price Level: uInt32, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_price_level_default.dissect(buffer, index, packet, parent, presence_map[base + 1], state, nil)

  -- Md Entry Type: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_type_copy_j.dissect(buffer, index, packet, parent, presence_map[base + 2], state, "10:dictionary|2:81|0:|11:MDEntryType")

  -- Security Id Source: uInt32, Constant, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_optional.dissect(buffer, index, packet, parent, presence_map[base + 3], state, nil)

  -- Security Id: uInt32, Copy, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_optional.dissect(buffer, index, packet, parent, presence_map[base + 4], state, "10:dictionary|2:81|0:|10:SecurityID")

  -- Rpt Seq: uInt32, Increment, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.rpt_seq_increment_optional.dissect(buffer, index, packet, parent, presence_map[base + 5], state, "10:dictionary|2:81|0:|6:RptSeq")

  -- Md Entry Px: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_px_sent_optional.dissect(buffer, index, packet, parent, { presence_map[base + 6], nil }, state, { nil, "10:dictionary|2:81|0:|27:decimal-mantissaMDEntryPx" })

  -- Md Entry Time: uInt32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_time_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 7], state, "10:dictionary|2:81|0:|11:MDEntryTime")

  -- Md Entry Size: int32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_entry_size_delta_optional_int32.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:81|0:|11:MDEntrySize")

  -- Quote Condition: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.quote_condition_default_optional_string_field.dissect(buffer, index, packet, parent, presence_map[base + 8], state, nil)

  -- Number Of Orders: uInt32, Delta, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.number_of_orders_delta_optional.dissect(buffer, index, packet, parent, nil, state, "10:dictionary|2:81|0:|14:NumberOfOrders")

  -- Trading Session Id: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.trading_session_id_default_optional.dissect(buffer, index, packet, parent, presence_map[base + 9], state, nil)

  return index
end

-- Dissect: Md Inc Refresh_81 Md Entries
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81_md_entries.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_81_md_entries, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81_md_entries.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Inc Refresh_81 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_inc_refresh_81
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_pos_dup_flag,
}

-- Dissect Fields: Md Inc Refresh_81 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_x.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Pos Dup Flag: string, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.pos_dup_flag.dissect(buffer, index, packet, parent, presence_map[base + 0], state, nil)

  -- No Md Entries: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_entries.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Entries: No Md Entries entries
  local count = value or 0
  for md_inc_refresh_81_md_entries_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81_md_entries.dissect(buffer, index, packet, parent, presence_map, base, state, md_inc_refresh_81_md_entries_index)
  end

  return index
end

-- Dissect: Md Inc Refresh_81 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Security List_111 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111_legs = {}

-- Dissect Fields: Md Security List_111 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111_legs.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Leg Symbol: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_symbol_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Id: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Id Source: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_id_source_constant_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Ratio Qty: int32, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_ratio_qty_copy_required_int32.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:111|0:|11:LegRatioQty")

  -- Leg Type: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Buyers Perspective: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.buyers_perspective.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Leg Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.leg_security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security List_111 Legs
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111_legs.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_list_111_legs, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111_legs.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Security List_111 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111_underlyings = {}

-- Dissect Fields: Md Security List_111 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111_underlyings.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Underlying Symbol: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_symbol_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Id: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Id Source: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_id_source_constant_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlying Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.underlying_security_exchange.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Security List_111 Underlyings
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111_underlyings.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_list_111_underlyings, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111_underlyings.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Security Alt I Ds
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_i_ds = {}

-- Dissect Fields: Security Alt I Ds
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_i_ds.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Security Alt Id: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt Id Source: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_id_source_copy.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:111|0:|19:SecurityAltIDSource")

  return index
end

-- Dissect: Security Alt I Ds
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_i_ds.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.security_alt_i_ds, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_i_ds.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.feed_types = {}

-- Dissect Fields: Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.feed_types.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Md Feed Type: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_feed_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Market Depth: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.market_depth_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Feed Types
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.feed_types.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.feed_types, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.feed_types.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Appl Ids
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ids = {}

-- Dissect Fields: Appl Ids
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ids.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Appl Id: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_id_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Md Feed Types: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_md_feed_types.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Feed Types: No Md Feed Types entries
  local count = value or 0
  for feed_types_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.feed_types.dissect(buffer, index, packet, parent, presence_map, base, state, feed_types_index)
  end

  return index
end

-- Dissect: Appl Ids
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ids.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.appl_ids, buffer(offset, 0))
  local index = offset

  -- an entry of its own carries which repetition it is
  if iteration ~= nil then
    subtree:append_text(" "..iteration)
  end

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ids.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Related Symbols
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.related_symbols = {}

-- Dissect Fields: Related Symbols
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.related_symbols.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Symbol: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.symbol_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Id: uInt64, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_copy_required_u_int64.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:111|0:|10:SecurityID")

  -- Security Id Source: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_id_source_constant_required_string.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Exchange: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_exchange_constant.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Appl Ids: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_appl_ids.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ids: No Appl Ids entries
  local count = value or 0
  for appl_ids_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ids.dissect(buffer, index, packet, parent, presence_map, base, state, appl_ids_index)
  end

  -- No Security Alt Id: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_security_alt_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Alt I Ds: No Security Alt Id entries
  local count = value or 0
  for security_alt_i_ds_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_alt_i_ds.dissect(buffer, index, packet, parent, presence_map, base, state, security_alt_i_ds_index)
  end

  -- No Underlyings: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_underlyings.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Underlyings: No Underlyings entries
  local count = value or 0
  for md_security_list_111_underlyings_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111_underlyings.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_111_underlyings_index)
  end

  -- No Legs: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_legs.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Legs: No Legs entries
  local count = value or 0
  for md_security_list_111_legs_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111_legs.dissect(buffer, index, packet, parent, presence_map, base, state, md_security_list_111_legs_index)
  end

  -- Security Update Action: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_update_action_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Round Lot: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.round_lot.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Trade Vol: uInt64, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_trade_vol.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Price Increment: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_price_increment_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 1], nil }, state, { "10:dictionary|3:111|0:|35:decimal-exponentMinPriceIncrement", "10:dictionary|3:111|0:|35:decimal-mantissaMinPriceIncrement" })

  -- Tick Size Denominator: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tick_size_denominator.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Min Order Qty: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.min_order_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Max Order Qty: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.max_order_qty.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Instrument Id: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.instrument_id.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Currency: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.currency_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Currency: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_currency_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Type: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_type.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Sub Type: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_sub_type_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Asset: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.asset.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Desc: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_desc_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_date_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Maturity Month Year: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.maturity_month_year_sent_optional_u_int32.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Strike Price: decimal, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_price.dissect(buffer, index, packet, parent, { presence_map[base + 2], nil }, state, { "10:dictionary|3:111|0:|29:decimal-exponentStrikePrice", "10:dictionary|3:111|0:|29:decimal-mantissaStrikePrice" })

  -- Strike Currency: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.strike_currency.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Contract Multiplier: decimal, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_multiplier_sent_required.dissect(buffer, index, packet, parent, { presence_map[base + 3], nil }, state, { "10:dictionary|3:111|0:|36:decimal-exponentContractMultiplier", "10:dictionary|3:111|0:|36:decimal-mantissaContractMultiplier" })

  -- Contract Settl Month: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.contract_settl_month.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Cfi Code: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.cfi_code_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Country Of Issue: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.country_of_issue.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Issue Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.issue_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Dated Date: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.dated_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Start Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.start_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- End Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.end_date.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Type: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_type_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Settl Date: uInt32, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.settl_date_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Security Validity Timestamp: uInt64, Default, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_validity_timestamp.dissect(buffer, index, packet, parent, presence_map[base + 4], state, nil)

  -- Security Group: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.security_group_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Related Symbols
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.related_symbols.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.related_symbols, buffer(offset, 0))
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

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.related_symbols.fields(buffer, index, packet, subtree, presence_map, base, state)
  subtree:set_len(index - offset)

  return index
end

-- Md Security List_111 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_security_list_111

-- Dissect Fields: Md Security List_111 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_y_2.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Tot No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.tot_no_related_sym.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Last Fragment: string, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.last_fragment.dissect(buffer, index, packet, parent, nil, state, nil)

  -- No Related Sym: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.no_related_sym_sent_required.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Related Symbols: No Related Sym entries
  local count = value or 0
  for related_symbols_index = 1, count do
    index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.related_symbols.dissect(buffer, index, packet, parent, presence_map, base, state, related_symbols_index)
  end

  return index
end

-- Dissect: Md Security List_111 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end

-- Md Tcp Request Reject_117 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_tcp_request_reject_117 = {}

b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_tcp_request_reject_117.node = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.md_tcp_request_reject_117
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_tcp_request_reject_117.presence = {
  [2] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_md_req_id,
  [3] = omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_md_req_rej_reason,
}

-- Dissect Fields: Md Tcp Request Reject_117 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_tcp_request_reject_117.fields = function(buffer, offset, packet, parent, presence_map, base, state)
  local index = offset
  local value = nil

  -- Message Type: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.message_type_constant_y_1.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Msg Seq Num: uInt32, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.msg_seq_num.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Sending Time: uInt64, sent
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.sending_time.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Appl Ver Id: string, Constant
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.appl_ver_id_constant_required_string_field_9.dissect(buffer, index, packet, parent, nil, state, nil)

  -- Md Req Id: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_req_id_copy_required.dissect(buffer, index, packet, parent, presence_map[base + 0], state, "10:dictionary|3:117|0:|7:MDReqID")

  -- Md Req Rej Reason: string, Copy
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_req_rej_reason.dissect(buffer, index, packet, parent, presence_map[base + 1], state, "10:dictionary|3:117|0:|14:MDReqRejReason")

  -- Text: string, sent, optional
  index, value = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.text_sent.dissect(buffer, index, packet, parent, nil, state, nil)

  return index
end

-- Dissect: Md Tcp Request Reject_117 Message
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_tcp_request_reject_117.dissect = function(buffer, offset, packet, parent, presence_map, base, state, iteration)
  local subtree = parent
  local index = offset

  index = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_tcp_request_reject_117.fields(buffer, index, packet, subtree, presence_map, base, state)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- B3 B3Derivatives UmdfNtp Fast 5.0.1.2018 Message Dispatch
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.templates = {
  [117] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_tcp_request_reject_117,
  [111] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_list_111,
  [81] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_81,
  [126] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_126,
  [123] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_123,
  [110] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_110,
  [109] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_109,
  [108] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_108,
  [97] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_97,
  [77] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_77,
  [103] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_103,
  [69] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_69,
  [83] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_83,
  [32] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_32,
  [84] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_84,
  [68] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_68,
  [104] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_104,
  [71] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_71,
  [59] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_59,
  [86] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_86,
  [35] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_35,
  [87] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_87,
  [36] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_36,
  [88] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_88,
  [72] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_72,
  [105] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_105,
  [67] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_67,
  [90] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_90,
  [39] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_39,
  [91] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_91,
  [70] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_70,
  [93] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_93,
  [41] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_41,
  [106] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_106,
  [73] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_73,
  [95] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_95,
  [43] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_43,
  [96] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_96,
  [44] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_44,
  [107] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_107,
  [74] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_inc_refresh_74,
  [79] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_79,
  [78] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_78,
  [52] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_definition_52,
  [98] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_98,
  [54] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_quote_request_54,
  [125] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_125,
  [113] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_113,
  [102] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_102,
  [99] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_99,
  [76] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status_76,
  [48] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_security_status,
  [127] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_127,
  [124] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_124,
  [112] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_112,
  [80] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_80,
  [53] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_snapshot_full_refresh_53,
  [120] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_120,
  [100] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message_100,
  [49] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_news_message,
  [101] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat_101,
  [50] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_heartbeat,
  [118] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_118,
  [3] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon_3,
  [1] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logon,
  [4] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_4,
  [119] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout_119,
  [2] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_logout,
  [122] = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.md_sequence_reset,
}

-- B3 B3Derivatives UmdfNtp Fast 5.0.1.2018 Template Names
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.template_id = {}

-- Display: Template Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.template_id.display = function(value)
  if value == 117 then
    return "Template Id: MDTcpRequestReject_117 (117)"
  end
  if value == 111 then
    return "Template Id: MDSecurityList_111 (111)"
  end
  if value == 81 then
    return "Template Id: MDIncRefresh_81 (81)"
  end
  if value == 126 then
    return "Template Id: MDIncRefresh_126 (126)"
  end
  if value == 123 then
    return "Template Id: MDIncRefresh_123 (123)"
  end
  if value == 110 then
    return "Template Id: MDIncRefresh_110 (110)"
  end
  if value == 109 then
    return "Template Id: MDIncRefresh_109 (109)"
  end
  if value == 108 then
    return "Template Id: MDIncRefresh_108 (108)"
  end
  if value == 97 then
    return "Template Id: MDIncRefresh_97 (97)"
  end
  if value == 77 then
    return "Template Id: MDIncRefresh_77 (77)"
  end
  if value == 103 then
    return "Template Id: MDIncRefresh_103 (103)"
  end
  if value == 69 then
    return "Template Id: MDIncRefresh_69 (69)"
  end
  if value == 83 then
    return "Template Id: MDIncRefresh_83 (83)"
  end
  if value == 32 then
    return "Template Id: MDIncRefresh_32 (32)"
  end
  if value == 84 then
    return "Template Id: MDIncRefresh_84 (84)"
  end
  if value == 68 then
    return "Template Id: MDIncRefresh_68 (68)"
  end
  if value == 104 then
    return "Template Id: MDIncRefresh_104 (104)"
  end
  if value == 71 then
    return "Template Id: MDIncRefresh_71 (71)"
  end
  if value == 59 then
    return "Template Id: MDIncRefresh_59 (59)"
  end
  if value == 86 then
    return "Template Id: MDIncRefresh_86 (86)"
  end
  if value == 35 then
    return "Template Id: MDIncRefresh_35 (35)"
  end
  if value == 87 then
    return "Template Id: MDIncRefresh_87 (87)"
  end
  if value == 36 then
    return "Template Id: MDIncRefresh_36 (36)"
  end
  if value == 88 then
    return "Template Id: MDIncRefresh_88 (88)"
  end
  if value == 72 then
    return "Template Id: MDIncRefresh_72 (72)"
  end
  if value == 105 then
    return "Template Id: MDIncRefresh_105 (105)"
  end
  if value == 67 then
    return "Template Id: MDIncRefresh_67 (67)"
  end
  if value == 90 then
    return "Template Id: MDIncRefresh_90 (90)"
  end
  if value == 39 then
    return "Template Id: MDIncRefresh_39 (39)"
  end
  if value == 91 then
    return "Template Id: MDIncRefresh_91 (91)"
  end
  if value == 70 then
    return "Template Id: MDIncRefresh_70 (70)"
  end
  if value == 93 then
    return "Template Id: MDIncRefresh_93 (93)"
  end
  if value == 41 then
    return "Template Id: MDIncRefresh_41 (41)"
  end
  if value == 106 then
    return "Template Id: MDIncRefresh_106 (106)"
  end
  if value == 73 then
    return "Template Id: MDIncRefresh_73 (73)"
  end
  if value == 95 then
    return "Template Id: MDIncRefresh_95 (95)"
  end
  if value == 43 then
    return "Template Id: MDIncRefresh_43 (43)"
  end
  if value == 96 then
    return "Template Id: MDIncRefresh_96 (96)"
  end
  if value == 44 then
    return "Template Id: MDIncRefresh_44 (44)"
  end
  if value == 107 then
    return "Template Id: MDIncRefresh_107 (107)"
  end
  if value == 74 then
    return "Template Id: MDIncRefresh_74 (74)"
  end
  if value == 79 then
    return "Template Id: MDSecurityDefinition_79 (79)"
  end
  if value == 78 then
    return "Template Id: MDSecurityDefinition_78 (78)"
  end
  if value == 52 then
    return "Template Id: MDSecurityDefinition_52 (52)"
  end
  if value == 98 then
    return "Template Id: MDQuoteRequest_98 (98)"
  end
  if value == 54 then
    return "Template Id: MDQuoteRequest_54 (54)"
  end
  if value == 125 then
    return "Template Id: MDSecurityStatus_125 (125)"
  end
  if value == 113 then
    return "Template Id: MDSecurityStatus_113 (113)"
  end
  if value == 102 then
    return "Template Id: MDSecurityStatus_102 (102)"
  end
  if value == 99 then
    return "Template Id: MDSecurityStatus_99 (99)"
  end
  if value == 76 then
    return "Template Id: MDSecurityStatus_76 (76)"
  end
  if value == 48 then
    return "Template Id: MDSecurityStatus (48)"
  end
  if value == 127 then
    return "Template Id: MDSnapshotFullRefresh_127 (127)"
  end
  if value == 124 then
    return "Template Id: MDSnapshotFullRefresh_124 (124)"
  end
  if value == 112 then
    return "Template Id: MDSnapshotFullRefresh_112 (112)"
  end
  if value == 80 then
    return "Template Id: MDSnapshotFullRefresh_80 (80)"
  end
  if value == 53 then
    return "Template Id: MDSnapshotFullRefresh_53 (53)"
  end
  if value == 120 then
    return "Template Id: MDNewsMessage_120 (120)"
  end
  if value == 100 then
    return "Template Id: MDNewsMessage_100 (100)"
  end
  if value == 49 then
    return "Template Id: MDNewsMessage (49)"
  end
  if value == 101 then
    return "Template Id: MDHeartbeat_101 (101)"
  end
  if value == 50 then
    return "Template Id: MDHeartbeat (50)"
  end
  if value == 118 then
    return "Template Id: MDLogon_118 (118)"
  end
  if value == 3 then
    return "Template Id: MDLogon_3 (3)"
  end
  if value == 1 then
    return "Template Id: MDLogon (1)"
  end
  if value == 4 then
    return "Template Id: MDLogout_4 (4)"
  end
  if value == 119 then
    return "Template Id: MDLogout_119 (119)"
  end
  if value == 2 then
    return "Template Id: MDLogout (2)"
  end
  if value == 122 then
    return "Template Id: MDSequenceReset (122)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Name: Template Id
b3_b3derivatives_umdfntp_fast_v5_0_1_2018.template_id.name = function(value)
  if value == 117 then
    return "MDTcpRequestReject_117"
  end
  if value == 111 then
    return "MDSecurityList_111"
  end
  if value == 81 then
    return "MDIncRefresh_81"
  end
  if value == 126 then
    return "MDIncRefresh_126"
  end
  if value == 123 then
    return "MDIncRefresh_123"
  end
  if value == 110 then
    return "MDIncRefresh_110"
  end
  if value == 109 then
    return "MDIncRefresh_109"
  end
  if value == 108 then
    return "MDIncRefresh_108"
  end
  if value == 97 then
    return "MDIncRefresh_97"
  end
  if value == 77 then
    return "MDIncRefresh_77"
  end
  if value == 103 then
    return "MDIncRefresh_103"
  end
  if value == 69 then
    return "MDIncRefresh_69"
  end
  if value == 83 then
    return "MDIncRefresh_83"
  end
  if value == 32 then
    return "MDIncRefresh_32"
  end
  if value == 84 then
    return "MDIncRefresh_84"
  end
  if value == 68 then
    return "MDIncRefresh_68"
  end
  if value == 104 then
    return "MDIncRefresh_104"
  end
  if value == 71 then
    return "MDIncRefresh_71"
  end
  if value == 59 then
    return "MDIncRefresh_59"
  end
  if value == 86 then
    return "MDIncRefresh_86"
  end
  if value == 35 then
    return "MDIncRefresh_35"
  end
  if value == 87 then
    return "MDIncRefresh_87"
  end
  if value == 36 then
    return "MDIncRefresh_36"
  end
  if value == 88 then
    return "MDIncRefresh_88"
  end
  if value == 72 then
    return "MDIncRefresh_72"
  end
  if value == 105 then
    return "MDIncRefresh_105"
  end
  if value == 67 then
    return "MDIncRefresh_67"
  end
  if value == 90 then
    return "MDIncRefresh_90"
  end
  if value == 39 then
    return "MDIncRefresh_39"
  end
  if value == 91 then
    return "MDIncRefresh_91"
  end
  if value == 70 then
    return "MDIncRefresh_70"
  end
  if value == 93 then
    return "MDIncRefresh_93"
  end
  if value == 41 then
    return "MDIncRefresh_41"
  end
  if value == 106 then
    return "MDIncRefresh_106"
  end
  if value == 73 then
    return "MDIncRefresh_73"
  end
  if value == 95 then
    return "MDIncRefresh_95"
  end
  if value == 43 then
    return "MDIncRefresh_43"
  end
  if value == 96 then
    return "MDIncRefresh_96"
  end
  if value == 44 then
    return "MDIncRefresh_44"
  end
  if value == 107 then
    return "MDIncRefresh_107"
  end
  if value == 74 then
    return "MDIncRefresh_74"
  end
  if value == 79 then
    return "MDSecurityDefinition_79"
  end
  if value == 78 then
    return "MDSecurityDefinition_78"
  end
  if value == 52 then
    return "MDSecurityDefinition_52"
  end
  if value == 98 then
    return "MDQuoteRequest_98"
  end
  if value == 54 then
    return "MDQuoteRequest_54"
  end
  if value == 125 then
    return "MDSecurityStatus_125"
  end
  if value == 113 then
    return "MDSecurityStatus_113"
  end
  if value == 102 then
    return "MDSecurityStatus_102"
  end
  if value == 99 then
    return "MDSecurityStatus_99"
  end
  if value == 76 then
    return "MDSecurityStatus_76"
  end
  if value == 48 then
    return "MDSecurityStatus"
  end
  if value == 127 then
    return "MDSnapshotFullRefresh_127"
  end
  if value == 124 then
    return "MDSnapshotFullRefresh_124"
  end
  if value == 112 then
    return "MDSnapshotFullRefresh_112"
  end
  if value == 80 then
    return "MDSnapshotFullRefresh_80"
  end
  if value == 53 then
    return "MDSnapshotFullRefresh_53"
  end
  if value == 120 then
    return "MDNewsMessage_120"
  end
  if value == 100 then
    return "MDNewsMessage_100"
  end
  if value == 49 then
    return "MDNewsMessage"
  end
  if value == 101 then
    return "MDHeartbeat_101"
  end
  if value == 50 then
    return "MDHeartbeat"
  end
  if value == 118 then
    return "MDLogon_118"
  end
  if value == 3 then
    return "MDLogon_3"
  end
  if value == 1 then
    return "MDLogon"
  end
  if value == 4 then
    return "MDLogout_4"
  end
  if value == 119 then
    return "MDLogout_119"
  end
  if value == 2 then
    return "MDLogout"
  end
  if value == 122 then
    return "MDSequenceReset"
  end

  return "Unknown"
end

-- B3 B3Derivatives UmdfNtp Fast 5.0.1.2018 Packet Dissector
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.dissector = function(buffer, packet, parent)
  packet.cols.protocol = "B3 B3Derivatives UmdfNtp Fast 5.0.1.2018"
  local root = parent:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018, buffer(), "B3 B3Derivatives UmdfNtp Fast 5.0.1.2018")
  local state = state_for(packet)
  local offset = 0
  local messages = 0

  while offset < buffer:len() do
    local start = offset

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

    local template = b3_b3derivatives_umdfntp_fast_v5_0_1_2018.templates[template_id]
    local message_tree = nil

    if template ~= nil then
      message_tree = root:add(template.node, buffer(start, 0))
    else
      message_tree = root:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message, buffer(start, 0))
      message_tree:set_text(b3_b3derivatives_umdfntp_fast_v5_0_1_2018.template_id.name(template_id))
    end

    -- the presence map and the template id are the message's own framing
    local header = message_tree:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.message_header, buffer(start, offset - start))
    local named = nil
    if template ~= nil then
      named = template.presence
    end
    add_presence_map(header, buffer(start, mapped - start), omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_map, omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_stop, omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_identified, omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.presence_unused, named)
    header:add(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.fields.template_id, buffer(identified, offset - identified), template_id, b3_b3derivatives_umdfntp_fast_v5_0_1_2018.template_id.display(template_id))

    if template == nil then
      message_tree:add_expert_info(PI_UNDECODED, PI_WARN, "This dissector reads: 117 (MDTcpRequestReject_117), 111 (MDSecurityList_111), 81 (MDIncRefresh_81), 126 (MDIncRefresh_126), 123 (MDIncRefresh_123), 110 (MDIncRefresh_110), 109 (MDIncRefresh_109), 108 (MDIncRefresh_108), 97 (MDIncRefresh_97), 77 (MDIncRefresh_77), 103 (MDIncRefresh_103), 69 (MDIncRefresh_69), 83 (MDIncRefresh_83), 32 (MDIncRefresh_32), 84 (MDIncRefresh_84), 68 (MDIncRefresh_68), 104 (MDIncRefresh_104), 71 (MDIncRefresh_71), 59 (MDIncRefresh_59), 86 (MDIncRefresh_86), 35 (MDIncRefresh_35), 87 (MDIncRefresh_87), 36 (MDIncRefresh_36), 88 (MDIncRefresh_88), 72 (MDIncRefresh_72), 105 (MDIncRefresh_105), 67 (MDIncRefresh_67), 90 (MDIncRefresh_90), 39 (MDIncRefresh_39), 91 (MDIncRefresh_91), 70 (MDIncRefresh_70), 93 (MDIncRefresh_93), 41 (MDIncRefresh_41), 106 (MDIncRefresh_106), 73 (MDIncRefresh_73), 95 (MDIncRefresh_95), 43 (MDIncRefresh_43), 96 (MDIncRefresh_96), 44 (MDIncRefresh_44), 107 (MDIncRefresh_107), 74 (MDIncRefresh_74), 79 (MDSecurityDefinition_79), 78 (MDSecurityDefinition_78), 52 (MDSecurityDefinition_52), 98 (MDQuoteRequest_98), 54 (MDQuoteRequest_54), 125 (MDSecurityStatus_125), 113 (MDSecurityStatus_113), 102 (MDSecurityStatus_102), 99 (MDSecurityStatus_99), 76 (MDSecurityStatus_76), 48 (MDSecurityStatus), 127 (MDSnapshotFullRefresh_127), 124 (MDSnapshotFullRefresh_124), 112 (MDSnapshotFullRefresh_112), 80 (MDSnapshotFullRefresh_80), 53 (MDSnapshotFullRefresh_53), 120 (MDNewsMessage_120), 100 (MDNewsMessage_100), 49 (MDNewsMessage), 101 (MDHeartbeat_101), 50 (MDHeartbeat), 118 (MDLogon_118), 3 (MDLogon_3), 1 (MDLogon), 4 (MDLogout_4), 119 (MDLogout_119), 2 (MDLogout), 122 (MDSequenceReset)")
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
omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018.init = function()
  stream_states = {}
end

-- Register B3 B3Derivatives UmdfNtp Fast 5.0.1.2018 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_b3_b3derivatives_umdfntp_fast_v5_0_1_2018)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Brasil, Bolsa, Balcão
--   Version: v5.0.1.2018
--   Specification: UMDF_FIX-FAST_MarketDataSpecification_v2.1.7.pdf
--
-- Script:
--   Generator: 0.1.0.0
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
