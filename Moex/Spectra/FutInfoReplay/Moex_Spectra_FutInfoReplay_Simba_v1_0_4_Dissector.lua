-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Moex Spectra FutInfoReplay Simba 1.0.4 Protocol
local omi_moex_spectra_futinforeplay_simba_v1_0_4 = Proto("Omi.Moex.Spectra.FutInfoReplay.Simba.v1.0.4", "Moex Spectra FutInfoReplay Simba 1.0.4")

-- Protocol table
local moex_spectra_futinforeplay_simba_v1_0_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Moex Spectra FutInfoReplay Simba 1.0.4 Fields
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.anonymous_trading = ProtoField.new("Anonymous Trading", "moex.spectra.futinforeplay.simba.v1.0.4.anonymoustrading", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000010, "AnonymousTrading")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.block_length = ProtoField.new("Block Length", "moex.spectra.futinforeplay.simba.v1.0.4.blocklength", ftypes.UINT16, nil, nil, nil, "blockLength")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.cfi_code = ProtoField.new("Cfi Code", "moex.spectra.futinforeplay.simba.v1.0.4.cficode", ftypes.STRING, nil, nil, nil, "CFICode")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.collateral = ProtoField.new("Collateral", "moex.spectra.futinforeplay.simba.v1.0.4.collateral", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000040000)
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "moex.spectra.futinforeplay.simba.v1.0.4.contractmultiplier", ftypes.INT32, nil, nil, nil, "ContractMultiplier")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.currency = ProtoField.new("Currency", "moex.spectra.futinforeplay.simba.v1.0.4.currency", ftypes.STRING)
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.day_session = ProtoField.new("Day Session", "moex.spectra.futinforeplay.simba.v1.0.4.daysession", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000040, "DaySession")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.end_of_snapshot = ProtoField.new("End Of Snapshot", "moex.spectra.futinforeplay.simba.v1.0.4.endofsnapshot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "EndOfSnapshot")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.evening_or_morning_session = ProtoField.new("Evening Or Morning Session", "moex.spectra.futinforeplay.simba.v1.0.4.eveningormorningsession", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000001, "EveningOrMorningSession")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.event_date = ProtoField.new("Event Date", "moex.spectra.futinforeplay.simba.v1.0.4.eventdate", ftypes.UINT32, nil, nil, nil, "Date of event")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.event_time = ProtoField.new("Event Time", "moex.spectra.futinforeplay.simba.v1.0.4.eventtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time of event")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.event_time_utc = ProtoField.new("Event Time", "moex.spectra.futinforeplay.simba.v1.0.4.eventtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time of event")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.event_type = ProtoField.new("Event Type", "moex.spectra.futinforeplay.simba.v1.0.4.eventtype", ftypes.INT32, nil, nil, nil, "Code to represent the type of event")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.exchange_trading_session_id_int_32_null_optional = ProtoField.new("Exchange Trading Session Id Int 32 Null Optional", "moex.spectra.futinforeplay.simba.v1.0.4.exchangetradingsessionidint32nulloptional", ftypes.INT32, nil, nil, nil, "ExchangeTradingSessionID")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.flags = ProtoField.new("Flags", "moex.spectra.futinforeplay.simba.v1.0.4.flags", ftypes.STRING, nil, nil, nil, "FlagsSet bit set")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.group_size = ProtoField.new("Group Size", "moex.spectra.futinforeplay.simba.v1.0.4.groupsize", ftypes.STRING, nil, nil, nil, "groupSize")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.high_limit_px = ProtoField.new("High Limit Px", "moex.spectra.futinforeplay.simba.v1.0.4.highlimitpx", ftypes.DOUBLE, nil, nil, nil, "HighLimitPx")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.incremental_packet = ProtoField.new("Incremental Packet", "moex.spectra.futinforeplay.simba.v1.0.4.incrementalpacket", ftypes.UINT16, {[0]="Snapshot Packet", [1]="Incremental Packet"}, base.DEC, 0x0008, "IncrementalPacket")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.initial_margin_on_buy = ProtoField.new("Initial Margin On Buy", "moex.spectra.futinforeplay.simba.v1.0.4.initialmarginonbuy", ftypes.DOUBLE, nil, nil, nil, "InitialMarginOnBuy")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.initial_margin_on_sell = ProtoField.new("Initial Margin On Sell", "moex.spectra.futinforeplay.simba.v1.0.4.initialmarginonsell", ftypes.DOUBLE, nil, nil, nil, "InitialMarginOnSell")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.initial_margin_syntetic = ProtoField.new("Initial Margin Syntetic", "moex.spectra.futinforeplay.simba.v1.0.4.initialmarginsyntetic", ftypes.DOUBLE, nil, nil, nil, "InitialMarginSyntetic")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.instr_attrib_type = ProtoField.new("Instr Attrib Type", "moex.spectra.futinforeplay.simba.v1.0.4.instrattribtype", ftypes.INT32, nil, nil, nil, "Code to represent the type of instrument attribute")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.instr_attrib_value = ProtoField.new("Instr Attrib Value", "moex.spectra.futinforeplay.simba.v1.0.4.instrattribvalue", ftypes.STRING, nil, nil, nil, "Attribute value appropriate to tag 87-InstrAttribType")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.intraday_exercise = ProtoField.new("Intraday Exercise", "moex.spectra.futinforeplay.simba.v1.0.4.intradayexercise", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000080000, "IntradayExercise")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.last_fragment = ProtoField.new("Last Fragment", "moex.spectra.futinforeplay.simba.v1.0.4.lastfragment", ftypes.UINT16, {[0]="Fragment", [1]="Last Fragment"}, base.DEC, 0x0001, "LastFragment")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "moex.spectra.futinforeplay.simba.v1.0.4.legratioqty", ftypes.INT32, nil, nil, nil, "The ratio of quantity for this individual leg relative to the entire multileg security")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.leg_security_id = ProtoField.new("Leg Security Id", "moex.spectra.futinforeplay.simba.v1.0.4.legsecurityid", ftypes.INT32, nil, nil, nil, "Multileg instrument's individual security's SecurityID")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.leg_symbol = ProtoField.new("Leg Symbol", "moex.spectra.futinforeplay.simba.v1.0.4.legsymbol", ftypes.STRING, nil, nil, nil, "Multileg instrument's individual security's Symbol")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.low_limit_px = ProtoField.new("Low Limit Px", "moex.spectra.futinforeplay.simba.v1.0.4.lowlimitpx", ftypes.DOUBLE, nil, nil, nil, "LowLimitPx")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.market_data_packet_header = ProtoField.new("Market Data Packet Header", "moex.spectra.futinforeplay.simba.v1.0.4.marketdatapacketheader", ftypes.STRING, nil, nil, nil, "MarketDataDummyMessage")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.market_depth = ProtoField.new("Market Depth", "moex.spectra.futinforeplay.simba.v1.0.4.marketdepth", ftypes.UINT32, nil, nil, nil, "Order-book depth")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.market_segment_id = ProtoField.new("Market Segment Id", "moex.spectra.futinforeplay.simba.v1.0.4.marketsegmentid", ftypes.STRING, nil, nil, nil, "MarketSegmentID")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.maturity_date = ProtoField.new("Maturity Date", "moex.spectra.futinforeplay.simba.v1.0.4.maturitydate", ftypes.UINT32, nil, nil, nil, "MaturityDate")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.maturity_time = ProtoField.new("Maturity Time", "moex.spectra.futinforeplay.simba.v1.0.4.maturitytime", ftypes.UINT32, nil, nil, nil, "MaturityTime")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.md_book_type = ProtoField.new("Md Book Type", "moex.spectra.futinforeplay.simba.v1.0.4.mdbooktype", ftypes.UINT32, nil, nil, nil, "Order-book type")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.md_feed_type = ProtoField.new("Md Feed Type", "moex.spectra.futinforeplay.simba.v1.0.4.mdfeedtype", ftypes.STRING, nil, nil, nil, "Feed type")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.min_price_increment = ProtoField.new("Min Price Increment", "moex.spectra.futinforeplay.simba.v1.0.4.minpriceincrement", ftypes.DOUBLE, nil, nil, nil, "MinPriceIncrement")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.min_price_increment_amount = ProtoField.new("Min Price Increment Amount", "moex.spectra.futinforeplay.simba.v1.0.4.minpriceincrementamount", ftypes.DOUBLE, nil, nil, nil, "MinPriceIncrementAmount")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.min_price_increment_amount_curr = ProtoField.new("Min Price Increment Amount Curr", "moex.spectra.futinforeplay.simba.v1.0.4.minpriceincrementamountcurr", ftypes.DOUBLE, nil, nil, nil, "MinPriceIncrementAmountCurr")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.msg_flags = ProtoField.new("Msg Flags", "moex.spectra.futinforeplay.simba.v1.0.4.msgflags", ftypes.STRING, nil, nil, nil, "Message flags, least significant bit first, as the schema's MsgFlagsSet declares them")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "moex.spectra.futinforeplay.simba.v1.0.4.msgseqnum", ftypes.UINT32, nil, nil, nil, "MsgSeqNum")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.msg_size = ProtoField.new("Msg Size", "moex.spectra.futinforeplay.simba.v1.0.4.msgsize", ftypes.UINT16, nil, nil, nil, "MsgSize")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.multi_leg = ProtoField.new("Multi Leg", "moex.spectra.futinforeplay.simba.v1.0.4.multileg", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000100, "MultiLeg")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.new_seq_no = ProtoField.new("New Seq No", "moex.spectra.futinforeplay.simba.v1.0.4.newseqno", ftypes.UINT32, nil, nil, nil, "NewSeqNo")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.num_in_group = ProtoField.new("Num In Group", "moex.spectra.futinforeplay.simba.v1.0.4.numingroup", ftypes.UINT8, nil, nil, nil, "numInGroup")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.poss_dup_flag = ProtoField.new("Poss Dup Flag", "moex.spectra.futinforeplay.simba.v1.0.4.possdupflag", ftypes.UINT16, {[0]="Online Updates", [1]="Full Order Books"}, base.DEC, 0x0010, "PossDupFlag")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.private_trading = ProtoField.new("Private Trading", "moex.spectra.futinforeplay.simba.v1.0.4.privatetrading", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000020, "PrivateTrading")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.quotation_list = ProtoField.new("Quotation List", "moex.spectra.futinforeplay.simba.v1.0.4.quotationlist", ftypes.STRING, nil, nil, nil, "QuotationList data struct")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.quotation_list_data = ProtoField.new("Quotation List Data", "moex.spectra.futinforeplay.simba.v1.0.4.quotationlistdata", ftypes.STRING)
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.quotation_list_length = ProtoField.new("Quotation List Length", "moex.spectra.futinforeplay.simba.v1.0.4.quotationlistlength", ftypes.UINT16)
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.reserved_44 = ProtoField.new("Reserved 44", "moex.spectra.futinforeplay.simba.v1.0.4.reserved44", ftypes.UINT64, nil, base.DEC, UInt64(0xFFF00000, 0xFFFFFFFF), "44 reserved bits")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.reserved_bits = ProtoField.new("Reserved Bits", "moex.spectra.futinforeplay.simba.v1.0.4.reservedbits", ftypes.UINT16, nil, base.DEC, 0xFFE0, "Bits the schema's MsgFlagsSet leaves unused")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.schema_id = ProtoField.new("Schema Id", "moex.spectra.futinforeplay.simba.v1.0.4.schemaid", ftypes.UINT16, nil, nil, nil, "Message schema identifier")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_alt_id = ProtoField.new("Security Alt Id", "moex.spectra.futinforeplay.simba.v1.0.4.securityaltid", ftypes.STRING, nil, nil, nil, "SecurityAltID")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "moex.spectra.futinforeplay.simba.v1.0.4.securityaltidsource", ftypes.STRING, nil, nil, nil, "SecurityAltIDSource")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_events_group = ProtoField.new("Security Definition Message No Events Group", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenoeventsgroup", ftypes.STRING, nil, nil, nil, "NoEvents")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_events_groups = ProtoField.new("Security Definition Message No Events Groups", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenoeventsgroups", ftypes.STRING, nil, nil, nil, "NoEvents Block")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_instr_attrib_group = ProtoField.new("Security Definition Message No Instr Attrib Group", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenoinstrattribgroup", ftypes.STRING, nil, nil, nil, "NoInstrAttrib")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_instr_attrib_groups = ProtoField.new("Security Definition Message No Instr Attrib Groups", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenoinstrattribgroups", ftypes.STRING, nil, nil, nil, "NoInstrAttrib Block")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_legs_group = ProtoField.new("Security Definition Message No Legs Group", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenolegsgroup", ftypes.STRING, nil, nil, nil, "NoLegs")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_legs_groups = ProtoField.new("Security Definition Message No Legs Groups", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenolegsgroups", ftypes.STRING, nil, nil, nil, "NoLegs Block")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_md_feed_types_group = ProtoField.new("Security Definition Message No Md Feed Types Group", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenomdfeedtypesgroup", ftypes.STRING, nil, nil, nil, "NoMDFeedTypes")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_md_feed_types_groups = ProtoField.new("Security Definition Message No Md Feed Types Groups", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenomdfeedtypesgroups", ftypes.STRING, nil, nil, nil, "NoMDFeedTypes Block")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_underlyings_group = ProtoField.new("Security Definition Message No Underlyings Group", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenounderlyingsgroup", ftypes.STRING, nil, nil, nil, "NoUnderlyings")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_underlyings_groups = ProtoField.new("Security Definition Message No Underlyings Groups", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenounderlyingsgroups", ftypes.STRING, nil, nil, nil, "NoUnderlyings Block")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_desc = ProtoField.new("Security Desc", "moex.spectra.futinforeplay.simba.v1.0.4.securitydesc", ftypes.STRING, nil, nil, nil, "SecurityDesc data struct")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_desc_data = ProtoField.new("Security Desc Data", "moex.spectra.futinforeplay.simba.v1.0.4.securitydescdata", ftypes.STRING)
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_desc_length = ProtoField.new("Security Desc Length", "moex.spectra.futinforeplay.simba.v1.0.4.securitydesclength", ftypes.UINT16)
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_id = ProtoField.new("Security Id", "moex.spectra.futinforeplay.simba.v1.0.4.securityid", ftypes.INT32, nil, nil, nil, "SecurityID")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_trading_status = ProtoField.new("Security Trading Status", "moex.spectra.futinforeplay.simba.v1.0.4.securitytradingstatus", ftypes.UINT8, nil, nil, nil, "SecurityTradingStatus")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_type = ProtoField.new("Security Type", "moex.spectra.futinforeplay.simba.v1.0.4.securitytype", ftypes.STRING, nil, nil, nil, "SecurityType")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.sending_time = ProtoField.new("Sending Time", "moex.spectra.futinforeplay.simba.v1.0.4.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "SendingTime")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.sending_time_utc = ProtoField.new("Sending Time", "moex.spectra.futinforeplay.simba.v1.0.4.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "SendingTime")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.settl_price_open = ProtoField.new("Settl Price Open", "moex.spectra.futinforeplay.simba.v1.0.4.settlpriceopen", ftypes.DOUBLE, nil, nil, nil, "SettlPriceOpen")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.start_of_snapshot = ProtoField.new("Start Of Snapshot", "moex.spectra.futinforeplay.simba.v1.0.4.startofsnapshot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "StartOfSnapshot")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.strike_price = ProtoField.new("Strike Price", "moex.spectra.futinforeplay.simba.v1.0.4.strikeprice", ftypes.DOUBLE, nil, nil, nil, "StrikePrice")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.symbol = ProtoField.new("Symbol", "moex.spectra.futinforeplay.simba.v1.0.4.symbol", ftypes.STRING)
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.template_id = ProtoField.new("Template Id", "moex.spectra.futinforeplay.simba.v1.0.4.templateid", ftypes.UINT16, nil, nil, nil, "Message template identifier")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.theor_price = ProtoField.new("Theor Price", "moex.spectra.futinforeplay.simba.v1.0.4.theorprice", ftypes.DOUBLE, nil, nil, nil, "TheorPrice")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.theor_price_limit = ProtoField.new("Theor Price Limit", "moex.spectra.futinforeplay.simba.v1.0.4.theorpricelimit", ftypes.DOUBLE, nil, nil, nil, "TheorPriceLimit")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.tot_num_reports = ProtoField.new("Tot Num Reports", "moex.spectra.futinforeplay.simba.v1.0.4.totnumreports", ftypes.UINT32, nil, nil, nil, "TotNumReports")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_close_time = ProtoField.new("Trad Ses Close Time", "moex.spectra.futinforeplay.simba.v1.0.4.tradsesclosetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TradSesCloseTime")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_close_time_utc = ProtoField.new("Trad Ses Close Time", "moex.spectra.futinforeplay.simba.v1.0.4.tradsesclosetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TradSesCloseTime")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "moex.spectra.futinforeplay.simba.v1.0.4.tradsesevent", ftypes.UINT8, nil, nil, nil, "TradSesEvent")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_interm_clearing_end_time = ProtoField.new("Trad Ses Interm Clearing End Time", "moex.spectra.futinforeplay.simba.v1.0.4.tradsesintermclearingendtime", ftypes.UINT64, nil, nil, nil, "TradSesIntermClearingEndTime")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_interm_clearing_start_time = ProtoField.new("Trad Ses Interm Clearing Start Time", "moex.spectra.futinforeplay.simba.v1.0.4.tradsesintermclearingstarttime", ftypes.UINT64, nil, nil, nil, "TradSesIntermClearingStartTime")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_open_time = ProtoField.new("Trad Ses Open Time", "moex.spectra.futinforeplay.simba.v1.0.4.tradsesopentime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TradSesOpenTime")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_open_time_utc = ProtoField.new("Trad Ses Open Time", "moex.spectra.futinforeplay.simba.v1.0.4.tradsesopentime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TradSesOpenTime")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "moex.spectra.futinforeplay.simba.v1.0.4.tradsesstatus", ftypes.UINT8, nil, nil, nil, "TradSesStatus")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trading_session_id = ProtoField.new("Trading Session Id", "moex.spectra.futinforeplay.simba.v1.0.4.tradingsessionid", ftypes.UINT8, nil, nil, nil, "TradingSessionID")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.underlying_currency = ProtoField.new("Underlying Currency", "moex.spectra.futinforeplay.simba.v1.0.4.underlyingcurrency", ftypes.STRING, nil, nil, nil, "UnderlyingCurrency")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.underlying_future_id = ProtoField.new("Underlying Future Id", "moex.spectra.futinforeplay.simba.v1.0.4.underlyingfutureid", ftypes.INT32, nil, nil, nil, "ID of the base futures instrument, applicable to options only")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.underlying_qty = ProtoField.new("Underlying Qty", "moex.spectra.futinforeplay.simba.v1.0.4.underlyingqty", ftypes.DOUBLE, nil, nil, nil, "UnderlyingQty")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "moex.spectra.futinforeplay.simba.v1.0.4.underlyingsecurityid", ftypes.INT32, nil, nil, nil, "Futures instrument ID")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "moex.spectra.futinforeplay.simba.v1.0.4.underlyingsymbol", ftypes.STRING, nil, nil, nil, "Underlying asset code")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.unused_1 = ProtoField.new("Unused 1", "moex.spectra.futinforeplay.simba.v1.0.4.unused1", ftypes.UINT64, {[0]="No", [1]="Yes"}, base.DEC, 0x0000000000000080, "1 unused bit")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.unused_3 = ProtoField.new("Unused 3", "moex.spectra.futinforeplay.simba.v1.0.4.unused3", ftypes.UINT64, nil, base.DEC, 0x000000000000000E, "3 unused bits")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.unused_9 = ProtoField.new("Unused 9", "moex.spectra.futinforeplay.simba.v1.0.4.unused9", ftypes.UINT64, nil, base.DEC, 0x000000000003FE00, "9 unused bits")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.version = ProtoField.new("Version", "moex.spectra.futinforeplay.simba.v1.0.4.version", ftypes.UINT16, nil, nil, nil, "Message schema version")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.volatility = ProtoField.new("Volatility", "moex.spectra.futinforeplay.simba.v1.0.4.volatility", ftypes.DOUBLE)

-- Moex Spectra FutInfoReplay Simba 1.0.4 Framing
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.message = ProtoField.new("Message", "moex.spectra.futinforeplay.simba.v1.0.4.message", ftypes.STRING, nil, nil, nil, "Moex Simba Market Data Message")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.sbe_header = ProtoField.new("Sbe Header", "moex.spectra.futinforeplay.simba.v1.0.4.sbeheader", ftypes.STRING, nil, nil, nil, "Root block length, message template id, message schema id and schema version")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.udp_packet = ProtoField.new("Udp Packet", "moex.spectra.futinforeplay.simba.v1.0.4.udppacket", ftypes.STRING, nil, nil, nil, "Moex Simba Snapshot Packet")

-- Moex Spectra FutInfoReplay 1.0.4 Session Messages
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "moex.spectra.futinforeplay.simba.v1.0.4.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "HeartbeatMessage")

-- Moex Spectra FutInfoReplay 1.0.4 Application Messages
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message = ProtoField.new("Security Definition Message", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessage", ftypes.STRING, nil, nil, nil, "SecurityDefinitionMessage")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "moex.spectra.futinforeplay.simba.v1.0.4.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "SequenceResetMessage")
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "moex.spectra.futinforeplay.simba.v1.0.4.tradingsessionstatusmessage", ftypes.STRING, nil, nil, nil, "TradingSessionStatusMessage")

-- Moex Spectra FutInfoReplay Simba 1.0.4 Generated Fields
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_events_group_index = ProtoField.new("Security Definition Message No Events Group Index", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenoeventsgroupindex", ftypes.UINT16)
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_instr_attrib_group_index = ProtoField.new("Security Definition Message No Instr Attrib Group Index", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenoinstrattribgroupindex", ftypes.UINT16)
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_legs_group_index = ProtoField.new("Security Definition Message No Legs Group Index", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenolegsgroupindex", ftypes.UINT16)
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_md_feed_types_group_index = ProtoField.new("Security Definition Message No Md Feed Types Group Index", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenomdfeedtypesgroupindex", ftypes.UINT16)
omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_underlyings_group_index = ProtoField.new("Security Definition Message No Underlyings Group Index", "moex.spectra.futinforeplay.simba.v1.0.4.securitydefinitionmessagenounderlyingsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Moex Spectra FutInfoReplay Simba 1.0.4 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "DateTime Local", 2 },
  { 2, "DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
moex_spectra_futinforeplay_simba_v1_0_4.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Moex Spectra FutInfoReplay Simba 1.0.4 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.repeating_groups = true
show.indexes = true

-- Register Moex Spectra FutInfoReplay Simba 1.0.4 Show Options
omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_application_messages then
    show.application_messages = omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_application_messages
  end
  if show.headers ~= omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_headers then
    show.headers = omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_headers
  end
  if show.repeating_groups ~= omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_repeating_groups then
    show.repeating_groups = omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_repeating_groups
  end
  if show.structs ~= omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_structs then
    show.structs = omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_structs
  end
  if show.indexes ~= omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_indexes then
    show.indexes = omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.show_indexes
  end
  if moex_spectra_futinforeplay_simba_v1_0_4.timestamp_format ~= omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.timestamp_format then
    moex_spectra_futinforeplay_simba_v1_0_4.timestamp_format = omi_moex_spectra_futinforeplay_simba_v1_0_4.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Moex Spectra FutInfoReplay Simba 1.0.4 Fields
-----------------------------------------------------------------------

-- Block Length
moex_spectra_futinforeplay_simba_v1_0_4.block_length = {}

-- Size: Block Length
moex_spectra_futinforeplay_simba_v1_0_4.block_length.size = 2

-- Display: Block Length
moex_spectra_futinforeplay_simba_v1_0_4.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
moex_spectra_futinforeplay_simba_v1_0_4.block_length.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.block_length, range, value, display)

  return offset + length, value
end

-- Cfi Code
moex_spectra_futinforeplay_simba_v1_0_4.cfi_code = {}

-- Size: Cfi Code
moex_spectra_futinforeplay_simba_v1_0_4.cfi_code.size = 6

-- Display: Cfi Code
moex_spectra_futinforeplay_simba_v1_0_4.cfi_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cfi Code: No Value"
  end

  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
moex_spectra_futinforeplay_simba_v1_0_4.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.cfi_code.size
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

  local display = moex_spectra_futinforeplay_simba_v1_0_4.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
moex_spectra_futinforeplay_simba_v1_0_4.contract_multiplier = {}

-- Size: Contract Multiplier
moex_spectra_futinforeplay_simba_v1_0_4.contract_multiplier.size = 4

-- Display: Contract Multiplier
moex_spectra_futinforeplay_simba_v1_0_4.contract_multiplier.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Contract Multiplier: No Value"
  end

  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
moex_spectra_futinforeplay_simba_v1_0_4.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Currency
moex_spectra_futinforeplay_simba_v1_0_4.currency = {}

-- Size: Currency
moex_spectra_futinforeplay_simba_v1_0_4.currency.size = 3

-- Display: Currency
moex_spectra_futinforeplay_simba_v1_0_4.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
moex_spectra_futinforeplay_simba_v1_0_4.currency.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.currency.size
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

  local display = moex_spectra_futinforeplay_simba_v1_0_4.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.currency, range, value, display)

  return offset + length, value
end

-- Event Date
moex_spectra_futinforeplay_simba_v1_0_4.event_date = {}

-- Size: Event Date
moex_spectra_futinforeplay_simba_v1_0_4.event_date.size = 4

-- Display: Event Date
moex_spectra_futinforeplay_simba_v1_0_4.event_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Event Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Event Date
moex_spectra_futinforeplay_simba_v1_0_4.event_date.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.event_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.event_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.event_date, range, value, display)

  return offset + length, value
end

-- Event Time
moex_spectra_futinforeplay_simba_v1_0_4.event_time = {}

-- Size: Event Time
moex_spectra_futinforeplay_simba_v1_0_4.event_time.size = 8

-- Dissect: Event Time
moex_spectra_futinforeplay_simba_v1_0_4.event_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.event_time.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.event_time
  if moex_spectra_futinforeplay_simba_v1_0_4.timestamp_format == 3 then field = omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.event_time_utc end

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
    item:set_text("Event Time: " .. tostring(packed))
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

-- Event Type
moex_spectra_futinforeplay_simba_v1_0_4.event_type = {}

-- Size: Event Type
moex_spectra_futinforeplay_simba_v1_0_4.event_type.size = 4

-- Display: Event Type
moex_spectra_futinforeplay_simba_v1_0_4.event_type.display = function(value)
  return "Event Type: "..value
end

-- Dissect: Event Type
moex_spectra_futinforeplay_simba_v1_0_4.event_type.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.event_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.event_type, range, value, display)

  return offset + length, value
end

-- Exchange Trading Session Id Int 32 Null Optional
moex_spectra_futinforeplay_simba_v1_0_4.exchange_trading_session_id_int_32_null_optional = {}

-- Size: Exchange Trading Session Id Int 32 Null Optional
moex_spectra_futinforeplay_simba_v1_0_4.exchange_trading_session_id_int_32_null_optional.size = 4

-- Display: Exchange Trading Session Id Int 32 Null Optional
moex_spectra_futinforeplay_simba_v1_0_4.exchange_trading_session_id_int_32_null_optional.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Exchange Trading Session Id Int 32 Null Optional: No Value"
  end

  return "Exchange Trading Session Id Int 32 Null Optional: "..value
end

-- Dissect: Exchange Trading Session Id Int 32 Null Optional
moex_spectra_futinforeplay_simba_v1_0_4.exchange_trading_session_id_int_32_null_optional.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.exchange_trading_session_id_int_32_null_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.exchange_trading_session_id_int_32_null_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.exchange_trading_session_id_int_32_null_optional, range, value, display)

  return offset + length, value
end

-- High Limit Px
moex_spectra_futinforeplay_simba_v1_0_4.high_limit_px = {}

-- Size: High Limit Px
moex_spectra_futinforeplay_simba_v1_0_4.high_limit_px.size = 8

-- Display: High Limit Px
moex_spectra_futinforeplay_simba_v1_0_4.high_limit_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "High Limit Px: No Value"
  end

  return "High Limit Px: "..value
end

-- Translate: High Limit Px
moex_spectra_futinforeplay_simba_v1_0_4.high_limit_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: High Limit Px
moex_spectra_futinforeplay_simba_v1_0_4.high_limit_px.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.high_limit_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.high_limit_px.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.high_limit_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.high_limit_px, range, value, display)

  return offset + length, value
end

-- Initial Margin On Buy
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_buy = {}

-- Size: Initial Margin On Buy
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_buy.size = 8

-- Display: Initial Margin On Buy
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_buy.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Initial Margin On Buy: No Value"
  end

  return "Initial Margin On Buy: "..value
end

-- Translate: Initial Margin On Buy
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_buy.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100
end

-- Dissect: Initial Margin On Buy
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_buy.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_buy.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_buy.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_buy.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.initial_margin_on_buy, range, value, display)

  return offset + length, value
end

-- Initial Margin On Sell
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_sell = {}

-- Size: Initial Margin On Sell
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_sell.size = 8

-- Display: Initial Margin On Sell
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_sell.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Initial Margin On Sell: No Value"
  end

  return "Initial Margin On Sell: "..value
end

-- Translate: Initial Margin On Sell
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_sell.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100
end

-- Dissect: Initial Margin On Sell
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_sell.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_sell.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_sell.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_sell.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.initial_margin_on_sell, range, value, display)

  return offset + length, value
end

-- Initial Margin Syntetic
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_syntetic = {}

-- Size: Initial Margin Syntetic
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_syntetic.size = 8

-- Display: Initial Margin Syntetic
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_syntetic.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Initial Margin Syntetic: No Value"
  end

  return "Initial Margin Syntetic: "..value
end

-- Translate: Initial Margin Syntetic
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_syntetic.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100
end

-- Dissect: Initial Margin Syntetic
moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_syntetic.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_syntetic.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_syntetic.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_syntetic.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.initial_margin_syntetic, range, value, display)

  return offset + length, value
end

-- Instr Attrib Type
moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_type = {}

-- Size: Instr Attrib Type
moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_type.size = 4

-- Display: Instr Attrib Type
moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_type.display = function(value)
  return "Instr Attrib Type: "..value
end

-- Dissect: Instr Attrib Type
moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_type.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.instr_attrib_type, range, value, display)

  return offset + length, value
end

-- Instr Attrib Value
moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_value = {}

-- Size: Instr Attrib Value
moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_value.size = 31

-- Display: Instr Attrib Value
moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_value.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instr Attrib Value: No Value"
  end

  return "Instr Attrib Value: "..value
end

-- Dissect: Instr Attrib Value
moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_value.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_value.size
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

  local display = moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.instr_attrib_value, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
moex_spectra_futinforeplay_simba_v1_0_4.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
moex_spectra_futinforeplay_simba_v1_0_4.leg_ratio_qty.size = 4

-- Display: Leg Ratio Qty
moex_spectra_futinforeplay_simba_v1_0_4.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
moex_spectra_futinforeplay_simba_v1_0_4.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Security Id
moex_spectra_futinforeplay_simba_v1_0_4.leg_security_id = {}

-- Size: Leg Security Id
moex_spectra_futinforeplay_simba_v1_0_4.leg_security_id.size = 4

-- Display: Leg Security Id
moex_spectra_futinforeplay_simba_v1_0_4.leg_security_id.display = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
moex_spectra_futinforeplay_simba_v1_0_4.leg_security_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.leg_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.leg_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Leg Symbol
moex_spectra_futinforeplay_simba_v1_0_4.leg_symbol = {}

-- Size: Leg Symbol
moex_spectra_futinforeplay_simba_v1_0_4.leg_symbol.size = 25

-- Display: Leg Symbol
moex_spectra_futinforeplay_simba_v1_0_4.leg_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
moex_spectra_futinforeplay_simba_v1_0_4.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.leg_symbol.size
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

  local display = moex_spectra_futinforeplay_simba_v1_0_4.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Low Limit Px
moex_spectra_futinforeplay_simba_v1_0_4.low_limit_px = {}

-- Size: Low Limit Px
moex_spectra_futinforeplay_simba_v1_0_4.low_limit_px.size = 8

-- Display: Low Limit Px
moex_spectra_futinforeplay_simba_v1_0_4.low_limit_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Low Limit Px: No Value"
  end

  return "Low Limit Px: "..value
end

-- Translate: Low Limit Px
moex_spectra_futinforeplay_simba_v1_0_4.low_limit_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Low Limit Px
moex_spectra_futinforeplay_simba_v1_0_4.low_limit_px.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.low_limit_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.low_limit_px.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.low_limit_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.low_limit_px, range, value, display)

  return offset + length, value
end

-- Market Depth
moex_spectra_futinforeplay_simba_v1_0_4.market_depth = {}

-- Size: Market Depth
moex_spectra_futinforeplay_simba_v1_0_4.market_depth.size = 4

-- Display: Market Depth
moex_spectra_futinforeplay_simba_v1_0_4.market_depth.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Market Depth: No Value"
  end

  return "Market Depth: "..value
end

-- Dissect: Market Depth
moex_spectra_futinforeplay_simba_v1_0_4.market_depth.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.market_depth.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.market_depth, range, value, display)

  return offset + length, value
end

-- Market Segment Id
moex_spectra_futinforeplay_simba_v1_0_4.market_segment_id = {}

-- Size: Market Segment Id
moex_spectra_futinforeplay_simba_v1_0_4.market_segment_id.size = 1

-- Display: Market Segment Id
moex_spectra_futinforeplay_simba_v1_0_4.market_segment_id.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Market Segment Id: No Value"
  end

  if value == "D" then
    return "Market Segment Id: Derivatives (D)"
  end

  return "Market Segment Id: Unknown("..value..")"
end

-- Dissect: Market Segment Id
moex_spectra_futinforeplay_simba_v1_0_4.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.market_segment_id.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = moex_spectra_futinforeplay_simba_v1_0_4.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Maturity Date
moex_spectra_futinforeplay_simba_v1_0_4.maturity_date = {}

-- Size: Maturity Date
moex_spectra_futinforeplay_simba_v1_0_4.maturity_date.size = 4

-- Display: Maturity Date
moex_spectra_futinforeplay_simba_v1_0_4.maturity_date.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
moex_spectra_futinforeplay_simba_v1_0_4.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Maturity Time
moex_spectra_futinforeplay_simba_v1_0_4.maturity_time = {}

-- Size: Maturity Time
moex_spectra_futinforeplay_simba_v1_0_4.maturity_time.size = 4

-- Display: Maturity Time
moex_spectra_futinforeplay_simba_v1_0_4.maturity_time.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Maturity Time: No Value"
  end

  return "Maturity Time: "..value
end

-- Dissect: Maturity Time
moex_spectra_futinforeplay_simba_v1_0_4.maturity_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.maturity_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.maturity_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.maturity_time, range, value, display)

  return offset + length, value
end

-- Md Book Type
moex_spectra_futinforeplay_simba_v1_0_4.md_book_type = {}

-- Size: Md Book Type
moex_spectra_futinforeplay_simba_v1_0_4.md_book_type.size = 4

-- Display: Md Book Type
moex_spectra_futinforeplay_simba_v1_0_4.md_book_type.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Md Book Type: No Value"
  end

  return "Md Book Type: "..value
end

-- Dissect: Md Book Type
moex_spectra_futinforeplay_simba_v1_0_4.md_book_type.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.md_book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.md_book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.md_book_type, range, value, display)

  return offset + length, value
end

-- Md Feed Type
moex_spectra_futinforeplay_simba_v1_0_4.md_feed_type = {}

-- Size: Md Feed Type
moex_spectra_futinforeplay_simba_v1_0_4.md_feed_type.size = 25

-- Display: Md Feed Type
moex_spectra_futinforeplay_simba_v1_0_4.md_feed_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Md Feed Type: No Value"
  end

  return "Md Feed Type: "..value
end

-- Dissect: Md Feed Type
moex_spectra_futinforeplay_simba_v1_0_4.md_feed_type.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.md_feed_type.size
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

  local display = moex_spectra_futinforeplay_simba_v1_0_4.md_feed_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.md_feed_type, range, value, display)

  return offset + length, value
end

-- Min Price Increment
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment = {}

-- Size: Min Price Increment
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment.size = 8

-- Display: Min Price Increment
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment: No Value"
  end

  return "Min Price Increment: "..value
end

-- Translate: Min Price Increment
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Min Price Increment
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.min_price_increment, range, value, display)

  return offset + length, value
end

-- Min Price Increment Amount
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount = {}

-- Size: Min Price Increment Amount
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount.size = 8

-- Display: Min Price Increment Amount
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Amount: No Value"
  end

  return "Min Price Increment Amount: "..value
end

-- Translate: Min Price Increment Amount
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Min Price Increment Amount
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.min_price_increment_amount, range, value, display)

  return offset + length, value
end

-- Min Price Increment Amount Curr
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount_curr = {}

-- Size: Min Price Increment Amount Curr
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount_curr.size = 8

-- Display: Min Price Increment Amount Curr
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount_curr.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Min Price Increment Amount Curr: No Value"
  end

  return "Min Price Increment Amount Curr: "..value
end

-- Translate: Min Price Increment Amount Curr
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount_curr.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Min Price Increment Amount Curr
moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount_curr.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount_curr.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount_curr.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount_curr.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.min_price_increment_amount_curr, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
moex_spectra_futinforeplay_simba_v1_0_4.msg_seq_num = {}

-- Size: Msg Seq Num
moex_spectra_futinforeplay_simba_v1_0_4.msg_seq_num.size = 4

-- Display: Msg Seq Num
moex_spectra_futinforeplay_simba_v1_0_4.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
moex_spectra_futinforeplay_simba_v1_0_4.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Msg Size
moex_spectra_futinforeplay_simba_v1_0_4.msg_size = {}

-- Size: Msg Size
moex_spectra_futinforeplay_simba_v1_0_4.msg_size.size = 2

-- Display: Msg Size
moex_spectra_futinforeplay_simba_v1_0_4.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
moex_spectra_futinforeplay_simba_v1_0_4.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.msg_size, range, value, display)

  return offset + length, value
end

-- New Seq No
moex_spectra_futinforeplay_simba_v1_0_4.new_seq_no = {}

-- Size: New Seq No
moex_spectra_futinforeplay_simba_v1_0_4.new_seq_no.size = 4

-- Display: New Seq No
moex_spectra_futinforeplay_simba_v1_0_4.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
moex_spectra_futinforeplay_simba_v1_0_4.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Num In Group
moex_spectra_futinforeplay_simba_v1_0_4.num_in_group = {}

-- Size: Num In Group
moex_spectra_futinforeplay_simba_v1_0_4.num_in_group.size = 1

-- Display: Num In Group
moex_spectra_futinforeplay_simba_v1_0_4.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
moex_spectra_futinforeplay_simba_v1_0_4.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.num_in_group.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Quotation List Data
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_data = {}

-- Display: Quotation List Data
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_data.display = function(value)
  return "Quotation List Data: "..value
end

-- Dissect runtime sized field: Quotation List Data
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_data.display(value, packet, parent, size)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.quotation_list_data, range, value, display)

  return offset + size, value
end

-- Quotation List Length
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_length = {}

-- Size: Quotation List Length
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_length.size = 2

-- Display: Quotation List Length
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_length.display = function(value)
  return "Quotation List Length: "..value
end

-- Dissect: Quotation List Length
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_length.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.quotation_list_length, range, value, display)

  return offset + length, value
end

-- Schema Id
moex_spectra_futinforeplay_simba_v1_0_4.schema_id = {}

-- Size: Schema Id
moex_spectra_futinforeplay_simba_v1_0_4.schema_id.size = 2

-- Display: Schema Id
moex_spectra_futinforeplay_simba_v1_0_4.schema_id.display = function(value)
  if value == 19780 then
    return "Schema Id: Moex Spectra Simba (19780)"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
moex_spectra_futinforeplay_simba_v1_0_4.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Security Alt Id
moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id = {}

-- Size: Security Alt Id
moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id.size = 25

-- Display: Security Alt Id
moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id: No Value"
  end

  return "Security Alt Id: "..value
end

-- Dissect: Security Alt Id
moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id.size
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

  local display = moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_alt_id, range, value, display)

  return offset + length, value
end

-- Security Alt Id Source
moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id_source = {}

-- Size: Security Alt Id Source
moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id_source.size = 1

-- Display: Security Alt Id Source
moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Alt Id Source: No Value"
  end

  if value == "4" then
    return "Security Alt Id Source: Isin (4)"
  end
  if value == "8" then
    return "Security Alt Id Source: Exchange Symbol (8)"
  end

  return "Security Alt Id Source: Unknown("..value..")"
end

-- Dissect: Security Alt Id Source
moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id_source.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Security Desc Data
moex_spectra_futinforeplay_simba_v1_0_4.security_desc_data = {}

-- Display: Security Desc Data
moex_spectra_futinforeplay_simba_v1_0_4.security_desc_data.display = function(value)
  return "Security Desc Data: "..value
end

-- Dissect runtime sized field: Security Desc Data
moex_spectra_futinforeplay_simba_v1_0_4.security_desc_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.security_desc_data.display(value, packet, parent, size)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_desc_data, range, value, display)

  return offset + size, value
end

-- Security Desc Length
moex_spectra_futinforeplay_simba_v1_0_4.security_desc_length = {}

-- Size: Security Desc Length
moex_spectra_futinforeplay_simba_v1_0_4.security_desc_length.size = 2

-- Display: Security Desc Length
moex_spectra_futinforeplay_simba_v1_0_4.security_desc_length.display = function(value)
  return "Security Desc Length: "..value
end

-- Dissect: Security Desc Length
moex_spectra_futinforeplay_simba_v1_0_4.security_desc_length.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.security_desc_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.security_desc_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_desc_length, range, value, display)

  return offset + length, value
end

-- Security Id
moex_spectra_futinforeplay_simba_v1_0_4.security_id = {}

-- Size: Security Id
moex_spectra_futinforeplay_simba_v1_0_4.security_id.size = 4

-- Display: Security Id
moex_spectra_futinforeplay_simba_v1_0_4.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
moex_spectra_futinforeplay_simba_v1_0_4.security_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Trading Status
moex_spectra_futinforeplay_simba_v1_0_4.security_trading_status = {}

-- Size: Security Trading Status
moex_spectra_futinforeplay_simba_v1_0_4.security_trading_status.size = 1

-- Display: Security Trading Status
moex_spectra_futinforeplay_simba_v1_0_4.security_trading_status.labels = {
  [2] = "Security Trading Status: Trading Halt (2)",
  [17] = "Security Trading Status: Ready To Trade (17)",
  [18] = "Security Trading Status: Not Available For Trading (18)",
  [19] = "Security Trading Status: Not Traded On This Market (19)",
  [21] = "Security Trading Status: Pre Open (21)",
}

moex_spectra_futinforeplay_simba_v1_0_4.security_trading_status.display = function(value)
  return moex_spectra_futinforeplay_simba_v1_0_4.security_trading_status.labels[value] or "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
moex_spectra_futinforeplay_simba_v1_0_4.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Security Type
moex_spectra_futinforeplay_simba_v1_0_4.security_type = {}

-- Size: Security Type
moex_spectra_futinforeplay_simba_v1_0_4.security_type.size = 4

-- Display: Security Type
moex_spectra_futinforeplay_simba_v1_0_4.security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Type: No Value"
  end

  return "Security Type: "..value
end

-- Dissect: Security Type
moex_spectra_futinforeplay_simba_v1_0_4.security_type.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.security_type.size
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

  local display = moex_spectra_futinforeplay_simba_v1_0_4.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_type, range, value, display)

  return offset + length, value
end

-- Sending Time
moex_spectra_futinforeplay_simba_v1_0_4.sending_time = {}

-- Size: Sending Time
moex_spectra_futinforeplay_simba_v1_0_4.sending_time.size = 8

-- Dissect: Sending Time
moex_spectra_futinforeplay_simba_v1_0_4.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.sending_time
  if moex_spectra_futinforeplay_simba_v1_0_4.timestamp_format == 3 then field = omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.sending_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Settl Price Open
moex_spectra_futinforeplay_simba_v1_0_4.settl_price_open = {}

-- Size: Settl Price Open
moex_spectra_futinforeplay_simba_v1_0_4.settl_price_open.size = 8

-- Display: Settl Price Open
moex_spectra_futinforeplay_simba_v1_0_4.settl_price_open.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Settl Price Open: No Value"
  end

  return "Settl Price Open: "..value
end

-- Translate: Settl Price Open
moex_spectra_futinforeplay_simba_v1_0_4.settl_price_open.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Settl Price Open
moex_spectra_futinforeplay_simba_v1_0_4.settl_price_open.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.settl_price_open.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.settl_price_open.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.settl_price_open.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.settl_price_open, range, value, display)

  return offset + length, value
end

-- Strike Price
moex_spectra_futinforeplay_simba_v1_0_4.strike_price = {}

-- Size: Strike Price
moex_spectra_futinforeplay_simba_v1_0_4.strike_price.size = 8

-- Display: Strike Price
moex_spectra_futinforeplay_simba_v1_0_4.strike_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
moex_spectra_futinforeplay_simba_v1_0_4.strike_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Strike Price
moex_spectra_futinforeplay_simba_v1_0_4.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.strike_price.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.strike_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
moex_spectra_futinforeplay_simba_v1_0_4.symbol = {}

-- Size: Symbol
moex_spectra_futinforeplay_simba_v1_0_4.symbol.size = 25

-- Display: Symbol
moex_spectra_futinforeplay_simba_v1_0_4.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
moex_spectra_futinforeplay_simba_v1_0_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.symbol.size
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

  local display = moex_spectra_futinforeplay_simba_v1_0_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Template Id
moex_spectra_futinforeplay_simba_v1_0_4.template_id = {}

-- Size: Template Id
moex_spectra_futinforeplay_simba_v1_0_4.template_id.size = 2

-- Display: Template Id
moex_spectra_futinforeplay_simba_v1_0_4.template_id.labels = {
  [1] = "Template Id: Heartbeat Message (1)",
  [2] = "Template Id: Sequence Reset Message (2)",
  [3] = "Template Id: Best Prices Message (3)",
  [4] = "Template Id: Empty Book Message (4)",
  [5] = "Template Id: Order Update Message (5)",
  [6] = "Template Id: Order Execution Message (6)",
  [7] = "Template Id: Order Book Snapshot Message (7)",
  [8] = "Template Id: Security Definition Message (8)",
  [9] = "Template Id: Security Status Message (9)",
  [10] = "Template Id: Security Definition Update Report Message (10)",
  [11] = "Template Id: Trading Session Status Message (11)",
  [1000] = "Template Id: Logon Message (1000)",
  [1001] = "Template Id: Logout Message (1001)",
  [1002] = "Template Id: Market Data Request Message (1002)",
  [1003] = "Template Id: Market Data Dummy Message (1003)",
}

moex_spectra_futinforeplay_simba_v1_0_4.template_id.display = function(value)
  return moex_spectra_futinforeplay_simba_v1_0_4.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
moex_spectra_futinforeplay_simba_v1_0_4.template_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.template_id, range, value, display)

  return offset + length, value
end

-- Theor Price
moex_spectra_futinforeplay_simba_v1_0_4.theor_price = {}

-- Size: Theor Price
moex_spectra_futinforeplay_simba_v1_0_4.theor_price.size = 8

-- Display: Theor Price
moex_spectra_futinforeplay_simba_v1_0_4.theor_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Theor Price: No Value"
  end

  return "Theor Price: "..value
end

-- Translate: Theor Price
moex_spectra_futinforeplay_simba_v1_0_4.theor_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Theor Price
moex_spectra_futinforeplay_simba_v1_0_4.theor_price.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.theor_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.theor_price.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.theor_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.theor_price, range, value, display)

  return offset + length, value
end

-- Theor Price Limit
moex_spectra_futinforeplay_simba_v1_0_4.theor_price_limit = {}

-- Size: Theor Price Limit
moex_spectra_futinforeplay_simba_v1_0_4.theor_price_limit.size = 8

-- Display: Theor Price Limit
moex_spectra_futinforeplay_simba_v1_0_4.theor_price_limit.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Theor Price Limit: No Value"
  end

  return "Theor Price Limit: "..value
end

-- Translate: Theor Price Limit
moex_spectra_futinforeplay_simba_v1_0_4.theor_price_limit.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Theor Price Limit
moex_spectra_futinforeplay_simba_v1_0_4.theor_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.theor_price_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.theor_price_limit.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.theor_price_limit.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.theor_price_limit, range, value, display)

  return offset + length, value
end

-- Tot Num Reports
moex_spectra_futinforeplay_simba_v1_0_4.tot_num_reports = {}

-- Size: Tot Num Reports
moex_spectra_futinforeplay_simba_v1_0_4.tot_num_reports.size = 4

-- Display: Tot Num Reports
moex_spectra_futinforeplay_simba_v1_0_4.tot_num_reports.display = function(value)
  return "Tot Num Reports: "..value
end

-- Dissect: Tot Num Reports
moex_spectra_futinforeplay_simba_v1_0_4.tot_num_reports.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.tot_num_reports.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.tot_num_reports.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.tot_num_reports, range, value, display)

  return offset + length, value
end

-- Trad Ses Close Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_close_time = {}

-- Size: Trad Ses Close Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_close_time.size = 8

-- Dissect: Trad Ses Close Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_close_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_close_time.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_close_time
  if moex_spectra_futinforeplay_simba_v1_0_4.timestamp_format == 3 then field = omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_close_time_utc end

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
    item:set_text("Trad Ses Close Time: " .. tostring(packed))
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

-- Trad Ses Event
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_event = {}

-- Size: Trad Ses Event
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_event.size = 1

-- Display: Trad Ses Event
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_event.labels = {
  [0] = "Trad Ses Event: Trading Resumes (0)",
  [1] = "Trad Ses Event: Change Of Trading Session (1)",
  [3] = "Trad Ses Event: Change Of Trading Status (3)",
}

moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_event.display = function(value)
  return moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_event.labels[value] or "Trad Ses Event: Unknown("..value..")"
end

-- Dissect: Trad Ses Event
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_event.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_event.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_event, range, value, display)

  return offset + length, value
end

-- Trad Ses Interm Clearing End Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_end_time = {}

-- Size: Trad Ses Interm Clearing End Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_end_time.size = 8

-- Display: Trad Ses Interm Clearing End Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_end_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trad Ses Interm Clearing End Time: No Value"
  end

  return "Trad Ses Interm Clearing End Time: "..value
end

-- Dissect: Trad Ses Interm Clearing End Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_end_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_interm_clearing_end_time, range, value, display)

  return offset + length, value
end

-- Trad Ses Interm Clearing Start Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_start_time = {}

-- Size: Trad Ses Interm Clearing Start Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_start_time.size = 8

-- Display: Trad Ses Interm Clearing Start Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_start_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trad Ses Interm Clearing Start Time: No Value"
  end

  return "Trad Ses Interm Clearing Start Time: "..value
end

-- Dissect: Trad Ses Interm Clearing Start Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_start_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_interm_clearing_start_time, range, value, display)

  return offset + length, value
end

-- Trad Ses Open Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_open_time = {}

-- Size: Trad Ses Open Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_open_time.size = 8

-- Dissect: Trad Ses Open Time
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_open_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_open_time.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_open_time
  if moex_spectra_futinforeplay_simba_v1_0_4.timestamp_format == 3 then field = omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_open_time_utc end

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
    item:set_text("Trad Ses Open Time: " .. tostring(packed))
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
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_status = {}

-- Size: Trad Ses Status
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_status.size = 1

-- Display: Trad Ses Status
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_status.labels = {
  [1] = "Trad Ses Status: Halted (1)",
  [2] = "Trad Ses Status: Open (2)",
  [3] = "Trad Ses Status: Closed (3)",
  [4] = "Trad Ses Status: Pre Open (4)",
}

moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_status.display = function(value)
  return moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_status.labels[value] or "Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Trad Ses Status
moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trading Session Id
moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id = {}

-- Size: Trading Session Id
moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id.size = 1

-- Display: Trading Session Id
moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id.labels = {
  [1] = "Trading Session Id: Day (1)",
  [3] = "Trading Session Id: Morning (3)",
  [5] = "Trading Session Id: Evening (5)",
}

moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id.display = function(value)
  return moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id.labels[value] or "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Underlying Currency
moex_spectra_futinforeplay_simba_v1_0_4.underlying_currency = {}

-- Size: Underlying Currency
moex_spectra_futinforeplay_simba_v1_0_4.underlying_currency.size = 3

-- Display: Underlying Currency
moex_spectra_futinforeplay_simba_v1_0_4.underlying_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Currency: No Value"
  end

  return "Underlying Currency: "..value
end

-- Dissect: Underlying Currency
moex_spectra_futinforeplay_simba_v1_0_4.underlying_currency.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.underlying_currency.size
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

  local display = moex_spectra_futinforeplay_simba_v1_0_4.underlying_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.underlying_currency, range, value, display)

  return offset + length, value
end

-- Underlying Future Id
moex_spectra_futinforeplay_simba_v1_0_4.underlying_future_id = {}

-- Size: Underlying Future Id
moex_spectra_futinforeplay_simba_v1_0_4.underlying_future_id.size = 4

-- Display: Underlying Future Id
moex_spectra_futinforeplay_simba_v1_0_4.underlying_future_id.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Underlying Future Id: No Value"
  end

  return "Underlying Future Id: "..value
end

-- Dissect: Underlying Future Id
moex_spectra_futinforeplay_simba_v1_0_4.underlying_future_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.underlying_future_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.underlying_future_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.underlying_future_id, range, value, display)

  return offset + length, value
end

-- Underlying Qty
moex_spectra_futinforeplay_simba_v1_0_4.underlying_qty = {}

-- Size: Underlying Qty
moex_spectra_futinforeplay_simba_v1_0_4.underlying_qty.size = 8

-- Display: Underlying Qty
moex_spectra_futinforeplay_simba_v1_0_4.underlying_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Underlying Qty: No Value"
  end

  return "Underlying Qty: "..value
end

-- Translate: Underlying Qty
moex_spectra_futinforeplay_simba_v1_0_4.underlying_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Underlying Qty
moex_spectra_futinforeplay_simba_v1_0_4.underlying_qty.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.underlying_qty.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.underlying_qty.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.underlying_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.underlying_qty, range, value, display)

  return offset + length, value
end

-- Underlying Security Id
moex_spectra_futinforeplay_simba_v1_0_4.underlying_security_id = {}

-- Size: Underlying Security Id
moex_spectra_futinforeplay_simba_v1_0_4.underlying_security_id.size = 4

-- Display: Underlying Security Id
moex_spectra_futinforeplay_simba_v1_0_4.underlying_security_id.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Underlying Security Id: No Value"
  end

  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
moex_spectra_futinforeplay_simba_v1_0_4.underlying_security_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.underlying_security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.underlying_security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.underlying_security_id, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
moex_spectra_futinforeplay_simba_v1_0_4.underlying_symbol = {}

-- Size: Underlying Symbol
moex_spectra_futinforeplay_simba_v1_0_4.underlying_symbol.size = 25

-- Display: Underlying Symbol
moex_spectra_futinforeplay_simba_v1_0_4.underlying_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Symbol: No Value"
  end

  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
moex_spectra_futinforeplay_simba_v1_0_4.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.underlying_symbol.size
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

  local display = moex_spectra_futinforeplay_simba_v1_0_4.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Version
moex_spectra_futinforeplay_simba_v1_0_4.version = {}

-- Size: Version
moex_spectra_futinforeplay_simba_v1_0_4.version.size = 2

-- Display: Version
moex_spectra_futinforeplay_simba_v1_0_4.version.display = function(value)
  if value == 0 then
    return "Version: 0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
moex_spectra_futinforeplay_simba_v1_0_4.version.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.version, range, value, display)

  return offset + length, value
end

-- Volatility
moex_spectra_futinforeplay_simba_v1_0_4.volatility = {}

-- Size: Volatility
moex_spectra_futinforeplay_simba_v1_0_4.volatility.size = 8

-- Display: Volatility
moex_spectra_futinforeplay_simba_v1_0_4.volatility.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Volatility: No Value"
  end

  return "Volatility: "..value
end

-- Translate: Volatility
moex_spectra_futinforeplay_simba_v1_0_4.volatility.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Volatility
moex_spectra_futinforeplay_simba_v1_0_4.volatility.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinforeplay_simba_v1_0_4.volatility.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinforeplay_simba_v1_0_4.volatility.translate(raw)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.volatility.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.volatility, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Moex Spectra FutInfoReplay Simba 1.0.4
-----------------------------------------------------------------------

-- Trading Session Status Message
moex_spectra_futinforeplay_simba_v1_0_4.trading_session_status_message = {}

-- Size: Trading Session Status Message
moex_spectra_futinforeplay_simba_v1_0_4.trading_session_status_message.size =
  moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_open_time.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_close_time.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_start_time.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_end_time.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.exchange_trading_session_id_int_32_null_optional.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_status.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.market_segment_id.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_event.size

-- Display: Trading Session Status Message
moex_spectra_futinforeplay_simba_v1_0_4.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
moex_spectra_futinforeplay_simba_v1_0_4.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trad Ses Open Time: uInt64
  index, trad_ses_open_time = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_open_time.dissect(buffer, index, packet, parent)

  -- Trad Ses Close Time: uInt64
  index, trad_ses_close_time = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_close_time.dissect(buffer, index, packet, parent)

  -- Trad Ses Interm Clearing Start Time: uInt64NULL
  index, trad_ses_interm_clearing_start_time = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_start_time.dissect(buffer, index, packet, parent)

  -- Trad Ses Interm Clearing End Time: uInt64NULL
  index, trad_ses_interm_clearing_end_time = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_interm_clearing_end_time.dissect(buffer, index, packet, parent)

  -- Trading Session Id: TradingSessionID
  index, trading_session_id = moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id.dissect(buffer, index, packet, parent)

  -- Exchange Trading Session Id Int 32 Null Optional: Int32NULL
  index, exchange_trading_session_id_int_32_null_optional = moex_spectra_futinforeplay_simba_v1_0_4.exchange_trading_session_id_int_32_null_optional.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: TradSesStatus
  index, trad_ses_status = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Market Segment Id: MarketSegmentID
  index, market_segment_id = moex_spectra_futinforeplay_simba_v1_0_4.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Event: TradSesEvent
  index, trad_ses_event = moex_spectra_futinforeplay_simba_v1_0_4.trad_ses_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
moex_spectra_futinforeplay_simba_v1_0_4.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.trading_session_status_message, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Quotation List
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list = {}

-- Calculate size of: Quotation List
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_length.size

  local quotation_list_length = buffer(offset + 0, 2):le_uint()

  if quotation_list_length > 0 then
    -- Parse runtime size of: Quotation List Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Quotation List
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Quotation List
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quotation List Length: uint16
  index, quotation_list_length = moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Quotation List Data
  local quotation_list_data = nil

  local quotation_list_data_exists = quotation_list_length > 0

  if quotation_list_data_exists then

    -- Runtime Size Of: Quotation List Data
    index, quotation_list_data = moex_spectra_futinforeplay_simba_v1_0_4.quotation_list_data.dissect(buffer, index, packet, parent, quotation_list_length)
  end

  -- Composite value
  local quotation_list = quotation_list_data

  return index, quotation_list
end

-- Dissect: Quotation List
moex_spectra_futinforeplay_simba_v1_0_4.quotation_list.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.quotation_list, buffer(offset, 0))
    local index, value = moex_spectra_futinforeplay_simba_v1_0_4.quotation_list.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.quotation_list.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.quotation_list.fields(buffer, offset, packet, parent)
  end
end

-- Security Desc
moex_spectra_futinforeplay_simba_v1_0_4.security_desc = {}

-- Calculate size of: Security Desc
moex_spectra_futinforeplay_simba_v1_0_4.security_desc.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_desc_length.size

  local security_desc_length = buffer(offset + 0, 2):le_uint()

  if security_desc_length > 0 then
    -- Parse runtime size of: Security Desc Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Security Desc
moex_spectra_futinforeplay_simba_v1_0_4.security_desc.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Security Desc
moex_spectra_futinforeplay_simba_v1_0_4.security_desc.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Desc Length: uint16
  index, security_desc_length = moex_spectra_futinforeplay_simba_v1_0_4.security_desc_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Security Desc Data
  local security_desc_data = nil

  local security_desc_data_exists = security_desc_length > 0

  if security_desc_data_exists then

    -- Runtime Size Of: Security Desc Data
    index, security_desc_data = moex_spectra_futinforeplay_simba_v1_0_4.security_desc_data.dissect(buffer, index, packet, parent, security_desc_length)
  end

  -- Composite value
  local security_desc = security_desc_data

  return index, security_desc
end

-- Dissect: Security Desc
moex_spectra_futinforeplay_simba_v1_0_4.security_desc.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_desc, buffer(offset, 0))
    local index, value = moex_spectra_futinforeplay_simba_v1_0_4.security_desc.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_desc.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_desc.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Message No Events Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_group = {}

-- Size: Security Definition Message No Events Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_group.size =
  moex_spectra_futinforeplay_simba_v1_0_4.event_type.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.event_date.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.event_time.size

-- Display: Security Definition Message No Events Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message No Events Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_group.fields = function(buffer, offset, packet, parent, security_definition_message_no_events_group_index)
  local index = offset

  -- Implicit Security Definition Message No Events Group Index
  if security_definition_message_no_events_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_events_group_index, security_definition_message_no_events_group_index)
    iteration:set_generated()
  end

  -- Event Type: Int32
  index, event_type = moex_spectra_futinforeplay_simba_v1_0_4.event_type.dissect(buffer, index, packet, parent)

  -- Event Date: uInt32
  index, event_date = moex_spectra_futinforeplay_simba_v1_0_4.event_date.dissect(buffer, index, packet, parent)

  -- Event Time: uInt64
  index, event_time = moex_spectra_futinforeplay_simba_v1_0_4.event_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message No Events Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_group.dissect = function(buffer, offset, packet, parent, security_definition_message_no_events_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_events_group, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_group.fields(buffer, offset, packet, parent, security_definition_message_no_events_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_group.fields(buffer, offset, packet, parent, security_definition_message_no_events_group_index)
  end
end

-- Group Size
moex_spectra_futinforeplay_simba_v1_0_4.group_size = {}

-- Size: Group Size
moex_spectra_futinforeplay_simba_v1_0_4.group_size.size =
  moex_spectra_futinforeplay_simba_v1_0_4.block_length.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.num_in_group.size

-- Display: Group Size
moex_spectra_futinforeplay_simba_v1_0_4.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
moex_spectra_futinforeplay_simba_v1_0_4.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = moex_spectra_futinforeplay_simba_v1_0_4.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = moex_spectra_futinforeplay_simba_v1_0_4.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
moex_spectra_futinforeplay_simba_v1_0_4.group_size.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.group_size, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.group_size.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Message No Events Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_groups = {}

-- Calculate size of: Security Definition Message No Events Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_groups.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.group_size.size

  -- Calculate field size from count
  local security_definition_message_no_events_group_count = buffer(offset + index - 1, 1):uint()
  index = index + security_definition_message_no_events_group_count * 16

  return index
end

-- Display: Security Definition Message No Events Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message No Events Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = moex_spectra_futinforeplay_simba_v1_0_4.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Security Definition Message No Events Group
  for security_definition_message_no_events_group_index = 1, num_in_group do
    index, security_definition_message_no_events_group = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_group.dissect(buffer, index, packet, parent, security_definition_message_no_events_group_index)
  end

  return index
end

-- Dissect: Security Definition Message No Events Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_events_groups, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Message No Instr Attrib Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_group = {}

-- Size: Security Definition Message No Instr Attrib Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_group.size =
  moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_type.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_value.size

-- Display: Security Definition Message No Instr Attrib Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message No Instr Attrib Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_group.fields = function(buffer, offset, packet, parent, security_definition_message_no_instr_attrib_group_index)
  local index = offset

  -- Implicit Security Definition Message No Instr Attrib Group Index
  if security_definition_message_no_instr_attrib_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_instr_attrib_group_index, security_definition_message_no_instr_attrib_group_index)
    iteration:set_generated()
  end

  -- Instr Attrib Type: Int32
  index, instr_attrib_type = moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_type.dissect(buffer, index, packet, parent)

  -- Instr Attrib Value: String31
  index, instr_attrib_value = moex_spectra_futinforeplay_simba_v1_0_4.instr_attrib_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message No Instr Attrib Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_group.dissect = function(buffer, offset, packet, parent, security_definition_message_no_instr_attrib_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_instr_attrib_group, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_group.fields(buffer, offset, packet, parent, security_definition_message_no_instr_attrib_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_group.fields(buffer, offset, packet, parent, security_definition_message_no_instr_attrib_group_index)
  end
end

-- Security Definition Message No Instr Attrib Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_groups = {}

-- Calculate size of: Security Definition Message No Instr Attrib Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_groups.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.group_size.size

  -- Calculate field size from count
  local security_definition_message_no_instr_attrib_group_count = buffer(offset + index - 1, 1):uint()
  index = index + security_definition_message_no_instr_attrib_group_count * 35

  return index
end

-- Display: Security Definition Message No Instr Attrib Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message No Instr Attrib Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = moex_spectra_futinforeplay_simba_v1_0_4.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Security Definition Message No Instr Attrib Group
  for security_definition_message_no_instr_attrib_group_index = 1, num_in_group do
    index, security_definition_message_no_instr_attrib_group = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_group.dissect(buffer, index, packet, parent, security_definition_message_no_instr_attrib_group_index)
  end

  return index
end

-- Dissect: Security Definition Message No Instr Attrib Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_instr_attrib_groups, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Message No Legs Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_group = {}

-- Size: Security Definition Message No Legs Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_group.size =
  moex_spectra_futinforeplay_simba_v1_0_4.leg_symbol.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.leg_security_id.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.leg_ratio_qty.size

-- Display: Security Definition Message No Legs Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message No Legs Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_group.fields = function(buffer, offset, packet, parent, security_definition_message_no_legs_group_index)
  local index = offset

  -- Implicit Security Definition Message No Legs Group Index
  if security_definition_message_no_legs_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_legs_group_index, security_definition_message_no_legs_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol: String25
  index, leg_symbol = moex_spectra_futinforeplay_simba_v1_0_4.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Security Id: Int32
  index, leg_security_id = moex_spectra_futinforeplay_simba_v1_0_4.leg_security_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: Int32
  index, leg_ratio_qty = moex_spectra_futinforeplay_simba_v1_0_4.leg_ratio_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message No Legs Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_group.dissect = function(buffer, offset, packet, parent, security_definition_message_no_legs_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_legs_group, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_group.fields(buffer, offset, packet, parent, security_definition_message_no_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_group.fields(buffer, offset, packet, parent, security_definition_message_no_legs_group_index)
  end
end

-- Security Definition Message No Legs Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_groups = {}

-- Calculate size of: Security Definition Message No Legs Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.group_size.size

  -- Calculate field size from count
  local security_definition_message_no_legs_group_count = buffer(offset + index - 1, 1):uint()
  index = index + security_definition_message_no_legs_group_count * 33

  return index
end

-- Display: Security Definition Message No Legs Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message No Legs Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = moex_spectra_futinforeplay_simba_v1_0_4.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Security Definition Message No Legs Group
  for security_definition_message_no_legs_group_index = 1, num_in_group do
    index, security_definition_message_no_legs_group = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_group.dissect(buffer, index, packet, parent, security_definition_message_no_legs_group_index)
  end

  return index
end

-- Dissect: Security Definition Message No Legs Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_legs_groups, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Message No Underlyings Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_group = {}

-- Size: Security Definition Message No Underlyings Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_group.size =
  moex_spectra_futinforeplay_simba_v1_0_4.underlying_symbol.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.underlying_security_id.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.underlying_future_id.size

-- Display: Security Definition Message No Underlyings Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message No Underlyings Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_group.fields = function(buffer, offset, packet, parent, security_definition_message_no_underlyings_group_index)
  local index = offset

  -- Implicit Security Definition Message No Underlyings Group Index
  if security_definition_message_no_underlyings_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_underlyings_group_index, security_definition_message_no_underlyings_group_index)
    iteration:set_generated()
  end

  -- Underlying Symbol: String25
  index, underlying_symbol = moex_spectra_futinforeplay_simba_v1_0_4.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Security Id: Int32NULL
  index, underlying_security_id = moex_spectra_futinforeplay_simba_v1_0_4.underlying_security_id.dissect(buffer, index, packet, parent)

  -- Underlying Future Id: Int32NULL
  index, underlying_future_id = moex_spectra_futinforeplay_simba_v1_0_4.underlying_future_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message No Underlyings Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_group.dissect = function(buffer, offset, packet, parent, security_definition_message_no_underlyings_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_underlyings_group, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_group.fields(buffer, offset, packet, parent, security_definition_message_no_underlyings_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_group.fields(buffer, offset, packet, parent, security_definition_message_no_underlyings_group_index)
  end
end

-- Security Definition Message No Underlyings Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_groups = {}

-- Calculate size of: Security Definition Message No Underlyings Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_groups.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.group_size.size

  -- Calculate field size from count
  local security_definition_message_no_underlyings_group_count = buffer(offset + index - 1, 1):uint()
  index = index + security_definition_message_no_underlyings_group_count * 33

  return index
end

-- Display: Security Definition Message No Underlyings Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message No Underlyings Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = moex_spectra_futinforeplay_simba_v1_0_4.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Security Definition Message No Underlyings Group
  for security_definition_message_no_underlyings_group_index = 1, num_in_group do
    index, security_definition_message_no_underlyings_group = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_group.dissect(buffer, index, packet, parent, security_definition_message_no_underlyings_group_index)
  end

  return index
end

-- Dissect: Security Definition Message No Underlyings Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_underlyings_groups, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Message No Md Feed Types Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_group = {}

-- Size: Security Definition Message No Md Feed Types Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_group.size =
  moex_spectra_futinforeplay_simba_v1_0_4.md_feed_type.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.market_depth.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.md_book_type.size

-- Display: Security Definition Message No Md Feed Types Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message No Md Feed Types Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_group.fields = function(buffer, offset, packet, parent, security_definition_message_no_md_feed_types_group_index)
  local index = offset

  -- Implicit Security Definition Message No Md Feed Types Group Index
  if security_definition_message_no_md_feed_types_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_md_feed_types_group_index, security_definition_message_no_md_feed_types_group_index)
    iteration:set_generated()
  end

  -- Md Feed Type: String25
  index, md_feed_type = moex_spectra_futinforeplay_simba_v1_0_4.md_feed_type.dissect(buffer, index, packet, parent)

  -- Market Depth: uInt32NULL
  index, market_depth = moex_spectra_futinforeplay_simba_v1_0_4.market_depth.dissect(buffer, index, packet, parent)

  -- Md Book Type: uInt32NULL
  index, md_book_type = moex_spectra_futinforeplay_simba_v1_0_4.md_book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message No Md Feed Types Group
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_group.dissect = function(buffer, offset, packet, parent, security_definition_message_no_md_feed_types_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_md_feed_types_group, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_group.fields(buffer, offset, packet, parent, security_definition_message_no_md_feed_types_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_group.fields(buffer, offset, packet, parent, security_definition_message_no_md_feed_types_group_index)
  end
end

-- Security Definition Message No Md Feed Types Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_groups = {}

-- Calculate size of: Security Definition Message No Md Feed Types Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_groups.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.group_size.size

  -- Calculate field size from count
  local security_definition_message_no_md_feed_types_group_count = buffer(offset + index - 1, 1):uint()
  index = index + security_definition_message_no_md_feed_types_group_count * 33

  return index
end

-- Display: Security Definition Message No Md Feed Types Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message No Md Feed Types Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = moex_spectra_futinforeplay_simba_v1_0_4.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Security Definition Message No Md Feed Types Group
  for security_definition_message_no_md_feed_types_group_index = 1, num_in_group do
    index, security_definition_message_no_md_feed_types_group = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_group.dissect(buffer, index, packet, parent, security_definition_message_no_md_feed_types_group_index)
  end

  return index
end

-- Dissect: Security Definition Message No Md Feed Types Groups
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message_no_md_feed_types_groups, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_groups.fields(buffer, offset, packet, parent)
  end
end

-- Flags
moex_spectra_futinforeplay_simba_v1_0_4.flags = {}

-- Size: Flags
moex_spectra_futinforeplay_simba_v1_0_4.flags.size = 8

-- Display: Flags
moex_spectra_futinforeplay_simba_v1_0_4.flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Evening Or Morning Session flag set?
  if value:band(0x0000000000000001) ~= UInt64(0) then
    flags[#flags + 1] = "Evening Or Morning Session"
  end
  -- Is Anonymous Trading flag set?
  if value:band(0x0000000000000010) ~= UInt64(0) then
    flags[#flags + 1] = "Anonymous Trading"
  end
  -- Is Private Trading flag set?
  if value:band(0x0000000000000020) ~= UInt64(0) then
    flags[#flags + 1] = "Private Trading"
  end
  -- Is Day Session flag set?
  if value:band(0x0000000000000040) ~= UInt64(0) then
    flags[#flags + 1] = "Day Session"
  end
  -- Is Multi Leg flag set?
  if value:band(0x0000000000000100) ~= UInt64(0) then
    flags[#flags + 1] = "Multi Leg"
  end
  -- Is Collateral flag set?
  if value:band(0x0000000000040000) ~= UInt64(0) then
    flags[#flags + 1] = "Collateral"
  end
  -- Is Intraday Exercise flag set?
  if value:band(0x0000000000080000) ~= UInt64(0) then
    flags[#flags + 1] = "Intraday Exercise"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags
moex_spectra_futinforeplay_simba_v1_0_4.flags.bits = function(range, value, packet, parent)

  -- Evening Or Morning Session: 1 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.evening_or_morning_session, range, value)

  -- Unused 3: 3 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.unused_3, range, value)

  -- Anonymous Trading: 1 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.anonymous_trading, range, value)

  -- Private Trading: 1 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.private_trading, range, value)

  -- Day Session: 1 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.day_session, range, value)

  -- Unused 1: 1 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.unused_1, range, value)

  -- Multi Leg: 1 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.multi_leg, range, value)

  -- Unused 9: 9 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.unused_9, range, value)

  -- Collateral: 1 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.collateral, range, value)

  -- Intraday Exercise: 1 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.intraday_exercise, range, value)

  -- Reserved 44: 44 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.reserved_44, range, value)
end

-- Dissect: Flags
moex_spectra_futinforeplay_simba_v1_0_4.flags.dissect = function(buffer, offset, packet, parent)
  local size = moex_spectra_futinforeplay_simba_v1_0_4.flags.size
  local range = buffer(offset, size)
  local value = range:le_uint64()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.flags, range, display)

  if show.structs then
    moex_spectra_futinforeplay_simba_v1_0_4.flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Definition Message
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message = {}

-- Calculate size of: Security Definition Message
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.tot_num_reports.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.symbol.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_id.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id_source.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_type.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.cfi_code.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.strike_price.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.contract_multiplier.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_trading_status.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.currency.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.market_segment_id.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.exchange_trading_session_id_int_32_null_optional.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.volatility.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.high_limit_px.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.low_limit_px.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_buy.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_sell.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_syntetic.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.theor_price.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.theor_price_limit.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.underlying_qty.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.underlying_currency.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.maturity_date.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.maturity_time.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.flags.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount_curr.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.settl_price_open.size

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_groups.size(buffer, offset + index)

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_groups.size(buffer, offset + index)

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_groups.size(buffer, offset + index)

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_groups.size(buffer, offset + index)

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_groups.size(buffer, offset + index)

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.security_desc.size(buffer, offset + index)

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.quotation_list.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Message
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tot Num Reports: uInt32
  index, tot_num_reports = moex_spectra_futinforeplay_simba_v1_0_4.tot_num_reports.dissect(buffer, index, packet, parent)

  -- Symbol: String25
  index, symbol = moex_spectra_futinforeplay_simba_v1_0_4.symbol.dissect(buffer, index, packet, parent)

  -- Security Id: Int32
  index, security_id = moex_spectra_futinforeplay_simba_v1_0_4.security_id.dissect(buffer, index, packet, parent)

  -- Security Alt Id: String25
  index, security_alt_id = moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id.dissect(buffer, index, packet, parent)

  -- Security Alt Id Source: SecurityAltIDSource
  index, security_alt_id_source = moex_spectra_futinforeplay_simba_v1_0_4.security_alt_id_source.dissect(buffer, index, packet, parent)

  -- Security Type: String4
  index, security_type = moex_spectra_futinforeplay_simba_v1_0_4.security_type.dissect(buffer, index, packet, parent)

  -- Cfi Code: String6
  index, cfi_code = moex_spectra_futinforeplay_simba_v1_0_4.cfi_code.dissect(buffer, index, packet, parent)

  -- Strike Price: Decimal5NULL
  index, strike_price = moex_spectra_futinforeplay_simba_v1_0_4.strike_price.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: Int32NULL
  index, contract_multiplier = moex_spectra_futinforeplay_simba_v1_0_4.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatus
  index, security_trading_status = moex_spectra_futinforeplay_simba_v1_0_4.security_trading_status.dissect(buffer, index, packet, parent)

  -- Currency: String3
  index, currency = moex_spectra_futinforeplay_simba_v1_0_4.currency.dissect(buffer, index, packet, parent)

  -- Market Segment Id: MarketSegmentID
  index, market_segment_id = moex_spectra_futinforeplay_simba_v1_0_4.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trading Session Id: TradingSessionID
  index, trading_session_id = moex_spectra_futinforeplay_simba_v1_0_4.trading_session_id.dissect(buffer, index, packet, parent)

  -- Exchange Trading Session Id Int 32 Null Optional: Int32NULL
  index, exchange_trading_session_id_int_32_null_optional = moex_spectra_futinforeplay_simba_v1_0_4.exchange_trading_session_id_int_32_null_optional.dissect(buffer, index, packet, parent)

  -- Volatility: Decimal5NULL
  index, volatility = moex_spectra_futinforeplay_simba_v1_0_4.volatility.dissect(buffer, index, packet, parent)

  -- High Limit Px: Decimal5NULL
  index, high_limit_px = moex_spectra_futinforeplay_simba_v1_0_4.high_limit_px.dissect(buffer, index, packet, parent)

  -- Low Limit Px: Decimal5NULL
  index, low_limit_px = moex_spectra_futinforeplay_simba_v1_0_4.low_limit_px.dissect(buffer, index, packet, parent)

  -- Min Price Increment: Decimal5NULL
  index, min_price_increment = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount: Decimal5NULL
  index, min_price_increment_amount = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount.dissect(buffer, index, packet, parent)

  -- Initial Margin On Buy: Decimal2NULL
  index, initial_margin_on_buy = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_buy.dissect(buffer, index, packet, parent)

  -- Initial Margin On Sell: Decimal2NULL
  index, initial_margin_on_sell = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_on_sell.dissect(buffer, index, packet, parent)

  -- Initial Margin Syntetic: Decimal2NULL
  index, initial_margin_syntetic = moex_spectra_futinforeplay_simba_v1_0_4.initial_margin_syntetic.dissect(buffer, index, packet, parent)

  -- Theor Price: Decimal5NULL
  index, theor_price = moex_spectra_futinforeplay_simba_v1_0_4.theor_price.dissect(buffer, index, packet, parent)

  -- Theor Price Limit: Decimal5NULL
  index, theor_price_limit = moex_spectra_futinforeplay_simba_v1_0_4.theor_price_limit.dissect(buffer, index, packet, parent)

  -- Underlying Qty: Decimal5NULL
  index, underlying_qty = moex_spectra_futinforeplay_simba_v1_0_4.underlying_qty.dissect(buffer, index, packet, parent)

  -- Underlying Currency: String3
  index, underlying_currency = moex_spectra_futinforeplay_simba_v1_0_4.underlying_currency.dissect(buffer, index, packet, parent)

  -- Maturity Date: uInt32NULL
  index, maturity_date = moex_spectra_futinforeplay_simba_v1_0_4.maturity_date.dissect(buffer, index, packet, parent)

  -- Maturity Time: uInt32NULL
  index, maturity_time = moex_spectra_futinforeplay_simba_v1_0_4.maturity_time.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 11 fields
  index, flags = moex_spectra_futinforeplay_simba_v1_0_4.flags.dissect(buffer, index, packet, parent)

  -- Min Price Increment Amount Curr: Decimal5NULL
  index, min_price_increment_amount_curr = moex_spectra_futinforeplay_simba_v1_0_4.min_price_increment_amount_curr.dissect(buffer, index, packet, parent)

  -- Settl Price Open: Decimal5NULL
  index, settl_price_open = moex_spectra_futinforeplay_simba_v1_0_4.settl_price_open.dissect(buffer, index, packet, parent)

  -- Security Definition Message No Md Feed Types Groups: Struct of 2 fields
  index, security_definition_message_no_md_feed_types_groups = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_md_feed_types_groups.dissect(buffer, index, packet, parent)

  -- Security Definition Message No Underlyings Groups: Struct of 2 fields
  index, security_definition_message_no_underlyings_groups = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_underlyings_groups.dissect(buffer, index, packet, parent)

  -- Security Definition Message No Legs Groups: Struct of 2 fields
  index, security_definition_message_no_legs_groups = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_legs_groups.dissect(buffer, index, packet, parent)

  -- Security Definition Message No Instr Attrib Groups: Struct of 2 fields
  index, security_definition_message_no_instr_attrib_groups = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_instr_attrib_groups.dissect(buffer, index, packet, parent)

  -- Security Definition Message No Events Groups: Struct of 2 fields
  index, security_definition_message_no_events_groups = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message_no_events_groups.dissect(buffer, index, packet, parent)

  -- Security Desc: Struct of 2 fields
  index, security_desc = moex_spectra_futinforeplay_simba_v1_0_4.security_desc.dissect(buffer, index, packet, parent)

  -- Quotation List: Struct of 2 fields
  index, quotation_list = moex_spectra_futinforeplay_simba_v1_0_4.quotation_list.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message
moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.security_definition_message, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
moex_spectra_futinforeplay_simba_v1_0_4.sequence_reset_message = {}

-- Size: Sequence Reset Message
moex_spectra_futinforeplay_simba_v1_0_4.sequence_reset_message.size =
  moex_spectra_futinforeplay_simba_v1_0_4.new_seq_no.size

-- Display: Sequence Reset Message
moex_spectra_futinforeplay_simba_v1_0_4.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
moex_spectra_futinforeplay_simba_v1_0_4.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: uInt32
  index, new_seq_no = moex_spectra_futinforeplay_simba_v1_0_4.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
moex_spectra_futinforeplay_simba_v1_0_4.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.sequence_reset_message, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
moex_spectra_futinforeplay_simba_v1_0_4.heartbeat_message = {}

-- Display: Heartbeat Message
moex_spectra_futinforeplay_simba_v1_0_4.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
moex_spectra_futinforeplay_simba_v1_0_4.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = moex_spectra_futinforeplay_simba_v1_0_4.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
moex_spectra_futinforeplay_simba_v1_0_4.payload = {}

-- Dispatch: Payload
moex_spectra_futinforeplay_simba_v1_0_4.payload.dispatch = {
  [1] = moex_spectra_futinforeplay_simba_v1_0_4.heartbeat_message.dissect,
  [2] = moex_spectra_futinforeplay_simba_v1_0_4.sequence_reset_message.dissect,
  [8] = moex_spectra_futinforeplay_simba_v1_0_4.security_definition_message.dissect,
  [11] = moex_spectra_futinforeplay_simba_v1_0_4.trading_session_status_message.dissect,
}

-- Dissect: Payload
moex_spectra_futinforeplay_simba_v1_0_4.payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = moex_spectra_futinforeplay_simba_v1_0_4.payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sbe Header
moex_spectra_futinforeplay_simba_v1_0_4.sbe_header = {}

-- Size: Sbe Header
moex_spectra_futinforeplay_simba_v1_0_4.sbe_header.size =
  moex_spectra_futinforeplay_simba_v1_0_4.block_length.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.template_id.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.schema_id.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.version.size

-- Display: Sbe Header
moex_spectra_futinforeplay_simba_v1_0_4.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
moex_spectra_futinforeplay_simba_v1_0_4.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = moex_spectra_futinforeplay_simba_v1_0_4.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, template_id = moex_spectra_futinforeplay_simba_v1_0_4.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = moex_spectra_futinforeplay_simba_v1_0_4.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = moex_spectra_futinforeplay_simba_v1_0_4.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
moex_spectra_futinforeplay_simba_v1_0_4.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.sbe_header, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
moex_spectra_futinforeplay_simba_v1_0_4.message = {}

-- Calculate size of: Message
moex_spectra_futinforeplay_simba_v1_0_4.message.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinforeplay_simba_v1_0_4.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + moex_spectra_futinforeplay_simba_v1_0_4.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
moex_spectra_futinforeplay_simba_v1_0_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
moex_spectra_futinforeplay_simba_v1_0_4.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = moex_spectra_futinforeplay_simba_v1_0_4.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = moex_spectra_futinforeplay_simba_v1_0_4.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
moex_spectra_futinforeplay_simba_v1_0_4.message.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.message, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.message.fields(buffer, offset, packet, parent)
  end
end

-- Msg Flags
moex_spectra_futinforeplay_simba_v1_0_4.msg_flags = {}

-- Size: Msg Flags
moex_spectra_futinforeplay_simba_v1_0_4.msg_flags.size = 2

-- Display: Msg Flags
moex_spectra_futinforeplay_simba_v1_0_4.msg_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Last Fragment flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Last Fragment"
  end
  -- Is Start Of Snapshot flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Start Of Snapshot"
  end
  -- Is End Of Snapshot flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "End Of Snapshot"
  end
  -- Is Incremental Packet flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Incremental Packet"
  end
  -- Is Poss Dup Flag flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Poss Dup Flag"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Msg Flags
moex_spectra_futinforeplay_simba_v1_0_4.msg_flags.bits = function(range, value, packet, parent)

  -- Last Fragment: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.last_fragment, range, value)

  -- Start Of Snapshot: 1 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.start_of_snapshot, range, value)

  -- End Of Snapshot: 1 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.end_of_snapshot, range, value)

  -- Incremental Packet: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.incremental_packet, range, value)

  -- Poss Dup Flag: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.poss_dup_flag, range, value)

  -- Reserved Bits: 11 Bit
  parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.reserved_bits, range, value)
end

-- Dissect: Msg Flags
moex_spectra_futinforeplay_simba_v1_0_4.msg_flags.dissect = function(buffer, offset, packet, parent)
  local size = moex_spectra_futinforeplay_simba_v1_0_4.msg_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = moex_spectra_futinforeplay_simba_v1_0_4.msg_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.msg_flags, range, display)

  if show.structs then
    moex_spectra_futinforeplay_simba_v1_0_4.msg_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Data Packet Header
moex_spectra_futinforeplay_simba_v1_0_4.market_data_packet_header = {}

-- Size: Market Data Packet Header
moex_spectra_futinforeplay_simba_v1_0_4.market_data_packet_header.size =
  moex_spectra_futinforeplay_simba_v1_0_4.msg_seq_num.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.msg_size.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.msg_flags.size + 
  moex_spectra_futinforeplay_simba_v1_0_4.sending_time.size

-- Display: Market Data Packet Header
moex_spectra_futinforeplay_simba_v1_0_4.market_data_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Packet Header
moex_spectra_futinforeplay_simba_v1_0_4.market_data_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32
  index, msg_seq_num = moex_spectra_futinforeplay_simba_v1_0_4.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Msg Size: uint16
  index, msg_size = moex_spectra_futinforeplay_simba_v1_0_4.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Flags: Struct of 6 fields
  index, msg_flags = moex_spectra_futinforeplay_simba_v1_0_4.msg_flags.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64
  index, sending_time = moex_spectra_futinforeplay_simba_v1_0_4.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Packet Header
moex_spectra_futinforeplay_simba_v1_0_4.market_data_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4.fields.market_data_packet_header, buffer(offset, 0))
    local index = moex_spectra_futinforeplay_simba_v1_0_4.market_data_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinforeplay_simba_v1_0_4.market_data_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinforeplay_simba_v1_0_4.market_data_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
moex_spectra_futinforeplay_simba_v1_0_4.udp_packet = {}

-- Verify required size of Udp packet
moex_spectra_futinforeplay_simba_v1_0_4.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= moex_spectra_futinforeplay_simba_v1_0_4.market_data_packet_header.size + moex_spectra_futinforeplay_simba_v1_0_4.sbe_header.size
end

-- Dissect Udp Packet
moex_spectra_futinforeplay_simba_v1_0_4.udp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Market Data Packet Header: Struct of 4 fields
  index, market_data_packet_header = moex_spectra_futinforeplay_simba_v1_0_4.market_data_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = moex_spectra_futinforeplay_simba_v1_0_4.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_moex_spectra_futinforeplay_simba_v1_0_4.init()
end

-- Dissector for Moex Spectra FutInfoReplay Simba 1.0.4
function omi_moex_spectra_futinforeplay_simba_v1_0_4.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_moex_spectra_futinforeplay_simba_v1_0_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_moex_spectra_futinforeplay_simba_v1_0_4, buffer(), omi_moex_spectra_futinforeplay_simba_v1_0_4.description, "("..buffer:len().." Bytes)")
  return moex_spectra_futinforeplay_simba_v1_0_4.udp_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Udp Packet: would its message dispatch accept this frame?
moex_spectra_futinforeplay_simba_v1_0_4.udp_packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local template_id = buffer(18, 2):le_uint()

  -- Heartbeat Message
  if template_id == 1 then
    return true
  end

  -- Sequence Reset Message
  if template_id == 2 then
    return true
  end

  -- Security Definition Message
  if template_id == 8 then
    return true
  end

  -- Trading Session Status Message
  if template_id == 11 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
moex_spectra_futinforeplay_simba_v1_0_4.schema_id.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 20 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 19780 then
    return true
  end

  return false
end

-- Verify Version Field
moex_spectra_futinforeplay_simba_v1_0_4.version.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 22 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(22, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Moex Spectra FutInfoReplay Simba 1.0.4 (Udp)
local function omi_moex_spectra_futinforeplay_simba_v1_0_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not moex_spectra_futinforeplay_simba_v1_0_4.udp_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not moex_spectra_futinforeplay_simba_v1_0_4.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not moex_spectra_futinforeplay_simba_v1_0_4.version.verify(buffer) then return false end

  -- Verify the frame matches this udp udp packet message dispatch
  if not moex_spectra_futinforeplay_simba_v1_0_4.udp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_moex_spectra_futinforeplay_simba_v1_0_4
  omi_moex_spectra_futinforeplay_simba_v1_0_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Moex Spectra FutInfoReplay Simba 1.0.4
omi_moex_spectra_futinforeplay_simba_v1_0_4:register_heuristic("udp", omi_moex_spectra_futinforeplay_simba_v1_0_4_udp_heuristic)

-- Register Moex Spectra FutInfoReplay Simba 1.0.4 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_moex_spectra_futinforeplay_simba_v1_0_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Moscow Exchange
--   Version: 1.0.4
--   Since: 1.0.0
--   Date: Wednesday, November 10, 2021
--   Specification: spectra_simba_en.pdf
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
