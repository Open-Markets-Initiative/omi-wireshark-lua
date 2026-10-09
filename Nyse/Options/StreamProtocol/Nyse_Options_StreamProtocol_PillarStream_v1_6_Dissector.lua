-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Options StreamProtocol PillarStream 1.6 Protocol
local omi_nyse_options_streamprotocol_pillarstream_v1_6 = Proto("Omi.Nyse.Options.StreamProtocol.PillarStream.v1.6", "Nyse Options StreamProtocol PillarStream 1.6")

-- Protocol table
local nyse_options_streamprotocol_pillarstream_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Options StreamProtocol PillarStream 1.6 Fields
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.access = ProtoField.new("Access", "nyse.options.streamprotocol.pillarstream.v1.6.access", ftypes.UINT8)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.client_sequenced_message = ProtoField.new("Client Sequenced Message", "nyse.options.streamprotocol.pillarstream.v1.6.clientsequencedmessage", ftypes.BYTES)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.end_seq = ProtoField.new("End Seq", "nyse.options.streamprotocol.pillarstream.v1.6.endseq", ftypes.UINT64)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.mic = ProtoField.new("Mic", "nyse.options.streamprotocol.pillarstream.v1.6.mic", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.mode = ProtoField.new("Mode", "nyse.options.streamprotocol.pillarstream.v1.6.mode", ftypes.UINT8)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.msg_length = ProtoField.new("Msg Length", "nyse.options.streamprotocol.pillarstream.v1.6.msglength", ftypes.UINT16)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.msg_type = ProtoField.new("Msg Type", "nyse.options.streamprotocol.pillarstream.v1.6.msgtype", ftypes.UINT16)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.next_seq = ProtoField.new("Next Seq", "nyse.options.streamprotocol.pillarstream.v1.6.nextseq", ftypes.UINT64)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.password = ProtoField.new("Password", "nyse.options.streamprotocol.pillarstream.v1.6.password", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.options.streamprotocol.pillarstream.v1.6.reserved4", ftypes.UINT32)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.seq = ProtoField.new("Seq", "nyse.options.streamprotocol.pillarstream.v1.6.seq", ftypes.UINT64)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.seq_msg_id = ProtoField.new("Seq Msg Id", "nyse.options.streamprotocol.pillarstream.v1.6.seqmsgid", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.seq_msg_length = ProtoField.new("Seq Msg Length", "nyse.options.streamprotocol.pillarstream.v1.6.seqmsglength", ftypes.UINT16)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.seq_msg_type = ProtoField.new("Seq Msg Type", "nyse.options.streamprotocol.pillarstream.v1.6.seqmsgtype", ftypes.UINT16)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.server_sequenced_message = ProtoField.new("Server Sequenced Message", "nyse.options.streamprotocol.pillarstream.v1.6.serversequencedmessage", ftypes.BYTES)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.sess = ProtoField.new("Sess", "nyse.options.streamprotocol.pillarstream.v1.6.sess", ftypes.UINT32)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.start_seq = ProtoField.new("Start Seq", "nyse.options.streamprotocol.pillarstream.v1.6.startseq", ftypes.UINT64)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.status = ProtoField.new("Status", "nyse.options.streamprotocol.pillarstream.v1.6.status", ftypes.UINT8)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.stream_id = ProtoField.new("Stream Id", "nyse.options.streamprotocol.pillarstream.v1.6.streamid", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.timestamp = ProtoField.new("Timestamp", "nyse.options.streamprotocol.pillarstream.v1.6.timestamp", ftypes.UINT64)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.user = ProtoField.new("User", "nyse.options.streamprotocol.pillarstream.v1.6.user", ftypes.UINT32)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.username = ProtoField.new("Username", "nyse.options.streamprotocol.pillarstream.v1.6.username", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.version = ProtoField.new("Version", "nyse.options.streamprotocol.pillarstream.v1.6.version", ftypes.STRING)

-- Nyse Options StreamProtocol PillarStream 1.6 Framing
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.client_pillar_message = ProtoField.new("Client Pillar Message", "nyse.options.streamprotocol.pillarstream.v1.6.clientpillarmessage", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.msg_header = ProtoField.new("Msg Header", "nyse.options.streamprotocol.pillarstream.v1.6.msgheader", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.seq_msg_header = ProtoField.new("Seq Msg Header", "nyse.options.streamprotocol.pillarstream.v1.6.seqmsgheader", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.server_pillar_message = ProtoField.new("Server Pillar Message", "nyse.options.streamprotocol.pillarstream.v1.6.serverpillarmessage", ftypes.STRING)

-- Nyse Options StreamProtocol 1.6 Session Messages
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.client_seq_msg = ProtoField.new("Client Seq Msg", "nyse.options.streamprotocol.pillarstream.v1.6.clientseqmsg", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.close = ProtoField.new("Close", "nyse.options.streamprotocol.pillarstream.v1.6.close", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.close_response = ProtoField.new("Close Response", "nyse.options.streamprotocol.pillarstream.v1.6.closeresponse", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.heartbeat = ProtoField.new("Heartbeat", "nyse.options.streamprotocol.pillarstream.v1.6.heartbeat", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.login_message = ProtoField.new("Login Message", "nyse.options.streamprotocol.pillarstream.v1.6.loginmessage", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.login_response = ProtoField.new("Login Response", "nyse.options.streamprotocol.pillarstream.v1.6.loginresponse", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.open = ProtoField.new("Open", "nyse.options.streamprotocol.pillarstream.v1.6.open", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.open_response = ProtoField.new("Open Response", "nyse.options.streamprotocol.pillarstream.v1.6.openresponse", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.server_seq_msg = ProtoField.new("Server Seq Msg", "nyse.options.streamprotocol.pillarstream.v1.6.serverseqmsg", ftypes.STRING)
omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.stream_avail = ProtoField.new("Stream Avail", "nyse.options.streamprotocol.pillarstream.v1.6.streamavail", ftypes.STRING)

-----------------------------------------------------------------------
-- Nyse Options StreamProtocol PillarStream 1.6 Formatting
-----------------------------------------------------------------------

-- assumed connection role
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Options StreamProtocol PillarStream 1.6 Element Dissection Options
show.structs = true
show.session_messages = true
show.headers = true

-- Register Nyse Options StreamProtocol PillarStream 1.6 Show Options
omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.show_headers then
    show.headers = omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.show_headers
  end
  if show.session_messages ~= omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.show_session_messages then
    show.session_messages = omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.show_session_messages
  end
  if show.structs ~= omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.show_structs then
    show.structs = omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Nyse Options StreamProtocol PillarStream 1.6 Fields
-----------------------------------------------------------------------

-- Access
nyse_options_streamprotocol_pillarstream_v1_6.access = {}

-- Size: Access
nyse_options_streamprotocol_pillarstream_v1_6.access.size = 1

-- Display: Access
nyse_options_streamprotocol_pillarstream_v1_6.access.display = function(value)
  return "Access: "..value
end

-- Dissect: Access
nyse_options_streamprotocol_pillarstream_v1_6.access.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.access.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.access.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.access, range, value, display)

  return offset + length, value
end

-- Client Sequenced Message
nyse_options_streamprotocol_pillarstream_v1_6.client_sequenced_message = {}

-- Display: Client Sequenced Message
nyse_options_streamprotocol_pillarstream_v1_6.client_sequenced_message.display = function(value)
  return "Client Sequenced Message: "..value
end

-- Dissect runtime sized field: Client Sequenced Message
nyse_options_streamprotocol_pillarstream_v1_6.client_sequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_streamprotocol_pillarstream_v1_6.client_sequenced_message.display(value, packet, parent, size)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.client_sequenced_message, range, value, display)

  return offset + size, value
end

-- End Seq
nyse_options_streamprotocol_pillarstream_v1_6.end_seq = {}

-- Size: End Seq
nyse_options_streamprotocol_pillarstream_v1_6.end_seq.size = 8

-- Display: End Seq
nyse_options_streamprotocol_pillarstream_v1_6.end_seq.display = function(value)
  return "End Seq: "..value
end

-- Dissect: End Seq
nyse_options_streamprotocol_pillarstream_v1_6.end_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.end_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.end_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.end_seq, range, value, display)

  return offset + length, value
end

-- Mic
nyse_options_streamprotocol_pillarstream_v1_6.mic = {}

-- Size: Mic
nyse_options_streamprotocol_pillarstream_v1_6.mic.size = 4

-- Display: Mic
nyse_options_streamprotocol_pillarstream_v1_6.mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
nyse_options_streamprotocol_pillarstream_v1_6.mic.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.mic.size
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

  local display = nyse_options_streamprotocol_pillarstream_v1_6.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.mic, range, value, display)

  return offset + length, value
end

-- Mode
nyse_options_streamprotocol_pillarstream_v1_6.mode = {}

-- Size: Mode
nyse_options_streamprotocol_pillarstream_v1_6.mode.size = 1

-- Display: Mode
nyse_options_streamprotocol_pillarstream_v1_6.mode.display = function(value)
  return "Mode: "..value
end

-- Dissect: Mode
nyse_options_streamprotocol_pillarstream_v1_6.mode.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.mode, range, value, display)

  return offset + length, value
end

-- Msg Length
nyse_options_streamprotocol_pillarstream_v1_6.msg_length = {}

-- Size: Msg Length
nyse_options_streamprotocol_pillarstream_v1_6.msg_length.size = 2

-- Display: Msg Length
nyse_options_streamprotocol_pillarstream_v1_6.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
nyse_options_streamprotocol_pillarstream_v1_6.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
nyse_options_streamprotocol_pillarstream_v1_6.msg_type = {}

-- Size: Msg Type
nyse_options_streamprotocol_pillarstream_v1_6.msg_type.size = 2

-- Display: Msg Type
nyse_options_streamprotocol_pillarstream_v1_6.msg_type.display = function(value)
  if value == 0x0201 then
    return "Msg Type: Login (0x0201)"
  end
  if value == 0x0202 then
    return "Msg Type: Login Response (0x0202)"
  end
  if value == 0x0203 then
    return "Msg Type: Stream Avail (0x0203)"
  end
  if value == 0x0204 then
    return "Msg Type: Heartbeat (0x0204)"
  end
  if value == 0x0205 then
    return "Msg Type: Open (0x0205)"
  end
  if value == 0x0206 then
    return "Msg Type: Open Response (0x0206)"
  end
  if value == 0x0207 then
    return "Msg Type: Close (0x0207)"
  end
  if value == 0x0208 then
    return "Msg Type: Close Response (0x0208)"
  end
  if value == 0x0905 then
    return "Msg Type: Seq Msg (0x0905)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
nyse_options_streamprotocol_pillarstream_v1_6.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Next Seq
nyse_options_streamprotocol_pillarstream_v1_6.next_seq = {}

-- Size: Next Seq
nyse_options_streamprotocol_pillarstream_v1_6.next_seq.size = 8

-- Display: Next Seq
nyse_options_streamprotocol_pillarstream_v1_6.next_seq.display = function(value)
  return "Next Seq: "..value
end

-- Dissect: Next Seq
nyse_options_streamprotocol_pillarstream_v1_6.next_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.next_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.next_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.next_seq, range, value, display)

  return offset + length, value
end

-- Password
nyse_options_streamprotocol_pillarstream_v1_6.password = {}

-- Size: Password
nyse_options_streamprotocol_pillarstream_v1_6.password.size = 32

-- Display: Password
nyse_options_streamprotocol_pillarstream_v1_6.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
nyse_options_streamprotocol_pillarstream_v1_6.password.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.password.size
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

  local display = nyse_options_streamprotocol_pillarstream_v1_6.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.password, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_options_streamprotocol_pillarstream_v1_6.reserved_4 = {}

-- Size: Reserved 4
nyse_options_streamprotocol_pillarstream_v1_6.reserved_4.size = 4

-- Display: Reserved 4
nyse_options_streamprotocol_pillarstream_v1_6.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_options_streamprotocol_pillarstream_v1_6.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Seq
nyse_options_streamprotocol_pillarstream_v1_6.seq = {}

-- Size: Seq
nyse_options_streamprotocol_pillarstream_v1_6.seq.size = 8

-- Display: Seq
nyse_options_streamprotocol_pillarstream_v1_6.seq.display = function(value)
  return "Seq: "..value
end

-- Dissect: Seq
nyse_options_streamprotocol_pillarstream_v1_6.seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.seq, range, value, display)

  return offset + length, value
end

-- Seq Msg Length
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_length = {}

-- Size: Seq Msg Length
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_length.size = 2

-- Display: Seq Msg Length
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_length.display = function(value)
  return "Seq Msg Length: "..value
end

-- Dissect: Seq Msg Length
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.seq_msg_length, range, value, display)

  return offset + length, value
end

-- Seq Msg Type
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_type = {}

-- Size: Seq Msg Type
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_type.size = 2

-- Display: Seq Msg Type
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_type.display = function(value)
  return "Seq Msg Type: "..value
end

-- Dissect: Seq Msg Type
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.seq_msg_type, range, value, display)

  return offset + length, value
end

-- Server Sequenced Message
nyse_options_streamprotocol_pillarstream_v1_6.server_sequenced_message = {}

-- Display: Server Sequenced Message
nyse_options_streamprotocol_pillarstream_v1_6.server_sequenced_message.display = function(value)
  return "Server Sequenced Message: "..value
end

-- Dissect runtime sized field: Server Sequenced Message
nyse_options_streamprotocol_pillarstream_v1_6.server_sequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_streamprotocol_pillarstream_v1_6.server_sequenced_message.display(value, packet, parent, size)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.server_sequenced_message, range, value, display)

  return offset + size, value
end

-- Sess
nyse_options_streamprotocol_pillarstream_v1_6.sess = {}

-- Size: Sess
nyse_options_streamprotocol_pillarstream_v1_6.sess.size = 4

-- Display: Sess
nyse_options_streamprotocol_pillarstream_v1_6.sess.display = function(value)
  return "Sess: "..value
end

-- Dissect: Sess
nyse_options_streamprotocol_pillarstream_v1_6.sess.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.sess.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.sess.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.sess, range, value, display)

  return offset + length, value
end

-- Start Seq
nyse_options_streamprotocol_pillarstream_v1_6.start_seq = {}

-- Size: Start Seq
nyse_options_streamprotocol_pillarstream_v1_6.start_seq.size = 8

-- Display: Start Seq
nyse_options_streamprotocol_pillarstream_v1_6.start_seq.display = function(value)
  return "Start Seq: "..value
end

-- Dissect: Start Seq
nyse_options_streamprotocol_pillarstream_v1_6.start_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.start_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.start_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.start_seq, range, value, display)

  return offset + length, value
end

-- Status
nyse_options_streamprotocol_pillarstream_v1_6.status = {}

-- Size: Status
nyse_options_streamprotocol_pillarstream_v1_6.status.size = 1

-- Display: Status
nyse_options_streamprotocol_pillarstream_v1_6.status.display = function(value)
  if value == 0 then
    return "Status: Request Processed Successfully (0)"
  end
  if value == 18 then
    return "Status: Not Logged In (18)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_options_streamprotocol_pillarstream_v1_6.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.status, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_options_streamprotocol_pillarstream_v1_6.timestamp = {}

-- Size: Timestamp
nyse_options_streamprotocol_pillarstream_v1_6.timestamp.size = 8

-- Display: Timestamp
nyse_options_streamprotocol_pillarstream_v1_6.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
nyse_options_streamprotocol_pillarstream_v1_6.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.timestamp, range, value, display)

  return offset + length, value
end

-- User
nyse_options_streamprotocol_pillarstream_v1_6.user = {}

-- Size: User
nyse_options_streamprotocol_pillarstream_v1_6.user.size = 4

-- Display: User
nyse_options_streamprotocol_pillarstream_v1_6.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
nyse_options_streamprotocol_pillarstream_v1_6.user.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.user.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillarstream_v1_6.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.user, range, value, display)

  return offset + length, value
end

-- Username
nyse_options_streamprotocol_pillarstream_v1_6.username = {}

-- Size: Username
nyse_options_streamprotocol_pillarstream_v1_6.username.size = 16

-- Display: Username
nyse_options_streamprotocol_pillarstream_v1_6.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
nyse_options_streamprotocol_pillarstream_v1_6.username.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.username.size
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

  local display = nyse_options_streamprotocol_pillarstream_v1_6.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.username, range, value, display)

  return offset + length, value
end

-- Version
nyse_options_streamprotocol_pillarstream_v1_6.version = {}

-- Size: Version
nyse_options_streamprotocol_pillarstream_v1_6.version.size = 20

-- Display: Version
nyse_options_streamprotocol_pillarstream_v1_6.version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Version: No Value"
  end

  return "Version: "..value
end

-- Dissect: Version
nyse_options_streamprotocol_pillarstream_v1_6.version.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillarstream_v1_6.version.size
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

  local display = nyse_options_streamprotocol_pillarstream_v1_6.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse Options StreamProtocol PillarStream 1.6
-----------------------------------------------------------------------

-- Seq Msg Header
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_header = {}

-- Size: Seq Msg Header
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_header.size =
  nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_type.size + 
  nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_length.size

-- Display: Seq Msg Header
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Header
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Type: 2 Byte Unsigned Fixed Width Integer
  index, seq_msg_type = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_type.dissect(buffer, index, packet, parent)

  -- Seq Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, seq_msg_length = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Header
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.seq_msg_header, buffer(offset, 0))
    local index = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Stream Id
nyse_options_streamprotocol_pillarstream_v1_6.stream_id = {}

-- Size: Stream Id
nyse_options_streamprotocol_pillarstream_v1_6.stream_id.size =
  nyse_options_streamprotocol_pillarstream_v1_6.sess.size + 
  nyse_options_streamprotocol_pillarstream_v1_6.user.size

-- Display: Stream Id
nyse_options_streamprotocol_pillarstream_v1_6.stream_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Id
nyse_options_streamprotocol_pillarstream_v1_6.stream_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sess: 4 Byte Unsigned Fixed Width Integer
  index, sess = nyse_options_streamprotocol_pillarstream_v1_6.sess.dissect(buffer, index, packet, parent)

  -- User: 4 Byte Unsigned Fixed Width Integer
  index, user = nyse_options_streamprotocol_pillarstream_v1_6.user.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id
nyse_options_streamprotocol_pillarstream_v1_6.stream_id.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.stream_id, buffer(offset, 0))
    local index = nyse_options_streamprotocol_pillarstream_v1_6.stream_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.stream_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_streamprotocol_pillarstream_v1_6.stream_id.fields(buffer, offset, packet, parent)
  end
end

-- Seq Msg Id
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_id = {}

-- Size: Seq Msg Id
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_id.size =
  nyse_options_streamprotocol_pillarstream_v1_6.stream_id.size + 
  nyse_options_streamprotocol_pillarstream_v1_6.seq.size

-- Display: Seq Msg Id
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Id
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillarstream_v1_6.stream_id.dissect(buffer, index, packet, parent)

  -- Seq: 8 Byte Unsigned Fixed Width Integer
  index, seq = nyse_options_streamprotocol_pillarstream_v1_6.seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Id
nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_id.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.seq_msg_id, buffer(offset, 0))
    local index = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_id.fields(buffer, offset, packet, parent)
  end
end

-- Msg Header
nyse_options_streamprotocol_pillarstream_v1_6.msg_header = {}

-- Size: Msg Header
nyse_options_streamprotocol_pillarstream_v1_6.msg_header.size =
  nyse_options_streamprotocol_pillarstream_v1_6.msg_type.size + 
  nyse_options_streamprotocol_pillarstream_v1_6.msg_length.size

-- Display: Msg Header
nyse_options_streamprotocol_pillarstream_v1_6.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
nyse_options_streamprotocol_pillarstream_v1_6.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, msg_type = nyse_options_streamprotocol_pillarstream_v1_6.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = nyse_options_streamprotocol_pillarstream_v1_6.msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
nyse_options_streamprotocol_pillarstream_v1_6.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.msg_header, buffer(offset, 0))
    local index = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_streamprotocol_pillarstream_v1_6.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Seq Msg
nyse_options_streamprotocol_pillarstream_v1_6.server_seq_msg = {}

-- Read runtime size of: Server Seq Msg
nyse_options_streamprotocol_pillarstream_v1_6.server_seq_msg.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Server Seq Msg
nyse_options_streamprotocol_pillarstream_v1_6.server_seq_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Seq Msg
nyse_options_streamprotocol_pillarstream_v1_6.server_seq_msg.fields = function(buffer, offset, packet, parent, size_of_server_seq_msg)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.dissect(buffer, index, packet, parent)

  -- Seq Msg Id: Struct of 2 fields
  index, seq_msg_id = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte Unsigned Fixed Width Integer
  index, reserved_4 = nyse_options_streamprotocol_pillarstream_v1_6.reserved_4.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_options_streamprotocol_pillarstream_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 2, 2):le_uint()

  -- Runtime Size Of: Server Sequenced Message
  local size_of_server_sequenced_message = seq_msg_length - 4

  -- Server Sequenced Message: 0 Byte
  index, server_sequenced_message = nyse_options_streamprotocol_pillarstream_v1_6.server_sequenced_message.dissect(buffer, index, packet, parent, size_of_server_sequenced_message)

  return index
end

-- Dissect: Server Seq Msg
nyse_options_streamprotocol_pillarstream_v1_6.server_seq_msg.dissect = function(buffer, offset, packet, parent, size_of_server_seq_msg)
  local size_of_server_seq_msg = nyse_options_streamprotocol_pillarstream_v1_6.server_seq_msg.size(buffer, offset)
  local index = offset + size_of_server_seq_msg

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.server_seq_msg, buffer(offset, 0))
    local current = nyse_options_streamprotocol_pillarstream_v1_6.server_seq_msg.fields(buffer, offset, packet, parent, size_of_server_seq_msg)
    parent:set_len(size_of_server_seq_msg)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.server_seq_msg.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_streamprotocol_pillarstream_v1_6.server_seq_msg.fields(buffer, offset, packet, parent, size_of_server_seq_msg)

    return index
  end
end

-- Close Response
nyse_options_streamprotocol_pillarstream_v1_6.close_response = {}

-- Read runtime size of: Close Response
nyse_options_streamprotocol_pillarstream_v1_6.close_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Close Response
nyse_options_streamprotocol_pillarstream_v1_6.close_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close Response
nyse_options_streamprotocol_pillarstream_v1_6.close_response.fields = function(buffer, offset, packet, parent, size_of_close_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillarstream_v1_6.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_options_streamprotocol_pillarstream_v1_6.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close Response
nyse_options_streamprotocol_pillarstream_v1_6.close_response.dissect = function(buffer, offset, packet, parent, size_of_close_response)
  local size_of_close_response = nyse_options_streamprotocol_pillarstream_v1_6.close_response.size(buffer, offset)
  local index = offset + size_of_close_response

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.close_response, buffer(offset, 0))
    local current = nyse_options_streamprotocol_pillarstream_v1_6.close_response.fields(buffer, offset, packet, parent, size_of_close_response)
    parent:set_len(size_of_close_response)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.close_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_streamprotocol_pillarstream_v1_6.close_response.fields(buffer, offset, packet, parent, size_of_close_response)

    return index
  end
end

-- Open Response
nyse_options_streamprotocol_pillarstream_v1_6.open_response = {}

-- Read runtime size of: Open Response
nyse_options_streamprotocol_pillarstream_v1_6.open_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Open Response
nyse_options_streamprotocol_pillarstream_v1_6.open_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Response
nyse_options_streamprotocol_pillarstream_v1_6.open_response.fields = function(buffer, offset, packet, parent, size_of_open_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillarstream_v1_6.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_options_streamprotocol_pillarstream_v1_6.status.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_options_streamprotocol_pillarstream_v1_6.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Response
nyse_options_streamprotocol_pillarstream_v1_6.open_response.dissect = function(buffer, offset, packet, parent, size_of_open_response)
  local size_of_open_response = nyse_options_streamprotocol_pillarstream_v1_6.open_response.size(buffer, offset)
  local index = offset + size_of_open_response

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.open_response, buffer(offset, 0))
    local current = nyse_options_streamprotocol_pillarstream_v1_6.open_response.fields(buffer, offset, packet, parent, size_of_open_response)
    parent:set_len(size_of_open_response)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.open_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_streamprotocol_pillarstream_v1_6.open_response.fields(buffer, offset, packet, parent, size_of_open_response)

    return index
  end
end

-- Heartbeat
nyse_options_streamprotocol_pillarstream_v1_6.heartbeat = {}

-- Read runtime size of: Heartbeat
nyse_options_streamprotocol_pillarstream_v1_6.heartbeat.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Heartbeat
nyse_options_streamprotocol_pillarstream_v1_6.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
nyse_options_streamprotocol_pillarstream_v1_6.heartbeat.fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
nyse_options_streamprotocol_pillarstream_v1_6.heartbeat.dissect = function(buffer, offset, packet, parent, size_of_heartbeat)
  local size_of_heartbeat = nyse_options_streamprotocol_pillarstream_v1_6.heartbeat.size(buffer, offset)
  local index = offset + size_of_heartbeat

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.heartbeat, buffer(offset, 0))
    local current = nyse_options_streamprotocol_pillarstream_v1_6.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)
    parent:set_len(size_of_heartbeat)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.heartbeat.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_streamprotocol_pillarstream_v1_6.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)

    return index
  end
end

-- Stream Avail
nyse_options_streamprotocol_pillarstream_v1_6.stream_avail = {}

-- Read runtime size of: Stream Avail
nyse_options_streamprotocol_pillarstream_v1_6.stream_avail.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Stream Avail
nyse_options_streamprotocol_pillarstream_v1_6.stream_avail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Avail
nyse_options_streamprotocol_pillarstream_v1_6.stream_avail.fields = function(buffer, offset, packet, parent, size_of_stream_avail)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillarstream_v1_6.stream_id.dissect(buffer, index, packet, parent)

  -- Next Seq: 8 Byte Unsigned Fixed Width Integer
  index, next_seq = nyse_options_streamprotocol_pillarstream_v1_6.next_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_options_streamprotocol_pillarstream_v1_6.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Avail
nyse_options_streamprotocol_pillarstream_v1_6.stream_avail.dissect = function(buffer, offset, packet, parent, size_of_stream_avail)
  local size_of_stream_avail = nyse_options_streamprotocol_pillarstream_v1_6.stream_avail.size(buffer, offset)
  local index = offset + size_of_stream_avail

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.stream_avail, buffer(offset, 0))
    local current = nyse_options_streamprotocol_pillarstream_v1_6.stream_avail.fields(buffer, offset, packet, parent, size_of_stream_avail)
    parent:set_len(size_of_stream_avail)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.stream_avail.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_streamprotocol_pillarstream_v1_6.stream_avail.fields(buffer, offset, packet, parent, size_of_stream_avail)

    return index
  end
end

-- Login Response
nyse_options_streamprotocol_pillarstream_v1_6.login_response = {}

-- Read runtime size of: Login Response
nyse_options_streamprotocol_pillarstream_v1_6.login_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Response
nyse_options_streamprotocol_pillarstream_v1_6.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
nyse_options_streamprotocol_pillarstream_v1_6.login_response.fields = function(buffer, offset, packet, parent, size_of_login_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.dissect(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_options_streamprotocol_pillarstream_v1_6.username.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_options_streamprotocol_pillarstream_v1_6.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
nyse_options_streamprotocol_pillarstream_v1_6.login_response.dissect = function(buffer, offset, packet, parent, size_of_login_response)
  local size_of_login_response = nyse_options_streamprotocol_pillarstream_v1_6.login_response.size(buffer, offset)
  local index = offset + size_of_login_response

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.login_response, buffer(offset, 0))
    local current = nyse_options_streamprotocol_pillarstream_v1_6.login_response.fields(buffer, offset, packet, parent, size_of_login_response)
    parent:set_len(size_of_login_response)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.login_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_streamprotocol_pillarstream_v1_6.login_response.fields(buffer, offset, packet, parent, size_of_login_response)

    return index
  end
end

-- Server Message
nyse_options_streamprotocol_pillarstream_v1_6.server_message = {}

-- Dissect: Server Message
nyse_options_streamprotocol_pillarstream_v1_6.server_message.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Login Response
  if msg_type == 0x0202 then
    return nyse_options_streamprotocol_pillarstream_v1_6.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Avail
  if msg_type == 0x0203 then
    return nyse_options_streamprotocol_pillarstream_v1_6.stream_avail.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if msg_type == 0x0204 then
    return nyse_options_streamprotocol_pillarstream_v1_6.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Response
  if msg_type == 0x0206 then
    return nyse_options_streamprotocol_pillarstream_v1_6.open_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close Response
  if msg_type == 0x0208 then
    return nyse_options_streamprotocol_pillarstream_v1_6.close_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Seq Msg
  if msg_type == 0x0905 then
    return nyse_options_streamprotocol_pillarstream_v1_6.server_seq_msg.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Pillar Message
nyse_options_streamprotocol_pillarstream_v1_6.server_pillar_message = {}

-- Verify required size of Tcp packet
nyse_options_streamprotocol_pillarstream_v1_6.server_pillar_message.requiredsize = function(buffer)
  return buffer:len() >= nyse_options_streamprotocol_pillarstream_v1_6.msg_type.size
end

-- Dissect Server Pillar Message
nyse_options_streamprotocol_pillarstream_v1_6.server_pillar_message.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency element: Msg Type
  local msg_type = buffer(index, 2):le_uint()

  -- Server Message: Runtime Type with 6 branches
  index = nyse_options_streamprotocol_pillarstream_v1_6.server_message.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Client Seq Msg
nyse_options_streamprotocol_pillarstream_v1_6.client_seq_msg = {}

-- Read runtime size of: Client Seq Msg
nyse_options_streamprotocol_pillarstream_v1_6.client_seq_msg.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Client Seq Msg
nyse_options_streamprotocol_pillarstream_v1_6.client_seq_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Seq Msg
nyse_options_streamprotocol_pillarstream_v1_6.client_seq_msg.fields = function(buffer, offset, packet, parent, size_of_client_seq_msg)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.dissect(buffer, index, packet, parent)

  -- Seq Msg Id: Struct of 2 fields
  index, seq_msg_id = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte Unsigned Fixed Width Integer
  index, reserved_4 = nyse_options_streamprotocol_pillarstream_v1_6.reserved_4.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_options_streamprotocol_pillarstream_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_options_streamprotocol_pillarstream_v1_6.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 2, 2):le_uint()

  -- Runtime Size Of: Client Sequenced Message
  local size_of_client_sequenced_message = seq_msg_length - 4

  -- Client Sequenced Message: 0 Byte
  index, client_sequenced_message = nyse_options_streamprotocol_pillarstream_v1_6.client_sequenced_message.dissect(buffer, index, packet, parent, size_of_client_sequenced_message)

  return index
end

-- Dissect: Client Seq Msg
nyse_options_streamprotocol_pillarstream_v1_6.client_seq_msg.dissect = function(buffer, offset, packet, parent, size_of_client_seq_msg)
  local size_of_client_seq_msg = nyse_options_streamprotocol_pillarstream_v1_6.client_seq_msg.size(buffer, offset)
  local index = offset + size_of_client_seq_msg

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.client_seq_msg, buffer(offset, 0))
    local current = nyse_options_streamprotocol_pillarstream_v1_6.client_seq_msg.fields(buffer, offset, packet, parent, size_of_client_seq_msg)
    parent:set_len(size_of_client_seq_msg)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.client_seq_msg.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_streamprotocol_pillarstream_v1_6.client_seq_msg.fields(buffer, offset, packet, parent, size_of_client_seq_msg)

    return index
  end
end

-- Close
nyse_options_streamprotocol_pillarstream_v1_6.close = {}

-- Read runtime size of: Close
nyse_options_streamprotocol_pillarstream_v1_6.close.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Close
nyse_options_streamprotocol_pillarstream_v1_6.close.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close
nyse_options_streamprotocol_pillarstream_v1_6.close.fields = function(buffer, offset, packet, parent, size_of_close)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillarstream_v1_6.stream_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close
nyse_options_streamprotocol_pillarstream_v1_6.close.dissect = function(buffer, offset, packet, parent, size_of_close)
  local size_of_close = nyse_options_streamprotocol_pillarstream_v1_6.close.size(buffer, offset)
  local index = offset + size_of_close

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.close, buffer(offset, 0))
    local current = nyse_options_streamprotocol_pillarstream_v1_6.close.fields(buffer, offset, packet, parent, size_of_close)
    parent:set_len(size_of_close)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.close.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_streamprotocol_pillarstream_v1_6.close.fields(buffer, offset, packet, parent, size_of_close)

    return index
  end
end

-- Open
nyse_options_streamprotocol_pillarstream_v1_6.open = {}

-- Read runtime size of: Open
nyse_options_streamprotocol_pillarstream_v1_6.open.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Open
nyse_options_streamprotocol_pillarstream_v1_6.open.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open
nyse_options_streamprotocol_pillarstream_v1_6.open.fields = function(buffer, offset, packet, parent, size_of_open)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillarstream_v1_6.stream_id.dissect(buffer, index, packet, parent)

  -- Start Seq: 8 Byte Unsigned Fixed Width Integer
  index, start_seq = nyse_options_streamprotocol_pillarstream_v1_6.start_seq.dissect(buffer, index, packet, parent)

  -- End Seq: 8 Byte Unsigned Fixed Width Integer
  index, end_seq = nyse_options_streamprotocol_pillarstream_v1_6.end_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_options_streamprotocol_pillarstream_v1_6.access.dissect(buffer, index, packet, parent)

  -- Mode: 1 Byte Unsigned Fixed Width Integer
  index, mode = nyse_options_streamprotocol_pillarstream_v1_6.mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open
nyse_options_streamprotocol_pillarstream_v1_6.open.dissect = function(buffer, offset, packet, parent, size_of_open)
  local size_of_open = nyse_options_streamprotocol_pillarstream_v1_6.open.size(buffer, offset)
  local index = offset + size_of_open

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.open, buffer(offset, 0))
    local current = nyse_options_streamprotocol_pillarstream_v1_6.open.fields(buffer, offset, packet, parent, size_of_open)
    parent:set_len(size_of_open)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.open.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_streamprotocol_pillarstream_v1_6.open.fields(buffer, offset, packet, parent, size_of_open)

    return index
  end
end

-- Login Message
nyse_options_streamprotocol_pillarstream_v1_6.login_message = {}

-- Read runtime size of: Login Message
nyse_options_streamprotocol_pillarstream_v1_6.login_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(offset + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Message
nyse_options_streamprotocol_pillarstream_v1_6.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
nyse_options_streamprotocol_pillarstream_v1_6.login_message.fields = function(buffer, offset, packet, parent, size_of_login_message)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillarstream_v1_6.msg_header.dissect(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_options_streamprotocol_pillarstream_v1_6.username.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = nyse_options_streamprotocol_pillarstream_v1_6.password.dissect(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = nyse_options_streamprotocol_pillarstream_v1_6.mic.dissect(buffer, index, packet, parent)

  -- Version: 20 Byte Ascii String
  index, version = nyse_options_streamprotocol_pillarstream_v1_6.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
nyse_options_streamprotocol_pillarstream_v1_6.login_message.dissect = function(buffer, offset, packet, parent, size_of_login_message)
  local size_of_login_message = nyse_options_streamprotocol_pillarstream_v1_6.login_message.size(buffer, offset)
  local index = offset + size_of_login_message

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6.fields.login_message, buffer(offset, 0))
    local current = nyse_options_streamprotocol_pillarstream_v1_6.login_message.fields(buffer, offset, packet, parent, size_of_login_message)
    parent:set_len(size_of_login_message)
    local display = nyse_options_streamprotocol_pillarstream_v1_6.login_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_streamprotocol_pillarstream_v1_6.login_message.fields(buffer, offset, packet, parent, size_of_login_message)

    return index
  end
end

-- Client Message
nyse_options_streamprotocol_pillarstream_v1_6.client_message = {}

-- Dissect: Client Message
nyse_options_streamprotocol_pillarstream_v1_6.client_message.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Login Message
  if msg_type == 0x0201 then
    return nyse_options_streamprotocol_pillarstream_v1_6.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if msg_type == 0x0204 then
    return nyse_options_streamprotocol_pillarstream_v1_6.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open
  if msg_type == 0x0205 then
    return nyse_options_streamprotocol_pillarstream_v1_6.open.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close
  if msg_type == 0x0207 then
    return nyse_options_streamprotocol_pillarstream_v1_6.close.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Seq Msg
  if msg_type == 0x0905 then
    return nyse_options_streamprotocol_pillarstream_v1_6.client_seq_msg.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Pillar Message
nyse_options_streamprotocol_pillarstream_v1_6.client_pillar_message = {}

-- Verify required size of Tcp packet
nyse_options_streamprotocol_pillarstream_v1_6.client_pillar_message.requiredsize = function(buffer)
  return buffer:len() >= nyse_options_streamprotocol_pillarstream_v1_6.msg_type.size
end

-- Dissect Client Pillar Message
nyse_options_streamprotocol_pillarstream_v1_6.client_pillar_message.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency element: Msg Type
  local msg_type = buffer(index, 2):le_uint()

  -- Client Message: Runtime Type with 5 branches
  index = nyse_options_streamprotocol_pillarstream_v1_6.client_message.dissect(buffer, index, packet, parent, msg_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_options_streamprotocol_pillarstream_v1_6.init()
end

-- Connection roles for Nyse Options StreamProtocol PillarStream 1.6: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local source = endpoint(packet.src, packet.src_port)
  local destination = endpoint(packet.dst, packet.dst_port)

  if source < destination then
    return source.." "..destination
  end

  return destination.." "..source
end


-- Connection role of the frame's sender
nyse_options_streamprotocol_pillarstream_v1_6.role = function(packet)
  if omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.assume_role == 1 then
    return "initiator"
  end

  if omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.assume_role == 2 then
    return "acceptor"
  end

  local acceptor_port = omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.acceptor_port

  if acceptor_port ~= 0 and packet.dst_port == acceptor_port then
    return "initiator"
  end

  if acceptor_port ~= 0 and packet.src_port == acceptor_port then
    return "acceptor"
  end

  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)

  if initiators[key] == nil then
    initiators[key] = sender
  end

  local sender_initiated = initiators[key] == sender

  if omi_nyse_options_streamprotocol_pillarstream_v1_6.prefs.swap_sides then
    sender_initiated = not sender_initiated
  end

  if swapped[key] then
    sender_initiated = not sender_initiated
  end

  if sender_initiated then
    return "initiator"
  end

  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
nyse_options_streamprotocol_pillarstream_v1_6.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nyse Options StreamProtocol PillarStream 1.6
function omi_nyse_options_streamprotocol_pillarstream_v1_6.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nyse_options_streamprotocol_pillarstream_v1_6.name

  local role = nyse_options_streamprotocol_pillarstream_v1_6.role(packet)
  local dissect = nyse_options_streamprotocol_pillarstream_v1_6.server_pillar_message.dissect
  if role == "initiator" then
    dissect = nyse_options_streamprotocol_pillarstream_v1_6.client_pillar_message.dissect
  end

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < nyse_options_streamprotocol_pillarstream_v1_6.msg_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index + 2, 2):le_uint()
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_nyse_options_streamprotocol_pillarstream_v1_6, buffer(index, size), omi_nyse_options_streamprotocol_pillarstream_v1_6.description, "("..size.." Bytes)")
    dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Pillar Message: would its message dispatch accept this frame?
nyse_options_streamprotocol_pillarstream_v1_6.client_pillar_message.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local msg_type = buffer(0, 2):le_uint()

  -- Login Message
  if msg_type == 0x0201 then
    return true
  end

  -- Heartbeat
  if msg_type == 0x0204 then
    return true
  end

  -- Open
  if msg_type == 0x0205 then
    return true
  end

  -- Close
  if msg_type == 0x0207 then
    return true
  end

  -- Client Seq Msg
  if msg_type == 0x0905 then
    return true
  end

  return false
end

-- Fingerprint of Server Pillar Message: would its message dispatch accept this frame?
nyse_options_streamprotocol_pillarstream_v1_6.server_pillar_message.fingerprint = function(buffer)
  if buffer:len() < 2 then
    return false
  end

  local msg_type = buffer(0, 2):le_uint()

  -- Login Response
  if msg_type == 0x0202 then
    return true
  end

  -- Stream Avail
  if msg_type == 0x0203 then
    return true
  end

  -- Heartbeat
  if msg_type == 0x0204 then
    return true
  end

  -- Open Response
  if msg_type == 0x0206 then
    return true
  end

  -- Close Response
  if msg_type == 0x0208 then
    return true
  end

  -- Server Seq Msg
  if msg_type == 0x0905 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse Options StreamProtocol PillarStream 1.6 (Tcp)
local function omi_nyse_options_streamprotocol_pillarstream_v1_6_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_options_streamprotocol_pillarstream_v1_6.client_pillar_message.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nyse_options_streamprotocol_pillarstream_v1_6.client_pillar_message.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_options_streamprotocol_pillarstream_v1_6
  omi_nyse_options_streamprotocol_pillarstream_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nyse Options StreamProtocol PillarStream 1.6 (Tcp)
local function omi_nyse_options_streamprotocol_pillarstream_v1_6_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_options_streamprotocol_pillarstream_v1_6.server_pillar_message.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nyse_options_streamprotocol_pillarstream_v1_6.server_pillar_message.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_options_streamprotocol_pillarstream_v1_6
  omi_nyse_options_streamprotocol_pillarstream_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nyse Options StreamProtocol PillarStream 1.6 (Tcp): apply the heuristic of the sender's connection role
local function omi_nyse_options_streamprotocol_pillarstream_v1_6_tcp_heuristic(buffer, packet, parent)
  local role = nyse_options_streamprotocol_pillarstream_v1_6.role(packet)
  local initiator = omi_nyse_options_streamprotocol_pillarstream_v1_6_tcp_initiator_heuristic
  local acceptor = omi_nyse_options_streamprotocol_pillarstream_v1_6_tcp_acceptor_heuristic

  local first, second = initiator, acceptor

  if role == "acceptor" then
    first, second = acceptor, initiator
  end

  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nyse_options_streamprotocol_pillarstream_v1_6.swap(packet)

  if second(buffer, packet, parent) then
    return true
  end

  nyse_options_streamprotocol_pillarstream_v1_6.swap(packet)

  return false
end

-- Register Heuristics for Nyse Options StreamProtocol PillarStream 1.6
omi_nyse_options_streamprotocol_pillarstream_v1_6:register_heuristic("tcp", omi_nyse_options_streamprotocol_pillarstream_v1_6_tcp_heuristic)

-- Register Nyse Options StreamProtocol PillarStream 1.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nyse_options_streamprotocol_pillarstream_v1_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.6
--   Date: Thursday, September 26, 2019
--   Specification: NYSE_Pillar_Stream_Protocol_Specification.pdf
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
