-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx MemxEquities CommonHeader Tcp 1.2 Protocol
local omi_memx_memxequities_commonheader_tcp_v1_2 = Proto("Omi.Memx.MemxEquities.CommonHeader.Tcp.v1.2", "Memx MemxEquities CommonHeader Tcp 1.2")

-- Protocol table
local memx_memxequities_commonheader_tcp_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx MemxEquities CommonHeader Tcp 1.2 Fields
omi_memx_memxequities_commonheader_tcp_v1_2.fields.count = ProtoField.new("Count", "memx.memxequities.commonheader.tcp.v1.2.count", ftypes.UINT32)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.login_reject_code = ProtoField.new("Login Reject Code", "memx.memxequities.commonheader.tcp.v1.2.loginrejectcode", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.max_sequence_number = ProtoField.new("Max Sequence Number", "memx.memxequities.commonheader.tcp.v1.2.maxsequencenumber", ftypes.UINT64)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.message_count = ProtoField.new("Message Count", "memx.memxequities.commonheader.tcp.v1.2.messagecount", ftypes.UINT64)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.message_length = ProtoField.new("Message Length", "memx.memxequities.commonheader.tcp.v1.2.messagelength", ftypes.UINT16)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.message_type = ProtoField.new("Message Type", "memx.memxequities.commonheader.tcp.v1.2.messagetype", ftypes.UINT8)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "memx.memxequities.commonheader.tcp.v1.2.nextsequencenumber", ftypes.UINT64)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.pending_message_count = ProtoField.new("Pending Message Count", "memx.memxequities.commonheader.tcp.v1.2.pendingmessagecount", ftypes.UINT32)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_reject_code = ProtoField.new("Replay Reject Code", "memx.memxequities.commonheader.tcp.v1.2.replayrejectcode", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.sbe_message = ProtoField.new("Sbe Message", "memx.memxequities.commonheader.tcp.v1.2.sbemessage", ftypes.BYTES)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.session_id = ProtoField.new("Session Id", "memx.memxequities.commonheader.tcp.v1.2.sessionid", ftypes.UINT64)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.stream_reject_code = ProtoField.new("Stream Reject Code", "memx.memxequities.commonheader.tcp.v1.2.streamrejectcode", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.supported_request_mode = ProtoField.new("Supported Request Mode", "memx.memxequities.commonheader.tcp.v1.2.supportedrequestmode", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.token = ProtoField.new("Token", "memx.memxequities.commonheader.tcp.v1.2.token", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.token_type = ProtoField.new("Token Type", "memx.memxequities.commonheader.tcp.v1.2.tokentype", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.total_sequence_count = ProtoField.new("Total Sequence Count", "memx.memxequities.commonheader.tcp.v1.2.totalsequencecount", ftypes.UINT64)

-- Memx MemxEquities CommonHeader Tcp 1.2 Framing
omi_memx_memxequities_commonheader_tcp_v1_2.fields.client_packet = ProtoField.new("Client Packet", "memx.memxequities.commonheader.tcp.v1.2.clientpacket", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.common_header = ProtoField.new("Common Header", "memx.memxequities.commonheader.tcp.v1.2.commonheader", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.server_packet = ProtoField.new("Server Packet", "memx.memxequities.commonheader.tcp.v1.2.serverpacket", ftypes.STRING)

-- Memx MemxEquities CommonHeader 1.2 Session Messages
omi_memx_memxequities_commonheader_tcp_v1_2.fields.login_accepted_message = ProtoField.new("Login Accepted Message", "memx.memxequities.commonheader.tcp.v1.2.loginacceptedmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.login_rejected_message = ProtoField.new("Login Rejected Message", "memx.memxequities.commonheader.tcp.v1.2.loginrejectedmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.login_request_message = ProtoField.new("Login Request Message", "memx.memxequities.commonheader.tcp.v1.2.loginrequestmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_all_request_message = ProtoField.new("Replay All Request Message", "memx.memxequities.commonheader.tcp.v1.2.replayallrequestmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_begin_message = ProtoField.new("Replay Begin Message", "memx.memxequities.commonheader.tcp.v1.2.replaybeginmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "memx.memxequities.commonheader.tcp.v1.2.replaycompletemessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_rejected_message = ProtoField.new("Replay Rejected Message", "memx.memxequities.commonheader.tcp.v1.2.replayrejectedmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_request_message = ProtoField.new("Replay Request Message", "memx.memxequities.commonheader.tcp.v1.2.replayrequestmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.memxequities.commonheader.tcp.v1.2.sequencedmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.start_of_session_message = ProtoField.new("Start Of Session Message", "memx.memxequities.commonheader.tcp.v1.2.startofsessionmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.stream_begin_message = ProtoField.new("Stream Begin Message", "memx.memxequities.commonheader.tcp.v1.2.streambeginmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.stream_complete_message = ProtoField.new("Stream Complete Message", "memx.memxequities.commonheader.tcp.v1.2.streamcompletemessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.stream_rejected_message = ProtoField.new("Stream Rejected Message", "memx.memxequities.commonheader.tcp.v1.2.streamrejectedmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.stream_request_message = ProtoField.new("Stream Request Message", "memx.memxequities.commonheader.tcp.v1.2.streamrequestmessage", ftypes.STRING)
omi_memx_memxequities_commonheader_tcp_v1_2.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "memx.memxequities.commonheader.tcp.v1.2.unsequencedmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Memx MemxEquities CommonHeader Tcp 1.2 Element Dissection Options
show.structs = true
show.headers = true
show.session_messages = true

-- Register Memx MemxEquities CommonHeader Tcp 1.2 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_memx_memxequities_commonheader_tcp_v1_2.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_memx_memxequities_commonheader_tcp_v1_2.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_memx_memxequities_commonheader_tcp_v1_2.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_memx_memxequities_commonheader_tcp_v1_2.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_memx_memxequities_commonheader_tcp_v1_2.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_memx_memxequities_commonheader_tcp_v1_2.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")

-- Handle changed preferences
function omi_memx_memxequities_commonheader_tcp_v1_2.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_memx_memxequities_commonheader_tcp_v1_2.prefs.show_headers then
    show.headers = omi_memx_memxequities_commonheader_tcp_v1_2.prefs.show_headers
  end
  if show.session_messages ~= omi_memx_memxequities_commonheader_tcp_v1_2.prefs.show_session_messages then
    show.session_messages = omi_memx_memxequities_commonheader_tcp_v1_2.prefs.show_session_messages
  end
  if show.structs ~= omi_memx_memxequities_commonheader_tcp_v1_2.prefs.show_structs then
    show.structs = omi_memx_memxequities_commonheader_tcp_v1_2.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Memx MemxEquities CommonHeader Tcp 1.2 Fields
-----------------------------------------------------------------------

-- Count
memx_memxequities_commonheader_tcp_v1_2.count = {}

-- Size: Count
memx_memxequities_commonheader_tcp_v1_2.count.size = 4

-- Display: Count
memx_memxequities_commonheader_tcp_v1_2.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
memx_memxequities_commonheader_tcp_v1_2.count.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_memxequities_commonheader_tcp_v1_2.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.count, range, value, display)

  return offset + length, value
end

-- Login Reject Code
memx_memxequities_commonheader_tcp_v1_2.login_reject_code = {}

-- Size: Login Reject Code
memx_memxequities_commonheader_tcp_v1_2.login_reject_code.size = 1

-- Display: Login Reject Code
memx_memxequities_commonheader_tcp_v1_2.login_reject_code.display = function(value)
  if value == "T" then
    return "Login Reject Code: Malformed Token (T)"
  end
  if value == "U" then
    return "Login Reject Code: Token Type Unsupported (U)"
  end
  if value == "V" then
    return "Login Reject Code: Token Type Invalid (V)"
  end
  if value == "A" then
    return "Login Reject Code: Authorization Failed (A)"
  end

  return "Login Reject Code: Unknown("..value..")"
end

-- Dissect: Login Reject Code
memx_memxequities_commonheader_tcp_v1_2.login_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.login_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_memxequities_commonheader_tcp_v1_2.login_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.login_reject_code, range, value, display)

  return offset + length, value
end

-- Max Sequence Number
memx_memxequities_commonheader_tcp_v1_2.max_sequence_number = {}

-- Size: Max Sequence Number
memx_memxequities_commonheader_tcp_v1_2.max_sequence_number.size = 8

-- Display: Max Sequence Number
memx_memxequities_commonheader_tcp_v1_2.max_sequence_number.display = function(value)
  return "Max Sequence Number: "..value
end

-- Dissect: Max Sequence Number
memx_memxequities_commonheader_tcp_v1_2.max_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.max_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_memxequities_commonheader_tcp_v1_2.max_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.max_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Count
memx_memxequities_commonheader_tcp_v1_2.message_count = {}

-- Size: Message Count
memx_memxequities_commonheader_tcp_v1_2.message_count.size = 8

-- Display: Message Count
memx_memxequities_commonheader_tcp_v1_2.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_memxequities_commonheader_tcp_v1_2.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_memxequities_commonheader_tcp_v1_2.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
memx_memxequities_commonheader_tcp_v1_2.message_length = {}

-- Size: Message Length
memx_memxequities_commonheader_tcp_v1_2.message_length.size = 2

-- Display: Message Length
memx_memxequities_commonheader_tcp_v1_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_memxequities_commonheader_tcp_v1_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_memxequities_commonheader_tcp_v1_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_memxequities_commonheader_tcp_v1_2.message_type = {}

-- Size: Message Type
memx_memxequities_commonheader_tcp_v1_2.message_type.size = 1

-- Display: Message Type
memx_memxequities_commonheader_tcp_v1_2.message_type.display = function(value)
  if value == 0 then
    return "Message Type: Heartbeat (0)"
  end
  if value == 100 then
    return "Message Type: Login Request (100)"
  end
  if value == 101 then
    return "Message Type: Replay Request (101)"
  end
  if value == 102 then
    return "Message Type: Replay All Request (102)"
  end
  if value == 103 then
    return "Message Type: Stream Request (103)"
  end
  if value == 104 then
    return "Message Type: Unsequenced Message (104)"
  end
  if value == 1 then
    return "Message Type: Login Accepted (1)"
  end
  if value == 2 then
    return "Message Type: Login Rejected (2)"
  end
  if value == 3 then
    return "Message Type: Start Of Session (3)"
  end
  if value == 4 then
    return "Message Type: End Of Session (4)"
  end
  if value == 5 then
    return "Message Type: Replay Begin (5)"
  end
  if value == 6 then
    return "Message Type: Replay Rejected (6)"
  end
  if value == 7 then
    return "Message Type: Replay Complete (7)"
  end
  if value == 8 then
    return "Message Type: Stream Begin (8)"
  end
  if value == 9 then
    return "Message Type: Stream Rejected (9)"
  end
  if value == 10 then
    return "Message Type: Stream Complete (10)"
  end
  if value == 11 then
    return "Message Type: Sequenced Message (11)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
memx_memxequities_commonheader_tcp_v1_2.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_memxequities_commonheader_tcp_v1_2.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
memx_memxequities_commonheader_tcp_v1_2.next_sequence_number = {}

-- Size: Next Sequence Number
memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.size = 8

-- Display: Next Sequence Number
memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Pending Message Count
memx_memxequities_commonheader_tcp_v1_2.pending_message_count = {}

-- Size: Pending Message Count
memx_memxequities_commonheader_tcp_v1_2.pending_message_count.size = 4

-- Display: Pending Message Count
memx_memxequities_commonheader_tcp_v1_2.pending_message_count.display = function(value)
  return "Pending Message Count: "..value
end

-- Dissect: Pending Message Count
memx_memxequities_commonheader_tcp_v1_2.pending_message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.pending_message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_memxequities_commonheader_tcp_v1_2.pending_message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.pending_message_count, range, value, display)

  return offset + length, value
end

-- Replay Reject Code
memx_memxequities_commonheader_tcp_v1_2.replay_reject_code = {}

-- Size: Replay Reject Code
memx_memxequities_commonheader_tcp_v1_2.replay_reject_code.size = 1

-- Display: Replay Reject Code
memx_memxequities_commonheader_tcp_v1_2.replay_reject_code.display = function(value)
  if value == "R" then
    return "Replay Reject Code: Replay Requests Are Not Allowed (R)"
  end
  if value == "A" then
    return "Replay Reject Code: Replay All Requests Are Not Allowed (A)"
  end
  if value == "P" then
    return "Replay Reject Code: Not The Active Session (P)"
  end
  if value == "S" then
    return "Replay Reject Code: Sequence Number Out Of Range (S)"
  end

  return "Replay Reject Code: Unknown("..value..")"
end

-- Dissect: Replay Reject Code
memx_memxequities_commonheader_tcp_v1_2.replay_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.replay_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_memxequities_commonheader_tcp_v1_2.replay_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_reject_code, range, value, display)

  return offset + length, value
end

-- Sbe Message
memx_memxequities_commonheader_tcp_v1_2.sbe_message = {}

-- Display: Sbe Message
memx_memxequities_commonheader_tcp_v1_2.sbe_message.display = function(value)
  return "Sbe Message: "..value
end

-- Dissect runtime sized field: Sbe Message
memx_memxequities_commonheader_tcp_v1_2.sbe_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = memx_memxequities_commonheader_tcp_v1_2.sbe_message.display(value, packet, parent, size)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.sbe_message, range, value, display)

  return offset + size, value
end

-- Session Id
memx_memxequities_commonheader_tcp_v1_2.session_id = {}

-- Size: Session Id
memx_memxequities_commonheader_tcp_v1_2.session_id.size = 8

-- Display: Session Id
memx_memxequities_commonheader_tcp_v1_2.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_memxequities_commonheader_tcp_v1_2.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_memxequities_commonheader_tcp_v1_2.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.session_id, range, value, display)

  return offset + length, value
end

-- Stream Reject Code
memx_memxequities_commonheader_tcp_v1_2.stream_reject_code = {}

-- Size: Stream Reject Code
memx_memxequities_commonheader_tcp_v1_2.stream_reject_code.size = 1

-- Display: Stream Reject Code
memx_memxequities_commonheader_tcp_v1_2.stream_reject_code.display = function(value)
  if value == "R" then
    return "Stream Reject Code: Stream Requests Are Not Allowed (R)"
  end
  if value == "P" then
    return "Stream Reject Code: Not The Active Session (P)"
  end
  if value == "S" then
    return "Stream Reject Code: Sequence Number Out Of Range (S)"
  end

  return "Stream Reject Code: Unknown("..value..")"
end

-- Dissect: Stream Reject Code
memx_memxequities_commonheader_tcp_v1_2.stream_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.stream_reject_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_memxequities_commonheader_tcp_v1_2.stream_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.stream_reject_code, range, value, display)

  return offset + length, value
end

-- Supported Request Mode
memx_memxequities_commonheader_tcp_v1_2.supported_request_mode = {}

-- Size: Supported Request Mode
memx_memxequities_commonheader_tcp_v1_2.supported_request_mode.size = 1

-- Display: Supported Request Mode
memx_memxequities_commonheader_tcp_v1_2.supported_request_mode.display = function(value)
  if value == "S" then
    return "Supported Request Mode: Stream (S)"
  end
  if value == "R" then
    return "Supported Request Mode: Replay (R)"
  end
  if value == "T" then
    return "Supported Request Mode: Snapshot Mode (T)"
  end

  return "Supported Request Mode: Unknown("..value..")"
end

-- Dissect: Supported Request Mode
memx_memxequities_commonheader_tcp_v1_2.supported_request_mode.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.supported_request_mode.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_memxequities_commonheader_tcp_v1_2.supported_request_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.supported_request_mode, range, value, display)

  return offset + length, value
end

-- Token
memx_memxequities_commonheader_tcp_v1_2.token = {}

-- Size: Token
memx_memxequities_commonheader_tcp_v1_2.token.size = 1

-- Display: Token
memx_memxequities_commonheader_tcp_v1_2.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
memx_memxequities_commonheader_tcp_v1_2.token.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_memxequities_commonheader_tcp_v1_2.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.token, range, value, display)

  return offset + length, value
end

-- Token Type
memx_memxequities_commonheader_tcp_v1_2.token_type = {}

-- Size: Token Type
memx_memxequities_commonheader_tcp_v1_2.token_type.size = 1

-- Display: Token Type
memx_memxequities_commonheader_tcp_v1_2.token_type.display = function(value)
  return "Token Type: "..value
end

-- Dissect: Token Type
memx_memxequities_commonheader_tcp_v1_2.token_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.token_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = memx_memxequities_commonheader_tcp_v1_2.token_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.token_type, range, value, display)

  return offset + length, value
end

-- Total Sequence Count
memx_memxequities_commonheader_tcp_v1_2.total_sequence_count = {}

-- Size: Total Sequence Count
memx_memxequities_commonheader_tcp_v1_2.total_sequence_count.size = 8

-- Display: Total Sequence Count
memx_memxequities_commonheader_tcp_v1_2.total_sequence_count.display = function(value)
  return "Total Sequence Count: "..value
end

-- Dissect: Total Sequence Count
memx_memxequities_commonheader_tcp_v1_2.total_sequence_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_memxequities_commonheader_tcp_v1_2.total_sequence_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_memxequities_commonheader_tcp_v1_2.total_sequence_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.total_sequence_count, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Memx MemxEquities CommonHeader Tcp 1.2
-----------------------------------------------------------------------

-- Sequenced Message
memx_memxequities_commonheader_tcp_v1_2.sequenced_message = {}

-- Calculate size of: Sequenced Message
memx_memxequities_commonheader_tcp_v1_2.sequenced_message.size = function(buffer, offset)
  local index = 0

  -- Remaining size of: Sbe Message
  index = index + (buffer:len() - (offset + index))

  return index
end

-- Display: Sequenced Message
memx_memxequities_commonheader_tcp_v1_2.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_memxequities_commonheader_tcp_v1_2.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = buffer:len() - (offset + index)

  -- Sbe Message: 0 Byte
  index, sbe_message = memx_memxequities_commonheader_tcp_v1_2.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Sequenced Message
memx_memxequities_commonheader_tcp_v1_2.sequenced_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.sequenced_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.sequenced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.sequenced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.sequenced_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Complete Message
memx_memxequities_commonheader_tcp_v1_2.stream_complete_message = {}

-- Size: Stream Complete Message
memx_memxequities_commonheader_tcp_v1_2.stream_complete_message.size =
  memx_memxequities_commonheader_tcp_v1_2.total_sequence_count.size

-- Display: Stream Complete Message
memx_memxequities_commonheader_tcp_v1_2.stream_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Complete Message
memx_memxequities_commonheader_tcp_v1_2.stream_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Sequence Count: 8 Byte Unsigned Fixed Width Integer
  index, total_sequence_count = memx_memxequities_commonheader_tcp_v1_2.total_sequence_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Complete Message
memx_memxequities_commonheader_tcp_v1_2.stream_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.stream_complete_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.stream_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.stream_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.stream_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Rejected Message
memx_memxequities_commonheader_tcp_v1_2.stream_rejected_message = {}

-- Size: Stream Rejected Message
memx_memxequities_commonheader_tcp_v1_2.stream_rejected_message.size =
  memx_memxequities_commonheader_tcp_v1_2.stream_reject_code.size

-- Display: Stream Rejected Message
memx_memxequities_commonheader_tcp_v1_2.stream_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Rejected Message
memx_memxequities_commonheader_tcp_v1_2.stream_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Reject Code: 1 Byte Ascii String Enum with 3 values
  index, stream_reject_code = memx_memxequities_commonheader_tcp_v1_2.stream_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Rejected Message
memx_memxequities_commonheader_tcp_v1_2.stream_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.stream_rejected_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.stream_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.stream_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.stream_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Begin Message
memx_memxequities_commonheader_tcp_v1_2.stream_begin_message = {}

-- Size: Stream Begin Message
memx_memxequities_commonheader_tcp_v1_2.stream_begin_message.size =
  memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.size + 
  memx_memxequities_commonheader_tcp_v1_2.max_sequence_number.size

-- Display: Stream Begin Message
memx_memxequities_commonheader_tcp_v1_2.stream_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Begin Message
memx_memxequities_commonheader_tcp_v1_2.stream_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Max Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, max_sequence_number = memx_memxequities_commonheader_tcp_v1_2.max_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Begin Message
memx_memxequities_commonheader_tcp_v1_2.stream_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.stream_begin_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.stream_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.stream_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.stream_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Complete Message
memx_memxequities_commonheader_tcp_v1_2.replay_complete_message = {}

-- Size: Replay Complete Message
memx_memxequities_commonheader_tcp_v1_2.replay_complete_message.size =
  memx_memxequities_commonheader_tcp_v1_2.message_count.size

-- Display: Replay Complete Message
memx_memxequities_commonheader_tcp_v1_2.replay_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Complete Message
memx_memxequities_commonheader_tcp_v1_2.replay_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 8 Byte Unsigned Fixed Width Integer
  index, message_count = memx_memxequities_commonheader_tcp_v1_2.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Complete Message
memx_memxequities_commonheader_tcp_v1_2.replay_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_complete_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.replay_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.replay_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.replay_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Rejected Message
memx_memxequities_commonheader_tcp_v1_2.replay_rejected_message = {}

-- Size: Replay Rejected Message
memx_memxequities_commonheader_tcp_v1_2.replay_rejected_message.size =
  memx_memxequities_commonheader_tcp_v1_2.replay_reject_code.size

-- Display: Replay Rejected Message
memx_memxequities_commonheader_tcp_v1_2.replay_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Rejected Message
memx_memxequities_commonheader_tcp_v1_2.replay_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replay Reject Code: 1 Byte Ascii String Enum with 4 values
  index, replay_reject_code = memx_memxequities_commonheader_tcp_v1_2.replay_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Rejected Message
memx_memxequities_commonheader_tcp_v1_2.replay_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_rejected_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.replay_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.replay_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.replay_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Begin Message
memx_memxequities_commonheader_tcp_v1_2.replay_begin_message = {}

-- Size: Replay Begin Message
memx_memxequities_commonheader_tcp_v1_2.replay_begin_message.size =
  memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.size + 
  memx_memxequities_commonheader_tcp_v1_2.pending_message_count.size

-- Display: Replay Begin Message
memx_memxequities_commonheader_tcp_v1_2.replay_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Begin Message
memx_memxequities_commonheader_tcp_v1_2.replay_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Pending Message Count: 4 Byte Unsigned Fixed Width Integer
  index, pending_message_count = memx_memxequities_commonheader_tcp_v1_2.pending_message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Begin Message
memx_memxequities_commonheader_tcp_v1_2.replay_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_begin_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.replay_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.replay_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.replay_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Session Message
memx_memxequities_commonheader_tcp_v1_2.start_of_session_message = {}

-- Size: Start Of Session Message
memx_memxequities_commonheader_tcp_v1_2.start_of_session_message.size =
  memx_memxequities_commonheader_tcp_v1_2.session_id.size

-- Display: Start Of Session Message
memx_memxequities_commonheader_tcp_v1_2.start_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Session Message
memx_memxequities_commonheader_tcp_v1_2.start_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_memxequities_commonheader_tcp_v1_2.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Session Message
memx_memxequities_commonheader_tcp_v1_2.start_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.start_of_session_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.start_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.start_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.start_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Message
memx_memxequities_commonheader_tcp_v1_2.login_rejected_message = {}

-- Size: Login Rejected Message
memx_memxequities_commonheader_tcp_v1_2.login_rejected_message.size =
  memx_memxequities_commonheader_tcp_v1_2.login_reject_code.size

-- Display: Login Rejected Message
memx_memxequities_commonheader_tcp_v1_2.login_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Message
memx_memxequities_commonheader_tcp_v1_2.login_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Reject Code: 1 Byte Ascii String Enum with 4 values
  index, login_reject_code = memx_memxequities_commonheader_tcp_v1_2.login_reject_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Message
memx_memxequities_commonheader_tcp_v1_2.login_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.login_rejected_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.login_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.login_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.login_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Message
memx_memxequities_commonheader_tcp_v1_2.login_accepted_message = {}

-- Size: Login Accepted Message
memx_memxequities_commonheader_tcp_v1_2.login_accepted_message.size =
  memx_memxequities_commonheader_tcp_v1_2.supported_request_mode.size

-- Display: Login Accepted Message
memx_memxequities_commonheader_tcp_v1_2.login_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Message
memx_memxequities_commonheader_tcp_v1_2.login_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Supported Request Mode: 1 Byte Ascii String Enum with 3 values
  index, supported_request_mode = memx_memxequities_commonheader_tcp_v1_2.supported_request_mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Message
memx_memxequities_commonheader_tcp_v1_2.login_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.login_accepted_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.login_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.login_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.login_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Server Data
memx_memxequities_commonheader_tcp_v1_2.server_data = {}

-- Dissect: Server Data
memx_memxequities_commonheader_tcp_v1_2.server_data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Accepted Message
  if message_type == 1 then
    return memx_memxequities_commonheader_tcp_v1_2.login_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Message
  if message_type == 2 then
    return memx_memxequities_commonheader_tcp_v1_2.login_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session Message
  if message_type == 3 then
    return memx_memxequities_commonheader_tcp_v1_2.start_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Begin Message
  if message_type == 5 then
    return memx_memxequities_commonheader_tcp_v1_2.replay_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Rejected Message
  if message_type == 6 then
    return memx_memxequities_commonheader_tcp_v1_2.replay_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 7 then
    return memx_memxequities_commonheader_tcp_v1_2.replay_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Begin Message
  if message_type == 8 then
    return memx_memxequities_commonheader_tcp_v1_2.stream_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Rejected Message
  if message_type == 9 then
    return memx_memxequities_commonheader_tcp_v1_2.stream_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Complete Message
  if message_type == 10 then
    return memx_memxequities_commonheader_tcp_v1_2.stream_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message
  if message_type == 11 then
    return memx_memxequities_commonheader_tcp_v1_2.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Common Header
memx_memxequities_commonheader_tcp_v1_2.common_header = {}

-- Size: Common Header
memx_memxequities_commonheader_tcp_v1_2.common_header.size =
  memx_memxequities_commonheader_tcp_v1_2.message_type.size + 
  memx_memxequities_commonheader_tcp_v1_2.message_length.size

-- Display: Common Header
memx_memxequities_commonheader_tcp_v1_2.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_memxequities_commonheader_tcp_v1_2.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, message_type = memx_memxequities_commonheader_tcp_v1_2.message_type.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_memxequities_commonheader_tcp_v1_2.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_memxequities_commonheader_tcp_v1_2.common_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.common_header, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Packet
memx_memxequities_commonheader_tcp_v1_2.server_packet = {}

-- Verify required size of Tcp packet
memx_memxequities_commonheader_tcp_v1_2.server_packet.requiredsize = function(buffer)
  return buffer:len() >= memx_memxequities_commonheader_tcp_v1_2.common_header.size
end

-- Dissect Server Packet
memx_memxequities_commonheader_tcp_v1_2.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = memx_memxequities_commonheader_tcp_v1_2.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Server Data: Runtime Type with 10 branches
  index = memx_memxequities_commonheader_tcp_v1_2.server_data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Unsequenced Message
memx_memxequities_commonheader_tcp_v1_2.unsequenced_message = {}

-- Calculate size of: Unsequenced Message
memx_memxequities_commonheader_tcp_v1_2.unsequenced_message.size = function(buffer, offset)
  local index = 0

  -- Remaining size of: Sbe Message
  index = index + (buffer:len() - (offset + index))

  return index
end

-- Display: Unsequenced Message
memx_memxequities_commonheader_tcp_v1_2.unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Message
memx_memxequities_commonheader_tcp_v1_2.unsequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = buffer:len() - (offset + index)

  -- Sbe Message: 0 Byte
  index, sbe_message = memx_memxequities_commonheader_tcp_v1_2.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Unsequenced Message
memx_memxequities_commonheader_tcp_v1_2.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.unsequenced_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.unsequenced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.unsequenced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.unsequenced_message.fields(buffer, offset, packet, parent)
  end
end

-- Stream Request Message
memx_memxequities_commonheader_tcp_v1_2.stream_request_message = {}

-- Size: Stream Request Message
memx_memxequities_commonheader_tcp_v1_2.stream_request_message.size =
  memx_memxequities_commonheader_tcp_v1_2.session_id.size + 
  memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.size

-- Display: Stream Request Message
memx_memxequities_commonheader_tcp_v1_2.stream_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Request Message
memx_memxequities_commonheader_tcp_v1_2.stream_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_memxequities_commonheader_tcp_v1_2.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Request Message
memx_memxequities_commonheader_tcp_v1_2.stream_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.stream_request_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.stream_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.stream_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.stream_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay All Request Message
memx_memxequities_commonheader_tcp_v1_2.replay_all_request_message = {}

-- Size: Replay All Request Message
memx_memxequities_commonheader_tcp_v1_2.replay_all_request_message.size =
  memx_memxequities_commonheader_tcp_v1_2.session_id.size

-- Display: Replay All Request Message
memx_memxequities_commonheader_tcp_v1_2.replay_all_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay All Request Message
memx_memxequities_commonheader_tcp_v1_2.replay_all_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_memxequities_commonheader_tcp_v1_2.session_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay All Request Message
memx_memxequities_commonheader_tcp_v1_2.replay_all_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_all_request_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.replay_all_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.replay_all_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.replay_all_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
memx_memxequities_commonheader_tcp_v1_2.replay_request_message = {}

-- Size: Replay Request Message
memx_memxequities_commonheader_tcp_v1_2.replay_request_message.size =
  memx_memxequities_commonheader_tcp_v1_2.session_id.size + 
  memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.size + 
  memx_memxequities_commonheader_tcp_v1_2.count.size

-- Display: Replay Request Message
memx_memxequities_commonheader_tcp_v1_2.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
memx_memxequities_commonheader_tcp_v1_2.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_memxequities_commonheader_tcp_v1_2.session_id.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = memx_memxequities_commonheader_tcp_v1_2.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Count: 4 Byte Unsigned Fixed Width Integer
  index, count = memx_memxequities_commonheader_tcp_v1_2.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
memx_memxequities_commonheader_tcp_v1_2.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.replay_request_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
memx_memxequities_commonheader_tcp_v1_2.login_request_message = {}

-- Size: Login Request Message
memx_memxequities_commonheader_tcp_v1_2.login_request_message.size =
  memx_memxequities_commonheader_tcp_v1_2.token_type.size + 
  memx_memxequities_commonheader_tcp_v1_2.token.size

-- Display: Login Request Message
memx_memxequities_commonheader_tcp_v1_2.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
memx_memxequities_commonheader_tcp_v1_2.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token Type: 1 Byte Ascii String
  index, token_type = memx_memxequities_commonheader_tcp_v1_2.token_type.dissect(buffer, index, packet, parent)

  -- Token: 1 Byte Ascii String
  index, token = memx_memxequities_commonheader_tcp_v1_2.token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
memx_memxequities_commonheader_tcp_v1_2.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2.fields.login_request_message, buffer(offset, 0))
    local index = memx_memxequities_commonheader_tcp_v1_2.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_memxequities_commonheader_tcp_v1_2.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_memxequities_commonheader_tcp_v1_2.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Data
memx_memxequities_commonheader_tcp_v1_2.client_data = {}

-- Dissect: Client Data
memx_memxequities_commonheader_tcp_v1_2.client_data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 100 then
    return memx_memxequities_commonheader_tcp_v1_2.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if message_type == 101 then
    return memx_memxequities_commonheader_tcp_v1_2.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay All Request Message
  if message_type == 102 then
    return memx_memxequities_commonheader_tcp_v1_2.replay_all_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Request Message
  if message_type == 103 then
    return memx_memxequities_commonheader_tcp_v1_2.stream_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Message
  if message_type == 104 then
    return memx_memxequities_commonheader_tcp_v1_2.unsequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet
memx_memxequities_commonheader_tcp_v1_2.client_packet = {}

-- Verify required size of Tcp packet
memx_memxequities_commonheader_tcp_v1_2.client_packet.requiredsize = function(buffer)
  return buffer:len() >= memx_memxequities_commonheader_tcp_v1_2.common_header.size
end

-- Dissect Client Packet
memx_memxequities_commonheader_tcp_v1_2.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 2 fields
  index, common_header = memx_memxequities_commonheader_tcp_v1_2.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):uint()

  -- Client Data: Runtime Type with 5 branches
  index = memx_memxequities_commonheader_tcp_v1_2.client_data.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_memxequities_commonheader_tcp_v1_2.init()
end

-- Connection roles for Memx MemxEquities CommonHeader Tcp 1.2: Client is the initiator, Server is the acceptor
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
  local a = endpoint(packet.src, packet.src_port)
  local b = endpoint(packet.dst, packet.dst_port)
  if a < b then
    return a.." "..b
  end
  return b.." "..a
end


-- Connection role of the frame's sender
memx_memxequities_commonheader_tcp_v1_2.role = function(packet)
  if omi_memx_memxequities_commonheader_tcp_v1_2.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_memx_memxequities_commonheader_tcp_v1_2.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_memx_memxequities_commonheader_tcp_v1_2.prefs.acceptor_port
  if port ~= 0 and packet.dst_port == port then
    return "initiator"
  end
  if port ~= 0 and packet.src_port == port then
    return "acceptor"
  end
  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)
  if initiators[key] == nil then
    initiators[key] = sender
  end
  local first = initiators[key] == sender
  if omi_memx_memxequities_commonheader_tcp_v1_2.prefs.swap_sides then
    first = not first
  end
  if swapped[key] then
    first = not first
  end
  if first then
    return "initiator"
  end
  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
memx_memxequities_commonheader_tcp_v1_2.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Memx MemxEquities CommonHeader Tcp 1.2
function omi_memx_memxequities_commonheader_tcp_v1_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_memxequities_commonheader_tcp_v1_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_memxequities_commonheader_tcp_v1_2, buffer(), omi_memx_memxequities_commonheader_tcp_v1_2.description, "("..buffer:len().." Bytes)")
  local role = memx_memxequities_commonheader_tcp_v1_2.role(packet)
  if role == "initiator" then
    return memx_memxequities_commonheader_tcp_v1_2.client_packet.dissect(buffer, packet, protocol)
  end
  return memx_memxequities_commonheader_tcp_v1_2.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
memx_memxequities_commonheader_tcp_v1_2.client_packet.fingerprint = function(buffer)
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

  return false
end


-- Fingerprint of Server Packet: would its message dispatch accept this frame?
memx_memxequities_commonheader_tcp_v1_2.server_packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end
  local message_type = buffer(0, 1):uint()

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

-- Dissector Heuristic for Memx MemxEquities CommonHeader Tcp 1.2 (Tcp)
local function omi_memx_memxequities_commonheader_tcp_v1_2_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_memxequities_commonheader_tcp_v1_2.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not memx_memxequities_commonheader_tcp_v1_2.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_memxequities_commonheader_tcp_v1_2
  omi_memx_memxequities_commonheader_tcp_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Memx MemxEquities CommonHeader Tcp 1.2 (Tcp)
local function omi_memx_memxequities_commonheader_tcp_v1_2_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_memxequities_commonheader_tcp_v1_2.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not memx_memxequities_commonheader_tcp_v1_2.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_memxequities_commonheader_tcp_v1_2
  omi_memx_memxequities_commonheader_tcp_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Memx MemxEquities CommonHeader Tcp 1.2 (Tcp): apply the heuristic of the sender's connection role
local function omi_memx_memxequities_commonheader_tcp_v1_2_tcp_heuristic(buffer, packet, parent)
  local role = memx_memxequities_commonheader_tcp_v1_2.role(packet)
  local first, second = omi_memx_memxequities_commonheader_tcp_v1_2_tcp_initiator_heuristic, omi_memx_memxequities_commonheader_tcp_v1_2_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  memx_memxequities_commonheader_tcp_v1_2.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  memx_memxequities_commonheader_tcp_v1_2.swap(packet)

  return false
end

-- Register Heuristics for Memx MemxEquities CommonHeader Tcp 1.2
omi_memx_memxequities_commonheader_tcp_v1_2:register_heuristic("tcp", omi_memx_memxequities_commonheader_tcp_v1_2_tcp_heuristic)
-- Register Memx MemxEquities CommonHeader Tcp 1.2 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_memx_memxequities_commonheader_tcp_v1_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The Members Exchange
--   Version: 1.2
--   Date: Thursday, October 23, 2025
--   Specification: MEMX-TCP-v1_2.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
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
