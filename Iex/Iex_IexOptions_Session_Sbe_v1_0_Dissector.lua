-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Iex IexOptions Session Sbe 1.0 Protocol
local omi_iex_iexoptions_session_sbe_v1_0 = Proto("Omi.Iex.IexOptions.Session.Sbe.v1.0", "Iex IexOptions Session Sbe 1.0")

-- Protocol table
local iex_iexoptions_session_sbe_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Iex IexOptions Session Sbe 1.0 Fields
omi_iex_iexoptions_session_sbe_v1_0.fields.block_length = ProtoField.new("Block Length", "iex.iexoptions.session.sbe.v1.0.blocklength", ftypes.UINT16)
omi_iex_iexoptions_session_sbe_v1_0.fields.block_length_uint_8 = ProtoField.new("Block Length uint 8", "iex.iexoptions.session.sbe.v1.0.blocklengthuint8", ftypes.UINT8)
omi_iex_iexoptions_session_sbe_v1_0.fields.end_sequence = ProtoField.new("End Sequence", "iex.iexoptions.session.sbe.v1.0.endsequence", ftypes.UINT32)
omi_iex_iexoptions_session_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_group = ProtoField.new("Gateway Heartbeat Message Sub Sessions Group", "iex.iexoptions.session.sbe.v1.0.gatewayheartbeatmessagesubsessionsgroup", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_groups = ProtoField.new("Gateway Heartbeat Message Sub Sessions Groups", "iex.iexoptions.session.sbe.v1.0.gatewayheartbeatmessagesubsessionsgroups", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.joined = ProtoField.new("Joined", "iex.iexoptions.session.sbe.v1.0.joined", ftypes.UINT8)
omi_iex_iexoptions_session_sbe_v1_0.fields.keep_alive = ProtoField.new("Keep Alive", "iex.iexoptions.session.sbe.v1.0.keepalive", ftypes.UINT8)
omi_iex_iexoptions_session_sbe_v1_0.fields.logon_id = ProtoField.new("Logon Id", "iex.iexoptions.session.sbe.v1.0.logonid", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.next_seq_no = ProtoField.new("Next Seq No", "iex.iexoptions.session.sbe.v1.0.nextseqno", ftypes.UINT32)
omi_iex_iexoptions_session_sbe_v1_0.fields.num_in_group = ProtoField.new("Num In Group", "iex.iexoptions.session.sbe.v1.0.numingroup", ftypes.UINT8)
omi_iex_iexoptions_session_sbe_v1_0.fields.packet_length = ProtoField.new("Packet Length", "iex.iexoptions.session.sbe.v1.0.packetlength", ftypes.UINT16)
omi_iex_iexoptions_session_sbe_v1_0.fields.reason = ProtoField.new("Reason", "iex.iexoptions.session.sbe.v1.0.reason", ftypes.UINT8)
omi_iex_iexoptions_session_sbe_v1_0.fields.sbe_message = ProtoField.new("Sbe Message", "iex.iexoptions.session.sbe.v1.0.sbemessage", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.schema_id = ProtoField.new("Schema Id", "iex.iexoptions.session.sbe.v1.0.schemaid", ftypes.UINT16)
omi_iex_iexoptions_session_sbe_v1_0.fields.sequence = ProtoField.new("Sequence", "iex.iexoptions.session.sbe.v1.0.sequence", ftypes.UINT32)
omi_iex_iexoptions_session_sbe_v1_0.fields.session_info_group_encoding = ProtoField.new("Session Info Group Encoding", "iex.iexoptions.session.sbe.v1.0.sessioninfogroupencoding", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.start_sequence = ProtoField.new("Start Sequence", "iex.iexoptions.session.sbe.v1.0.startsequence", ftypes.UINT32)
omi_iex_iexoptions_session_sbe_v1_0.fields.status = ProtoField.new("Status", "iex.iexoptions.session.sbe.v1.0.status", ftypes.UINT8)
omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_id = ProtoField.new("Subsession Id", "iex.iexoptions.session.sbe.v1.0.subsessionid", ftypes.UINT64)
omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_type = ProtoField.new("Subsession Type", "iex.iexoptions.session.sbe.v1.0.subsessiontype", ftypes.INT8)
omi_iex_iexoptions_session_sbe_v1_0.fields.template_id = ProtoField.new("Template Id", "iex.iexoptions.session.sbe.v1.0.templateid", ftypes.UINT16)
omi_iex_iexoptions_session_sbe_v1_0.fields.timestamp = ProtoField.new("Timestamp", "iex.iexoptions.session.sbe.v1.0.timestamp", ftypes.UINT64)
omi_iex_iexoptions_session_sbe_v1_0.fields.token = ProtoField.new("Token", "iex.iexoptions.session.sbe.v1.0.token", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.version = ProtoField.new("Version", "iex.iexoptions.session.sbe.v1.0.version", ftypes.UINT16)

-- Iex IexOptions Session Sbe 1.0 Framing
omi_iex_iexoptions_session_sbe_v1_0.fields.message_header = ProtoField.new("Message Header", "iex.iexoptions.session.sbe.v1.0.messageheader", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.packet = ProtoField.new("Packet", "iex.iexoptions.session.sbe.v1.0.packet", ftypes.STRING)

-- Iex IexOptions Session 1.0 Application Messages
omi_iex_iexoptions_session_sbe_v1_0.fields.gateway_heartbeat_message = ProtoField.new("Gateway Heartbeat Message", "iex.iexoptions.session.sbe.v1.0.gatewayheartbeatmessage", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.login_request_message = ProtoField.new("Login Request Message", "iex.iexoptions.session.sbe.v1.0.loginrequestmessage", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.login_response_message = ProtoField.new("Login Response Message", "iex.iexoptions.session.sbe.v1.0.loginresponsemessage", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.sequenced_message_header_message = ProtoField.new("Sequenced Message Header Message", "iex.iexoptions.session.sbe.v1.0.sequencedmessageheadermessage", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_join_message = ProtoField.new("Subsession Join Message", "iex.iexoptions.session.sbe.v1.0.subsessionjoinmessage", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_join_response_message = ProtoField.new("Subsession Join Response Message", "iex.iexoptions.session.sbe.v1.0.subsessionjoinresponsemessage", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_leave_message = ProtoField.new("Subsession Leave Message", "iex.iexoptions.session.sbe.v1.0.subsessionleavemessage", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_leave_response_message = ProtoField.new("Subsession Leave Response Message", "iex.iexoptions.session.sbe.v1.0.subsessionleaveresponsemessage", ftypes.STRING)
omi_iex_iexoptions_session_sbe_v1_0.fields.terminate_message = ProtoField.new("Terminate Message", "iex.iexoptions.session.sbe.v1.0.terminatemessage", ftypes.STRING)

-- Iex IexOptions Session Sbe 1.0 generated fields
omi_iex_iexoptions_session_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_group_index = ProtoField.new("Gateway Heartbeat Message Sub Sessions Group Index", "iex.iexoptions.session.sbe.v1.0.gatewayheartbeatmessagesubsessionsgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Iex IexOptions Session Sbe 1.0 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Iex IexOptions Session Sbe 1.0 Show Options
omi_iex_iexoptions_session_sbe_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_iex_iexoptions_session_sbe_v1_0.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_iex_iexoptions_session_sbe_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_iex_iexoptions_session_sbe_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_iex_iexoptions_session_sbe_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_iex_iexoptions_session_sbe_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_iex_iexoptions_session_sbe_v1_0.prefs.show_application_messages then
    show.application_messages = omi_iex_iexoptions_session_sbe_v1_0.prefs.show_application_messages
  end
  if show.headers ~= omi_iex_iexoptions_session_sbe_v1_0.prefs.show_headers then
    show.headers = omi_iex_iexoptions_session_sbe_v1_0.prefs.show_headers
  end
  if show.repeating_groups ~= omi_iex_iexoptions_session_sbe_v1_0.prefs.show_repeating_groups then
    show.repeating_groups = omi_iex_iexoptions_session_sbe_v1_0.prefs.show_repeating_groups
  end
  if show.structs ~= omi_iex_iexoptions_session_sbe_v1_0.prefs.show_structs then
    show.structs = omi_iex_iexoptions_session_sbe_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_iex_iexoptions_session_sbe_v1_0.prefs.show_indexes then
    show.indexes = omi_iex_iexoptions_session_sbe_v1_0.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Iex IexOptions Session Sbe 1.0 Fields
-----------------------------------------------------------------------

-- Block Length
iex_iexoptions_session_sbe_v1_0.block_length = {}

-- Size: Block Length
iex_iexoptions_session_sbe_v1_0.block_length.size = 2

-- Display: Block Length
iex_iexoptions_session_sbe_v1_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
iex_iexoptions_session_sbe_v1_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Block Length uint 8
iex_iexoptions_session_sbe_v1_0.block_length_uint_8 = {}

-- Size: Block Length uint 8
iex_iexoptions_session_sbe_v1_0.block_length_uint_8.size = 1

-- Display: Block Length uint 8
iex_iexoptions_session_sbe_v1_0.block_length_uint_8.display = function(value)
  return "Block Length uint 8: "..value
end

-- Dissect: Block Length uint 8
iex_iexoptions_session_sbe_v1_0.block_length_uint_8.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.block_length_uint_8.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.block_length_uint_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.block_length_uint_8, range, value, display)

  return offset + length, value
end

-- End Sequence
iex_iexoptions_session_sbe_v1_0.end_sequence = {}

-- Size: End Sequence
iex_iexoptions_session_sbe_v1_0.end_sequence.size = 4

-- Display: End Sequence
iex_iexoptions_session_sbe_v1_0.end_sequence.display = function(value)
  return "End Sequence: "..value
end

-- Dissect: End Sequence
iex_iexoptions_session_sbe_v1_0.end_sequence.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.end_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.end_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.end_sequence, range, value, display)

  return offset + length, value
end

-- Joined
iex_iexoptions_session_sbe_v1_0.joined = {}

-- Size: Joined
iex_iexoptions_session_sbe_v1_0.joined.size = 1

-- Display: Joined
iex_iexoptions_session_sbe_v1_0.joined.display = function(value)
  if value == 0 then
    return "Joined: False (0)"
  end
  if value == 1 then
    return "Joined: True (1)"
  end

  return "Joined: Unknown("..value..")"
end

-- Dissect: Joined
iex_iexoptions_session_sbe_v1_0.joined.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.joined.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.joined.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.joined, range, value, display)

  return offset + length, value
end

-- Keep Alive
iex_iexoptions_session_sbe_v1_0.keep_alive = {}

-- Size: Keep Alive
iex_iexoptions_session_sbe_v1_0.keep_alive.size = 1

-- Display: Keep Alive
iex_iexoptions_session_sbe_v1_0.keep_alive.display = function(value)
  if value == 0 then
    return "Keep Alive: False (0)"
  end
  if value == 1 then
    return "Keep Alive: True (1)"
  end

  return "Keep Alive: Unknown("..value..")"
end

-- Dissect: Keep Alive
iex_iexoptions_session_sbe_v1_0.keep_alive.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.keep_alive.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.keep_alive.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.keep_alive, range, value, display)

  return offset + length, value
end

-- Logon Id
iex_iexoptions_session_sbe_v1_0.logon_id = {}

-- Size: Logon Id
iex_iexoptions_session_sbe_v1_0.logon_id.size = 16

-- Display: Logon Id
iex_iexoptions_session_sbe_v1_0.logon_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Logon Id: No Value"
  end

  return "Logon Id: "..value
end

-- Dissect: Logon Id
iex_iexoptions_session_sbe_v1_0.logon_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.logon_id.size
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

  local display = iex_iexoptions_session_sbe_v1_0.logon_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.logon_id, range, value, display)

  return offset + length, value
end

-- Next Seq No
iex_iexoptions_session_sbe_v1_0.next_seq_no = {}

-- Size: Next Seq No
iex_iexoptions_session_sbe_v1_0.next_seq_no.size = 4

-- Display: Next Seq No
iex_iexoptions_session_sbe_v1_0.next_seq_no.display = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
iex_iexoptions_session_sbe_v1_0.next_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.next_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.next_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.next_seq_no, range, value, display)

  return offset + length, value
end

-- Num In Group
iex_iexoptions_session_sbe_v1_0.num_in_group = {}

-- Size: Num In Group
iex_iexoptions_session_sbe_v1_0.num_in_group.size = 1

-- Display: Num In Group
iex_iexoptions_session_sbe_v1_0.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
iex_iexoptions_session_sbe_v1_0.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Packet Length
iex_iexoptions_session_sbe_v1_0.packet_length = {}

-- Size: Packet Length
iex_iexoptions_session_sbe_v1_0.packet_length.size = 2

-- Display: Packet Length
iex_iexoptions_session_sbe_v1_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
iex_iexoptions_session_sbe_v1_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Reason
iex_iexoptions_session_sbe_v1_0.reason = {}

-- Size: Reason
iex_iexoptions_session_sbe_v1_0.reason.size = 1

-- Display: Reason
iex_iexoptions_session_sbe_v1_0.reason.display = function(value)
  if value == 0 then
    return "Reason: Success (0)"
  end
  if value == 1 then
    return "Reason: Session Level Reject (1)"
  end
  if value == 2 then
    return "Reason: Logout Requested (2)"
  end
  if value == 3 then
    return "Reason: Unknown (3)"
  end
  if value == 4 then
    return "Reason: Invalid Logon Id (4)"
  end
  if value == 5 then
    return "Reason: Invalid Token (5)"
  end
  if value == 6 then
    return "Reason: Already Logged In (6)"
  end
  if value == 7 then
    return "Reason: Login Timeout (7)"
  end
  if value == 8 then
    return "Reason: Invalid Packet Length (8)"
  end
  if value == 9 then
    return "Reason: Invalid Message (9)"
  end
  if value == 10 then
    return "Reason: Join Revoked (10)"
  end
  if value == 11 then
    return "Reason: Heartbeat Timeout (11)"
  end
  if value == 12 then
    return "Reason: Message Out Of Sequence (12)"
  end
  if value == 13 then
    return "Reason: Invalid Subsession Id (13)"
  end
  if value == 14 then
    return "Reason: Subsession Not Joined (14)"
  end
  if value == 15 then
    return "Reason: Denial Of Service (15)"
  end
  if value == 16 then
    return "Reason: Invalid Argument (16)"
  end
  if value == 17 then
    return "Reason: Already Joined (17)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
iex_iexoptions_session_sbe_v1_0.reason.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.reason, range, value, display)

  return offset + length, value
end

-- Schema Id
iex_iexoptions_session_sbe_v1_0.schema_id = {}

-- Size: Schema Id
iex_iexoptions_session_sbe_v1_0.schema_id.size = 2

-- Display: Schema Id
iex_iexoptions_session_sbe_v1_0.schema_id.display = function(value)
  if value == 20000 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
iex_iexoptions_session_sbe_v1_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Sequence
iex_iexoptions_session_sbe_v1_0.sequence = {}

-- Size: Sequence
iex_iexoptions_session_sbe_v1_0.sequence.size = 4

-- Display: Sequence
iex_iexoptions_session_sbe_v1_0.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
iex_iexoptions_session_sbe_v1_0.sequence.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Start Sequence
iex_iexoptions_session_sbe_v1_0.start_sequence = {}

-- Size: Start Sequence
iex_iexoptions_session_sbe_v1_0.start_sequence.size = 4

-- Display: Start Sequence
iex_iexoptions_session_sbe_v1_0.start_sequence.display = function(value)
  return "Start Sequence: "..value
end

-- Dissect: Start Sequence
iex_iexoptions_session_sbe_v1_0.start_sequence.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.start_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.start_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.start_sequence, range, value, display)

  return offset + length, value
end

-- Status
iex_iexoptions_session_sbe_v1_0.status = {}

-- Size: Status
iex_iexoptions_session_sbe_v1_0.status.size = 1

-- Display: Status
iex_iexoptions_session_sbe_v1_0.status.display = function(value)
  if value == 0 then
    return "Status: Success (0)"
  end
  if value == 1 then
    return "Status: Session Level Reject (1)"
  end
  if value == 2 then
    return "Status: Logout Requested (2)"
  end
  if value == 3 then
    return "Status: Unknown (3)"
  end
  if value == 4 then
    return "Status: Invalid Logon Id (4)"
  end
  if value == 5 then
    return "Status: Invalid Token (5)"
  end
  if value == 6 then
    return "Status: Already Logged In (6)"
  end
  if value == 7 then
    return "Status: Login Timeout (7)"
  end
  if value == 8 then
    return "Status: Invalid Packet Length (8)"
  end
  if value == 9 then
    return "Status: Invalid Message (9)"
  end
  if value == 10 then
    return "Status: Join Revoked (10)"
  end
  if value == 11 then
    return "Status: Heartbeat Timeout (11)"
  end
  if value == 12 then
    return "Status: Message Out Of Sequence (12)"
  end
  if value == 13 then
    return "Status: Invalid Subsession Id (13)"
  end
  if value == 14 then
    return "Status: Subsession Not Joined (14)"
  end
  if value == 15 then
    return "Status: Denial Of Service (15)"
  end
  if value == 16 then
    return "Status: Invalid Argument (16)"
  end
  if value == 17 then
    return "Status: Already Joined (17)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
iex_iexoptions_session_sbe_v1_0.status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.status, range, value, display)

  return offset + length, value
end

-- Subsession Id
iex_iexoptions_session_sbe_v1_0.subsession_id = {}

-- Size: Subsession Id
iex_iexoptions_session_sbe_v1_0.subsession_id.size = 8

-- Display: Subsession Id
iex_iexoptions_session_sbe_v1_0.subsession_id.display = function(value)
  return "Subsession Id: "..value
end

-- Dissect: Subsession Id
iex_iexoptions_session_sbe_v1_0.subsession_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.subsession_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_session_sbe_v1_0.subsession_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_id, range, value, display)

  return offset + length, value
end

-- Subsession Type
iex_iexoptions_session_sbe_v1_0.subsession_type = {}

-- Size: Subsession Type
iex_iexoptions_session_sbe_v1_0.subsession_type.size = 1

-- Display: Subsession Type
iex_iexoptions_session_sbe_v1_0.subsession_type.display = function(value)
  if value == 0 then
    return "Subsession Type: Client To Gateway (0)"
  end
  if value == 1 then
    return "Subsession Type: Gateway To Client (1)"
  end
  if value == 2 then
    return "Subsession Type: Reference Data (2)"
  end

  return "Subsession Type: Unknown("..value..")"
end

-- Dissect: Subsession Type
iex_iexoptions_session_sbe_v1_0.subsession_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.subsession_type.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = iex_iexoptions_session_sbe_v1_0.subsession_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_type, range, value, display)

  return offset + length, value
end

-- Template Id
iex_iexoptions_session_sbe_v1_0.template_id = {}

-- Size: Template Id
iex_iexoptions_session_sbe_v1_0.template_id.size = 2

-- Display: Template Id
iex_iexoptions_session_sbe_v1_0.template_id.display = function(value)
  if value == 1 then
    return "Template Id: Login Request Message (1)"
  end
  if value == 2 then
    return "Template Id: Login Response Message (2)"
  end
  if value == 3 then
    return "Template Id: Gateway Heartbeat Message (3)"
  end
  if value == 4 then
    return "Template Id: Client Heartbeat Message (4)"
  end
  if value == 5 then
    return "Template Id: Logout Request Message (5)"
  end
  if value == 6 then
    return "Template Id: Terminate Message (6)"
  end
  if value == 7 then
    return "Template Id: Sequenced Message Header Message (7)"
  end
  if value == 8 then
    return "Template Id: Subsession Join Message (8)"
  end
  if value == 9 then
    return "Template Id: Subsession Join Response Message (9)"
  end
  if value == 10 then
    return "Template Id: Subsession Leave Message (10)"
  end
  if value == 11 then
    return "Template Id: Subsession Leave Response Message (11)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
iex_iexoptions_session_sbe_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Timestamp
iex_iexoptions_session_sbe_v1_0.timestamp = {}

-- Size: Timestamp
iex_iexoptions_session_sbe_v1_0.timestamp.size = 8

-- Display: Timestamp
iex_iexoptions_session_sbe_v1_0.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
iex_iexoptions_session_sbe_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexoptions_session_sbe_v1_0.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Token
iex_iexoptions_session_sbe_v1_0.token = {}

-- Size: Token
iex_iexoptions_session_sbe_v1_0.token.size = 32

-- Display: Token
iex_iexoptions_session_sbe_v1_0.token.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Token: No Value"
  end

  return "Token: "..value
end

-- Dissect: Token
iex_iexoptions_session_sbe_v1_0.token.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.token.size
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

  local display = iex_iexoptions_session_sbe_v1_0.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.token, range, value, display)

  return offset + length, value
end

-- Version
iex_iexoptions_session_sbe_v1_0.version = {}

-- Size: Version
iex_iexoptions_session_sbe_v1_0.version.size = 2

-- Display: Version
iex_iexoptions_session_sbe_v1_0.version.display = function(value)
  if value == 0 then
    return "Version: Version 1.0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
iex_iexoptions_session_sbe_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexoptions_session_sbe_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexoptions_session_sbe_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Iex IexOptions Session Sbe 1.0
-----------------------------------------------------------------------

-- Subsession Leave Response Message
iex_iexoptions_session_sbe_v1_0.subsession_leave_response_message = {}

-- Size: Subsession Leave Response Message
iex_iexoptions_session_sbe_v1_0.subsession_leave_response_message.size =
  iex_iexoptions_session_sbe_v1_0.subsession_id.size + 
  iex_iexoptions_session_sbe_v1_0.reason.size

-- Display: Subsession Leave Response Message
iex_iexoptions_session_sbe_v1_0.subsession_leave_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subsession Leave Response Message
iex_iexoptions_session_sbe_v1_0.subsession_leave_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_session_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  -- Reason: Status
  index, reason = iex_iexoptions_session_sbe_v1_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subsession Leave Response Message
iex_iexoptions_session_sbe_v1_0.subsession_leave_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_leave_response_message, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.subsession_leave_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.subsession_leave_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.subsession_leave_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Subsession Leave Message
iex_iexoptions_session_sbe_v1_0.subsession_leave_message = {}

-- Size: Subsession Leave Message
iex_iexoptions_session_sbe_v1_0.subsession_leave_message.size =
  iex_iexoptions_session_sbe_v1_0.subsession_id.size

-- Display: Subsession Leave Message
iex_iexoptions_session_sbe_v1_0.subsession_leave_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subsession Leave Message
iex_iexoptions_session_sbe_v1_0.subsession_leave_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_session_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subsession Leave Message
iex_iexoptions_session_sbe_v1_0.subsession_leave_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_leave_message, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.subsession_leave_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.subsession_leave_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.subsession_leave_message.fields(buffer, offset, packet, parent)
  end
end

-- Subsession Join Response Message
iex_iexoptions_session_sbe_v1_0.subsession_join_response_message = {}

-- Size: Subsession Join Response Message
iex_iexoptions_session_sbe_v1_0.subsession_join_response_message.size =
  iex_iexoptions_session_sbe_v1_0.subsession_id.size + 
  iex_iexoptions_session_sbe_v1_0.status.size

-- Display: Subsession Join Response Message
iex_iexoptions_session_sbe_v1_0.subsession_join_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subsession Join Response Message
iex_iexoptions_session_sbe_v1_0.subsession_join_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_session_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = iex_iexoptions_session_sbe_v1_0.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subsession Join Response Message
iex_iexoptions_session_sbe_v1_0.subsession_join_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_join_response_message, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.subsession_join_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.subsession_join_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.subsession_join_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Subsession Join Message
iex_iexoptions_session_sbe_v1_0.subsession_join_message = {}

-- Size: Subsession Join Message
iex_iexoptions_session_sbe_v1_0.subsession_join_message.size =
  iex_iexoptions_session_sbe_v1_0.subsession_id.size + 
  iex_iexoptions_session_sbe_v1_0.start_sequence.size + 
  iex_iexoptions_session_sbe_v1_0.end_sequence.size

-- Display: Subsession Join Message
iex_iexoptions_session_sbe_v1_0.subsession_join_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Subsession Join Message
iex_iexoptions_session_sbe_v1_0.subsession_join_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_session_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  -- Start Sequence: SequenceNumber
  index, start_sequence = iex_iexoptions_session_sbe_v1_0.start_sequence.dissect(buffer, index, packet, parent)

  -- End Sequence: SequenceNumber
  index, end_sequence = iex_iexoptions_session_sbe_v1_0.end_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Subsession Join Message
iex_iexoptions_session_sbe_v1_0.subsession_join_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.subsession_join_message, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.subsession_join_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.subsession_join_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.subsession_join_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message Header Message
iex_iexoptions_session_sbe_v1_0.sequenced_message_header_message = {}

-- Size: Sequenced Message Header Message
iex_iexoptions_session_sbe_v1_0.sequenced_message_header_message.size =
  iex_iexoptions_session_sbe_v1_0.subsession_id.size + 
  iex_iexoptions_session_sbe_v1_0.sequence.size + 
  iex_iexoptions_session_sbe_v1_0.timestamp.size

-- Display: Sequenced Message Header Message
iex_iexoptions_session_sbe_v1_0.sequenced_message_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header Message
iex_iexoptions_session_sbe_v1_0.sequenced_message_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_session_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  -- Sequence: SequenceNumber
  index, sequence = iex_iexoptions_session_sbe_v1_0.sequence.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexoptions_session_sbe_v1_0.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header Message
iex_iexoptions_session_sbe_v1_0.sequenced_message_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.sequenced_message_header_message, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.sequenced_message_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.sequenced_message_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.sequenced_message_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Terminate Message
iex_iexoptions_session_sbe_v1_0.terminate_message = {}

-- Size: Terminate Message
iex_iexoptions_session_sbe_v1_0.terminate_message.size =
  iex_iexoptions_session_sbe_v1_0.reason.size

-- Display: Terminate Message
iex_iexoptions_session_sbe_v1_0.terminate_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Terminate Message
iex_iexoptions_session_sbe_v1_0.terminate_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: Status
  index, reason = iex_iexoptions_session_sbe_v1_0.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate Message
iex_iexoptions_session_sbe_v1_0.terminate_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.terminate_message, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.terminate_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.terminate_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.terminate_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request Message
iex_iexoptions_session_sbe_v1_0.logout_request_message = {}

-- Display: Logout Request Message
iex_iexoptions_session_sbe_v1_0.logout_request_message.display = function(packet, parent, length)
  return "Logout Request Message"
end


-- Dissect: Logout Request Message
iex_iexoptions_session_sbe_v1_0.logout_request_message.dissect = function(buffer, offset, packet, parent)
  local display = iex_iexoptions_session_sbe_v1_0.logout_request_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat Message
iex_iexoptions_session_sbe_v1_0.client_heartbeat_message = {}

-- Display: Client Heartbeat Message
iex_iexoptions_session_sbe_v1_0.client_heartbeat_message.display = function(packet, parent, length)
  return "Client Heartbeat Message"
end


-- Dissect: Client Heartbeat Message
iex_iexoptions_session_sbe_v1_0.client_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = iex_iexoptions_session_sbe_v1_0.client_heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Gateway Heartbeat Message Sub Sessions Group
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group = {}

-- Size: Gateway Heartbeat Message Sub Sessions Group
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.size =
  iex_iexoptions_session_sbe_v1_0.subsession_type.size + 
  iex_iexoptions_session_sbe_v1_0.subsession_id.size + 
  iex_iexoptions_session_sbe_v1_0.joined.size + 
  iex_iexoptions_session_sbe_v1_0.next_seq_no.size

-- Display: Gateway Heartbeat Message Sub Sessions Group
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Heartbeat Message Sub Sessions Group
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.fields = function(buffer, offset, packet, parent, gateway_heartbeat_message_sub_sessions_group_index)
  local index = offset

  -- Implicit Gateway Heartbeat Message Sub Sessions Group Index
  if gateway_heartbeat_message_sub_sessions_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_group_index, gateway_heartbeat_message_sub_sessions_group_index)
    iteration:set_generated()
  end

  -- Subsession Type: Subsession
  index, subsession_type = iex_iexoptions_session_sbe_v1_0.subsession_type.dissect(buffer, index, packet, parent)

  -- Subsession Id: SubsessionId
  index, subsession_id = iex_iexoptions_session_sbe_v1_0.subsession_id.dissect(buffer, index, packet, parent)

  -- Joined: Boolean
  index, joined = iex_iexoptions_session_sbe_v1_0.joined.dissect(buffer, index, packet, parent)

  -- Next Seq No: SequenceNumber
  index, next_seq_no = iex_iexoptions_session_sbe_v1_0.next_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Heartbeat Message Sub Sessions Group
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.dissect = function(buffer, offset, packet, parent, gateway_heartbeat_message_sub_sessions_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_group, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.fields(buffer, offset, packet, parent, gateway_heartbeat_message_sub_sessions_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.fields(buffer, offset, packet, parent, gateway_heartbeat_message_sub_sessions_group_index)
  end
end

-- Session Info Group Encoding
iex_iexoptions_session_sbe_v1_0.session_info_group_encoding = {}

-- Size: Session Info Group Encoding
iex_iexoptions_session_sbe_v1_0.session_info_group_encoding.size =
  iex_iexoptions_session_sbe_v1_0.block_length_uint_8.size + 
  iex_iexoptions_session_sbe_v1_0.num_in_group.size

-- Display: Session Info Group Encoding
iex_iexoptions_session_sbe_v1_0.session_info_group_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Info Group Encoding
iex_iexoptions_session_sbe_v1_0.session_info_group_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length uint 8: uint8
  index, block_length_uint_8 = iex_iexoptions_session_sbe_v1_0.block_length_uint_8.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = iex_iexoptions_session_sbe_v1_0.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Info Group Encoding
iex_iexoptions_session_sbe_v1_0.session_info_group_encoding.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.session_info_group_encoding, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.session_info_group_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.session_info_group_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.session_info_group_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Heartbeat Message Sub Sessions Groups
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups = {}

-- Calculate size of: Gateway Heartbeat Message Sub Sessions Groups
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_session_sbe_v1_0.session_info_group_encoding.size

  -- Calculate field size from count
  local gateway_heartbeat_message_sub_sessions_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + gateway_heartbeat_message_sub_sessions_group_count * 14

  return index
end

-- Display: Gateway Heartbeat Message Sub Sessions Groups
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Heartbeat Message Sub Sessions Groups
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Info Group Encoding: Struct of 2 fields
  index, session_info_group_encoding = iex_iexoptions_session_sbe_v1_0.session_info_group_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Gateway Heartbeat Message Sub Sessions Group
  for gateway_heartbeat_message_sub_sessions_group_index = 1, num_in_group do
    index, gateway_heartbeat_message_sub_sessions_group = iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_group.dissect(buffer, index, packet, parent, gateway_heartbeat_message_sub_sessions_group_index)
  end

  return index
end

-- Dissect: Gateway Heartbeat Message Sub Sessions Groups
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.gateway_heartbeat_message_sub_sessions_groups, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Heartbeat Message
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message = {}

-- Calculate size of: Gateway Heartbeat Message
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexoptions_session_sbe_v1_0.keep_alive.size

  index = index + iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.size(buffer, offset + index)

  return index
end

-- Display: Gateway Heartbeat Message
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Heartbeat Message
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Keep Alive: Boolean
  index, keep_alive = iex_iexoptions_session_sbe_v1_0.keep_alive.dissect(buffer, index, packet, parent)

  -- Gateway Heartbeat Message Sub Sessions Groups: Struct of 2 fields
  index, gateway_heartbeat_message_sub_sessions_groups = iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message_sub_sessions_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Heartbeat Message
iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.gateway_heartbeat_message, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
iex_iexoptions_session_sbe_v1_0.login_response_message = {}

-- Size: Login Response Message
iex_iexoptions_session_sbe_v1_0.login_response_message.size =
  iex_iexoptions_session_sbe_v1_0.logon_id.size + 
  iex_iexoptions_session_sbe_v1_0.status.size

-- Display: Login Response Message
iex_iexoptions_session_sbe_v1_0.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
iex_iexoptions_session_sbe_v1_0.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logon Id: LogonId
  index, logon_id = iex_iexoptions_session_sbe_v1_0.logon_id.dissect(buffer, index, packet, parent)

  -- Status: Status
  index, status = iex_iexoptions_session_sbe_v1_0.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
iex_iexoptions_session_sbe_v1_0.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.login_response_message, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Message
iex_iexoptions_session_sbe_v1_0.login_request_message = {}

-- Size: Login Request Message
iex_iexoptions_session_sbe_v1_0.login_request_message.size =
  iex_iexoptions_session_sbe_v1_0.logon_id.size + 
  iex_iexoptions_session_sbe_v1_0.token.size

-- Display: Login Request Message
iex_iexoptions_session_sbe_v1_0.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
iex_iexoptions_session_sbe_v1_0.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logon Id: LogonId
  index, logon_id = iex_iexoptions_session_sbe_v1_0.logon_id.dissect(buffer, index, packet, parent)

  -- Token: Token
  index, token = iex_iexoptions_session_sbe_v1_0.token.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Message
iex_iexoptions_session_sbe_v1_0.login_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.login_request_message, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.login_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.login_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.login_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
iex_iexoptions_session_sbe_v1_0.payload = {}

-- Dissect: Payload
iex_iexoptions_session_sbe_v1_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Login Request Message
  if template_id == 1 then
    return iex_iexoptions_session_sbe_v1_0.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if template_id == 2 then
    return iex_iexoptions_session_sbe_v1_0.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Heartbeat Message
  if template_id == 3 then
    return iex_iexoptions_session_sbe_v1_0.gateway_heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat Message
  if template_id == 4 then
    return iex_iexoptions_session_sbe_v1_0.client_heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if template_id == 5 then
    return iex_iexoptions_session_sbe_v1_0.logout_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Terminate Message
  if template_id == 6 then
    return iex_iexoptions_session_sbe_v1_0.terminate_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Message Header Message
  if template_id == 7 then
    return iex_iexoptions_session_sbe_v1_0.sequenced_message_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subsession Join Message
  if template_id == 8 then
    return iex_iexoptions_session_sbe_v1_0.subsession_join_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subsession Join Response Message
  if template_id == 9 then
    return iex_iexoptions_session_sbe_v1_0.subsession_join_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subsession Leave Message
  if template_id == 10 then
    return iex_iexoptions_session_sbe_v1_0.subsession_leave_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Subsession Leave Response Message
  if template_id == 11 then
    return iex_iexoptions_session_sbe_v1_0.subsession_leave_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
iex_iexoptions_session_sbe_v1_0.message_header = {}

-- Size: Message Header
iex_iexoptions_session_sbe_v1_0.message_header.size =
  iex_iexoptions_session_sbe_v1_0.block_length.size + 
  iex_iexoptions_session_sbe_v1_0.template_id.size + 
  iex_iexoptions_session_sbe_v1_0.schema_id.size + 
  iex_iexoptions_session_sbe_v1_0.version.size

-- Display: Message Header
iex_iexoptions_session_sbe_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
iex_iexoptions_session_sbe_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = iex_iexoptions_session_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = iex_iexoptions_session_sbe_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = iex_iexoptions_session_sbe_v1_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = iex_iexoptions_session_sbe_v1_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
iex_iexoptions_session_sbe_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.message_header, buffer(offset, 0))
    local index = iex_iexoptions_session_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexoptions_session_sbe_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexoptions_session_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
iex_iexoptions_session_sbe_v1_0.sbe_message = {}

-- Display: Sbe Message
iex_iexoptions_session_sbe_v1_0.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
iex_iexoptions_session_sbe_v1_0.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Packet Length: uint16
  index, packet_length = iex_iexoptions_session_sbe_v1_0.packet_length.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = iex_iexoptions_session_sbe_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 11 branches
  index = iex_iexoptions_session_sbe_v1_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
iex_iexoptions_session_sbe_v1_0.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_iex_iexoptions_session_sbe_v1_0.fields.sbe_message, buffer(offset, 0))
    local current = iex_iexoptions_session_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = iex_iexoptions_session_sbe_v1_0.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    iex_iexoptions_session_sbe_v1_0.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Remaining Bytes For: Sbe Message
local sbe_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < iex_iexoptions_session_sbe_v1_0.sbe_message.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
iex_iexoptions_session_sbe_v1_0.packet = {}

-- Verify required size of Tcp packet
iex_iexoptions_session_sbe_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= iex_iexoptions_session_sbe_v1_0.packet_length.size + iex_iexoptions_session_sbe_v1_0.message_header.size
end

-- Dissect Packet
iex_iexoptions_session_sbe_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sbe_message = sbe_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = iex_iexoptions_session_sbe_v1_0.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_iex_iexoptions_session_sbe_v1_0.init()
end

-- Dissector for Iex IexOptions Session Sbe 1.0
function omi_iex_iexoptions_session_sbe_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_iex_iexoptions_session_sbe_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_iex_iexoptions_session_sbe_v1_0, buffer(), omi_iex_iexoptions_session_sbe_v1_0.description, "("..buffer:len().." Bytes)")
  return iex_iexoptions_session_sbe_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
iex_iexoptions_session_sbe_v1_0.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 20000 then
    return true
  end

  return false
end

-- Verify Version Field
iex_iexoptions_session_sbe_v1_0.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Iex IexOptions Session Sbe 1.0 (Tcp)
local function omi_iex_iexoptions_session_sbe_v1_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not iex_iexoptions_session_sbe_v1_0.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not iex_iexoptions_session_sbe_v1_0.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not iex_iexoptions_session_sbe_v1_0.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_iex_iexoptions_session_sbe_v1_0
  omi_iex_iexoptions_session_sbe_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Iex IexOptions Session Sbe 1.0
omi_iex_iexoptions_session_sbe_v1_0:register_heuristic("tcp", omi_iex_iexoptions_session_sbe_v1_0_tcp_heuristic)

-- Register Iex IexOptions Session Sbe 1.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_iex_iexoptions_session_sbe_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Investors Exchange
--   Version: 1.0
--   Date: Monday, June 1, 2026
--   Specification: IEX Options Binary Session Protocol Specification v1.00
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
