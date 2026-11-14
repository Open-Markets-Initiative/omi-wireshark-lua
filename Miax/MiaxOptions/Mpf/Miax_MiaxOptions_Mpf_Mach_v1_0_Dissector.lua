-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax MiaxOptions Mpf Mach 1.0 Protocol
local omi_miax_miaxoptions_mpf_mach_v1_0 = Proto("Omi.Miax.MiaxOptions.Mpf.Mach.v1.0", "Miax MiaxOptions Mpf Mach 1.0")

-- Protocol table
local miax_miaxoptions_mpf_mach_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax MiaxOptions Mpf Mach 1.0 Fields
omi_miax_miaxoptions_mpf_mach_v1_0.fields.application_message = ProtoField.new("Application Message", "miax.miaxoptions.mpf.mach.v1.0.applicationmessage", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_0.fields.application_protocol = ProtoField.new("Application Protocol", "miax.miaxoptions.mpf.mach.v1.0.applicationprotocol", ftypes.STRING, nil, nil, nil, "Miax Application Protocol")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.computer_id = ProtoField.new("Computer Id", "miax.miaxoptions.mpf.mach.v1.0.computerid", ftypes.STRING, nil, nil, nil, "issued by MIAX Futures Exchange during initial setup")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.miaxoptions.mpf.mach.v1.0.endsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the last packet to be retransmitted")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.miaxoptions.mpf.mach.v1.0.goodbyepacket", ftypes.STRING, nil, nil, nil, "The server may send a GoodBye packet to inform the client a reason for termination of the connection just before it terminates the connection")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.miaxoptions.mpf.mach.v1.0.highestsequencenumber", ftypes.UINT64, nil, nil, nil, "the highest sequence number that the server currently has for the client")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.login_request = ProtoField.new("Login Request", "miax.miaxoptions.mpf.mach.v1.0.loginrequest", ftypes.STRING, nil, nil, nil, "The SesM client must send a Login request packet immediately upon establishing a new TCP/IP socket connection to the server")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.login_response = ProtoField.new("Login Response", "miax.miaxoptions.mpf.mach.v1.0.loginresponse", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response a Login request packet from the client")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.login_status = ProtoField.new("Login Status", "miax.miaxoptions.mpf.mach.v1.0.loginstatus", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_0.fields.logout_reason = ProtoField.new("Logout Reason", "miax.miaxoptions.mpf.mach.v1.0.logoutreason", ftypes.STRING, nil, nil, nil, "Logout Request Reason")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.logout_request = ProtoField.new("Logout Request", "miax.miaxoptions.mpf.mach.v1.0.logoutrequest", ftypes.STRING, nil, nil, nil, "The client may send a Logout request packet to request the connection be terminated")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.logout_text = ProtoField.new("Logout Text", "miax.miaxoptions.mpf.mach.v1.0.logouttext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.miaxoptions.mpf.mach.v1.0.matchingengineid", ftypes.UINT8, nil, nil, nil, "Matching Engine that originated the packet")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.message_type = ProtoField.new("Message Type", "miax.miaxoptions.mpf.mach.v1.0.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.nanoseconds = ProtoField.new("Nanoseconds", "miax.miaxoptions.mpf.mach.v1.0.nanoseconds", ftypes.UINT32, nil, nil, nil, "Time at which this index value was calculated.")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.miaxoptions.mpf.mach.v1.0.numberofmatchingengines", ftypes.UINT8, nil, nil, nil, "Count of all Matching Engines for the exchange")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.packet_length = ProtoField.new("Packet Length", "miax.miaxoptions.mpf.mach.v1.0.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet, including the header and application data")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.packet_type = ProtoField.new("Packet Type", "miax.miaxoptions.mpf.mach.v1.0.packettype", ftypes.UINT8, nil, nil, nil, "Mach protocol packet type")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.refresh_message_type = ProtoField.new("Refresh Message Type", "miax.miaxoptions.mpf.mach.v1.0.refreshmessagetype", ftypes.STRING, nil, nil, nil, "Identifies the data set the firm is requesting a refresh of.")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.miaxoptions.mpf.mach.v1.0.requestedsequencenumber", ftypes.UINT64, nil, nil, nil, "Specifies client requested sequence number")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.miaxoptions.mpf.mach.v1.0.requestedtradingsessionid", ftypes.UINT8, nil, nil, nil, "Specifies the session the client would like to log into, or zero to log into the currently active session")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.miaxoptions.mpf.mach.v1.0.retransmissionrequest", ftypes.STRING, nil, nil, nil, "The SesM client uses this packet to request a retransmission server to retransmit a range of packets")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.seconds = ProtoField.new("Seconds", "miax.miaxoptions.mpf.mach.v1.0.seconds", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.seconds_utc = ProtoField.new("Seconds", "miax.miaxoptions.mpf.mach.v1.0.seconds.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Seconds part of the time that applies to all messages that gets disseminated until this message gets sent again.")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "miax.miaxoptions.mpf.mach.v1.0.sequencenumber", ftypes.UINT64, nil, nil, nil, "Original sequence number from the live feed.")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.miaxoptions.mpf.mach.v1.0.sequenceddatapacket", ftypes.STRING, nil, nil, nil, "The SesM server uses Sequenced data packets to send all messages that must be recoverable by the client in case of a connection loss")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.miaxoptions.mpf.mach.v1.0.sequencedmessagetype", ftypes.STRING, nil, nil, nil, "Market-data application message type carried over the SesM sequenced channel (matches the MACH UDP Message Type byte; Miax Options uses Ascii message codes)")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.miaxoptions.mpf.mach.v1.0.sesmpacketlength", ftypes.UINT16, nil, nil, nil, "The length of rest of the packet")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.miaxoptions.mpf.mach.v1.0.sesmpackettype", ftypes.STRING, nil, nil, nil, "SesM protocol packet type")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.sesm_version = ProtoField.new("Sesm Version", "miax.miaxoptions.mpf.mach.v1.0.sesmversion", ftypes.STRING, nil, nil, nil, "Protocol version")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.session_number = ProtoField.new("Session Number", "miax.miaxoptions.mpf.mach.v1.0.sessionnumber", ftypes.UINT8, nil, nil, nil, "The Session this packet was generated from")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.miaxoptions.mpf.mach.v1.0.startsequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first packet to be retransmitted")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.symbol = ProtoField.new("Symbol", "miax.miaxoptions.mpf.mach.v1.0.symbol", ftypes.STRING, nil, nil, nil, "Index or Settlement Symbol")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.miaxoptions.mpf.mach.v1.0.synchronizationcomplete", ftypes.STRING, nil, nil, nil, "The SesM server sends a Login response packet in response a Login request packet from the client")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.test_packet = ProtoField.new("Test Packet", "miax.miaxoptions.mpf.mach.v1.0.testpacket", ftypes.STRING, nil, nil, nil, "Test packets are intended to provide human readable text that may aid in debugging problems")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.test_text = ProtoField.new("Test Text", "miax.miaxoptions.mpf.mach.v1.0.testtext", ftypes.STRING, nil, nil, nil, "Free form human readable text")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.miaxoptions.mpf.mach.v1.0.tradingsessionid", ftypes.UINT8, nil, nil, nil, "The current trading session ID of the corresponding Matching Engine")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.miaxoptions.mpf.mach.v1.0.unsequenceddatapacket", ftypes.STRING, nil, nil, nil, "Each unsequenced data packet carries one unsequenced message from the higher-lever protocol")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.miaxoptions.mpf.mach.v1.0.unsequencedmessagetype", ftypes.STRING, nil, nil, nil, "Market-data Refresh request/response discriminator carried over the SesM unsequenced channel (Request Type R, Response Type r, End of Refresh E)")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.username = ProtoField.new("Username", "miax.miaxoptions.mpf.mach.v1.0.username", ftypes.STRING, nil, nil, nil, "issued by MIAX during initial setup")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.value = ProtoField.new("Value", "miax.miaxoptions.mpf.mach.v1.0.value", ftypes.DOUBLE, nil, nil, nil, "Index or Settlement Value")

-- Miax MiaxOptions Mpf Mach 1.0 Framing
omi_miax_miaxoptions_mpf_mach_v1_0.fields.mach_message = ProtoField.new("Mach Message", "miax.miaxoptions.mpf.mach.v1.0.machmessage", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_0.fields.mach_packet_header = ProtoField.new("Mach Packet Header", "miax.miaxoptions.mpf.mach.v1.0.machpacketheader", ftypes.STRING, nil, nil, nil, "Mach packet header (12 bytes)")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.miaxoptions.mpf.mach.v1.0.sesmpacketheader", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_0.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.miaxoptions.mpf.mach.v1.0.sesmtcppacket", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_0.fields.tcp_packet = ProtoField.new("Tcp Packet", "miax.miaxoptions.mpf.mach.v1.0.tcppacket", ftypes.STRING, nil, nil, nil, "SesM Packet")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.udp_packet = ProtoField.new("Udp Packet", "miax.miaxoptions.mpf.mach.v1.0.udppacket", ftypes.STRING)

-- Miax MiaxOptions Mpf 1.0 Application Messages
omi_miax_miaxoptions_mpf_mach_v1_0.fields.end_of_refresh_notification_message = ProtoField.new("End Of Refresh Notification Message", "miax.miaxoptions.mpf.mach.v1.0.endofrefreshnotificationmessage", ftypes.STRING, nil, nil, nil, "Sent by MIAX Options over the MPF Retransmission Interface (SesM Unsequenced Data Packet) when the refresh response is complete.")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.index_value_message = ProtoField.new("Index Value Message", "miax.miaxoptions.mpf.mach.v1.0.indexvaluemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate current index value. The index value may be the index cash value or the index settlement value, as identified by the Index Symbol.")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "miax.miaxoptions.mpf.mach.v1.0.refreshrequestmessage", ftypes.STRING, nil, nil, nil, "Sent by the firm over the MPF Retransmission Interface (SesM Unsequenced Data Packet) to request a Last Value Refresh of a particular data set identified by Refresh Message Type.")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.refresh_response_message = ProtoField.new("Refresh Response Message", "miax.miaxoptions.mpf.mach.v1.0.refreshresponsemessage", ftypes.STRING, nil, nil, nil, "Sent by MIAX Options over the MPF Retransmission Interface (SesM Unsequenced Data Packet) carrying one Application Message that satisfies a previous Refresh Request. Note: MIAX Options PDF assigns Response Type \"R\" (uppercase) to this message, colliding with the Request Type \"R\" byte; lowercase \"r\" is used here to match the Pearl convention for case-distinct discrimination.")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.system_time_message = ProtoField.new("System Time Message", "miax.miaxoptions.mpf.mach.v1.0.systemtimemessage", ftypes.STRING, nil, nil, nil, "This is the message format that will be used to disseminate the “seconds” part of the timestamp that is applicable to all messages that are sent in the current second.")

-- Miax MiaxOptions Mpf 1.0 Session Messages
omi_miax_miaxoptions_mpf_mach_v1_0.fields.end_of_session = ProtoField.new("End Of Session", "miax.miaxoptions.mpf.mach.v1.0.endofsession", ftypes.BYTES, nil, nil, nil, "Mach end of session")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.heartbeat = ProtoField.new("Heartbeat", "miax.miaxoptions.mpf.mach.v1.0.heartbeat", ftypes.BYTES, nil, nil, nil, "Mach heartbeat packet")
omi_miax_miaxoptions_mpf_mach_v1_0.fields.start_of_session = ProtoField.new("Start Of Session", "miax.miaxoptions.mpf.mach.v1.0.startofsession", ftypes.BYTES, nil, nil, nil, "Mach Start of session")

-- Miax MiaxOptions Mpf Mach 1.0 Generated Fields
omi_miax_miaxoptions_mpf_mach_v1_0.fields.timestamp = ProtoField.new("Timestamp", "miax.miaxoptions.mpf.mach.v1.0.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Miax MiaxOptions Mpf Mach 1.0 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Full DateTime Local", 2 },
  { 3, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
miax_miaxoptions_mpf_mach_v1_0.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax MiaxOptions Mpf Mach 1.0 Element Dissection Options
show.structs = true
show.application_messages = true
show.headers = true

-- Register Miax MiaxOptions Mpf Mach 1.0 Show Options
omi_miax_miaxoptions_mpf_mach_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

omi_miax_miaxoptions_mpf_mach_v1_0.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_miax_miaxoptions_mpf_mach_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_miax_miaxoptions_mpf_mach_v1_0.prefs.show_application_messages then
    show.application_messages = omi_miax_miaxoptions_mpf_mach_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_miax_miaxoptions_mpf_mach_v1_0.prefs.show_headers then
    show.headers = omi_miax_miaxoptions_mpf_mach_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_miax_miaxoptions_mpf_mach_v1_0.prefs.show_structs then
    show.structs = omi_miax_miaxoptions_mpf_mach_v1_0.prefs.show_structs
  end
  if miax_miaxoptions_mpf_mach_v1_0.timestamp_format ~= omi_miax_miaxoptions_mpf_mach_v1_0.prefs.timestamp_format then
    miax_miaxoptions_mpf_mach_v1_0.timestamp_format = omi_miax_miaxoptions_mpf_mach_v1_0.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
miax_miaxoptions_mpf_mach_v1_0.conversation = {}
miax_miaxoptions_mpf_mach_v1_0.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
miax_miaxoptions_mpf_mach_v1_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
miax_miaxoptions_mpf_mach_v1_0.conversation.data = function(packet)
  local key = miax_miaxoptions_mpf_mach_v1_0.conversation.key(packet)
  local data = miax_miaxoptions_mpf_mach_v1_0.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    miax_miaxoptions_mpf_mach_v1_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
miax_miaxoptions_mpf_mach_v1_0.conversation.current = nil


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
-- Miax MiaxOptions Mpf Mach 1.0 Fields
-----------------------------------------------------------------------

-- Application Protocol
miax_miaxoptions_mpf_mach_v1_0.application_protocol = {}

-- Size: Application Protocol
miax_miaxoptions_mpf_mach_v1_0.application_protocol.size = 8

-- Display: Application Protocol
miax_miaxoptions_mpf_mach_v1_0.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_miaxoptions_mpf_mach_v1_0.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_mpf_mach_v1_0.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_miaxoptions_mpf_mach_v1_0.computer_id = {}

-- Size: Computer Id
miax_miaxoptions_mpf_mach_v1_0.computer_id.size = 8

-- Display: Computer Id
miax_miaxoptions_mpf_mach_v1_0.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_miaxoptions_mpf_mach_v1_0.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_mpf_mach_v1_0.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.computer_id, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_miaxoptions_mpf_mach_v1_0.end_sequence_number = {}

-- Size: End Sequence Number
miax_miaxoptions_mpf_mach_v1_0.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_miaxoptions_mpf_mach_v1_0.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_miaxoptions_mpf_mach_v1_0.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_mpf_mach_v1_0.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_miaxoptions_mpf_mach_v1_0.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_miaxoptions_mpf_mach_v1_0.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_miaxoptions_mpf_mach_v1_0.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_miaxoptions_mpf_mach_v1_0.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_mpf_mach_v1_0.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Login Status
miax_miaxoptions_mpf_mach_v1_0.login_status = {}

-- Size: Login Status
miax_miaxoptions_mpf_mach_v1_0.login_status.size = 1

-- Display: Login Status
miax_miaxoptions_mpf_mach_v1_0.login_status.display = function(value)
  if value == " " then
    return "Login Status: Successful (<whitespace>)"
  end
  if value == "S" then
    return "Login Status: Invalid Trading Session Requested (S)"
  end
  if value == "U" then
    return "Login Status: No Active Trading Session Exists (U)"
  end
  if value == "X" then
    return "Login Status: Rejected (X)"
  end
  if value == "N" then
    return "Login Status: Invalid Start Sequence Number Requested (N)"
  end
  if value == "I" then
    return "Login Status: Incompatible Session Protocol Version (I)"
  end
  if value == "A" then
    return "Login Status: Incompatible Application Protocol Version (A)"
  end
  if value == "L" then
    return "Login Status: Request Rejected Because Client Already Logged In (L)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
miax_miaxoptions_mpf_mach_v1_0.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_0.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_miaxoptions_mpf_mach_v1_0.logout_reason = {}

-- Size: Logout Reason
miax_miaxoptions_mpf_mach_v1_0.logout_reason.size = 1

-- Display: Logout Reason
miax_miaxoptions_mpf_mach_v1_0.logout_reason.display = function(value)
  if value == " " then
    return "Logout Reason: Graceful Logout (<whitespace>)"
  end
  if value == "B" then
    return "Logout Reason: Bad Packet (B)"
  end
  if value == "L" then
    return "Logout Reason: Timed Out (L)"
  end
  if value == "A" then
    return "Logout Reason: Application Terminating Connection (A)"
  end

  return "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
miax_miaxoptions_mpf_mach_v1_0.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_0.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_miaxoptions_mpf_mach_v1_0.logout_text = {}

-- Display: Logout Text
miax_miaxoptions_mpf_mach_v1_0.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_miaxoptions_mpf_mach_v1_0.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_0.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Matching Engine Id
miax_miaxoptions_mpf_mach_v1_0.matching_engine_id = {}

-- Size: Matching Engine Id
miax_miaxoptions_mpf_mach_v1_0.matching_engine_id.size = 1

-- Display: Matching Engine Id
miax_miaxoptions_mpf_mach_v1_0.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_miaxoptions_mpf_mach_v1_0.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_mpf_mach_v1_0.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Message Type
miax_miaxoptions_mpf_mach_v1_0.message_type = {}

-- Size: Message Type
miax_miaxoptions_mpf_mach_v1_0.message_type.size = 1

-- Display: Message Type
miax_miaxoptions_mpf_mach_v1_0.message_type.labels = {
  ["1"] = "Message Type: System Time Message (1)",
  ["I"] = "Message Type: Index Value Message (I)",
}

miax_miaxoptions_mpf_mach_v1_0.message_type.display = function(value)
  return miax_miaxoptions_mpf_mach_v1_0.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_miaxoptions_mpf_mach_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
miax_miaxoptions_mpf_mach_v1_0.nanoseconds = {}

-- Size: Nanoseconds
miax_miaxoptions_mpf_mach_v1_0.nanoseconds.size = 4

-- Display: Nanoseconds
miax_miaxoptions_mpf_mach_v1_0.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
miax_miaxoptions_mpf_mach_v1_0.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_mpf_mach_v1_0.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Matching Engines
miax_miaxoptions_mpf_mach_v1_0.number_of_matching_engines = {}

-- Size: Number Of Matching Engines
miax_miaxoptions_mpf_mach_v1_0.number_of_matching_engines.size = 1

-- Display: Number Of Matching Engines
miax_miaxoptions_mpf_mach_v1_0.number_of_matching_engines.display = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_miaxoptions_mpf_mach_v1_0.number_of_matching_engines.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.number_of_matching_engines.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_mpf_mach_v1_0.number_of_matching_engines.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_miaxoptions_mpf_mach_v1_0.packet_length = {}

-- Size: Packet Length
miax_miaxoptions_mpf_mach_v1_0.packet_length.size = 2

-- Display: Packet Length
miax_miaxoptions_mpf_mach_v1_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_miaxoptions_mpf_mach_v1_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_mpf_mach_v1_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_miaxoptions_mpf_mach_v1_0.packet_type = {}

-- Size: Packet Type
miax_miaxoptions_mpf_mach_v1_0.packet_type.size = 1

-- Display: Packet Type
miax_miaxoptions_mpf_mach_v1_0.packet_type.labels = {
  [0] = "Packet Type: Heartbeat (0)",
  [1] = "Packet Type: Start Of Session (1)",
  [2] = "Packet Type: End Of Session (2)",
  [3] = "Packet Type: Application Message (3)",
}

miax_miaxoptions_mpf_mach_v1_0.packet_type.display = function(value)
  return miax_miaxoptions_mpf_mach_v1_0.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_miaxoptions_mpf_mach_v1_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_mpf_mach_v1_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Refresh Message Type
miax_miaxoptions_mpf_mach_v1_0.refresh_message_type = {}

-- Size: Refresh Message Type
miax_miaxoptions_mpf_mach_v1_0.refresh_message_type.size = 1

-- Display: Refresh Message Type
miax_miaxoptions_mpf_mach_v1_0.refresh_message_type.labels = {
  ["s"] = "Refresh Message Type: Symbol Definition Refresh (s)",
  ["I"] = "Refresh Message Type: Index Update Refresh (I)",
}

miax_miaxoptions_mpf_mach_v1_0.refresh_message_type.display = function(value)
  return miax_miaxoptions_mpf_mach_v1_0.refresh_message_type.labels[value] or "Refresh Message Type: Unknown("..value..")"
end

-- Dissect: Refresh Message Type
miax_miaxoptions_mpf_mach_v1_0.refresh_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.refresh_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_0.refresh_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.refresh_message_type, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_miaxoptions_mpf_mach_v1_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_miaxoptions_mpf_mach_v1_0.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_miaxoptions_mpf_mach_v1_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_miaxoptions_mpf_mach_v1_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_mpf_mach_v1_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Trading Session Id
miax_miaxoptions_mpf_mach_v1_0.requested_trading_session_id = {}

-- Size: Requested Trading Session Id
miax_miaxoptions_mpf_mach_v1_0.requested_trading_session_id.size = 1

-- Display: Requested Trading Session Id
miax_miaxoptions_mpf_mach_v1_0.requested_trading_session_id.display = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_miaxoptions_mpf_mach_v1_0.requested_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.requested_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_mpf_mach_v1_0.requested_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Seconds
miax_miaxoptions_mpf_mach_v1_0.seconds = {}

-- Size: Seconds
miax_miaxoptions_mpf_mach_v1_0.seconds.size = 4

-- Store: Seconds
miax_miaxoptions_mpf_mach_v1_0.seconds.current = nil

-- Generated: Seconds
miax_miaxoptions_mpf_mach_v1_0.seconds.generated = function(value, range, packet, parent)
  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_miaxoptions_mpf_mach_v1_0.fields.seconds
  if miax_miaxoptions_mpf_mach_v1_0.timestamp_format == 3 then field = omi_miax_miaxoptions_mpf_mach_v1_0.fields.seconds_utc end
  local seconds = parent:add(field, range, NSTime.new(value, 0))
  seconds:set_generated()
end

-- Dissect: Seconds
miax_miaxoptions_mpf_mach_v1_0.seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_miax_miaxoptions_mpf_mach_v1_0.fields.seconds
  if miax_miaxoptions_mpf_mach_v1_0.timestamp_format == 3 then field = omi_miax_miaxoptions_mpf_mach_v1_0.fields.seconds_utc end

  local seconds = value
  local nanos = 0
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Sequence Number
miax_miaxoptions_mpf_mach_v1_0.sequence_number = {}

-- Size: Sequence Number
miax_miaxoptions_mpf_mach_v1_0.sequence_number.size = 8

-- Display: Sequence Number
miax_miaxoptions_mpf_mach_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_miaxoptions_mpf_mach_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_mpf_mach_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_miaxoptions_mpf_mach_v1_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_miaxoptions_mpf_mach_v1_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
miax_miaxoptions_mpf_mach_v1_0.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
miax_miaxoptions_mpf_mach_v1_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_mpf_mach_v1_0.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_type.labels = {
  ["s"] = "Sesm Packet Type: Sequenced Data Packet (s)",
  ["U"] = "Sesm Packet Type: Unsequenced Data Packet (U)",
  ["l"] = "Sesm Packet Type: Login Request (l)",
  ["r"] = "Sesm Packet Type: Login Response (r)",
  ["c"] = "Sesm Packet Type: Synchronization Complete (c)",
  ["a"] = "Sesm Packet Type: Retransmission Request (a)",
  ["X"] = "Sesm Packet Type: Logout Request (X)",
  ["G"] = "Sesm Packet Type: Goodbye Packet (G)",
  ["u"] = "Sesm Packet Type: Trading Session Update (u)",
  ["0"] = "Sesm Packet Type: Server Heartbeat (0)",
  ["1"] = "Sesm Packet Type: Client Heartbeat (1)",
  ["T"] = "Sesm Packet Type: Test Packet (T)",
}

miax_miaxoptions_mpf_mach_v1_0.sesm_packet_type.display = function(value)
  return miax_miaxoptions_mpf_mach_v1_0.sesm_packet_type.labels[value] or "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_0.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_miaxoptions_mpf_mach_v1_0.sesm_version = {}

-- Size: Sesm Version
miax_miaxoptions_mpf_mach_v1_0.sesm_version.size = 5

-- Display: Sesm Version
miax_miaxoptions_mpf_mach_v1_0.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_miaxoptions_mpf_mach_v1_0.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.sesm_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_mpf_mach_v1_0.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Number
miax_miaxoptions_mpf_mach_v1_0.session_number = {}

-- Size: Session Number
miax_miaxoptions_mpf_mach_v1_0.session_number.size = 1

-- Display: Session Number
miax_miaxoptions_mpf_mach_v1_0.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_miaxoptions_mpf_mach_v1_0.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.session_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_mpf_mach_v1_0.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.session_number, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_miaxoptions_mpf_mach_v1_0.start_sequence_number = {}

-- Size: Start Sequence Number
miax_miaxoptions_mpf_mach_v1_0.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_miaxoptions_mpf_mach_v1_0.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_miaxoptions_mpf_mach_v1_0.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_mpf_mach_v1_0.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Symbol
miax_miaxoptions_mpf_mach_v1_0.symbol = {}

-- Size: Symbol
miax_miaxoptions_mpf_mach_v1_0.symbol.size = 5

-- Display: Symbol
miax_miaxoptions_mpf_mach_v1_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
miax_miaxoptions_mpf_mach_v1_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_mpf_mach_v1_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Test Text
miax_miaxoptions_mpf_mach_v1_0.test_text = {}

-- Display: Test Text
miax_miaxoptions_mpf_mach_v1_0.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_miaxoptions_mpf_mach_v1_0.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_0.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.test_text, range, value, display)

  return offset + size, value
end

-- Trading Session Id
miax_miaxoptions_mpf_mach_v1_0.trading_session_id = {}

-- Size: Trading Session Id
miax_miaxoptions_mpf_mach_v1_0.trading_session_id.size = 1

-- Display: Trading Session Id
miax_miaxoptions_mpf_mach_v1_0.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_miaxoptions_mpf_mach_v1_0.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_mpf_mach_v1_0.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_miaxoptions_mpf_mach_v1_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_miaxoptions_mpf_mach_v1_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
miax_miaxoptions_mpf_mach_v1_0.unsequenced_message_type.labels = {
  ["R"] = "Unsequenced Message Type: Refresh Request Message (R)",
  ["r"] = "Unsequenced Message Type: Refresh Response Message (r)",
  ["E"] = "Unsequenced Message Type: End Of Refresh Notification Message (E)",
}

miax_miaxoptions_mpf_mach_v1_0.unsequenced_message_type.display = function(value)
  return miax_miaxoptions_mpf_mach_v1_0.unsequenced_message_type.labels[value] or "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_miaxoptions_mpf_mach_v1_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
miax_miaxoptions_mpf_mach_v1_0.username = {}

-- Size: Username
miax_miaxoptions_mpf_mach_v1_0.username.size = 5

-- Display: Username
miax_miaxoptions_mpf_mach_v1_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_miaxoptions_mpf_mach_v1_0.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_mpf_mach_v1_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.username, range, value, display)

  return offset + length, value
end

-- Value
miax_miaxoptions_mpf_mach_v1_0.value = {}

-- Size: Value
miax_miaxoptions_mpf_mach_v1_0.value.size = 4

-- Display: Value
miax_miaxoptions_mpf_mach_v1_0.value.display = function(value)
  return "Value: "..value
end

-- Translate: Value
miax_miaxoptions_mpf_mach_v1_0.value.translate = function(raw)
  return raw/100
end

-- Dissect: Value
miax_miaxoptions_mpf_mach_v1_0.value.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.value.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_mpf_mach_v1_0.value.translate(raw)
  local display = miax_miaxoptions_mpf_mach_v1_0.value.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.value, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_miaxoptions_mpf_mach_v1_0.timestamp = {}

-- Translate: Timestamp
miax_miaxoptions_mpf_mach_v1_0.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds) * 1000000000 + nanoseconds
end

-- Display: Timestamp
miax_miaxoptions_mpf_mach_v1_0.timestamp.display = function(nanoseconds, stored_seconds)
  -- An offset the Field epoch leaves unbounded carries whole seconds of its own
  local seconds = stored_seconds + math.floor(nanoseconds / 1000000000)
  local fraction = nanoseconds % 1000000000

  local format = miax_miaxoptions_mpf_mach_v1_0.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
  return "Timestamp: "..os.date(format, seconds)..string.format("%09d", fraction)
end

-- Composite: Timestamp
miax_miaxoptions_mpf_mach_v1_0.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_0.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:le_uint()
  local value = miax_miaxoptions_mpf_mach_v1_0.timestamp.translate(nanoseconds, stored_seconds)
  local display = miax_miaxoptions_mpf_mach_v1_0.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.timestamp, range, value, display)

  miax_miaxoptions_mpf_mach_v1_0.seconds.generated(stored_seconds, range, packet, parent)

  display = miax_miaxoptions_mpf_mach_v1_0.nanoseconds.display(nanoseconds)
  parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
miax_miaxoptions_mpf_mach_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  if miax_miaxoptions_mpf_mach_v1_0.timestamp_format ~= 0 then
    local stored_seconds = miax_miaxoptions_mpf_mach_v1_0.seconds.current

    if stored_seconds ~= nil then
      return miax_miaxoptions_mpf_mach_v1_0.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
    end
  end

  return miax_miaxoptions_mpf_mach_v1_0.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Miax MiaxOptions Mpf Mach 1.0
-----------------------------------------------------------------------

-- Test Packet
miax_miaxoptions_mpf_mach_v1_0.test_packet = {}

-- Calculate size of: Test Packet
miax_miaxoptions_mpf_mach_v1_0.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_miaxoptions_mpf_mach_v1_0.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_miaxoptions_mpf_mach_v1_0.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = sesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_miaxoptions_mpf_mach_v1_0.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_miaxoptions_mpf_mach_v1_0.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.test_packet, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Heartbeat
miax_miaxoptions_mpf_mach_v1_0.client_heartbeat = {}

-- Display: Client Heartbeat
miax_miaxoptions_mpf_mach_v1_0.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
miax_miaxoptions_mpf_mach_v1_0.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_mpf_mach_v1_0.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
miax_miaxoptions_mpf_mach_v1_0.server_heartbeat = {}

-- Display: Server Heartbeat
miax_miaxoptions_mpf_mach_v1_0.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
miax_miaxoptions_mpf_mach_v1_0.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_mpf_mach_v1_0.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Trading Session Update
miax_miaxoptions_mpf_mach_v1_0.trading_session_update = {}

-- Display: Trading Session Update
miax_miaxoptions_mpf_mach_v1_0.trading_session_update.display = function(packet, parent, length)
  return "Trading Session Update"
end


-- Dissect: Trading Session Update
miax_miaxoptions_mpf_mach_v1_0.trading_session_update.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_mpf_mach_v1_0.trading_session_update.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Goodbye Packet
miax_miaxoptions_mpf_mach_v1_0.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_miaxoptions_mpf_mach_v1_0.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_mpf_mach_v1_0.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_miaxoptions_mpf_mach_v1_0.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_miaxoptions_mpf_mach_v1_0.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_miaxoptions_mpf_mach_v1_0.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_miaxoptions_mpf_mach_v1_0.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_miaxoptions_mpf_mach_v1_0.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_miaxoptions_mpf_mach_v1_0.logout_request = {}

-- Calculate size of: Logout Request
miax_miaxoptions_mpf_mach_v1_0.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_mpf_mach_v1_0.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_miaxoptions_mpf_mach_v1_0.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_miaxoptions_mpf_mach_v1_0.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_miaxoptions_mpf_mach_v1_0.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_miaxoptions_mpf_mach_v1_0.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_miaxoptions_mpf_mach_v1_0.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.logout_request, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_miaxoptions_mpf_mach_v1_0.retransmission_request = {}

-- Size: Retransmission Request
miax_miaxoptions_mpf_mach_v1_0.retransmission_request.size =
  miax_miaxoptions_mpf_mach_v1_0.start_sequence_number.size + 
  miax_miaxoptions_mpf_mach_v1_0.end_sequence_number.size

-- Display: Retransmission Request
miax_miaxoptions_mpf_mach_v1_0.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_miaxoptions_mpf_mach_v1_0.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_miaxoptions_mpf_mach_v1_0.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_miaxoptions_mpf_mach_v1_0.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_miaxoptions_mpf_mach_v1_0.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.retransmission_request, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_miaxoptions_mpf_mach_v1_0.synchronization_complete = {}

-- Size: Synchronization Complete
miax_miaxoptions_mpf_mach_v1_0.synchronization_complete.size =
  miax_miaxoptions_mpf_mach_v1_0.number_of_matching_engines.size

-- Display: Synchronization Complete
miax_miaxoptions_mpf_mach_v1_0.synchronization_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_miaxoptions_mpf_mach_v1_0.synchronization_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_miaxoptions_mpf_mach_v1_0.number_of_matching_engines.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_miaxoptions_mpf_mach_v1_0.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.synchronization_complete, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.synchronization_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.synchronization_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.synchronization_complete.fields(buffer, offset, packet, parent)
  end
end

-- Login Response
miax_miaxoptions_mpf_mach_v1_0.login_response = {}

-- Size: Login Response
miax_miaxoptions_mpf_mach_v1_0.login_response.size =
  miax_miaxoptions_mpf_mach_v1_0.number_of_matching_engines.size + 
  miax_miaxoptions_mpf_mach_v1_0.login_status.size + 
  miax_miaxoptions_mpf_mach_v1_0.trading_session_id.size + 
  miax_miaxoptions_mpf_mach_v1_0.highest_sequence_number.size

-- Display: Login Response
miax_miaxoptions_mpf_mach_v1_0.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_miaxoptions_mpf_mach_v1_0.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_miaxoptions_mpf_mach_v1_0.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 8 values
  index, login_status = miax_miaxoptions_mpf_mach_v1_0.login_status.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_miaxoptions_mpf_mach_v1_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_miaxoptions_mpf_mach_v1_0.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_miaxoptions_mpf_mach_v1_0.login_response.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.login_response, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_miaxoptions_mpf_mach_v1_0.login_request = {}

-- Size: Login Request
miax_miaxoptions_mpf_mach_v1_0.login_request.size =
  miax_miaxoptions_mpf_mach_v1_0.sesm_version.size + 
  miax_miaxoptions_mpf_mach_v1_0.username.size + 
  miax_miaxoptions_mpf_mach_v1_0.computer_id.size + 
  miax_miaxoptions_mpf_mach_v1_0.application_protocol.size + 
  miax_miaxoptions_mpf_mach_v1_0.requested_trading_session_id.size + 
  miax_miaxoptions_mpf_mach_v1_0.requested_sequence_number.size

-- Display: Login Request
miax_miaxoptions_mpf_mach_v1_0.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_miaxoptions_mpf_mach_v1_0.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_miaxoptions_mpf_mach_v1_0.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_miaxoptions_mpf_mach_v1_0.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_miaxoptions_mpf_mach_v1_0.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_miaxoptions_mpf_mach_v1_0.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_miaxoptions_mpf_mach_v1_0.requested_trading_session_id.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_miaxoptions_mpf_mach_v1_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_miaxoptions_mpf_mach_v1_0.login_request.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.login_request, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.login_request.fields(buffer, offset, packet, parent)
  end
end

-- End Of Refresh Notification Message
miax_miaxoptions_mpf_mach_v1_0.end_of_refresh_notification_message = {}

-- Size: End Of Refresh Notification Message
miax_miaxoptions_mpf_mach_v1_0.end_of_refresh_notification_message.size =
  miax_miaxoptions_mpf_mach_v1_0.refresh_message_type.size

-- Display: End Of Refresh Notification Message
miax_miaxoptions_mpf_mach_v1_0.end_of_refresh_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Refresh Notification Message
miax_miaxoptions_mpf_mach_v1_0.end_of_refresh_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_miaxoptions_mpf_mach_v1_0.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Refresh Notification Message
miax_miaxoptions_mpf_mach_v1_0.end_of_refresh_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.end_of_refresh_notification_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.end_of_refresh_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Value Message
miax_miaxoptions_mpf_mach_v1_0.index_value_message = {}

-- Size: Index Value Message
miax_miaxoptions_mpf_mach_v1_0.index_value_message.size =
  miax_miaxoptions_mpf_mach_v1_0.nanoseconds.size + 
  miax_miaxoptions_mpf_mach_v1_0.symbol.size + 
  miax_miaxoptions_mpf_mach_v1_0.value.size

-- Display: Index Value Message
miax_miaxoptions_mpf_mach_v1_0.index_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value Message
miax_miaxoptions_mpf_mach_v1_0.index_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_miaxoptions_mpf_mach_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = miax_miaxoptions_mpf_mach_v1_0.symbol.dissect(buffer, index, packet, parent)

  -- Value: BinaryPrc2U
  index, value = miax_miaxoptions_mpf_mach_v1_0.value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Value Message
miax_miaxoptions_mpf_mach_v1_0.index_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.index_value_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.index_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.index_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.index_value_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_miaxoptions_mpf_mach_v1_0.system_time_message = {}

-- Size: System Time Message
miax_miaxoptions_mpf_mach_v1_0.system_time_message.size =
  miax_miaxoptions_mpf_mach_v1_0.seconds.size

-- Display: System Time Message
miax_miaxoptions_mpf_mach_v1_0.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_miaxoptions_mpf_mach_v1_0.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: SecTime
  index, seconds = miax_miaxoptions_mpf_mach_v1_0.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  miax_miaxoptions_mpf_mach_v1_0.seconds.current = seconds

  if not packet.visited then
    miax_miaxoptions_mpf_mach_v1_0.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: System Time Message
miax_miaxoptions_mpf_mach_v1_0.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.system_time_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_miaxoptions_mpf_mach_v1_0.data = {}

-- Dispatch: Data
miax_miaxoptions_mpf_mach_v1_0.data.dispatch = {
  ["1"] = miax_miaxoptions_mpf_mach_v1_0.system_time_message.dissect,
  ["I"] = miax_miaxoptions_mpf_mach_v1_0.index_value_message.dissect,
}

-- Dissect: Data
miax_miaxoptions_mpf_mach_v1_0.data.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = miax_miaxoptions_mpf_mach_v1_0.data.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_miaxoptions_mpf_mach_v1_0.application_message = {}

-- Display: Application Message
miax_miaxoptions_mpf_mach_v1_0.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_miaxoptions_mpf_mach_v1_0.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 2 values
  index, message_type = miax_miaxoptions_mpf_mach_v1_0.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 2 branches
  index = miax_miaxoptions_mpf_mach_v1_0.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_miaxoptions_mpf_mach_v1_0.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.application_message, buffer(offset, 0))
    local current = miax_miaxoptions_mpf_mach_v1_0.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_miaxoptions_mpf_mach_v1_0.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_mpf_mach_v1_0.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- Refresh Response Message
miax_miaxoptions_mpf_mach_v1_0.refresh_response_message = {}

-- Calculate size of: Refresh Response Message
miax_miaxoptions_mpf_mach_v1_0.refresh_response_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_mpf_mach_v1_0.sequence_number.size

  -- Parse runtime size of: Application Message
  index = index + buffer(offset + index - 12, 2):le_uint()

  return index
end

-- Display: Refresh Response Message
miax_miaxoptions_mpf_mach_v1_0.refresh_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Response Message
miax_miaxoptions_mpf_mach_v1_0.refresh_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_miaxoptions_mpf_mach_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 4, 2):le_uint()

  -- Runtime Size Of: Application Message
  local size_of_application_message = sesm_packet_length - 10

  -- Application Message: Struct of 2 fields
  index, application_message = miax_miaxoptions_mpf_mach_v1_0.application_message.dissect(buffer, index, packet, parent, size_of_application_message)

  return index
end

-- Dissect: Refresh Response Message
miax_miaxoptions_mpf_mach_v1_0.refresh_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.refresh_response_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.refresh_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.refresh_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.refresh_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
miax_miaxoptions_mpf_mach_v1_0.refresh_request_message = {}

-- Size: Refresh Request Message
miax_miaxoptions_mpf_mach_v1_0.refresh_request_message.size =
  miax_miaxoptions_mpf_mach_v1_0.refresh_message_type.size

-- Display: Refresh Request Message
miax_miaxoptions_mpf_mach_v1_0.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
miax_miaxoptions_mpf_mach_v1_0.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_miaxoptions_mpf_mach_v1_0.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
miax_miaxoptions_mpf_mach_v1_0.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.refresh_request_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_miaxoptions_mpf_mach_v1_0.unsequenced_message = {}

-- Dispatch: Unsequenced Message
miax_miaxoptions_mpf_mach_v1_0.unsequenced_message.dispatch = {
  ["R"] = miax_miaxoptions_mpf_mach_v1_0.refresh_request_message.dissect,
  ["r"] = miax_miaxoptions_mpf_mach_v1_0.refresh_response_message.dissect,
  ["E"] = miax_miaxoptions_mpf_mach_v1_0.end_of_refresh_notification_message.dissect,
}

-- Dissect: Unsequenced Message
miax_miaxoptions_mpf_mach_v1_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  local dissect = miax_miaxoptions_mpf_mach_v1_0.unsequenced_message.dispatch[unsequenced_message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_miaxoptions_mpf_mach_v1_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_miaxoptions_mpf_mach_v1_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_miaxoptions_mpf_mach_v1_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_miaxoptions_mpf_mach_v1_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String Enum with 3 values
  index, unsequenced_message_type = miax_miaxoptions_mpf_mach_v1_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = miax_miaxoptions_mpf_mach_v1_0.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_miaxoptions_mpf_mach_v1_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_miaxoptions_mpf_mach_v1_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_miaxoptions_mpf_mach_v1_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_miaxoptions_mpf_mach_v1_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_mpf_mach_v1_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Sequenced Data Packet
miax_miaxoptions_mpf_mach_v1_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_miaxoptions_mpf_mach_v1_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 1
end

-- Display: Sequenced Data Packet
miax_miaxoptions_mpf_mach_v1_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_miaxoptions_mpf_mach_v1_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_miaxoptions_mpf_mach_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_miaxoptions_mpf_mach_v1_0.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String
  index, sequenced_message_type = miax_miaxoptions_mpf_mach_v1_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message
  index, sequenced_message = miax_miaxoptions_mpf_mach_v1_0.sequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Data Packet
miax_miaxoptions_mpf_mach_v1_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_miaxoptions_mpf_mach_v1_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_miaxoptions_mpf_mach_v1_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_miaxoptions_mpf_mach_v1_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_mpf_mach_v1_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_miaxoptions_mpf_mach_v1_0.sesm_payload = {}

-- Dispatch: Sesm Payload
miax_miaxoptions_mpf_mach_v1_0.sesm_payload.dispatch = {
  ["s"] = miax_miaxoptions_mpf_mach_v1_0.sequenced_data_packet.dissect,
  ["U"] = miax_miaxoptions_mpf_mach_v1_0.unsequenced_data_packet.dissect,
  ["l"] = miax_miaxoptions_mpf_mach_v1_0.login_request.dissect,
  ["r"] = miax_miaxoptions_mpf_mach_v1_0.login_response.dissect,
  ["c"] = miax_miaxoptions_mpf_mach_v1_0.synchronization_complete.dissect,
  ["a"] = miax_miaxoptions_mpf_mach_v1_0.retransmission_request.dissect,
  ["X"] = miax_miaxoptions_mpf_mach_v1_0.logout_request.dissect,
  ["G"] = miax_miaxoptions_mpf_mach_v1_0.goodbye_packet.dissect,
  ["u"] = miax_miaxoptions_mpf_mach_v1_0.trading_session_update.dissect,
  ["0"] = miax_miaxoptions_mpf_mach_v1_0.server_heartbeat.dissect,
  ["1"] = miax_miaxoptions_mpf_mach_v1_0.client_heartbeat.dissect,
  ["T"] = miax_miaxoptions_mpf_mach_v1_0.test_packet.dissect,
}

-- Dissect: Sesm Payload
miax_miaxoptions_mpf_mach_v1_0.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  local dissect = miax_miaxoptions_mpf_mach_v1_0.sesm_payload.dispatch[sesm_packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_header.size =
  miax_miaxoptions_mpf_mach_v1_0.sesm_packet_length.size + 
  miax_miaxoptions_mpf_mach_v1_0.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_miaxoptions_mpf_mach_v1_0.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, sesm_packet_type = miax_miaxoptions_mpf_mach_v1_0.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_miaxoptions_mpf_mach_v1_0.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_miaxoptions_mpf_mach_v1_0.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_miaxoptions_mpf_mach_v1_0.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_miaxoptions_mpf_mach_v1_0.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_miaxoptions_mpf_mach_v1_0.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 12 branches
  index = miax_miaxoptions_mpf_mach_v1_0.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_miaxoptions_mpf_mach_v1_0.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.sesm_tcp_packet, buffer(offset, 0))
    local current = miax_miaxoptions_mpf_mach_v1_0.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_miaxoptions_mpf_mach_v1_0.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_mpf_mach_v1_0.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_miaxoptions_mpf_mach_v1_0.sesm_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Tcp Packet
miax_miaxoptions_mpf_mach_v1_0.tcp_packet = {}

-- Verify required size of Tcp packet
miax_miaxoptions_mpf_mach_v1_0.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_miaxoptions_mpf_mach_v1_0.sesm_packet_header.size
end

-- Dissect Tcp Packet
miax_miaxoptions_mpf_mach_v1_0.tcp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_miaxoptions_mpf_mach_v1_0.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_miaxoptions_mpf_mach_v1_0.seconds.current = data.seconds.frames[packet.number]
  miax_miaxoptions_mpf_mach_v1_0.conversation.current = data

  local index = 0

  -- Dependency for Sesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Sesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sesm_tcp_packet = sesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_sesm_tcp_packet):tvb()
      index = miax_miaxoptions_mpf_mach_v1_0.sesm_tcp_packet.dissect(frame, index, packet, parent, size_of_sesm_tcp_packet)
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

-- End Of Session
miax_miaxoptions_mpf_mach_v1_0.end_of_session = {}

-- Display: End Of Session
miax_miaxoptions_mpf_mach_v1_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_miaxoptions_mpf_mach_v1_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_mpf_mach_v1_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Session
miax_miaxoptions_mpf_mach_v1_0.start_of_session = {}

-- Display: Start Of Session
miax_miaxoptions_mpf_mach_v1_0.start_of_session.display = function(packet, parent, length)
  return "Start Of Session"
end


-- Dissect: Start Of Session
miax_miaxoptions_mpf_mach_v1_0.start_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_mpf_mach_v1_0.start_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
miax_miaxoptions_mpf_mach_v1_0.heartbeat = {}

-- Display: Heartbeat
miax_miaxoptions_mpf_mach_v1_0.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
miax_miaxoptions_mpf_mach_v1_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_mpf_mach_v1_0.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
miax_miaxoptions_mpf_mach_v1_0.payload = {}

-- Dispatch: Payload
miax_miaxoptions_mpf_mach_v1_0.payload.dispatch = {
  [0] = miax_miaxoptions_mpf_mach_v1_0.heartbeat.dissect,
  [1] = miax_miaxoptions_mpf_mach_v1_0.start_of_session.dissect,
  [2] = miax_miaxoptions_mpf_mach_v1_0.end_of_session.dissect,
  [3] = miax_miaxoptions_mpf_mach_v1_0.application_message.dissect,
}

-- Dissect: Payload
miax_miaxoptions_mpf_mach_v1_0.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  local dissect = miax_miaxoptions_mpf_mach_v1_0.payload.dispatch[packet_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Packet Header
miax_miaxoptions_mpf_mach_v1_0.mach_packet_header = {}

-- Size: Mach Packet Header
miax_miaxoptions_mpf_mach_v1_0.mach_packet_header.size =
  miax_miaxoptions_mpf_mach_v1_0.sequence_number.size + 
  miax_miaxoptions_mpf_mach_v1_0.packet_length.size + 
  miax_miaxoptions_mpf_mach_v1_0.packet_type.size + 
  miax_miaxoptions_mpf_mach_v1_0.session_number.size

-- Display: Mach Packet Header
miax_miaxoptions_mpf_mach_v1_0.mach_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Packet Header
miax_miaxoptions_mpf_mach_v1_0.mach_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_miaxoptions_mpf_mach_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_miaxoptions_mpf_mach_v1_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_miaxoptions_mpf_mach_v1_0.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_miaxoptions_mpf_mach_v1_0.session_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mach Packet Header
miax_miaxoptions_mpf_mach_v1_0.mach_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.mach_packet_header, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_0.mach_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_0.mach_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_0.mach_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Mach Message
miax_miaxoptions_mpf_mach_v1_0.mach_message = {}

-- Display: Mach Message
miax_miaxoptions_mpf_mach_v1_0.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_miaxoptions_mpf_mach_v1_0.mach_message.fields = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset

  -- Mach Packet Header: Struct of 4 fields
  index, mach_packet_header = miax_miaxoptions_mpf_mach_v1_0.mach_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 2, 1):uint()

  -- Payload: Runtime Type with 4 branches
  index = miax_miaxoptions_mpf_mach_v1_0.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Mach Message
miax_miaxoptions_mpf_mach_v1_0.mach_message.dissect = function(buffer, offset, packet, parent, size_of_mach_message)
  local index = offset + size_of_mach_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0.fields.mach_message, buffer(offset, 0))
    local current = miax_miaxoptions_mpf_mach_v1_0.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)
    parent:set_len(size_of_mach_message)
    local display = miax_miaxoptions_mpf_mach_v1_0.mach_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_mpf_mach_v1_0.mach_message.fields(buffer, offset, packet, parent, size_of_mach_message)

    return index
  end
end

-- Udp Packet
miax_miaxoptions_mpf_mach_v1_0.udp_packet = {}

-- Verify required size of Udp packet
miax_miaxoptions_mpf_mach_v1_0.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_miaxoptions_mpf_mach_v1_0.mach_packet_header.size
end

-- Dissect Udp Packet
miax_miaxoptions_mpf_mach_v1_0.udp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_miaxoptions_mpf_mach_v1_0.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_miaxoptions_mpf_mach_v1_0.seconds.current = data.seconds.frames[packet.number]
  miax_miaxoptions_mpf_mach_v1_0.conversation.current = data

  local index = 0

  -- Dependency for Mach Message
  local end_of_payload = buffer:len()

  -- Mach Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Packet Length
    local packet_length = buffer(index + 8, 2):le_uint()

    -- Runtime Size Of: Mach Message
    index, mach_message = miax_miaxoptions_mpf_mach_v1_0.mach_message.dissect(buffer, index, packet, parent, packet_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_miaxoptions_mpf_mach_v1_0.init()
  miax_miaxoptions_mpf_mach_v1_0.seconds.current = nil
  miax_miaxoptions_mpf_mach_v1_0.conversation.current = nil
  miax_miaxoptions_mpf_mach_v1_0.conversation.flows = {}
end

-- Dissector for Miax MiaxOptions Mpf Mach 1.0
function omi_miax_miaxoptions_mpf_mach_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_miax_miaxoptions_mpf_mach_v1_0.name

  if packet.port_type == 3 then
    -- Dissect protocol
    local protocol = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0, buffer(), omi_miax_miaxoptions_mpf_mach_v1_0.description, "("..buffer:len().." Bytes)")
    return miax_miaxoptions_mpf_mach_v1_0.udp_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 2 then
    -- Dissect protocol
    local protocol = parent:add(omi_miax_miaxoptions_mpf_mach_v1_0, buffer(), omi_miax_miaxoptions_mpf_mach_v1_0.description, "("..buffer:len().." Bytes)")
    return miax_miaxoptions_mpf_mach_v1_0.tcp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Udp Packet: would its message dispatch accept this frame?
miax_miaxoptions_mpf_mach_v1_0.udp_packet.fingerprint = function(buffer)
  if buffer:len() < 11 then
    return false
  end

  local packet_type = buffer(10, 1):uint()

  -- Heartbeat
  if packet_type == 0 then
    return true
  end

  -- Start Of Session
  if packet_type == 1 then
    return true
  end

  -- End Of Session
  if packet_type == 2 then
    return true
  end

  -- Application Message
  if packet_type == 3 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax MiaxOptions Mpf Mach 1.0 (Udp)
local function omi_miax_miaxoptions_mpf_mach_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_miaxoptions_mpf_mach_v1_0.udp_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp udp packet message dispatch
  if not miax_miaxoptions_mpf_mach_v1_0.udp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_miaxoptions_mpf_mach_v1_0
  omi_miax_miaxoptions_mpf_mach_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Miax MiaxOptions Mpf Mach 1.0 (Tcp)
local function omi_miax_miaxoptions_mpf_mach_v1_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_miaxoptions_mpf_mach_v1_0.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_miaxoptions_mpf_mach_v1_0
  omi_miax_miaxoptions_mpf_mach_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Miax MiaxOptions Mpf Mach 1.0
omi_miax_miaxoptions_mpf_mach_v1_0:register_heuristic("udp", omi_miax_miaxoptions_mpf_mach_v1_0_udp_heuristic)
omi_miax_miaxoptions_mpf_mach_v1_0:register_heuristic("tcp", omi_miax_miaxoptions_mpf_mach_v1_0_tcp_heuristic)

-- Register Miax MiaxOptions Mpf Mach 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_miax_miaxoptions_mpf_mach_v1_0)

-- Register Miax MiaxOptions Mpf Mach 1.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_miaxoptions_mpf_mach_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.0
--   Date: Tuesday, August 21, 2018
--   Specification: MIAX Product Feed v1.0_C.pdf
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
