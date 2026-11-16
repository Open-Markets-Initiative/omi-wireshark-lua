-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Moex Spectra FutInfoIncremental Simba 2.2.0 Protocol
local omi_moex_spectra_futinfoincremental_simba_v2_2_0 = Proto("Omi.Moex.Spectra.FutInfoIncremental.Simba.v2.2.0", "Moex Spectra FutInfoIncremental Simba 2.2.0")

-- Protocol table
local moex_spectra_futinfoincremental_simba_v2_2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Moex Spectra FutInfoIncremental Simba 2.2.0 Fields
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.auction_id = ProtoField.new("Auction Id", "moex.spectra.futinfoincremental.simba.v2.2.0.auctionid", ftypes.INT64, nil, nil, nil, "AuctionID")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.block_length = ProtoField.new("Block Length", "moex.spectra.futinfoincremental.simba.v2.2.0.blocklength", ftypes.UINT16, nil, nil, nil, "blockLength")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.discrete_auction_message_no_underlyings_group = ProtoField.new("Discrete Auction Message No Underlyings Group", "moex.spectra.futinfoincremental.simba.v2.2.0.discreteauctionmessagenounderlyingsgroup", ftypes.STRING, nil, nil, nil, "NoUnderlyings")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.discrete_auction_message_no_underlyings_groups = ProtoField.new("Discrete Auction Message No Underlyings Groups", "moex.spectra.futinfoincremental.simba.v2.2.0.discreteauctionmessagenounderlyingsgroups", ftypes.STRING, nil, nil, nil, "NoUnderlyings Block")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.end_of_snapshot = ProtoField.new("End Of Snapshot", "moex.spectra.futinfoincremental.simba.v2.2.0.endofsnapshot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004, "EndOfSnapshot")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.event_id_close = ProtoField.new("Event Id Close", "moex.spectra.futinfoincremental.simba.v2.2.0.eventidclose", ftypes.INT32, nil, nil, nil, "EventIDClose")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.event_id_open = ProtoField.new("Event Id Open", "moex.spectra.futinfoincremental.simba.v2.2.0.eventidopen", ftypes.INT32, nil, nil, nil, "EventIDOpen")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.exchange_trading_session_i_d_uint_32_optional = ProtoField.new("Exchange Trading Session I D uint 32 optional", "moex.spectra.futinfoincremental.simba.v2.2.0.exchangetradingsessioniduint32optional", ftypes.UINT32, nil, nil, nil, "ExchangeTradingSessionID")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.exchange_trading_session_id_int_32 = ProtoField.new("Exchange Trading Session Id Int 32", "moex.spectra.futinfoincremental.simba.v2.2.0.exchangetradingsessionidint32", ftypes.INT32, nil, nil, nil, "ExchangeTradingSessionID")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.exchange_trading_session_id_int_32_null_optional = ProtoField.new("Exchange Trading Session Id Int 32 Null optional", "moex.spectra.futinfoincremental.simba.v2.2.0.exchangetradingsessionidint32nulloptional", ftypes.INT32, nil, nil, nil, "ExchangeTradingSessionID")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.group_size = ProtoField.new("Group Size", "moex.spectra.futinfoincremental.simba.v2.2.0.groupsize", ftypes.STRING, nil, nil, nil, "groupSize")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.high_limit_px = ProtoField.new("High Limit Px", "moex.spectra.futinfoincremental.simba.v2.2.0.highlimitpx", ftypes.DOUBLE, nil, nil, nil, "HighLimitPx")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.incremental_packet = ProtoField.new("Incremental Packet", "moex.spectra.futinfoincremental.simba.v2.2.0.incrementalpacket", ftypes.UINT16, {[0]="Snapshot Packet", [1]="Incremental Packet"}, base.DEC, 0x0008, "IncrementalPacket")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.incremental_packet_header = ProtoField.new("Incremental Packet Header", "moex.spectra.futinfoincremental.simba.v2.2.0.incrementalpacketheader", ftypes.STRING, nil, nil, nil, "MarketDataDummyMessage")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.initial_margin_on_buy = ProtoField.new("Initial Margin On Buy", "moex.spectra.futinfoincremental.simba.v2.2.0.initialmarginonbuy", ftypes.DOUBLE, nil, nil, nil, "InitialMarginOnBuy")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.initial_margin_on_sell = ProtoField.new("Initial Margin On Sell", "moex.spectra.futinfoincremental.simba.v2.2.0.initialmarginonsell", ftypes.DOUBLE, nil, nil, nil, "InitialMarginOnSell")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.initial_margin_syntetic = ProtoField.new("Initial Margin Syntetic", "moex.spectra.futinfoincremental.simba.v2.2.0.initialmarginsyntetic", ftypes.DOUBLE, nil, nil, nil, "InitialMarginSyntetic")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.last_fragment = ProtoField.new("Last Fragment", "moex.spectra.futinfoincremental.simba.v2.2.0.lastfragment", ftypes.UINT16, {[0]="Fragment", [1]="Last Fragment"}, base.DEC, 0x0001, "LastFragment")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.low_limit_px = ProtoField.new("Low Limit Px", "moex.spectra.futinfoincremental.simba.v2.2.0.lowlimitpx", ftypes.DOUBLE, nil, nil, nil, "LowLimitPx")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.market_data_packet_header = ProtoField.new("Market Data Packet Header", "moex.spectra.futinfoincremental.simba.v2.2.0.marketdatapacketheader", ftypes.STRING, nil, nil, nil, "MarketDataDummyMessage")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.market_segment_id = ProtoField.new("Market Segment Id", "moex.spectra.futinfoincremental.simba.v2.2.0.marketsegmentid", ftypes.STRING, nil, nil, nil, "MarketSegmentID")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.msg_flags = ProtoField.new("Msg Flags", "moex.spectra.futinfoincremental.simba.v2.2.0.msgflags", ftypes.STRING, nil, nil, nil, "Message flags, least significant bit first, as the schema's MsgFlagsSet declares them")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "moex.spectra.futinfoincremental.simba.v2.2.0.msgseqnum", ftypes.UINT32, nil, nil, nil, "MsgSeqNum")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.msg_size = ProtoField.new("Msg Size", "moex.spectra.futinfoincremental.simba.v2.2.0.msgsize", ftypes.UINT16, nil, nil, nil, "MsgSize")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.new_seq_no = ProtoField.new("New Seq No", "moex.spectra.futinfoincremental.simba.v2.2.0.newseqno", ftypes.UINT32, nil, nil, nil, "NewSeqNo")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.num_in_group = ProtoField.new("Num In Group", "moex.spectra.futinfoincremental.simba.v2.2.0.numingroup", ftypes.UINT8, nil, nil, nil, "numInGroup")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.poss_dup_flag = ProtoField.new("Poss Dup Flag", "moex.spectra.futinfoincremental.simba.v2.2.0.possdupflag", ftypes.UINT16, {[0]="Online Updates", [1]="Full Order Books"}, base.DEC, 0x0010, "PossDupFlag")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.reserved_bits = ProtoField.new("Reserved Bits", "moex.spectra.futinfoincremental.simba.v2.2.0.reservedbits", ftypes.UINT16, nil, base.DEC, 0xFFE0, "Bits the schema's MsgFlagsSet leaves unused")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.schema_id = ProtoField.new("Schema Id", "moex.spectra.futinfoincremental.simba.v2.2.0.schemaid", ftypes.UINT16, nil, nil, nil, "Message schema identifier")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.security_id = ProtoField.new("Security Id", "moex.spectra.futinfoincremental.simba.v2.2.0.securityid", ftypes.INT32, nil, nil, nil, "SecurityID")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.security_trading_status = ProtoField.new("Security Trading Status", "moex.spectra.futinfoincremental.simba.v2.2.0.securitytradingstatus", ftypes.UINT8, nil, nil, nil, "SecurityTradingStatus")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.sending_time = ProtoField.new("Sending Time", "moex.spectra.futinfoincremental.simba.v2.2.0.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "SendingTime")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.sending_time_utc = ProtoField.new("Sending Time", "moex.spectra.futinfoincremental.simba.v2.2.0.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "SendingTime")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.start_of_snapshot = ProtoField.new("Start Of Snapshot", "moex.spectra.futinfoincremental.simba.v2.2.0.startofsnapshot", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002, "StartOfSnapshot")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.symbol = ProtoField.new("Symbol", "moex.spectra.futinfoincremental.simba.v2.2.0.symbol", ftypes.STRING)
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.template_id = ProtoField.new("Template Id", "moex.spectra.futinfoincremental.simba.v2.2.0.templateid", ftypes.UINT16, nil, nil, nil, "Message template identifier")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time = ProtoField.new("Trad Ses Close Time", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesclosetime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TradSesCloseTime")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time_utc = ProtoField.new("Trad Ses Close Time", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesclosetime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TradSesCloseTime")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time_from = ProtoField.new("Trad Ses Close Time From", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesclosetimefrom", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TradSesCloseTimeFrom")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time_from_utc = ProtoField.new("Trad Ses Close Time From", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesclosetimefrom.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TradSesCloseTimeFrom")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time_till = ProtoField.new("Trad Ses Close Time Till", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesclosetimetill", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TradSesCloseTimeTill")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time_till_utc = ProtoField.new("Trad Ses Close Time Till", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesclosetimetill.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TradSesCloseTimeTill")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesevent", ftypes.UINT8, nil, nil, nil, "TradSesEvent")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_interm_clearing_end_time = ProtoField.new("Trad Ses Interm Clearing End Time", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesintermclearingendtime", ftypes.UINT64, nil, nil, nil, "TradSesIntermClearingEndTime")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_interm_clearing_start_time = ProtoField.new("Trad Ses Interm Clearing Start Time", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesintermclearingstarttime", ftypes.UINT64, nil, nil, nil, "TradSesIntermClearingStartTime")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_open_time = ProtoField.new("Trad Ses Open Time", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesopentime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TradSesOpenTime")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_open_time_utc = ProtoField.new("Trad Ses Open Time", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesopentime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TradSesOpenTime")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "moex.spectra.futinfoincremental.simba.v2.2.0.tradsesstatus", ftypes.UINT8, nil, nil, nil, "TradSesStatus")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "moex.spectra.futinfoincremental.simba.v2.2.0.tradingsessionid", ftypes.UINT8, nil, nil, nil, "TradingSessionID")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.transact_time = ProtoField.new("Transact Time", "moex.spectra.futinfoincremental.simba.v2.2.0.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "TransactTime")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.transact_time_utc = ProtoField.new("Transact Time", "moex.spectra.futinfoincremental.simba.v2.2.0.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "TransactTime")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.underlying_symbol_text = ProtoField.new("Underlying Symbol Text", "moex.spectra.futinfoincremental.simba.v2.2.0.underlyingsymboltext", ftypes.STRING, nil, nil, nil, "UnderlyingSymbolText data struct")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.underlying_symbol_text_data = ProtoField.new("Underlying Symbol Text Data", "moex.spectra.futinfoincremental.simba.v2.2.0.underlyingsymboltextdata", ftypes.STRING)
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.underlying_symbol_text_length = ProtoField.new("Underlying Symbol Text Length", "moex.spectra.futinfoincremental.simba.v2.2.0.underlyingsymboltextlength", ftypes.UINT16)
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.version = ProtoField.new("Version", "moex.spectra.futinfoincremental.simba.v2.2.0.version", ftypes.UINT16, nil, nil, nil, "Message schema version")

-- Moex Spectra FutInfoIncremental Simba 2.2.0 Framing
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.message = ProtoField.new("Message", "moex.spectra.futinfoincremental.simba.v2.2.0.message", ftypes.STRING, nil, nil, nil, "Moex Simba Market Data Message")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.sbe_header = ProtoField.new("Sbe Header", "moex.spectra.futinfoincremental.simba.v2.2.0.sbeheader", ftypes.STRING, nil, nil, nil, "Root block length, message template id, message schema id and schema version")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.udp_packet = ProtoField.new("Udp Packet", "moex.spectra.futinfoincremental.simba.v2.2.0.udppacket", ftypes.STRING, nil, nil, nil, "Moex Simba Incremental Packet")

-- Moex Spectra FutInfoIncremental 2.2.0 Application Messages
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.discrete_auction_message = ProtoField.new("Discrete Auction Message", "moex.spectra.futinfoincremental.simba.v2.2.0.discreteauctionmessage", ftypes.STRING, nil, nil, nil, "DiscreteAuctionMessage")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "moex.spectra.futinfoincremental.simba.v2.2.0.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "HeartbeatMessage")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.security_status_message = ProtoField.new("Security Status Message", "moex.spectra.futinfoincremental.simba.v2.2.0.securitystatusmessage", ftypes.STRING, nil, nil, nil, "SecurityStatusMessage")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "moex.spectra.futinfoincremental.simba.v2.2.0.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "SequenceResetMessage")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "moex.spectra.futinfoincremental.simba.v2.2.0.tradingsessionstatusmessage", ftypes.STRING, nil, nil, nil, "TradingSessionStatusMessage")

-- Moex Spectra FutInfoIncremental Simba 2.2.0 Generated Fields
omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.discrete_auction_message_no_underlyings_group_index = ProtoField.new("Discrete Auction Message No Underlyings Group Index", "moex.spectra.futinfoincremental.simba.v2.2.0.discreteauctionmessagenounderlyingsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Moex Spectra FutInfoIncremental Simba 2.2.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Full DateTime Local", 2 },
  { 2, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
moex_spectra_futinfoincremental_simba_v2_2_0.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Moex Spectra FutInfoIncremental Simba 2.2.0 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Moex Spectra FutInfoIncremental Simba 2.2.0 Show Options
omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_application_messages then
    show.application_messages = omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_application_messages
  end
  if show.headers ~= omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_headers then
    show.headers = omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_repeating_groups
  end
  if show.structs ~= omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_structs then
    show.structs = omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_structs
  end
  if show.indexes ~= omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_indexes then
    show.indexes = omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.show_indexes
  end
  if moex_spectra_futinfoincremental_simba_v2_2_0.timestamp_format ~= omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.timestamp_format then
    moex_spectra_futinfoincremental_simba_v2_2_0.timestamp_format = omi_moex_spectra_futinfoincremental_simba_v2_2_0.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Moex Spectra FutInfoIncremental Simba 2.2.0 Fields
-----------------------------------------------------------------------

-- Auction Id
moex_spectra_futinfoincremental_simba_v2_2_0.auction_id = {}

-- Size: Auction Id
moex_spectra_futinfoincremental_simba_v2_2_0.auction_id.size = 8

-- Display: Auction Id
moex_spectra_futinfoincremental_simba_v2_2_0.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
moex_spectra_futinfoincremental_simba_v2_2_0.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Block Length
moex_spectra_futinfoincremental_simba_v2_2_0.block_length = {}

-- Size: Block Length
moex_spectra_futinfoincremental_simba_v2_2_0.block_length.size = 2

-- Display: Block Length
moex_spectra_futinfoincremental_simba_v2_2_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
moex_spectra_futinfoincremental_simba_v2_2_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Event Id Close
moex_spectra_futinfoincremental_simba_v2_2_0.event_id_close = {}

-- Size: Event Id Close
moex_spectra_futinfoincremental_simba_v2_2_0.event_id_close.size = 4

-- Display: Event Id Close
moex_spectra_futinfoincremental_simba_v2_2_0.event_id_close.display = function(value)
  return "Event Id Close: "..value
end

-- Dissect: Event Id Close
moex_spectra_futinfoincremental_simba_v2_2_0.event_id_close.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.event_id_close.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.event_id_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.event_id_close, range, value, display)

  return offset + length, value
end

-- Event Id Open
moex_spectra_futinfoincremental_simba_v2_2_0.event_id_open = {}

-- Size: Event Id Open
moex_spectra_futinfoincremental_simba_v2_2_0.event_id_open.size = 4

-- Display: Event Id Open
moex_spectra_futinfoincremental_simba_v2_2_0.event_id_open.display = function(value)
  return "Event Id Open: "..value
end

-- Dissect: Event Id Open
moex_spectra_futinfoincremental_simba_v2_2_0.event_id_open.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.event_id_open.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.event_id_open.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.event_id_open, range, value, display)

  return offset + length, value
end

-- Exchange Trading Session I D uint 32 optional
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_i_d_uint_32_optional = {}

-- Size: Exchange Trading Session I D uint 32 optional
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_i_d_uint_32_optional.size = 4

-- Display: Exchange Trading Session I D uint 32 optional
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_i_d_uint_32_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Exchange Trading Session I D uint 32 optional: No Value"
  end

  return "Exchange Trading Session I D uint 32 optional: "..value
end

-- Dissect: Exchange Trading Session I D uint 32 optional
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_i_d_uint_32_optional.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_i_d_uint_32_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_i_d_uint_32_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.exchange_trading_session_i_d_uint_32_optional, range, value, display)

  return offset + length, value
end

-- Exchange Trading Session Id Int 32
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32 = {}

-- Size: Exchange Trading Session Id Int 32
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32.size = 4

-- Display: Exchange Trading Session Id Int 32
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32.display = function(value)
  return "Exchange Trading Session Id Int 32: "..value
end

-- Dissect: Exchange Trading Session Id Int 32
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.exchange_trading_session_id_int_32, range, value, display)

  return offset + length, value
end

-- Exchange Trading Session Id Int 32 Null optional
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32_null_optional = {}

-- Size: Exchange Trading Session Id Int 32 Null optional
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32_null_optional.size = 4

-- Display: Exchange Trading Session Id Int 32 Null optional
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32_null_optional.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Exchange Trading Session Id Int 32 Null optional: No Value"
  end

  return "Exchange Trading Session Id Int 32 Null optional: "..value
end

-- Dissect: Exchange Trading Session Id Int 32 Null optional
moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32_null_optional.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32_null_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32_null_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.exchange_trading_session_id_int_32_null_optional, range, value, display)

  return offset + length, value
end

-- High Limit Px
moex_spectra_futinfoincremental_simba_v2_2_0.high_limit_px = {}

-- Size: High Limit Px
moex_spectra_futinfoincremental_simba_v2_2_0.high_limit_px.size = 8

-- Display: High Limit Px
moex_spectra_futinfoincremental_simba_v2_2_0.high_limit_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "High Limit Px: No Value"
  end

  return "High Limit Px: "..value
end

-- Translate: High Limit Px
moex_spectra_futinfoincremental_simba_v2_2_0.high_limit_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: High Limit Px
moex_spectra_futinfoincremental_simba_v2_2_0.high_limit_px.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.high_limit_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinfoincremental_simba_v2_2_0.high_limit_px.translate(raw)
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.high_limit_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.high_limit_px, range, value, display)

  return offset + length, value
end

-- Initial Margin On Buy
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_buy = {}

-- Size: Initial Margin On Buy
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_buy.size = 8

-- Display: Initial Margin On Buy
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_buy.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Initial Margin On Buy: No Value"
  end

  return "Initial Margin On Buy: "..value
end

-- Translate: Initial Margin On Buy
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_buy.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100
end

-- Dissect: Initial Margin On Buy
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_buy.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_buy.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_buy.translate(raw)
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_buy.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.initial_margin_on_buy, range, value, display)

  return offset + length, value
end

-- Initial Margin On Sell
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_sell = {}

-- Size: Initial Margin On Sell
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_sell.size = 8

-- Display: Initial Margin On Sell
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_sell.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Initial Margin On Sell: No Value"
  end

  return "Initial Margin On Sell: "..value
end

-- Translate: Initial Margin On Sell
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_sell.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100
end

-- Dissect: Initial Margin On Sell
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_sell.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_sell.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_sell.translate(raw)
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_sell.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.initial_margin_on_sell, range, value, display)

  return offset + length, value
end

-- Initial Margin Syntetic
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_syntetic = {}

-- Size: Initial Margin Syntetic
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_syntetic.size = 8

-- Display: Initial Margin Syntetic
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_syntetic.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Initial Margin Syntetic: No Value"
  end

  return "Initial Margin Syntetic: "..value
end

-- Translate: Initial Margin Syntetic
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_syntetic.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100
end

-- Dissect: Initial Margin Syntetic
moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_syntetic.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_syntetic.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_syntetic.translate(raw)
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_syntetic.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.initial_margin_syntetic, range, value, display)

  return offset + length, value
end

-- Low Limit Px
moex_spectra_futinfoincremental_simba_v2_2_0.low_limit_px = {}

-- Size: Low Limit Px
moex_spectra_futinfoincremental_simba_v2_2_0.low_limit_px.size = 8

-- Display: Low Limit Px
moex_spectra_futinfoincremental_simba_v2_2_0.low_limit_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return "Low Limit Px: No Value"
  end

  return "Low Limit Px: "..value
end

-- Translate: Low Limit Px
moex_spectra_futinfoincremental_simba_v2_2_0.low_limit_px.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0xFFFFFFFF, 0x7FFFFFFF) then
    return 0/0
  end

  return raw:tonumber()/100000
end

-- Dissect: Low Limit Px
moex_spectra_futinfoincremental_simba_v2_2_0.low_limit_px.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.low_limit_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = moex_spectra_futinfoincremental_simba_v2_2_0.low_limit_px.translate(raw)
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.low_limit_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.low_limit_px, range, value, display)

  return offset + length, value
end

-- Market Segment Id
moex_spectra_futinfoincremental_simba_v2_2_0.market_segment_id = {}

-- Size: Market Segment Id
moex_spectra_futinfoincremental_simba_v2_2_0.market_segment_id.size = 1

-- Display: Market Segment Id
moex_spectra_futinfoincremental_simba_v2_2_0.market_segment_id.display = function(value)
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
moex_spectra_futinfoincremental_simba_v2_2_0.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.market_segment_id.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = moex_spectra_futinfoincremental_simba_v2_2_0.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
moex_spectra_futinfoincremental_simba_v2_2_0.msg_seq_num = {}

-- Size: Msg Seq Num
moex_spectra_futinfoincremental_simba_v2_2_0.msg_seq_num.size = 4

-- Display: Msg Seq Num
moex_spectra_futinfoincremental_simba_v2_2_0.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
moex_spectra_futinfoincremental_simba_v2_2_0.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Msg Size
moex_spectra_futinfoincremental_simba_v2_2_0.msg_size = {}

-- Size: Msg Size
moex_spectra_futinfoincremental_simba_v2_2_0.msg_size.size = 2

-- Display: Msg Size
moex_spectra_futinfoincremental_simba_v2_2_0.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
moex_spectra_futinfoincremental_simba_v2_2_0.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.msg_size, range, value, display)

  return offset + length, value
end

-- New Seq No
moex_spectra_futinfoincremental_simba_v2_2_0.new_seq_no = {}

-- Size: New Seq No
moex_spectra_futinfoincremental_simba_v2_2_0.new_seq_no.size = 4

-- Display: New Seq No
moex_spectra_futinfoincremental_simba_v2_2_0.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
moex_spectra_futinfoincremental_simba_v2_2_0.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Num In Group
moex_spectra_futinfoincremental_simba_v2_2_0.num_in_group = {}

-- Size: Num In Group
moex_spectra_futinfoincremental_simba_v2_2_0.num_in_group.size = 1

-- Display: Num In Group
moex_spectra_futinfoincremental_simba_v2_2_0.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
moex_spectra_futinfoincremental_simba_v2_2_0.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.num_in_group.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Schema Id
moex_spectra_futinfoincremental_simba_v2_2_0.schema_id = {}

-- Size: Schema Id
moex_spectra_futinfoincremental_simba_v2_2_0.schema_id.size = 2

-- Display: Schema Id
moex_spectra_futinfoincremental_simba_v2_2_0.schema_id.display = function(value)
  if value == 19780 then
    return "Schema Id: 19780"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
moex_spectra_futinfoincremental_simba_v2_2_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Security Id
moex_spectra_futinfoincremental_simba_v2_2_0.security_id = {}

-- Size: Security Id
moex_spectra_futinfoincremental_simba_v2_2_0.security_id.size = 4

-- Display: Security Id
moex_spectra_futinfoincremental_simba_v2_2_0.security_id.display = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
moex_spectra_futinfoincremental_simba_v2_2_0.security_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Security Trading Status
moex_spectra_futinfoincremental_simba_v2_2_0.security_trading_status = {}

-- Size: Security Trading Status
moex_spectra_futinfoincremental_simba_v2_2_0.security_trading_status.size = 1

-- Display: Security Trading Status
moex_spectra_futinfoincremental_simba_v2_2_0.security_trading_status.labels = {
  [2] = "Security Trading Status: Trading Halt (2)",
  [17] = "Security Trading Status: Ready To Trade (17)",
  [18] = "Security Trading Status: Not Available For Trading (18)",
  [19] = "Security Trading Status: Not Traded On This Market (19)",
  [21] = "Security Trading Status: Pre Open (21)",
  [119] = "Security Trading Status: Discrete Auction Open (119)",
  [121] = "Security Trading Status: Discrete Auction Close (121)",
}

moex_spectra_futinfoincremental_simba_v2_2_0.security_trading_status.display = function(value)
  return moex_spectra_futinfoincremental_simba_v2_2_0.security_trading_status.labels[value] or "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
moex_spectra_futinfoincremental_simba_v2_2_0.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Sending Time
moex_spectra_futinfoincremental_simba_v2_2_0.sending_time = {}

-- Size: Sending Time
moex_spectra_futinfoincremental_simba_v2_2_0.sending_time.size = 8

-- Dissect: Sending Time
moex_spectra_futinfoincremental_simba_v2_2_0.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.sending_time
  if moex_spectra_futinfoincremental_simba_v2_2_0.timestamp_format == 3 then field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.sending_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Symbol
moex_spectra_futinfoincremental_simba_v2_2_0.symbol = {}

-- Size: Symbol
moex_spectra_futinfoincremental_simba_v2_2_0.symbol.size = 25

-- Display: Symbol
moex_spectra_futinfoincremental_simba_v2_2_0.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
moex_spectra_futinfoincremental_simba_v2_2_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.symbol.size
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

  local display = moex_spectra_futinfoincremental_simba_v2_2_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Template Id
moex_spectra_futinfoincremental_simba_v2_2_0.template_id = {}

-- Size: Template Id
moex_spectra_futinfoincremental_simba_v2_2_0.template_id.size = 2

-- Display: Template Id
moex_spectra_futinfoincremental_simba_v2_2_0.template_id.labels = {
  [1] = "Template Id: Heartbeat Message (1)",
  [2] = "Template Id: Sequence Reset Message (2)",
  [3] = "Template Id: Best Prices Message (3)",
  [4] = "Template Id: Empty Book Message (4)",
  [5] = "Template Id: Order Update Message (5)",
  [6] = "Template Id: Order Execution Message (6)",
  [7] = "Template Id: Order Book Snapshot Message (7)",
  [12] = "Template Id: Security Definition Message (12)",
  [9] = "Template Id: Security Status Message (9)",
  [10] = "Template Id: Security Definition Update Report Message (10)",
  [11] = "Template Id: Trading Session Status Message (11)",
  [13] = "Template Id: Discrete Auction Message (13)",
  [1000] = "Template Id: Logon Message (1000)",
  [1001] = "Template Id: Logout Message (1001)",
  [1002] = "Template Id: Market Data Request Message (1002)",
  [1003] = "Template Id: Market Data Dummy Message (1003)",
}

moex_spectra_futinfoincremental_simba_v2_2_0.template_id.display = function(value)
  return moex_spectra_futinfoincremental_simba_v2_2_0.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
moex_spectra_futinfoincremental_simba_v2_2_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Trad Ses Close Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time = {}

-- Size: Trad Ses Close Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time.size = 8

-- Dissect: Trad Ses Close Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time
  if moex_spectra_futinfoincremental_simba_v2_2_0.timestamp_format == 3 then field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time_utc end

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

-- Trad Ses Close Time From
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_from = {}

-- Size: Trad Ses Close Time From
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_from.size = 8

-- Dissect: Trad Ses Close Time From
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_from.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_from.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time_from
  if moex_spectra_futinfoincremental_simba_v2_2_0.timestamp_format == 3 then field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time_from_utc end

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
    item:set_text("Trad Ses Close Time From: " .. tostring(packed))
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

-- Trad Ses Close Time Till
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_till = {}

-- Size: Trad Ses Close Time Till
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_till.size = 8

-- Dissect: Trad Ses Close Time Till
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_till.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_till.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time_till
  if moex_spectra_futinfoincremental_simba_v2_2_0.timestamp_format == 3 then field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_close_time_till_utc end

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
    item:set_text("Trad Ses Close Time Till: " .. tostring(packed))
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
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_event = {}

-- Size: Trad Ses Event
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_event.size = 1

-- Display: Trad Ses Event
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_event.labels = {
  [0] = "Trad Ses Event: Trading Resumes (0)",
  [1] = "Trad Ses Event: Change Of Trading Session (1)",
  [3] = "Trad Ses Event: Change Of Trading Status (3)",
}

moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_event.display = function(value)
  return moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_event.labels[value] or "Trad Ses Event: Unknown("..value..")"
end

-- Dissect: Trad Ses Event
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_event.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_event.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_event, range, value, display)

  return offset + length, value
end

-- Trad Ses Interm Clearing End Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_end_time = {}

-- Size: Trad Ses Interm Clearing End Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_end_time.size = 8

-- Display: Trad Ses Interm Clearing End Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_end_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trad Ses Interm Clearing End Time: No Value"
  end

  return "Trad Ses Interm Clearing End Time: "..value
end

-- Dissect: Trad Ses Interm Clearing End Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_end_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_end_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_interm_clearing_end_time, range, value, display)

  return offset + length, value
end

-- Trad Ses Interm Clearing Start Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_start_time = {}

-- Size: Trad Ses Interm Clearing Start Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_start_time.size = 8

-- Display: Trad Ses Interm Clearing Start Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_start_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trad Ses Interm Clearing Start Time: No Value"
  end

  return "Trad Ses Interm Clearing Start Time: "..value
end

-- Dissect: Trad Ses Interm Clearing Start Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_start_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_start_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_interm_clearing_start_time, range, value, display)

  return offset + length, value
end

-- Trad Ses Open Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_open_time = {}

-- Size: Trad Ses Open Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_open_time.size = 8

-- Dissect: Trad Ses Open Time
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_open_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_open_time.size
  local range = buffer(offset, length)
  local packed = range:le_uint64():tonumber()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_open_time
  if moex_spectra_futinfoincremental_simba_v2_2_0.timestamp_format == 3 then field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_open_time_utc end

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
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_status = {}

-- Size: Trad Ses Status
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_status.size = 1

-- Display: Trad Ses Status
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_status.labels = {
  [1] = "Trad Ses Status: Halted (1)",
  [2] = "Trad Ses Status: Open (2)",
  [3] = "Trad Ses Status: Closed (3)",
  [4] = "Trad Ses Status: Pre Open (4)",
}

moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_status.display = function(value)
  return moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_status.labels[value] or "Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Trad Ses Status
moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_status.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Trading Session Id
moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_id = {}

-- Size: Trading Session Id
moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_id.size = 1

-- Display: Trading Session Id
moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_id.labels = {
  [1] = "Trading Session Id: Day (1)",
  [3] = "Trading Session Id: Morning (3)",
  [5] = "Trading Session Id: Evening (5)",
}

moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_id.display = function(value)
  return moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_id.labels[value] or "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Transact Time
moex_spectra_futinfoincremental_simba_v2_2_0.transact_time = {}

-- Size: Transact Time
moex_spectra_futinfoincremental_simba_v2_2_0.transact_time.size = 8

-- Dissect: Transact Time
moex_spectra_futinfoincremental_simba_v2_2_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.transact_time
  if moex_spectra_futinfoincremental_simba_v2_2_0.timestamp_format == 3 then field = omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.transact_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Underlying Symbol Text Data
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_data = {}

-- Display: Underlying Symbol Text Data
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_data.display = function(value)
  return "Underlying Symbol Text Data: "..value
end

-- Dissect runtime sized field: Underlying Symbol Text Data
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_data.display(value, packet, parent, size)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.underlying_symbol_text_data, range, value, display)

  return offset + size, value
end

-- Underlying Symbol Text Length
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_length = {}

-- Size: Underlying Symbol Text Length
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_length.size = 2

-- Display: Underlying Symbol Text Length
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_length.display = function(value)
  return "Underlying Symbol Text Length: "..value
end

-- Dissect: Underlying Symbol Text Length
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_length.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.underlying_symbol_text_length, range, value, display)

  return offset + length, value
end

-- Version
moex_spectra_futinfoincremental_simba_v2_2_0.version = {}

-- Size: Version
moex_spectra_futinfoincremental_simba_v2_2_0.version.size = 2

-- Display: Version
moex_spectra_futinfoincremental_simba_v2_2_0.version.display = function(value)
  if value == 1 then
    return "Version: 1"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
moex_spectra_futinfoincremental_simba_v2_2_0.version.dissect = function(buffer, offset, packet, parent)
  local length = moex_spectra_futinfoincremental_simba_v2_2_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Moex Spectra FutInfoIncremental Simba 2.2.0
-----------------------------------------------------------------------

-- Underlying Symbol Text
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text = {}

-- Calculate size of: Underlying Symbol Text
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_length.size

  local underlying_symbol_text_length = buffer(offset + 0, 2):le_uint()

  if underlying_symbol_text_length > 0 then
    -- Parse runtime size of: Underlying Symbol Text Data
    index = index + buffer(offset + index - 2, 2):le_uint()

  end

  return index
end

-- Display: Underlying Symbol Text
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return value
end

-- Dissect Fields: Underlying Symbol Text
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Symbol Text Length: uint16
  index, underlying_symbol_text_length = moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Underlying Symbol Text Data
  local underlying_symbol_text_data = nil

  local underlying_symbol_text_data_exists = underlying_symbol_text_length > 0

  if underlying_symbol_text_data_exists then

    -- Runtime Size Of: Underlying Symbol Text Data
    index, underlying_symbol_text_data = moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text_data.dissect(buffer, index, packet, parent, underlying_symbol_text_length)
  end

  -- Composite value
  local underlying_symbol_text = underlying_symbol_text_data

  return index, underlying_symbol_text
end

-- Dissect: Underlying Symbol Text
moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.underlying_symbol_text, buffer(offset, 0))
    local index, value = moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text.fields(buffer, offset, packet, parent)
  end
end

-- Discrete Auction Message No Underlyings Group
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_group = {}

-- Calculate size of: Discrete Auction Message No Underlyings Group
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_group.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text.size(buffer, offset + index)

  return index
end

-- Display: Discrete Auction Message No Underlyings Group
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Discrete Auction Message No Underlyings Group
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_group.fields = function(buffer, offset, packet, parent, discrete_auction_message_no_underlyings_group_index)
  local index = offset

  -- Implicit Discrete Auction Message No Underlyings Group Index
  if discrete_auction_message_no_underlyings_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.discrete_auction_message_no_underlyings_group_index, discrete_auction_message_no_underlyings_group_index)
    iteration:set_generated()
  end

  -- Underlying Symbol Text: Struct of 2 fields
  index, underlying_symbol_text = moex_spectra_futinfoincremental_simba_v2_2_0.underlying_symbol_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Discrete Auction Message No Underlyings Group
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_group.dissect = function(buffer, offset, packet, parent, discrete_auction_message_no_underlyings_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.discrete_auction_message_no_underlyings_group, buffer(offset, 0))
    local index = moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_group.fields(buffer, offset, packet, parent, discrete_auction_message_no_underlyings_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_group.fields(buffer, offset, packet, parent, discrete_auction_message_no_underlyings_group_index)
  end
end

-- Group Size
moex_spectra_futinfoincremental_simba_v2_2_0.group_size = {}

-- Size: Group Size
moex_spectra_futinfoincremental_simba_v2_2_0.group_size.size =
  moex_spectra_futinfoincremental_simba_v2_2_0.block_length.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.num_in_group.size

-- Display: Group Size
moex_spectra_futinfoincremental_simba_v2_2_0.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
moex_spectra_futinfoincremental_simba_v2_2_0.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = moex_spectra_futinfoincremental_simba_v2_2_0.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = moex_spectra_futinfoincremental_simba_v2_2_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
moex_spectra_futinfoincremental_simba_v2_2_0.group_size.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.group_size, buffer(offset, 0))
    local index = moex_spectra_futinfoincremental_simba_v2_2_0.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.group_size.fields(buffer, offset, packet, parent)
  end
end

-- Discrete Auction Message No Underlyings Groups
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_groups = {}

-- Calculate size of: Discrete Auction Message No Underlyings Groups
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_groups.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.group_size.size

  -- Calculate field size from count
  local discrete_auction_message_no_underlyings_group_count = buffer(offset + index - 1, 1):uint()
  for i = 1, discrete_auction_message_no_underlyings_group_count do
    index = index + moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_group.size(buffer, offset + index)
  end
  return index
end

-- Display: Discrete Auction Message No Underlyings Groups
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Discrete Auction Message No Underlyings Groups
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = moex_spectra_futinfoincremental_simba_v2_2_0.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Discrete Auction Message No Underlyings Group
  for discrete_auction_message_no_underlyings_group_index = 1, num_in_group do
    index, discrete_auction_message_no_underlyings_group = moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_group.dissect(buffer, index, packet, parent, discrete_auction_message_no_underlyings_group_index)
  end

  return index
end

-- Dissect: Discrete Auction Message No Underlyings Groups
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.discrete_auction_message_no_underlyings_groups, buffer(offset, 0))
    local index = moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_groups.fields(buffer, offset, packet, parent)
  end
end

-- Discrete Auction Message
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message = {}

-- Calculate size of: Discrete Auction Message
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_open_time.size

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_from.size

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_till.size

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.auction_id.size

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32.size

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.event_id_open.size

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.event_id_close.size

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_groups.size(buffer, offset + index)

  return index
end

-- Display: Discrete Auction Message
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Discrete Auction Message
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trad Ses Open Time: uInt64
  index, trad_ses_open_time = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_open_time.dissect(buffer, index, packet, parent)

  -- Trad Ses Close Time From: uInt64
  index, trad_ses_close_time_from = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_from.dissect(buffer, index, packet, parent)

  -- Trad Ses Close Time Till: uInt64
  index, trad_ses_close_time_till = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time_till.dissect(buffer, index, packet, parent)

  -- Auction Id: Int64
  index, auction_id = moex_spectra_futinfoincremental_simba_v2_2_0.auction_id.dissect(buffer, index, packet, parent)

  -- Exchange Trading Session Id Int 32: Int32
  index, exchange_trading_session_id_int_32 = moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32.dissect(buffer, index, packet, parent)

  -- Event Id Open: Int32
  index, event_id_open = moex_spectra_futinfoincremental_simba_v2_2_0.event_id_open.dissect(buffer, index, packet, parent)

  -- Event Id Close: Int32
  index, event_id_close = moex_spectra_futinfoincremental_simba_v2_2_0.event_id_close.dissect(buffer, index, packet, parent)

  -- Discrete Auction Message No Underlyings Groups: Struct of 2 fields
  index, discrete_auction_message_no_underlyings_groups = moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message_no_underlyings_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Discrete Auction Message
moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.discrete_auction_message, buffer(offset, 0))
    local index = moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Message
moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_status_message = {}

-- Size: Trading Session Status Message
moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_status_message.size =
  moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_open_time.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_start_time.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_end_time.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_id.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32_null_optional.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_status.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.market_segment_id.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_event.size

-- Display: Trading Session Status Message
moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trad Ses Open Time: uInt64
  index, trad_ses_open_time = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_open_time.dissect(buffer, index, packet, parent)

  -- Trad Ses Close Time: uInt64
  index, trad_ses_close_time = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_close_time.dissect(buffer, index, packet, parent)

  -- Trad Ses Interm Clearing Start Time: uInt64NULL
  index, trad_ses_interm_clearing_start_time = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_start_time.dissect(buffer, index, packet, parent)

  -- Trad Ses Interm Clearing End Time: uInt64NULL
  index, trad_ses_interm_clearing_end_time = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_interm_clearing_end_time.dissect(buffer, index, packet, parent)

  -- Trading Session Id: TradingSessionID
  index, trading_session_id = moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Exchange Trading Session Id Int 32 Null optional: Int32NULL
  index, exchange_trading_session_id_int_32_null_optional = moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_id_int_32_null_optional.dissect(buffer, index, packet, parent)

  -- Trad Ses Status: TradSesStatus
  index, trad_ses_status = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_status.dissect(buffer, index, packet, parent)

  -- Market Segment Id: MarketSegmentID
  index, market_segment_id = moex_spectra_futinfoincremental_simba_v2_2_0.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Event: TradSesEvent
  index, trad_ses_event = moex_spectra_futinfoincremental_simba_v2_2_0.trad_ses_event.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.trading_session_status_message, buffer(offset, 0))
    local index = moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
moex_spectra_futinfoincremental_simba_v2_2_0.security_status_message = {}

-- Size: Security Status Message
moex_spectra_futinfoincremental_simba_v2_2_0.security_status_message.size =
  moex_spectra_futinfoincremental_simba_v2_2_0.security_id.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.symbol.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.security_trading_status.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.high_limit_px.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.low_limit_px.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_buy.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_sell.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_syntetic.size

-- Display: Security Status Message
moex_spectra_futinfoincremental_simba_v2_2_0.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
moex_spectra_futinfoincremental_simba_v2_2_0.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: Int32
  index, security_id = moex_spectra_futinfoincremental_simba_v2_2_0.security_id.dissect(buffer, index, packet, parent)

  -- Symbol: String25
  index, symbol = moex_spectra_futinfoincremental_simba_v2_2_0.symbol.dissect(buffer, index, packet, parent)

  -- Security Trading Status: SecurityTradingStatus
  index, security_trading_status = moex_spectra_futinfoincremental_simba_v2_2_0.security_trading_status.dissect(buffer, index, packet, parent)

  -- High Limit Px: Decimal5NULL
  index, high_limit_px = moex_spectra_futinfoincremental_simba_v2_2_0.high_limit_px.dissect(buffer, index, packet, parent)

  -- Low Limit Px: Decimal5NULL
  index, low_limit_px = moex_spectra_futinfoincremental_simba_v2_2_0.low_limit_px.dissect(buffer, index, packet, parent)

  -- Initial Margin On Buy: Decimal2NULL
  index, initial_margin_on_buy = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_buy.dissect(buffer, index, packet, parent)

  -- Initial Margin On Sell: Decimal2NULL
  index, initial_margin_on_sell = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_on_sell.dissect(buffer, index, packet, parent)

  -- Initial Margin Syntetic: Decimal2NULL
  index, initial_margin_syntetic = moex_spectra_futinfoincremental_simba_v2_2_0.initial_margin_syntetic.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
moex_spectra_futinfoincremental_simba_v2_2_0.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.security_status_message, buffer(offset, 0))
    local index = moex_spectra_futinfoincremental_simba_v2_2_0.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
moex_spectra_futinfoincremental_simba_v2_2_0.sequence_reset_message = {}

-- Size: Sequence Reset Message
moex_spectra_futinfoincremental_simba_v2_2_0.sequence_reset_message.size =
  moex_spectra_futinfoincremental_simba_v2_2_0.new_seq_no.size

-- Display: Sequence Reset Message
moex_spectra_futinfoincremental_simba_v2_2_0.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
moex_spectra_futinfoincremental_simba_v2_2_0.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: uInt32
  index, new_seq_no = moex_spectra_futinfoincremental_simba_v2_2_0.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
moex_spectra_futinfoincremental_simba_v2_2_0.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.sequence_reset_message, buffer(offset, 0))
    local index = moex_spectra_futinfoincremental_simba_v2_2_0.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
moex_spectra_futinfoincremental_simba_v2_2_0.heartbeat_message = {}

-- Display: Heartbeat Message
moex_spectra_futinfoincremental_simba_v2_2_0.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
moex_spectra_futinfoincremental_simba_v2_2_0.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
moex_spectra_futinfoincremental_simba_v2_2_0.payload = {}

-- Dispatch: Payload
moex_spectra_futinfoincremental_simba_v2_2_0.payload.dispatch = {
  [1] = moex_spectra_futinfoincremental_simba_v2_2_0.heartbeat_message.dissect,
  [2] = moex_spectra_futinfoincremental_simba_v2_2_0.sequence_reset_message.dissect,
  [9] = moex_spectra_futinfoincremental_simba_v2_2_0.security_status_message.dissect,
  [11] = moex_spectra_futinfoincremental_simba_v2_2_0.trading_session_status_message.dissect,
  [13] = moex_spectra_futinfoincremental_simba_v2_2_0.discrete_auction_message.dissect,
}

-- Dissect: Payload
moex_spectra_futinfoincremental_simba_v2_2_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = moex_spectra_futinfoincremental_simba_v2_2_0.payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sbe Header
moex_spectra_futinfoincremental_simba_v2_2_0.sbe_header = {}

-- Size: Sbe Header
moex_spectra_futinfoincremental_simba_v2_2_0.sbe_header.size =
  moex_spectra_futinfoincremental_simba_v2_2_0.block_length.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.template_id.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.schema_id.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.version.size

-- Display: Sbe Header
moex_spectra_futinfoincremental_simba_v2_2_0.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
moex_spectra_futinfoincremental_simba_v2_2_0.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = moex_spectra_futinfoincremental_simba_v2_2_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, template_id = moex_spectra_futinfoincremental_simba_v2_2_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = moex_spectra_futinfoincremental_simba_v2_2_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = moex_spectra_futinfoincremental_simba_v2_2_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
moex_spectra_futinfoincremental_simba_v2_2_0.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.sbe_header, buffer(offset, 0))
    local index = moex_spectra_futinfoincremental_simba_v2_2_0.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
moex_spectra_futinfoincremental_simba_v2_2_0.message = {}

-- Calculate size of: Message
moex_spectra_futinfoincremental_simba_v2_2_0.message.size = function(buffer, offset)
  local index = 0

  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + moex_spectra_futinfoincremental_simba_v2_2_0.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
moex_spectra_futinfoincremental_simba_v2_2_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
moex_spectra_futinfoincremental_simba_v2_2_0.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = moex_spectra_futinfoincremental_simba_v2_2_0.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 5 branches
  index = moex_spectra_futinfoincremental_simba_v2_2_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
moex_spectra_futinfoincremental_simba_v2_2_0.message.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.message, buffer(offset, 0))
    local index = moex_spectra_futinfoincremental_simba_v2_2_0.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.message.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Packet Header
moex_spectra_futinfoincremental_simba_v2_2_0.incremental_packet_header = {}

-- Size: Incremental Packet Header
moex_spectra_futinfoincremental_simba_v2_2_0.incremental_packet_header.size =
  moex_spectra_futinfoincremental_simba_v2_2_0.transact_time.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_i_d_uint_32_optional.size

-- Display: Incremental Packet Header
moex_spectra_futinfoincremental_simba_v2_2_0.incremental_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Packet Header
moex_spectra_futinfoincremental_simba_v2_2_0.incremental_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: uint64
  index, transact_time = moex_spectra_futinfoincremental_simba_v2_2_0.transact_time.dissect(buffer, index, packet, parent)

  -- Exchange Trading Session I D uint 32 optional: uint32
  index, exchange_trading_session_i_d_uint_32_optional = moex_spectra_futinfoincremental_simba_v2_2_0.exchange_trading_session_i_d_uint_32_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Packet Header
moex_spectra_futinfoincremental_simba_v2_2_0.incremental_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.incremental_packet_header, buffer(offset, 0))
    local index = moex_spectra_futinfoincremental_simba_v2_2_0.incremental_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.incremental_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.incremental_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Msg Flags
moex_spectra_futinfoincremental_simba_v2_2_0.msg_flags = {}

-- Size: Msg Flags
moex_spectra_futinfoincremental_simba_v2_2_0.msg_flags.size = 2

-- Display: Msg Flags
moex_spectra_futinfoincremental_simba_v2_2_0.msg_flags.display = function(range, value, packet, parent)
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
moex_spectra_futinfoincremental_simba_v2_2_0.msg_flags.bits = function(range, value, packet, parent)

  -- Last Fragment: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.last_fragment, range, value)

  -- Start Of Snapshot: 1 Bit
  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.start_of_snapshot, range, value)

  -- End Of Snapshot: 1 Bit
  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.end_of_snapshot, range, value)

  -- Incremental Packet: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.incremental_packet, range, value)

  -- Poss Dup Flag: 1 Bit Enum with 2 values
  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.poss_dup_flag, range, value)

  -- Reserved Bits: 11 Bit
  parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.reserved_bits, range, value)
end

-- Dissect: Msg Flags
moex_spectra_futinfoincremental_simba_v2_2_0.msg_flags.dissect = function(buffer, offset, packet, parent)
  local size = moex_spectra_futinfoincremental_simba_v2_2_0.msg_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = moex_spectra_futinfoincremental_simba_v2_2_0.msg_flags.display(range, value, packet, parent)
  local element = parent:add_le(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.msg_flags, range, display)

  if show.structs then
    moex_spectra_futinfoincremental_simba_v2_2_0.msg_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Data Packet Header
moex_spectra_futinfoincremental_simba_v2_2_0.market_data_packet_header = {}

-- Size: Market Data Packet Header
moex_spectra_futinfoincremental_simba_v2_2_0.market_data_packet_header.size =
  moex_spectra_futinfoincremental_simba_v2_2_0.msg_seq_num.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.msg_size.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.msg_flags.size + 
  moex_spectra_futinfoincremental_simba_v2_2_0.sending_time.size

-- Display: Market Data Packet Header
moex_spectra_futinfoincremental_simba_v2_2_0.market_data_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Data Packet Header
moex_spectra_futinfoincremental_simba_v2_2_0.market_data_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32
  index, msg_seq_num = moex_spectra_futinfoincremental_simba_v2_2_0.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Msg Size: uint16
  index, msg_size = moex_spectra_futinfoincremental_simba_v2_2_0.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Flags: Struct of 6 fields
  index, msg_flags = moex_spectra_futinfoincremental_simba_v2_2_0.msg_flags.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64
  index, sending_time = moex_spectra_futinfoincremental_simba_v2_2_0.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Data Packet Header
moex_spectra_futinfoincremental_simba_v2_2_0.market_data_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0.fields.market_data_packet_header, buffer(offset, 0))
    local index = moex_spectra_futinfoincremental_simba_v2_2_0.market_data_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = moex_spectra_futinfoincremental_simba_v2_2_0.market_data_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return moex_spectra_futinfoincremental_simba_v2_2_0.market_data_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
moex_spectra_futinfoincremental_simba_v2_2_0.udp_packet = {}

-- Verify required size of Udp packet
moex_spectra_futinfoincremental_simba_v2_2_0.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= moex_spectra_futinfoincremental_simba_v2_2_0.market_data_packet_header.size + moex_spectra_futinfoincremental_simba_v2_2_0.incremental_packet_header.size + moex_spectra_futinfoincremental_simba_v2_2_0.sbe_header.size
end

-- Dissect Udp Packet
moex_spectra_futinfoincremental_simba_v2_2_0.udp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Market Data Packet Header: Struct of 4 fields
  index, market_data_packet_header = moex_spectra_futinfoincremental_simba_v2_2_0.market_data_packet_header.dissect(buffer, index, packet, parent)

  -- Incremental Packet Header: Struct of 2 fields
  index, incremental_packet_header = moex_spectra_futinfoincremental_simba_v2_2_0.incremental_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = moex_spectra_futinfoincremental_simba_v2_2_0.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_moex_spectra_futinfoincremental_simba_v2_2_0.init()
end

-- Dissector for Moex Spectra FutInfoIncremental Simba 2.2.0
function omi_moex_spectra_futinfoincremental_simba_v2_2_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_moex_spectra_futinfoincremental_simba_v2_2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_moex_spectra_futinfoincremental_simba_v2_2_0, buffer(), omi_moex_spectra_futinfoincremental_simba_v2_2_0.description, "("..buffer:len().." Bytes)")
  return moex_spectra_futinfoincremental_simba_v2_2_0.udp_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Udp Packet: would its message dispatch accept this frame?
moex_spectra_futinfoincremental_simba_v2_2_0.udp_packet.fingerprint = function(buffer)
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
  if template_id == 9 then
    return true
  end

  -- Trading Session Status Message
  if template_id == 11 then
    return true
  end

  -- Discrete Auction Message
  if template_id == 13 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
moex_spectra_futinfoincremental_simba_v2_2_0.schema_id.verify = function(buffer)
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
moex_spectra_futinfoincremental_simba_v2_2_0.version.verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 34 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(34, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Moex Spectra FutInfoIncremental Simba 2.2.0 (Udp)
local function omi_moex_spectra_futinfoincremental_simba_v2_2_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not moex_spectra_futinfoincremental_simba_v2_2_0.udp_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not moex_spectra_futinfoincremental_simba_v2_2_0.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not moex_spectra_futinfoincremental_simba_v2_2_0.version.verify(buffer) then return false end

  -- Verify the frame matches this udp udp packet message dispatch
  if not moex_spectra_futinfoincremental_simba_v2_2_0.udp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_moex_spectra_futinfoincremental_simba_v2_2_0
  omi_moex_spectra_futinfoincremental_simba_v2_2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Moex Spectra FutInfoIncremental Simba 2.2.0
omi_moex_spectra_futinfoincremental_simba_v2_2_0:register_heuristic("udp", omi_moex_spectra_futinfoincremental_simba_v2_2_0_udp_heuristic)

-- Register Moex Spectra FutInfoIncremental Simba 2.2.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_moex_spectra_futinfoincremental_simba_v2_2_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Moscow Exchange
--   Version: 2.2.0
--   Since: 2.0.0
--   Date: Friday, October 14, 2022
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
