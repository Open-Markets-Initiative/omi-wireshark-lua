-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis AquisStockExchange Replay Amd 1.2.3 Protocol
local omi_aquis_aquisstockexchange_replay_amd_v1_2_3 = Proto("Omi.Aquis.AquisStockExchange.Replay.Amd.v1.2.3", "Aquis AquisStockExchange Replay Amd 1.2.3")

-- Protocol table
local aquis_aquisstockexchange_replay_amd_v1_2_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis AquisStockExchange Replay Amd 1.2.3 Fields
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.begin_seq_no = ProtoField.new("Begin Seq No", "aquis.aquisstockexchange.replay.amd.v1.2.3.beginseqno", ftypes.UINT32, nil, nil, nil, "Stream seqNo of first message requested")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.end_seq_no = ProtoField.new("End Seq No", "aquis.aquisstockexchange.replay.amd.v1.2.3.endseqno", ftypes.UINT32, nil, nil, nil, "Stream seqNo of last message requested")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.msg_length = ProtoField.new("Msg Length", "aquis.aquisstockexchange.replay.amd.v1.2.3.msglength", ftypes.UINT8, nil, nil, nil, "Length of market data message, including header")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.msg_type = ProtoField.new("Msg Type", "aquis.aquisstockexchange.replay.amd.v1.2.3.msgtype", ftypes.UINT8, nil, nil, nil, "Message type identifier")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.password = ProtoField.new("Password", "aquis.aquisstockexchange.replay.amd.v1.2.3.password", ftypes.STRING, nil, nil, nil, "As assigned by AQSE for the recipient")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.response_code = ProtoField.new("Response Code", "aquis.aquisstockexchange.replay.amd.v1.2.3.responsecode", ftypes.UINT8, nil, nil, nil, "Replay response code")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.seq_no = ProtoField.new("Seq No", "aquis.aquisstockexchange.replay.amd.v1.2.3.seqno", ftypes.UINT32, nil, nil, nil, "Sequence number of this message in the market data stream for the current trading day")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.username = ProtoField.new("Username", "aquis.aquisstockexchange.replay.amd.v1.2.3.username", ftypes.STRING, nil, nil, nil, "As assigned by AQSE for the recipient")

-- Aquis AquisStockExchange Replay Amd 1.2.3 Framing
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.message = ProtoField.new("Message", "aquis.aquisstockexchange.replay.amd.v1.2.3.message", ftypes.STRING, nil, nil, nil, "Aquis Amd Message")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.message_header = ProtoField.new("Message Header", "aquis.aquisstockexchange.replay.amd.v1.2.3.messageheader", ftypes.STRING, nil, nil, nil, "Aquis market data message header")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.packet = ProtoField.new("Packet", "aquis.aquisstockexchange.replay.amd.v1.2.3.packet", ftypes.STRING, nil, nil, nil, "Aquis Tcp Packet")

-- Aquis AquisStockExchange Replay 1.2.3 Application Messages
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.login_message = ProtoField.new("Login Message", "aquis.aquisstockexchange.replay.amd.v1.2.3.loginmessage", ftypes.STRING, nil, nil, nil, "If a recipient wishes to use the message replay service, they must first be authenticated by sending a Login message to the relevant replay server.")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.replay_request_message = ProtoField.new("Replay Request Message", "aquis.aquisstockexchange.replay.amd.v1.2.3.replayrequestmessage", ftypes.STRING, nil, nil, nil, "The recipient sends a Replay Request message to request a particular message or range of messages from the replay server.")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.replay_response_message = ProtoField.new("Replay Response Message", "aquis.aquisstockexchange.replay.amd.v1.2.3.replayresponsemessage", ftypes.STRING, nil, nil, nil, "AQSE will send a Replay Response message to the recipient to acknowledge a successful Login or to report problems with a Resend Request.")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aquis AquisStockExchange Replay Amd 1.2.3 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Aquis AquisStockExchange Replay Amd 1.2.3 Show Options
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_aquis_aquisstockexchange_replay_amd_v1_2_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_aquis_aquisstockexchange_replay_amd_v1_2_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_aquis_aquisstockexchange_replay_amd_v1_2_3.prefs.show_application_messages then
    show.application_messages = omi_aquis_aquisstockexchange_replay_amd_v1_2_3.prefs.show_application_messages
  end
  if show.headers ~= omi_aquis_aquisstockexchange_replay_amd_v1_2_3.prefs.show_headers then
    show.headers = omi_aquis_aquisstockexchange_replay_amd_v1_2_3.prefs.show_headers
  end
  if show.structs ~= omi_aquis_aquisstockexchange_replay_amd_v1_2_3.prefs.show_structs then
    show.structs = omi_aquis_aquisstockexchange_replay_amd_v1_2_3.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Aquis AquisStockExchange Replay Amd 1.2.3 Fields
-----------------------------------------------------------------------

-- Begin Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.begin_seq_no = {}

-- Size: Begin Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.begin_seq_no.size = 4

-- Display: Begin Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.begin_seq_no.display = function(value)
  return "Begin Seq No: "..value
end

-- Dissect: Begin Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.begin_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_replay_amd_v1_2_3.begin_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_replay_amd_v1_2_3.begin_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.begin_seq_no, range, value, display)

  return offset + length, value
end

-- End Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.end_seq_no = {}

-- Size: End Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.end_seq_no.size = 4

-- Display: End Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.end_seq_no.display = function(value)
  return "End Seq No: "..value
end

-- Dissect: End Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.end_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_replay_amd_v1_2_3.end_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_replay_amd_v1_2_3.end_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.end_seq_no, range, value, display)

  return offset + length, value
end

-- Msg Length
aquis_aquisstockexchange_replay_amd_v1_2_3.msg_length = {}

-- Size: Msg Length
aquis_aquisstockexchange_replay_amd_v1_2_3.msg_length.size = 1

-- Display: Msg Length
aquis_aquisstockexchange_replay_amd_v1_2_3.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
aquis_aquisstockexchange_replay_amd_v1_2_3.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_replay_amd_v1_2_3.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_aquisstockexchange_replay_amd_v1_2_3.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
aquis_aquisstockexchange_replay_amd_v1_2_3.msg_type = {}

-- Size: Msg Type
aquis_aquisstockexchange_replay_amd_v1_2_3.msg_type.size = 1

-- Display: Msg Type
aquis_aquisstockexchange_replay_amd_v1_2_3.msg_type.labels = {
  [13] = "Msg Type: Login Message (13)",
  [14] = "Msg Type: Replay Request Message (14)",
  [15] = "Msg Type: Replay Response Message (15)",
}

aquis_aquisstockexchange_replay_amd_v1_2_3.msg_type.display = function(value)
  return aquis_aquisstockexchange_replay_amd_v1_2_3.msg_type.labels[value] or "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
aquis_aquisstockexchange_replay_amd_v1_2_3.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_replay_amd_v1_2_3.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_aquisstockexchange_replay_amd_v1_2_3.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Password
aquis_aquisstockexchange_replay_amd_v1_2_3.password = {}

-- Size: Password
aquis_aquisstockexchange_replay_amd_v1_2_3.password.size = 10

-- Display: Password
aquis_aquisstockexchange_replay_amd_v1_2_3.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
aquis_aquisstockexchange_replay_amd_v1_2_3.password.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_replay_amd_v1_2_3.password.size
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

  local display = aquis_aquisstockexchange_replay_amd_v1_2_3.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.password, range, value, display)

  return offset + length, value
end

-- Response Code
aquis_aquisstockexchange_replay_amd_v1_2_3.response_code = {}

-- Size: Response Code
aquis_aquisstockexchange_replay_amd_v1_2_3.response_code.size = 1

-- Display: Response Code
aquis_aquisstockexchange_replay_amd_v1_2_3.response_code.labels = {
  [0] = "Response Code: Login Successful (0)",
  [1] = "Response Code: Bad Begin Seq No (1)",
  [2] = "Response Code: Bad End Seq No (2)",
}

aquis_aquisstockexchange_replay_amd_v1_2_3.response_code.display = function(value)
  return aquis_aquisstockexchange_replay_amd_v1_2_3.response_code.labels[value] or "Response Code: Unknown("..value..")"
end

-- Dissect: Response Code
aquis_aquisstockexchange_replay_amd_v1_2_3.response_code.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_replay_amd_v1_2_3.response_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_replay_amd_v1_2_3.response_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.response_code, range, value, display)

  return offset + length, value
end

-- Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.seq_no = {}

-- Size: Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.seq_no.size = 4

-- Display: Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
aquis_aquisstockexchange_replay_amd_v1_2_3.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_replay_amd_v1_2_3.seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_aquisstockexchange_replay_amd_v1_2_3.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Username
aquis_aquisstockexchange_replay_amd_v1_2_3.username = {}

-- Size: Username
aquis_aquisstockexchange_replay_amd_v1_2_3.username.size = 10

-- Display: Username
aquis_aquisstockexchange_replay_amd_v1_2_3.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
aquis_aquisstockexchange_replay_amd_v1_2_3.username.dissect = function(buffer, offset, packet, parent)
  local length = aquis_aquisstockexchange_replay_amd_v1_2_3.username.size
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

  local display = aquis_aquisstockexchange_replay_amd_v1_2_3.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Aquis AquisStockExchange Replay Amd 1.2.3
-----------------------------------------------------------------------

-- Replay Response Message
aquis_aquisstockexchange_replay_amd_v1_2_3.replay_response_message = {}

-- Size: Replay Response Message
aquis_aquisstockexchange_replay_amd_v1_2_3.replay_response_message.size =
  aquis_aquisstockexchange_replay_amd_v1_2_3.response_code.size

-- Display: Replay Response Message
aquis_aquisstockexchange_replay_amd_v1_2_3.replay_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Response Message
aquis_aquisstockexchange_replay_amd_v1_2_3.replay_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Code: u8
  index, response_code = aquis_aquisstockexchange_replay_amd_v1_2_3.response_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Response Message
aquis_aquisstockexchange_replay_amd_v1_2_3.replay_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.replay_response_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_replay_amd_v1_2_3.replay_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_replay_amd_v1_2_3.replay_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_replay_amd_v1_2_3.replay_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
aquis_aquisstockexchange_replay_amd_v1_2_3.replay_request_message = {}

-- Size: Replay Request Message
aquis_aquisstockexchange_replay_amd_v1_2_3.replay_request_message.size =
  aquis_aquisstockexchange_replay_amd_v1_2_3.begin_seq_no.size + 
  aquis_aquisstockexchange_replay_amd_v1_2_3.end_seq_no.size

-- Display: Replay Request Message
aquis_aquisstockexchange_replay_amd_v1_2_3.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
aquis_aquisstockexchange_replay_amd_v1_2_3.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq No: u32
  index, begin_seq_no = aquis_aquisstockexchange_replay_amd_v1_2_3.begin_seq_no.dissect(buffer, index, packet, parent)

  -- End Seq No: u32
  index, end_seq_no = aquis_aquisstockexchange_replay_amd_v1_2_3.end_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
aquis_aquisstockexchange_replay_amd_v1_2_3.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.replay_request_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_replay_amd_v1_2_3.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_replay_amd_v1_2_3.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_replay_amd_v1_2_3.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
aquis_aquisstockexchange_replay_amd_v1_2_3.login_message = {}

-- Size: Login Message
aquis_aquisstockexchange_replay_amd_v1_2_3.login_message.size =
  aquis_aquisstockexchange_replay_amd_v1_2_3.username.size + 
  aquis_aquisstockexchange_replay_amd_v1_2_3.password.size

-- Display: Login Message
aquis_aquisstockexchange_replay_amd_v1_2_3.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
aquis_aquisstockexchange_replay_amd_v1_2_3.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: char(10)
  index, username = aquis_aquisstockexchange_replay_amd_v1_2_3.username.dissect(buffer, index, packet, parent)

  -- Password: char(10)
  index, password = aquis_aquisstockexchange_replay_amd_v1_2_3.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
aquis_aquisstockexchange_replay_amd_v1_2_3.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.login_message, buffer(offset, 0))
    local index = aquis_aquisstockexchange_replay_amd_v1_2_3.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_replay_amd_v1_2_3.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_replay_amd_v1_2_3.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
aquis_aquisstockexchange_replay_amd_v1_2_3.payload = {}

-- Dispatch: Payload
aquis_aquisstockexchange_replay_amd_v1_2_3.payload.dispatch = {
  [13] = aquis_aquisstockexchange_replay_amd_v1_2_3.login_message.dissect,
  [14] = aquis_aquisstockexchange_replay_amd_v1_2_3.replay_request_message.dissect,
  [15] = aquis_aquisstockexchange_replay_amd_v1_2_3.replay_response_message.dissect,
}

-- Dissect: Payload
aquis_aquisstockexchange_replay_amd_v1_2_3.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = aquis_aquisstockexchange_replay_amd_v1_2_3.payload.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
aquis_aquisstockexchange_replay_amd_v1_2_3.message_header = {}

-- Size: Message Header
aquis_aquisstockexchange_replay_amd_v1_2_3.message_header.size =
  aquis_aquisstockexchange_replay_amd_v1_2_3.msg_type.size + 
  aquis_aquisstockexchange_replay_amd_v1_2_3.msg_length.size + 
  aquis_aquisstockexchange_replay_amd_v1_2_3.seq_no.size

-- Display: Message Header
aquis_aquisstockexchange_replay_amd_v1_2_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
aquis_aquisstockexchange_replay_amd_v1_2_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: u8
  index, msg_type = aquis_aquisstockexchange_replay_amd_v1_2_3.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: u8
  index, msg_length = aquis_aquisstockexchange_replay_amd_v1_2_3.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: u32
  index, seq_no = aquis_aquisstockexchange_replay_amd_v1_2_3.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
aquis_aquisstockexchange_replay_amd_v1_2_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.message_header, buffer(offset, 0))
    local index = aquis_aquisstockexchange_replay_amd_v1_2_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_aquisstockexchange_replay_amd_v1_2_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_aquisstockexchange_replay_amd_v1_2_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
aquis_aquisstockexchange_replay_amd_v1_2_3.message = {}

-- Display: Message
aquis_aquisstockexchange_replay_amd_v1_2_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
aquis_aquisstockexchange_replay_amd_v1_2_3.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = aquis_aquisstockexchange_replay_amd_v1_2_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 3 branches
  index = aquis_aquisstockexchange_replay_amd_v1_2_3.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
aquis_aquisstockexchange_replay_amd_v1_2_3.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3.fields.message, buffer(offset, 0))
    local current = aquis_aquisstockexchange_replay_amd_v1_2_3.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = aquis_aquisstockexchange_replay_amd_v1_2_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aquis_aquisstockexchange_replay_amd_v1_2_3.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < aquis_aquisstockexchange_replay_amd_v1_2_3.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 1, 1):uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
aquis_aquisstockexchange_replay_amd_v1_2_3.packet = {}

-- Verify required size of Tcp packet
aquis_aquisstockexchange_replay_amd_v1_2_3.packet.requiredsize = function(buffer)
  return buffer:len() >= aquis_aquisstockexchange_replay_amd_v1_2_3.message_header.size
end

-- Dissect Packet
aquis_aquisstockexchange_replay_amd_v1_2_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_message):tvb()
      index = aquis_aquisstockexchange_replay_amd_v1_2_3.message.dissect(frame, index, packet, parent, size_of_message)
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


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_aquis_aquisstockexchange_replay_amd_v1_2_3.init()
end

-- Dissector for Aquis AquisStockExchange Replay Amd 1.2.3
function omi_aquis_aquisstockexchange_replay_amd_v1_2_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_aquis_aquisstockexchange_replay_amd_v1_2_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_aquis_aquisstockexchange_replay_amd_v1_2_3, buffer(), omi_aquis_aquisstockexchange_replay_amd_v1_2_3.description, "("..buffer:len().." Bytes)")
  return aquis_aquisstockexchange_replay_amd_v1_2_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
aquis_aquisstockexchange_replay_amd_v1_2_3.packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local msg_type = buffer(0, 1):uint()

  -- Login Message
  if msg_type == 13 then
    return true
  end

  -- Replay Request Message
  if msg_type == 14 then
    return true
  end

  -- Replay Response Message
  if msg_type == 15 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Aquis AquisStockExchange Replay Amd 1.2.3 (Tcp)
local function omi_aquis_aquisstockexchange_replay_amd_v1_2_3_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aquis_aquisstockexchange_replay_amd_v1_2_3.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this tcp packet message dispatch
  if not aquis_aquisstockexchange_replay_amd_v1_2_3.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aquis_aquisstockexchange_replay_amd_v1_2_3
  omi_aquis_aquisstockexchange_replay_amd_v1_2_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Aquis AquisStockExchange Replay Amd 1.2.3
omi_aquis_aquisstockexchange_replay_amd_v1_2_3:register_heuristic("tcp", omi_aquis_aquisstockexchange_replay_amd_v1_2_3_tcp_heuristic)

-- Register Aquis AquisStockExchange Replay Amd 1.2.3 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_aquis_aquisstockexchange_replay_amd_v1_2_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 1.2.3
--   Date: Tuesday, April 23, 2024
--   Specification: Aquis Stock Exchange Multicast Market Data Specification v1.2.3 (2024).pdf
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
