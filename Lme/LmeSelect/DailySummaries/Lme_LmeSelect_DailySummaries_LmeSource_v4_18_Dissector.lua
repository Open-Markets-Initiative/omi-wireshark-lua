-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lme LmeSelect DailySummaries LmeSource 4.18 Protocol
local omi_lme_lmeselect_dailysummaries_lmesource_v4_18 = Proto("Omi.Lme.LmeSelect.DailySummaries.LmeSource.v4.18", "Lme LmeSelect DailySummaries LmeSource 4.18")

-- Protocol table
local lme_lmeselect_dailysummaries_lmesource_v4_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lme LmeSelect DailySummaries LmeSource 4.18 Fields
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.band_count = ProtoField.new("Band Count", "lme.lmeselect.dailysummaries.lmesource.v4.18.bandcount", ftypes.UINT32, nil, nil, nil, "Number of warrant bands.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.business_date = ProtoField.new("Business Date", "lme.lmeselect.dailysummaries.lmesource.v4.18.businessdate", ftypes.UINT32, nil, nil, nil, "The business date for which the open interest is being reported, as YYYYMMDD.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.calculation_type = ProtoField.new("Calculation Type", "lme.lmeselect.dailysummaries.lmesource.v4.18.calculationtype", ftypes.STRING, nil, nil, nil, "Trading volume calculation type.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.contract_code = ProtoField.new("Contract Code", "lme.lmeselect.dailysummaries.lmesource.v4.18.contractcode", ftypes.STRING, nil, nil, nil, "Contract to which the instrument belongs.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.contract_type = ProtoField.new("Contract Type", "lme.lmeselect.dailysummaries.lmesource.v4.18.contracttype", ftypes.STRING, nil, nil, nil, "Constant contract type.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.currency_code = ProtoField.new("Currency Code", "lme.lmeselect.dailysummaries.lmesource.v4.18.currencycode", ftypes.STRING, nil, nil, nil, "The currency code according to ISO 4217.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.date_band_count = ProtoField.new("Date Band Count", "lme.lmeselect.dailysummaries.lmesource.v4.18.datebandcount", ftypes.UINT32, nil, nil, nil, "Number of open interest date bands.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.date_bands = ProtoField.new("Date Bands", "lme.lmeselect.dailysummaries.lmesource.v4.18.datebands", ftypes.STRING, nil, nil, nil, "One open interest date band, giving the open interest volume for the period between two dates")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.expiry_date = ProtoField.new("Expiry Date", "lme.lmeselect.dailysummaries.lmesource.v4.18.expirydate", ftypes.UINT32, nil, nil, nil, "Expiry date, as YYYYMMDD.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.filler = ProtoField.new("Filler", "lme.lmeselect.dailysummaries.lmesource.v4.18.filler", ftypes.STRING, nil, nil, nil, "Filler aligning the sequence number to a four byte boundary")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.from_date = ProtoField.new("From Date", "lme.lmeselect.dailysummaries.lmesource.v4.18.fromdate", ftypes.UINT32, nil, nil, nil, "The date from which open interest volume for the period is calculated, inclusive, as YYYYMMDD.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.instrument_id = ProtoField.new("Instrument Id", "lme.lmeselect.dailysummaries.lmesource.v4.18.instrumentid", ftypes.UINT64, nil, nil, nil, "Instrument to which the open interest applies.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_band_count = ProtoField.new("Long Position Band Count", "lme.lmeselect.dailysummaries.lmesource.v4.18.longpositionbandcount", ftypes.UINT32, nil, nil, nil, "Number of bands for long position.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_bands = ProtoField.new("Long Position Bands", "lme.lmeselect.dailysummaries.lmesource.v4.18.longpositionbands", ftypes.STRING, nil, nil, nil, "One long position band, giving the percentage range of Market Open Interest and the prompt dates participants hold long positions in")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_lower_value = ProtoField.new("Long Position Lower Value", "lme.lmeselect.dailysummaries.lmesource.v4.18.longpositionlowervalue", ftypes.DOUBLE, nil, nil, nil, "Long position lower band percentage value, in implicit six decimal place format.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_prompt_date_count = ProtoField.new("Long Position Prompt Date Count", "lme.lmeselect.dailysummaries.lmesource.v4.18.longpositionpromptdatecount", ftypes.UINT32, nil, nil, nil, "Number of prompt dates.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_upper_value = ProtoField.new("Long Position Upper Value", "lme.lmeselect.dailysummaries.lmesource.v4.18.longpositionuppervalue", ftypes.DOUBLE, nil, nil, nil, "Long position upper band percentage value, in implicit six decimal place format.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_prompt_dates = ProtoField.new("Long Prompt Dates", "lme.lmeselect.dailysummaries.lmesource.v4.18.longpromptdates", ftypes.STRING, nil, nil, nil, "One prompt date of a long position band and the number of participants holding long positions in it")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.lower_value = ProtoField.new("Lower Value", "lme.lmeselect.dailysummaries.lmesource.v4.18.lowervalue", ftypes.DOUBLE, nil, nil, nil, "Lower band percentage value, in implicit six decimal place format.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.msg_count = ProtoField.new("Msg Count", "lme.lmeselect.dailysummaries.lmesource.v4.18.msgcount", ftypes.UINT8, nil, nil, nil, "Number of messages included in the packet")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.msg_size = ProtoField.new("Msg Size", "lme.lmeselect.dailysummaries.lmesource.v4.18.msgsize", ftypes.UINT16, nil, nil, nil, "Message length, including this field")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.msg_type = ProtoField.new("Msg Type", "lme.lmeselect.dailysummaries.lmesource.v4.18.msgtype", ftypes.UINT16, nil, nil, nil, "Type of message, selecting the payload that follows the message header")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.new_seq_no = ProtoField.new("New Seq No", "lme.lmeselect.dailysummaries.lmesource.v4.18.newseqno", ftypes.UINT32, nil, nil, nil, "New sequence number. Always set to 1.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.open_interest_type = ProtoField.new("Open Interest Type", "lme.lmeselect.dailysummaries.lmesource.v4.18.openinteresttype", ftypes.STRING, nil, nil, nil, "Type of open interest. The specification names this field Type; it is qualified here because the Reference FX Rate and Warrant Band messages give a Type of their own carrying different sets of values.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.participant_count = ProtoField.new("Participant Count", "lme.lmeselect.dailysummaries.lmesource.v4.18.participantcount", ftypes.UINT32, nil, nil, nil, "Number of market participants holding long positions in the given band and prompt.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.pkt_size = ProtoField.new("Pkt Size", "lme.lmeselect.dailysummaries.lmesource.v4.18.pktsize", ftypes.UINT16, nil, nil, nil, "Size of the packet, including this field")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.product_code = ProtoField.new("Product Code", "lme.lmeselect.dailysummaries.lmesource.v4.18.productcode", ftypes.STRING, nil, nil, nil, "The product code. This identifies the metal for the instrument.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.prompt_date_label = ProtoField.new("Prompt Date Label", "lme.lmeselect.dailysummaries.lmesource.v4.18.promptdatelabel", ftypes.STRING, nil, nil, nil, "Prompt date label.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.send_time = ProtoField.new("Send Time", "lme.lmeselect.dailysummaries.lmesource.v4.18.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.send_time_utc = ProtoField.new("Send Time", "lme.lmeselect.dailysummaries.lmesource.v4.18.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "UTC timestamp for the time this packet was sent, in nanoseconds since epoch, provided to the nearest microsecond")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.seq_num = ProtoField.new("Seq Num", "lme.lmeselect.dailysummaries.lmesource.v4.18.seqnum", ftypes.UINT32, nil, nil, nil, "Sequence number of the first message in the packet")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_band_count = ProtoField.new("Short Position Band Count", "lme.lmeselect.dailysummaries.lmesource.v4.18.shortpositionbandcount", ftypes.UINT32, nil, nil, nil, "Number of bands for short position.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_bands = ProtoField.new("Short Position Bands", "lme.lmeselect.dailysummaries.lmesource.v4.18.shortpositionbands", ftypes.STRING, nil, nil, nil, "One short position band, giving the percentage range of Market Open Interest and the prompt dates participants hold short positions in")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_lower_value = ProtoField.new("Short Position Lower Value", "lme.lmeselect.dailysummaries.lmesource.v4.18.shortpositionlowervalue", ftypes.DOUBLE, nil, nil, nil, "Short position lower band percentage value, in implicit six decimal place format.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_prompt_date_count = ProtoField.new("Short Position Prompt Date Count", "lme.lmeselect.dailysummaries.lmesource.v4.18.shortpositionpromptdatecount", ftypes.UINT32, nil, nil, nil, "Number of prompt dates.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_upper_value = ProtoField.new("Short Position Upper Value", "lme.lmeselect.dailysummaries.lmesource.v4.18.shortpositionuppervalue", ftypes.DOUBLE, nil, nil, nil, "Short position upper band percentage value, in implicit six decimal place format. The specification describes this field as the long position upper band percentage value, repeating the wording of the long band; the field is the short band's upper value.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_prompt_dates = ProtoField.new("Short Prompt Dates", "lme.lmeselect.dailysummaries.lmesource.v4.18.shortpromptdates", ftypes.STRING, nil, nil, nil, "One prompt date of a short position band and the number of participants holding short positions in it")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.to_date = ProtoField.new("To Date", "lme.lmeselect.dailysummaries.lmesource.v4.18.todate", ftypes.UINT32, nil, nil, nil, "The date to which open interest volume for the period is calculated, inclusive, as YYYYMMDD.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.trade_date = ProtoField.new("Trade Date", "lme.lmeselect.dailysummaries.lmesource.v4.18.tradedate", ftypes.UINT32, nil, nil, nil, "The trade date for which the trading volume is being reported, as YYYYMMDD.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.unreported_warrants = ProtoField.new("Unreported Warrants", "lme.lmeselect.dailysummaries.lmesource.v4.18.unreportedwarrants", ftypes.DOUBLE, nil, nil, nil, "Percentage of total live, on warrant, stock that remains unreported, in implicit six decimal place format. Applicable to Type WB, otherwise null.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.upper_value = ProtoField.new("Upper Value", "lme.lmeselect.dailysummaries.lmesource.v4.18.uppervalue", ftypes.DOUBLE, nil, nil, nil, "Upper band percentage value, in implicit six decimal place format. Null for Type WC or WT if one hundred.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.volume = ProtoField.new("Volume", "lme.lmeselect.dailysummaries.lmesource.v4.18.volume", ftypes.UINT32, nil, nil, nil, "Number of open positions expressed in lots.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.warrant_band_type = ProtoField.new("Warrant Band Type", "lme.lmeselect.dailysummaries.lmesource.v4.18.warrantbandtype", ftypes.STRING, nil, nil, nil, "Type of warrant band. The specification names this field Type; it is qualified here because the Reference FX Rate and Open Interest messages give a Type of their own carrying different sets of values.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.warrant_bands = ProtoField.new("Warrant Bands", "lme.lmeselect.dailysummaries.lmesource.v4.18.warrantbands", ftypes.STRING, nil, nil, nil, "One warrant band, giving the percentage range and the number of participants whose warrant concentration falls within it")

-- Lme LmeSelect DailySummaries LmeSource 4.18 Framing
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.message = ProtoField.new("Message", "lme.lmeselect.dailysummaries.lmesource.v4.18.message", ftypes.STRING, nil, nil, nil, "LMEsource application messages carried by this packet; a message is never fragmented across packets")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.message_header = ProtoField.new("Message Header", "lme.lmeselect.dailysummaries.lmesource.v4.18.messageheader", ftypes.STRING, nil, nil, nil, "LMEsource message header, giving the size of the message and its type")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.packet = ProtoField.new("Packet", "lme.lmeselect.dailysummaries.lmesource.v4.18.packet", ftypes.STRING, nil, nil, nil, "LMEsource multicast packet, a packet header followed by Msg Count complete messages")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.packet_header = ProtoField.new("Packet Header", "lme.lmeselect.dailysummaries.lmesource.v4.18.packetheader", ftypes.STRING, nil, nil, nil, "LMEsource packet header, giving the packet size, the number of messages it carries, the sequence number of the first of them and the time the packet was sent")

-- Lme LmeSelect DailySummaries 4.18 Application Messages
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.open_interest_band_message = ProtoField.new("Open Interest Band Message", "lme.lmeselect.dailysummaries.lmesource.v4.18.openinterestbandmessage", ftypes.STRING, nil, nil, nil, "Reports open interest for all futures trades by product between given dates. Open interest volumes are provided per currency, by contract code, and not aggregated across currencies.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.open_interest_message = ProtoField.new("Open Interest Message", "lme.lmeselect.dailysummaries.lmesource.v4.18.openinterestmessage", ftypes.STRING, nil, nil, nil, "Reports Exchange and Market Open Interest for open positions in futures and options contracts. Exchange open interest volumes are provided per currency, by contract code, and not aggregated across currencies, whereas market open interest volumes are aggregated across currencies and reported against USD denominated instruments.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.position_band_message = ProtoField.new("Position Band Message", "lme.lmeselect.dailysummaries.lmesource.v4.18.positionbandmessage", ftypes.STRING, nil, nil, nil, "Reports the number of market participants holding futures positions as a percentage of Market Open Interest.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "lme.lmeselect.dailysummaries.lmesource.v4.18.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "Sent on each multicast channel at start of day, and intraday in case of a disaster recovery. The client must ignore the sequence number of the Sequence Reset message itself and set the next expected sequence number to NewSeqNo, clear all cached data for all instruments and subscribe to the refresh channels to receive the current state of the market.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.trading_volume_message = ProtoField.new("Trading Volume Message", "lme.lmeselect.dailysummaries.lmesource.v4.18.tradingvolumemessage", ftypes.STRING, nil, nil, nil, "Provides the traded volume in lots for matched trades in futures and options instruments. All trades resulting from Cross Order execution, whether off-book or not, are included in the trading volume calculation.")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.warrant_band_message = ProtoField.new("Warrant Band Message", "lme.lmeselect.dailysummaries.lmesource.v4.18.warrantbandmessage", ftypes.STRING, nil, nil, nil, "Reports the number of market participants holding a significant percentage of warrants and positions along the front of the curve, being Tom, Cash and Cash plus one day.")

-- Lme LmeSelect DailySummaries LmeSource 4.18 Generated Fields
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.date_bands_index = ProtoField.new("Date Bands Index", "lme.lmeselect.dailysummaries.lmesource.v4.18.datebandsindex", ftypes.UINT16)
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_bands_index = ProtoField.new("Long Position Bands Index", "lme.lmeselect.dailysummaries.lmesource.v4.18.longpositionbandsindex", ftypes.UINT16)
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_prompt_dates_index = ProtoField.new("Long Prompt Dates Index", "lme.lmeselect.dailysummaries.lmesource.v4.18.longpromptdatesindex", ftypes.UINT16)
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.message_index = ProtoField.new("Message Index", "lme.lmeselect.dailysummaries.lmesource.v4.18.messageindex", ftypes.UINT16)
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_bands_index = ProtoField.new("Short Position Bands Index", "lme.lmeselect.dailysummaries.lmesource.v4.18.shortpositionbandsindex", ftypes.UINT16)
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_prompt_dates_index = ProtoField.new("Short Prompt Dates Index", "lme.lmeselect.dailysummaries.lmesource.v4.18.shortpromptdatesindex", ftypes.UINT16)
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.warrant_bands_index = ProtoField.new("Warrant Bands Index", "lme.lmeselect.dailysummaries.lmesource.v4.18.warrantbandsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Lme LmeSelect DailySummaries LmeSource 4.18 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
lme_lmeselect_dailysummaries_lmesource_v4_18.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lme LmeSelect DailySummaries LmeSource 4.18 Element Dissection Options
show.repeating_groups = true
show.structs = true
show.headers = true
show.application_messages = true
show.indexes = true

-- Register Lme LmeSelect DailySummaries LmeSource 4.18 Show Options
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_application_messages then
    show.application_messages = omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_application_messages
  end
  if show.headers ~= omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_headers then
    show.headers = omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_headers
  end
  if show.repeating_groups ~= omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_repeating_groups then
    show.repeating_groups = omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_repeating_groups
  end
  if show.structs ~= omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_structs then
    show.structs = omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_structs
  end
  if show.indexes ~= omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_indexes then
    show.indexes = omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.show_indexes
  end
  if lme_lmeselect_dailysummaries_lmesource_v4_18.absolute_time_base ~= omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.absolute_time_base then
    lme_lmeselect_dailysummaries_lmesource_v4_18.absolute_time_base = omi_lme_lmeselect_dailysummaries_lmesource_v4_18.prefs.absolute_time_base
  end
end


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
-- Lme LmeSelect DailySummaries LmeSource 4.18 Fields
-----------------------------------------------------------------------

-- Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.band_count = {}

-- Size: Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.band_count.size = 4

-- Display: Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.band_count.display = function(value)
  return "Band Count: "..value
end

-- Dissect: Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.band_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.band_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.band_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.band_count, range, value, display)

  return offset + length, value
end

-- Business Date
lme_lmeselect_dailysummaries_lmesource_v4_18.business_date = {}

-- Size: Business Date
lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.size = 4

-- Display: Business Date
lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Business Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Business Date
lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.business_date, range, value, display)

  return offset + length, value
end

-- Calculation Type
lme_lmeselect_dailysummaries_lmesource_v4_18.calculation_type = {}

-- Size: Calculation Type
lme_lmeselect_dailysummaries_lmesource_v4_18.calculation_type.size = 1

-- Display: Calculation Type
lme_lmeselect_dailysummaries_lmesource_v4_18.calculation_type.labels = {
  ["D"] = "Calculation Type: Daily (D)",
  ["I"] = "Calculation Type: Intraday (I)",
}

lme_lmeselect_dailysummaries_lmesource_v4_18.calculation_type.display = function(value)
  return lme_lmeselect_dailysummaries_lmesource_v4_18.calculation_type.labels[value] or "Calculation Type: Unknown("..value..")"
end

-- Dissect: Calculation Type
lme_lmeselect_dailysummaries_lmesource_v4_18.calculation_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.calculation_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.calculation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.calculation_type, range, value, display)

  return offset + length, value
end

-- Contract Code
lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code = {}

-- Size: Contract Code
lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code.size = 12

-- Display: Contract Code
lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code.display = function(value)
  return "Contract Code: "..value
end

-- Dissect: Contract Code
lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.contract_code, range, value, display)

  return offset + length, value
end

-- Contract Type
lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type = {}

-- Size: Contract Type
lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.size = 1

-- Display: Contract Type
lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.labels = {
  ["F"] = "Contract Type: Future (F)",
  ["O"] = "Contract Type: Option (O)",
}

lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.display = function(value)
  return lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.labels[value] or "Contract Type: Unknown("..value..")"
end

-- Dissect: Contract Type
lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.contract_type, range, value, display)

  return offset + length, value
end

-- Currency Code
lme_lmeselect_dailysummaries_lmesource_v4_18.currency_code = {}

-- Size: Currency Code
lme_lmeselect_dailysummaries_lmesource_v4_18.currency_code.size = 3

-- Display: Currency Code
lme_lmeselect_dailysummaries_lmesource_v4_18.currency_code.display = function(value)
  return "Currency Code: "..value
end

-- Dissect: Currency Code
lme_lmeselect_dailysummaries_lmesource_v4_18.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.currency_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Date Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.date_band_count = {}

-- Size: Date Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.date_band_count.size = 4

-- Display: Date Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.date_band_count.display = function(value)
  return "Date Band Count: "..value
end

-- Dissect: Date Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.date_band_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.date_band_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.date_band_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.date_band_count, range, value, display)

  return offset + length, value
end

-- Expiry Date
lme_lmeselect_dailysummaries_lmesource_v4_18.expiry_date = {}

-- Size: Expiry Date
lme_lmeselect_dailysummaries_lmesource_v4_18.expiry_date.size = 4

-- Display: Expiry Date
lme_lmeselect_dailysummaries_lmesource_v4_18.expiry_date.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Expiry Date: No Value"
  end

  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Expiry Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Expiry Date
lme_lmeselect_dailysummaries_lmesource_v4_18.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.expiry_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Filler
lme_lmeselect_dailysummaries_lmesource_v4_18.filler = {}

-- Size: Filler
lme_lmeselect_dailysummaries_lmesource_v4_18.filler.size = 1

-- Display: Filler
lme_lmeselect_dailysummaries_lmesource_v4_18.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
lme_lmeselect_dailysummaries_lmesource_v4_18.filler.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.filler, range, value, display)

  return offset + length, value
end

-- From Date
lme_lmeselect_dailysummaries_lmesource_v4_18.from_date = {}

-- Size: From Date
lme_lmeselect_dailysummaries_lmesource_v4_18.from_date.size = 4

-- Display: From Date
lme_lmeselect_dailysummaries_lmesource_v4_18.from_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("From Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: From Date
lme_lmeselect_dailysummaries_lmesource_v4_18.from_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.from_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.from_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.from_date, range, value, display)

  return offset + length, value
end

-- Instrument Id
lme_lmeselect_dailysummaries_lmesource_v4_18.instrument_id = {}

-- Size: Instrument Id
lme_lmeselect_dailysummaries_lmesource_v4_18.instrument_id.size = 8

-- Display: Instrument Id
lme_lmeselect_dailysummaries_lmesource_v4_18.instrument_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Instrument Id: No Value"
  end

  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
lme_lmeselect_dailysummaries_lmesource_v4_18.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Long Position Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_band_count = {}

-- Size: Long Position Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_band_count.size = 4

-- Display: Long Position Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_band_count.display = function(value)
  return "Long Position Band Count: "..value
end

-- Dissect: Long Position Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_band_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_band_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_band_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_band_count, range, value, display)

  return offset + length, value
end

-- Long Position Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_lower_value = {}

-- Size: Long Position Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_lower_value.size = 8

-- Display: Long Position Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_lower_value.display = function(value)
  return "Long Position Lower Value: "..value
end

-- Translate: Long Position Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_lower_value.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Long Position Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_lower_value.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_lower_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_lower_value.translate(raw)
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_lower_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_lower_value, range, value, display)

  return offset + length, value
end

-- Long Position Prompt Date Count
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_prompt_date_count = {}

-- Size: Long Position Prompt Date Count
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_prompt_date_count.size = 4

-- Display: Long Position Prompt Date Count
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_prompt_date_count.display = function(value)
  return "Long Position Prompt Date Count: "..value
end

-- Dissect: Long Position Prompt Date Count
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_prompt_date_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_prompt_date_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_prompt_date_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_prompt_date_count, range, value, display)

  return offset + length, value
end

-- Long Position Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_upper_value = {}

-- Size: Long Position Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_upper_value.size = 8

-- Display: Long Position Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_upper_value.display = function(value)
  return "Long Position Upper Value: "..value
end

-- Translate: Long Position Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_upper_value.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Long Position Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_upper_value.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_upper_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_upper_value.translate(raw)
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_upper_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_upper_value, range, value, display)

  return offset + length, value
end

-- Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.lower_value = {}

-- Size: Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.lower_value.size = 8

-- Display: Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.lower_value.display = function(value)
  return "Lower Value: "..value
end

-- Translate: Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.lower_value.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.lower_value.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.lower_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_dailysummaries_lmesource_v4_18.lower_value.translate(raw)
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.lower_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.lower_value, range, value, display)

  return offset + length, value
end

-- Msg Count
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_count = {}

-- Size: Msg Count
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_count.size = 1

-- Display: Msg Count
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_size = {}

-- Size: Msg Size
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_size.size = 2

-- Display: Msg Size
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_type = {}

-- Size: Msg Type
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_type.size = 2

-- Display: Msg Type
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_type.labels = {
  [100] = "Msg Type: Sequence Reset Message (100)",
  [420] = "Msg Type: Open Interest Message (420)",
  [421] = "Msg Type: Open Interest Band Message (421)",
  [422] = "Msg Type: Position Band Message (422)",
  [423] = "Msg Type: Warrant Band Message (423)",
  [424] = "Msg Type: Trading Volume Message (424)",
}

lme_lmeselect_dailysummaries_lmesource_v4_18.msg_type.display = function(value)
  return lme_lmeselect_dailysummaries_lmesource_v4_18.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
lme_lmeselect_dailysummaries_lmesource_v4_18.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
lme_lmeselect_dailysummaries_lmesource_v4_18.new_seq_no = {}

-- Size: New Seq No
lme_lmeselect_dailysummaries_lmesource_v4_18.new_seq_no.size = 4

-- Display: New Seq No
lme_lmeselect_dailysummaries_lmesource_v4_18.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
lme_lmeselect_dailysummaries_lmesource_v4_18.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Open Interest Type
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_type = {}

-- Size: Open Interest Type
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_type.size = 1

-- Display: Open Interest Type
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_type.labels = {
  ["E"] = "Open Interest Type: Exchange (E)",
  ["M"] = "Open Interest Type: Market (M)",
}

lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_type.display = function(value)
  return lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_type.labels[value] or "Open Interest Type: Unknown("..value..")"
end

-- Dissect: Open Interest Type
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.open_interest_type, range, value, display)

  return offset + length, value
end

-- Participant Count
lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count = {}

-- Size: Participant Count
lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count.size = 4

-- Display: Participant Count
lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count.display = function(value)
  return "Participant Count: "..value
end

-- Dissect: Participant Count
lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.participant_count, range, value, display)

  return offset + length, value
end

-- Pkt Size
lme_lmeselect_dailysummaries_lmesource_v4_18.pkt_size = {}

-- Size: Pkt Size
lme_lmeselect_dailysummaries_lmesource_v4_18.pkt_size.size = 2

-- Display: Pkt Size
lme_lmeselect_dailysummaries_lmesource_v4_18.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
lme_lmeselect_dailysummaries_lmesource_v4_18.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Product Code
lme_lmeselect_dailysummaries_lmesource_v4_18.product_code = {}

-- Size: Product Code
lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.size = 2

-- Display: Product Code
lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.display = function(value)
  return "Product Code: "..value
end

-- Dissect: Product Code
lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.product_code, range, value, display)

  return offset + length, value
end

-- Prompt Date Label
lme_lmeselect_dailysummaries_lmesource_v4_18.prompt_date_label = {}

-- Size: Prompt Date Label
lme_lmeselect_dailysummaries_lmesource_v4_18.prompt_date_label.size = 6

-- Display: Prompt Date Label
lme_lmeselect_dailysummaries_lmesource_v4_18.prompt_date_label.display = function(value)
  return "Prompt Date Label: "..value
end

-- Dissect: Prompt Date Label
lme_lmeselect_dailysummaries_lmesource_v4_18.prompt_date_label.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.prompt_date_label.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.prompt_date_label.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.prompt_date_label, range, value, display)

  return offset + length, value
end

-- Send Time
lme_lmeselect_dailysummaries_lmesource_v4_18.send_time = {}

-- Size: Send Time
lme_lmeselect_dailysummaries_lmesource_v4_18.send_time.size = 8

-- Dissect: Send Time
lme_lmeselect_dailysummaries_lmesource_v4_18.send_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.send_time
  if lme_lmeselect_dailysummaries_lmesource_v4_18.absolute_time_base == 1 then field = omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Seq Num
lme_lmeselect_dailysummaries_lmesource_v4_18.seq_num = {}

-- Size: Seq Num
lme_lmeselect_dailysummaries_lmesource_v4_18.seq_num.size = 4

-- Display: Seq Num
lme_lmeselect_dailysummaries_lmesource_v4_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
lme_lmeselect_dailysummaries_lmesource_v4_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Short Position Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_band_count = {}

-- Size: Short Position Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_band_count.size = 4

-- Display: Short Position Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_band_count.display = function(value)
  return "Short Position Band Count: "..value
end

-- Dissect: Short Position Band Count
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_band_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_band_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_band_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_band_count, range, value, display)

  return offset + length, value
end

-- Short Position Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_lower_value = {}

-- Size: Short Position Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_lower_value.size = 8

-- Display: Short Position Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_lower_value.display = function(value)
  return "Short Position Lower Value: "..value
end

-- Translate: Short Position Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_lower_value.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Short Position Lower Value
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_lower_value.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_lower_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_lower_value.translate(raw)
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_lower_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_lower_value, range, value, display)

  return offset + length, value
end

-- Short Position Prompt Date Count
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_prompt_date_count = {}

-- Size: Short Position Prompt Date Count
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_prompt_date_count.size = 4

-- Display: Short Position Prompt Date Count
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_prompt_date_count.display = function(value)
  return "Short Position Prompt Date Count: "..value
end

-- Dissect: Short Position Prompt Date Count
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_prompt_date_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_prompt_date_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_prompt_date_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_prompt_date_count, range, value, display)

  return offset + length, value
end

-- Short Position Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_upper_value = {}

-- Size: Short Position Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_upper_value.size = 8

-- Display: Short Position Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_upper_value.display = function(value)
  return "Short Position Upper Value: "..value
end

-- Translate: Short Position Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_upper_value.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Short Position Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_upper_value.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_upper_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_upper_value.translate(raw)
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_upper_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_upper_value, range, value, display)

  return offset + length, value
end

-- To Date
lme_lmeselect_dailysummaries_lmesource_v4_18.to_date = {}

-- Size: To Date
lme_lmeselect_dailysummaries_lmesource_v4_18.to_date.size = 4

-- Display: To Date
lme_lmeselect_dailysummaries_lmesource_v4_18.to_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("To Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: To Date
lme_lmeselect_dailysummaries_lmesource_v4_18.to_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.to_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.to_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.to_date, range, value, display)

  return offset + length, value
end

-- Trade Date
lme_lmeselect_dailysummaries_lmesource_v4_18.trade_date = {}

-- Size: Trade Date
lme_lmeselect_dailysummaries_lmesource_v4_18.trade_date.size = 4

-- Display: Trade Date
lme_lmeselect_dailysummaries_lmesource_v4_18.trade_date.display = function(value)
  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Trade Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Trade Date
lme_lmeselect_dailysummaries_lmesource_v4_18.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Unreported Warrants
lme_lmeselect_dailysummaries_lmesource_v4_18.unreported_warrants = {}

-- Size: Unreported Warrants
lme_lmeselect_dailysummaries_lmesource_v4_18.unreported_warrants.size = 8

-- Display: Unreported Warrants
lme_lmeselect_dailysummaries_lmesource_v4_18.unreported_warrants.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Unreported Warrants: No Value"
  end

  return "Unreported Warrants: "..value
end

-- Translate: Unreported Warrants
lme_lmeselect_dailysummaries_lmesource_v4_18.unreported_warrants.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Unreported Warrants
lme_lmeselect_dailysummaries_lmesource_v4_18.unreported_warrants.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.unreported_warrants.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_dailysummaries_lmesource_v4_18.unreported_warrants.translate(raw)
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.unreported_warrants.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.unreported_warrants, range, value, display)

  return offset + length, value
end

-- Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.upper_value = {}

-- Size: Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.upper_value.size = 8

-- Display: Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.upper_value.display = function(raw, value)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return "Upper Value: No Value"
  end

  return "Upper Value: "..value
end

-- Translate: Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.upper_value.translate = function(raw)
  -- Check null sentinel value
  if raw == Int64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/1000000
end

-- Dissect: Upper Value
lme_lmeselect_dailysummaries_lmesource_v4_18.upper_value.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.upper_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = lme_lmeselect_dailysummaries_lmesource_v4_18.upper_value.translate(raw)
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.upper_value.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.upper_value, range, value, display)

  return offset + length, value
end

-- Volume
lme_lmeselect_dailysummaries_lmesource_v4_18.volume = {}

-- Size: Volume
lme_lmeselect_dailysummaries_lmesource_v4_18.volume.size = 4

-- Display: Volume
lme_lmeselect_dailysummaries_lmesource_v4_18.volume.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Volume: No Value"
  end

  return "Volume: "..value
end

-- Dissect: Volume
lme_lmeselect_dailysummaries_lmesource_v4_18.volume.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.volume, range, value, display)

  return offset + length, value
end

-- Warrant Band Type
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_type = {}

-- Size: Warrant Band Type
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_type.size = 4

-- Display: Warrant Band Type
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_type.labels = {
  ["WB"] = "Warrant Band Type: Warrant Band (WB)",
  ["WC"] = "Warrant Band Type: Warrant Band Cash (WC)",
  ["WT"] = "Warrant Band Type: Warrant Band Tom (WT)",
}

lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_type.display = function(value)
  return lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_type.labels[value] or "Warrant Band Type: Unknown("..value..")"
end

-- Dissect: Warrant Band Type
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.warrant_band_type, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lme LmeSelect DailySummaries LmeSource 4.18
-----------------------------------------------------------------------

-- Trading Volume Message
lme_lmeselect_dailysummaries_lmesource_v4_18.trading_volume_message = {}

-- Size: Trading Volume Message
lme_lmeselect_dailysummaries_lmesource_v4_18.trading_volume_message.size =
  lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.trade_date.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.calculation_type.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.instrument_id.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.volume.size

-- Display: Trading Volume Message
lme_lmeselect_dailysummaries_lmesource_v4_18.trading_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Volume Message
lme_lmeselect_dailysummaries_lmesource_v4_18.trading_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Date: Uint32
  index, business_date = lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.dissect(buffer, index, packet, parent)

  -- Trade Date: Uint32
  index, trade_date = lme_lmeselect_dailysummaries_lmesource_v4_18.trade_date.dissect(buffer, index, packet, parent)

  -- Calculation Type: String
  index, calculation_type = lme_lmeselect_dailysummaries_lmesource_v4_18.calculation_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Uint64
  index, instrument_id = lme_lmeselect_dailysummaries_lmesource_v4_18.instrument_id.dissect(buffer, index, packet, parent)

  -- Product Code: String
  index, product_code = lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Contract Type: String
  index, contract_type = lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_dailysummaries_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Volume Message
lme_lmeselect_dailysummaries_lmesource_v4_18.trading_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.trading_volume_message, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.trading_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.trading_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.trading_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Warrant Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_bands = {}

-- Size: Warrant Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_bands.size =
  lme_lmeselect_dailysummaries_lmesource_v4_18.lower_value.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.upper_value.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count.size

-- Display: Warrant Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_bands.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Warrant Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_bands.fields = function(buffer, offset, packet, parent, warrant_bands_index)
  local index = offset

  -- Implicit Warrant Bands Index
  if warrant_bands_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.warrant_bands_index, warrant_bands_index)
    iteration:set_generated()
  end

  -- Lower Value: Int64
  index, lower_value = lme_lmeselect_dailysummaries_lmesource_v4_18.lower_value.dissect(buffer, index, packet, parent)

  -- Upper Value: Int64
  index, upper_value = lme_lmeselect_dailysummaries_lmesource_v4_18.upper_value.dissect(buffer, index, packet, parent)

  -- Participant Count: Uint32
  index, participant_count = lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Warrant Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_bands.dissect = function(buffer, offset, packet, parent, warrant_bands_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.warrant_bands, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_bands.fields(buffer, offset, packet, parent, warrant_bands_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_bands.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_bands.fields(buffer, offset, packet, parent, warrant_bands_index)
  end
end

-- Warrant Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_message = {}

-- Calculate size of: Warrant Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_type.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.unreported_warrants.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.band_count.size

  -- Calculate field size from count
  local warrant_bands_count = buffer(offset + index - 4, 4):le_uint()
  index = index + warrant_bands_count * 20

  return index
end

-- Display: Warrant Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Warrant Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Date: Uint32
  index, business_date = lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.dissect(buffer, index, packet, parent)

  -- Warrant Band Type: String
  index, warrant_band_type = lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_type.dissect(buffer, index, packet, parent)

  -- Product Code: String
  index, product_code = lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Unreported Warrants: Int64
  index, unreported_warrants = lme_lmeselect_dailysummaries_lmesource_v4_18.unreported_warrants.dissect(buffer, index, packet, parent)

  -- Band Count: Uint32
  index, band_count = lme_lmeselect_dailysummaries_lmesource_v4_18.band_count.dissect(buffer, index, packet, parent)

  -- Repeating: Warrant Bands
  for warrant_bands_index = 1, band_count do
    index, warrant_bands = lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_bands.dissect(buffer, index, packet, parent, warrant_bands_index)
  end

  return index
end

-- Dissect: Warrant Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.warrant_band_message, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Prompt Dates
lme_lmeselect_dailysummaries_lmesource_v4_18.short_prompt_dates = {}

-- Size: Short Prompt Dates
lme_lmeselect_dailysummaries_lmesource_v4_18.short_prompt_dates.size =
  lme_lmeselect_dailysummaries_lmesource_v4_18.prompt_date_label.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.expiry_date.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count.size

-- Display: Short Prompt Dates
lme_lmeselect_dailysummaries_lmesource_v4_18.short_prompt_dates.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Prompt Dates
lme_lmeselect_dailysummaries_lmesource_v4_18.short_prompt_dates.fields = function(buffer, offset, packet, parent, short_prompt_dates_index)
  local index = offset

  -- Implicit Short Prompt Dates Index
  if short_prompt_dates_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_prompt_dates_index, short_prompt_dates_index)
    iteration:set_generated()
  end

  -- Prompt Date Label: String
  index, prompt_date_label = lme_lmeselect_dailysummaries_lmesource_v4_18.prompt_date_label.dissect(buffer, index, packet, parent)

  -- Expiry Date: Uint32
  index, expiry_date = lme_lmeselect_dailysummaries_lmesource_v4_18.expiry_date.dissect(buffer, index, packet, parent)

  -- Participant Count: Uint32
  index, participant_count = lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Prompt Dates
lme_lmeselect_dailysummaries_lmesource_v4_18.short_prompt_dates.dissect = function(buffer, offset, packet, parent, short_prompt_dates_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_prompt_dates, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.short_prompt_dates.fields(buffer, offset, packet, parent, short_prompt_dates_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.short_prompt_dates.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.short_prompt_dates.fields(buffer, offset, packet, parent, short_prompt_dates_index)
  end
end

-- Short Position Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_bands = {}

-- Calculate size of: Short Position Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_bands.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_lower_value.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_upper_value.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_prompt_date_count.size

  -- Calculate field size from count
  local short_prompt_dates_count = buffer(offset + index - 4, 4):le_uint()
  index = index + short_prompt_dates_count * 14

  return index
end

-- Display: Short Position Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_bands.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Position Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_bands.fields = function(buffer, offset, packet, parent, short_position_bands_index)
  local index = offset

  -- Implicit Short Position Bands Index
  if short_position_bands_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_bands_index, short_position_bands_index)
    iteration:set_generated()
  end

  -- Short Position Lower Value: Int64
  index, short_position_lower_value = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_lower_value.dissect(buffer, index, packet, parent)

  -- Short Position Upper Value: Int64
  index, short_position_upper_value = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_upper_value.dissect(buffer, index, packet, parent)

  -- Short Position Prompt Date Count: Uint32
  index, short_position_prompt_date_count = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_prompt_date_count.dissect(buffer, index, packet, parent)

  -- Repeating: Short Prompt Dates
  for short_prompt_dates_index = 1, short_position_prompt_date_count do
    index, short_prompt_dates = lme_lmeselect_dailysummaries_lmesource_v4_18.short_prompt_dates.dissect(buffer, index, packet, parent, short_prompt_dates_index)
  end

  return index
end

-- Dissect: Short Position Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_bands.dissect = function(buffer, offset, packet, parent, short_position_bands_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.short_position_bands, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_bands.fields(buffer, offset, packet, parent, short_position_bands_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_bands.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_bands.fields(buffer, offset, packet, parent, short_position_bands_index)
  end
end

-- Long Prompt Dates
lme_lmeselect_dailysummaries_lmesource_v4_18.long_prompt_dates = {}

-- Size: Long Prompt Dates
lme_lmeselect_dailysummaries_lmesource_v4_18.long_prompt_dates.size =
  lme_lmeselect_dailysummaries_lmesource_v4_18.prompt_date_label.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.expiry_date.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count.size

-- Display: Long Prompt Dates
lme_lmeselect_dailysummaries_lmesource_v4_18.long_prompt_dates.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Prompt Dates
lme_lmeselect_dailysummaries_lmesource_v4_18.long_prompt_dates.fields = function(buffer, offset, packet, parent, long_prompt_dates_index)
  local index = offset

  -- Implicit Long Prompt Dates Index
  if long_prompt_dates_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_prompt_dates_index, long_prompt_dates_index)
    iteration:set_generated()
  end

  -- Prompt Date Label: String
  index, prompt_date_label = lme_lmeselect_dailysummaries_lmesource_v4_18.prompt_date_label.dissect(buffer, index, packet, parent)

  -- Expiry Date: Uint32
  index, expiry_date = lme_lmeselect_dailysummaries_lmesource_v4_18.expiry_date.dissect(buffer, index, packet, parent)

  -- Participant Count: Uint32
  index, participant_count = lme_lmeselect_dailysummaries_lmesource_v4_18.participant_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Prompt Dates
lme_lmeselect_dailysummaries_lmesource_v4_18.long_prompt_dates.dissect = function(buffer, offset, packet, parent, long_prompt_dates_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_prompt_dates, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.long_prompt_dates.fields(buffer, offset, packet, parent, long_prompt_dates_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.long_prompt_dates.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.long_prompt_dates.fields(buffer, offset, packet, parent, long_prompt_dates_index)
  end
end

-- Long Position Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_bands = {}

-- Calculate size of: Long Position Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_bands.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_lower_value.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_upper_value.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_prompt_date_count.size

  -- Calculate field size from count
  local long_prompt_dates_count = buffer(offset + index - 4, 4):le_uint()
  index = index + long_prompt_dates_count * 14

  return index
end

-- Display: Long Position Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_bands.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Position Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_bands.fields = function(buffer, offset, packet, parent, long_position_bands_index)
  local index = offset

  -- Implicit Long Position Bands Index
  if long_position_bands_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_bands_index, long_position_bands_index)
    iteration:set_generated()
  end

  -- Long Position Lower Value: Int64
  index, long_position_lower_value = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_lower_value.dissect(buffer, index, packet, parent)

  -- Long Position Upper Value: Int64
  index, long_position_upper_value = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_upper_value.dissect(buffer, index, packet, parent)

  -- Long Position Prompt Date Count: Uint32
  index, long_position_prompt_date_count = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_prompt_date_count.dissect(buffer, index, packet, parent)

  -- Repeating: Long Prompt Dates
  for long_prompt_dates_index = 1, long_position_prompt_date_count do
    index, long_prompt_dates = lme_lmeselect_dailysummaries_lmesource_v4_18.long_prompt_dates.dissect(buffer, index, packet, parent, long_prompt_dates_index)
  end

  return index
end

-- Dissect: Long Position Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_bands.dissect = function(buffer, offset, packet, parent, long_position_bands_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.long_position_bands, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_bands.fields(buffer, offset, packet, parent, long_position_bands_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_bands.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_bands.fields(buffer, offset, packet, parent, long_position_bands_index)
  end
end

-- Position Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.position_band_message = {}

-- Calculate size of: Position Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.position_band_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_band_count.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_band_count.size

  -- Calculate field size from count
  local long_position_bands_count = buffer(offset + index - 8, 4):le_uint()
  for i = 1, long_position_bands_count do
    index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_bands.size(buffer, offset + index)
  end
  -- Calculate field size from count
  local short_position_bands_count = buffer(offset + 10, 4):le_uint()
  for i = 1, short_position_bands_count do
    index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_bands.size(buffer, offset + index)
  end
  return index
end

-- Display: Position Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.position_band_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Position Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.position_band_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Date: Uint32
  index, business_date = lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.dissect(buffer, index, packet, parent)

  -- Product Code: String
  index, product_code = lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Long Position Band Count: Uint32
  index, long_position_band_count = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_band_count.dissect(buffer, index, packet, parent)

  -- Short Position Band Count: Uint32
  index, short_position_band_count = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_band_count.dissect(buffer, index, packet, parent)

  -- Repeating: Long Position Bands
  for long_position_bands_index = 1, long_position_band_count do
    index, long_position_bands = lme_lmeselect_dailysummaries_lmesource_v4_18.long_position_bands.dissect(buffer, index, packet, parent, long_position_bands_index)
  end

  -- Repeating: Short Position Bands
  for short_position_bands_index = 1, short_position_band_count do
    index, short_position_bands = lme_lmeselect_dailysummaries_lmesource_v4_18.short_position_bands.dissect(buffer, index, packet, parent, short_position_bands_index)
  end

  return index
end

-- Dissect: Position Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.position_band_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.position_band_message, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.position_band_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.position_band_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.position_band_message.fields(buffer, offset, packet, parent)
  end
end

-- Date Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.date_bands = {}

-- Size: Date Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.date_bands.size =
  lme_lmeselect_dailysummaries_lmesource_v4_18.from_date.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.to_date.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.volume.size

-- Display: Date Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.date_bands.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Date Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.date_bands.fields = function(buffer, offset, packet, parent, date_bands_index)
  local index = offset

  -- Implicit Date Bands Index
  if date_bands_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.date_bands_index, date_bands_index)
    iteration:set_generated()
  end

  -- From Date: Uint32
  index, from_date = lme_lmeselect_dailysummaries_lmesource_v4_18.from_date.dissect(buffer, index, packet, parent)

  -- To Date: Uint32
  index, to_date = lme_lmeselect_dailysummaries_lmesource_v4_18.to_date.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_dailysummaries_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Date Bands
lme_lmeselect_dailysummaries_lmesource_v4_18.date_bands.dissect = function(buffer, offset, packet, parent, date_bands_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.date_bands, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.date_bands.fields(buffer, offset, packet, parent, date_bands_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.date_bands.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.date_bands.fields(buffer, offset, packet, parent, date_bands_index)
  end
end

-- Open Interest Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_band_message = {}

-- Calculate size of: Open Interest Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_band_message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.currency_code.size

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.date_band_count.size

  -- Calculate field size from count
  local date_bands_count = buffer(offset + index - 4, 4):le_uint()
  index = index + date_bands_count * 12

  return index
end

-- Display: Open Interest Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_band_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_band_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Date: Uint32
  index, business_date = lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.dissect(buffer, index, packet, parent)

  -- Product Code: String
  index, product_code = lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Contract Type: String
  index, contract_type = lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = lme_lmeselect_dailysummaries_lmesource_v4_18.currency_code.dissect(buffer, index, packet, parent)

  -- Date Band Count: Uint32
  index, date_band_count = lme_lmeselect_dailysummaries_lmesource_v4_18.date_band_count.dissect(buffer, index, packet, parent)

  -- Repeating: Date Bands
  for date_bands_index = 1, date_band_count do
    index, date_bands = lme_lmeselect_dailysummaries_lmesource_v4_18.date_bands.dissect(buffer, index, packet, parent, date_bands_index)
  end

  return index
end

-- Dissect: Open Interest Band Message
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_band_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.open_interest_band_message, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_band_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_band_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_band_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Message
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_message = {}

-- Size: Open Interest Message
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_message.size =
  lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_type.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.instrument_id.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.volume.size

-- Display: Open Interest Message
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Date: Uint32
  index, business_date = lme_lmeselect_dailysummaries_lmesource_v4_18.business_date.dissect(buffer, index, packet, parent)

  -- Open Interest Type: String
  index, open_interest_type = lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_type.dissect(buffer, index, packet, parent)

  -- Instrument Id: Uint64
  index, instrument_id = lme_lmeselect_dailysummaries_lmesource_v4_18.instrument_id.dissect(buffer, index, packet, parent)

  -- Product Code: String
  index, product_code = lme_lmeselect_dailysummaries_lmesource_v4_18.product_code.dissect(buffer, index, packet, parent)

  -- Contract Code: String
  index, contract_code = lme_lmeselect_dailysummaries_lmesource_v4_18.contract_code.dissect(buffer, index, packet, parent)

  -- Contract Type: String
  index, contract_type = lme_lmeselect_dailysummaries_lmesource_v4_18.contract_type.dissect(buffer, index, packet, parent)

  -- Volume: Uint32
  index, volume = lme_lmeselect_dailysummaries_lmesource_v4_18.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.open_interest_message, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
lme_lmeselect_dailysummaries_lmesource_v4_18.sequence_reset_message = {}

-- Size: Sequence Reset Message
lme_lmeselect_dailysummaries_lmesource_v4_18.sequence_reset_message.size =
  lme_lmeselect_dailysummaries_lmesource_v4_18.new_seq_no.size

-- Display: Sequence Reset Message
lme_lmeselect_dailysummaries_lmesource_v4_18.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
lme_lmeselect_dailysummaries_lmesource_v4_18.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = lme_lmeselect_dailysummaries_lmesource_v4_18.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
lme_lmeselect_dailysummaries_lmesource_v4_18.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.sequence_reset_message, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lme_lmeselect_dailysummaries_lmesource_v4_18.payload = {}

-- Dissect: Payload
lme_lmeselect_dailysummaries_lmesource_v4_18.payload.dispatch = {
  [100] = lme_lmeselect_dailysummaries_lmesource_v4_18.sequence_reset_message.dissect,
  [420] = lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_message.dissect,
  [421] = lme_lmeselect_dailysummaries_lmesource_v4_18.open_interest_band_message.dissect,
  [422] = lme_lmeselect_dailysummaries_lmesource_v4_18.position_band_message.dissect,
  [423] = lme_lmeselect_dailysummaries_lmesource_v4_18.warrant_band_message.dissect,
  [424] = lme_lmeselect_dailysummaries_lmesource_v4_18.trading_volume_message.dissect,
}

lme_lmeselect_dailysummaries_lmesource_v4_18.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = lme_lmeselect_dailysummaries_lmesource_v4_18.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lme_lmeselect_dailysummaries_lmesource_v4_18.message_header = {}

-- Size: Message Header
lme_lmeselect_dailysummaries_lmesource_v4_18.message_header.size =
  lme_lmeselect_dailysummaries_lmesource_v4_18.msg_size.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.msg_type.size

-- Display: Message Header
lme_lmeselect_dailysummaries_lmesource_v4_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lme_lmeselect_dailysummaries_lmesource_v4_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = lme_lmeselect_dailysummaries_lmesource_v4_18.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = lme_lmeselect_dailysummaries_lmesource_v4_18.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lme_lmeselect_dailysummaries_lmesource_v4_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.message_header, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lme_lmeselect_dailysummaries_lmesource_v4_18.message = {}

-- Calculate size of: Message
lme_lmeselect_dailysummaries_lmesource_v4_18.message.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_dailysummaries_lmesource_v4_18.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Message
lme_lmeselect_dailysummaries_lmesource_v4_18.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lme_lmeselect_dailysummaries_lmesource_v4_18.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lme_lmeselect_dailysummaries_lmesource_v4_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 6 branches
  index = lme_lmeselect_dailysummaries_lmesource_v4_18.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
lme_lmeselect_dailysummaries_lmesource_v4_18.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.message, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Packet Header
lme_lmeselect_dailysummaries_lmesource_v4_18.packet_header = {}

-- Size: Packet Header
lme_lmeselect_dailysummaries_lmesource_v4_18.packet_header.size =
  lme_lmeselect_dailysummaries_lmesource_v4_18.pkt_size.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.msg_count.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.filler.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.seq_num.size + 
  lme_lmeselect_dailysummaries_lmesource_v4_18.send_time.size

-- Display: Packet Header
lme_lmeselect_dailysummaries_lmesource_v4_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
lme_lmeselect_dailysummaries_lmesource_v4_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: Uint16
  index, pkt_size = lme_lmeselect_dailysummaries_lmesource_v4_18.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: Uint8
  index, msg_count = lme_lmeselect_dailysummaries_lmesource_v4_18.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = lme_lmeselect_dailysummaries_lmesource_v4_18.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: Uint32
  index, seq_num = lme_lmeselect_dailysummaries_lmesource_v4_18.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Uint64
  index, send_time = lme_lmeselect_dailysummaries_lmesource_v4_18.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
lme_lmeselect_dailysummaries_lmesource_v4_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18.fields.packet_header, buffer(offset, 0))
    local index = lme_lmeselect_dailysummaries_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_dailysummaries_lmesource_v4_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_dailysummaries_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lme_lmeselect_dailysummaries_lmesource_v4_18.packet = {}

-- Verify required size of Udp packet
lme_lmeselect_dailysummaries_lmesource_v4_18.packet.requiredsize = function(buffer)
  return buffer:len() >= lme_lmeselect_dailysummaries_lmesource_v4_18.packet_header.size
end

-- Dissect Packet
lme_lmeselect_dailysummaries_lmesource_v4_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = lme_lmeselect_dailysummaries_lmesource_v4_18.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do
    index, message = lme_lmeselect_dailysummaries_lmesource_v4_18.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lme_lmeselect_dailysummaries_lmesource_v4_18.init()
end

-- Dissector for Lme LmeSelect DailySummaries LmeSource 4.18
function omi_lme_lmeselect_dailysummaries_lmesource_v4_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lme_lmeselect_dailysummaries_lmesource_v4_18.name

  -- Dissect protocol
  local protocol = parent:add(omi_lme_lmeselect_dailysummaries_lmesource_v4_18, buffer(), omi_lme_lmeselect_dailysummaries_lmesource_v4_18.description, "("..buffer:len().." Bytes)")
  return lme_lmeselect_dailysummaries_lmesource_v4_18.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
lme_lmeselect_dailysummaries_lmesource_v4_18.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local msg_type = buffer(18, 2):le_uint()

  -- Sequence Reset Message
  if msg_type == 100 then
    return true
  end

  -- Open Interest Message
  if msg_type == 420 then
    return true
  end

  -- Open Interest Band Message
  if msg_type == 421 then
    return true
  end

  -- Position Band Message
  if msg_type == 422 then
    return true
  end

  -- Warrant Band Message
  if msg_type == 423 then
    return true
  end

  -- Trading Volume Message
  if msg_type == 424 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lme LmeSelect DailySummaries LmeSource 4.18 (Udp)
local function omi_lme_lmeselect_dailysummaries_lmesource_v4_18_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lme_lmeselect_dailysummaries_lmesource_v4_18.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not lme_lmeselect_dailysummaries_lmesource_v4_18.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lme_lmeselect_dailysummaries_lmesource_v4_18
  omi_lme_lmeselect_dailysummaries_lmesource_v4_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lme LmeSelect DailySummaries LmeSource 4.18
omi_lme_lmeselect_dailysummaries_lmesource_v4_18:register_heuristic("udp", omi_lme_lmeselect_dailysummaries_lmesource_v4_18_udp_heuristic)

-- Register Lme LmeSelect DailySummaries LmeSource 4.18 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lme_lmeselect_dailysummaries_lmesource_v4_18)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The London Metal Exchange
--   Version: 4.18
--   Date: Tuesday, August 18, 2026
--   Specification: lmesource-client-interface-specification-v4-18.pdf
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
