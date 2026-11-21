-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Index Gids Itch 1.0.i Protocol
local omi_nasdaq_index_gids_itch_v1_0_i = Proto("Omi.Nasdaq.Index.Gids.Itch.v1.0.i", "Nasdaq Index Gids Itch 1.0.i")

-- Protocol table
local nasdaq_index_gids_itch_v1_0_i = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Index Gids Itch 1.0.i Fields
omi_nasdaq_index_gids_itch_v1_0_i.fields.asset_type = ProtoField.new("Asset Type", "nasdaq.index.gids.itch.v1.0.i.assettype", ftypes.STRING, nil, nil, nil, "The primary asset class for the Instrument ID. Refer to Appendix A for allowable values.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.base_date = ProtoField.new("Base Date", "nasdaq.index.gids.itch.v1.0.i.basedate", ftypes.UINT32, nil, nil, nil, "Inception date of the index.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.base_value = ProtoField.new("Base Value", "nasdaq.index.gids.itch.v1.0.i.basevalue", ftypes.DOUBLE, nil, nil, nil, "Index value at inception.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.brand = ProtoField.new("Brand", "nasdaq.index.gids.itch.v1.0.i.brand", ftypes.STRING, nil, nil, nil, "The Index brand name for the Instrument ID. Refer to Appendix A for allowable values.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.coupon = ProtoField.new("Coupon", "nasdaq.index.gids.itch.v1.0.i.coupon", ftypes.DOUBLE, nil, nil, nil, "Denotes the index coupon value calculated as the weighted average.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.currency = ProtoField.new("Currency", "nasdaq.index.gids.itch.v1.0.i.currency", ftypes.STRING, nil, nil, nil, "The ISO 4217 Currency Code for the Instrument ID.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.dissemination_flag = ProtoField.new("Dissemination Flag", "nasdaq.index.gids.itch.v1.0.i.disseminationflag", ftypes.STRING, nil, nil, nil, "Flag to indicate if the index detail messages will be disseminated via GIDS 2.0 for the Instrument ID during the current system date.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.duration = ProtoField.new("Duration", "nasdaq.index.gids.itch.v1.0.i.duration", ftypes.DOUBLE, nil, nil, nil, "Denotes the Instrument duration value calculated as the weighted average according to Macaulay's duration")
omi_nasdaq_index_gids_itch_v1_0_i.fields.ecs = ProtoField.new("Ecs", "nasdaq.index.gids.itch.v1.0.i.ecs", ftypes.DOUBLE, nil, nil, nil, "Estimated Cash Per Share.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.ecu = ProtoField.new("Ecu", "nasdaq.index.gids.itch.v1.0.i.ecu", ftypes.DOUBLE, nil, nil, nil, "Estimated Cash Per Creation Unit.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.effective_date = ProtoField.new("Effective Date", "nasdaq.index.gids.itch.v1.0.i.effectivedate", ftypes.UINT32, nil, nil, nil, "Effective Date to which the information should be applied")
omi_nasdaq_index_gids_itch_v1_0_i.fields.eod_value = ProtoField.new("Eod Value", "nasdaq.index.gids.itch.v1.0.i.eodvalue", ftypes.DOUBLE, nil, nil, nil, "end of day value")
omi_nasdaq_index_gids_itch_v1_0_i.fields.estimated_cash_per_cu_symbol = ProtoField.new("Estimated Cash Per Cu Symbol", "nasdaq.index.gids.itch.v1.0.i.estimatedcashpercusymbol", ftypes.STRING, nil, nil, nil, "Symbol identifying the Estimated Cash Per Creation Unit")
omi_nasdaq_index_gids_itch_v1_0_i.fields.estimated_cash_per_share_symbol = ProtoField.new("Estimated Cash Per Share Symbol", "nasdaq.index.gids.itch.v1.0.i.estimatedcashpersharesymbol", ftypes.STRING, nil, nil, nil, "Symbol identifying the Estimated Cash Per Share - Net Accrued Dividend.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_ipv_symbol = ProtoField.new("Etp Ipv Symbol", "nasdaq.index.gids.itch.v1.0.i.etpipvsymbol", ftypes.STRING, nil, nil, nil, "Symbol identifying the Intraday Portfolio Value (IPV) to be disseminated in the ETP IPV Value message.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_name = ProtoField.new("Etp Name", "nasdaq.index.gids.itch.v1.0.i.etpname", ftypes.STRING, nil, nil, nil, "ETP Instrument Name")
omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_name_length = ProtoField.new("Etp Name Length", "nasdaq.index.gids.itch.v1.0.i.etpnamelength", ftypes.INT16, nil, nil, nil, "Length of the following Name")
omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_trading_symbol = ProtoField.new("Etp Trading Symbol", "nasdaq.index.gids.itch.v1.0.i.etptradingsymbol", ftypes.STRING, nil, nil, nil, "Denotes the ETP instrument trading symbol as assigned by the listing market.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.event_code = ProtoField.new("Event Code", "nasdaq.index.gids.itch.v1.0.i.eventcode", ftypes.STRING, nil, nil, nil, "Denotes the GIDS system event code.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.financial_product_type = ProtoField.new("Financial Product Type", "nasdaq.index.gids.itch.v1.0.i.financialproducttype", ftypes.STRING, nil, nil, nil, "The financial product code associated with the instrument ID. Refer to Appendix A for allowable values.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.frequency = ProtoField.new("Frequency", "nasdaq.index.gids.itch.v1.0.i.frequency", ftypes.STRING, nil, nil, nil, "Denotes the Index frequency code associated with the Instrument ID.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.geography = ProtoField.new("Geography", "nasdaq.index.gids.itch.v1.0.i.geography", ftypes.STRING, nil, nil, nil, "Denotes the Index Geography code associated with the Instrument ID. Refer to Appendix A for allowable values.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.high = ProtoField.new("High", "nasdaq.index.gids.itch.v1.0.i.high", ftypes.DOUBLE, nil, nil, nil, "calculated high value")
omi_nasdaq_index_gids_itch_v1_0_i.fields.index_calculation_method = ProtoField.new("Index Calculation Method", "nasdaq.index.gids.itch.v1.0.i.indexcalculationmethod", ftypes.STRING, nil, nil, nil, "Denotes the Index Calculation Method code associated with the Instrument ID.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.index_settlement_type = ProtoField.new("Index Settlement Type", "nasdaq.index.gids.itch.v1.0.i.indexsettlementtype", ftypes.STRING, nil, nil, nil, "Denotes the Index Settlement Type. Populated for Index Settlement Symbols only.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.index_usage = ProtoField.new("Index Usage", "nasdaq.index.gids.itch.v1.0.i.indexusage", ftypes.STRING, nil, nil, nil, "Denotes the current Index usage code associated with the Instrument ID.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.industry_mic = ProtoField.new("Industry Mic", "nasdaq.index.gids.itch.v1.0.i.industrymic", ftypes.STRING, nil, nil, nil, "The ISO 10383 Market Identification Code (MIC) of the component security's primary listing market.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.instrument_id = ProtoField.new("Instrument Id", "nasdaq.index.gids.itch.v1.0.i.instrumentid", ftypes.STRING, nil, nil, nil, "The instrument identifier for the Index.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.instrument_name = ProtoField.new("Instrument Name", "nasdaq.index.gids.itch.v1.0.i.instrumentname", ftypes.STRING, nil, nil, nil, "The Instrument Name or Index Name.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.ipv_or_iiv_symbol = ProtoField.new("Ipv Or Iiv Symbol", "nasdaq.index.gids.itch.v1.0.i.ipvoriivsymbol", ftypes.STRING, nil, nil, nil, "Denotes the instrument identifier for the ETP in the directory message.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.ipv_symbol = ProtoField.new("Ipv Symbol", "nasdaq.index.gids.itch.v1.0.i.ipvsymbol", ftypes.STRING, nil, nil, nil, "Denotes the IPV or IIV symbol for the ETP.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.ipv_value = ProtoField.new("Ipv Value", "nasdaq.index.gids.itch.v1.0.i.ipvvalue", ftypes.DOUBLE, nil, nil, nil, "The current calculated value for the IPV symbol.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.issue_mic = ProtoField.new("Issue Mic", "nasdaq.index.gids.itch.v1.0.i.issuemic", ftypes.STRING, nil, nil, nil, "The ISO 10383 Market Identification Code (MIC) of the component security's primary listing market.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.issue_name = ProtoField.new("Issue Name", "nasdaq.index.gids.itch.v1.0.i.issuename", ftypes.STRING, nil, nil, nil, "The issue name for the component security, as defined by the Issue MIC.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.issue_symbol = ProtoField.new("Issue Symbol", "nasdaq.index.gids.itch.v1.0.i.issuesymbol", ftypes.STRING, nil, nil, nil, "The security trading symbol for the component security, as assigned by the Issue MIC.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.low = ProtoField.new("Low", "nasdaq.index.gids.itch.v1.0.i.low", ftypes.DOUBLE, nil, nil, nil, "calculated low value")
omi_nasdaq_index_gids_itch_v1_0_i.fields.market_cap_size = ProtoField.new("Market Cap Size", "nasdaq.index.gids.itch.v1.0.i.marketcapsize", ftypes.STRING, nil, nil, nil, "The Index market capitalization size for the Instrument ID. Refer to Appendix A for allowable values.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.maturity_date = ProtoField.new("Maturity Date", "nasdaq.index.gids.itch.v1.0.i.maturitydate", ftypes.UINT32, nil, nil, nil, "For ETN products this will represent when the ETN reaches maturity. Populated for ETN products only.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.message_count = ProtoField.new("Message Count", "nasdaq.index.gids.itch.v1.0.i.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_nasdaq_index_gids_itch_v1_0_i.fields.message_length = ProtoField.new("Message Length", "nasdaq.index.gids.itch.v1.0.i.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_nasdaq_index_gids_itch_v1_0_i.fields.message_type = ProtoField.new("Message Type", "nasdaq.index.gids.itch.v1.0.i.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_nasdaq_index_gids_itch_v1_0_i.fields.name_length = ProtoField.new("Name Length", "nasdaq.index.gids.itch.v1.0.i.namelength", ftypes.INT16, nil, nil, nil, "The number of bytes for the Instrument Name field to follow.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.nanoseconds = ProtoField.new("Nanoseconds", "nasdaq.index.gids.itch.v1.0.i.nanoseconds", ftypes.INT32, nil, nil, nil, "Reflects nanosecond portion of timestamp.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.nav = ProtoField.new("Nav", "nasdaq.index.gids.itch.v1.0.i.nav", ftypes.DOUBLE, nil, nil, nil, "Net Asset Value per Creation Unit")
omi_nasdaq_index_gids_itch_v1_0_i.fields.nav_symbol = ProtoField.new("Nav Symbol", "nasdaq.index.gids.itch.v1.0.i.navsymbol", ftypes.STRING, nil, nil, nil, "Symbol identifying the Net Asset Value per Creation Unit")
omi_nasdaq_index_gids_itch_v1_0_i.fields.net_change = ProtoField.new("Net Change", "nasdaq.index.gids.itch.v1.0.i.netchange", ftypes.DOUBLE, nil, nil, nil, "net change (signed, to indicate direction)")
omi_nasdaq_index_gids_itch_v1_0_i.fields.number_of_issue_participation_messages = ProtoField.new("Number Of Issue Participation Messages", "nasdaq.index.gids.itch.v1.0.i.numberofissueparticipationmessages", ftypes.INT32, nil, nil, nil, "Reflects the number of Issue Participation messages associated with the given Index Instrument ID; zero if not supported.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.schedule = ProtoField.new("Schedule", "nasdaq.index.gids.itch.v1.0.i.schedule", ftypes.STRING, nil, nil, nil, "Populated only for session-related event messages, otherwise space filled. Refer to Appendix A.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.second_utc = ProtoField.new("Second", "nasdaq.index.gids.itch.v1.0.i.second.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "The UTC time, giving the number of seconds since the Unix epoch (midnight, January 1, 1970).")
omi_nasdaq_index_gids_itch_v1_0_i.fields.second = ProtoField.new("Second", "nasdaq.index.gids.itch.v1.0.i.second", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "The UTC time, giving the number of seconds since the Unix epoch (midnight, January 1, 1970).")
omi_nasdaq_index_gids_itch_v1_0_i.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.index.gids.itch.v1.0.i.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_nasdaq_index_gids_itch_v1_0_i.fields.series = ProtoField.new("Series", "nasdaq.index.gids.itch.v1.0.i.series", ftypes.STRING, nil, nil, nil, "The Index series identifier for the Instrument ID. Refer to Appendix A for allowable values.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.session = ProtoField.new("Session", "nasdaq.index.gids.itch.v1.0.i.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_nasdaq_index_gids_itch_v1_0_i.fields.settlement_type = ProtoField.new("Settlement Type", "nasdaq.index.gids.itch.v1.0.i.settlementtype", ftypes.STRING, nil, nil, nil, "The Index Settlement Type for the Instrument ID. Refer to Appendix A for allowable values.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.settlement_value = ProtoField.new("Settlement Value", "nasdaq.index.gids.itch.v1.0.i.settlementvalue", ftypes.DOUBLE, nil, nil, nil, "The current calculated settlement value for the instrument ID.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.sod_value = ProtoField.new("Sod Value", "nasdaq.index.gids.itch.v1.0.i.sodvalue", ftypes.DOUBLE, nil, nil, nil, "Start of Day Value (prior day's closing price adjusted for corporate actions)")
omi_nasdaq_index_gids_itch_v1_0_i.fields.state = ProtoField.new("State", "nasdaq.index.gids.itch.v1.0.i.state", ftypes.STRING, nil, nil, nil, "Denotes the current Index state associated with the Instrument ID.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.strategy = ProtoField.new("Strategy", "nasdaq.index.gids.itch.v1.0.i.strategy", ftypes.STRING, nil, nil, nil, "The Index strategy for the Instrument ID. Refer to Appendix A for allowable values.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.summary_type = ProtoField.new("Summary Type", "nasdaq.index.gids.itch.v1.0.i.summarytype", ftypes.STRING)
omi_nasdaq_index_gids_itch_v1_0_i.fields.tick_direction = ProtoField.new("Tick Direction", "nasdaq.index.gids.itch.v1.0.i.tickdirection", ftypes.STRING, nil, nil, nil, "The net change direction for the tick value (since the last tick update).")
omi_nasdaq_index_gids_itch_v1_0_i.fields.tick_value = ProtoField.new("Tick Value", "nasdaq.index.gids.itch.v1.0.i.tickvalue", ftypes.DOUBLE, nil, nil, nil, "The current calculated tick value for instrument ID.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.total_cash_per_cu = ProtoField.new("Total Cash Per Cu", "nasdaq.index.gids.itch.v1.0.i.totalcashpercu", ftypes.DOUBLE, nil, nil, nil, "The Estimated T-1 Cash Amount Per Creation Unit.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.total_cash_per_cu_symbol = ProtoField.new("Total Cash Per Cu Symbol", "nasdaq.index.gids.itch.v1.0.i.totalcashpercusymbol", ftypes.STRING, nil, nil, nil, "Symbol identifying the Total Cash Amount Per Creation Unit")
omi_nasdaq_index_gids_itch_v1_0_i.fields.tso_outstanding = ProtoField.new("Tso Outstanding", "nasdaq.index.gids.itch.v1.0.i.tsooutstanding", ftypes.INT64, nil, nil, nil, "Total Shares Outstanding")
omi_nasdaq_index_gids_itch_v1_0_i.fields.tso_symbol = ProtoField.new("Tso Symbol", "nasdaq.index.gids.itch.v1.0.i.tsosymbol", ftypes.STRING, nil, nil, nil, "Symbol identifying the Total Shares Outstanding")
omi_nasdaq_index_gids_itch_v1_0_i.fields.yield = ProtoField.new("Yield", "nasdaq.index.gids.itch.v1.0.i.yield", ftypes.DOUBLE, nil, nil, nil, "Denotes the yield for the instrument value calculated as the weighted average.")

-- Nasdaq Index Gids Itch 1.0.i Framing
omi_nasdaq_index_gids_itch_v1_0_i.fields.message = ProtoField.new("Message", "nasdaq.index.gids.itch.v1.0.i.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_nasdaq_index_gids_itch_v1_0_i.fields.message_header = ProtoField.new("Message Header", "nasdaq.index.gids.itch.v1.0.i.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_nasdaq_index_gids_itch_v1_0_i.fields.packet = ProtoField.new("Packet", "nasdaq.index.gids.itch.v1.0.i.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_nasdaq_index_gids_itch_v1_0_i.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.index.gids.itch.v1.0.i.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Nasdaq Index Gids 1.0.i Application Messages
omi_nasdaq_index_gids_itch_v1_0_i.fields.commodity_summary_message = ProtoField.new("Commodity Summary Message", "nasdaq.index.gids.itch.v1.0.i.commoditysummarymessage", ftypes.STRING, nil, nil, nil, "Relays the summary of the current trading day's activity for a commodity index.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.equities_summary_message = ProtoField.new("Equities Summary Message", "nasdaq.index.gids.itch.v1.0.i.equitiessummarymessage", ftypes.STRING, nil, nil, nil, "Relays the summary of the current trading day's activity for an equity index.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_directory_and_daily_valuation_message = ProtoField.new("Etp Directory And Daily Valuation Message", "nasdaq.index.gids.itch.v1.0.i.etpdirectoryanddailyvaluationmessage", ftypes.STRING, nil, nil, nil, "Provides the symbols and values of the prior day's closing ETP valuations, disseminated as part of the pre-opening processes.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_intra_day_valuation_message = ProtoField.new("Etp Intra Day Valuation Message", "nasdaq.index.gids.itch.v1.0.i.etpintradayvaluationmessage", ftypes.STRING, nil, nil, nil, "Disseminates the Intraday Portfolio Value (IPV) of an ETF or the Intra-Day Indicative Value (IIV) of an ETMF.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_summary_message = ProtoField.new("Etp Summary Message", "nasdaq.index.gids.itch.v1.0.i.etpsummarymessage", ftypes.STRING, nil, nil, nil, "Relays the summary of the current trading day's IPV activity for an ETF or the IIV activity for an ETMF.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.fixed_income_summary_message = ProtoField.new("Fixed Income Summary Message", "nasdaq.index.gids.itch.v1.0.i.fixedincomesummarymessage", ftypes.STRING, nil, nil, nil, "Relays the summary of the current trading day's activity for a fixed income index.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.index_directory_message = ProtoField.new("Index Directory Message", "nasdaq.index.gids.itch.v1.0.i.indexdirectorymessage", ftypes.STRING, nil, nil, nil, "Relays instrument level or reference data for Nasdaq and third party indexes.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.intraday_index_value_message = ProtoField.new("Intraday Index Value Message", "nasdaq.index.gids.itch.v1.0.i.intradayindexvaluemessage", ftypes.STRING, nil, nil, nil, "The Intraday Index Value for a given instrument, disseminated at a defined frequency and schedule.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.issue_symbol_participation_message = ProtoField.new("Issue Symbol Participation Message", "nasdaq.index.gids.itch.v1.0.i.issuesymbolparticipationmessage", ftypes.STRING, nil, nil, nil, "Relays the component securities for select Nasdaq indexes.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.settlement_value_message = ProtoField.new("Settlement Value Message", "nasdaq.index.gids.itch.v1.0.i.settlementvaluemessage", ftypes.STRING, nil, nil, nil, "Sends the official settlement price and settlement session used to settle cash derivatives on financial products when they expire.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.index.gids.itch.v1.0.i.systemeventmessage", ftypes.STRING, nil, nil, nil, "Signals a data feed handler event.")
omi_nasdaq_index_gids_itch_v1_0_i.fields.timestamp_seconds_message = ProtoField.new("Timestamp Seconds Message", "nasdaq.index.gids.itch.v1.0.i.timestampsecondsmessage", ftypes.STRING, nil, nil, nil, "For every second during which there is at least one payload message, the seconds since the Unix epoch.")

-- Nasdaq Index Gids 1.0.i Session Messages
omi_nasdaq_index_gids_itch_v1_0_i.fields.end_of_session = ProtoField.new("End Of Session", "nasdaq.index.gids.itch.v1.0.i.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_nasdaq_index_gids_itch_v1_0_i.fields.heartbeat = ProtoField.new("Heartbeat", "nasdaq.index.gids.itch.v1.0.i.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Nasdaq Index Gids Itch 1.0.i Generated Fields
omi_nasdaq_index_gids_itch_v1_0_i.fields.message_index = ProtoField.new("Message Index", "nasdaq.index.gids.itch.v1.0.i.messageindex", ftypes.UINT16)
omi_nasdaq_index_gids_itch_v1_0_i.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "nasdaq.index.gids.itch.v1.0.i.messagesequencenumber", ftypes.UINT64)
omi_nasdaq_index_gids_itch_v1_0_i.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.index.gids.itch.v1.0.i.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Nasdaq Index Gids Itch 1.0.i Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "DateTime Local", 2 },
  { 3, "DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=DateTime Local, 3=DateTime Utc, 4=DateTime Zone
nasdaq_index_gids_itch_v1_0_i.timestamp_format = 3


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq Index Gids Itch 1.0.i Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Nasdaq Index Gids Itch 1.0.i Show Options
omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_nasdaq_index_gids_itch_v1_0_i.prefs.timestamp_format = Pref.enum("Timestamp Format", 3, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_nasdaq_index_gids_itch_v1_0_i.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_application_messages
  end
  if show.headers ~= omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_headers then
    show.headers = omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_headers
  end
  if show.structs ~= omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_structs then
    show.structs = omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_structs
  end
  if show.indexes ~= omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_indexes then
    show.indexes = omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_indexes
  end
  if show.sequences ~= omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_sequences then
    show.sequences = omi_nasdaq_index_gids_itch_v1_0_i.prefs.show_sequences
  end
  if nasdaq_index_gids_itch_v1_0_i.timestamp_format ~= omi_nasdaq_index_gids_itch_v1_0_i.prefs.timestamp_format then
    nasdaq_index_gids_itch_v1_0_i.timestamp_format = omi_nasdaq_index_gids_itch_v1_0_i.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_index_gids_itch_v1_0_i.conversation = {}
nasdaq_index_gids_itch_v1_0_i.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
nasdaq_index_gids_itch_v1_0_i.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_index_gids_itch_v1_0_i.conversation.data = function(packet)
  local key = nasdaq_index_gids_itch_v1_0_i.conversation.key(packet)
  local data = nasdaq_index_gids_itch_v1_0_i.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} } }
    nasdaq_index_gids_itch_v1_0_i.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_index_gids_itch_v1_0_i.conversation.current = nil


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  while finish > 0 and str:byte(finish) == 0x20 do
    finish = finish - 1
  end

  return str:sub(1, finish)
end


-----------------------------------------------------------------------
-- Nasdaq Index Gids Itch 1.0.i Fields
-----------------------------------------------------------------------

-- Asset Type
nasdaq_index_gids_itch_v1_0_i.asset_type = {}

-- Size: Asset Type
nasdaq_index_gids_itch_v1_0_i.asset_type.size = 2

-- Display: Asset Type
nasdaq_index_gids_itch_v1_0_i.asset_type.display = function(value)
  if value == "" then
    return "Asset Type: Not Specified (<whitespace>)"
  end
  if value == "EQ" then
    return "Asset Type: Equity (EQ)"
  end
  if value == "CM" then
    return "Asset Type: Commodity (CM)"
  end
  if value == "FI" then
    return "Asset Type: Fixed Income (FI)"
  end
  if value == "FX" then
    return "Asset Type: Foreign Exchange (FX)"
  end
  if value == "SP" then
    return "Asset Type: Structured Products (SP)"
  end
  if value == "FU" then
    return "Asset Type: Funds (FU)"
  end
  if value == "IX" then
    return "Asset Type: Index (IX)"
  end
  if value == "MC" then
    return "Asset Type: Multi Class (MC)"
  end
  if value == "XF" then
    return "Asset Type: Exchange Traded Fund (XF)"
  end
  if value == "XN" then
    return "Asset Type: Exchange Traded Note (XN)"
  end
  if value == "EC" then
    return "Asset Type: Economic (EC)"
  end

  return "Asset Type: Unknown("..value..")"
end

-- Dissect: Asset Type
nasdaq_index_gids_itch_v1_0_i.asset_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.asset_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.asset_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.asset_type, range, value, display)

  return offset + length, value
end

-- Base Date
nasdaq_index_gids_itch_v1_0_i.base_date = {}

-- Size: Base Date
nasdaq_index_gids_itch_v1_0_i.base_date.size = 4

-- Display: Base Date
nasdaq_index_gids_itch_v1_0_i.base_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Base Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Base Date
nasdaq_index_gids_itch_v1_0_i.base_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.base_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_index_gids_itch_v1_0_i.base_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.base_date, range, value, display)

  return offset + length, value
end

-- Base Value
nasdaq_index_gids_itch_v1_0_i.base_value = {}

-- Size: Base Value
nasdaq_index_gids_itch_v1_0_i.base_value.size = 8

-- Display: Base Value
nasdaq_index_gids_itch_v1_0_i.base_value.display = function(value)
  return "Base Value: "..value
end

-- Translate: Base Value
nasdaq_index_gids_itch_v1_0_i.base_value.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: Base Value
nasdaq_index_gids_itch_v1_0_i.base_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.base_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.base_value.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.base_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.base_value, range, value, display)

  return offset + length, value
end

-- Brand
nasdaq_index_gids_itch_v1_0_i.brand = {}

-- Size: Brand
nasdaq_index_gids_itch_v1_0_i.brand.size = 2

-- Display: Brand
nasdaq_index_gids_itch_v1_0_i.brand.display = function(value)
  if value == "" then
    return "Brand: Not Specified (<whitespace>)"
  end
  if value == "NQ" then
    return "Brand: Nasdaq (NQ)"
  end
  if value == "CI" then
    return "Brand: Custom Index (CI)"
  end
  if value == "OX" then
    return "Brand: Omx (OX)"
  end
  if value == "NX" then
    return "Brand: Nasdaq Nx (NX)"
  end
  if value == "PI" then
    return "Brand: Partner Index (PI)"
  end
  if value == "PX" then
    return "Brand: Phlx (PX)"
  end
  if value == "OP" then
    return "Brand: Outsourced Partner (OP)"
  end
  if value == "GA" then
    return "Brand: Global Access Partner (GA)"
  end
  if value == "FN" then
    return "Brand: First North (FN)"
  end

  return "Brand: Unknown("..value..")"
end

-- Dissect: Brand
nasdaq_index_gids_itch_v1_0_i.brand.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.brand.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.brand.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.brand, range, value, display)

  return offset + length, value
end

-- Coupon
nasdaq_index_gids_itch_v1_0_i.coupon = {}

-- Size: Coupon
nasdaq_index_gids_itch_v1_0_i.coupon.size = 8

-- Display: Coupon
nasdaq_index_gids_itch_v1_0_i.coupon.display = function(value)
  return "Coupon: "..value
end

-- Translate: Coupon
nasdaq_index_gids_itch_v1_0_i.coupon.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: Coupon
nasdaq_index_gids_itch_v1_0_i.coupon.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.coupon.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.coupon.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.coupon.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.coupon, range, value, display)

  return offset + length, value
end

-- Currency
nasdaq_index_gids_itch_v1_0_i.currency = {}

-- Size: Currency
nasdaq_index_gids_itch_v1_0_i.currency.size = 3

-- Display: Currency
nasdaq_index_gids_itch_v1_0_i.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
nasdaq_index_gids_itch_v1_0_i.currency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.currency, range, value, display)

  return offset + length, value
end

-- Dissemination Flag
nasdaq_index_gids_itch_v1_0_i.dissemination_flag = {}

-- Size: Dissemination Flag
nasdaq_index_gids_itch_v1_0_i.dissemination_flag.size = 1

-- Display: Dissemination Flag
nasdaq_index_gids_itch_v1_0_i.dissemination_flag.labels = {
  ["Y"] = "Dissemination Flag: Disseminated (Y)",
  ["N"] = "Dissemination Flag: Not Disseminated (N)",
}

nasdaq_index_gids_itch_v1_0_i.dissemination_flag.display = function(value)
  return nasdaq_index_gids_itch_v1_0_i.dissemination_flag.labels[value] or "Dissemination Flag: Unknown("..value..")"
end

-- Dissect: Dissemination Flag
nasdaq_index_gids_itch_v1_0_i.dissemination_flag.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.dissemination_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.dissemination_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.dissemination_flag, range, value, display)

  return offset + length, value
end

-- Duration
nasdaq_index_gids_itch_v1_0_i.duration = {}

-- Size: Duration
nasdaq_index_gids_itch_v1_0_i.duration.size = 8

-- Display: Duration
nasdaq_index_gids_itch_v1_0_i.duration.display = function(value)
  return "Duration: "..value
end

-- Translate: Duration
nasdaq_index_gids_itch_v1_0_i.duration.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: Duration
nasdaq_index_gids_itch_v1_0_i.duration.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.duration.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.duration.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.duration, range, value, display)

  return offset + length, value
end

-- Ecs
nasdaq_index_gids_itch_v1_0_i.ecs = {}

-- Size: Ecs
nasdaq_index_gids_itch_v1_0_i.ecs.size = 8

-- Display: Ecs
nasdaq_index_gids_itch_v1_0_i.ecs.display = function(value)
  return "Ecs: "..value
end

-- Translate: Ecs
nasdaq_index_gids_itch_v1_0_i.ecs.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Ecs
nasdaq_index_gids_itch_v1_0_i.ecs.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.ecs.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.ecs.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.ecs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.ecs, range, value, display)

  return offset + length, value
end

-- Ecu
nasdaq_index_gids_itch_v1_0_i.ecu = {}

-- Size: Ecu
nasdaq_index_gids_itch_v1_0_i.ecu.size = 8

-- Display: Ecu
nasdaq_index_gids_itch_v1_0_i.ecu.display = function(value)
  return "Ecu: "..value
end

-- Translate: Ecu
nasdaq_index_gids_itch_v1_0_i.ecu.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Ecu
nasdaq_index_gids_itch_v1_0_i.ecu.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.ecu.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.ecu.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.ecu.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.ecu, range, value, display)

  return offset + length, value
end

-- Effective Date
nasdaq_index_gids_itch_v1_0_i.effective_date = {}

-- Size: Effective Date
nasdaq_index_gids_itch_v1_0_i.effective_date.size = 4

-- Display: Effective Date
nasdaq_index_gids_itch_v1_0_i.effective_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Effective Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Effective Date
nasdaq_index_gids_itch_v1_0_i.effective_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.effective_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_index_gids_itch_v1_0_i.effective_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.effective_date, range, value, display)

  return offset + length, value
end

-- Eod Value
nasdaq_index_gids_itch_v1_0_i.eod_value = {}

-- Size: Eod Value
nasdaq_index_gids_itch_v1_0_i.eod_value.size = 8

-- Display: Eod Value
nasdaq_index_gids_itch_v1_0_i.eod_value.display = function(value)
  return "Eod Value: "..value
end

-- Translate: Eod Value
nasdaq_index_gids_itch_v1_0_i.eod_value.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: Eod Value
nasdaq_index_gids_itch_v1_0_i.eod_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.eod_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.eod_value.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.eod_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.eod_value, range, value, display)

  return offset + length, value
end

-- Estimated Cash Per Cu Symbol
nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_cu_symbol = {}

-- Size: Estimated Cash Per Cu Symbol
nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_cu_symbol.size = 18

-- Display: Estimated Cash Per Cu Symbol
nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_cu_symbol.display = function(value)
  return "Estimated Cash Per Cu Symbol: "..value
end

-- Dissect: Estimated Cash Per Cu Symbol
nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_cu_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_cu_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_cu_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.estimated_cash_per_cu_symbol, range, value, display)

  return offset + length, value
end

-- Estimated Cash Per Share Symbol
nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_share_symbol = {}

-- Size: Estimated Cash Per Share Symbol
nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_share_symbol.size = 18

-- Display: Estimated Cash Per Share Symbol
nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_share_symbol.display = function(value)
  return "Estimated Cash Per Share Symbol: "..value
end

-- Dissect: Estimated Cash Per Share Symbol
nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_share_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_share_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_share_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.estimated_cash_per_share_symbol, range, value, display)

  return offset + length, value
end

-- Etp Ipv Symbol
nasdaq_index_gids_itch_v1_0_i.etp_ipv_symbol = {}

-- Size: Etp Ipv Symbol
nasdaq_index_gids_itch_v1_0_i.etp_ipv_symbol.size = 18

-- Display: Etp Ipv Symbol
nasdaq_index_gids_itch_v1_0_i.etp_ipv_symbol.display = function(value)
  return "Etp Ipv Symbol: "..value
end

-- Dissect: Etp Ipv Symbol
nasdaq_index_gids_itch_v1_0_i.etp_ipv_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.etp_ipv_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.etp_ipv_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_ipv_symbol, range, value, display)

  return offset + length, value
end

-- Etp Name
nasdaq_index_gids_itch_v1_0_i.etp_name = {}

-- Display: Etp Name
nasdaq_index_gids_itch_v1_0_i.etp_name.display = function(value)
  return "Etp Name: "..value
end

-- Dissect runtime sized field: Etp Name
nasdaq_index_gids_itch_v1_0_i.etp_name.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.etp_name.display(value, packet, parent, size)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_name, range, value, display)

  return offset + size, value
end

-- Etp Name Length
nasdaq_index_gids_itch_v1_0_i.etp_name_length = {}

-- Size: Etp Name Length
nasdaq_index_gids_itch_v1_0_i.etp_name_length.size = 2

-- Display: Etp Name Length
nasdaq_index_gids_itch_v1_0_i.etp_name_length.display = function(value)
  return "Etp Name Length: "..value
end

-- Dissect: Etp Name Length
nasdaq_index_gids_itch_v1_0_i.etp_name_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.etp_name_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_index_gids_itch_v1_0_i.etp_name_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_name_length, range, value, display)

  return offset + length, value
end

-- Etp Trading Symbol
nasdaq_index_gids_itch_v1_0_i.etp_trading_symbol = {}

-- Size: Etp Trading Symbol
nasdaq_index_gids_itch_v1_0_i.etp_trading_symbol.size = 18

-- Display: Etp Trading Symbol
nasdaq_index_gids_itch_v1_0_i.etp_trading_symbol.display = function(value)
  return "Etp Trading Symbol: "..value
end

-- Dissect: Etp Trading Symbol
nasdaq_index_gids_itch_v1_0_i.etp_trading_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.etp_trading_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.etp_trading_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_trading_symbol, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_index_gids_itch_v1_0_i.event_code = {}

-- Size: Event Code
nasdaq_index_gids_itch_v1_0_i.event_code.size = 1

-- Display: Event Code
nasdaq_index_gids_itch_v1_0_i.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of Day (S)",
  ["E"] = "Event Code: End Of Day (E)",
  ["C"] = "Event Code: End Of Messages (C)",
  ["Q"] = "Event Code: Session Open (Q)",
  ["M"] = "Event Code: Session Close (M)",
}

nasdaq_index_gids_itch_v1_0_i.event_code.display = function(value)
  return nasdaq_index_gids_itch_v1_0_i.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_index_gids_itch_v1_0_i.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.event_code, range, value, display)

  return offset + length, value
end

-- Financial Product Type
nasdaq_index_gids_itch_v1_0_i.financial_product_type = {}

-- Size: Financial Product Type
nasdaq_index_gids_itch_v1_0_i.financial_product_type.size = 1

-- Display: Financial Product Type
nasdaq_index_gids_itch_v1_0_i.financial_product_type.display = function(value)
  if value == " " then
    return "Financial Product Type: Not Specified (<whitespace>)"
  end
  if value == "I" then
    return "Financial Product Type: Index (I)"
  end
  if value == "E" then
    return "Financial Product Type: Exchange Traded Fund (E)"
  end
  if value == "N" then
    return "Financial Product Type: Exchange Traded Note (N)"
  end
  if value == "F" then
    return "Financial Product Type: Exchange Traded Managed Fund (F)"
  end
  if value == "S" then
    return "Financial Product Type: Settlement (S)"
  end
  if value == "P" then
    return "Financial Product Type: Spot (P)"
  end
  if value == "L" then
    return "Financial Product Type: Subordinated Product (L)"
  end
  if value == "W" then
    return "Financial Product Type: World Currency (W)"
  end
  if value == "A" then
    return "Financial Product Type: Alpha Index (A)"
  end

  return "Financial Product Type: Unknown("..value..")"
end

-- Dissect: Financial Product Type
nasdaq_index_gids_itch_v1_0_i.financial_product_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.financial_product_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.financial_product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.financial_product_type, range, value, display)

  return offset + length, value
end

-- Frequency
nasdaq_index_gids_itch_v1_0_i.frequency = {}

-- Size: Frequency
nasdaq_index_gids_itch_v1_0_i.frequency.size = 4

-- Display: Frequency
nasdaq_index_gids_itch_v1_0_i.frequency.display = function(value)
  if value == "" then
    return "Frequency: Not Specified (<whitespace>)"
  end
  if value == "TBT" then
    return "Frequency: Tick By Tick (TBT)"
  end
  if value == ".01S" then
    return "Frequency: Hundredth Of A Second (.01S)"
  end
  if value == ".10S" then
    return "Frequency: Tenth Of A Second (.10S)"
  end
  if value == ".25S" then
    return "Frequency: Quarter Second (.25S)"
  end
  if value == ".50S" then
    return "Frequency: Half Second (.50S)"
  end
  if value == "1S" then
    return "Frequency: Every Second (1S)"
  end
  if value == "5S" then
    return "Frequency: Every 5 Seconds (5S)"
  end
  if value == "15S" then
    return "Frequency: Every 15 Seconds (15S)"
  end
  if value == "60S" then
    return "Frequency: Every 60 Seconds (60S)"
  end
  if value == "15m" then
    return "Frequency: Every 15 Minutes (15m)"
  end
  if value == "ODOP" then
    return "Frequency: Once A Day Open (ODOP)"
  end
  if value == "ODCL" then
    return "Frequency: Once A Day Close (ODCL)"
  end
  if value == "ODID" then
    return "Frequency: Once A Day Intraday (ODID)"
  end
  if value == "OW" then
    return "Frequency: Once A Week (OW)"
  end
  if value == "OM" then
    return "Frequency: Once A Month (OM)"
  end
  if value == "OQ" then
    return "Frequency: Once A Quarter (OQ)"
  end
  if value == "OY" then
    return "Frequency: Once A Year (OY)"
  end

  return "Frequency: Unknown("..value..")"
end

-- Dissect: Frequency
nasdaq_index_gids_itch_v1_0_i.frequency.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.frequency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.frequency, range, value, display)

  return offset + length, value
end

-- Geography
nasdaq_index_gids_itch_v1_0_i.geography = {}

-- Size: Geography
nasdaq_index_gids_itch_v1_0_i.geography.size = 4

-- Display: Geography
nasdaq_index_gids_itch_v1_0_i.geography.display = function(value)
  if value == "" then
    return "Geography: Not Specified (<whitespace>)"
  end
  if value == "NAM" then
    return "Geography: North America (NAM)"
  end
  if value == "LAM" then
    return "Geography: Latin America (LAM)"
  end
  if value == "DEU" then
    return "Geography: Developed Europe (DEU)"
  end
  if value == "EEU" then
    return "Geography: Emerging Europe (EEU)"
  end
  if value == "DAP" then
    return "Geography: Developed Asia Pacific (DAP)"
  end
  if value == "DMEA" then
    return "Geography: Developed Middle East Africa (DMEA)"
  end
  if value == "DMKT" then
    return "Geography: Developed Markets (DMKT)"
  end
  if value == "EAP" then
    return "Geography: Emerging Asia Pacific (EAP)"
  end
  if value == "EMA" then
    return "Geography: Emerging Middle East Africa (EMA)"
  end
  if value == "EMKT" then
    return "Geography: Emerging Markets (EMKT)"
  end
  if value == "FMKT" then
    return "Geography: Frontier Markets (FMKT)"
  end
  if value == "AP" then
    return "Geography: Asia Pacific (AP)"
  end
  if value == "MEA" then
    return "Geography: Middle East Africa (MEA)"
  end
  if value == "ASI" then
    return "Geography: Asia (ASI)"
  end
  if value == "EASI" then
    return "Geography: Emerging Asia (EASI)"
  end
  if value == "DASI" then
    return "Geography: Developed Asia (DASI)"
  end
  if value == "BRIC" then
    return "Geography: Bric (BRIC)"
  end
  if value == "DXUS" then
    return "Geography: Developed Ex Us (DXUS)"
  end
  if value == "DXNA" then
    return "Geography: Developed Ex North America (DXNA)"
  end
  if value == "DXUK" then
    return "Geography: Developed Ex Uk (DXUK)"
  end
  if value == "DXJP" then
    return "Geography: Developed Ex Japan (DXJP)"
  end
  if value == "DEUK" then
    return "Geography: Developed Europe Ex Uk (DEUK)"
  end
  if value == "EXUK" then
    return "Geography: Europe Ex Uk (EXUK)"
  end
  if value == "AXJP" then
    return "Geography: Asia Pacific Ex Japan (AXJP)"
  end
  if value == "AXUK" then
    return "Geography: All World Ex Uk (AXUK)"
  end
  if value == "AXUS" then
    return "Geography: All World Ex Us (AXUS)"
  end
  if value == "AXNA" then
    return "Geography: All World Ex North America (AXNA)"
  end
  if value == "NOR" then
    return "Geography: Nordic (NOR)"
  end
  if value == "BAL" then
    return "Geography: Baltic (BAL)"
  end
  if value == "ALWO" then
    return "Geography: All World (ALWO)"
  end

  return "Geography: Unknown("..value..")"
end

-- Dissect: Geography
nasdaq_index_gids_itch_v1_0_i.geography.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.geography.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.geography.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.geography, range, value, display)

  return offset + length, value
end

-- High
nasdaq_index_gids_itch_v1_0_i.high = {}

-- Size: High
nasdaq_index_gids_itch_v1_0_i.high.size = 8

-- Display: High
nasdaq_index_gids_itch_v1_0_i.high.display = function(value)
  return "High: "..value
end

-- Translate: High
nasdaq_index_gids_itch_v1_0_i.high.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: High
nasdaq_index_gids_itch_v1_0_i.high.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.high.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.high.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.high, range, value, display)

  return offset + length, value
end

-- Index Calculation Method
nasdaq_index_gids_itch_v1_0_i.index_calculation_method = {}

-- Size: Index Calculation Method
nasdaq_index_gids_itch_v1_0_i.index_calculation_method.size = 3

-- Display: Index Calculation Method
nasdaq_index_gids_itch_v1_0_i.index_calculation_method.display = function(value)
  if value == "" then
    return "Index Calculation Method: Not Specified (<whitespace>)"
  end
  if value == "PR" then
    return "Index Calculation Method: Price Return (PR)"
  end
  if value == "GTR" then
    return "Index Calculation Method: Total Return (GTR)"
  end
  if value == "NTR" then
    return "Index Calculation Method: Net Total Return (NTR)"
  end
  if value == "ER" then
    return "Index Calculation Method: Excess Return (ER)"
  end
  if value == "ETR" then
    return "Index Calculation Method: Excess Total Return (ETR)"
  end
  if value == "INV" then
    return "Index Calculation Method: Inverse (INV)"
  end
  if value == "LEV" then
    return "Index Calculation Method: Leveraged (LEV)"
  end
  if value == "WCO" then
    return "Index Calculation Method: World Currency Options (WCO)"
  end
  if value == "DIV" then
    return "Index Calculation Method: Dividend (DIV)"
  end
  if value == "ALP" then
    return "Index Calculation Method: Alpha (ALP)"
  end
  if value == "VOL" then
    return "Index Calculation Method: Volatility (VOL)"
  end
  if value == "PMI" then
    return "Index Calculation Method: Pre Market Indicator (PMI)"
  end
  if value == "AHI" then
    return "Index Calculation Method: After Hours Indicator (AHI)"
  end
  if value == "UW" then
    return "Index Calculation Method: Un Weighted (UW)"
  end
  if value == "ORX" then
    return "Index Calculation Method: Omrx (ORX)"
  end
  if value == "OON" then
    return "Index Calculation Method: Omrxon (OON)"
  end
  if value == "MM" then
    return "Index Calculation Method: Money Market (MM)"
  end
  if value == "NOR" then
    return "Index Calculation Method: Norex (NOR)"
  end
  if value == "SSV" then
    return "Index Calculation Method: Ssv (SSV)"
  end
  if value == "CP-" then
    return "Index Calculation Method: Commodity Price (CP-)"
  end
  if value == "CE-" then
    return "Index Calculation Method: Commodity Excess (CE-)"
  end
  if value == "CET" then
    return "Index Calculation Method: Commodity Excess Total (CET)"
  end
  if value == "CFX" then
    return "Index Calculation Method: Cmfx (CFX)"
  end
  if value == "CC-" then
    return "Index Calculation Method: Commodity Close (CC-)"
  end
  if value == "EXI" then
    return "Index Calculation Method: External Index (EXI)"
  end
  if value == "SET" then
    return "Index Calculation Method: Settlement (SET)"
  end
  if value == "ALT" then
    return "Index Calculation Method: Alternative (ALT)"
  end
  if value == "NNR" then
    return "Index Calculation Method: Notional Total Return (NNR)"
  end
  if value == "HRE" then
    return "Index Calculation Method: Hedged Return (HRE)"
  end

  return "Index Calculation Method: Unknown("..value..")"
end

-- Dissect: Index Calculation Method
nasdaq_index_gids_itch_v1_0_i.index_calculation_method.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.index_calculation_method.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.index_calculation_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.index_calculation_method, range, value, display)

  return offset + length, value
end

-- Index Settlement Type
nasdaq_index_gids_itch_v1_0_i.index_settlement_type = {}

-- Size: Index Settlement Type
nasdaq_index_gids_itch_v1_0_i.index_settlement_type.size = 1

-- Display: Index Settlement Type
nasdaq_index_gids_itch_v1_0_i.index_settlement_type.display = function(value)
  if value == " " then
    return "Index Settlement Type: Not Specified (<whitespace>)"
  end
  if value == "O" then
    return "Index Settlement Type: Settles At The Open (O)"
  end
  if value == "C" then
    return "Index Settlement Type: Settles At The Close (C)"
  end
  if value == "M" then
    return "Index Settlement Type: Settles At Mid Day (M)"
  end

  return "Index Settlement Type: Unknown("..value..")"
end

-- Dissect: Index Settlement Type
nasdaq_index_gids_itch_v1_0_i.index_settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.index_settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.index_settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.index_settlement_type, range, value, display)

  return offset + length, value
end

-- Index Usage
nasdaq_index_gids_itch_v1_0_i.index_usage = {}

-- Size: Index Usage
nasdaq_index_gids_itch_v1_0_i.index_usage.size = 1

-- Display: Index Usage
nasdaq_index_gids_itch_v1_0_i.index_usage.labels = {
  ["L"] = "Index Usage: Live (L)",
  ["D"] = "Index Usage: Demo (D)",
  ["T"] = "Index Usage: Test (T)",
}

nasdaq_index_gids_itch_v1_0_i.index_usage.display = function(value)
  return nasdaq_index_gids_itch_v1_0_i.index_usage.labels[value] or "Index Usage: Unknown("..value..")"
end

-- Dissect: Index Usage
nasdaq_index_gids_itch_v1_0_i.index_usage.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.index_usage.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.index_usage.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.index_usage, range, value, display)

  return offset + length, value
end

-- Industry Mic
nasdaq_index_gids_itch_v1_0_i.industry_mic = {}

-- Size: Industry Mic
nasdaq_index_gids_itch_v1_0_i.industry_mic.size = 4

-- Display: Industry Mic
nasdaq_index_gids_itch_v1_0_i.industry_mic.display = function(value)
  return "Industry Mic: "..value
end

-- Dissect: Industry Mic
nasdaq_index_gids_itch_v1_0_i.industry_mic.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.industry_mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.industry_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.industry_mic, range, value, display)

  return offset + length, value
end

-- Instrument Id
nasdaq_index_gids_itch_v1_0_i.instrument_id = {}

-- Size: Instrument Id
nasdaq_index_gids_itch_v1_0_i.instrument_id.size = 18

-- Display: Instrument Id
nasdaq_index_gids_itch_v1_0_i.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nasdaq_index_gids_itch_v1_0_i.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.instrument_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Instrument Name
nasdaq_index_gids_itch_v1_0_i.instrument_name = {}

-- Display: Instrument Name
nasdaq_index_gids_itch_v1_0_i.instrument_name.display = function(value)
  return "Instrument Name: "..value
end

-- Dissect runtime sized field: Instrument Name
nasdaq_index_gids_itch_v1_0_i.instrument_name.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.instrument_name.display(value, packet, parent, size)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.instrument_name, range, value, display)

  return offset + size, value
end

-- Ipv Or Iiv Symbol
nasdaq_index_gids_itch_v1_0_i.ipv_or_iiv_symbol = {}

-- Size: Ipv Or Iiv Symbol
nasdaq_index_gids_itch_v1_0_i.ipv_or_iiv_symbol.size = 18

-- Display: Ipv Or Iiv Symbol
nasdaq_index_gids_itch_v1_0_i.ipv_or_iiv_symbol.display = function(value)
  return "Ipv Or Iiv Symbol: "..value
end

-- Dissect: Ipv Or Iiv Symbol
nasdaq_index_gids_itch_v1_0_i.ipv_or_iiv_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.ipv_or_iiv_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.ipv_or_iiv_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.ipv_or_iiv_symbol, range, value, display)

  return offset + length, value
end

-- Ipv Symbol
nasdaq_index_gids_itch_v1_0_i.ipv_symbol = {}

-- Size: Ipv Symbol
nasdaq_index_gids_itch_v1_0_i.ipv_symbol.size = 18

-- Display: Ipv Symbol
nasdaq_index_gids_itch_v1_0_i.ipv_symbol.display = function(value)
  return "Ipv Symbol: "..value
end

-- Dissect: Ipv Symbol
nasdaq_index_gids_itch_v1_0_i.ipv_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.ipv_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.ipv_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.ipv_symbol, range, value, display)

  return offset + length, value
end

-- Ipv Value
nasdaq_index_gids_itch_v1_0_i.ipv_value = {}

-- Size: Ipv Value
nasdaq_index_gids_itch_v1_0_i.ipv_value.size = 8

-- Display: Ipv Value
nasdaq_index_gids_itch_v1_0_i.ipv_value.display = function(value)
  return "Ipv Value: "..value
end

-- Translate: Ipv Value
nasdaq_index_gids_itch_v1_0_i.ipv_value.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: Ipv Value
nasdaq_index_gids_itch_v1_0_i.ipv_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.ipv_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.ipv_value.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.ipv_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.ipv_value, range, value, display)

  return offset + length, value
end

-- Issue Mic
nasdaq_index_gids_itch_v1_0_i.issue_mic = {}

-- Size: Issue Mic
nasdaq_index_gids_itch_v1_0_i.issue_mic.size = 4

-- Display: Issue Mic
nasdaq_index_gids_itch_v1_0_i.issue_mic.display = function(value)
  return "Issue Mic: "..value
end

-- Dissect: Issue Mic
nasdaq_index_gids_itch_v1_0_i.issue_mic.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.issue_mic.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.issue_mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.issue_mic, range, value, display)

  return offset + length, value
end

-- Issue Name
nasdaq_index_gids_itch_v1_0_i.issue_name = {}

-- Display: Issue Name
nasdaq_index_gids_itch_v1_0_i.issue_name.display = function(value)
  return "Issue Name: "..value
end

-- Dissect runtime sized field: Issue Name
nasdaq_index_gids_itch_v1_0_i.issue_name.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.issue_name.display(value, packet, parent, size)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.issue_name, range, value, display)

  return offset + size, value
end

-- Issue Symbol
nasdaq_index_gids_itch_v1_0_i.issue_symbol = {}

-- Size: Issue Symbol
nasdaq_index_gids_itch_v1_0_i.issue_symbol.size = 18

-- Display: Issue Symbol
nasdaq_index_gids_itch_v1_0_i.issue_symbol.display = function(value)
  return "Issue Symbol: "..value
end

-- Dissect: Issue Symbol
nasdaq_index_gids_itch_v1_0_i.issue_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.issue_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.issue_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.issue_symbol, range, value, display)

  return offset + length, value
end

-- Low
nasdaq_index_gids_itch_v1_0_i.low = {}

-- Size: Low
nasdaq_index_gids_itch_v1_0_i.low.size = 8

-- Display: Low
nasdaq_index_gids_itch_v1_0_i.low.display = function(value)
  return "Low: "..value
end

-- Translate: Low
nasdaq_index_gids_itch_v1_0_i.low.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: Low
nasdaq_index_gids_itch_v1_0_i.low.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.low.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.low.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.low, range, value, display)

  return offset + length, value
end

-- Market Cap Size
nasdaq_index_gids_itch_v1_0_i.market_cap_size = {}

-- Size: Market Cap Size
nasdaq_index_gids_itch_v1_0_i.market_cap_size.size = 1

-- Display: Market Cap Size
nasdaq_index_gids_itch_v1_0_i.market_cap_size.display = function(value)
  if value == " " then
    return "Market Cap Size: Not Specified (<whitespace>)"
  end
  if value == "A" then
    return "Market Cap Size: All (A)"
  end
  if value == "L" then
    return "Market Cap Size: Large (L)"
  end
  if value == "M" then
    return "Market Cap Size: Mid (M)"
  end
  if value == "S" then
    return "Market Cap Size: Small (S)"
  end
  if value == "X" then
    return "Market Cap Size: Large And Mid (X)"
  end
  if value == "Y" then
    return "Market Cap Size: Mid And Small (Y)"
  end

  return "Market Cap Size: Unknown("..value..")"
end

-- Dissect: Market Cap Size
nasdaq_index_gids_itch_v1_0_i.market_cap_size.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.market_cap_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.market_cap_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.market_cap_size, range, value, display)

  return offset + length, value
end

-- Maturity Date
nasdaq_index_gids_itch_v1_0_i.maturity_date = {}

-- Size: Maturity Date
nasdaq_index_gids_itch_v1_0_i.maturity_date.size = 4

-- Display: Maturity Date
nasdaq_index_gids_itch_v1_0_i.maturity_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Maturity Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Maturity Date
nasdaq_index_gids_itch_v1_0_i.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.maturity_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_index_gids_itch_v1_0_i.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_index_gids_itch_v1_0_i.message_count = {}

-- Size: Message Count
nasdaq_index_gids_itch_v1_0_i.message_count.size = 2

-- Display: Message Count
nasdaq_index_gids_itch_v1_0_i.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_index_gids_itch_v1_0_i.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_index_gids_itch_v1_0_i.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_index_gids_itch_v1_0_i.message_length = {}

-- Size: Message Length
nasdaq_index_gids_itch_v1_0_i.message_length.size = 2

-- Display: Message Length
nasdaq_index_gids_itch_v1_0_i.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_index_gids_itch_v1_0_i.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_index_gids_itch_v1_0_i.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_index_gids_itch_v1_0_i.message_type = {}

-- Size: Message Type
nasdaq_index_gids_itch_v1_0_i.message_type.size = 1

-- Display: Message Type
nasdaq_index_gids_itch_v1_0_i.message_type.labels = {
  ["T"] = "Message Type: Timestamp Seconds Message (T)",
  ["S"] = "Message Type: System Event Message (S)",
  ["R"] = "Message Type: Index Directory Message (R)",
  ["P"] = "Message Type: Issue Symbol Participation Message (P)",
  ["I"] = "Message Type: Intraday Index Value Message (I)",
  ["A"] = "Message Type: Settlement Value Message (A)",
  ["F"] = "Message Type: Equities Summary Message (F)",
  ["B"] = "Message Type: Fixed Income Summary Message (B)",
  ["C"] = "Message Type: Commodity Summary Message (C)",
  ["D"] = "Message Type: Etp Directory And Daily Valuation Message (D)",
  ["E"] = "Message Type: Etp Intra Day Valuation Message (E)",
  ["V"] = "Message Type: Etp Summary Message (V)",
}

nasdaq_index_gids_itch_v1_0_i.message_type.display = function(value)
  return nasdaq_index_gids_itch_v1_0_i.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_index_gids_itch_v1_0_i.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.message_type, range, value, display)

  return offset + length, value
end

-- Name Length
nasdaq_index_gids_itch_v1_0_i.name_length = {}

-- Size: Name Length
nasdaq_index_gids_itch_v1_0_i.name_length.size = 2

-- Display: Name Length
nasdaq_index_gids_itch_v1_0_i.name_length.display = function(value)
  return "Name Length: "..value
end

-- Dissect: Name Length
nasdaq_index_gids_itch_v1_0_i.name_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.name_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_index_gids_itch_v1_0_i.name_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.name_length, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nasdaq_index_gids_itch_v1_0_i.nanoseconds = {}

-- Size: Nanoseconds
nasdaq_index_gids_itch_v1_0_i.nanoseconds.size = 4

-- Display: Nanoseconds
nasdaq_index_gids_itch_v1_0_i.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nasdaq_index_gids_itch_v1_0_i.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_index_gids_itch_v1_0_i.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Nav
nasdaq_index_gids_itch_v1_0_i.nav = {}

-- Size: Nav
nasdaq_index_gids_itch_v1_0_i.nav.size = 8

-- Display: Nav
nasdaq_index_gids_itch_v1_0_i.nav.display = function(value)
  return "Nav: "..value
end

-- Translate: Nav
nasdaq_index_gids_itch_v1_0_i.nav.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Nav
nasdaq_index_gids_itch_v1_0_i.nav.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.nav.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.nav.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.nav.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.nav, range, value, display)

  return offset + length, value
end

-- Nav Symbol
nasdaq_index_gids_itch_v1_0_i.nav_symbol = {}

-- Size: Nav Symbol
nasdaq_index_gids_itch_v1_0_i.nav_symbol.size = 18

-- Display: Nav Symbol
nasdaq_index_gids_itch_v1_0_i.nav_symbol.display = function(value)
  return "Nav Symbol: "..value
end

-- Dissect: Nav Symbol
nasdaq_index_gids_itch_v1_0_i.nav_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.nav_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.nav_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.nav_symbol, range, value, display)

  return offset + length, value
end

-- Net Change
nasdaq_index_gids_itch_v1_0_i.net_change = {}

-- Size: Net Change
nasdaq_index_gids_itch_v1_0_i.net_change.size = 8

-- Display: Net Change
nasdaq_index_gids_itch_v1_0_i.net_change.display = function(value)
  return "Net Change: "..value
end

-- Translate: Net Change
nasdaq_index_gids_itch_v1_0_i.net_change.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: Net Change
nasdaq_index_gids_itch_v1_0_i.net_change.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.net_change.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.net_change.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.net_change, range, value, display)

  return offset + length, value
end

-- Number Of Issue Participation Messages
nasdaq_index_gids_itch_v1_0_i.number_of_issue_participation_messages = {}

-- Size: Number Of Issue Participation Messages
nasdaq_index_gids_itch_v1_0_i.number_of_issue_participation_messages.size = 4

-- Display: Number Of Issue Participation Messages
nasdaq_index_gids_itch_v1_0_i.number_of_issue_participation_messages.display = function(value)
  return "Number Of Issue Participation Messages: "..value
end

-- Dissect: Number Of Issue Participation Messages
nasdaq_index_gids_itch_v1_0_i.number_of_issue_participation_messages.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.number_of_issue_participation_messages.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nasdaq_index_gids_itch_v1_0_i.number_of_issue_participation_messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.number_of_issue_participation_messages, range, value, display)

  return offset + length, value
end

-- Schedule
nasdaq_index_gids_itch_v1_0_i.schedule = {}

-- Size: Schedule
nasdaq_index_gids_itch_v1_0_i.schedule.size = 3

-- Display: Schedule
nasdaq_index_gids_itch_v1_0_i.schedule.display = function(value)
  if value == "" then
    return "Schedule: Session Independent Blank (<whitespace>)"
  end
  if value == "IND" then
    return "Schedule: Session Independent (IND)"
  end
  if value == "AME" then
    return "Schedule: American Market Session (AME)"
  end
  if value == "CEU" then
    return "Schedule: Central Europe Market Session (CEU)"
  end
  if value == "EEU" then
    return "Schedule: Eastern Europe Market Session (EEU)"
  end
  if value == "ASI" then
    return "Schedule: Asia Market Session (ASI)"
  end
  if value == "PAC" then
    return "Schedule: Pacific Market Session (PAC)"
  end
  if value == "GLO" then
    return "Schedule: Global Market Session (GLO)"
  end
  if value == "BAL" then
    return "Schedule: Baltic Market Session (BAL)"
  end
  if value == "NOR" then
    return "Schedule: Nordic Market Session (NOR)"
  end
  if value == "NFI" then
    return "Schedule: Nordic Fixed Income Market Session (NFI)"
  end
  if value == "NSA" then
    return "Schedule: North South America Market Session (NSA)"
  end

  return "Schedule: Unknown("..value..")"
end

-- Dissect: Schedule
nasdaq_index_gids_itch_v1_0_i.schedule.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.schedule.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.schedule.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.schedule, range, value, display)

  return offset + length, value
end

-- Second
nasdaq_index_gids_itch_v1_0_i.second = {}

-- Size: Second
nasdaq_index_gids_itch_v1_0_i.second.size = 4

-- Store: Second
nasdaq_index_gids_itch_v1_0_i.second.current = nil

-- Generated: Second
nasdaq_index_gids_itch_v1_0_i.second.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_index_gids_itch_v1_0_i.fields.second
  if nasdaq_index_gids_itch_v1_0_i.timestamp_format == 3 then field = omi_nasdaq_index_gids_itch_v1_0_i.fields.second_utc end
  local second = parent:add(field, range, NSTime.new(value, 0))
  second:set_generated()
end

-- Dissect: Second
nasdaq_index_gids_itch_v1_0_i.second.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.second.size
  local range = buffer(offset, length)
  local value = range:int()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_nasdaq_index_gids_itch_v1_0_i.fields.second
  if nasdaq_index_gids_itch_v1_0_i.timestamp_format == 3 then field = omi_nasdaq_index_gids_itch_v1_0_i.fields.second_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
nasdaq_index_gids_itch_v1_0_i.sequence_number = {}

-- Size: Sequence Number
nasdaq_index_gids_itch_v1_0_i.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_index_gids_itch_v1_0_i.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_index_gids_itch_v1_0_i.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_index_gids_itch_v1_0_i.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Series
nasdaq_index_gids_itch_v1_0_i.series = {}

-- Size: Series
nasdaq_index_gids_itch_v1_0_i.series.size = 3

-- Display: Series
nasdaq_index_gids_itch_v1_0_i.series.display = function(value)
  if value == "" then
    return "Series: Not Specified (<whitespace>)"
  end
  if value == "NDQ" then
    return "Series: Nasdaq Us (NDQ)"
  end
  if value == "UAM" then
    return "Series: Us All Market (UAM)"
  end
  if value == "ALW" then
    return "Series: All World (ALW)"
  end
  if value == "NQG" then
    return "Series: Nasdaq Global Index (NQG)"
  end
  if value == "GRN" then
    return "Series: Green Economy (GRN)"
  end
  if value == "CLE" then
    return "Series: Clean Energy (CLE)"
  end
  if value == "NOR" then
    return "Series: Nordic (NOR)"
  end
  if value == "BAL" then
    return "Series: Baltic (BAL)"
  end
  if value == "COM" then
    return "Series: Commodities (COM)"
  end
  if value == "SHA" then
    return "Series: Sharia (SHA)"
  end
  if value == "NFI" then
    return "Series: Nordic Fixed Income (NFI)"
  end
  if value == "UST" then
    return "Series: Us Treasury (UST)"
  end
  if value == "NCM" then
    return "Series: Nasdaq Commodities (NCM)"
  end
  if value == "ETH" then
    return "Series: Ethical (ETH)"
  end
  if value == "SUS" then
    return "Series: Sustainable (SUS)"
  end
  if value == "OMR" then
    return "Series: Omrx (OMR)"
  end
  if value == "CRE" then
    return "Series: Credit Sek (CRE)"
  end

  return "Series: Unknown("..value..")"
end

-- Dissect: Series
nasdaq_index_gids_itch_v1_0_i.series.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.series.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.series, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_index_gids_itch_v1_0_i.session = {}

-- Size: Session
nasdaq_index_gids_itch_v1_0_i.session.size = 10

-- Display: Session
nasdaq_index_gids_itch_v1_0_i.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_index_gids_itch_v1_0_i.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.session.size
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

  local display = nasdaq_index_gids_itch_v1_0_i.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.session, range, value, display)

  return offset + length, value
end

-- Settlement Type
nasdaq_index_gids_itch_v1_0_i.settlement_type = {}

-- Size: Settlement Type
nasdaq_index_gids_itch_v1_0_i.settlement_type.size = 1

-- Display: Settlement Type
nasdaq_index_gids_itch_v1_0_i.settlement_type.display = function(value)
  if value == " " then
    return "Settlement Type: Not Specified (<whitespace>)"
  end
  if value == "O" then
    return "Settlement Type: Settles At The Open (O)"
  end
  if value == "C" then
    return "Settlement Type: Settles At The Close (C)"
  end
  if value == "M" then
    return "Settlement Type: Settles At Mid Day (M)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
nasdaq_index_gids_itch_v1_0_i.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.settlement_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Settlement Value
nasdaq_index_gids_itch_v1_0_i.settlement_value = {}

-- Size: Settlement Value
nasdaq_index_gids_itch_v1_0_i.settlement_value.size = 8

-- Display: Settlement Value
nasdaq_index_gids_itch_v1_0_i.settlement_value.display = function(value)
  return "Settlement Value: "..value
end

-- Translate: Settlement Value
nasdaq_index_gids_itch_v1_0_i.settlement_value.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: Settlement Value
nasdaq_index_gids_itch_v1_0_i.settlement_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.settlement_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.settlement_value.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.settlement_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.settlement_value, range, value, display)

  return offset + length, value
end

-- Sod Value
nasdaq_index_gids_itch_v1_0_i.sod_value = {}

-- Size: Sod Value
nasdaq_index_gids_itch_v1_0_i.sod_value.size = 8

-- Display: Sod Value
nasdaq_index_gids_itch_v1_0_i.sod_value.display = function(value)
  return "Sod Value: "..value
end

-- Translate: Sod Value
nasdaq_index_gids_itch_v1_0_i.sod_value.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: Sod Value
nasdaq_index_gids_itch_v1_0_i.sod_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.sod_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.sod_value.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.sod_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.sod_value, range, value, display)

  return offset + length, value
end

-- State
nasdaq_index_gids_itch_v1_0_i.state = {}

-- Size: State
nasdaq_index_gids_itch_v1_0_i.state.size = 1

-- Display: State
nasdaq_index_gids_itch_v1_0_i.state.labels = {
  ["A"] = "State: Active (A)",
  ["H"] = "State: Held (H)",
  ["P"] = "State: Pending (P)",
  ["D"] = "State: Deleted (D)",
}

nasdaq_index_gids_itch_v1_0_i.state.display = function(value)
  return nasdaq_index_gids_itch_v1_0_i.state.labels[value] or "State: Unknown("..value..")"
end

-- Dissect: State
nasdaq_index_gids_itch_v1_0_i.state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.state, range, value, display)

  return offset + length, value
end

-- Strategy
nasdaq_index_gids_itch_v1_0_i.strategy = {}

-- Size: Strategy
nasdaq_index_gids_itch_v1_0_i.strategy.size = 3

-- Display: Strategy
nasdaq_index_gids_itch_v1_0_i.strategy.display = function(value)
  if value == "" then
    return "Strategy: Not Specified (<whitespace>)"
  end
  if value == "TRD" then
    return "Strategy: Tradable (TRD)"
  end
  if value == "BM" then
    return "Strategy: Benchmark (BM)"
  end
  if value == "COM" then
    return "Strategy: Composite (COM)"
  end
  if value == "SEC" then
    return "Strategy: Sector (SEC)"
  end
  if value == "GRO" then
    return "Strategy: Growth (GRO)"
  end
  if value == "VAL" then
    return "Strategy: Value (VAL)"
  end
  if value == "INV" then
    return "Strategy: Inverse (INV)"
  end
  if value == "LEV" then
    return "Strategy: Leverage (LEV)"
  end
  if value == "THE" then
    return "Strategy: Thematic (THE)"
  end
  if value == "ETH" then
    return "Strategy: Ethical (ETH)"
  end
  if value == "SUS" then
    return "Strategy: Sustainable (SUS)"
  end
  if value == "SHA" then
    return "Strategy: Sharia (SHA)"
  end
  if value == "SRE" then
    return "Strategy: Social Responsible (SRE)"
  end
  if value == "STB" then
    return "Strategy: Stability (STB)"
  end
  if value == "FDM" then
    return "Strategy: Fundamental (FDM)"
  end
  if value == "FCT" then
    return "Strategy: Factor (FCT)"
  end
  if value == "IVD" then
    return "Strategy: Investment Discipline (IVD)"
  end

  return "Strategy: Unknown("..value..")"
end

-- Dissect: Strategy
nasdaq_index_gids_itch_v1_0_i.strategy.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.strategy.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.strategy, range, value, display)

  return offset + length, value
end

-- Summary Type
nasdaq_index_gids_itch_v1_0_i.summary_type = {}

-- Size: Summary Type
nasdaq_index_gids_itch_v1_0_i.summary_type.size = 3

-- Display: Summary Type
nasdaq_index_gids_itch_v1_0_i.summary_type.labels = {
  ["EOD"] = "Summary Type: End Of Day Summary (EOD)",
  ["SOD"] = "Summary Type: Start Of Day Summary (SOD)",
  ["PDA"] = "Summary Type: Prior Day Summary Add (PDA)",
  ["PDC"] = "Summary Type: Prior Day Summary Correction (PDC)",
  ["STL"] = "Summary Type: Settlement Summary (STL)",
}

nasdaq_index_gids_itch_v1_0_i.summary_type.display = function(value)
  return nasdaq_index_gids_itch_v1_0_i.summary_type.labels[value] or "Summary Type: Unknown("..value..")"
end

-- Dissect: Summary Type
nasdaq_index_gids_itch_v1_0_i.summary_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.summary_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.summary_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.summary_type, range, value, display)

  return offset + length, value
end

-- Tick Direction
nasdaq_index_gids_itch_v1_0_i.tick_direction = {}

-- Size: Tick Direction
nasdaq_index_gids_itch_v1_0_i.tick_direction.size = 1

-- Display: Tick Direction
nasdaq_index_gids_itch_v1_0_i.tick_direction.display = function(value)
  if value == "+" then
    return "Tick Direction: Positive (+)"
  end
  if value == "-" then
    return "Tick Direction: Negative (-)"
  end
  if value == " " then
    return "Tick Direction: No Net Change Calculated (<whitespace>)"
  end

  return "Tick Direction: Unknown("..value..")"
end

-- Dissect: Tick Direction
nasdaq_index_gids_itch_v1_0_i.tick_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.tick_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_index_gids_itch_v1_0_i.tick_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.tick_direction, range, value, display)

  return offset + length, value
end

-- Tick Value
nasdaq_index_gids_itch_v1_0_i.tick_value = {}

-- Size: Tick Value
nasdaq_index_gids_itch_v1_0_i.tick_value.size = 8

-- Display: Tick Value
nasdaq_index_gids_itch_v1_0_i.tick_value.display = function(value)
  return "Tick Value: "..value
end

-- Translate: Tick Value
nasdaq_index_gids_itch_v1_0_i.tick_value.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: Tick Value
nasdaq_index_gids_itch_v1_0_i.tick_value.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.tick_value.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.tick_value.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.tick_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.tick_value, range, value, display)

  return offset + length, value
end

-- Total Cash Per Cu
nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu = {}

-- Size: Total Cash Per Cu
nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu.size = 8

-- Display: Total Cash Per Cu
nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu.display = function(value)
  return "Total Cash Per Cu: "..value
end

-- Translate: Total Cash Per Cu
nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Total Cash Per Cu
nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.total_cash_per_cu, range, value, display)

  return offset + length, value
end

-- Total Cash Per Cu Symbol
nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu_symbol = {}

-- Size: Total Cash Per Cu Symbol
nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu_symbol.size = 18

-- Display: Total Cash Per Cu Symbol
nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu_symbol.display = function(value)
  return "Total Cash Per Cu Symbol: "..value
end

-- Dissect: Total Cash Per Cu Symbol
nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.total_cash_per_cu_symbol, range, value, display)

  return offset + length, value
end

-- Tso Outstanding
nasdaq_index_gids_itch_v1_0_i.tso_outstanding = {}

-- Size: Tso Outstanding
nasdaq_index_gids_itch_v1_0_i.tso_outstanding.size = 8

-- Display: Tso Outstanding
nasdaq_index_gids_itch_v1_0_i.tso_outstanding.display = function(value)
  return "Tso Outstanding: "..value
end

-- Dissect: Tso Outstanding
nasdaq_index_gids_itch_v1_0_i.tso_outstanding.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.tso_outstanding.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nasdaq_index_gids_itch_v1_0_i.tso_outstanding.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.tso_outstanding, range, value, display)

  return offset + length, value
end

-- Tso Symbol
nasdaq_index_gids_itch_v1_0_i.tso_symbol = {}

-- Size: Tso Symbol
nasdaq_index_gids_itch_v1_0_i.tso_symbol.size = 18

-- Display: Tso Symbol
nasdaq_index_gids_itch_v1_0_i.tso_symbol.display = function(value)
  return "Tso Symbol: "..value
end

-- Dissect: Tso Symbol
nasdaq_index_gids_itch_v1_0_i.tso_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.tso_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_index_gids_itch_v1_0_i.tso_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.tso_symbol, range, value, display)

  return offset + length, value
end

-- Yield
nasdaq_index_gids_itch_v1_0_i.yield = {}

-- Size: Yield
nasdaq_index_gids_itch_v1_0_i.yield.size = 8

-- Display: Yield
nasdaq_index_gids_itch_v1_0_i.yield.display = function(value)
  return "Yield: "..value
end

-- Translate: Yield
nasdaq_index_gids_itch_v1_0_i.yield.translate = function(raw)
  return raw:tonumber()/100000000000
end

-- Dissect: Yield
nasdaq_index_gids_itch_v1_0_i.yield.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.yield.size
  local range = buffer(offset, length)
  local raw = range:int64()
  local value = nasdaq_index_gids_itch_v1_0_i.yield.translate(raw)
  local display = nasdaq_index_gids_itch_v1_0_i.yield.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.yield, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_index_gids_itch_v1_0_i.timestamp = {}

-- Translate: Timestamp
nasdaq_index_gids_itch_v1_0_i.timestamp.translate = function(nanoseconds, stored_second)
  return UInt64.new(stored_second) * 1000000000 + nanoseconds
end

-- Display: Timestamp
nasdaq_index_gids_itch_v1_0_i.timestamp.display = function(nanoseconds, stored_second)
  -- An offset the Field epoch leaves unbounded carries whole seconds of its own
  local seconds = stored_second + math.floor(nanoseconds / 1000000000)
  local fraction = nanoseconds % 1000000000

  local format = nasdaq_index_gids_itch_v1_0_i.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
  return "Timestamp: "..os.date(format, seconds)..string.format("%09d", fraction)
end

-- Composite: Timestamp
nasdaq_index_gids_itch_v1_0_i.timestamp.composite = function(buffer, offset, stored_second, packet, parent)
  local length = nasdaq_index_gids_itch_v1_0_i.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:int()
  local value = nasdaq_index_gids_itch_v1_0_i.timestamp.translate(nanoseconds, stored_second)
  local display = nasdaq_index_gids_itch_v1_0_i.timestamp.display(nanoseconds, stored_second, packet)
  parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.timestamp, range, value, display)

  nasdaq_index_gids_itch_v1_0_i.second.generated(stored_second, range, packet, parent)

  display = nasdaq_index_gids_itch_v1_0_i.nanoseconds.display(nanoseconds)
  parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
nasdaq_index_gids_itch_v1_0_i.timestamp.dissect = function(buffer, offset, packet, parent)
  if nasdaq_index_gids_itch_v1_0_i.timestamp_format ~= 0 then
    local stored_second = nasdaq_index_gids_itch_v1_0_i.second.current

    if stored_second ~= nil then
      return nasdaq_index_gids_itch_v1_0_i.timestamp.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return nasdaq_index_gids_itch_v1_0_i.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Index Gids Itch 1.0.i
-----------------------------------------------------------------------

-- Etp Summary Message
nasdaq_index_gids_itch_v1_0_i.etp_summary_message = {}

-- Size: Etp Summary Message
nasdaq_index_gids_itch_v1_0_i.etp_summary_message.size =
  nasdaq_index_gids_itch_v1_0_i.nanoseconds.size + 
  nasdaq_index_gids_itch_v1_0_i.financial_product_type.size + 
  nasdaq_index_gids_itch_v1_0_i.summary_type.size + 
  nasdaq_index_gids_itch_v1_0_i.ipv_or_iiv_symbol.size + 
  nasdaq_index_gids_itch_v1_0_i.sod_value.size + 
  nasdaq_index_gids_itch_v1_0_i.high.size + 
  nasdaq_index_gids_itch_v1_0_i.low.size + 
  nasdaq_index_gids_itch_v1_0_i.eod_value.size + 
  nasdaq_index_gids_itch_v1_0_i.net_change.size + 
  nasdaq_index_gids_itch_v1_0_i.effective_date.size + 
  nasdaq_index_gids_itch_v1_0_i.currency.size

-- Display: Etp Summary Message
nasdaq_index_gids_itch_v1_0_i.etp_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etp Summary Message
nasdaq_index_gids_itch_v1_0_i.etp_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_index_gids_itch_v1_0_i.timestamp.dissect(buffer, index, packet, parent)

  -- Financial Product Type: Alpha
  index, financial_product_type = nasdaq_index_gids_itch_v1_0_i.financial_product_type.dissect(buffer, index, packet, parent)

  -- Summary Type: Alpha
  index, summary_type = nasdaq_index_gids_itch_v1_0_i.summary_type.dissect(buffer, index, packet, parent)

  -- Ipv Or Iiv Symbol: Alpha
  index, ipv_or_iiv_symbol = nasdaq_index_gids_itch_v1_0_i.ipv_or_iiv_symbol.dissect(buffer, index, packet, parent)

  -- Sod Value: Long (E11)
  index, sod_value = nasdaq_index_gids_itch_v1_0_i.sod_value.dissect(buffer, index, packet, parent)

  -- High: Long (E11)
  index, high = nasdaq_index_gids_itch_v1_0_i.high.dissect(buffer, index, packet, parent)

  -- Low: Long (E11)
  index, low = nasdaq_index_gids_itch_v1_0_i.low.dissect(buffer, index, packet, parent)

  -- Eod Value: Long (E11)
  index, eod_value = nasdaq_index_gids_itch_v1_0_i.eod_value.dissect(buffer, index, packet, parent)

  -- Net Change: Long (E11)
  index, net_change = nasdaq_index_gids_itch_v1_0_i.net_change.dissect(buffer, index, packet, parent)

  -- Effective Date: Integer (Date)
  index, effective_date = nasdaq_index_gids_itch_v1_0_i.effective_date.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_index_gids_itch_v1_0_i.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etp Summary Message
nasdaq_index_gids_itch_v1_0_i.etp_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_summary_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.etp_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.etp_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.etp_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Etp Intra Day Valuation Message
nasdaq_index_gids_itch_v1_0_i.etp_intra_day_valuation_message = {}

-- Size: Etp Intra Day Valuation Message
nasdaq_index_gids_itch_v1_0_i.etp_intra_day_valuation_message.size =
  nasdaq_index_gids_itch_v1_0_i.nanoseconds.size + 
  nasdaq_index_gids_itch_v1_0_i.financial_product_type.size + 
  nasdaq_index_gids_itch_v1_0_i.ipv_symbol.size + 
  nasdaq_index_gids_itch_v1_0_i.ipv_value.size + 
  nasdaq_index_gids_itch_v1_0_i.currency.size

-- Display: Etp Intra Day Valuation Message
nasdaq_index_gids_itch_v1_0_i.etp_intra_day_valuation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etp Intra Day Valuation Message
nasdaq_index_gids_itch_v1_0_i.etp_intra_day_valuation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_index_gids_itch_v1_0_i.timestamp.dissect(buffer, index, packet, parent)

  -- Financial Product Type: Alpha
  index, financial_product_type = nasdaq_index_gids_itch_v1_0_i.financial_product_type.dissect(buffer, index, packet, parent)

  -- Ipv Symbol: Alpha
  index, ipv_symbol = nasdaq_index_gids_itch_v1_0_i.ipv_symbol.dissect(buffer, index, packet, parent)

  -- Ipv Value: Long (E11)
  index, ipv_value = nasdaq_index_gids_itch_v1_0_i.ipv_value.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_index_gids_itch_v1_0_i.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Etp Intra Day Valuation Message
nasdaq_index_gids_itch_v1_0_i.etp_intra_day_valuation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_intra_day_valuation_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.etp_intra_day_valuation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.etp_intra_day_valuation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.etp_intra_day_valuation_message.fields(buffer, offset, packet, parent)
  end
end

-- Etp Directory And Daily Valuation Message
nasdaq_index_gids_itch_v1_0_i.etp_directory_and_daily_valuation_message = {}

-- Calculate size of: Etp Directory And Daily Valuation Message
nasdaq_index_gids_itch_v1_0_i.etp_directory_and_daily_valuation_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_index_gids_itch_v1_0_i.nanoseconds.size

  index = index + nasdaq_index_gids_itch_v1_0_i.financial_product_type.size

  index = index + nasdaq_index_gids_itch_v1_0_i.industry_mic.size

  index = index + nasdaq_index_gids_itch_v1_0_i.etp_trading_symbol.size

  index = index + nasdaq_index_gids_itch_v1_0_i.etp_ipv_symbol.size

  index = index + nasdaq_index_gids_itch_v1_0_i.schedule.size

  index = index + nasdaq_index_gids_itch_v1_0_i.frequency.size

  index = index + nasdaq_index_gids_itch_v1_0_i.state.size

  index = index + nasdaq_index_gids_itch_v1_0_i.nav_symbol.size

  index = index + nasdaq_index_gids_itch_v1_0_i.nav.size

  index = index + nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_cu_symbol.size

  index = index + nasdaq_index_gids_itch_v1_0_i.ecu.size

  index = index + nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu_symbol.size

  index = index + nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu.size

  index = index + nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_share_symbol.size

  index = index + nasdaq_index_gids_itch_v1_0_i.ecs.size

  index = index + nasdaq_index_gids_itch_v1_0_i.tso_symbol.size

  index = index + nasdaq_index_gids_itch_v1_0_i.tso_outstanding.size

  index = index + nasdaq_index_gids_itch_v1_0_i.effective_date.size

  index = index + nasdaq_index_gids_itch_v1_0_i.yield.size

  index = index + nasdaq_index_gids_itch_v1_0_i.coupon.size

  index = index + nasdaq_index_gids_itch_v1_0_i.maturity_date.size

  index = index + nasdaq_index_gids_itch_v1_0_i.currency.size

  index = index + nasdaq_index_gids_itch_v1_0_i.etp_name_length.size

  -- Parse runtime size of: Etp Name
  index = index + buffer(offset + index - 2, 2):int()

  return index
end

-- Display: Etp Directory And Daily Valuation Message
nasdaq_index_gids_itch_v1_0_i.etp_directory_and_daily_valuation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Etp Directory And Daily Valuation Message
nasdaq_index_gids_itch_v1_0_i.etp_directory_and_daily_valuation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_index_gids_itch_v1_0_i.timestamp.dissect(buffer, index, packet, parent)

  -- Financial Product Type: Alpha
  index, financial_product_type = nasdaq_index_gids_itch_v1_0_i.financial_product_type.dissect(buffer, index, packet, parent)

  -- Industry Mic: Alpha
  index, industry_mic = nasdaq_index_gids_itch_v1_0_i.industry_mic.dissect(buffer, index, packet, parent)

  -- Etp Trading Symbol: Alpha
  index, etp_trading_symbol = nasdaq_index_gids_itch_v1_0_i.etp_trading_symbol.dissect(buffer, index, packet, parent)

  -- Etp Ipv Symbol: Alpha
  index, etp_ipv_symbol = nasdaq_index_gids_itch_v1_0_i.etp_ipv_symbol.dissect(buffer, index, packet, parent)

  -- Schedule: Alpha
  index, schedule = nasdaq_index_gids_itch_v1_0_i.schedule.dissect(buffer, index, packet, parent)

  -- Frequency: Alpha
  index, frequency = nasdaq_index_gids_itch_v1_0_i.frequency.dissect(buffer, index, packet, parent)

  -- State: Alpha
  index, state = nasdaq_index_gids_itch_v1_0_i.state.dissect(buffer, index, packet, parent)

  -- Nav Symbol: Alpha
  index, nav_symbol = nasdaq_index_gids_itch_v1_0_i.nav_symbol.dissect(buffer, index, packet, parent)

  -- Nav: Long (E2)
  index, nav = nasdaq_index_gids_itch_v1_0_i.nav.dissect(buffer, index, packet, parent)

  -- Estimated Cash Per Cu Symbol: Alpha
  index, estimated_cash_per_cu_symbol = nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_cu_symbol.dissect(buffer, index, packet, parent)

  -- Ecu: Long (E2)
  index, ecu = nasdaq_index_gids_itch_v1_0_i.ecu.dissect(buffer, index, packet, parent)

  -- Total Cash Per Cu Symbol: Alpha
  index, total_cash_per_cu_symbol = nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu_symbol.dissect(buffer, index, packet, parent)

  -- Total Cash Per Cu: Long (E2)
  index, total_cash_per_cu = nasdaq_index_gids_itch_v1_0_i.total_cash_per_cu.dissect(buffer, index, packet, parent)

  -- Estimated Cash Per Share Symbol: Alpha
  index, estimated_cash_per_share_symbol = nasdaq_index_gids_itch_v1_0_i.estimated_cash_per_share_symbol.dissect(buffer, index, packet, parent)

  -- Ecs: Long (E2)
  index, ecs = nasdaq_index_gids_itch_v1_0_i.ecs.dissect(buffer, index, packet, parent)

  -- Tso Symbol: Alpha
  index, tso_symbol = nasdaq_index_gids_itch_v1_0_i.tso_symbol.dissect(buffer, index, packet, parent)

  -- Tso Outstanding: Long (E0)
  index, tso_outstanding = nasdaq_index_gids_itch_v1_0_i.tso_outstanding.dissect(buffer, index, packet, parent)

  -- Effective Date: Integer (Date)
  index, effective_date = nasdaq_index_gids_itch_v1_0_i.effective_date.dissect(buffer, index, packet, parent)

  -- Yield: Long (E11)
  index, yield = nasdaq_index_gids_itch_v1_0_i.yield.dissect(buffer, index, packet, parent)

  -- Coupon: Long (E11)
  index, coupon = nasdaq_index_gids_itch_v1_0_i.coupon.dissect(buffer, index, packet, parent)

  -- Maturity Date: Integer (Date)
  index, maturity_date = nasdaq_index_gids_itch_v1_0_i.maturity_date.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_index_gids_itch_v1_0_i.currency.dissect(buffer, index, packet, parent)

  -- Etp Name Length: Short
  index, etp_name_length = nasdaq_index_gids_itch_v1_0_i.etp_name_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Etp Name
  index, etp_name = nasdaq_index_gids_itch_v1_0_i.etp_name.dissect(buffer, index, packet, parent, etp_name_length)

  return index
end

-- Dissect: Etp Directory And Daily Valuation Message
nasdaq_index_gids_itch_v1_0_i.etp_directory_and_daily_valuation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.etp_directory_and_daily_valuation_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.etp_directory_and_daily_valuation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.etp_directory_and_daily_valuation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.etp_directory_and_daily_valuation_message.fields(buffer, offset, packet, parent)
  end
end

-- Commodity Summary Message
nasdaq_index_gids_itch_v1_0_i.commodity_summary_message = {}

-- Size: Commodity Summary Message
nasdaq_index_gids_itch_v1_0_i.commodity_summary_message.size =
  nasdaq_index_gids_itch_v1_0_i.nanoseconds.size + 
  nasdaq_index_gids_itch_v1_0_i.financial_product_type.size + 
  nasdaq_index_gids_itch_v1_0_i.brand.size + 
  nasdaq_index_gids_itch_v1_0_i.series.size + 
  nasdaq_index_gids_itch_v1_0_i.instrument_id.size + 
  nasdaq_index_gids_itch_v1_0_i.summary_type.size + 
  nasdaq_index_gids_itch_v1_0_i.sod_value.size + 
  nasdaq_index_gids_itch_v1_0_i.high.size + 
  nasdaq_index_gids_itch_v1_0_i.low.size + 
  nasdaq_index_gids_itch_v1_0_i.eod_value.size + 
  nasdaq_index_gids_itch_v1_0_i.net_change.size + 
  nasdaq_index_gids_itch_v1_0_i.effective_date.size + 
  nasdaq_index_gids_itch_v1_0_i.currency.size

-- Display: Commodity Summary Message
nasdaq_index_gids_itch_v1_0_i.commodity_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Commodity Summary Message
nasdaq_index_gids_itch_v1_0_i.commodity_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_index_gids_itch_v1_0_i.timestamp.dissect(buffer, index, packet, parent)

  -- Financial Product Type: Alpha
  index, financial_product_type = nasdaq_index_gids_itch_v1_0_i.financial_product_type.dissect(buffer, index, packet, parent)

  -- Brand: Alpha
  index, brand = nasdaq_index_gids_itch_v1_0_i.brand.dissect(buffer, index, packet, parent)

  -- Series: Alpha
  index, series = nasdaq_index_gids_itch_v1_0_i.series.dissect(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = nasdaq_index_gids_itch_v1_0_i.instrument_id.dissect(buffer, index, packet, parent)

  -- Summary Type: Alpha
  index, summary_type = nasdaq_index_gids_itch_v1_0_i.summary_type.dissect(buffer, index, packet, parent)

  -- Sod Value: Long (E11)
  index, sod_value = nasdaq_index_gids_itch_v1_0_i.sod_value.dissect(buffer, index, packet, parent)

  -- High: Long (E11)
  index, high = nasdaq_index_gids_itch_v1_0_i.high.dissect(buffer, index, packet, parent)

  -- Low: Long (E11)
  index, low = nasdaq_index_gids_itch_v1_0_i.low.dissect(buffer, index, packet, parent)

  -- Eod Value: Long (E11)
  index, eod_value = nasdaq_index_gids_itch_v1_0_i.eod_value.dissect(buffer, index, packet, parent)

  -- Net Change: Long (E11)
  index, net_change = nasdaq_index_gids_itch_v1_0_i.net_change.dissect(buffer, index, packet, parent)

  -- Effective Date: Integer (Date)
  index, effective_date = nasdaq_index_gids_itch_v1_0_i.effective_date.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_index_gids_itch_v1_0_i.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Commodity Summary Message
nasdaq_index_gids_itch_v1_0_i.commodity_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.commodity_summary_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.commodity_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.commodity_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.commodity_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Fixed Income Summary Message
nasdaq_index_gids_itch_v1_0_i.fixed_income_summary_message = {}

-- Size: Fixed Income Summary Message
nasdaq_index_gids_itch_v1_0_i.fixed_income_summary_message.size =
  nasdaq_index_gids_itch_v1_0_i.nanoseconds.size + 
  nasdaq_index_gids_itch_v1_0_i.financial_product_type.size + 
  nasdaq_index_gids_itch_v1_0_i.brand.size + 
  nasdaq_index_gids_itch_v1_0_i.series.size + 
  nasdaq_index_gids_itch_v1_0_i.instrument_id.size + 
  nasdaq_index_gids_itch_v1_0_i.summary_type.size + 
  nasdaq_index_gids_itch_v1_0_i.sod_value.size + 
  nasdaq_index_gids_itch_v1_0_i.high.size + 
  nasdaq_index_gids_itch_v1_0_i.low.size + 
  nasdaq_index_gids_itch_v1_0_i.eod_value.size + 
  nasdaq_index_gids_itch_v1_0_i.net_change.size + 
  nasdaq_index_gids_itch_v1_0_i.effective_date.size + 
  nasdaq_index_gids_itch_v1_0_i.yield.size + 
  nasdaq_index_gids_itch_v1_0_i.duration.size + 
  nasdaq_index_gids_itch_v1_0_i.coupon.size + 
  nasdaq_index_gids_itch_v1_0_i.currency.size

-- Display: Fixed Income Summary Message
nasdaq_index_gids_itch_v1_0_i.fixed_income_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fixed Income Summary Message
nasdaq_index_gids_itch_v1_0_i.fixed_income_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_index_gids_itch_v1_0_i.timestamp.dissect(buffer, index, packet, parent)

  -- Financial Product Type: Alpha
  index, financial_product_type = nasdaq_index_gids_itch_v1_0_i.financial_product_type.dissect(buffer, index, packet, parent)

  -- Brand: Alpha
  index, brand = nasdaq_index_gids_itch_v1_0_i.brand.dissect(buffer, index, packet, parent)

  -- Series: Alpha
  index, series = nasdaq_index_gids_itch_v1_0_i.series.dissect(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = nasdaq_index_gids_itch_v1_0_i.instrument_id.dissect(buffer, index, packet, parent)

  -- Summary Type: Alpha
  index, summary_type = nasdaq_index_gids_itch_v1_0_i.summary_type.dissect(buffer, index, packet, parent)

  -- Sod Value: Long (E11)
  index, sod_value = nasdaq_index_gids_itch_v1_0_i.sod_value.dissect(buffer, index, packet, parent)

  -- High: Long (E11)
  index, high = nasdaq_index_gids_itch_v1_0_i.high.dissect(buffer, index, packet, parent)

  -- Low: Long (E11)
  index, low = nasdaq_index_gids_itch_v1_0_i.low.dissect(buffer, index, packet, parent)

  -- Eod Value: Long (E11)
  index, eod_value = nasdaq_index_gids_itch_v1_0_i.eod_value.dissect(buffer, index, packet, parent)

  -- Net Change: Long (E11)
  index, net_change = nasdaq_index_gids_itch_v1_0_i.net_change.dissect(buffer, index, packet, parent)

  -- Effective Date: Integer (Date)
  index, effective_date = nasdaq_index_gids_itch_v1_0_i.effective_date.dissect(buffer, index, packet, parent)

  -- Yield: Long (E11)
  index, yield = nasdaq_index_gids_itch_v1_0_i.yield.dissect(buffer, index, packet, parent)

  -- Duration: Long (E11)
  index, duration = nasdaq_index_gids_itch_v1_0_i.duration.dissect(buffer, index, packet, parent)

  -- Coupon: Long (E11)
  index, coupon = nasdaq_index_gids_itch_v1_0_i.coupon.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_index_gids_itch_v1_0_i.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fixed Income Summary Message
nasdaq_index_gids_itch_v1_0_i.fixed_income_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.fixed_income_summary_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.fixed_income_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.fixed_income_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.fixed_income_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Equities Summary Message
nasdaq_index_gids_itch_v1_0_i.equities_summary_message = {}

-- Size: Equities Summary Message
nasdaq_index_gids_itch_v1_0_i.equities_summary_message.size =
  nasdaq_index_gids_itch_v1_0_i.nanoseconds.size + 
  nasdaq_index_gids_itch_v1_0_i.financial_product_type.size + 
  nasdaq_index_gids_itch_v1_0_i.brand.size + 
  nasdaq_index_gids_itch_v1_0_i.series.size + 
  nasdaq_index_gids_itch_v1_0_i.instrument_id.size + 
  nasdaq_index_gids_itch_v1_0_i.summary_type.size + 
  nasdaq_index_gids_itch_v1_0_i.sod_value.size + 
  nasdaq_index_gids_itch_v1_0_i.high.size + 
  nasdaq_index_gids_itch_v1_0_i.low.size + 
  nasdaq_index_gids_itch_v1_0_i.eod_value.size + 
  nasdaq_index_gids_itch_v1_0_i.net_change.size + 
  nasdaq_index_gids_itch_v1_0_i.effective_date.size + 
  nasdaq_index_gids_itch_v1_0_i.currency.size

-- Display: Equities Summary Message
nasdaq_index_gids_itch_v1_0_i.equities_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equities Summary Message
nasdaq_index_gids_itch_v1_0_i.equities_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_index_gids_itch_v1_0_i.timestamp.dissect(buffer, index, packet, parent)

  -- Financial Product Type: Alpha
  index, financial_product_type = nasdaq_index_gids_itch_v1_0_i.financial_product_type.dissect(buffer, index, packet, parent)

  -- Brand: Alpha
  index, brand = nasdaq_index_gids_itch_v1_0_i.brand.dissect(buffer, index, packet, parent)

  -- Series: Alpha
  index, series = nasdaq_index_gids_itch_v1_0_i.series.dissect(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = nasdaq_index_gids_itch_v1_0_i.instrument_id.dissect(buffer, index, packet, parent)

  -- Summary Type: Alpha
  index, summary_type = nasdaq_index_gids_itch_v1_0_i.summary_type.dissect(buffer, index, packet, parent)

  -- Sod Value: Long (E11)
  index, sod_value = nasdaq_index_gids_itch_v1_0_i.sod_value.dissect(buffer, index, packet, parent)

  -- High: Long (E11)
  index, high = nasdaq_index_gids_itch_v1_0_i.high.dissect(buffer, index, packet, parent)

  -- Low: Long (E11)
  index, low = nasdaq_index_gids_itch_v1_0_i.low.dissect(buffer, index, packet, parent)

  -- Eod Value: Long (E11)
  index, eod_value = nasdaq_index_gids_itch_v1_0_i.eod_value.dissect(buffer, index, packet, parent)

  -- Net Change: Long (E11)
  index, net_change = nasdaq_index_gids_itch_v1_0_i.net_change.dissect(buffer, index, packet, parent)

  -- Effective Date: Integer (Date)
  index, effective_date = nasdaq_index_gids_itch_v1_0_i.effective_date.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_index_gids_itch_v1_0_i.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equities Summary Message
nasdaq_index_gids_itch_v1_0_i.equities_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.equities_summary_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.equities_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.equities_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.equities_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Value Message
nasdaq_index_gids_itch_v1_0_i.settlement_value_message = {}

-- Size: Settlement Value Message
nasdaq_index_gids_itch_v1_0_i.settlement_value_message.size =
  nasdaq_index_gids_itch_v1_0_i.nanoseconds.size + 
  nasdaq_index_gids_itch_v1_0_i.financial_product_type.size + 
  nasdaq_index_gids_itch_v1_0_i.brand.size + 
  nasdaq_index_gids_itch_v1_0_i.series.size + 
  nasdaq_index_gids_itch_v1_0_i.instrument_id.size + 
  nasdaq_index_gids_itch_v1_0_i.settlement_value.size + 
  nasdaq_index_gids_itch_v1_0_i.settlement_type.size + 
  nasdaq_index_gids_itch_v1_0_i.currency.size

-- Display: Settlement Value Message
nasdaq_index_gids_itch_v1_0_i.settlement_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Value Message
nasdaq_index_gids_itch_v1_0_i.settlement_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_index_gids_itch_v1_0_i.timestamp.dissect(buffer, index, packet, parent)

  -- Financial Product Type: Alpha
  index, financial_product_type = nasdaq_index_gids_itch_v1_0_i.financial_product_type.dissect(buffer, index, packet, parent)

  -- Brand: Alpha
  index, brand = nasdaq_index_gids_itch_v1_0_i.brand.dissect(buffer, index, packet, parent)

  -- Series: Alpha
  index, series = nasdaq_index_gids_itch_v1_0_i.series.dissect(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = nasdaq_index_gids_itch_v1_0_i.instrument_id.dissect(buffer, index, packet, parent)

  -- Settlement Value: Long (E11)
  index, settlement_value = nasdaq_index_gids_itch_v1_0_i.settlement_value.dissect(buffer, index, packet, parent)

  -- Settlement Type: Alpha
  index, settlement_type = nasdaq_index_gids_itch_v1_0_i.settlement_type.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_index_gids_itch_v1_0_i.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Value Message
nasdaq_index_gids_itch_v1_0_i.settlement_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.settlement_value_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.settlement_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.settlement_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.settlement_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Intraday Index Value Message
nasdaq_index_gids_itch_v1_0_i.intraday_index_value_message = {}

-- Size: Intraday Index Value Message
nasdaq_index_gids_itch_v1_0_i.intraday_index_value_message.size =
  nasdaq_index_gids_itch_v1_0_i.nanoseconds.size + 
  nasdaq_index_gids_itch_v1_0_i.financial_product_type.size + 
  nasdaq_index_gids_itch_v1_0_i.brand.size + 
  nasdaq_index_gids_itch_v1_0_i.series.size + 
  nasdaq_index_gids_itch_v1_0_i.instrument_id.size + 
  nasdaq_index_gids_itch_v1_0_i.tick_value.size + 
  nasdaq_index_gids_itch_v1_0_i.tick_direction.size + 
  nasdaq_index_gids_itch_v1_0_i.currency.size

-- Display: Intraday Index Value Message
nasdaq_index_gids_itch_v1_0_i.intraday_index_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Intraday Index Value Message
nasdaq_index_gids_itch_v1_0_i.intraday_index_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_index_gids_itch_v1_0_i.timestamp.dissect(buffer, index, packet, parent)

  -- Financial Product Type: Alpha
  index, financial_product_type = nasdaq_index_gids_itch_v1_0_i.financial_product_type.dissect(buffer, index, packet, parent)

  -- Brand: Alpha
  index, brand = nasdaq_index_gids_itch_v1_0_i.brand.dissect(buffer, index, packet, parent)

  -- Series: Alpha
  index, series = nasdaq_index_gids_itch_v1_0_i.series.dissect(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = nasdaq_index_gids_itch_v1_0_i.instrument_id.dissect(buffer, index, packet, parent)

  -- Tick Value: Long (E11)
  index, tick_value = nasdaq_index_gids_itch_v1_0_i.tick_value.dissect(buffer, index, packet, parent)

  -- Tick Direction: Alpha
  index, tick_direction = nasdaq_index_gids_itch_v1_0_i.tick_direction.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_index_gids_itch_v1_0_i.currency.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Intraday Index Value Message
nasdaq_index_gids_itch_v1_0_i.intraday_index_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.intraday_index_value_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.intraday_index_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.intraday_index_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.intraday_index_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Issue Symbol Participation Message
nasdaq_index_gids_itch_v1_0_i.issue_symbol_participation_message = {}

-- Calculate size of: Issue Symbol Participation Message
nasdaq_index_gids_itch_v1_0_i.issue_symbol_participation_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_index_gids_itch_v1_0_i.nanoseconds.size

  index = index + nasdaq_index_gids_itch_v1_0_i.instrument_id.size

  index = index + nasdaq_index_gids_itch_v1_0_i.issue_symbol.size

  index = index + nasdaq_index_gids_itch_v1_0_i.issue_mic.size

  index = index + nasdaq_index_gids_itch_v1_0_i.name_length.size

  -- Parse runtime size of: Issue Name
  index = index + buffer(offset + index - 2, 2):int()

  return index
end

-- Display: Issue Symbol Participation Message
nasdaq_index_gids_itch_v1_0_i.issue_symbol_participation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Issue Symbol Participation Message
nasdaq_index_gids_itch_v1_0_i.issue_symbol_participation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_index_gids_itch_v1_0_i.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = nasdaq_index_gids_itch_v1_0_i.instrument_id.dissect(buffer, index, packet, parent)

  -- Issue Symbol: Alpha
  index, issue_symbol = nasdaq_index_gids_itch_v1_0_i.issue_symbol.dissect(buffer, index, packet, parent)

  -- Issue Mic: Alpha
  index, issue_mic = nasdaq_index_gids_itch_v1_0_i.issue_mic.dissect(buffer, index, packet, parent)

  -- Name Length: Short
  index, name_length = nasdaq_index_gids_itch_v1_0_i.name_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Issue Name
  index, issue_name = nasdaq_index_gids_itch_v1_0_i.issue_name.dissect(buffer, index, packet, parent, name_length)

  return index
end

-- Dissect: Issue Symbol Participation Message
nasdaq_index_gids_itch_v1_0_i.issue_symbol_participation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.issue_symbol_participation_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.issue_symbol_participation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.issue_symbol_participation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.issue_symbol_participation_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Directory Message
nasdaq_index_gids_itch_v1_0_i.index_directory_message = {}

-- Calculate size of: Index Directory Message
nasdaq_index_gids_itch_v1_0_i.index_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_index_gids_itch_v1_0_i.nanoseconds.size

  index = index + nasdaq_index_gids_itch_v1_0_i.instrument_id.size

  index = index + nasdaq_index_gids_itch_v1_0_i.dissemination_flag.size

  index = index + nasdaq_index_gids_itch_v1_0_i.financial_product_type.size

  index = index + nasdaq_index_gids_itch_v1_0_i.brand.size

  index = index + nasdaq_index_gids_itch_v1_0_i.series.size

  index = index + nasdaq_index_gids_itch_v1_0_i.strategy.size

  index = index + nasdaq_index_gids_itch_v1_0_i.asset_type.size

  index = index + nasdaq_index_gids_itch_v1_0_i.market_cap_size.size

  index = index + nasdaq_index_gids_itch_v1_0_i.currency.size

  index = index + nasdaq_index_gids_itch_v1_0_i.geography.size

  index = index + nasdaq_index_gids_itch_v1_0_i.index_settlement_type.size

  index = index + nasdaq_index_gids_itch_v1_0_i.index_calculation_method.size

  index = index + nasdaq_index_gids_itch_v1_0_i.state.size

  index = index + nasdaq_index_gids_itch_v1_0_i.index_usage.size

  index = index + nasdaq_index_gids_itch_v1_0_i.schedule.size

  index = index + nasdaq_index_gids_itch_v1_0_i.frequency.size

  index = index + nasdaq_index_gids_itch_v1_0_i.number_of_issue_participation_messages.size

  index = index + nasdaq_index_gids_itch_v1_0_i.base_value.size

  index = index + nasdaq_index_gids_itch_v1_0_i.base_date.size

  index = index + nasdaq_index_gids_itch_v1_0_i.name_length.size

  -- Parse runtime size of: Instrument Name
  index = index + buffer(offset + index - 2, 2):int()

  return index
end

-- Display: Index Directory Message
nasdaq_index_gids_itch_v1_0_i.index_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Directory Message
nasdaq_index_gids_itch_v1_0_i.index_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_index_gids_itch_v1_0_i.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Alpha
  index, instrument_id = nasdaq_index_gids_itch_v1_0_i.instrument_id.dissect(buffer, index, packet, parent)

  -- Dissemination Flag: Alpha
  index, dissemination_flag = nasdaq_index_gids_itch_v1_0_i.dissemination_flag.dissect(buffer, index, packet, parent)

  -- Financial Product Type: Alpha
  index, financial_product_type = nasdaq_index_gids_itch_v1_0_i.financial_product_type.dissect(buffer, index, packet, parent)

  -- Brand: Alpha
  index, brand = nasdaq_index_gids_itch_v1_0_i.brand.dissect(buffer, index, packet, parent)

  -- Series: Alpha
  index, series = nasdaq_index_gids_itch_v1_0_i.series.dissect(buffer, index, packet, parent)

  -- Strategy: Alpha
  index, strategy = nasdaq_index_gids_itch_v1_0_i.strategy.dissect(buffer, index, packet, parent)

  -- Asset Type: Alpha
  index, asset_type = nasdaq_index_gids_itch_v1_0_i.asset_type.dissect(buffer, index, packet, parent)

  -- Market Cap Size: Alpha
  index, market_cap_size = nasdaq_index_gids_itch_v1_0_i.market_cap_size.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = nasdaq_index_gids_itch_v1_0_i.currency.dissect(buffer, index, packet, parent)

  -- Geography: Alpha
  index, geography = nasdaq_index_gids_itch_v1_0_i.geography.dissect(buffer, index, packet, parent)

  -- Index Settlement Type: Alpha
  index, index_settlement_type = nasdaq_index_gids_itch_v1_0_i.index_settlement_type.dissect(buffer, index, packet, parent)

  -- Index Calculation Method: Alpha
  index, index_calculation_method = nasdaq_index_gids_itch_v1_0_i.index_calculation_method.dissect(buffer, index, packet, parent)

  -- State: Alpha
  index, state = nasdaq_index_gids_itch_v1_0_i.state.dissect(buffer, index, packet, parent)

  -- Index Usage: Alpha
  index, index_usage = nasdaq_index_gids_itch_v1_0_i.index_usage.dissect(buffer, index, packet, parent)

  -- Schedule: Alpha
  index, schedule = nasdaq_index_gids_itch_v1_0_i.schedule.dissect(buffer, index, packet, parent)

  -- Frequency: Alpha
  index, frequency = nasdaq_index_gids_itch_v1_0_i.frequency.dissect(buffer, index, packet, parent)

  -- Number Of Issue Participation Messages: Integer
  index, number_of_issue_participation_messages = nasdaq_index_gids_itch_v1_0_i.number_of_issue_participation_messages.dissect(buffer, index, packet, parent)

  -- Base Value: Long (E11)
  index, base_value = nasdaq_index_gids_itch_v1_0_i.base_value.dissect(buffer, index, packet, parent)

  -- Base Date: Integer (Date)
  index, base_date = nasdaq_index_gids_itch_v1_0_i.base_date.dissect(buffer, index, packet, parent)

  -- Name Length: Short
  index, name_length = nasdaq_index_gids_itch_v1_0_i.name_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Instrument Name
  index, instrument_name = nasdaq_index_gids_itch_v1_0_i.instrument_name.dissect(buffer, index, packet, parent, name_length)

  return index
end

-- Dissect: Index Directory Message
nasdaq_index_gids_itch_v1_0_i.index_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.index_directory_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.index_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.index_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.index_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_index_gids_itch_v1_0_i.system_event_message = {}

-- Size: System Event Message
nasdaq_index_gids_itch_v1_0_i.system_event_message.size =
  nasdaq_index_gids_itch_v1_0_i.nanoseconds.size + 
  nasdaq_index_gids_itch_v1_0_i.event_code.size + 
  nasdaq_index_gids_itch_v1_0_i.schedule.size

-- Display: System Event Message
nasdaq_index_gids_itch_v1_0_i.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_index_gids_itch_v1_0_i.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: Integer
  index, nanoseconds = nasdaq_index_gids_itch_v1_0_i.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_index_gids_itch_v1_0_i.event_code.dissect(buffer, index, packet, parent)

  -- Schedule: Alpha
  index, schedule = nasdaq_index_gids_itch_v1_0_i.schedule.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_index_gids_itch_v1_0_i.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp Seconds Message
nasdaq_index_gids_itch_v1_0_i.timestamp_seconds_message = {}

-- Size: Timestamp Seconds Message
nasdaq_index_gids_itch_v1_0_i.timestamp_seconds_message.size =
  nasdaq_index_gids_itch_v1_0_i.second.size

-- Display: Timestamp Seconds Message
nasdaq_index_gids_itch_v1_0_i.timestamp_seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp Seconds Message
nasdaq_index_gids_itch_v1_0_i.timestamp_seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = nasdaq_index_gids_itch_v1_0_i.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  nasdaq_index_gids_itch_v1_0_i.second.current = second

  if not packet.visited then
    nasdaq_index_gids_itch_v1_0_i.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Timestamp Seconds Message
nasdaq_index_gids_itch_v1_0_i.timestamp_seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.timestamp_seconds_message, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.timestamp_seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.timestamp_seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.timestamp_seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_index_gids_itch_v1_0_i.payload = {}

-- Dispatch: Payload
nasdaq_index_gids_itch_v1_0_i.payload.dispatch = {
  ["T"] = nasdaq_index_gids_itch_v1_0_i.timestamp_seconds_message.dissect,
  ["S"] = nasdaq_index_gids_itch_v1_0_i.system_event_message.dissect,
  ["R"] = nasdaq_index_gids_itch_v1_0_i.index_directory_message.dissect,
  ["P"] = nasdaq_index_gids_itch_v1_0_i.issue_symbol_participation_message.dissect,
  ["I"] = nasdaq_index_gids_itch_v1_0_i.intraday_index_value_message.dissect,
  ["A"] = nasdaq_index_gids_itch_v1_0_i.settlement_value_message.dissect,
  ["F"] = nasdaq_index_gids_itch_v1_0_i.equities_summary_message.dissect,
  ["B"] = nasdaq_index_gids_itch_v1_0_i.fixed_income_summary_message.dissect,
  ["C"] = nasdaq_index_gids_itch_v1_0_i.commodity_summary_message.dissect,
  ["D"] = nasdaq_index_gids_itch_v1_0_i.etp_directory_and_daily_valuation_message.dissect,
  ["E"] = nasdaq_index_gids_itch_v1_0_i.etp_intra_day_valuation_message.dissect,
  ["V"] = nasdaq_index_gids_itch_v1_0_i.etp_summary_message.dissect,
}

-- Dissect: Payload
nasdaq_index_gids_itch_v1_0_i.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = nasdaq_index_gids_itch_v1_0_i.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_index_gids_itch_v1_0_i.message_header = {}

-- Size: Message Header
nasdaq_index_gids_itch_v1_0_i.message_header.size =
  nasdaq_index_gids_itch_v1_0_i.message_length.size + 
  nasdaq_index_gids_itch_v1_0_i.message_type.size

-- Display: Message Header
nasdaq_index_gids_itch_v1_0_i.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_index_gids_itch_v1_0_i.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_index_gids_itch_v1_0_i.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 12 values
  index, message_type = nasdaq_index_gids_itch_v1_0_i.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_index_gids_itch_v1_0_i.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.message_header, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_index_gids_itch_v1_0_i.message = {}

-- Read runtime size of: Message
nasdaq_index_gids_itch_v1_0_i.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_index_gids_itch_v1_0_i.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_index_gids_itch_v1_0_i.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and nasdaq_index_gids_itch_v1_0_i.packet_sequence ~= nil then
    local sequence = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.message_sequence_number, UInt64.new(nasdaq_index_gids_itch_v1_0_i.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_index_gids_itch_v1_0_i.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 12 branches
  index = nasdaq_index_gids_itch_v1_0_i.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_index_gids_itch_v1_0_i.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_index_gids_itch_v1_0_i.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.message, buffer(offset, 0))
    local current = nasdaq_index_gids_itch_v1_0_i.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_index_gids_itch_v1_0_i.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_index_gids_itch_v1_0_i.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
nasdaq_index_gids_itch_v1_0_i.end_of_session = {}

-- Display: End Of Session
nasdaq_index_gids_itch_v1_0_i.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_index_gids_itch_v1_0_i.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_index_gids_itch_v1_0_i.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
nasdaq_index_gids_itch_v1_0_i.heartbeat = {}

-- Display: Heartbeat
nasdaq_index_gids_itch_v1_0_i.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
nasdaq_index_gids_itch_v1_0_i.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_index_gids_itch_v1_0_i.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
nasdaq_index_gids_itch_v1_0_i.messages = {}

-- Dispatch: Messages
nasdaq_index_gids_itch_v1_0_i.messages.dispatch = {
  [0] = nasdaq_index_gids_itch_v1_0_i.heartbeat.dissect,
  [65535] = nasdaq_index_gids_itch_v1_0_i.end_of_session.dissect,
}

-- Dissect: Messages
nasdaq_index_gids_itch_v1_0_i.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = nasdaq_index_gids_itch_v1_0_i.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_index_gids_itch_v1_0_i.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
nasdaq_index_gids_itch_v1_0_i.packet_header = {}

-- Size: Packet Header
nasdaq_index_gids_itch_v1_0_i.packet_header.size =
  nasdaq_index_gids_itch_v1_0_i.session.size + 
  nasdaq_index_gids_itch_v1_0_i.sequence_number.size + 
  nasdaq_index_gids_itch_v1_0_i.message_count.size

-- Display: Packet Header
nasdaq_index_gids_itch_v1_0_i.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_index_gids_itch_v1_0_i.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_index_gids_itch_v1_0_i.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_index_gids_itch_v1_0_i.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_index_gids_itch_v1_0_i.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  nasdaq_index_gids_itch_v1_0_i.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
nasdaq_index_gids_itch_v1_0_i.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_index_gids_itch_v1_0_i.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_index_gids_itch_v1_0_i.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_index_gids_itch_v1_0_i.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_index_gids_itch_v1_0_i.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_index_gids_itch_v1_0_i.packet = {}

-- Verify required size of Udp packet
nasdaq_index_gids_itch_v1_0_i.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_index_gids_itch_v1_0_i.packet_header.size
end

-- Dissect Packet
nasdaq_index_gids_itch_v1_0_i.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_index_gids_itch_v1_0_i.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  nasdaq_index_gids_itch_v1_0_i.second.current = data.second.frames[packet.number]
  nasdaq_index_gids_itch_v1_0_i.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_index_gids_itch_v1_0_i.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_index_gids_itch_v1_0_i.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_index_gids_itch_v1_0_i.init()
  nasdaq_index_gids_itch_v1_0_i.second.current = nil
  nasdaq_index_gids_itch_v1_0_i.conversation.current = nil
  nasdaq_index_gids_itch_v1_0_i.conversation.flows = {}
end

-- Dissector for Nasdaq Index Gids Itch 1.0.i
function omi_nasdaq_index_gids_itch_v1_0_i.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_index_gids_itch_v1_0_i.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_index_gids_itch_v1_0_i, buffer(), omi_nasdaq_index_gids_itch_v1_0_i.description, "("..buffer:len().." Bytes)")
  return nasdaq_index_gids_itch_v1_0_i.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq Index Gids Itch 1.0.i (Udp)
local function omi_nasdaq_index_gids_itch_v1_0_i_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_index_gids_itch_v1_0_i.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_index_gids_itch_v1_0_i
  omi_nasdaq_index_gids_itch_v1_0_i.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Index Gids Itch 1.0.i
omi_nasdaq_index_gids_itch_v1_0_i:register_heuristic("udp", omi_nasdaq_index_gids_itch_v1_0_i_udp_heuristic)

-- Register Nasdaq Index Gids Itch 1.0.i for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nasdaq_index_gids_itch_v1_0_i)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 1.0.i
--   Date: Friday, April 8, 2022
--   Specification: globalindex2-0.pdf
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
--   https://patents.google.com/patent/US12101388B2/en
--   https://patents.google.com/patent/US20240419416A1/en
--   https://patents.google.com/patent/US20260368281A1/en
--
-----------------------------------------------------------------------
