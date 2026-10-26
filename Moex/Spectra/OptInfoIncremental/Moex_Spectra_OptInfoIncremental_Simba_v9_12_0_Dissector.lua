-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Moex Spectra OptInfoIncremental Simba 9.12.0 Protocol
local omi_moex_spectra_optinfoincremental_simba_v9_12_0 = Proto("Omi.Moex.Spectra.OptInfoIncremental.Simba.v9.12.0", "Moex Spectra OptInfoIncremental Simba 9.12.0")

-- Protocol table
local moex_spectra_optinfoincremental_simba_v9_12_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Moex Spectra OptInfoIncremental Simba 9.12.0 Fields
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.base_contract_id_int_32_null_optional = ProtoField.new("Base Contract Id Int 32 Null optional", "moex.spectra.optinfoincremental.simba.v9.12.0.basecontractidint32nulloptional", ftypes.INT32, nil, nil, nil, "BaseContractID")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.block_length = ProtoField.new("Block Length", "moex.spectra.optinfoincremental.simba.v9.12.0.blocklength", ftypes.UINT16, nil, nil, nil, "blockLength")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.clr_sess_begin = ProtoField.new("Clr Sess Begin", "moex.spectra.optinfoincremental.simba.v9.12.0.clrsessbegin", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "ClrSessBegin")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.clr_sess_begin_utc = ProtoField.new("Clr Sess Begin", "moex.spectra.optinfoincremental.simba.v9.12.0.clrsessbegin.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "ClrSessBegin")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.end_of_snapshot = ProtoField.new("End Of Snapshot", "moex.spectra.optinfoincremental.simba.v9.12.0.endofsnapshot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "EndOfSnapshot")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.exchange_trading_session_id = ProtoField.new("Exchange Trading Session Id", "moex.spectra.optinfoincremental.simba.v9.12.0.exchangetradingsessionid", ftypes.UINT32, nil, nil, nil, "ExchangeTradingSessionID")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.exchange_trading_session_id_int_32_null_optional = ProtoField.new("Exchange Trading Session Id Int 32 Null optional", "moex.spectra.optinfoincremental.simba.v9.12.0.exchangetradingsessionidint32nulloptional", ftypes.INT32, nil, nil, nil, "ExchangeTradingSessionID")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.group_mask_int_64_null_optional = ProtoField.new("Group Mask Int 64 Null optional", "moex.spectra.optinfoincremental.simba.v9.12.0.groupmaskint64nulloptional", ftypes.INT64, nil, nil, nil, "GroupMask")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.group_size_2 = ProtoField.new("Group Size 2", "moex.spectra.optinfoincremental.simba.v9.12.0.groupsize2", ftypes.STRING, nil, nil, nil, "groupSize2")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.halt_type = ProtoField.new("Halt Type", "moex.spectra.optinfoincremental.simba.v9.12.0.halttype", ftypes.UINT8, nil, nil, nil, "HaltType")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.high_limit_px = ProtoField.new("High Limit Px", "moex.spectra.optinfoincremental.simba.v9.12.0.highlimitpx", ftypes.DOUBLE, nil, nil, nil, "HighLimitPx")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.high_limit_px_weekend = ProtoField.new("High Limit Px Weekend", "moex.spectra.optinfoincremental.simba.v9.12.0.highlimitpxweekend", ftypes.DOUBLE, nil, nil, nil, "HighLimitPxWeekend")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.incremental_packet = ProtoField.new("Incremental Packet", "moex.spectra.optinfoincremental.simba.v9.12.0.incrementalpacket", ftypes.UINT16, {[0]="Snapshot Packet", [1]="Incremental Packet"}, base.DEC, 0x0008, "IncrementalPacket")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.incremental_packet_header = ProtoField.new("Incremental Packet Header", "moex.spectra.optinfoincremental.simba.v9.12.0.incrementalpacketheader", ftypes.STRING, nil, nil, nil, "MarketDataDummyMessage")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.initial_margin_on_buy = ProtoField.new("Initial Margin On Buy", "moex.spectra.optinfoincremental.simba.v9.12.0.initialmarginonbuy", ftypes.DOUBLE, nil, nil, nil, "InitialMarginOnBuy")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.initial_margin_on_sell = ProtoField.new("Initial Margin On Sell", "moex.spectra.optinfoincremental.simba.v9.12.0.initialmarginonsell", ftypes.DOUBLE, nil, nil, nil, "InitialMarginOnSell")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.initial_margin_syntetic = ProtoField.new("Initial Margin Syntetic", "moex.spectra.optinfoincremental.simba.v9.12.0.initialmarginsyntetic", ftypes.DOUBLE, nil, nil, nil, "InitialMarginSyntetic")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.last_fragment = ProtoField.new("Last Fragment", "moex.spectra.optinfoincremental.simba.v9.12.0.lastfragment", ftypes.UINT16, {[0]="Fragment", [1]="Last Fragment"}, base.DEC, 0x0001, "LastFragment")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.low_limit_px = ProtoField.new("Low Limit Px", "moex.spectra.optinfoincremental.simba.v9.12.0.lowlimitpx", ftypes.DOUBLE, nil, nil, nil, "LowLimitPx")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.low_limit_px_weekend = ProtoField.new("Low Limit Px Weekend", "moex.spectra.optinfoincremental.simba.v9.12.0.lowlimitpxweekend", ftypes.DOUBLE, nil, nil, nil, "LowLimitPxWeekend")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.market_data_packet_header = ProtoField.new("Market Data Packet Header", "moex.spectra.optinfoincremental.simba.v9.12.0.marketdatapacketheader", ftypes.STRING, nil, nil, nil, "MarketDataDummyMessage")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.market_segment_id = ProtoField.new("Market Segment Id", "moex.spectra.optinfoincremental.simba.v9.12.0.marketsegmentid", ftypes.STRING, nil, nil, nil, "MarketSegmentID")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.msg_flags = ProtoField.new("Msg Flags", "moex.spectra.optinfoincremental.simba.v9.12.0.msgflags", ftypes.STRING, nil, nil, nil, "Message flags, least significant bit first, as the schema's MsgFlagsSet declares them")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "moex.spectra.optinfoincremental.simba.v9.12.0.msgseqnum", ftypes.UINT32, nil, nil, nil, "MsgSeqNum")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.msg_size = ProtoField.new("Msg Size", "moex.spectra.optinfoincremental.simba.v9.12.0.msgsize", ftypes.UINT16, nil, nil, nil, "MsgSize")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.new_seq_no = ProtoField.new("New Seq No", "moex.spectra.optinfoincremental.simba.v9.12.0.newseqno", ftypes.UINT32, nil, nil, nil, "NewSeqNo")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.num_in_group_uint_16 = ProtoField.new("Num In Group uint 16", "moex.spectra.optinfoincremental.simba.v9.12.0.numingroupuint16", ftypes.UINT16, nil, nil, nil, "numInGroup")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.poss_dup_flag = ProtoField.new("Poss Dup Flag", "moex.spectra.optinfoincremental.simba.v9.12.0.possdupflag", ftypes.UINT16, {[0]="Online Updates", [1]="Full Order Books"}, base.DEC, 0x0010, "PossDupFlag")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.reserved_bits = ProtoField.new("Reserved Bits", "moex.spectra.optinfoincremental.simba.v9.12.0.reservedbits", ftypes.UINT16, nil, base.DEC, 0xFFE0, "Bits the schema's MsgFlagsSet leaves unused")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.schema_id = ProtoField.new("Schema Id", "moex.spectra.optinfoincremental.simba.v9.12.0.schemaid", ftypes.UINT16, nil, nil, nil, "Message schema identifier")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.section_id_int_32_null_optional = ProtoField.new("Section Id Int 32 Null optional", "moex.spectra.optinfoincremental.simba.v9.12.0.sectionidint32nulloptional", ftypes.INT32, nil, nil, nil, "SectionID")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_group_id = ProtoField.new("Security Group Id", "moex.spectra.optinfoincremental.simba.v9.12.0.securitygroupid", ftypes.INT64, nil, nil, nil, "SecurityGroupID")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_id = ProtoField.new("Security Id", "moex.spectra.optinfoincremental.simba.v9.12.0.securityid", ftypes.INT32, nil, nil, nil, "SecurityID")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_mass_status_message_no_related_sym_group = ProtoField.new("Security Mass Status Message No Related Sym Group", "moex.spectra.optinfoincremental.simba.v9.12.0.securitymassstatusmessagenorelatedsymgroup", ftypes.STRING, nil, nil, nil, "NoRelatedSym")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_mass_status_message_no_related_sym_groups = ProtoField.new("Security Mass Status Message No Related Sym Groups", "moex.spectra.optinfoincremental.simba.v9.12.0.securitymassstatusmessagenorelatedsymgroups", ftypes.STRING, nil, nil, nil, "NoRelatedSym Block")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_trading_status = ProtoField.new("Security Trading Status", "moex.spectra.optinfoincremental.simba.v9.12.0.securitytradingstatus", ftypes.UINT8, nil, nil, nil, "SecurityTradingStatus")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.sending_time = ProtoField.new("Sending Time", "moex.spectra.optinfoincremental.simba.v9.12.0.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "SendingTime")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.sending_time_utc = ProtoField.new("Sending Time", "moex.spectra.optinfoincremental.simba.v9.12.0.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "SendingTime")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.settl_sess_begin = ProtoField.new("Settl Sess Begin", "moex.spectra.optinfoincremental.simba.v9.12.0.settlsessbegin", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "SettlSessBegin")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.settl_sess_begin_utc = ProtoField.new("Settl Sess Begin", "moex.spectra.optinfoincremental.simba.v9.12.0.settlsessbegin.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "SettlSessBegin")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.start_of_snapshot = ProtoField.new("Start Of Snapshot", "moex.spectra.optinfoincremental.simba.v9.12.0.startofsnapshot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "StartOfSnapshot")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.status_change_time = ProtoField.new("Status Change Time", "moex.spectra.optinfoincremental.simba.v9.12.0.statuschangetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TransactTime")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.status_change_time_utc = ProtoField.new("Status Change Time", "moex.spectra.optinfoincremental.simba.v9.12.0.statuschangetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TransactTime")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.symbol = ProtoField.new("Symbol", "moex.spectra.optinfoincremental.simba.v9.12.0.symbol", ftypes.STRING)
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.template_id = ProtoField.new("Template Id", "moex.spectra.optinfoincremental.simba.v9.12.0.templateid", ftypes.UINT16, nil, nil, nil, "Message template identifier")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.theor_price = ProtoField.new("Theor Price", "moex.spectra.optinfoincremental.simba.v9.12.0.theorprice", ftypes.DOUBLE, nil, nil, nil, "TheorPrice")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.theor_price_limit = ProtoField.new("Theor Price Limit", "moex.spectra.optinfoincremental.simba.v9.12.0.theorpricelimit", ftypes.DOUBLE, nil, nil, nil, "TheorPriceLimit")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_close_time = ProtoField.new("Trad Ses Close Time", "moex.spectra.optinfoincremental.simba.v9.12.0.tradsesclosetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TradSesCloseTime")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_close_time_utc = ProtoField.new("Trad Ses Close Time", "moex.spectra.optinfoincremental.simba.v9.12.0.tradsesclosetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TradSesCloseTime")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "moex.spectra.optinfoincremental.simba.v9.12.0.tradsesevent", ftypes.UINT8, nil, nil, nil, "TradSesEvent")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_open_time = ProtoField.new("Trad Ses Open Time", "moex.spectra.optinfoincremental.simba.v9.12.0.tradsesopentime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TradSesOpenTime")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_open_time_utc = ProtoField.new("Trad Ses Open Time", "moex.spectra.optinfoincremental.simba.v9.12.0.tradsesopentime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TradSesOpenTime")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "moex.spectra.optinfoincremental.simba.v9.12.0.tradsesstatus", ftypes.UINT8, nil, nil, nil, "TradSesStatus")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trade_mode_mask = ProtoField.new("Trade Mode Mask", "moex.spectra.optinfoincremental.simba.v9.12.0.trademodemask", ftypes.INT32, nil, nil, nil, "TradeModeMask")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trade_period_id = ProtoField.new("Trade Period Id", "moex.spectra.optinfoincremental.simba.v9.12.0.tradeperiodid", ftypes.INT64, nil, nil, nil, "TradePeriodID")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "moex.spectra.optinfoincremental.simba.v9.12.0.tradingsessionid", ftypes.UINT8, nil, nil, nil, "TradingSessionID")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.transact_time = ProtoField.new("Transact Time", "moex.spectra.optinfoincremental.simba.v9.12.0.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TransactTime")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.transact_time_utc = ProtoField.new("Transact Time", "moex.spectra.optinfoincremental.simba.v9.12.0.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TransactTime")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.version = ProtoField.new("Version", "moex.spectra.optinfoincremental.simba.v9.12.0.version", ftypes.UINT16, nil, nil, nil, "Message schema version")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.volatility = ProtoField.new("Volatility", "moex.spectra.optinfoincremental.simba.v9.12.0.volatility", ftypes.DOUBLE)

-- Moex Spectra OptInfoIncremental Simba 9.12.0 Framing
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.message = ProtoField.new("Message", "moex.spectra.optinfoincremental.simba.v9.12.0.message", ftypes.STRING, nil, nil, nil, "Moex Simba Market Data Message")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.sbe_header = ProtoField.new("Sbe Header", "moex.spectra.optinfoincremental.simba.v9.12.0.sbeheader", ftypes.STRING, nil, nil, nil, "Root block length, message template id, message schema id and schema version")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.udp_packet = ProtoField.new("Udp Packet", "moex.spectra.optinfoincremental.simba.v9.12.0.udppacket", ftypes.STRING, nil, nil, nil, "Moex Simba Incremental Packet")

-- Moex Spectra OptInfoIncremental 9.12.0 Application Messages
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "moex.spectra.optinfoincremental.simba.v9.12.0.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "HeartbeatMessage")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_definition_update_report_message = ProtoField.new("Security Definition Update Report Message", "moex.spectra.optinfoincremental.simba.v9.12.0.securitydefinitionupdatereportmessage", ftypes.STRING, nil, nil, nil, "SecurityDefinitionUpdateReportMessage")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_group_status_message = ProtoField.new("Security Group Status Message", "moex.spectra.optinfoincremental.simba.v9.12.0.securitygroupstatusmessage", ftypes.STRING, nil, nil, nil, "SecurityGroupStatusMessage")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_mass_status_message = ProtoField.new("Security Mass Status Message", "moex.spectra.optinfoincremental.simba.v9.12.0.securitymassstatusmessage", ftypes.STRING, nil, nil, nil, "SecurityMassStatusMessage")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_status_message = ProtoField.new("Security Status Message", "moex.spectra.optinfoincremental.simba.v9.12.0.securitystatusmessage", ftypes.STRING, nil, nil, nil, "SecurityStatusMessage")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "moex.spectra.optinfoincremental.simba.v9.12.0.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "SequenceResetMessage")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "moex.spectra.optinfoincremental.simba.v9.12.0.tradingsessionstatusmessage", ftypes.STRING, nil, nil, nil, "TradingSessionStatusMessage")

-- Moex Spectra OptInfoIncremental Simba 9.12.0 Generated Fields
omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_mass_status_message_no_related_sym_group_index = ProtoField.new("Security Mass Status Message No Related Sym Group Index", "moex.spectra.optinfoincremental.simba.v9.12.0.securitymassstatusmessagenorelatedsymgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Moex Spectra OptInfoIncremental Simba 9.12.0 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
moex_spectra_optinfoincremental_simba_v9_12_0.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Moex Spectra OptInfoIncremental Simba 9.12.0 Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true
show.repeating_groups = true
show.indexes = true

-- Register Moex Spectra OptInfoIncremental Simba 9.12.0 Show Options
omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_application_messages then
    show.application_messages = omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_application_messages
  end
  if show.headers ~= omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_headers then
    show.headers = omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_repeating_groups
  end
  if show.structs ~= omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_structs then
    show.structs = omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_structs
  end
  if show.indexes ~= omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_indexes then
    show.indexes = omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.show_indexes
  end
  if moex_spectra_optinfoincremental_simba_v9_12_0.absolute_time_base ~= omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.absolute_time_base then
    moex_spectra_optinfoincremental_simba_v9_12_0.absolute_time_base = omi_moex_spectra_optinfoincremental_simba_v9_12_0.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Moex Spectra OptInfoIncremental Simba 9.12.0 Fields
-----------------------------------------------------------------------

-- Base Contract Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.base_contract_id_int_32_null_optional = {}

-- Size: Base Contract Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.base_contract_id_int_32_null_optional.size = 4

-- Display: Base Contract Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.base_contract_id_int_32_null_optional.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Base Contract Id Int 32 Null optional: No Value"
  end

  return "Base Contract Id Int 32 Null optional: "..value
end

-- Dissect: Base Contract Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.base_contract_id_int_32_null_optional.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.base_contract_id_int_32_null_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.base_contract_id_int_32_null_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.base_contract_id_int_32_null_optional, range, value, display)

  return offset + length, value
end

-- Block Length
moex_spectra_optinfoincremental_simba_v9_12_0.block_length = {}

-- Size: Block Length
moex_spectra_optinfoincremental_simba_v9_12_0.block_length.size = 2

-- Display: Block Length
moex_spectra_optinfoincremental_simba_v9_12_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
moex_spectra_optinfoincremental_simba_v9_12_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Clr Sess Begin
moex_spectra_optinfoincremental_simba_v9_12_0.clr_sess_begin = {}

-- Size: Clr Sess Begin
moex_spectra_optinfoincremental_simba_v9_12_0.clr_sess_begin.size = 8

-- Dissect: Clr Sess Begin
moex_spectra_optinfoincremental_simba_v9_12_0.clr_sess_begin.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.clr_sess_begin.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.clr_sess_begin
  if moex_spectra_optinfoincremental_simba_v9_12_0.absolute_time_base == 1 then field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.clr_sess_begin_utc end

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
    item:set_text("Clr Sess Begin: " .. tostring(packed))
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

-- Exchange Trading Session Id
moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id = {}

-- Size: Exchange Trading Session Id
moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id.size = 4

-- Display: Exchange Trading Session Id
moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id.display = function(value)
  return "Exchange Trading Session Id: "..value
end

-- Dissect: Exchange Trading Session Id
moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.exchange_trading_session_id, range, value, display)

  return offset + length, value
end

-- Exchange Trading Session Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id_int_32_null_optional = {}

-- Size: Exchange Trading Session Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id_int_32_null_optional.size = 4

-- Display: Exchange Trading Session Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id_int_32_null_optional.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Exchange Trading Session Id Int 32 Null optional: No Value"
  end

  return "Exchange Trading Session Id Int 32 Null optional: "..value
end

-- Dissect: Exchange Trading Session Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id_int_32_null_optional.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id_int_32_null_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id_int_32_null_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.exchange_trading_session_id_int_32_null_optional, range, value, display)

  return offset + length, value
end

-- Group Mask Int 64 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.group_mask_int_64_null_optional = {}

-- Size: Group Mask Int 64 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.group_mask_int_64_null_optional.size = 8

-- Display: Group Mask Int 64 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.group_mask_int_64_null_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Group Mask Int 64 Null optional: No Value"
  end

  return "Group Mask Int 64 Null optional: "..value
end

-- Dissect: Group Mask Int 64 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.group_mask_int_64_null_optional.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.group_mask_int_64_null_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.group_mask_int_64_null_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.group_mask_int_64_null_optional, range, value, display)

  return offset + length, value
end

-- Halt Type
moex_spectra_optinfoincremental_simba_v9_12_0.halt_type = {}

-- Size: Halt Type
moex_spectra_optinfoincremental_simba_v9_12_0.halt_type.size = 1

-- Display: Halt Type
moex_spectra_optinfoincremental_simba_v9_12_0.halt_type.labels = {
  [0] = "Halt Type: Empty Halts (0)",
  [1] = "Halt Type: Session (1)",
  [2] = "Halt Type: Section (2)",
  [3] = "Halt Type: Section And Trade Mode (3)",
  [4] = "Halt Type: Fut Base Contract (4)",
  [5] = "Halt Type: Instruments From Trade Mode (5)",
  [6] = "Halt Type: Instruments From Trade Mode And Fut Base Contract (6)",
  [7] = "Halt Type: Group Instruments (7)",
  [8] = "Halt Type: Group Instruments And Fut Base Contract (8)",
}

moex_spectra_optinfoincremental_simba_v9_12_0.halt_type.display = function(value)
  return moex_spectra_optinfoincremental_simba_v9_12_0.halt_type.labels[value] or "Halt Type: Unknown("..value..")"
end

-- Dissect: Halt Type
moex_spectra_optinfoincremental_simba_v9_12_0.halt_type.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.halt_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.halt_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.halt_type, range, value, display)

  return offset + length, value
end

-- High Limit Px
moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px = {}

-- Size: High Limit Px
moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px.size = 8

-- Display: High Limit Px
moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "High Limit Px: No Value"
  end

  return "High Limit Px: "..value
end

-- Translate: High Limit Px
moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: High Limit Px
moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px.translate(raw)
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.high_limit_px, range, value, display)

  return offset + length, value
end

-- High Limit Px Weekend
moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px_weekend = {}

-- Size: High Limit Px Weekend
moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px_weekend.size = 8

-- Display: High Limit Px Weekend
moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px_weekend.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "High Limit Px Weekend: No Value"
  end

  return "High Limit Px Weekend: "..value
end

-- Translate: High Limit Px Weekend
moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px_weekend.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: High Limit Px Weekend
moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px_weekend.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px_weekend.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px_weekend.translate(raw)
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px_weekend.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.high_limit_px_weekend, range, value, display)

  return offset + length, value
end

-- Initial Margin On Buy
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_buy = {}

-- Size: Initial Margin On Buy
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_buy.size = 8

-- Display: Initial Margin On Buy
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_buy.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Initial Margin On Buy: No Value"
  end

  return "Initial Margin On Buy: "..value
end

-- Translate: Initial Margin On Buy
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_buy.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100
end

-- Dissect: Initial Margin On Buy
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_buy.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_buy.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_buy.translate(raw)
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_buy.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.initial_margin_on_buy, range, value, display)

  return offset + length, value
end

-- Initial Margin On Sell
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_sell = {}

-- Size: Initial Margin On Sell
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_sell.size = 8

-- Display: Initial Margin On Sell
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_sell.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Initial Margin On Sell: No Value"
  end

  return "Initial Margin On Sell: "..value
end

-- Translate: Initial Margin On Sell
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_sell.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100
end

-- Dissect: Initial Margin On Sell
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_sell.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_sell.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_sell.translate(raw)
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_sell.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.initial_margin_on_sell, range, value, display)

  return offset + length, value
end

-- Initial Margin Syntetic
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_syntetic = {}

-- Size: Initial Margin Syntetic
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_syntetic.size = 8

-- Display: Initial Margin Syntetic
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_syntetic.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Initial Margin Syntetic: No Value"
  end

  return "Initial Margin Syntetic: "..value
end

-- Translate: Initial Margin Syntetic
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_syntetic.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100
end

-- Dissect: Initial Margin Syntetic
moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_syntetic.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_syntetic.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_syntetic.translate(raw)
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_syntetic.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.initial_margin_syntetic, range, value, display)

  return offset + length, value
end

-- Low Limit Px
moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px = {}

-- Size: Low Limit Px
moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px.size = 8

-- Display: Low Limit Px
moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Low Limit Px: No Value"
  end

  return "Low Limit Px: "..value
end

-- Translate: Low Limit Px
moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Low Limit Px
moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px.translate(raw)
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.low_limit_px, range, value, display)

  return offset + length, value
end

-- Low Limit Px Weekend
moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px_weekend = {}

-- Size: Low Limit Px Weekend
moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px_weekend.size = 8

-- Display: Low Limit Px Weekend
moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px_weekend.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Low Limit Px Weekend: No Value"
  end

  return "Low Limit Px Weekend: "..value
end

-- Translate: Low Limit Px Weekend
moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px_weekend.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Low Limit Px Weekend
moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px_weekend.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px_weekend.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px_weekend.translate(raw)
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px_weekend.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.low_limit_px_weekend, range, value, display)

  return offset + length, value
end

-- Market Segment Id
moex_spectra_optinfoincremental_simba_v9_12_0.market_segment_id = {}

-- Size: Market Segment Id
moex_spectra_optinfoincremental_simba_v9_12_0.market_segment_id.size = 1

-- Display: Market Segment Id
moex_spectra_optinfoincremental_simba_v9_12_0.market_segment_id.display = function(value)
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
moex_spectra_optinfoincremental_simba_v9_12_0.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.market_segment_id.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = moex_spectra_optinfoincremental_simba_v9_12_0.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
moex_spectra_optinfoincremental_simba_v9_12_0.msg_seq_num = {}

-- Size: Msg Seq Num
moex_spectra_optinfoincremental_simba_v9_12_0.msg_seq_num.size = 4

-- Display: Msg Seq Num
moex_spectra_optinfoincremental_simba_v9_12_0.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
moex_spectra_optinfoincremental_simba_v9_12_0.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Msg Size
moex_spectra_optinfoincremental_simba_v9_12_0.msg_size = {}

-- Size: Msg Size
moex_spectra_optinfoincremental_simba_v9_12_0.msg_size.size = 2

-- Display: Msg Size
moex_spectra_optinfoincremental_simba_v9_12_0.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
moex_spectra_optinfoincremental_simba_v9_12_0.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.msg_size, range, value, display)

  return offset + length, value
end

-- New Seq No
moex_spectra_optinfoincremental_simba_v9_12_0.new_seq_no = {}

-- Size: New Seq No
moex_spectra_optinfoincremental_simba_v9_12_0.new_seq_no.size = 4

-- Display: New Seq No
moex_spectra_optinfoincremental_simba_v9_12_0.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
moex_spectra_optinfoincremental_simba_v9_12_0.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Num In Group uint 16
moex_spectra_optinfoincremental_simba_v9_12_0.num_in_group_uint_16 = {}

-- Size: Num In Group uint 16
moex_spectra_optinfoincremental_simba_v9_12_0.num_in_group_uint_16.size = 2

-- Display: Num In Group uint 16
moex_spectra_optinfoincremental_simba_v9_12_0.num_in_group_uint_16.display = function(value)
  return "Num In Group uint 16: "..value
end

-- Dissect: Num In Group uint 16
moex_spectra_optinfoincremental_simba_v9_12_0.num_in_group_uint_16.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.num_in_group_uint_16.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.num_in_group_uint_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.num_in_group_uint_16, range, value, display)

  return offset + length, value
end

-- Schema Id
moex_spectra_optinfoincremental_simba_v9_12_0.schema_id = {}

-- Size: Schema Id
moex_spectra_optinfoincremental_simba_v9_12_0.schema_id.size = 2

-- Display: Schema Id
moex_spectra_optinfoincremental_simba_v9_12_0.schema_id.display = function(value)
  if value == 19780 then
    return "Schema Id: 19780"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
moex_spectra_optinfoincremental_simba_v9_12_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Section Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.section_id_int_32_null_optional = {}

-- Size: Section Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.section_id_int_32_null_optional.size = 4

-- Display: Section Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.section_id_int_32_null_optional.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Section Id Int 32 Null optional: No Value"
  end

  return "Section Id Int 32 Null optional: "..value
end

-- Dissect: Section Id Int 32 Null optional
moex_spectra_optinfoincremental_simba_v9_12_0.section_id_int_32_null_optional.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.section_id_int_32_null_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.section_id_int_32_null_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.section_id_int_32_null_optional, range, value, display)

  return offset + length, value
end

-- Security Group Id
moex_spectra_optinfoincremental_simba_v9_12_0.security_group_id = {}

-- Size: Security Group Id
moex_spectra_optinfoincremental_simba_v9_12_0.security_group_id.size = 8

-- Display: Security Group Id
moex_spectra_optinfoincremental_simba_v9_12_0.security_group_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Security Group Id: No Value"
  end

  return "Security Group Id: "..value
end

-- Dissect: Security Group Id
moex_spectra_optinfoincremental_simba_v9_12_0.security_group_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.security_group_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.security_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_group_id, range, value, display)

  return offset + length, value
end

-- Security Id
moex_spectra_optinfoincremental_simba_v9_12_0.security_id = {}

-- Size: Security Id
moex_spectra_optinfoincremental_simba_v9_12_0.security_id.size = 4

-- Display: Security Id
moex_spectra_optinfoincremental_simba_v9_12_0.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
moex_spectra_optinfoincremental_simba_v9_12_0.security_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Trading Status
moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status = {}

-- Size: Security Trading Status
moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.size = 1

-- Display: Security Trading Status
moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.labels = {
  [2] = "Security Trading Status: Trading Halt (2)",
  [17] = "Security Trading Status: Ready To Trade (17)",
  [18] = "Security Trading Status: Not Available For Trading (18)",
  [19] = "Security Trading Status: Not Traded On This Market (19)",
  [20] = "Security Trading Status: Unknown Or Invalid (20)",
  [21] = "Security Trading Status: Pre Open (21)",
  [119] = "Security Trading Status: Discrete Auction Open (119)",
  [121] = "Security Trading Status: Discrete Auction Close (121)",
  [122] = "Security Trading Status: Instrument Halt (122)",
  [123] = "Security Trading Status: Close Position (123)",
  [124] = "Security Trading Status: Discrete Auction Close Position (124)",
}

moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.display = function(value)
  return moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.labels[value] or "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Sending Time
moex_spectra_optinfoincremental_simba_v9_12_0.sending_time = {}

-- Size: Sending Time
moex_spectra_optinfoincremental_simba_v9_12_0.sending_time.size = 8

-- Dissect: Sending Time
moex_spectra_optinfoincremental_simba_v9_12_0.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.sending_time
  if moex_spectra_optinfoincremental_simba_v9_12_0.absolute_time_base == 1 then field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.sending_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Settl Sess Begin
moex_spectra_optinfoincremental_simba_v9_12_0.settl_sess_begin = {}

-- Size: Settl Sess Begin
moex_spectra_optinfoincremental_simba_v9_12_0.settl_sess_begin.size = 8

-- Dissect: Settl Sess Begin
moex_spectra_optinfoincremental_simba_v9_12_0.settl_sess_begin.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.settl_sess_begin.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.settl_sess_begin
  if moex_spectra_optinfoincremental_simba_v9_12_0.absolute_time_base == 1 then field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.settl_sess_begin_utc end

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
    item:set_text("Settl Sess Begin: " .. tostring(packed))
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

-- Status Change Time
moex_spectra_optinfoincremental_simba_v9_12_0.status_change_time = {}

-- Size: Status Change Time
moex_spectra_optinfoincremental_simba_v9_12_0.status_change_time.size = 8

-- Dissect: Status Change Time
moex_spectra_optinfoincremental_simba_v9_12_0.status_change_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.status_change_time.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.status_change_time
  if moex_spectra_optinfoincremental_simba_v9_12_0.absolute_time_base == 1 then field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.status_change_time_utc end

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
    item:set_text("Status Change Time: " .. tostring(packed))
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

-- Symbol
moex_spectra_optinfoincremental_simba_v9_12_0.symbol = {}

-- Size: Symbol
moex_spectra_optinfoincremental_simba_v9_12_0.symbol.size = 25

-- Display: Symbol
moex_spectra_optinfoincremental_simba_v9_12_0.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
moex_spectra_optinfoincremental_simba_v9_12_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.symbol.size
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

  local display = moex_spectra_optinfoincremental_simba_v9_12_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Template Id
moex_spectra_optinfoincremental_simba_v9_12_0.template_id = {}

-- Size: Template Id
moex_spectra_optinfoincremental_simba_v9_12_0.template_id.size = 2

-- Display: Template Id
moex_spectra_optinfoincremental_simba_v9_12_0.template_id.labels = {
  [1] = "Template Id: Heartbeat Message (1)",
  [2] = "Template Id: Sequence Reset Message (2)",
  [14] = "Template Id: Best Prices Message (14)",
  [4] = "Template Id: Empty Book Message (4)",
  [15] = "Template Id: Order Update Message (15)",
  [16] = "Template Id: Order Execution Message (16)",
  [17] = "Template Id: Order Book Snapshot Message (17)",
  [29] = "Template Id: Security Definition Message (29)",
  [28] = "Template Id: Security Status Message (28)",
  [10] = "Template Id: Security Definition Update Report Message (10)",
  [26] = "Template Id: Trading Session Status Message (26)",
  [24] = "Template Id: Discrete Auction Message (24)",
  [19] = "Template Id: Security Mass Status Message (19)",
  [22] = "Template Id: Security Group Status Message (22)",
  [1000] = "Template Id: Logon Message (1000)",
  [1001] = "Template Id: Logout Message (1001)",
  [1002] = "Template Id: Market Data Request Message (1002)",
  [1003] = "Template Id: Market Data Dummy Message (1003)",
}

moex_spectra_optinfoincremental_simba_v9_12_0.template_id.display = function(value)
  return moex_spectra_optinfoincremental_simba_v9_12_0.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
moex_spectra_optinfoincremental_simba_v9_12_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Theor Price
moex_spectra_optinfoincremental_simba_v9_12_0.theor_price = {}

-- Size: Theor Price
moex_spectra_optinfoincremental_simba_v9_12_0.theor_price.size = 8

-- Display: Theor Price
moex_spectra_optinfoincremental_simba_v9_12_0.theor_price.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Theor Price: No Value"
  end

  return "Theor Price: "..value
end

-- Translate: Theor Price
moex_spectra_optinfoincremental_simba_v9_12_0.theor_price.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Theor Price
moex_spectra_optinfoincremental_simba_v9_12_0.theor_price.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.theor_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_optinfoincremental_simba_v9_12_0.theor_price.translate(raw)
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.theor_price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.theor_price, range, value, display)

  return offset + length, value
end

-- Theor Price Limit
moex_spectra_optinfoincremental_simba_v9_12_0.theor_price_limit = {}

-- Size: Theor Price Limit
moex_spectra_optinfoincremental_simba_v9_12_0.theor_price_limit.size = 8

-- Display: Theor Price Limit
moex_spectra_optinfoincremental_simba_v9_12_0.theor_price_limit.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Theor Price Limit: No Value"
  end

  return "Theor Price Limit: "..value
end

-- Translate: Theor Price Limit
moex_spectra_optinfoincremental_simba_v9_12_0.theor_price_limit.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Theor Price Limit
moex_spectra_optinfoincremental_simba_v9_12_0.theor_price_limit.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.theor_price_limit.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_optinfoincremental_simba_v9_12_0.theor_price_limit.translate(raw)
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.theor_price_limit.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.theor_price_limit, range, value, display)

  return offset + length, value
end

-- Trad Ses Close Time
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_close_time = {}

-- Size: Trad Ses Close Time
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_close_time.size = 8

-- Dissect: Trad Ses Close Time
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_close_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_close_time.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_close_time
  if moex_spectra_optinfoincremental_simba_v9_12_0.absolute_time_base == 1 then field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_close_time_utc end

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
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_event = {}

-- Size: Trad Ses Event
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_event.size = 1

-- Display: Trad Ses Event
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_event.labels = {
  [0] = "Trad Ses Event: Trading Resumes (0)",
  [1] = "Trad Ses Event: Change Of Trading Session (1)",
  [3] = "Trad Ses Event: Change Of Trading Status (3)",
}

moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_event.display = function(value)
  return moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_event.labels[value] or "Trad Ses Event: Unknown("..value..")"
end

-- Dissect: Trad Ses Event
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_event.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_event.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_event, range, value, display)

  return offset + length, value
end

-- Trad Ses Open Time
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_open_time = {}

-- Size: Trad Ses Open Time
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_open_time.size = 8

-- Dissect: Trad Ses Open Time
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_open_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_open_time.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_open_time
  if moex_spectra_optinfoincremental_simba_v9_12_0.absolute_time_base == 1 then field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_open_time_utc end

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
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_status = {}

-- Size: Trad Ses Status
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_status.size = 1

-- Display: Trad Ses Status
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_status.labels = {
  [1] = "Trad Ses Status: Halted (1)",
  [2] = "Trad Ses Status: Open (2)",
  [3] = "Trad Ses Status: Closed (3)",
  [4] = "Trad Ses Status: Pre Open (4)",
}

moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_status.display = function(value)
  return moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_status.labels[value] or "Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Trad Ses Status
moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trade Mode Mask
moex_spectra_optinfoincremental_simba_v9_12_0.trade_mode_mask = {}

-- Size: Trade Mode Mask
moex_spectra_optinfoincremental_simba_v9_12_0.trade_mode_mask.size = 4

-- Display: Trade Mode Mask
moex_spectra_optinfoincremental_simba_v9_12_0.trade_mode_mask.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Trade Mode Mask: No Value"
  end

  return "Trade Mode Mask: "..value
end

-- Dissect: Trade Mode Mask
moex_spectra_optinfoincremental_simba_v9_12_0.trade_mode_mask.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.trade_mode_mask.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.trade_mode_mask.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trade_mode_mask, range, value, display)

  return offset + length, value
end

-- Trade Period Id
moex_spectra_optinfoincremental_simba_v9_12_0.trade_period_id = {}

-- Size: Trade Period Id
moex_spectra_optinfoincremental_simba_v9_12_0.trade_period_id.size = 8

-- Display: Trade Period Id
moex_spectra_optinfoincremental_simba_v9_12_0.trade_period_id.display = function(value)
  return "Trade Period Id: "..value
end

-- Dissect: Trade Period Id
moex_spectra_optinfoincremental_simba_v9_12_0.trade_period_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.trade_period_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.trade_period_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trade_period_id, range, value, display)

  return offset + length, value
end

-- Trading Session Id
moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_id = {}

-- Size: Trading Session Id
moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_id.size = 1

-- Display: Trading Session Id
moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_id.labels = {
  [1] = "Trading Session Id: Day (1)",
  [3] = "Trading Session Id: Morning (3)",
  [5] = "Trading Session Id: Evening (5)",
  [100] = "Trading Session Id: Weekend (100)",
}

moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_id.display = function(value)
  return moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_id.labels[value] or "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Transact Time
moex_spectra_optinfoincremental_simba_v9_12_0.transact_time = {}

-- Size: Transact Time
moex_spectra_optinfoincremental_simba_v9_12_0.transact_time.size = 8

-- Dissect: Transact Time
moex_spectra_optinfoincremental_simba_v9_12_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.transact_time
  if moex_spectra_optinfoincremental_simba_v9_12_0.absolute_time_base == 1 then field = omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.transact_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Version
moex_spectra_optinfoincremental_simba_v9_12_0.version = {}

-- Size: Version
moex_spectra_optinfoincremental_simba_v9_12_0.version.size = 2

-- Display: Version
moex_spectra_optinfoincremental_simba_v9_12_0.version.display = function(value)
  if value == 10 then
    return "Version: Version FIX5SP2"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
moex_spectra_optinfoincremental_simba_v9_12_0.version.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.version, range, value, display)

  return offset + length, value
end

-- Volatility
moex_spectra_optinfoincremental_simba_v9_12_0.volatility = {}

-- Size: Volatility
moex_spectra_optinfoincremental_simba_v9_12_0.volatility.size = 8

-- Display: Volatility
moex_spectra_optinfoincremental_simba_v9_12_0.volatility.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Volatility: No Value"
  end

  return "Volatility: "..value
end

-- Translate: Volatility
moex_spectra_optinfoincremental_simba_v9_12_0.volatility.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Volatility
moex_spectra_optinfoincremental_simba_v9_12_0.volatility.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_optinfoincremental_simba_v9_12_0.volatility.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_optinfoincremental_simba_v9_12_0.volatility.translate(raw)
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.volatility.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.volatility, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Moex Spectra OptInfoIncremental Simba 9.12.0
-----------------------------------------------------------------------

-- Security Group Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_group_status_message = {}

-- Size: Security Group Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_group_status_message.size =
  moex_spectra_optinfoincremental_simba_v9_12_0.security_group_id.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.halt_type.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.trade_mode_mask.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.group_mask_int_64_null_optional.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.section_id_int_32_null_optional.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.base_contract_id_int_32_null_optional.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.status_change_time.size

-- Display: Security Group Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_group_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Group Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_group_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Group Id: Int64NULL
  index, security_group_id = moex_spectra_optinfoincremental_simba_v9_12_0.security_group_id.dissect(buffer, index, packet, parent)

  -- Halt Type: HaltType
  index, halt_type = moex_spectra_optinfoincremental_simba_v9_12_0.halt_type.dissect(buffer, index, packet, parent)

  -- Trade Mode Mask: Int32NULL
  index, trade_mode_mask = moex_spectra_optinfoincremental_simba_v9_12_0.trade_mode_mask.dissect(buffer, index, packet, parent)

  -- Group Mask Int 64 Null optional: Int64NULL
  index, group_mask_int_64_null_optional = moex_spectra_optinfoincremental_simba_v9_12_0.group_mask_int_64_null_optional.dissect(buffer, index, packet, parent)

  -- Section Id Int 32 Null optional: Int32NULL
  index, section_id_int_32_null_optional = moex_spectra_optinfoincremental_simba_v9_12_0.section_id_int_32_null_optional.dissect(buffer, index, packet, parent)

  -- Base Contract Id Int 32 Null optional: Int32NULL
  index, base_contract_id_int_32_null_optional = moex_spectra_optinfoincremental_simba_v9_12_0.base_contract_id_int_32_null_optional.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatus
  index, security_trading_status = moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.dissect(buffer, index, packet, parent)

  -- Status Change Time: uint64
  index, status_change_time = moex_spectra_optinfoincremental_simba_v9_12_0.status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Group Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_group_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_group_status_message, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.security_group_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.security_group_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.security_group_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Mass Status Message No Related Sym Group
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_group = {}

-- Size: Security Mass Status Message No Related Sym Group
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_group.size =
  moex_spectra_optinfoincremental_simba_v9_12_0.security_id.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.size

-- Display: Security Mass Status Message No Related Sym Group
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Mass Status Message No Related Sym Group
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_group.fields = function(buffer, offset, packet, parent, security_mass_status_message_no_related_sym_group_index)
  local index = offset

  -- Implicit Security Mass Status Message No Related Sym Group Index
  if security_mass_status_message_no_related_sym_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_mass_status_message_no_related_sym_group_index, security_mass_status_message_no_related_sym_group_index)
    iteration:set_generated()
  end

  -- Security Id: Int32
  index, security_id = moex_spectra_optinfoincremental_simba_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatus
  index, security_trading_status = moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Mass Status Message No Related Sym Group
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_group.dissect = function(buffer, offset, packet, parent, security_mass_status_message_no_related_sym_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_mass_status_message_no_related_sym_group, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_group.fields(buffer, offset, packet, parent, security_mass_status_message_no_related_sym_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_group.fields(buffer, offset, packet, parent, security_mass_status_message_no_related_sym_group_index)
  end
end

-- Group Size 2
moex_spectra_optinfoincremental_simba_v9_12_0.group_size_2 = {}

-- Size: Group Size 2
moex_spectra_optinfoincremental_simba_v9_12_0.group_size_2.size =
  moex_spectra_optinfoincremental_simba_v9_12_0.block_length.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.num_in_group_uint_16.size

-- Display: Group Size 2
moex_spectra_optinfoincremental_simba_v9_12_0.group_size_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size 2
moex_spectra_optinfoincremental_simba_v9_12_0.group_size_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = moex_spectra_optinfoincremental_simba_v9_12_0.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group uint 16: uint16
  index, num_in_group_uint_16 = moex_spectra_optinfoincremental_simba_v9_12_0.num_in_group_uint_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size 2
moex_spectra_optinfoincremental_simba_v9_12_0.group_size_2.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.group_size_2, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.group_size_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.group_size_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.group_size_2.fields(buffer, offset, packet, parent)
  end
end

-- Security Mass Status Message No Related Sym Groups
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_groups = {}

-- Calculate size of: Security Mass Status Message No Related Sym Groups
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_groups.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_optinfoincremental_simba_v9_12_0.group_size_2.size

  -- Calculate field size from count
  local security_mass_status_message_no_related_sym_group_count = buffer(offset + index - 2, 2):le_uint()
  index = index + security_mass_status_message_no_related_sym_group_count * 5

  return index
end

-- Display: Security Mass Status Message No Related Sym Groups
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Mass Status Message No Related Sym Groups
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size 2: Struct of 2 fields
  index, group_size_2 = moex_spectra_optinfoincremental_simba_v9_12_0.group_size_2.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group uint 16
  local num_in_group_uint_16 = buffer(index - 2, 2):le_uint()

  -- Repeating: Security Mass Status Message No Related Sym Group
  for security_mass_status_message_no_related_sym_group_index = 1, num_in_group_uint_16 do
    index, security_mass_status_message_no_related_sym_group = moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_group.dissect(buffer, index, packet, parent, security_mass_status_message_no_related_sym_group_index)
  end

  return index
end

-- Dissect: Security Mass Status Message No Related Sym Groups
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_mass_status_message_no_related_sym_groups, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_groups.fields(buffer, offset, packet, parent)
  end
end

-- Security Mass Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message = {}

-- Calculate size of: Security Mass Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Mass Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Mass Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Mass Status Message No Related Sym Groups: Struct of 2 fields
  index, security_mass_status_message_no_related_sym_groups = moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message_no_related_sym_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Mass Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_mass_status_message, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_status_message = {}

-- Size: Trading Session Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_status_message.size =
  moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_open_time.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_close_time.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_id.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id_int_32_null_optional.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_status.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.market_segment_id.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_event.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.trade_period_id.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.settl_sess_begin.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.clr_sess_begin.size

-- Display: Trading Session Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trad Ses Open Time: uInt64
  index, trad_ses_open_time = moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_open_time.dissect(buffer, index, packet, parent)

  -- Trad Ses Close Time: uInt64
  index, trad_ses_close_time = moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_close_time.dissect(buffer, index, packet, parent)

  -- Trading Session Id: TradingSessionID
  index, trading_session_id = moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Exchange Trading Session Id Int 32 Null optional: Int32NULL
  index, exchange_trading_session_id_int_32_null_optional = moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id_int_32_null_optional.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: TradSesStatus
  index, trad_ses_status = moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Market Segment Id: MarketSegmentID
  index, market_segment_id = moex_spectra_optinfoincremental_simba_v9_12_0.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Event: TradSesEvent
  index, trad_ses_event = moex_spectra_optinfoincremental_simba_v9_12_0.trad_ses_event.dissect(buffer, index, packet, parent)

  -- Trade Period Id: Int64
  index, trade_period_id = moex_spectra_optinfoincremental_simba_v9_12_0.trade_period_id.dissect(buffer, index, packet, parent)

  -- Settl Sess Begin: uInt64
  index, settl_sess_begin = moex_spectra_optinfoincremental_simba_v9_12_0.settl_sess_begin.dissect(buffer, index, packet, parent)

  -- Clr Sess Begin: uInt64
  index, clr_sess_begin = moex_spectra_optinfoincremental_simba_v9_12_0.clr_sess_begin.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.trading_session_status_message, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Update Report Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_definition_update_report_message = {}

-- Size: Security Definition Update Report Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_definition_update_report_message.size =
  moex_spectra_optinfoincremental_simba_v9_12_0.security_id.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.volatility.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.theor_price.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.theor_price_limit.size

-- Display: Security Definition Update Report Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_definition_update_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Update Report Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_definition_update_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: Int32
  index, security_id = moex_spectra_optinfoincremental_simba_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Volatility: Decimal5NULL
  index, volatility = moex_spectra_optinfoincremental_simba_v9_12_0.volatility.dissect(buffer, index, packet, parent)

  -- Theor Price: Decimal5NULL
  index, theor_price = moex_spectra_optinfoincremental_simba_v9_12_0.theor_price.dissect(buffer, index, packet, parent)

  -- Theor Price Limit: Decimal5NULL
  index, theor_price_limit = moex_spectra_optinfoincremental_simba_v9_12_0.theor_price_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Update Report Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_definition_update_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_definition_update_report_message, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.security_definition_update_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.security_definition_update_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.security_definition_update_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_status_message = {}

-- Size: Security Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_status_message.size =
  moex_spectra_optinfoincremental_simba_v9_12_0.security_id.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.symbol.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_buy.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_sell.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_syntetic.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px_weekend.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px_weekend.size

-- Display: Security Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: Int32
  index, security_id = moex_spectra_optinfoincremental_simba_v9_12_0.security_id.dissect(buffer, index, packet, parent)

  -- Symbol: String25
  index, symbol = moex_spectra_optinfoincremental_simba_v9_12_0.symbol.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatus
  index, security_trading_status = moex_spectra_optinfoincremental_simba_v9_12_0.security_trading_status.dissect(buffer, index, packet, parent)

  -- High Limit Px: Decimal5NULL
  index, high_limit_px = moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px.dissect(buffer, index, packet, parent)

  -- Low Limit Px: Decimal5NULL
  index, low_limit_px = moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px.dissect(buffer, index, packet, parent)

  -- Initial Margin On Buy: Decimal2NULL
  index, initial_margin_on_buy = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_buy.dissect(buffer, index, packet, parent)

  -- Initial Margin On Sell: Decimal2NULL
  index, initial_margin_on_sell = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_on_sell.dissect(buffer, index, packet, parent)

  -- Initial Margin Syntetic: Decimal2NULL
  index, initial_margin_syntetic = moex_spectra_optinfoincremental_simba_v9_12_0.initial_margin_syntetic.dissect(buffer, index, packet, parent)

  -- High Limit Px Weekend: Decimal5NULL
  index, high_limit_px_weekend = moex_spectra_optinfoincremental_simba_v9_12_0.high_limit_px_weekend.dissect(buffer, index, packet, parent)

  -- Low Limit Px Weekend: Decimal5NULL
  index, low_limit_px_weekend = moex_spectra_optinfoincremental_simba_v9_12_0.low_limit_px_weekend.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
moex_spectra_optinfoincremental_simba_v9_12_0.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.security_status_message, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
moex_spectra_optinfoincremental_simba_v9_12_0.sequence_reset_message = {}

-- Size: Sequence Reset Message
moex_spectra_optinfoincremental_simba_v9_12_0.sequence_reset_message.size =
  moex_spectra_optinfoincremental_simba_v9_12_0.new_seq_no.size

-- Display: Sequence Reset Message
moex_spectra_optinfoincremental_simba_v9_12_0.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
moex_spectra_optinfoincremental_simba_v9_12_0.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: uInt32
  index, new_seq_no = moex_spectra_optinfoincremental_simba_v9_12_0.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
moex_spectra_optinfoincremental_simba_v9_12_0.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.sequence_reset_message, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
moex_spectra_optinfoincremental_simba_v9_12_0.heartbeat_message = {}

-- Display: Heartbeat Message
moex_spectra_optinfoincremental_simba_v9_12_0.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
moex_spectra_optinfoincremental_simba_v9_12_0.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
moex_spectra_optinfoincremental_simba_v9_12_0.payload = {}

-- Dispatch: Payload
moex_spectra_optinfoincremental_simba_v9_12_0.payload.dispatch = {
  [1] = moex_spectra_optinfoincremental_simba_v9_12_0.heartbeat_message.dissect,
  [2] = moex_spectra_optinfoincremental_simba_v9_12_0.sequence_reset_message.dissect,
  [28] = moex_spectra_optinfoincremental_simba_v9_12_0.security_status_message.dissect,
  [10] = moex_spectra_optinfoincremental_simba_v9_12_0.security_definition_update_report_message.dissect,
  [26] = moex_spectra_optinfoincremental_simba_v9_12_0.trading_session_status_message.dissect,
  [19] = moex_spectra_optinfoincremental_simba_v9_12_0.security_mass_status_message.dissect,
  [22] = moex_spectra_optinfoincremental_simba_v9_12_0.security_group_status_message.dissect,
}

-- Dissect: Payload
moex_spectra_optinfoincremental_simba_v9_12_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = moex_spectra_optinfoincremental_simba_v9_12_0.payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sbe Header
moex_spectra_optinfoincremental_simba_v9_12_0.sbe_header = {}

-- Size: Sbe Header
moex_spectra_optinfoincremental_simba_v9_12_0.sbe_header.size =
  moex_spectra_optinfoincremental_simba_v9_12_0.block_length.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.template_id.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.schema_id.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.version.size

-- Display: Sbe Header
moex_spectra_optinfoincremental_simba_v9_12_0.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
moex_spectra_optinfoincremental_simba_v9_12_0.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = moex_spectra_optinfoincremental_simba_v9_12_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, template_id = moex_spectra_optinfoincremental_simba_v9_12_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = moex_spectra_optinfoincremental_simba_v9_12_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = moex_spectra_optinfoincremental_simba_v9_12_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
moex_spectra_optinfoincremental_simba_v9_12_0.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.sbe_header, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
moex_spectra_optinfoincremental_simba_v9_12_0.message = {}

-- Calculate size of: Message
moex_spectra_optinfoincremental_simba_v9_12_0.message.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_optinfoincremental_simba_v9_12_0.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + moex_spectra_optinfoincremental_simba_v9_12_0.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
moex_spectra_optinfoincremental_simba_v9_12_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
moex_spectra_optinfoincremental_simba_v9_12_0.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = moex_spectra_optinfoincremental_simba_v9_12_0.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 7 branches
  index = moex_spectra_optinfoincremental_simba_v9_12_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
moex_spectra_optinfoincremental_simba_v9_12_0.message.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.message, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.message.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Packet Header
moex_spectra_optinfoincremental_simba_v9_12_0.incremental_packet_header = {}

-- Size: Incremental Packet Header
moex_spectra_optinfoincremental_simba_v9_12_0.incremental_packet_header.size =
  moex_spectra_optinfoincremental_simba_v9_12_0.transact_time.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id.size

-- Display: Incremental Packet Header
moex_spectra_optinfoincremental_simba_v9_12_0.incremental_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Packet Header
moex_spectra_optinfoincremental_simba_v9_12_0.incremental_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uint64
  index, transact_time = moex_spectra_optinfoincremental_simba_v9_12_0.transact_time.dissect(buffer, index, packet, parent)

  -- Exchange Trading Session Id: uint32
  index, exchange_trading_session_id = moex_spectra_optinfoincremental_simba_v9_12_0.exchange_trading_session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Packet Header
moex_spectra_optinfoincremental_simba_v9_12_0.incremental_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.incremental_packet_header, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.incremental_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.incremental_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.incremental_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Msg Flags
moex_spectra_optinfoincremental_simba_v9_12_0.msg_flags = {}

-- Size: Msg Flags
moex_spectra_optinfoincremental_simba_v9_12_0.msg_flags.size = 2

-- Display: Msg Flags
moex_spectra_optinfoincremental_simba_v9_12_0.msg_flags.display = function(range, value, packet, parent)
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
moex_spectra_optinfoincremental_simba_v9_12_0.msg_flags.bits = function(range, value, packet, parent)

  -- Last Fragment: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.last_fragment, range, value)

  -- Start Of Snapshot: 1 Bit
  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.start_of_snapshot, range, value)

  -- End Of Snapshot: 1 Bit
  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.end_of_snapshot, range, value)

  -- Incremental Packet: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.incremental_packet, range, value)

  -- Poss Dup Flag: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.poss_dup_flag, range, value)

  -- Reserved Bits: 11 Bit
  parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.reserved_bits, range, value)
end

-- Dissect: Msg Flags
moex_spectra_optinfoincremental_simba_v9_12_0.msg_flags.dissect = function(buffer, offset, packet, parent)
  local size = moex_spectra_optinfoincremental_simba_v9_12_0.msg_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = moex_spectra_optinfoincremental_simba_v9_12_0.msg_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.msg_flags, range, display)

  if show.structs then
    moex_spectra_optinfoincremental_simba_v9_12_0.msg_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Data Packet Header
moex_spectra_optinfoincremental_simba_v9_12_0.market_data_packet_header = {}

-- Size: Market Data Packet Header
moex_spectra_optinfoincremental_simba_v9_12_0.market_data_packet_header.size =
  moex_spectra_optinfoincremental_simba_v9_12_0.msg_seq_num.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.msg_size.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.msg_flags.size + 
  moex_spectra_optinfoincremental_simba_v9_12_0.sending_time.size

-- Display: Market Data Packet Header
moex_spectra_optinfoincremental_simba_v9_12_0.market_data_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Packet Header
moex_spectra_optinfoincremental_simba_v9_12_0.market_data_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32
  index, msg_seq_num = moex_spectra_optinfoincremental_simba_v9_12_0.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Msg Size: uint16
  index, msg_size = moex_spectra_optinfoincremental_simba_v9_12_0.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Flags: Struct of 6 fields
  index, msg_flags = moex_spectra_optinfoincremental_simba_v9_12_0.msg_flags.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64
  index, sending_time = moex_spectra_optinfoincremental_simba_v9_12_0.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Packet Header
moex_spectra_optinfoincremental_simba_v9_12_0.market_data_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0.fields.market_data_packet_header, buffer(offset, 0))
    local index = moex_spectra_optinfoincremental_simba_v9_12_0.market_data_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_optinfoincremental_simba_v9_12_0.market_data_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_optinfoincremental_simba_v9_12_0.market_data_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
moex_spectra_optinfoincremental_simba_v9_12_0.udp_packet = {}

-- Verify required size of Udp packet
moex_spectra_optinfoincremental_simba_v9_12_0.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= moex_spectra_optinfoincremental_simba_v9_12_0.market_data_packet_header.size + moex_spectra_optinfoincremental_simba_v9_12_0.incremental_packet_header.size + moex_spectra_optinfoincremental_simba_v9_12_0.sbe_header.size
end

-- Dissect Udp Packet
moex_spectra_optinfoincremental_simba_v9_12_0.udp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Market Data Packet Header: Struct of 4 fields
  index, market_data_packet_header = moex_spectra_optinfoincremental_simba_v9_12_0.market_data_packet_header.dissect(buffer, index, packet, parent)

  -- Incremental Packet Header: Struct of 2 fields
  index, incremental_packet_header = moex_spectra_optinfoincremental_simba_v9_12_0.incremental_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = moex_spectra_optinfoincremental_simba_v9_12_0.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_moex_spectra_optinfoincremental_simba_v9_12_0.init()
end

-- Dissector for Moex Spectra OptInfoIncremental Simba 9.12.0
function omi_moex_spectra_optinfoincremental_simba_v9_12_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_moex_spectra_optinfoincremental_simba_v9_12_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_moex_spectra_optinfoincremental_simba_v9_12_0, buffer(), omi_moex_spectra_optinfoincremental_simba_v9_12_0.description, "("..buffer:len().." Bytes)")
  return moex_spectra_optinfoincremental_simba_v9_12_0.udp_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Udp Packet: would its message dispatch accept this frame?
moex_spectra_optinfoincremental_simba_v9_12_0.udp_packet.fingerprint = function(buffer)
  if buffer:len() < 32 then
    return false
  end

  local template_id = buffer(30, 2):le_uint()

  -- Heartbeat Message
  if template_id == 1 then
    return true
  end

  -- Sequence Reset Message
  if template_id == 2 then
    return true
  end

  -- Security Status Message
  if template_id == 28 then
    return true
  end

  -- Security Definition Update Report Message
  if template_id == 10 then
    return true
  end

  -- Trading Session Status Message
  if template_id == 26 then
    return true
  end

  -- Security Mass Status Message
  if template_id == 19 then
    return true
  end

  -- Security Group Status Message
  if template_id == 22 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
moex_spectra_optinfoincremental_simba_v9_12_0.schema_id.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 32 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(32, 2):le_uint()

  if value == 19780 then
    return true
  end

  return false
end

-- Verify Version Field
moex_spectra_optinfoincremental_simba_v9_12_0.version.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 34 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(34, 2):le_uint()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Moex Spectra OptInfoIncremental Simba 9.12.0 (Udp)
local function omi_moex_spectra_optinfoincremental_simba_v9_12_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not moex_spectra_optinfoincremental_simba_v9_12_0.udp_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not moex_spectra_optinfoincremental_simba_v9_12_0.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not moex_spectra_optinfoincremental_simba_v9_12_0.version.verify(buffer) then return false end

  -- Verify the frame matches this udp udp packet message dispatch
  if not moex_spectra_optinfoincremental_simba_v9_12_0.udp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_moex_spectra_optinfoincremental_simba_v9_12_0
  omi_moex_spectra_optinfoincremental_simba_v9_12_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Moex Spectra OptInfoIncremental Simba 9.12.0
omi_moex_spectra_optinfoincremental_simba_v9_12_0:register_heuristic("udp", omi_moex_spectra_optinfoincremental_simba_v9_12_0_udp_heuristic)

-- Register Moex Spectra OptInfoIncremental Simba 9.12.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_moex_spectra_optinfoincremental_simba_v9_12_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Moscow Exchange
--   Version: 9.12.0
--   Date: Monday, October 19, 2026
--   Specification: MOEX Spectra SIMBA Market Data (SBE) (9.12.0).pdf
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
