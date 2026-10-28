-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex HkexSecurities IndexRetrans Omd 1.45 Protocol
local omi_hkex_hkexsecurities_indexretrans_omd_v1_45 = Proto("Omi.Hkex.HkexSecurities.IndexRetrans.Omd.v1.45", "Hkex HkexSecurities IndexRetrans Omd 1.45")

-- Protocol table
local hkex_hkexsecurities_indexretrans_omd_v1_45 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex HkexSecurities IndexRetrans Omd 1.45 Fields
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "hkex.hkexsecurities.indexretrans.omd.v1.45.beginseqnum", ftypes.UINT32, nil, nil, nil, "Beginning of sequence.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.channel_id = ProtoField.new("Channel Id", "hkex.hkexsecurities.indexretrans.omd.v1.45.channelid", ftypes.UINT16, nil, nil, nil, "Multicast Channel ID with which the retransmission relates.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.closing_value = ProtoField.new("Closing Value", "hkex.hkexsecurities.indexretrans.omd.v1.45.closingvalue", ftypes.DOUBLE, nil, nil, nil, "Last value for an index. 4 implied decimal places.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.currency_code = ProtoField.new("Currency Code", "hkex.hkexsecurities.indexretrans.omd.v1.45.currencycode", ftypes.STRING, nil, nil, nil, "Currency code of Index Turnover. Can be blank if not defined by third party index compilers.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.dr_status = ProtoField.new("Dr Status", "hkex.hkexsecurities.indexretrans.omd.v1.45.drstatus", ftypes.UINT32, nil, nil, nil, "Status during site failover.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.eas_value = ProtoField.new("Eas Value", "hkex.hkexsecurities.indexretrans.omd.v1.45.easvalue", ftypes.DOUBLE, nil, nil, nil, "Estimated Average Settlement Value. 2 implied decimal places.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.end_seq_num = ProtoField.new("End Seq Num", "hkex.hkexsecurities.indexretrans.omd.v1.45.endseqnum", ftypes.UINT32, nil, nil, nil, "Message sequence number of last message in range to be resent.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.exception = ProtoField.new("Exception", "hkex.hkexsecurities.indexretrans.omd.v1.45.exception", ftypes.STRING, nil, nil, nil, "Exception indicator.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.filler = ProtoField.new("Filler", "hkex.hkexsecurities.indexretrans.omd.v1.45.filler", ftypes.BYTES, nil, nil, nil, "Reserved filler byte (OMD does not use payload compression)")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.filler_1 = ProtoField.new("Filler 1", "hkex.hkexsecurities.indexretrans.omd.v1.45.filler1", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.filler_2 = ProtoField.new("Filler 2", "hkex.hkexsecurities.indexretrans.omd.v1.45.filler2", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.filler_3 = ProtoField.new("Filler 3", "hkex.hkexsecurities.indexretrans.omd.v1.45.filler3", ftypes.BYTES, nil, nil, nil, "Padding.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.high_value = ProtoField.new("High Value", "hkex.hkexsecurities.indexretrans.omd.v1.45.highvalue", ftypes.DOUBLE, nil, nil, nil, "Highest value for an index. 4 implied decimal places.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_code = ProtoField.new("Index Code", "hkex.hkexsecurities.indexretrans.omd.v1.45.indexcode", ftypes.STRING, nil, nil, nil, "Upstream source's index code or market information identifier.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_source = ProtoField.new("Index Source", "hkex.hkexsecurities.indexretrans.omd.v1.45.indexsource", ftypes.STRING, nil, nil, nil, "Index or market information source.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_status = ProtoField.new("Index Status", "hkex.hkexsecurities.indexretrans.omd.v1.45.indexstatus", ftypes.STRING, nil, nil, nil, "Index status. Can be blank if not defined by third party index compilers.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_time = ProtoField.new("Index Time", "hkex.hkexsecurities.indexretrans.omd.v1.45.indextime", ftypes.INT64, nil, nil, nil, "Publisher timestamp. Nanoseconds since Unix epoch UTC, precision to the nearest second.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_turnover = ProtoField.new("Index Turnover", "hkex.hkexsecurities.indexretrans.omd.v1.45.indexturnover", ftypes.DOUBLE, nil, nil, nil, "Current turnover of underlying constituents. 4 implied decimal places.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_value = ProtoField.new("Index Value", "hkex.hkexsecurities.indexretrans.omd.v1.45.indexvalue", ftypes.DOUBLE, nil, nil, nil, "Current value of the index. 4 implied decimal places.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_volume = ProtoField.new("Index Volume", "hkex.hkexsecurities.indexretrans.omd.v1.45.indexvolume", ftypes.INT64, nil, nil, nil, "Index volume of underlying constituents. Only applicable for CSI and CES.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.last_seq_num = ProtoField.new("Last Seq Num", "hkex.hkexsecurities.indexretrans.omd.v1.45.lastseqnum", ftypes.UINT32, nil, nil, nil, "Sequence number with which the refresh is synchronized.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.low_value = ProtoField.new("Low Value", "hkex.hkexsecurities.indexretrans.omd.v1.45.lowvalue", ftypes.DOUBLE, nil, nil, nil, "Lowest value for an index. 4 implied decimal places.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.msg_count = ProtoField.new("Msg Count", "hkex.hkexsecurities.indexretrans.omd.v1.45.msgcount", ftypes.UINT8, nil, nil, nil, "Number of messages included in the packet")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.msg_size = ProtoField.new("Msg Size", "hkex.hkexsecurities.indexretrans.omd.v1.45.msgsize", ftypes.UINT16, nil, nil, nil, "Length of the message including this field")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.msg_type = ProtoField.new("Msg Type", "hkex.hkexsecurities.indexretrans.omd.v1.45.msgtype", ftypes.UINT16, nil, nil, nil, "Code identifying this message type")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.net_chg_prev_day = ProtoField.new("Net Chg Prev Day", "hkex.hkexsecurities.indexretrans.omd.v1.45.netchgprevday", ftypes.DOUBLE, nil, nil, nil, "Net change of IndexValue from the previous close, as provided in index source. 4 implied decimal places.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.net_chg_prev_day_pct = ProtoField.new("Net Chg Prev Day Pct", "hkex.hkexsecurities.indexretrans.omd.v1.45.netchgprevdaypct", ftypes.DOUBLE, nil, nil, nil, "Percentage change of IndexValue from the previous close. 4 implied decimal places.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.new_seq_no = ProtoField.new("New Seq No", "hkex.hkexsecurities.indexretrans.omd.v1.45.newseqno", ftypes.UINT32, nil, nil, nil, "New sequence number. Always set to 1.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.opening_value = ProtoField.new("Opening Value", "hkex.hkexsecurities.indexretrans.omd.v1.45.openingvalue", ftypes.DOUBLE, nil, nil, nil, "First value for an index. 4 implied decimal places.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.pkt_size = ProtoField.new("Pkt Size", "hkex.hkexsecurities.indexretrans.omd.v1.45.pktsize", ftypes.UINT16, nil, nil, nil, "Size of the packet including this field")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.previous_ses_close = ProtoField.new("Previous Ses Close", "hkex.hkexsecurities.indexretrans.omd.v1.45.previoussesclose", ftypes.DOUBLE, nil, nil, nil, "Previous session closing value (previous day for CSI, CES, S&P; previous session for HSI and TR). 4 implied decimal places.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.retrans_status = ProtoField.new("Retrans Status", "hkex.hkexsecurities.indexretrans.omd.v1.45.retransstatus", ftypes.UINT8, nil, nil, nil, "Status of the Retransmission response.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.send_time = ProtoField.new("Send Time", "hkex.hkexsecurities.indexretrans.omd.v1.45.sendtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Send time field — set to 0 on Tcp retrans per §3.5")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.send_time_utc = ProtoField.new("Send Time", "hkex.hkexsecurities.indexretrans.omd.v1.45.sendtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Send time field — set to 0 on Tcp retrans per §3.5")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.seq_num = ProtoField.new("Seq Num", "hkex.hkexsecurities.indexretrans.omd.v1.45.seqnum", ftypes.UINT32, nil, nil, nil, "Sequence number field — set to 0 on Tcp retrans per §3.5")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.session_status = ProtoField.new("Session Status", "hkex.hkexsecurities.indexretrans.omd.v1.45.sessionstatus", ftypes.UINT8, nil, nil, nil, "Status of the session.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.username = ProtoField.new("Username", "hkex.hkexsecurities.indexretrans.omd.v1.45.username", ftypes.STRING, nil, nil, nil, "Username to log on, padded with binary null characters.")

-- Hkex HkexSecurities IndexRetrans Omd 1.45 Framing
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.message = ProtoField.new("Message", "hkex.hkexsecurities.indexretrans.omd.v1.45.message", ftypes.STRING)
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.msg_header = ProtoField.new("Msg Header", "hkex.hkexsecurities.indexretrans.omd.v1.45.msgheader", ftypes.STRING, nil, nil, nil, "Omd message header")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.packet = ProtoField.new("Packet", "hkex.hkexsecurities.indexretrans.omd.v1.45.packet", ftypes.STRING, nil, nil, nil, "Omd Tcp Packet")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.packet_header = ProtoField.new("Packet Header", "hkex.hkexsecurities.indexretrans.omd.v1.45.packetheader", ftypes.STRING, nil, nil, nil, "Omd packet header (byte-identical to the Udp form; SeqNum and SendTime set to 0 on Tcp per §3.5)")

-- Hkex HkexSecurities IndexRetrans 1.45 Application Messages
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.disaster_recovery_signal_message = ProtoField.new("Disaster Recovery Signal Message", "hkex.hkexsecurities.indexretrans.omd.v1.45.disasterrecoverysignalmessage", ftypes.STRING, nil, nil, nil, "The Disaster Recovery (DR) Signal message is sent on a dedicated multicast channel whenever a site failover scenario is triggered.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_data_message = ProtoField.new("Index Data Message", "hkex.hkexsecurities.indexretrans.omd.v1.45.indexdatamessage", ftypes.STRING, nil, nil, nil, "The Index Data message contains all the real-time data for a given index. Fields may be populated with null values to indicate when an update is not provided.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_definition_message = ProtoField.new("Index Definition Message", "hkex.hkexsecurities.indexretrans.omd.v1.45.indexdefinitionmessage", ftypes.STRING, nil, nil, nil, "The Index Definition message contains the static referential data for the given index and is generated at the start of the business day. May be re-disseminated during trading hours.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.logon_message = ProtoField.new("Logon Message", "hkex.hkexsecurities.indexretrans.omd.v1.45.logonmessage", ftypes.STRING, nil, nil, nil, "The Logon message enables client authentication. Not required for multicast channels; only used for retransmission requests.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.logon_response_message = ProtoField.new("Logon Response Message", "hkex.hkexsecurities.indexretrans.omd.v1.45.logonresponsemessage", ftypes.STRING, nil, nil, nil, "Response to a Logon request indicating session status.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.refresh_complete_message = ProtoField.new("Refresh Complete Message", "hkex.hkexsecurities.indexretrans.omd.v1.45.refreshcompletemessage", ftypes.STRING, nil, nil, nil, "This message is published to mark the end of a refresh.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "hkex.hkexsecurities.indexretrans.omd.v1.45.retransmissionrequestmessage", ftypes.STRING, nil, nil, nil, "Client-initiated request to retransmit a range of messages from a specific multicast channel.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.retransmission_response_message = ProtoField.new("Retransmission Response Message", "hkex.hkexsecurities.indexretrans.omd.v1.45.retransmissionresponsemessage", ftypes.STRING, nil, nil, nil, "Server response to a Retransmission Request indicating whether the range can be resent.")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "hkex.hkexsecurities.indexretrans.omd.v1.45.sequenceresetmessage", ftypes.STRING, nil, nil, nil, "The Sequence Reset message is sent on each multicast channel at start of day. It may also be sent when there is a need for the rectification of stock reference data before market open.")

-- Hkex HkexSecurities IndexRetrans Omd 1.45 Generated Fields
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.message_index = ProtoField.new("Message Index", "hkex.hkexsecurities.indexretrans.omd.v1.45.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Hkex HkexSecurities IndexRetrans Omd 1.45 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
hkex_hkexsecurities_indexretrans_omd_v1_45.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex HkexSecurities IndexRetrans Omd 1.45 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Hkex HkexSecurities IndexRetrans Omd 1.45 Show Options
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_application_messages then
    show.application_messages = omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_application_messages
  end
  if show.headers ~= omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_headers then
    show.headers = omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_headers
  end
  if show.structs ~= omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_structs then
    show.structs = omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_structs
  end
  if show.indexes ~= omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_indexes then
    show.indexes = omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.show_indexes
  end
  if hkex_hkexsecurities_indexretrans_omd_v1_45.absolute_time_base ~= omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.absolute_time_base then
    hkex_hkexsecurities_indexretrans_omd_v1_45.absolute_time_base = omi_hkex_hkexsecurities_indexretrans_omd_v1_45.prefs.absolute_time_base
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
-- Hkex HkexSecurities IndexRetrans Omd 1.45 Fields
-----------------------------------------------------------------------

-- Begin Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.begin_seq_num = {}

-- Size: Begin Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.begin_seq_num.size = 4

-- Display: Begin Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Channel Id
hkex_hkexsecurities_indexretrans_omd_v1_45.channel_id = {}

-- Size: Channel Id
hkex_hkexsecurities_indexretrans_omd_v1_45.channel_id.size = 2

-- Display: Channel Id
hkex_hkexsecurities_indexretrans_omd_v1_45.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
hkex_hkexsecurities_indexretrans_omd_v1_45.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Closing Value
hkex_hkexsecurities_indexretrans_omd_v1_45.closing_value = {}

-- Size: Closing Value
hkex_hkexsecurities_indexretrans_omd_v1_45.closing_value.size = 8

-- Display: Closing Value
hkex_hkexsecurities_indexretrans_omd_v1_45.closing_value.display = function(value)
  return "Closing Value: "..value
end

-- Translate: Closing Value
hkex_hkexsecurities_indexretrans_omd_v1_45.closing_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Closing Value
hkex_hkexsecurities_indexretrans_omd_v1_45.closing_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.closing_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_45.closing_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.closing_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.closing_value, range, value, display)

  return offset + length, value
end

-- Currency Code
hkex_hkexsecurities_indexretrans_omd_v1_45.currency_code = {}

-- Size: Currency Code
hkex_hkexsecurities_indexretrans_omd_v1_45.currency_code.size = 3

-- Display: Currency Code
hkex_hkexsecurities_indexretrans_omd_v1_45.currency_code.display = function(value)
  return "Currency Code: "..value
end

-- Dissect: Currency Code
hkex_hkexsecurities_indexretrans_omd_v1_45.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.currency_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Dr Status
hkex_hkexsecurities_indexretrans_omd_v1_45.dr_status = {}

-- Size: Dr Status
hkex_hkexsecurities_indexretrans_omd_v1_45.dr_status.size = 4

-- Display: Dr Status
hkex_hkexsecurities_indexretrans_omd_v1_45.dr_status.labels = {
  [1] = "Dr Status: Dr In Progress (1)",
  [2] = "Dr Status: Dr Completed (2)",
}

hkex_hkexsecurities_indexretrans_omd_v1_45.dr_status.display = function(value)
  return hkex_hkexsecurities_indexretrans_omd_v1_45.dr_status.labels[value] or "Dr Status: Unknown("..value..")"
end

-- Dissect: Dr Status
hkex_hkexsecurities_indexretrans_omd_v1_45.dr_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.dr_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.dr_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.dr_status, range, value, display)

  return offset + length, value
end

-- Eas Value
hkex_hkexsecurities_indexretrans_omd_v1_45.eas_value = {}

-- Size: Eas Value
hkex_hkexsecurities_indexretrans_omd_v1_45.eas_value.size = 8

-- Display: Eas Value
hkex_hkexsecurities_indexretrans_omd_v1_45.eas_value.display = function(value)
  return "Eas Value: "..value
end

-- Translate: Eas Value
hkex_hkexsecurities_indexretrans_omd_v1_45.eas_value.translate = function(raw)
  return raw:tonumber()/100
end

-- Dissect: Eas Value
hkex_hkexsecurities_indexretrans_omd_v1_45.eas_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.eas_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_45.eas_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.eas_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.eas_value, range, value, display)

  return offset + length, value
end

-- End Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.end_seq_num = {}

-- Size: End Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.end_seq_num.size = 4

-- Display: End Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exception
hkex_hkexsecurities_indexretrans_omd_v1_45.exception = {}

-- Size: Exception
hkex_hkexsecurities_indexretrans_omd_v1_45.exception.size = 1

-- Display: Exception
hkex_hkexsecurities_indexretrans_omd_v1_45.exception.display = function(value)
  if value == "#" then
    return "Exception: Index With Hsil Defined Exceptional Rule Applied (#)"
  end
  if value == " " then
    return "Exception: Normal Index (<whitespace>)"
  end

  return "Exception: Unknown("..value..")"
end

-- Dissect: Exception
hkex_hkexsecurities_indexretrans_omd_v1_45.exception.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.exception.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.exception.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.exception, range, value, display)

  return offset + length, value
end

-- Filler
hkex_hkexsecurities_indexretrans_omd_v1_45.filler = {}

-- Size: Filler
hkex_hkexsecurities_indexretrans_omd_v1_45.filler.size = 1

-- Display: Filler
hkex_hkexsecurities_indexretrans_omd_v1_45.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
hkex_hkexsecurities_indexretrans_omd_v1_45.filler.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.filler.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler 1
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_1 = {}

-- Size: Filler 1
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_1.size = 1

-- Display: Filler 1
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.filler_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 2
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_2 = {}

-- Size: Filler 2
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_2.size = 2

-- Display: Filler 2
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.filler_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 3
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_3 = {}

-- Size: Filler 3
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_3.size = 3

-- Display: Filler 3
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
hkex_hkexsecurities_indexretrans_omd_v1_45.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.filler_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.filler_3, range, value, display)

  return offset + length, value
end

-- High Value
hkex_hkexsecurities_indexretrans_omd_v1_45.high_value = {}

-- Size: High Value
hkex_hkexsecurities_indexretrans_omd_v1_45.high_value.size = 8

-- Display: High Value
hkex_hkexsecurities_indexretrans_omd_v1_45.high_value.display = function(value)
  return "High Value: "..value
end

-- Translate: High Value
hkex_hkexsecurities_indexretrans_omd_v1_45.high_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: High Value
hkex_hkexsecurities_indexretrans_omd_v1_45.high_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.high_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_45.high_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.high_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.high_value, range, value, display)

  return offset + length, value
end

-- Index Code
hkex_hkexsecurities_indexretrans_omd_v1_45.index_code = {}

-- Size: Index Code
hkex_hkexsecurities_indexretrans_omd_v1_45.index_code.size = 11

-- Display: Index Code
hkex_hkexsecurities_indexretrans_omd_v1_45.index_code.display = function(value)
  return "Index Code: "..value
end

-- Dissect: Index Code
hkex_hkexsecurities_indexretrans_omd_v1_45.index_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.index_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.index_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_code, range, value, display)

  return offset + length, value
end

-- Index Source
hkex_hkexsecurities_indexretrans_omd_v1_45.index_source = {}

-- Size: Index Source
hkex_hkexsecurities_indexretrans_omd_v1_45.index_source.size = 1

-- Display: Index Source
hkex_hkexsecurities_indexretrans_omd_v1_45.index_source.labels = {
  ["C"] = "Index Source: Csi And Ces (C)",
  ["H"] = "Index Source: Hsi (H)",
  ["S"] = "Index Source: S And P (S)",
}

hkex_hkexsecurities_indexretrans_omd_v1_45.index_source.display = function(value)
  return hkex_hkexsecurities_indexretrans_omd_v1_45.index_source.labels[value] or "Index Source: Unknown("..value..")"
end

-- Dissect: Index Source
hkex_hkexsecurities_indexretrans_omd_v1_45.index_source.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.index_source.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.index_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_source, range, value, display)

  return offset + length, value
end

-- Index Status
hkex_hkexsecurities_indexretrans_omd_v1_45.index_status = {}

-- Size: Index Status
hkex_hkexsecurities_indexretrans_omd_v1_45.index_status.size = 1

-- Display: Index Status
hkex_hkexsecurities_indexretrans_omd_v1_45.index_status.labels = {
  ["C"] = "Index Status: Closing Value (C)",
  ["I"] = "Index Status: Indicative (I)",
  ["O"] = "Index Status: Opening Index (O)",
  ["P"] = "Index Status: Last Close Value Previous Session (P)",
  ["R"] = "Index Status: Preliminary Close (R)",
  ["S"] = "Index Status: Stop Loss Index (S)",
  ["T"] = "Index Status: Real Time Index Value (T)",
}

hkex_hkexsecurities_indexretrans_omd_v1_45.index_status.display = function(value)
  return hkex_hkexsecurities_indexretrans_omd_v1_45.index_status.labels[value] or "Index Status: Unknown("..value..")"
end

-- Dissect: Index Status
hkex_hkexsecurities_indexretrans_omd_v1_45.index_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.index_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.index_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_status, range, value, display)

  return offset + length, value
end

-- Index Time
hkex_hkexsecurities_indexretrans_omd_v1_45.index_time = {}

-- Size: Index Time
hkex_hkexsecurities_indexretrans_omd_v1_45.index_time.size = 8

-- Display: Index Time
hkex_hkexsecurities_indexretrans_omd_v1_45.index_time.display = function(value)
  return "Index Time: "..value
end

-- Dissect: Index Time
hkex_hkexsecurities_indexretrans_omd_v1_45.index_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.index_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.index_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_time, range, value, display)

  return offset + length, value
end

-- Index Turnover
hkex_hkexsecurities_indexretrans_omd_v1_45.index_turnover = {}

-- Size: Index Turnover
hkex_hkexsecurities_indexretrans_omd_v1_45.index_turnover.size = 8

-- Display: Index Turnover
hkex_hkexsecurities_indexretrans_omd_v1_45.index_turnover.display = function(value)
  return "Index Turnover: "..value
end

-- Translate: Index Turnover
hkex_hkexsecurities_indexretrans_omd_v1_45.index_turnover.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Index Turnover
hkex_hkexsecurities_indexretrans_omd_v1_45.index_turnover.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.index_turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_45.index_turnover.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.index_turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_turnover, range, value, display)

  return offset + length, value
end

-- Index Value
hkex_hkexsecurities_indexretrans_omd_v1_45.index_value = {}

-- Size: Index Value
hkex_hkexsecurities_indexretrans_omd_v1_45.index_value.size = 8

-- Display: Index Value
hkex_hkexsecurities_indexretrans_omd_v1_45.index_value.display = function(value)
  return "Index Value: "..value
end

-- Translate: Index Value
hkex_hkexsecurities_indexretrans_omd_v1_45.index_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Index Value
hkex_hkexsecurities_indexretrans_omd_v1_45.index_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.index_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_45.index_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_value, range, value, display)

  return offset + length, value
end

-- Index Volume
hkex_hkexsecurities_indexretrans_omd_v1_45.index_volume = {}

-- Size: Index Volume
hkex_hkexsecurities_indexretrans_omd_v1_45.index_volume.size = 8

-- Display: Index Volume
hkex_hkexsecurities_indexretrans_omd_v1_45.index_volume.display = function(value)
  return "Index Volume: "..value
end

-- Dissect: Index Volume
hkex_hkexsecurities_indexretrans_omd_v1_45.index_volume.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.index_volume.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.index_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_volume, range, value, display)

  return offset + length, value
end

-- Last Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.last_seq_num = {}

-- Size: Last Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.last_seq_num.size = 4

-- Display: Last Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Low Value
hkex_hkexsecurities_indexretrans_omd_v1_45.low_value = {}

-- Size: Low Value
hkex_hkexsecurities_indexretrans_omd_v1_45.low_value.size = 8

-- Display: Low Value
hkex_hkexsecurities_indexretrans_omd_v1_45.low_value.display = function(value)
  return "Low Value: "..value
end

-- Translate: Low Value
hkex_hkexsecurities_indexretrans_omd_v1_45.low_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Low Value
hkex_hkexsecurities_indexretrans_omd_v1_45.low_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.low_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_45.low_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.low_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.low_value, range, value, display)

  return offset + length, value
end

-- Msg Count
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_count = {}

-- Size: Msg Count
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_count.size = 1

-- Display: Msg Count
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_size = {}

-- Size: Msg Size
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_size.size = 2

-- Display: Msg Size
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_type = {}

-- Size: Msg Type
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_type.size = 2

-- Display: Msg Type
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_type.labels = {
  [100] = "Msg Type: Sequence Reset Message (100)",
  [105] = "Msg Type: Disaster Recovery Signal Message (105)",
  [70] = "Msg Type: Index Definition Message (70)",
  [71] = "Msg Type: Index Data Message (71)",
  [203] = "Msg Type: Refresh Complete Message (203)",
  [101] = "Msg Type: Logon Message (101)",
  [102] = "Msg Type: Logon Response Message (102)",
  [201] = "Msg Type: Retransmission Request Message (201)",
  [202] = "Msg Type: Retransmission Response Message (202)",
}

hkex_hkexsecurities_indexretrans_omd_v1_45.msg_type.display = function(value)
  return hkex_hkexsecurities_indexretrans_omd_v1_45.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Net Chg Prev Day
hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day = {}

-- Size: Net Chg Prev Day
hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day.size = 8

-- Display: Net Chg Prev Day
hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day.display = function(value)
  return "Net Chg Prev Day: "..value
end

-- Translate: Net Chg Prev Day
hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Net Chg Prev Day
hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.net_chg_prev_day, range, value, display)

  return offset + length, value
end

-- Net Chg Prev Day Pct
hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day_pct = {}

-- Size: Net Chg Prev Day Pct
hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day_pct.size = 4

-- Display: Net Chg Prev Day Pct
hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day_pct.display = function(value)
  return "Net Chg Prev Day Pct: "..value
end

-- Translate: Net Chg Prev Day Pct
hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day_pct.translate = function(raw)
  return raw/10000
end

-- Dissect: Net Chg Prev Day Pct
hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day_pct.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day_pct.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day_pct.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day_pct.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.net_chg_prev_day_pct, range, value, display)

  return offset + length, value
end

-- New Seq No
hkex_hkexsecurities_indexretrans_omd_v1_45.new_seq_no = {}

-- Size: New Seq No
hkex_hkexsecurities_indexretrans_omd_v1_45.new_seq_no.size = 4

-- Display: New Seq No
hkex_hkexsecurities_indexretrans_omd_v1_45.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
hkex_hkexsecurities_indexretrans_omd_v1_45.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Opening Value
hkex_hkexsecurities_indexretrans_omd_v1_45.opening_value = {}

-- Size: Opening Value
hkex_hkexsecurities_indexretrans_omd_v1_45.opening_value.size = 8

-- Display: Opening Value
hkex_hkexsecurities_indexretrans_omd_v1_45.opening_value.display = function(value)
  return "Opening Value: "..value
end

-- Translate: Opening Value
hkex_hkexsecurities_indexretrans_omd_v1_45.opening_value.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Opening Value
hkex_hkexsecurities_indexretrans_omd_v1_45.opening_value.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.opening_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_45.opening_value.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.opening_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.opening_value, range, value, display)

  return offset + length, value
end

-- Pkt Size
hkex_hkexsecurities_indexretrans_omd_v1_45.pkt_size = {}

-- Size: Pkt Size
hkex_hkexsecurities_indexretrans_omd_v1_45.pkt_size.size = 2

-- Display: Pkt Size
hkex_hkexsecurities_indexretrans_omd_v1_45.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
hkex_hkexsecurities_indexretrans_omd_v1_45.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Previous Ses Close
hkex_hkexsecurities_indexretrans_omd_v1_45.previous_ses_close = {}

-- Size: Previous Ses Close
hkex_hkexsecurities_indexretrans_omd_v1_45.previous_ses_close.size = 8

-- Display: Previous Ses Close
hkex_hkexsecurities_indexretrans_omd_v1_45.previous_ses_close.display = function(value)
  return "Previous Ses Close: "..value
end

-- Translate: Previous Ses Close
hkex_hkexsecurities_indexretrans_omd_v1_45.previous_ses_close.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Previous Ses Close
hkex_hkexsecurities_indexretrans_omd_v1_45.previous_ses_close.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.previous_ses_close.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_hkexsecurities_indexretrans_omd_v1_45.previous_ses_close.translate(raw)
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.previous_ses_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.previous_ses_close, range, value, display)

  return offset + length, value
end

-- Retrans Status
hkex_hkexsecurities_indexretrans_omd_v1_45.retrans_status = {}

-- Size: Retrans Status
hkex_hkexsecurities_indexretrans_omd_v1_45.retrans_status.size = 1

-- Display: Retrans Status
hkex_hkexsecurities_indexretrans_omd_v1_45.retrans_status.labels = {
  [0] = "Retrans Status: Request Accepted (0)",
  [1] = "Retrans Status: Unknown Or Unauthorized Channel Id (1)",
  [2] = "Retrans Status: Messages Not Available (2)",
  [100] = "Retrans Status: Exceeds Maximum Sequence Range (100)",
  [101] = "Retrans Status: Exceeds Maximum Requests In A Day (101)",
}

hkex_hkexsecurities_indexretrans_omd_v1_45.retrans_status.display = function(value)
  return hkex_hkexsecurities_indexretrans_omd_v1_45.retrans_status.labels[value] or "Retrans Status: Unknown("..value..")"
end

-- Dissect: Retrans Status
hkex_hkexsecurities_indexretrans_omd_v1_45.retrans_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.retrans_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.retrans_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.retrans_status, range, value, display)

  return offset + length, value
end

-- Send Time
hkex_hkexsecurities_indexretrans_omd_v1_45.send_time = {}

-- Size: Send Time
hkex_hkexsecurities_indexretrans_omd_v1_45.send_time.size = 8

-- Dissect: Send Time
hkex_hkexsecurities_indexretrans_omd_v1_45.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.send_time
  if hkex_hkexsecurities_indexretrans_omd_v1_45.absolute_time_base == 1 then field = omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.send_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.seq_num = {}

-- Size: Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.seq_num.size = 4

-- Display: Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_hkexsecurities_indexretrans_omd_v1_45.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session Status
hkex_hkexsecurities_indexretrans_omd_v1_45.session_status = {}

-- Size: Session Status
hkex_hkexsecurities_indexretrans_omd_v1_45.session_status.size = 1

-- Display: Session Status
hkex_hkexsecurities_indexretrans_omd_v1_45.session_status.labels = {
  [0] = "Session Status: Session Active (0)",
  [5] = "Session Status: Invalid Username Or Ip Address (5)",
  [100] = "Session Status: User Already Connected (100)",
}

hkex_hkexsecurities_indexretrans_omd_v1_45.session_status.display = function(value)
  return hkex_hkexsecurities_indexretrans_omd_v1_45.session_status.labels[value] or "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
hkex_hkexsecurities_indexretrans_omd_v1_45.session_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.session_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.session_status, range, value, display)

  return offset + length, value
end

-- Username
hkex_hkexsecurities_indexretrans_omd_v1_45.username = {}

-- Size: Username
hkex_hkexsecurities_indexretrans_omd_v1_45.username.size = 12

-- Display: Username
hkex_hkexsecurities_indexretrans_omd_v1_45.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
hkex_hkexsecurities_indexretrans_omd_v1_45.username.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_indexretrans_omd_v1_45.username.size
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

  local display = hkex_hkexsecurities_indexretrans_omd_v1_45.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Hkex HkexSecurities IndexRetrans Omd 1.45
-----------------------------------------------------------------------

-- Retransmission Response Message
hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_response_message = {}

-- Size: Retransmission Response Message
hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_response_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_45.channel_id.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.retrans_status.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.filler_1.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.begin_seq_num.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.end_seq_num.size

-- Display: Retransmission Response Message
hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Response Message
hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = hkex_hkexsecurities_indexretrans_omd_v1_45.channel_id.dissect(buffer, index, packet, parent)

  -- Retrans Status: Uint8
  index, retrans_status = hkex_hkexsecurities_indexretrans_omd_v1_45.retrans_status.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_indexretrans_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = hkex_hkexsecurities_indexretrans_omd_v1_45.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = hkex_hkexsecurities_indexretrans_omd_v1_45.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Response Message
hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.retransmission_response_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_request_message = {}

-- Size: Retransmission Request Message
hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_request_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_45.channel_id.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.filler_2.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.begin_seq_num.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.end_seq_num.size

-- Display: Retransmission Request Message
hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: Uint16
  index, channel_id = hkex_hkexsecurities_indexretrans_omd_v1_45.channel_id.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_hkexsecurities_indexretrans_omd_v1_45.filler_2.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Uint32
  index, begin_seq_num = hkex_hkexsecurities_indexretrans_omd_v1_45.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Uint32
  index, end_seq_num = hkex_hkexsecurities_indexretrans_omd_v1_45.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.retransmission_request_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Response Message
hkex_hkexsecurities_indexretrans_omd_v1_45.logon_response_message = {}

-- Size: Logon Response Message
hkex_hkexsecurities_indexretrans_omd_v1_45.logon_response_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_45.session_status.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.filler_3.size

-- Display: Logon Response Message
hkex_hkexsecurities_indexretrans_omd_v1_45.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
hkex_hkexsecurities_indexretrans_omd_v1_45.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Status: Uint8
  index, session_status = hkex_hkexsecurities_indexretrans_omd_v1_45.session_status.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexsecurities_indexretrans_omd_v1_45.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
hkex_hkexsecurities_indexretrans_omd_v1_45.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.logon_response_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_45.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_45.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
hkex_hkexsecurities_indexretrans_omd_v1_45.logon_message = {}

-- Size: Logon Message
hkex_hkexsecurities_indexretrans_omd_v1_45.logon_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_45.username.size

-- Display: Logon Message
hkex_hkexsecurities_indexretrans_omd_v1_45.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
hkex_hkexsecurities_indexretrans_omd_v1_45.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: String
  index, username = hkex_hkexsecurities_indexretrans_omd_v1_45.username.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
hkex_hkexsecurities_indexretrans_omd_v1_45.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.logon_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_45.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_45.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Complete Message
hkex_hkexsecurities_indexretrans_omd_v1_45.refresh_complete_message = {}

-- Size: Refresh Complete Message
hkex_hkexsecurities_indexretrans_omd_v1_45.refresh_complete_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_45.last_seq_num.size

-- Display: Refresh Complete Message
hkex_hkexsecurities_indexretrans_omd_v1_45.refresh_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complete Message
hkex_hkexsecurities_indexretrans_omd_v1_45.refresh_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Uint32
  index, last_seq_num = hkex_hkexsecurities_indexretrans_omd_v1_45.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complete Message
hkex_hkexsecurities_indexretrans_omd_v1_45.refresh_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.refresh_complete_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_45.refresh_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.refresh_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_45.refresh_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Data Message
hkex_hkexsecurities_indexretrans_omd_v1_45.index_data_message = {}

-- Size: Index Data Message
hkex_hkexsecurities_indexretrans_omd_v1_45.index_data_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_45.index_code.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.index_status.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.index_time.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.index_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.high_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.low_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.eas_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.index_turnover.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.opening_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.closing_value.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.previous_ses_close.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.index_volume.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day_pct.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.exception.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.filler_3.size

-- Display: Index Data Message
hkex_hkexsecurities_indexretrans_omd_v1_45.index_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Data Message
hkex_hkexsecurities_indexretrans_omd_v1_45.index_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Code: String
  index, index_code = hkex_hkexsecurities_indexretrans_omd_v1_45.index_code.dissect(buffer, index, packet, parent)

  -- Index Status: String
  index, index_status = hkex_hkexsecurities_indexretrans_omd_v1_45.index_status.dissect(buffer, index, packet, parent)

  -- Index Time: Int64
  index, index_time = hkex_hkexsecurities_indexretrans_omd_v1_45.index_time.dissect(buffer, index, packet, parent)

  -- Index Value: Int64
  index, index_value = hkex_hkexsecurities_indexretrans_omd_v1_45.index_value.dissect(buffer, index, packet, parent)

  -- Net Chg Prev Day: Int64
  index, net_chg_prev_day = hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day.dissect(buffer, index, packet, parent)

  -- High Value: Int64
  index, high_value = hkex_hkexsecurities_indexretrans_omd_v1_45.high_value.dissect(buffer, index, packet, parent)

  -- Low Value: Int64
  index, low_value = hkex_hkexsecurities_indexretrans_omd_v1_45.low_value.dissect(buffer, index, packet, parent)

  -- Eas Value: Int64
  index, eas_value = hkex_hkexsecurities_indexretrans_omd_v1_45.eas_value.dissect(buffer, index, packet, parent)

  -- Index Turnover: Int64
  index, index_turnover = hkex_hkexsecurities_indexretrans_omd_v1_45.index_turnover.dissect(buffer, index, packet, parent)

  -- Opening Value: Int64
  index, opening_value = hkex_hkexsecurities_indexretrans_omd_v1_45.opening_value.dissect(buffer, index, packet, parent)

  -- Closing Value: Int64
  index, closing_value = hkex_hkexsecurities_indexretrans_omd_v1_45.closing_value.dissect(buffer, index, packet, parent)

  -- Previous Ses Close: Int64
  index, previous_ses_close = hkex_hkexsecurities_indexretrans_omd_v1_45.previous_ses_close.dissect(buffer, index, packet, parent)

  -- Index Volume: Int64
  index, index_volume = hkex_hkexsecurities_indexretrans_omd_v1_45.index_volume.dissect(buffer, index, packet, parent)

  -- Net Chg Prev Day Pct: Int32
  index, net_chg_prev_day_pct = hkex_hkexsecurities_indexretrans_omd_v1_45.net_chg_prev_day_pct.dissect(buffer, index, packet, parent)

  -- Exception: String
  index, exception = hkex_hkexsecurities_indexretrans_omd_v1_45.exception.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_hkexsecurities_indexretrans_omd_v1_45.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Data Message
hkex_hkexsecurities_indexretrans_omd_v1_45.index_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_data_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_45.index_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.index_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_45.index_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Definition Message
hkex_hkexsecurities_indexretrans_omd_v1_45.index_definition_message = {}

-- Size: Index Definition Message
hkex_hkexsecurities_indexretrans_omd_v1_45.index_definition_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_45.index_code.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.index_source.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.currency_code.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.filler_1.size

-- Display: Index Definition Message
hkex_hkexsecurities_indexretrans_omd_v1_45.index_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Definition Message
hkex_hkexsecurities_indexretrans_omd_v1_45.index_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Code: String
  index, index_code = hkex_hkexsecurities_indexretrans_omd_v1_45.index_code.dissect(buffer, index, packet, parent)

  -- Index Source: String
  index, index_source = hkex_hkexsecurities_indexretrans_omd_v1_45.index_source.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = hkex_hkexsecurities_indexretrans_omd_v1_45.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_hkexsecurities_indexretrans_omd_v1_45.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Definition Message
hkex_hkexsecurities_indexretrans_omd_v1_45.index_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.index_definition_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_45.index_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.index_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_45.index_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Disaster Recovery Signal Message
hkex_hkexsecurities_indexretrans_omd_v1_45.disaster_recovery_signal_message = {}

-- Size: Disaster Recovery Signal Message
hkex_hkexsecurities_indexretrans_omd_v1_45.disaster_recovery_signal_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_45.dr_status.size

-- Display: Disaster Recovery Signal Message
hkex_hkexsecurities_indexretrans_omd_v1_45.disaster_recovery_signal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Signal Message
hkex_hkexsecurities_indexretrans_omd_v1_45.disaster_recovery_signal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dr Status: Uint32
  index, dr_status = hkex_hkexsecurities_indexretrans_omd_v1_45.dr_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Signal Message
hkex_hkexsecurities_indexretrans_omd_v1_45.disaster_recovery_signal_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.disaster_recovery_signal_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_45.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.disaster_recovery_signal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_45.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
hkex_hkexsecurities_indexretrans_omd_v1_45.sequence_reset_message = {}

-- Size: Sequence Reset Message
hkex_hkexsecurities_indexretrans_omd_v1_45.sequence_reset_message.size =
  hkex_hkexsecurities_indexretrans_omd_v1_45.new_seq_no.size

-- Display: Sequence Reset Message
hkex_hkexsecurities_indexretrans_omd_v1_45.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
hkex_hkexsecurities_indexretrans_omd_v1_45.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = hkex_hkexsecurities_indexretrans_omd_v1_45.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
hkex_hkexsecurities_indexretrans_omd_v1_45.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.sequence_reset_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_45.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_45.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
hkex_hkexsecurities_indexretrans_omd_v1_45.payload = {}

-- Dispatch: Payload
hkex_hkexsecurities_indexretrans_omd_v1_45.payload.dispatch = {
  [100] = hkex_hkexsecurities_indexretrans_omd_v1_45.sequence_reset_message.dissect,
  [105] = hkex_hkexsecurities_indexretrans_omd_v1_45.disaster_recovery_signal_message.dissect,
  [70] = hkex_hkexsecurities_indexretrans_omd_v1_45.index_definition_message.dissect,
  [71] = hkex_hkexsecurities_indexretrans_omd_v1_45.index_data_message.dissect,
  [203] = hkex_hkexsecurities_indexretrans_omd_v1_45.refresh_complete_message.dissect,
  [101] = hkex_hkexsecurities_indexretrans_omd_v1_45.logon_message.dissect,
  [102] = hkex_hkexsecurities_indexretrans_omd_v1_45.logon_response_message.dissect,
  [201] = hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_request_message.dissect,
  [202] = hkex_hkexsecurities_indexretrans_omd_v1_45.retransmission_response_message.dissect,
}

-- Dissect: Payload
hkex_hkexsecurities_indexretrans_omd_v1_45.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = hkex_hkexsecurities_indexretrans_omd_v1_45.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Msg Header
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_header = {}

-- Size: Msg Header
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_header.size =
  hkex_hkexsecurities_indexretrans_omd_v1_45.msg_size.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.msg_type.size

-- Display: Msg Header
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, msg_type = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
hkex_hkexsecurities_indexretrans_omd_v1_45.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.msg_header, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_45.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_hkexsecurities_indexretrans_omd_v1_45.message = {}

-- Display: Message
hkex_hkexsecurities_indexretrans_omd_v1_45.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_hkexsecurities_indexretrans_omd_v1_45.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Msg Header: Struct of 2 fields
  index, msg_header = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 9 branches
  index = hkex_hkexsecurities_indexretrans_omd_v1_45.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
hkex_hkexsecurities_indexretrans_omd_v1_45.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.message, buffer(offset, 0))
    local current = hkex_hkexsecurities_indexretrans_omd_v1_45.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_hkexsecurities_indexretrans_omd_v1_45.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
hkex_hkexsecurities_indexretrans_omd_v1_45.packet_header = {}

-- Size: Packet Header
hkex_hkexsecurities_indexretrans_omd_v1_45.packet_header.size =
  hkex_hkexsecurities_indexretrans_omd_v1_45.pkt_size.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.msg_count.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.filler.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.seq_num.size + 
  hkex_hkexsecurities_indexretrans_omd_v1_45.send_time.size

-- Display: Packet Header
hkex_hkexsecurities_indexretrans_omd_v1_45.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
hkex_hkexsecurities_indexretrans_omd_v1_45.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = hkex_hkexsecurities_indexretrans_omd_v1_45.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: 1 Byte Unsigned Fixed Width Integer
  index, msg_count = hkex_hkexsecurities_indexretrans_omd_v1_45.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: 1 Byte
  index, filler = hkex_hkexsecurities_indexretrans_omd_v1_45.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_hkexsecurities_indexretrans_omd_v1_45.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_hkexsecurities_indexretrans_omd_v1_45.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
hkex_hkexsecurities_indexretrans_omd_v1_45.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45.fields.packet_header, buffer(offset, 0))
    local index = hkex_hkexsecurities_indexretrans_omd_v1_45.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_indexretrans_omd_v1_45.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_indexretrans_omd_v1_45.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
hkex_hkexsecurities_indexretrans_omd_v1_45.packet = {}

-- Verify required size of Tcp packet
hkex_hkexsecurities_indexretrans_omd_v1_45.packet.requiredsize = function(buffer)
  return buffer:len() >= hkex_hkexsecurities_indexretrans_omd_v1_45.packet_header.size
end

-- Dissect Packet
hkex_hkexsecurities_indexretrans_omd_v1_45.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = hkex_hkexsecurities_indexretrans_omd_v1_45.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = hkex_hkexsecurities_indexretrans_omd_v1_45.message.dissect(buffer, index, packet, parent, msg_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_hkexsecurities_indexretrans_omd_v1_45.init()
end

-- Dissector for Hkex HkexSecurities IndexRetrans Omd 1.45
function omi_hkex_hkexsecurities_indexretrans_omd_v1_45.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_hkex_hkexsecurities_indexretrans_omd_v1_45.name

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < hkex_hkexsecurities_indexretrans_omd_v1_45.packet_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index, 2):le_uint()
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_hkex_hkexsecurities_indexretrans_omd_v1_45, buffer(index, size), omi_hkex_hkexsecurities_indexretrans_omd_v1_45.description, "("..size.." Bytes)")
    hkex_hkexsecurities_indexretrans_omd_v1_45.packet.dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
hkex_hkexsecurities_indexretrans_omd_v1_45.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local msg_type = buffer(18, 2):le_uint()

  -- Sequence Reset Message
  if msg_type == 100 then
    return true
  end

  -- Disaster Recovery Signal Message
  if msg_type == 105 then
    return true
  end

  -- Index Definition Message
  if msg_type == 70 then
    return true
  end

  -- Index Data Message
  if msg_type == 71 then
    return true
  end

  -- Refresh Complete Message
  if msg_type == 203 then
    return true
  end

  -- Logon Message
  if msg_type == 101 then
    return true
  end

  -- Logon Response Message
  if msg_type == 102 then
    return true
  end

  -- Retransmission Request Message
  if msg_type == 201 then
    return true
  end

  -- Retransmission Response Message
  if msg_type == 202 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Hkex HkexSecurities IndexRetrans Omd 1.45 (Tcp)
local function omi_hkex_hkexsecurities_indexretrans_omd_v1_45_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_hkexsecurities_indexretrans_omd_v1_45.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not hkex_hkexsecurities_indexretrans_omd_v1_45.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_hkexsecurities_indexretrans_omd_v1_45
  omi_hkex_hkexsecurities_indexretrans_omd_v1_45.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex HkexSecurities IndexRetrans Omd 1.45
omi_hkex_hkexsecurities_indexretrans_omd_v1_45:register_heuristic("tcp", omi_hkex_hkexsecurities_indexretrans_omd_v1_45_tcp_heuristic)

-- Register Hkex HkexSecurities IndexRetrans Omd 1.45 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_hkex_hkexsecurities_indexretrans_omd_v1_45)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 1.45
--   Date: Friday, January 9, 2026
--   Specification: HKEX_OMDC_Binary_Interface_Specifications_v1.45.pdf
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
