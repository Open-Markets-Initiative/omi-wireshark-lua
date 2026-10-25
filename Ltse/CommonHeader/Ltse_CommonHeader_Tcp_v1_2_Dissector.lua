-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Ltse CommonHeader Tcp 1.2 Protocol
local omi_ltse_commonheader_tcp_v1_2 = Proto("Omi.Ltse.CommonHeader.Tcp.v1.2", "Ltse CommonHeader Tcp 1.2")

-- Protocol table
local ltse_commonheader_tcp_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Ltse CommonHeader Tcp 1.2 Fields
omi_ltse_commonheader_tcp_v1_2.fields.block_length = ProtoField.new("Block Length", "ltse.commonheader.tcp.v1.2.blocklength", ftypes.UINT16, nil, nil, nil, "Memx Udp Block length")
omi_ltse_commonheader_tcp_v1_2.fields.count = ProtoField.new("Count", "ltse.commonheader.tcp.v1.2.count", ftypes.UINT32, nil, nil, nil, "Total number of messages to include in the replay")
omi_ltse_commonheader_tcp_v1_2.fields.login_reject_code = ProtoField.new("Login Reject Code", "ltse.commonheader.tcp.v1.2.loginrejectcode", ftypes.STRING, nil, nil, nil, "The code for the rejection type")
omi_ltse_commonheader_tcp_v1_2.fields.max_sequence_number = ProtoField.new("Max Sequence Number", "ltse.commonheader.tcp.v1.2.maxsequencenumber", ftypes.UINT64, nil, nil, nil, "The maximum sequence number currently published on this stream")
omi_ltse_commonheader_tcp_v1_2.fields.message_count = ProtoField.new("Message Count", "ltse.commonheader.tcp.v1.2.messagecount", ftypes.UINT64, nil, nil, nil, "The number of messages which were sent in the replay")
omi_ltse_commonheader_tcp_v1_2.fields.message_length = ProtoField.new("Message Length", "ltse.commonheader.tcp.v1.2.messagelength", ftypes.UINT16, nil, nil, nil, "Total bytes following the header (does not include this header)")
omi_ltse_commonheader_tcp_v1_2.fields.message_type = ProtoField.new("Message Type", "ltse.commonheader.tcp.v1.2.messagetype", ftypes.UINT8, nil, nil, nil, "Code identifying this message type")
omi_ltse_commonheader_tcp_v1_2.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "ltse.commonheader.tcp.v1.2.nextsequencenumber", ftypes.UINT64, nil, nil, nil, "The first requested sequence number")
omi_ltse_commonheader_tcp_v1_2.fields.payload = ProtoField.new("Payload", "ltse.commonheader.tcp.v1.2.payload", ftypes.BYTES, nil, nil, nil, "Raw message bytes")
omi_ltse_commonheader_tcp_v1_2.fields.pending_message_count = ProtoField.new("Pending Message Count", "ltse.commonheader.tcp.v1.2.pendingmessagecount", ftypes.UINT32, nil, nil, nil, "The number of messages to be delivered in this replay")
omi_ltse_commonheader_tcp_v1_2.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "ltse.commonheader.tcp.v1.2.replayrejectcode", ftypes.STRING, nil, nil, nil, "The code for the rejection type")
omi_ltse_commonheader_tcp_v1_2.fields.schema_id = ProtoField.new("Schema Id", "ltse.commonheader.tcp.v1.2.schemaid", ftypes.UINT8, nil, nil, nil, "The identifier of a message schema")
omi_ltse_commonheader_tcp_v1_2.fields.session_id = ProtoField.new("Session Id", "ltse.commonheader.tcp.v1.2.sessionid", ftypes.UINT64, nil, nil, nil, "The identifier for the session for which data is desired")
omi_ltse_commonheader_tcp_v1_2.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "ltse.commonheader.tcp.v1.2.streamrejectcode", ftypes.STRING, nil, nil, nil, "The code for the rejection type")
omi_ltse_commonheader_tcp_v1_2.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "ltse.commonheader.tcp.v1.2.supportedrequestmode", ftypes.STRING, nil, nil, nil, "The request mode that this connection supports")
omi_ltse_commonheader_tcp_v1_2.fields.template_id = ProtoField.new("Template Id", "ltse.commonheader.tcp.v1.2.templateid", ftypes.UINT8, nil, nil, nil, "T8 Identifier of the message template")
omi_ltse_commonheader_tcp_v1_2.fields.token = ProtoField.new("Token", "ltse.commonheader.tcp.v1.2.token", ftypes.STRING, nil, nil, nil, "Login Token")
omi_ltse_commonheader_tcp_v1_2.fields.token_type = ProtoField.new("Token Type", "ltse.commonheader.tcp.v1.2.tokentype", ftypes.STRING, nil, nil, nil, "Login Token type")
omi_ltse_commonheader_tcp_v1_2.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "ltse.commonheader.tcp.v1.2.totalsequencecount", ftypes.UINT64, nil, nil, nil, "The count of messages that were sent on this stream")
omi_ltse_commonheader_tcp_v1_2.fields.version = ProtoField.new("Version", "ltse.commonheader.tcp.v1.2.version", ftypes.UINT16, nil, nil, nil, "The version number of the message schema that was used to encode a message")

-- Ltse CommonHeader Tcp 1.2 Framing
omi_ltse_commonheader_tcp_v1_2.fields.common_header = ProtoField.new("Common Header", "ltse.commonheader.tcp.v1.2.commonheader", ftypes.STRING, nil, nil, nil, "Tcp Common Header")
omi_ltse_commonheader_tcp_v1_2.fields.packet = ProtoField.new("Packet", "ltse.commonheader.tcp.v1.2.packet", ftypes.STRING, nil, nil, nil, "Memx Tcp Packet")
omi_ltse_commonheader_tcp_v1_2.fields.sbe_header = ProtoField.new("Sbe Header", "ltse.commonheader.tcp.v1.2.sbeheader", ftypes.STRING)
omi_ltse_commonheader_tcp_v1_2.fields.sbe_message = ProtoField.new("Sbe Message", "ltse.commonheader.tcp.v1.2.sbemessage", ftypes.STRING)

-- Ltse CommonHeader 1.2 Session Messages
omi_ltse_commonheader_tcp_v1_2.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "ltse.commonheader.tcp.v1.2.loginacceptedmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Login Accepted Message")
omi_ltse_commonheader_tcp_v1_2.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "ltse.commonheader.tcp.v1.2.loginrejectedmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Login Rejected Message")
omi_ltse_commonheader_tcp_v1_2.fields.login_request_message = ProtoField.new("Login Request Message", "ltse.commonheader.tcp.v1.2.loginrequestmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Login message")
omi_ltse_commonheader_tcp_v1_2.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "ltse.commonheader.tcp.v1.2.replayallrequestmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Replay All Request message")
omi_ltse_commonheader_tcp_v1_2.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "ltse.commonheader.tcp.v1.2.replaybeginmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Replay Begin Message")
omi_ltse_commonheader_tcp_v1_2.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "ltse.commonheader.tcp.v1.2.replaycompletemessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Replay Complete Message")
omi_ltse_commonheader_tcp_v1_2.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "ltse.commonheader.tcp.v1.2.replayrejectedmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Replay Rejected Message")
omi_ltse_commonheader_tcp_v1_2.fields.replay_request_message = ProtoField.new("Replay Request Message", "ltse.commonheader.tcp.v1.2.replayrequestmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Replay Request message")
omi_ltse_commonheader_tcp_v1_2.fields.sequenced_message = ProtoField.new("Sequenced Message", "ltse.commonheader.tcp.v1.2.sequencedmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp sequenced message")
omi_ltse_commonheader_tcp_v1_2.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "ltse.commonheader.tcp.v1.2.startofsessionmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Start of Session Message")
omi_ltse_commonheader_tcp_v1_2.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "ltse.commonheader.tcp.v1.2.streambeginmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Stream Begin Message")
omi_ltse_commonheader_tcp_v1_2.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "ltse.commonheader.tcp.v1.2.streamcompletemessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Stream Complete Message")
omi_ltse_commonheader_tcp_v1_2.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "ltse.commonheader.tcp.v1.2.streamrejectedmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Stream Rejected Message")
omi_ltse_commonheader_tcp_v1_2.fields.stream_request_message = ProtoField.new("Stream Request Message", "ltse.commonheader.tcp.v1.2.streamrequestmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp Stream Request message")
omi_ltse_commonheader_tcp_v1_2.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "ltse.commonheader.tcp.v1.2.unsequencedmessage", ftypes.STRING, nil, nil, nil, "Memx Tcp unsequenced message")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Ltse CommonHeader Tcp 1.2 Element Dissection Options
show.headers = true
show.session_messages = true
show.structs = true

-- Register Ltse CommonHeader Tcp 1.2 Show Options
omi_ltse_commonheader_tcp_v1_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_ltse_commonheader_tcp_v1_2.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_ltse_commonheader_tcp_v1_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_ltse_commonheader_tcp_v1_2.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_ltse_commonheader_tcp_v1_2.prefs.show_headers then
    show.headers = omi_ltse_commonheader_tcp_v1_2.prefs.show_headers
  end
  if show.session_messages ~= omi_ltse_commonheader_tcp_v1_2.prefs.show_session_messages then
    show.session_messages = omi_ltse_commonheader_tcp_v1_2.prefs.show_session_messages
  end
  if show.structs ~= omi_ltse_commonheader_tcp_v1_2.prefs.show_structs then
    show.structs = omi_ltse_commonheader_tcp_v1_2.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Ltse CommonHeader Tcp 1.2 Fields
-----------------------------------------------------------------------

-- Block Length
ltse_commonheader_tcp_v1_2.block_length = {}

-- Size: Block Length
ltse_commonheader_tcp_v1_2.block_length.size = 2

-- Display: Block Length
ltse_commonheader_tcp_v1_2.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
ltse_commonheader_tcp_v1_2.block_length.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_tcp_v1_2.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.block_length, range, value, display)

  return offset + length, value
end

-- Count
ltse_commonheader_tcp_v1_2.count = {}

-- Size: Count
ltse_commonheader_tcp_v1_2.count.size = 4

-- Display: Count
ltse_commonheader_tcp_v1_2.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
ltse_commonheader_tcp_v1_2.count.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_tcp_v1_2.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.count, range, value, display)

  return offset + length, value
end

-- Login Reject Code
ltse_commonheader_tcp_v1_2.login_reject_code = {}

-- Size: Login Reject Code
ltse_commonheader_tcp_v1_2.login_reject_code.size = 1

-- Display: Login Reject Code
ltse_commonheader_tcp_v1_2.login_reject_code.labels = {
  ["T"] = "Login Reject Code: Malformed Token (T)",
  ["U"] = "Login Reject Code: Token Type Unsupported (U)",
  ["V"] = "Login Reject Code: Token Type Invalid (V)",
  ["A"] = "Login Reject Code: Authorization Failed (A)",
}

ltse_commonheader_tcp_v1_2.login_reject_code.display = function(value)
  return ltse_commonheader_tcp_v1_2.login_reject_code.labels[value] or "Login Reject Code: Unknown("..value..")"
end

-- Dissect: Login Reject Code
ltse_commonheader_tcp_v1_2.login_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.login_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_commonheader_tcp_v1_2.login_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Max Sequence Number
ltse_commonheader_tcp_v1_2.max_sequence_number = {}

-- Size: Max Sequence Number
ltse_commonheader_tcp_v1_2.max_sequence_number.size = 8

-- Display: Max Sequence Number
ltse_commonheader_tcp_v1_2.max_sequence_number.display = function(value)
  return "Max Sequence Number: "..value
end

-- Dissect: Max Sequence Number
ltse_commonheader_tcp_v1_2.max_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.max_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_commonheader_tcp_v1_2.max_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.max_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Count
ltse_commonheader_tcp_v1_2.message_count = {}

-- Size: Message Count
ltse_commonheader_tcp_v1_2.message_count.size = 8

-- Display: Message Count
ltse_commonheader_tcp_v1_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
ltse_commonheader_tcp_v1_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_commonheader_tcp_v1_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
ltse_commonheader_tcp_v1_2.message_length = {}

-- Size: Message Length
ltse_commonheader_tcp_v1_2.message_length.size = 2

-- Display: Message Length
ltse_commonheader_tcp_v1_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
ltse_commonheader_tcp_v1_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_tcp_v1_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
ltse_commonheader_tcp_v1_2.message_type = {}

-- Size: Message Type
ltse_commonheader_tcp_v1_2.message_type.size = 1

-- Display: Message Type
ltse_commonheader_tcp_v1_2.message_type.labels = {
  [100] = "Message Type: Login Request (100)",
  [101] = "Message Type: Replay Request (101)",
  [102] = "Message Type: Replay All Request (102)",
  [103] = "Message Type: Stream Request (103)",
  [104] = "Message Type: Unsequenced Message (104)",
  [1] = "Message Type: Login Accepted (1)",
  [2] = "Message Type: Login Rejected (2)",
  [3] = "Message Type: Start Of Session (3)",
  [4] = "Message Type: End Of Session (4)",
  [5] = "Message Type: Replay Begin (5)",
  [6] = "Message Type: Replay Rejected (6)",
  [7] = "Message Type: Replay Complete (7)",
  [8] = "Message Type: Stream Begin (8)",
  [9] = "Message Type: Stream Rejected (9)",
  [10] = "Message Type: Stream Complete (10)",
  [11] = "Message Type: Sequenced Message (11)",
}

ltse_commonheader_tcp_v1_2.message_type.display = function(value)
  return ltse_commonheader_tcp_v1_2.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
ltse_commonheader_tcp_v1_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_tcp_v1_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
ltse_commonheader_tcp_v1_2.next_sequence_number = {}

-- Size: Next Sequence Number
ltse_commonheader_tcp_v1_2.next_sequence_number.size = 8

-- Display: Next Sequence Number
ltse_commonheader_tcp_v1_2.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
ltse_commonheader_tcp_v1_2.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_commonheader_tcp_v1_2.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Payload
ltse_commonheader_tcp_v1_2.payload = {}

-- Display: Payload
ltse_commonheader_tcp_v1_2.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
ltse_commonheader_tcp_v1_2.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ltse_commonheader_tcp_v1_2.payload.display(value, packet, parent, size)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.payload, range, value, display)

  return offset + size, value
end

-- Pending Message Count
ltse_commonheader_tcp_v1_2.pending_message_count = {}

-- Size: Pending Message Count
ltse_commonheader_tcp_v1_2.pending_message_count.size = 4

-- Display: Pending Message Count
ltse_commonheader_tcp_v1_2.pending_message_count.display = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
ltse_commonheader_tcp_v1_2.pending_message_count.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.pending_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_tcp_v1_2.pending_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Replay Reject Code
ltse_commonheader_tcp_v1_2.replay_reject_code = {}

-- Size: Replay Reject Code
ltse_commonheader_tcp_v1_2.replay_reject_code.size = 1

-- Display: Replay Reject Code
ltse_commonheader_tcp_v1_2.replay_reject_code.labels = {
  ["R"] = "Replay Reject Code: Replay Requests Are Not Allowed (R)",
  ["A"] = "Replay Reject Code: Replay All Requests Are Not Allowed (A)",
  ["P"] = "Replay Reject Code: Not The Active Session (P)",
  ["S"] = "Replay Reject Code: Sequence Number Out Of Range (S)",
}

ltse_commonheader_tcp_v1_2.replay_reject_code.display = function(value)
  return ltse_commonheader_tcp_v1_2.replay_reject_code.labels[value] or "Replay Reject Code: Unknown("..value..")"
end

-- Dissect: Replay Reject Code
ltse_commonheader_tcp_v1_2.replay_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.replay_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_commonheader_tcp_v1_2.replay_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Schema Id
ltse_commonheader_tcp_v1_2.schema_id = {}

-- Size: Schema Id
ltse_commonheader_tcp_v1_2.schema_id.size = 1

-- Display: Schema Id
ltse_commonheader_tcp_v1_2.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
ltse_commonheader_tcp_v1_2.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_tcp_v1_2.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Session Id
ltse_commonheader_tcp_v1_2.session_id = {}

-- Size: Session Id
ltse_commonheader_tcp_v1_2.session_id.size = 8

-- Display: Session Id
ltse_commonheader_tcp_v1_2.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
ltse_commonheader_tcp_v1_2.session_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_commonheader_tcp_v1_2.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.session_id, range, value, display)

  return offset + length, value
end

-- Stream Reject Code
ltse_commonheader_tcp_v1_2.stream_reject_code = {}

-- Size: Stream Reject Code
ltse_commonheader_tcp_v1_2.stream_reject_code.size = 1

-- Display: Stream Reject Code
ltse_commonheader_tcp_v1_2.stream_reject_code.labels = {
  ["R"] = "Stream Reject Code: Stream Requests Are Not Allowed (R)",
  ["P"] = "Stream Reject Code: Not The Active Session (P)",
  ["S"] = "Stream Reject Code: Sequence Number Out Of Range (S)",
}

ltse_commonheader_tcp_v1_2.stream_reject_code.display = function(value)
  return ltse_commonheader_tcp_v1_2.stream_reject_code.labels[value] or "Stream Reject Code: Unknown("..value..")"
end

-- Dissect: Stream Reject Code
ltse_commonheader_tcp_v1_2.stream_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.stream_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_commonheader_tcp_v1_2.stream_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Supported Request Mode
ltse_commonheader_tcp_v1_2.supported_request_mode = {}

-- Size: Supported Request Mode
ltse_commonheader_tcp_v1_2.supported_request_mode.size = 1

-- Display: Supported Request Mode
ltse_commonheader_tcp_v1_2.supported_request_mode.labels = {
  ["S"] = "Supported Request Mode: Stream (S)",
  ["R"] = "Supported Request Mode: Replay (R)",
  ["T"] = "Supported Request Mode: Snapshot Mode (T)",
}

ltse_commonheader_tcp_v1_2.supported_request_mode.display = function(value)
  return ltse_commonheader_tcp_v1_2.supported_request_mode.labels[value] or "Supported Request Mode: Unknown("..value..")"
end

-- Dissect: Supported Request Mode
ltse_commonheader_tcp_v1_2.supported_request_mode.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.supported_request_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_commonheader_tcp_v1_2.supported_request_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Template Id
ltse_commonheader_tcp_v1_2.template_id = {}

-- Size: Template Id
ltse_commonheader_tcp_v1_2.template_id.size = 1

-- Display: Template Id
ltse_commonheader_tcp_v1_2.template_id.display = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
ltse_commonheader_tcp_v1_2.template_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_tcp_v1_2.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.template_id, range, value, display)

  return offset + length, value
end

-- Token
ltse_commonheader_tcp_v1_2.token = {}

-- Size: Token
ltse_commonheader_tcp_v1_2.token.size = 1

-- Display: Token
ltse_commonheader_tcp_v1_2.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
ltse_commonheader_tcp_v1_2.token.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_commonheader_tcp_v1_2.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.token, range, value, display)

  return offset + length, value
end

-- Token Type
ltse_commonheader_tcp_v1_2.token_type = {}

-- Size: Token Type
ltse_commonheader_tcp_v1_2.token_type.size = 1

-- Display: Token Type
ltse_commonheader_tcp_v1_2.token_type.display = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
ltse_commonheader_tcp_v1_2.token_type.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.token_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ltse_commonheader_tcp_v1_2.token_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.token_type, range, value, display)

  return offset + length, value
end

-- Total Sequence Count
ltse_commonheader_tcp_v1_2.total_sequence_count = {}

-- Size: Total Sequence Count
ltse_commonheader_tcp_v1_2.total_sequence_count.size = 8

-- Display: Total Sequence Count
ltse_commonheader_tcp_v1_2.total_sequence_count.display = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
ltse_commonheader_tcp_v1_2.total_sequence_count.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.total_sequence_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_commonheader_tcp_v1_2.total_sequence_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.total_sequence_count, range, value, display)

  return offset + length, value
end

-- Version
ltse_commonheader_tcp_v1_2.version = {}

-- Size: Version
ltse_commonheader_tcp_v1_2.version.size = 2

-- Display: Version
ltse_commonheader_tcp_v1_2.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
ltse_commonheader_tcp_v1_2.version.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_tcp_v1_2.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_tcp_v1_2.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_tcp_v1_2.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Ltse CommonHeader Tcp 1.2
-----------------------------------------------------------------------

-- Sbe Header
ltse_commonheader_tcp_v1_2.sbe_header = {}

-- Size: Sbe Header
ltse_commonheader_tcp_v1_2.sbe_header.size =
  ltse_commonheader_tcp_v1_2.block_length.size + 
  ltse_commonheader_tcp_v1_2.template_id.size + 
  ltse_commonheader_tcp_v1_2.schema_id.size + 
  ltse_commonheader_tcp_v1_2.version.size

-- Display: Sbe Header
ltse_commonheader_tcp_v1_2.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
ltse_commonheader_tcp_v1_2.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = ltse_commonheader_tcp_v1_2.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer
  index, template_id = ltse_commonheader_tcp_v1_2.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer
  index, schema_id = ltse_commonheader_tcp_v1_2.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer
  index, version = ltse_commonheader_tcp_v1_2.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
ltse_commonheader_tcp_v1_2.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.sbe_header, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
ltse_commonheader_tcp_v1_2.sbe_message = {}

-- Display: Sbe Message
ltse_commonheader_tcp_v1_2.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
ltse_commonheader_tcp_v1_2.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = ltse_commonheader_tcp_v1_2.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Block Length
  local block_length = buffer(index - 6, 2):uint()

  -- Runtime Size Of: Payload
  index, payload = ltse_commonheader_tcp_v1_2.payload.dissect(buffer, index, packet, parent, block_length)

  return index
end

-- Dissect: Sbe Message
ltse_commonheader_tcp_v1_2.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.sbe_message, buffer(offset, 0))
    local current = ltse_commonheader_tcp_v1_2.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = ltse_commonheader_tcp_v1_2.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    ltse_commonheader_tcp_v1_2.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Sequenced Message
ltse_commonheader_tcp_v1_2.sequenced_message = {}

-- Calculate size of: Sequenced Message
ltse_commonheader_tcp_v1_2.sequenced_message.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Sbe Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Sequenced Message
ltse_commonheader_tcp_v1_2.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
ltse_commonheader_tcp_v1_2.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = ltse_commonheader_tcp_v1_2.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Sequenced Message
ltse_commonheader_tcp_v1_2.sequenced_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.sequenced_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.sequenced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.sequenced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.sequenced_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Complete Message
ltse_commonheader_tcp_v1_2.stream_complete_message = {}

-- Size: Stream Complete Message
ltse_commonheader_tcp_v1_2.stream_complete_message.size =
  ltse_commonheader_tcp_v1_2.total_sequence_count.size

-- Display: Stream Complete Message
ltse_commonheader_tcp_v1_2.stream_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Complete Message
ltse_commonheader_tcp_v1_2.stream_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = ltse_commonheader_tcp_v1_2.total_sequence_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
ltse_commonheader_tcp_v1_2.stream_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.stream_complete_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.stream_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.stream_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.stream_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Rejected Message
ltse_commonheader_tcp_v1_2.stream_rejected_message = {}

-- Size: Stream Rejected Message
ltse_commonheader_tcp_v1_2.stream_rejected_message.size =
  ltse_commonheader_tcp_v1_2.stream_reject_code.size

-- Display: Stream Rejected Message
ltse_commonheader_tcp_v1_2.stream_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Rejected Message
ltse_commonheader_tcp_v1_2.stream_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = ltse_commonheader_tcp_v1_2.stream_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
ltse_commonheader_tcp_v1_2.stream_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.stream_rejected_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.stream_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.stream_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.stream_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Begin Message
ltse_commonheader_tcp_v1_2.stream_begin_message = {}

-- Size: Stream Begin Message
ltse_commonheader_tcp_v1_2.stream_begin_message.size =
  ltse_commonheader_tcp_v1_2.next_sequence_number.size + 
  ltse_commonheader_tcp_v1_2.max_sequence_number.size

-- Display: Stream Begin Message
ltse_commonheader_tcp_v1_2.stream_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Begin Message
ltse_commonheader_tcp_v1_2.stream_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = ltse_commonheader_tcp_v1_2.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Max Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, max_sequence_number = ltse_commonheader_tcp_v1_2.max_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
ltse_commonheader_tcp_v1_2.stream_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.stream_begin_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.stream_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.stream_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.stream_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Complete Message
ltse_commonheader_tcp_v1_2.replay_complete_message = {}

-- Size: Replay Complete Message
ltse_commonheader_tcp_v1_2.replay_complete_message.size =
  ltse_commonheader_tcp_v1_2.message_count.size

-- Display: Replay Complete Message
ltse_commonheader_tcp_v1_2.replay_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Complete Message
ltse_commonheader_tcp_v1_2.replay_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = ltse_commonheader_tcp_v1_2.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
ltse_commonheader_tcp_v1_2.replay_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.replay_complete_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.replay_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.replay_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.replay_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Rejected Message
ltse_commonheader_tcp_v1_2.replay_rejected_message = {}

-- Size: Replay Rejected Message
ltse_commonheader_tcp_v1_2.replay_rejected_message.size =
  ltse_commonheader_tcp_v1_2.replay_reject_code.size

-- Display: Replay Rejected Message
ltse_commonheader_tcp_v1_2.replay_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Rejected Message
ltse_commonheader_tcp_v1_2.replay_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = ltse_commonheader_tcp_v1_2.replay_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
ltse_commonheader_tcp_v1_2.replay_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.replay_rejected_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.replay_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.replay_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.replay_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Begin Message
ltse_commonheader_tcp_v1_2.replay_begin_message = {}

-- Size: Replay Begin Message
ltse_commonheader_tcp_v1_2.replay_begin_message.size =
  ltse_commonheader_tcp_v1_2.next_sequence_number.size + 
  ltse_commonheader_tcp_v1_2.pending_message_count.size

-- Display: Replay Begin Message
ltse_commonheader_tcp_v1_2.replay_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Begin Message
ltse_commonheader_tcp_v1_2.replay_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = ltse_commonheader_tcp_v1_2.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = ltse_commonheader_tcp_v1_2.pending_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
ltse_commonheader_tcp_v1_2.replay_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.replay_begin_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.replay_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.replay_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.replay_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Session Message
ltse_commonheader_tcp_v1_2.start_of_session_message = {}

-- Size: Start Of Session Message
ltse_commonheader_tcp_v1_2.start_of_session_message.size =
  ltse_commonheader_tcp_v1_2.session_id.size

-- Display: Start Of Session Message
ltse_commonheader_tcp_v1_2.start_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Session Message
ltse_commonheader_tcp_v1_2.start_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = ltse_commonheader_tcp_v1_2.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
ltse_commonheader_tcp_v1_2.start_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.start_of_session_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.start_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.start_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.start_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Message
ltse_commonheader_tcp_v1_2.login_rejected_message = {}

-- Size: Login Rejected Message
ltse_commonheader_tcp_v1_2.login_rejected_message.size =
  ltse_commonheader_tcp_v1_2.login_reject_code.size

-- Display: Login Rejected Message
ltse_commonheader_tcp_v1_2.login_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
ltse_commonheader_tcp_v1_2.login_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = ltse_commonheader_tcp_v1_2.login_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
ltse_commonheader_tcp_v1_2.login_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.login_rejected_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.login_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.login_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.login_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Message
ltse_commonheader_tcp_v1_2.login_accepted_message = {}

-- Size: Login Accepted Message
ltse_commonheader_tcp_v1_2.login_accepted_message.size =
  ltse_commonheader_tcp_v1_2.supported_request_mode.size

-- Display: Login Accepted Message
ltse_commonheader_tcp_v1_2.login_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
ltse_commonheader_tcp_v1_2.login_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
  index, supported_request_mode = ltse_commonheader_tcp_v1_2.supported_request_mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
ltse_commonheader_tcp_v1_2.login_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.login_accepted_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.login_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.login_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.login_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
ltse_commonheader_tcp_v1_2.unsequenced_message = {}

-- Calculate size of: Unsequenced Message
ltse_commonheader_tcp_v1_2.unsequenced_message.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Sbe Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Unsequenced Message
ltse_commonheader_tcp_v1_2.unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Message
ltse_commonheader_tcp_v1_2.unsequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = ltse_commonheader_tcp_v1_2.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Unsequenced Message
ltse_commonheader_tcp_v1_2.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.unsequenced_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.unsequenced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.unsequenced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.unsequenced_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Request Message
ltse_commonheader_tcp_v1_2.stream_request_message = {}

-- Size: Stream Request Message
ltse_commonheader_tcp_v1_2.stream_request_message.size =
  ltse_commonheader_tcp_v1_2.session_id.size + 
  ltse_commonheader_tcp_v1_2.next_sequence_number.size

-- Display: Stream Request Message
ltse_commonheader_tcp_v1_2.stream_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Request Message
ltse_commonheader_tcp_v1_2.stream_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = ltse_commonheader_tcp_v1_2.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = ltse_commonheader_tcp_v1_2.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
ltse_commonheader_tcp_v1_2.stream_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.stream_request_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.stream_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.stream_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.stream_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay All Request Message
ltse_commonheader_tcp_v1_2.replay_all_request_message = {}

-- Size: Replay All Request Message
ltse_commonheader_tcp_v1_2.replay_all_request_message.size =
  ltse_commonheader_tcp_v1_2.session_id.size

-- Display: Replay All Request Message
ltse_commonheader_tcp_v1_2.replay_all_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay All Request Message
ltse_commonheader_tcp_v1_2.replay_all_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = ltse_commonheader_tcp_v1_2.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
ltse_commonheader_tcp_v1_2.replay_all_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.replay_all_request_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.replay_all_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.replay_all_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.replay_all_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
ltse_commonheader_tcp_v1_2.replay_request_message = {}

-- Size: Replay Request Message
ltse_commonheader_tcp_v1_2.replay_request_message.size =
  ltse_commonheader_tcp_v1_2.session_id.size + 
  ltse_commonheader_tcp_v1_2.next_sequence_number.size + 
  ltse_commonheader_tcp_v1_2.count.size

-- Display: Replay Request Message
ltse_commonheader_tcp_v1_2.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
ltse_commonheader_tcp_v1_2.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = ltse_commonheader_tcp_v1_2.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = ltse_commonheader_tcp_v1_2.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = ltse_commonheader_tcp_v1_2.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
ltse_commonheader_tcp_v1_2.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.replay_request_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
ltse_commonheader_tcp_v1_2.login_request_message = {}

-- Size: Login Request Message
ltse_commonheader_tcp_v1_2.login_request_message.size =
  ltse_commonheader_tcp_v1_2.token_type.size + 
  ltse_commonheader_tcp_v1_2.token.size

-- Display: Login Request Message
ltse_commonheader_tcp_v1_2.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
ltse_commonheader_tcp_v1_2.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = ltse_commonheader_tcp_v1_2.token_type.dissect(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = ltse_commonheader_tcp_v1_2.token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
ltse_commonheader_tcp_v1_2.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.login_request_message, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
ltse_commonheader_tcp_v1_2.data = {}

-- Dissect: Data
ltse_commonheader_tcp_v1_2.data.dispatch = {
  [100] = ltse_commonheader_tcp_v1_2.login_request_message.dissect,
  [101] = ltse_commonheader_tcp_v1_2.replay_request_message.dissect,
  [102] = ltse_commonheader_tcp_v1_2.replay_all_request_message.dissect,
  [103] = ltse_commonheader_tcp_v1_2.stream_request_message.dissect,
  [104] = ltse_commonheader_tcp_v1_2.unsequenced_message.dissect,
  [1] = ltse_commonheader_tcp_v1_2.login_accepted_message.dissect,
  [2] = ltse_commonheader_tcp_v1_2.login_rejected_message.dissect,
  [3] = ltse_commonheader_tcp_v1_2.start_of_session_message.dissect,
  [5] = ltse_commonheader_tcp_v1_2.replay_begin_message.dissect,
  [6] = ltse_commonheader_tcp_v1_2.replay_rejected_message.dissect,
  [7] = ltse_commonheader_tcp_v1_2.replay_complete_message.dissect,
  [8] = ltse_commonheader_tcp_v1_2.stream_begin_message.dissect,
  [9] = ltse_commonheader_tcp_v1_2.stream_rejected_message.dissect,
  [10] = ltse_commonheader_tcp_v1_2.stream_complete_message.dissect,
  [11] = ltse_commonheader_tcp_v1_2.sequenced_message.dissect,
}

ltse_commonheader_tcp_v1_2.data.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = ltse_commonheader_tcp_v1_2.data.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Common Header
ltse_commonheader_tcp_v1_2.common_header = {}

-- Size: Common Header
ltse_commonheader_tcp_v1_2.common_header.size =
  ltse_commonheader_tcp_v1_2.message_type.size + 
  ltse_commonheader_tcp_v1_2.message_length.size

-- Display: Common Header
ltse_commonheader_tcp_v1_2.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
ltse_commonheader_tcp_v1_2.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = ltse_commonheader_tcp_v1_2.message_type.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = ltse_commonheader_tcp_v1_2.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
ltse_commonheader_tcp_v1_2.common_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_tcp_v1_2.fields.common_header, buffer(offset, 0))
    local index = ltse_commonheader_tcp_v1_2.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_tcp_v1_2.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_tcp_v1_2.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
ltse_commonheader_tcp_v1_2.packet = {}

-- Verify required size of Tcp packet
ltse_commonheader_tcp_v1_2.packet.requiredsize = function(buffer)
  return buffer:len() >= ltse_commonheader_tcp_v1_2.common_header.size
end

-- Dissect Packet
ltse_commonheader_tcp_v1_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = ltse_commonheader_tcp_v1_2.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Data: Runtime Type with 15 branches
  index = ltse_commonheader_tcp_v1_2.data.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_ltse_commonheader_tcp_v1_2.init()
end

-- Dissector for Ltse CommonHeader Tcp 1.2
function omi_ltse_commonheader_tcp_v1_2.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_ltse_commonheader_tcp_v1_2.name

  local length = buffer:len()
  local index = 0

  -- Dissect each message the segment carries
  while index < length do
    local remaining = length - index

    -- The message length lives in the header: wait for the header before reading it
    if remaining < ltse_commonheader_tcp_v1_2.common_header.size then
      packet.desegment_offset = index
      packet.desegment_len = DESEGMENT_ONE_MORE_SEGMENT
      return length
    end

    local size = buffer(index + 1, 2):uint() + 3
    -- A message split across segments: ask TCP for exactly the bytes still missing
    if remaining < size then
      packet.desegment_offset = index
      packet.desegment_len = size - remaining
      return length
    end

    local protocol = parent:add(omi_ltse_commonheader_tcp_v1_2, buffer(index, size), omi_ltse_commonheader_tcp_v1_2.description, "("..size.." Bytes)")
    ltse_commonheader_tcp_v1_2.packet.dissect(buffer(index, size):tvb(), packet, protocol)
    protocol:set_len(size)
    index = index + size
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
ltse_commonheader_tcp_v1_2.packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local message_type = buffer(0, 1):uint()

  -- Login Request Message
  if message_type == 100 then
    return true
  end

  -- Replay Request Message
  if message_type == 101 then
    return true
  end

  -- Replay All Request Message
  if message_type == 102 then
    return true
  end

  -- Stream Request Message
  if message_type == 103 then
    return true
  end

  -- Unsequenced Message
  if message_type == 104 then
    return true
  end

  -- Login Accepted Message
  if message_type == 1 then
    return true
  end

  -- Login Rejected Message
  if message_type == 2 then
    return true
  end

  -- Start Of Session Message
  if message_type == 3 then
    return true
  end

  -- Replay Begin Message
  if message_type == 5 then
    return true
  end

  -- Replay Rejected Message
  if message_type == 6 then
    return true
  end

  -- Replay Complete Message
  if message_type == 7 then
    return true
  end

  -- Stream Begin Message
  if message_type == 8 then
    return true
  end

  -- Stream Rejected Message
  if message_type == 9 then
    return true
  end

  -- Stream Complete Message
  if message_type == 10 then
    return true
  end

  -- Sequenced Message
  if message_type == 11 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Ltse CommonHeader Tcp 1.2 (Tcp)
local function omi_ltse_commonheader_tcp_v1_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not ltse_commonheader_tcp_v1_2.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not ltse_commonheader_tcp_v1_2.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_ltse_commonheader_tcp_v1_2
  omi_ltse_commonheader_tcp_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Ltse CommonHeader Tcp 1.2
omi_ltse_commonheader_tcp_v1_2:register_heuristic("tcp", omi_ltse_commonheader_tcp_v1_2_tcp_heuristic)

-- Register Ltse CommonHeader Tcp 1.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_ltse_commonheader_tcp_v1_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Long-Term Stock Exchange
--   Version: 1.2
--   Date: Wednesday, December 13, 2023
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
