-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C1Options Index Csm 1.3.3 Protocol
local omi_cboe_c1options_index_csm_v1_3_3 = Proto("Omi.Cboe.C1Options.Index.Csm.v1.3.3", "Cboe C1Options Index Csm 1.3.3")

-- Protocol table
local cboe_c1options_index_csm_v1_3_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C1Options Index Csm 1.3.3 Fields
omi_cboe_c1options_index_csm_v1_3_3.fields.first_msg_seq_num = ProtoField.new("First Msg Seq Num", "cboe.c1options.index.csm.v1.3.3.firstmsgseqnum", ftypes.UINT32, nil, nil, nil, "The sequence number on the first message in this packet")
omi_cboe_c1options_index_csm_v1_3_3.fields.md_entries = ProtoField.new("Md Entries", "cboe.c1options.index.csm.v1.3.3.mdentries", ftypes.STRING, nil, nil, nil, "The Following Fields Repeat NoMDEntries times")
omi_cboe_c1options_index_csm_v1_3_3.fields.md_entry_px = ProtoField.new("Md Entry Px", "cboe.c1options.index.csm.v1.3.3.mdentrypx", ftypes.STRING)
omi_cboe_c1options_index_csm_v1_3_3.fields.md_entry_px_exponent = ProtoField.new("Md Entry Px Exponent", "cboe.c1options.index.csm.v1.3.3.mdentrypxexponent", ftypes.INT8, nil, nil, nil, "Index value associated with MDEntryType")
omi_cboe_c1options_index_csm_v1_3_3.fields.md_entry_px_mantissa = ProtoField.new("Md Entry Px Mantissa", "cboe.c1options.index.csm.v1.3.3.mdentrypxmantissa", ftypes.INT32, nil, nil, nil, "Index value associated with MDEntryType")
omi_cboe_c1options_index_csm_v1_3_3.fields.md_entry_type = ProtoField.new("Md Entry Type", "cboe.c1options.index.csm.v1.3.3.mdentrytype", ftypes.STRING, nil, nil, nil, "Entry Type. See table: 10 – MD Entry Type")
omi_cboe_c1options_index_csm_v1_3_3.fields.message_count = ProtoField.new("Message Count", "cboe.c1options.index.csm.v1.3.3.messagecount", ftypes.UINT8, nil, nil, nil, "The number of messages in this packet")
omi_cboe_c1options_index_csm_v1_3_3.fields.message_length = ProtoField.new("Message Length", "cboe.c1options.index.csm.v1.3.3.messagelength", ftypes.UINT16, nil, nil, nil, "Length of the message in bytes")
omi_cboe_c1options_index_csm_v1_3_3.fields.message_type = ProtoField.new("Message Type", "cboe.c1options.index.csm.v1.3.3.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_cboe_c1options_index_csm_v1_3_3.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "cboe.c1options.index.csm.v1.3.3.msgseqnum", ftypes.UINT32, nil, nil, nil, "Message Sequence Number")
omi_cboe_c1options_index_csm_v1_3_3.fields.no_md_entries = ProtoField.new("No Md Entries", "cboe.c1options.index.csm.v1.3.3.nomdentries", ftypes.UINT8, nil, nil, nil, "Number of MDEntries in this message. Will not exceed 255")
omi_cboe_c1options_index_csm_v1_3_3.fields.packet_length = ProtoField.new("Packet Length", "cboe.c1options.index.csm.v1.3.3.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet including this length field and the version")
omi_cboe_c1options_index_csm_v1_3_3.fields.sending_time = ProtoField.new("Sending Time", "cboe.c1options.index.csm.v1.3.3.sendingtime", ftypes.UINT64, nil, nil, nil, "The time that this packet was sent. It applies to all messages in this packet.")
omi_cboe_c1options_index_csm_v1_3_3.fields.symbol = ProtoField.new("Symbol", "cboe.c1options.index.csm.v1.3.3.symbol", ftypes.STRING)
omi_cboe_c1options_index_csm_v1_3_3.fields.symbol_length = ProtoField.new("Symbol Length", "cboe.c1options.index.csm.v1.3.3.symbollength", ftypes.UINT8, nil, nil, nil, "Index symbol")
omi_cboe_c1options_index_csm_v1_3_3.fields.symbol_text = ProtoField.new("Symbol Text", "cboe.c1options.index.csm.v1.3.3.symboltext", ftypes.STRING, nil, nil, nil, "Index symbol")
omi_cboe_c1options_index_csm_v1_3_3.fields.template_id = ProtoField.new("Template Id", "cboe.c1options.index.csm.v1.3.3.templateid", ftypes.UINT8, nil, nil, nil, "The Template ID is for decoding the message.")
omi_cboe_c1options_index_csm_v1_3_3.fields.version = ProtoField.new("Version", "cboe.c1options.index.csm.v1.3.3.version", ftypes.UINT8, nil, nil, nil, "The version associated with the contents and format of this header. Currently, this will be a constant value of 1.")

-- Cboe C1Options Index Csm 1.3.3 Framing
omi_cboe_c1options_index_csm_v1_3_3.fields.message = ProtoField.new("Message", "cboe.c1options.index.csm.v1.3.3.message", ftypes.STRING)
omi_cboe_c1options_index_csm_v1_3_3.fields.message_header = ProtoField.new("Message Header", "cboe.c1options.index.csm.v1.3.3.messageheader", ftypes.STRING)
omi_cboe_c1options_index_csm_v1_3_3.fields.packet = ProtoField.new("Packet", "cboe.c1options.index.csm.v1.3.3.packet", ftypes.STRING, nil, nil, nil, "Csm Udp Packet")
omi_cboe_c1options_index_csm_v1_3_3.fields.packet_header = ProtoField.new("Packet Header", "cboe.c1options.index.csm.v1.3.3.packetheader", ftypes.STRING)

-- Cboe C1Options Index 1.3.3 Application Messages
omi_cboe_c1options_index_csm_v1_3_3.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "cboe.c1options.index.csm.v1.3.3.heartbeatmessage", ftypes.BYTES, nil, nil, nil, "This message contains only a standard header. The heartbeat will repeat at a regular interval.")
omi_cboe_c1options_index_csm_v1_3_3.fields.index_value_message = ProtoField.new("Index Value Message", "cboe.c1options.index.csm.v1.3.3.indexvaluemessage", ftypes.STRING, nil, nil, nil, "Index value messages contain the values associated with a calculated index. They are transmitted when an index is calculated.")

-- Cboe C1Options Index Csm 1.3.3 Generated Fields
omi_cboe_c1options_index_csm_v1_3_3.fields.md_entries_index = ProtoField.new("Md Entries Index", "cboe.c1options.index.csm.v1.3.3.mdentriesindex", ftypes.UINT16)
omi_cboe_c1options_index_csm_v1_3_3.fields.message_index = ProtoField.new("Message Index", "cboe.c1options.index.csm.v1.3.3.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C1Options Index Csm 1.3.3 Element Dissection Options
show.application_messages = true
show.repeating_groups = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Cboe C1Options Index Csm 1.3.3 Show Options
omi_cboe_c1options_index_csm_v1_3_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_c1options_index_csm_v1_3_3.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cboe_c1options_index_csm_v1_3_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cboe_c1options_index_csm_v1_3_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cboe_c1options_index_csm_v1_3_3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_cboe_c1options_index_csm_v1_3_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_c1options_index_csm_v1_3_3.prefs.show_application_messages then
    show.application_messages = omi_cboe_c1options_index_csm_v1_3_3.prefs.show_application_messages
  end
  if show.headers ~= omi_cboe_c1options_index_csm_v1_3_3.prefs.show_headers then
    show.headers = omi_cboe_c1options_index_csm_v1_3_3.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cboe_c1options_index_csm_v1_3_3.prefs.show_repeating_groups then
    show.repeating_groups = omi_cboe_c1options_index_csm_v1_3_3.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cboe_c1options_index_csm_v1_3_3.prefs.show_structs then
    show.structs = omi_cboe_c1options_index_csm_v1_3_3.prefs.show_structs
  end
  if show.indexes ~= omi_cboe_c1options_index_csm_v1_3_3.prefs.show_indexes then
    show.indexes = omi_cboe_c1options_index_csm_v1_3_3.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Cboe C1Options Index Csm 1.3.3 Fields
-----------------------------------------------------------------------

-- First Msg Seq Num
cboe_c1options_index_csm_v1_3_3.first_msg_seq_num = {}

-- Size: First Msg Seq Num
cboe_c1options_index_csm_v1_3_3.first_msg_seq_num.size = 4

-- Display: First Msg Seq Num
cboe_c1options_index_csm_v1_3_3.first_msg_seq_num.display = function(value)
  return "First Msg Seq Num: "..value
end

-- Dissect: First Msg Seq Num
cboe_c1options_index_csm_v1_3_3.first_msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.first_msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_c1options_index_csm_v1_3_3.first_msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.first_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Md Entry Px Exponent
cboe_c1options_index_csm_v1_3_3.md_entry_px_exponent = {}

-- Size: Md Entry Px Exponent
cboe_c1options_index_csm_v1_3_3.md_entry_px_exponent.size = 1

-- Display: Md Entry Px Exponent
cboe_c1options_index_csm_v1_3_3.md_entry_px_exponent.display = function(value)
  return "Md Entry Px Exponent: "..value
end

-- Dissect: Md Entry Px Exponent
cboe_c1options_index_csm_v1_3_3.md_entry_px_exponent.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.md_entry_px_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_c1options_index_csm_v1_3_3.md_entry_px_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.md_entry_px_exponent, range, value, display)

  return offset + length, value
end

-- Md Entry Px Mantissa
cboe_c1options_index_csm_v1_3_3.md_entry_px_mantissa = {}

-- Size: Md Entry Px Mantissa
cboe_c1options_index_csm_v1_3_3.md_entry_px_mantissa.size = 4

-- Display: Md Entry Px Mantissa
cboe_c1options_index_csm_v1_3_3.md_entry_px_mantissa.display = function(value)
  return "Md Entry Px Mantissa: "..value
end

-- Dissect: Md Entry Px Mantissa
cboe_c1options_index_csm_v1_3_3.md_entry_px_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.md_entry_px_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_c1options_index_csm_v1_3_3.md_entry_px_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.md_entry_px_mantissa, range, value, display)

  return offset + length, value
end

-- Md Entry Type
cboe_c1options_index_csm_v1_3_3.md_entry_type = {}

-- Size: Md Entry Type
cboe_c1options_index_csm_v1_3_3.md_entry_type.size = 1

-- Display: Md Entry Type
cboe_c1options_index_csm_v1_3_3.md_entry_type.labels = {
  ["0"] = "Md Entry Type: Bid (0)",
  ["1"] = "Md Entry Type: Ask (1)",
  ["3"] = "Md Entry Type: Index Value (3)",
}

cboe_c1options_index_csm_v1_3_3.md_entry_type.display = function(value)
  return cboe_c1options_index_csm_v1_3_3.md_entry_type.labels[value] or "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
cboe_c1options_index_csm_v1_3_3.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.md_entry_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_index_csm_v1_3_3.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Message Count
cboe_c1options_index_csm_v1_3_3.message_count = {}

-- Size: Message Count
cboe_c1options_index_csm_v1_3_3.message_count.size = 1

-- Display: Message Count
cboe_c1options_index_csm_v1_3_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
cboe_c1options_index_csm_v1_3_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_c1options_index_csm_v1_3_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c1options_index_csm_v1_3_3.message_length = {}

-- Size: Message Length
cboe_c1options_index_csm_v1_3_3.message_length.size = 2

-- Display: Message Length
cboe_c1options_index_csm_v1_3_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c1options_index_csm_v1_3_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_c1options_index_csm_v1_3_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_c1options_index_csm_v1_3_3.message_type = {}

-- Size: Message Type
cboe_c1options_index_csm_v1_3_3.message_type.size = 1

-- Display: Message Type
cboe_c1options_index_csm_v1_3_3.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
cboe_c1options_index_csm_v1_3_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_index_csm_v1_3_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
cboe_c1options_index_csm_v1_3_3.msg_seq_num = {}

-- Size: Msg Seq Num
cboe_c1options_index_csm_v1_3_3.msg_seq_num.size = 4

-- Display: Msg Seq Num
cboe_c1options_index_csm_v1_3_3.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
cboe_c1options_index_csm_v1_3_3.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_c1options_index_csm_v1_3_3.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- No Md Entries
cboe_c1options_index_csm_v1_3_3.no_md_entries = {}

-- Size: No Md Entries
cboe_c1options_index_csm_v1_3_3.no_md_entries.size = 1

-- Display: No Md Entries
cboe_c1options_index_csm_v1_3_3.no_md_entries.display = function(value)
  return "No Md Entries: "..value
end

-- Dissect: No Md Entries
cboe_c1options_index_csm_v1_3_3.no_md_entries.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.no_md_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_c1options_index_csm_v1_3_3.no_md_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.no_md_entries, range, value, display)

  return offset + length, value
end

-- Packet Length
cboe_c1options_index_csm_v1_3_3.packet_length = {}

-- Size: Packet Length
cboe_c1options_index_csm_v1_3_3.packet_length.size = 2

-- Display: Packet Length
cboe_c1options_index_csm_v1_3_3.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
cboe_c1options_index_csm_v1_3_3.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_c1options_index_csm_v1_3_3.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Sending Time
cboe_c1options_index_csm_v1_3_3.sending_time = {}

-- Size: Sending Time
cboe_c1options_index_csm_v1_3_3.sending_time.size = 8

-- Display: Sending Time
cboe_c1options_index_csm_v1_3_3.sending_time.display = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
cboe_c1options_index_csm_v1_3_3.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.sending_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = cboe_c1options_index_csm_v1_3_3.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Symbol Length
cboe_c1options_index_csm_v1_3_3.symbol_length = {}

-- Size: Symbol Length
cboe_c1options_index_csm_v1_3_3.symbol_length.size = 1

-- Display: Symbol Length
cboe_c1options_index_csm_v1_3_3.symbol_length.display = function(value)
  return "Symbol Length: "..value
end

-- Dissect: Symbol Length
cboe_c1options_index_csm_v1_3_3.symbol_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.symbol_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_c1options_index_csm_v1_3_3.symbol_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.symbol_length, range, value, display)

  return offset + length, value
end

-- Symbol Text
cboe_c1options_index_csm_v1_3_3.symbol_text = {}

-- Display: Symbol Text
cboe_c1options_index_csm_v1_3_3.symbol_text.display = function(value)
  return "Symbol Text: "..value
end

-- Dissect runtime sized field: Symbol Text
cboe_c1options_index_csm_v1_3_3.symbol_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = cboe_c1options_index_csm_v1_3_3.symbol_text.display(value, packet, parent, size)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.symbol_text, range, value, display)

  return offset + size, value
end

-- Template Id
cboe_c1options_index_csm_v1_3_3.template_id = {}

-- Size: Template Id
cboe_c1options_index_csm_v1_3_3.template_id.size = 1

-- Display: Template Id
cboe_c1options_index_csm_v1_3_3.template_id.labels = {
  [22] = "Template Id: Index Value Message (22)",
  [16] = "Template Id: Heartbeat Message (16)",
}

cboe_c1options_index_csm_v1_3_3.template_id.display = function(value)
  return cboe_c1options_index_csm_v1_3_3.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cboe_c1options_index_csm_v1_3_3.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_c1options_index_csm_v1_3_3.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Version
cboe_c1options_index_csm_v1_3_3.version = {}

-- Size: Version
cboe_c1options_index_csm_v1_3_3.version.size = 1

-- Display: Version
cboe_c1options_index_csm_v1_3_3.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
cboe_c1options_index_csm_v1_3_3.version.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_index_csm_v1_3_3.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cboe_c1options_index_csm_v1_3_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe C1Options Index Csm 1.3.3
-----------------------------------------------------------------------

-- Heartbeat Message
cboe_c1options_index_csm_v1_3_3.heartbeat_message = {}

-- Display: Heartbeat Message
cboe_c1options_index_csm_v1_3_3.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
cboe_c1options_index_csm_v1_3_3.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = cboe_c1options_index_csm_v1_3_3.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Md Entry Px
cboe_c1options_index_csm_v1_3_3.md_entry_px = {}

-- Size: Md Entry Px
cboe_c1options_index_csm_v1_3_3.md_entry_px.size =
  cboe_c1options_index_csm_v1_3_3.md_entry_px_exponent.size + 
  cboe_c1options_index_csm_v1_3_3.md_entry_px_mantissa.size

-- Display: Md Entry Px
cboe_c1options_index_csm_v1_3_3.md_entry_px.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entry Px
cboe_c1options_index_csm_v1_3_3.md_entry_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px Exponent: 1 Byte Signed Fixed Width Integer
  index, md_entry_px_exponent = cboe_c1options_index_csm_v1_3_3.md_entry_px_exponent.dissect(buffer, index, packet, parent)

  -- Md Entry Px Mantissa: 4 Byte Signed Fixed Width Integer
  index, md_entry_px_mantissa = cboe_c1options_index_csm_v1_3_3.md_entry_px_mantissa.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Entry Px
cboe_c1options_index_csm_v1_3_3.md_entry_px.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.md_entry_px, buffer(offset, 0))
    local index = cboe_c1options_index_csm_v1_3_3.md_entry_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_index_csm_v1_3_3.md_entry_px.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_index_csm_v1_3_3.md_entry_px.fields(buffer, offset, packet, parent)
  end
end

-- Md Entries
cboe_c1options_index_csm_v1_3_3.md_entries = {}

-- Size: Md Entries
cboe_c1options_index_csm_v1_3_3.md_entries.size =
  cboe_c1options_index_csm_v1_3_3.md_entry_type.size + 
  cboe_c1options_index_csm_v1_3_3.md_entry_px.size

-- Display: Md Entries
cboe_c1options_index_csm_v1_3_3.md_entries.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Entries
cboe_c1options_index_csm_v1_3_3.md_entries.fields = function(buffer, offset, packet, parent, md_entries_index)
  local index = offset

  -- Implicit Md Entries Index
  if md_entries_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.md_entries_index, md_entries_index)
    iteration:set_generated()
  end

  -- Md Entry Type: single byte string
  index, md_entry_type = cboe_c1options_index_csm_v1_3_3.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cboe_c1options_index_csm_v1_3_3.md_entry_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Entries
cboe_c1options_index_csm_v1_3_3.md_entries.dissect = function(buffer, offset, packet, parent, md_entries_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.md_entries, buffer(offset, 0))
    local index = cboe_c1options_index_csm_v1_3_3.md_entries.fields(buffer, offset, packet, parent, md_entries_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_index_csm_v1_3_3.md_entries.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_index_csm_v1_3_3.md_entries.fields(buffer, offset, packet, parent, md_entries_index)
  end
end

-- Symbol
cboe_c1options_index_csm_v1_3_3.symbol = {}

-- Calculate size of: Symbol
cboe_c1options_index_csm_v1_3_3.symbol.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1options_index_csm_v1_3_3.symbol_length.size

  -- Parse runtime size of: Symbol Text
  index = index + buffer(offset + index - 1, 1):uint()

  return index
end

-- Display: Symbol
cboe_c1options_index_csm_v1_3_3.symbol.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol
cboe_c1options_index_csm_v1_3_3.symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Length: 1 Byte Unsigned Fixed Width Integer
  index, symbol_length = cboe_c1options_index_csm_v1_3_3.symbol_length.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Symbol Text
  index, symbol_text = cboe_c1options_index_csm_v1_3_3.symbol_text.dissect(buffer, index, packet, parent, symbol_length)

  return index
end

-- Dissect: Symbol
cboe_c1options_index_csm_v1_3_3.symbol.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.symbol, buffer(offset, 0))
    local index = cboe_c1options_index_csm_v1_3_3.symbol.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_index_csm_v1_3_3.symbol.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_index_csm_v1_3_3.symbol.fields(buffer, offset, packet, parent)
  end
end

-- Index Value Message
cboe_c1options_index_csm_v1_3_3.index_value_message = {}

-- Calculate size of: Index Value Message
cboe_c1options_index_csm_v1_3_3.index_value_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1options_index_csm_v1_3_3.symbol.size(buffer, offset + index)

  index = index + cboe_c1options_index_csm_v1_3_3.no_md_entries.size

  -- Calculate field size from count
  local md_entries_count = buffer(offset + index - 1, 1):uint()
  index = index + md_entries_count * 6

  return index
end

-- Display: Index Value Message
cboe_c1options_index_csm_v1_3_3.index_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value Message
cboe_c1options_index_csm_v1_3_3.index_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: Struct of 2 fields
  index, symbol = cboe_c1options_index_csm_v1_3_3.symbol.dissect(buffer, index, packet, parent)

  -- No Md Entries: length
  index, no_md_entries = cboe_c1options_index_csm_v1_3_3.no_md_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Md Entries
  for md_entries_index = 1, no_md_entries do
    index, md_entries = cboe_c1options_index_csm_v1_3_3.md_entries.dissect(buffer, index, packet, parent, md_entries_index)
  end

  return index
end

-- Dissect: Index Value Message
cboe_c1options_index_csm_v1_3_3.index_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.index_value_message, buffer(offset, 0))
    local index = cboe_c1options_index_csm_v1_3_3.index_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_index_csm_v1_3_3.index_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_index_csm_v1_3_3.index_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_c1options_index_csm_v1_3_3.payload = {}

-- Dispatch: Payload
cboe_c1options_index_csm_v1_3_3.payload.dispatch = {
  [22] = cboe_c1options_index_csm_v1_3_3.index_value_message.dissect,
  [16] = cboe_c1options_index_csm_v1_3_3.heartbeat_message.dissect,
}

-- Dissect: Payload
cboe_c1options_index_csm_v1_3_3.payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = cboe_c1options_index_csm_v1_3_3.payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_c1options_index_csm_v1_3_3.message_header = {}

-- Size: Message Header
cboe_c1options_index_csm_v1_3_3.message_header.size =
  cboe_c1options_index_csm_v1_3_3.message_length.size + 
  cboe_c1options_index_csm_v1_3_3.template_id.size + 
  cboe_c1options_index_csm_v1_3_3.message_type.size + 
  cboe_c1options_index_csm_v1_3_3.msg_seq_num.size

-- Display: Message Header
cboe_c1options_index_csm_v1_3_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c1options_index_csm_v1_3_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c1options_index_csm_v1_3_3.message_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, template_id = cboe_c1options_index_csm_v1_3_3.template_id.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String
  index, message_type = cboe_c1options_index_csm_v1_3_3.message_type.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = cboe_c1options_index_csm_v1_3_3.msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c1options_index_csm_v1_3_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.message_header, buffer(offset, 0))
    local index = cboe_c1options_index_csm_v1_3_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_index_csm_v1_3_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_index_csm_v1_3_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_c1options_index_csm_v1_3_3.message = {}

-- Display: Message
cboe_c1options_index_csm_v1_3_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c1options_index_csm_v1_3_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 4 fields
  index, message_header = cboe_c1options_index_csm_v1_3_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 2 branches
  index = cboe_c1options_index_csm_v1_3_3.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cboe_c1options_index_csm_v1_3_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.message, buffer(offset, 0))
    local current = cboe_c1options_index_csm_v1_3_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c1options_index_csm_v1_3_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c1options_index_csm_v1_3_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_c1options_index_csm_v1_3_3.packet_header = {}

-- Size: Packet Header
cboe_c1options_index_csm_v1_3_3.packet_header.size =
  cboe_c1options_index_csm_v1_3_3.version.size + 
  cboe_c1options_index_csm_v1_3_3.packet_length.size + 
  cboe_c1options_index_csm_v1_3_3.sending_time.size + 
  cboe_c1options_index_csm_v1_3_3.message_count.size + 
  cboe_c1options_index_csm_v1_3_3.first_msg_seq_num.size

-- Display: Packet Header
cboe_c1options_index_csm_v1_3_3.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c1options_index_csm_v1_3_3.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = cboe_c1options_index_csm_v1_3_3.version.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = cboe_c1options_index_csm_v1_3_3.packet_length.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cboe_c1options_index_csm_v1_3_3.sending_time.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = cboe_c1options_index_csm_v1_3_3.message_count.dissect(buffer, index, packet, parent)

  -- First Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, first_msg_seq_num = cboe_c1options_index_csm_v1_3_3.first_msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_c1options_index_csm_v1_3_3.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_index_csm_v1_3_3.fields.packet_header, buffer(offset, 0))
    local index = cboe_c1options_index_csm_v1_3_3.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_index_csm_v1_3_3.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_index_csm_v1_3_3.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c1options_index_csm_v1_3_3.packet = {}

-- Verify required size of Udp packet
cboe_c1options_index_csm_v1_3_3.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_c1options_index_csm_v1_3_3.packet_header.size
end

-- Dissect Packet
cboe_c1options_index_csm_v1_3_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = cboe_c1options_index_csm_v1_3_3.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 5, 1):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = cboe_c1options_index_csm_v1_3_3.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c1options_index_csm_v1_3_3.init()
end

-- Dissector for Cboe C1Options Index Csm 1.3.3
function omi_cboe_c1options_index_csm_v1_3_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cboe_c1options_index_csm_v1_3_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c1options_index_csm_v1_3_3, buffer(), omi_cboe_c1options_index_csm_v1_3_3.description, "("..buffer:len().." Bytes)")
  return cboe_c1options_index_csm_v1_3_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
cboe_c1options_index_csm_v1_3_3.packet.fingerprint = function(buffer)
  if buffer:len() < 19 then
    return false
  end

  local template_id = buffer(18, 1):uint()

  -- Index Value Message
  if template_id == 22 then
    return true
  end

  -- Heartbeat Message
  if template_id == 16 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe C1Options Index Csm 1.3.3 (Udp)
local function omi_cboe_c1options_index_csm_v1_3_3_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c1options_index_csm_v1_3_3.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not cboe_c1options_index_csm_v1_3_3.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c1options_index_csm_v1_3_3
  omi_cboe_c1options_index_csm_v1_3_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C1Options Index Csm 1.3.3
omi_cboe_c1options_index_csm_v1_3_3:register_heuristic("udp", omi_cboe_c1options_index_csm_v1_3_3_udp_heuristic)

-- Register Cboe C1Options Index Csm 1.3.3 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_c1options_index_csm_v1_3_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.3.3
--   Date: Tuesday, February 6, 2018
--   Specification: Cboe Streaming Index v1.3.3.pdf
--   Specification: Cboe Streaming Index MSCI v1.0.pdf
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
