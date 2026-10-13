-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lme LmeSelect DrSignal LmeSource 4.18 Protocol
local omi_lme_lmeselect_drsignal_lmesource_v4_18 = Proto("Omi.Lme.LmeSelect.DrSignal.LmeSource.v4.18", "Lme LmeSelect DrSignal LmeSource 4.18")

-- Protocol table
local lme_lmeselect_drsignal_lmesource_v4_18 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lme LmeSelect DrSignal LmeSource 4.18 Fields
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.dr_status = ProtoField.new("Dr Status", "lme.lmeselect.drsignal.lmesource.v4.18.drstatus", ftypes.UINT32)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.filler = ProtoField.new("Filler", "lme.lmeselect.drsignal.lmesource.v4.18.filler", ftypes.STRING)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.msg_count = ProtoField.new("Msg Count", "lme.lmeselect.drsignal.lmesource.v4.18.msgcount", ftypes.UINT8)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.msg_size = ProtoField.new("Msg Size", "lme.lmeselect.drsignal.lmesource.v4.18.msgsize", ftypes.UINT16)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.msg_type = ProtoField.new("Msg Type", "lme.lmeselect.drsignal.lmesource.v4.18.msgtype", ftypes.UINT16)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.new_seq_no = ProtoField.new("New Seq No", "lme.lmeselect.drsignal.lmesource.v4.18.newseqno", ftypes.UINT32)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.pkt_size = ProtoField.new("Pkt Size", "lme.lmeselect.drsignal.lmesource.v4.18.pktsize", ftypes.UINT16)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.send_time = ProtoField.new("Send Time", "lme.lmeselect.drsignal.lmesource.v4.18.sendtime", ftypes.UINT64)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.seq_num = ProtoField.new("Seq Num", "lme.lmeselect.drsignal.lmesource.v4.18.seqnum", ftypes.UINT32)

-- Lme LmeSelect DrSignal LmeSource 4.18 Framing
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.message_header = ProtoField.new("Message Header", "lme.lmeselect.drsignal.lmesource.v4.18.messageheader", ftypes.STRING)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.messages = ProtoField.new("Messages", "lme.lmeselect.drsignal.lmesource.v4.18.messages", ftypes.STRING)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.packet = ProtoField.new("Packet", "lme.lmeselect.drsignal.lmesource.v4.18.packet", ftypes.STRING)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.packet_header = ProtoField.new("Packet Header", "lme.lmeselect.drsignal.lmesource.v4.18.packetheader", ftypes.STRING)

-- Lme LmeSelect DrSignal 4.18 Application Messages
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.disaster_recovery_signal_message = ProtoField.new("Disaster Recovery Signal Message", "lme.lmeselect.drsignal.lmesource.v4.18.disasterrecoverysignalmessage", ftypes.STRING)
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "lme.lmeselect.drsignal.lmesource.v4.18.sequenceresetmessage", ftypes.STRING)

-- Lme LmeSelect DrSignal LmeSource 4.18 Generated Fields
omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.messages_index = ProtoField.new("Messages Index", "lme.lmeselect.drsignal.lmesource.v4.18.messagesindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lme LmeSelect DrSignal LmeSource 4.18 Element Dissection Options
show.application_messages = true
show.headers = true
show.structs = true
show.indexes = true

-- Register Lme LmeSelect DrSignal LmeSource 4.18 Show Options
omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_application_messages then
    show.application_messages = omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_application_messages
  end
  if show.headers ~= omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_headers then
    show.headers = omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_headers
  end
  if show.structs ~= omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_structs then
    show.structs = omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_structs
  end
  if show.indexes ~= omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_indexes then
    show.indexes = omi_lme_lmeselect_drsignal_lmesource_v4_18.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Lme LmeSelect DrSignal LmeSource 4.18 Fields
-----------------------------------------------------------------------

-- Dr Status
lme_lmeselect_drsignal_lmesource_v4_18.dr_status = {}

-- Size: Dr Status
lme_lmeselect_drsignal_lmesource_v4_18.dr_status.size = 4

-- Display: Dr Status
lme_lmeselect_drsignal_lmesource_v4_18.dr_status.display = function(value)
  if value == 1 then
    return "Dr Status: Dr In Progress (1)"
  end
  if value == 2 then
    return "Dr Status: Dr Completed (2)"
  end

  return "Dr Status: Unknown("..value..")"
end

-- Dissect: Dr Status
lme_lmeselect_drsignal_lmesource_v4_18.dr_status.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_drsignal_lmesource_v4_18.dr_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_drsignal_lmesource_v4_18.dr_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.dr_status, range, value, display)

  return offset + length, value
end

-- Filler
lme_lmeselect_drsignal_lmesource_v4_18.filler = {}

-- Size: Filler
lme_lmeselect_drsignal_lmesource_v4_18.filler.size = 1

-- Display: Filler
lme_lmeselect_drsignal_lmesource_v4_18.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
lme_lmeselect_drsignal_lmesource_v4_18.filler.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_drsignal_lmesource_v4_18.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lme_lmeselect_drsignal_lmesource_v4_18.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.filler, range, value, display)

  return offset + length, value
end

-- Msg Count
lme_lmeselect_drsignal_lmesource_v4_18.msg_count = {}

-- Size: Msg Count
lme_lmeselect_drsignal_lmesource_v4_18.msg_count.size = 1

-- Display: Msg Count
lme_lmeselect_drsignal_lmesource_v4_18.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
lme_lmeselect_drsignal_lmesource_v4_18.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_drsignal_lmesource_v4_18.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lme_lmeselect_drsignal_lmesource_v4_18.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
lme_lmeselect_drsignal_lmesource_v4_18.msg_size = {}

-- Size: Msg Size
lme_lmeselect_drsignal_lmesource_v4_18.msg_size.size = 2

-- Display: Msg Size
lme_lmeselect_drsignal_lmesource_v4_18.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
lme_lmeselect_drsignal_lmesource_v4_18.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_drsignal_lmesource_v4_18.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_drsignal_lmesource_v4_18.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
lme_lmeselect_drsignal_lmesource_v4_18.msg_type = {}

-- Size: Msg Type
lme_lmeselect_drsignal_lmesource_v4_18.msg_type.size = 2

-- Display: Msg Type
lme_lmeselect_drsignal_lmesource_v4_18.msg_type.display = function(value)
  if value == 100 then
    return "Msg Type: Sequence Reset Message (100)"
  end
  if value == 105 then
    return "Msg Type: Disaster Recovery Signal Message (105)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
lme_lmeselect_drsignal_lmesource_v4_18.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_drsignal_lmesource_v4_18.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_drsignal_lmesource_v4_18.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
lme_lmeselect_drsignal_lmesource_v4_18.new_seq_no = {}

-- Size: New Seq No
lme_lmeselect_drsignal_lmesource_v4_18.new_seq_no.size = 4

-- Display: New Seq No
lme_lmeselect_drsignal_lmesource_v4_18.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
lme_lmeselect_drsignal_lmesource_v4_18.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_drsignal_lmesource_v4_18.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_drsignal_lmesource_v4_18.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Pkt Size
lme_lmeselect_drsignal_lmesource_v4_18.pkt_size = {}

-- Size: Pkt Size
lme_lmeselect_drsignal_lmesource_v4_18.pkt_size.size = 2

-- Display: Pkt Size
lme_lmeselect_drsignal_lmesource_v4_18.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
lme_lmeselect_drsignal_lmesource_v4_18.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_drsignal_lmesource_v4_18.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_drsignal_lmesource_v4_18.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Send Time
lme_lmeselect_drsignal_lmesource_v4_18.send_time = {}

-- Size: Send Time
lme_lmeselect_drsignal_lmesource_v4_18.send_time.size = 8

-- Display: Send Time
lme_lmeselect_drsignal_lmesource_v4_18.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
lme_lmeselect_drsignal_lmesource_v4_18.send_time.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_drsignal_lmesource_v4_18.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lme_lmeselect_drsignal_lmesource_v4_18.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
lme_lmeselect_drsignal_lmesource_v4_18.seq_num = {}

-- Size: Seq Num
lme_lmeselect_drsignal_lmesource_v4_18.seq_num.size = 4

-- Display: Seq Num
lme_lmeselect_drsignal_lmesource_v4_18.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
lme_lmeselect_drsignal_lmesource_v4_18.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = lme_lmeselect_drsignal_lmesource_v4_18.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lme_lmeselect_drsignal_lmesource_v4_18.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.seq_num, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lme LmeSelect DrSignal LmeSource 4.18
-----------------------------------------------------------------------

-- Disaster Recovery Signal Message
lme_lmeselect_drsignal_lmesource_v4_18.disaster_recovery_signal_message = {}

-- Size: Disaster Recovery Signal Message
lme_lmeselect_drsignal_lmesource_v4_18.disaster_recovery_signal_message.size =
  lme_lmeselect_drsignal_lmesource_v4_18.dr_status.size

-- Display: Disaster Recovery Signal Message
lme_lmeselect_drsignal_lmesource_v4_18.disaster_recovery_signal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Signal Message
lme_lmeselect_drsignal_lmesource_v4_18.disaster_recovery_signal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dr Status: Uint32
  index, dr_status = lme_lmeselect_drsignal_lmesource_v4_18.dr_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Signal Message
lme_lmeselect_drsignal_lmesource_v4_18.disaster_recovery_signal_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.disaster_recovery_signal_message, buffer(offset, 0))
    local index = lme_lmeselect_drsignal_lmesource_v4_18.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_drsignal_lmesource_v4_18.disaster_recovery_signal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_drsignal_lmesource_v4_18.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
lme_lmeselect_drsignal_lmesource_v4_18.sequence_reset_message = {}

-- Size: Sequence Reset Message
lme_lmeselect_drsignal_lmesource_v4_18.sequence_reset_message.size =
  lme_lmeselect_drsignal_lmesource_v4_18.new_seq_no.size

-- Display: Sequence Reset Message
lme_lmeselect_drsignal_lmesource_v4_18.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
lme_lmeselect_drsignal_lmesource_v4_18.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = lme_lmeselect_drsignal_lmesource_v4_18.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
lme_lmeselect_drsignal_lmesource_v4_18.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.sequence_reset_message, buffer(offset, 0))
    local index = lme_lmeselect_drsignal_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_drsignal_lmesource_v4_18.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_drsignal_lmesource_v4_18.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lme_lmeselect_drsignal_lmesource_v4_18.payload = {}

-- Dissect: Payload
lme_lmeselect_drsignal_lmesource_v4_18.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Sequence Reset Message
  if msg_type == 100 then
    return lme_lmeselect_drsignal_lmesource_v4_18.sequence_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Signal Message
  if msg_type == 105 then
    return lme_lmeselect_drsignal_lmesource_v4_18.disaster_recovery_signal_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lme_lmeselect_drsignal_lmesource_v4_18.message_header = {}

-- Size: Message Header
lme_lmeselect_drsignal_lmesource_v4_18.message_header.size =
  lme_lmeselect_drsignal_lmesource_v4_18.msg_size.size + 
  lme_lmeselect_drsignal_lmesource_v4_18.msg_type.size

-- Display: Message Header
lme_lmeselect_drsignal_lmesource_v4_18.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lme_lmeselect_drsignal_lmesource_v4_18.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: Uint16
  index, msg_size = lme_lmeselect_drsignal_lmesource_v4_18.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: Uint16
  index, msg_type = lme_lmeselect_drsignal_lmesource_v4_18.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lme_lmeselect_drsignal_lmesource_v4_18.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.message_header, buffer(offset, 0))
    local index = lme_lmeselect_drsignal_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_drsignal_lmesource_v4_18.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_drsignal_lmesource_v4_18.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Messages
lme_lmeselect_drsignal_lmesource_v4_18.messages = {}

-- Calculate size of: Messages
lme_lmeselect_drsignal_lmesource_v4_18.messages.size = function(buffer, offset)
  local index = 0

  index = index + lme_lmeselect_drsignal_lmesource_v4_18.message_header.size

  -- Parse runtime size of: Payload
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Messages
lme_lmeselect_drsignal_lmesource_v4_18.messages.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Messages
lme_lmeselect_drsignal_lmesource_v4_18.messages.fields = function(buffer, offset, packet, parent, messages_index)
  local index = offset

  -- Implicit Messages Index
  if messages_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.messages_index, messages_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lme_lmeselect_drsignal_lmesource_v4_18.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 2 branches
  index = lme_lmeselect_drsignal_lmesource_v4_18.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Messages
lme_lmeselect_drsignal_lmesource_v4_18.messages.dissect = function(buffer, offset, packet, parent, messages_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.messages, buffer(offset, 0))
    local index = lme_lmeselect_drsignal_lmesource_v4_18.messages.fields(buffer, offset, packet, parent, messages_index)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_drsignal_lmesource_v4_18.messages.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_drsignal_lmesource_v4_18.messages.fields(buffer, offset, packet, parent, messages_index)
  end
end

-- Packet Header
lme_lmeselect_drsignal_lmesource_v4_18.packet_header = {}

-- Size: Packet Header
lme_lmeselect_drsignal_lmesource_v4_18.packet_header.size =
  lme_lmeselect_drsignal_lmesource_v4_18.pkt_size.size + 
  lme_lmeselect_drsignal_lmesource_v4_18.msg_count.size + 
  lme_lmeselect_drsignal_lmesource_v4_18.filler.size + 
  lme_lmeselect_drsignal_lmesource_v4_18.seq_num.size + 
  lme_lmeselect_drsignal_lmesource_v4_18.send_time.size

-- Display: Packet Header
lme_lmeselect_drsignal_lmesource_v4_18.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
lme_lmeselect_drsignal_lmesource_v4_18.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: Uint16
  index, pkt_size = lme_lmeselect_drsignal_lmesource_v4_18.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: Uint8
  index, msg_count = lme_lmeselect_drsignal_lmesource_v4_18.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: String
  index, filler = lme_lmeselect_drsignal_lmesource_v4_18.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: Uint32
  index, seq_num = lme_lmeselect_drsignal_lmesource_v4_18.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Uint64
  index, send_time = lme_lmeselect_drsignal_lmesource_v4_18.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
lme_lmeselect_drsignal_lmesource_v4_18.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18.fields.packet_header, buffer(offset, 0))
    local index = lme_lmeselect_drsignal_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lme_lmeselect_drsignal_lmesource_v4_18.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lme_lmeselect_drsignal_lmesource_v4_18.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lme_lmeselect_drsignal_lmesource_v4_18.packet = {}

-- Verify required size of Udp packet
lme_lmeselect_drsignal_lmesource_v4_18.packet.requiredsize = function(buffer)
  return buffer:len() >= lme_lmeselect_drsignal_lmesource_v4_18.packet_header.size
end

-- Dissect Packet
lme_lmeselect_drsignal_lmesource_v4_18.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = lme_lmeselect_drsignal_lmesource_v4_18.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Messages
  for messages_index = 1, msg_count do
    index, messages = lme_lmeselect_drsignal_lmesource_v4_18.messages.dissect(buffer, index, packet, parent, messages_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lme_lmeselect_drsignal_lmesource_v4_18.init()
end

-- Dissector for Lme LmeSelect DrSignal LmeSource 4.18
function omi_lme_lmeselect_drsignal_lmesource_v4_18.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_lme_lmeselect_drsignal_lmesource_v4_18.name

  -- Dissect protocol
  local protocol = parent:add(omi_lme_lmeselect_drsignal_lmesource_v4_18, buffer(), omi_lme_lmeselect_drsignal_lmesource_v4_18.description, "("..buffer:len().." Bytes)")
  return lme_lmeselect_drsignal_lmesource_v4_18.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lme LmeSelect DrSignal LmeSource 4.18 (Udp)
local function omi_lme_lmeselect_drsignal_lmesource_v4_18_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lme_lmeselect_drsignal_lmesource_v4_18.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lme_lmeselect_drsignal_lmesource_v4_18
  omi_lme_lmeselect_drsignal_lmesource_v4_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lme LmeSelect DrSignal LmeSource 4.18
omi_lme_lmeselect_drsignal_lmesource_v4_18:register_heuristic("udp", omi_lme_lmeselect_drsignal_lmesource_v4_18_udp_heuristic)

-- Register Lme LmeSelect DrSignal LmeSource 4.18 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lme_lmeselect_drsignal_lmesource_v4_18)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The London Metal Exchange
--   Version: 4.18
--   Date: Tuesday, August 18, 2026
--   Specification: LMEsource Client Interface Specification v4 18.pdf
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
