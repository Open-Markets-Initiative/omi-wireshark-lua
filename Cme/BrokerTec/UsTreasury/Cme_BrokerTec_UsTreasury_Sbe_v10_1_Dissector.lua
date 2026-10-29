-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme BrokerTec UsTreasury Sbe 10.1 Protocol
local omi_cme_brokertec_ustreasury_sbe_v10_1 = Proto("Omi.Cme.BrokerTec.UsTreasury.Sbe.v10.1", "Cme BrokerTec UsTreasury Sbe 10.1")

-- Protocol table
local cme_brokertec_ustreasury_sbe_v10_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme BrokerTec UsTreasury Sbe 10.1 Fields
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.block_length = ProtoField.new("Block Length", "cme.brokertec.ustreasury.sbe.v10.1.blocklength", ftypes.UINT16)
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.coupon_rate = ProtoField.new("Coupon Rate", "cme.brokertec.ustreasury.sbe.v10.1.couponrate", ftypes.STRING, nil, nil, nil, "Number of data blocks")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.encoding_type = ProtoField.new("Encoding Type", "cme.brokertec.ustreasury.sbe.v10.1.encodingtype", ftypes.UINT16)
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.exponent = ProtoField.new("Exponent", "cme.brokertec.ustreasury.sbe.v10.1.exponent", ftypes.INT8)
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.group_size = ProtoField.new("Group Size", "cme.brokertec.ustreasury.sbe.v10.1.groupsize", ftypes.STRING, nil, nil, nil, "Repeating group dimensions")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.incremental_refresh_btec_group = ProtoField.new("Incremental Refresh Btec Group", "cme.brokertec.ustreasury.sbe.v10.1.incrementalrefreshbtecgroup", ftypes.STRING, nil, nil, nil, "Number of data blocks")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.incremental_refresh_btec_groups = ProtoField.new("Incremental Refresh Btec Groups", "cme.brokertec.ustreasury.sbe.v10.1.incrementalrefreshbtecgroups", ftypes.STRING, nil, nil, nil, "NoMDEntries Block")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.mantissa = ProtoField.new("Mantissa", "cme.brokertec.ustreasury.sbe.v10.1.mantissa", ftypes.INT64)
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.mantissa_32 = ProtoField.new("Mantissa 32", "cme.brokertec.ustreasury.sbe.v10.1.mantissa32", ftypes.INT32, nil, nil, nil, "mantissa")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.maturity_date = ProtoField.new("Maturity Date", "cme.brokertec.ustreasury.sbe.v10.1.maturitydate", ftypes.UINT16, nil, nil, nil, "Instrument Maturity Date")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_entry_px = ProtoField.new("Md Entry Px", "cme.brokertec.ustreasury.sbe.v10.1.mdentrypx", ftypes.STRING, nil, nil, nil, "Number of data blocks")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_entry_size = ProtoField.new("Md Entry Size", "cme.brokertec.ustreasury.sbe.v10.1.mdentrysize", ftypes.UINT32, nil, nil, nil, "Quantity or volume represented by the Market Data Entry")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_entry_type = ProtoField.new("Md Entry Type", "cme.brokertec.ustreasury.sbe.v10.1.mdentrytype", ftypes.STRING, nil, nil, nil, "Indicates the type of Market Data entry")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_price_level = ProtoField.new("Md Price Level", "cme.brokertec.ustreasury.sbe.v10.1.mdpricelevel", ftypes.UINT8, nil, nil, nil, "Price level in the book")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_update_action = ProtoField.new("Md Update Action", "cme.brokertec.ustreasury.sbe.v10.1.mdupdateaction", ftypes.UINT8, nil, nil, nil, "Indicates the type of Market Data update action")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "cme.brokertec.ustreasury.sbe.v10.1.messagesequencenumber", ftypes.UINT32, nil, nil, nil, "Packet Sequence Number")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.message_size = ProtoField.new("Message Size", "cme.brokertec.ustreasury.sbe.v10.1.messagesize", ftypes.UINT16)
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.num_in_group = ProtoField.new("Num In Group", "cme.brokertec.ustreasury.sbe.v10.1.numingroup", ftypes.UINT8)
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "cme.brokertec.ustreasury.sbe.v10.1.packetsequencenumber", ftypes.UINT32)
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.price_type = ProtoField.new("Price Type", "cme.brokertec.ustreasury.sbe.v10.1.pricetype", ftypes.UINT8, nil, nil, nil, "Price type condition. 9=Yield")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.schema_id = ProtoField.new("Schema Id", "cme.brokertec.ustreasury.sbe.v10.1.schemaid", ftypes.UINT16)
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.security_alt_id = ProtoField.new("Security Alt Id", "cme.brokertec.ustreasury.sbe.v10.1.securityaltid", ftypes.STRING, nil, nil, nil, "CUSIP")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.security_alt_id_source = ProtoField.new("Security Alt Id Source", "cme.brokertec.ustreasury.sbe.v10.1.securityaltidsource", ftypes.STRING, nil, nil, nil, "Identifies class or source of the SecurityAltID (455) value")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.sending_time = ProtoField.new("Sending Time", "cme.brokertec.ustreasury.sbe.v10.1.sendingtime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Packet Sending Time")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.sending_time_utc = ProtoField.new("Sending Time", "cme.brokertec.ustreasury.sbe.v10.1.sendingtime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Packet Sending Time")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.simple_binary_header = ProtoField.new("Simple Binary Header", "cme.brokertec.ustreasury.sbe.v10.1.simplebinaryheader", ftypes.STRING, nil, nil, nil, "Template ID and length of message root")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.symbol = ProtoField.new("Symbol", "cme.brokertec.ustreasury.sbe.v10.1.symbol", ftypes.STRING, nil, nil, nil, "Contract symbol, name")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.tcp_sending_time = ProtoField.new("Tcp Sending Time", "cme.brokertec.ustreasury.sbe.v10.1.tcpsendingtime", ftypes.UINT64, nil, nil, nil, "Packet Sending Time")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.template_id = ProtoField.new("Template Id", "cme.brokertec.ustreasury.sbe.v10.1.templateid", ftypes.UINT16)
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.trade_condition = ProtoField.new("Trade Condition", "cme.brokertec.ustreasury.sbe.v10.1.tradecondition", ftypes.STRING, nil, nil, nil, "List of conditions describing a trade. H= Hit, T=Take")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.trade_date = ProtoField.new("Trade Date", "cme.brokertec.ustreasury.sbe.v10.1.tradedate", ftypes.UINT16)
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.trade_volume = ProtoField.new("Trade Volume", "cme.brokertec.ustreasury.sbe.v10.1.tradevolume", ftypes.UINT32, nil, nil, nil, "Total traded volume since the beginning of the session. If this tag is not present, then there is no volume")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.transact_time = ProtoField.new("Transact Time", "cme.brokertec.ustreasury.sbe.v10.1.transacttime", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Event processing time (UTC), sent in number of nanoseconds since Unix epoch")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.transact_time_utc = ProtoField.new("Transact Time", "cme.brokertec.ustreasury.sbe.v10.1.transacttime.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Event processing time (UTC), sent in number of nanoseconds since Unix epoch")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.version = ProtoField.new("Version", "cme.brokertec.ustreasury.sbe.v10.1.version", ftypes.UINT16)

-- Cme BrokerTec UsTreasury Sbe 10.1 Framing
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.brokertec.ustreasury.sbe.v10.1.binarypacketheader", ftypes.STRING, nil, nil, nil, "Cme Mdp Packet Header")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.message = ProtoField.new("Message", "cme.brokertec.ustreasury.sbe.v10.1.message", ftypes.STRING, nil, nil, nil, "Cme Market Data Message")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.message_header = ProtoField.new("Message Header", "cme.brokertec.ustreasury.sbe.v10.1.messageheader", ftypes.STRING, nil, nil, nil, "Message Size followed by the Simple Binary Header")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.tcp_frame = ProtoField.new("Tcp Frame", "cme.brokertec.ustreasury.sbe.v10.1.tcpframe", ftypes.STRING, nil, nil, nil, "One technical header framed Cme Sbe message")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.tcp_message = ProtoField.new("Tcp Message", "cme.brokertec.ustreasury.sbe.v10.1.tcpmessage", ftypes.STRING, nil, nil, nil, "Cme Market Data Message")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.tcp_packet = ProtoField.new("Tcp Packet", "cme.brokertec.ustreasury.sbe.v10.1.tcppacket", ftypes.STRING, nil, nil, nil, "Cme Sbe Tcp Packet")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.technical_header = ProtoField.new("Technical Header", "cme.brokertec.ustreasury.sbe.v10.1.technicalheader", ftypes.STRING, nil, nil, nil, "Cme Technical Header")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.udp_packet = ProtoField.new("Udp Packet", "cme.brokertec.ustreasury.sbe.v10.1.udppacket", ftypes.STRING, nil, nil, nil, "Cme Mdp Packet")

-- Cme BrokerTec UsTreasury 10.1 Application Messages
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.admin_heartbeat = ProtoField.new("Admin Heartbeat", "cme.brokertec.ustreasury.sbe.v10.1.adminheartbeat", ftypes.BYTES, nil, nil, nil, "AdminHeartbeat")
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_incremental_refresh_btec = ProtoField.new("Md Incremental Refresh Btec", "cme.brokertec.ustreasury.sbe.v10.1.mdincrementalrefreshbtec", ftypes.STRING, nil, nil, nil, "MDIncrementalRefreshBtec")

-- Cme BrokerTec UsTreasury Sbe 10.1 Generated Fields
omi_cme_brokertec_ustreasury_sbe_v10_1.fields.incremental_refresh_btec_group_index = ProtoField.new("Incremental Refresh Btec Group Index", "cme.brokertec.ustreasury.sbe.v10.1.incrementalrefreshbtecgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Cme BrokerTec UsTreasury Sbe 10.1 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
cme_brokertec_ustreasury_sbe_v10_1.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cme BrokerTec UsTreasury Sbe 10.1 Element Dissection Options
show.headers = true
show.structs = true
show.repeating_groups = true
show.application_messages = true
show.indexes = true

-- Register Cme BrokerTec UsTreasury Sbe 10.1 Show Options
omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_repeating_groups = Pref.bool("Show Repeating Groups", show.repeating_groups, "Parse and add Repeating Groups to protocol tree")
omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_cme_brokertec_ustreasury_sbe_v10_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_application_messages then
    show.application_messages = omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_application_messages
  end
  if show.headers ~= omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_headers then
    show.headers = omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_headers
  end
  if show.repeating_groups ~= omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_repeating_groups then
    show.repeating_groups = omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_repeating_groups
  end
  if show.structs ~= omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_structs then
    show.structs = omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_structs
  end
  if show.indexes ~= omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_indexes then
    show.indexes = omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.show_indexes
  end
  if cme_brokertec_ustreasury_sbe_v10_1.absolute_time_base ~= omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.absolute_time_base then
    cme_brokertec_ustreasury_sbe_v10_1.absolute_time_base = omi_cme_brokertec_ustreasury_sbe_v10_1.prefs.absolute_time_base
  end
end


-----------------------------------------------------------------------
-- Cme BrokerTec UsTreasury Sbe 10.1 Fields
-----------------------------------------------------------------------

-- Block Length
cme_brokertec_ustreasury_sbe_v10_1.block_length = {}

-- Size: Block Length
cme_brokertec_ustreasury_sbe_v10_1.block_length.size = 2

-- Display: Block Length
cme_brokertec_ustreasury_sbe_v10_1.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_brokertec_ustreasury_sbe_v10_1.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.block_length, range, value, display)

  return offset + length, value
end

-- Encoding Type
cme_brokertec_ustreasury_sbe_v10_1.encoding_type = {}

-- Size: Encoding Type
cme_brokertec_ustreasury_sbe_v10_1.encoding_type.size = 2

-- Display: Encoding Type
cme_brokertec_ustreasury_sbe_v10_1.encoding_type.display = function(value)
  if value == 51966 then
    return "Encoding Type: Cme Sbe Message"
  end

  return "Encoding Type: Unknown("..value..")"
end

-- Dissect: Encoding Type
cme_brokertec_ustreasury_sbe_v10_1.encoding_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.encoding_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.encoding_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- Exponent
cme_brokertec_ustreasury_sbe_v10_1.exponent = {}

-- Size: Exponent
cme_brokertec_ustreasury_sbe_v10_1.exponent.size = 1

-- Display: Exponent
cme_brokertec_ustreasury_sbe_v10_1.exponent.display = function(value)
  -- Check if field has value
  if value == 127 then
    return "Exponent: No Value"
  end

  return "Exponent: "..value
end

-- Dissect: Exponent
cme_brokertec_ustreasury_sbe_v10_1.exponent.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cme_brokertec_ustreasury_sbe_v10_1.exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.exponent, range, value, display)

  return offset + length, value
end

-- Mantissa
cme_brokertec_ustreasury_sbe_v10_1.mantissa = {}

-- Size: Mantissa
cme_brokertec_ustreasury_sbe_v10_1.mantissa.size = 8

-- Display: Mantissa
cme_brokertec_ustreasury_sbe_v10_1.mantissa.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Mantissa: No Value"
  end

  return "Mantissa: "..value
end

-- Dissect: Mantissa
cme_brokertec_ustreasury_sbe_v10_1.mantissa.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.mantissa.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = cme_brokertec_ustreasury_sbe_v10_1.mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.mantissa, range, value, display)

  return offset + length, value
end

-- Mantissa 32
cme_brokertec_ustreasury_sbe_v10_1.mantissa_32 = {}

-- Size: Mantissa 32
cme_brokertec_ustreasury_sbe_v10_1.mantissa_32.size = 4

-- Display: Mantissa 32
cme_brokertec_ustreasury_sbe_v10_1.mantissa_32.display = function(value)
  -- Check if field has value
  if value == 2147483647 then
    return "Mantissa 32: No Value"
  end

  return "Mantissa 32: "..value
end

-- Dissect: Mantissa 32
cme_brokertec_ustreasury_sbe_v10_1.mantissa_32.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.mantissa_32.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cme_brokertec_ustreasury_sbe_v10_1.mantissa_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.mantissa_32, range, value, display)

  return offset + length, value
end

-- Maturity Date
cme_brokertec_ustreasury_sbe_v10_1.maturity_date = {}

-- Size: Maturity Date
cme_brokertec_ustreasury_sbe_v10_1.maturity_date.size = 2

-- Display: Maturity Date
cme_brokertec_ustreasury_sbe_v10_1.maturity_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cme_brokertec_ustreasury_sbe_v10_1.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Md Entry Size
cme_brokertec_ustreasury_sbe_v10_1.md_entry_size = {}

-- Size: Md Entry Size
cme_brokertec_ustreasury_sbe_v10_1.md_entry_size.size = 4

-- Display: Md Entry Size
cme_brokertec_ustreasury_sbe_v10_1.md_entry_size.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Dissect: Md Entry Size
cme_brokertec_ustreasury_sbe_v10_1.md_entry_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.md_entry_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.md_entry_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Md Entry Type
cme_brokertec_ustreasury_sbe_v10_1.md_entry_type = {}

-- Size: Md Entry Type
cme_brokertec_ustreasury_sbe_v10_1.md_entry_type.size = 1

-- Display: Md Entry Type
cme_brokertec_ustreasury_sbe_v10_1.md_entry_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Md Entry Type: No Value"
  end

  if value == "0" then
    return "Md Entry Type: Bid (0)"
  end
  if value == "1" then
    return "Md Entry Type: Offer (1)"
  end
  if value == "2" then
    return "Md Entry Type: Trade (2)"
  end
  if value == "4" then
    return "Md Entry Type: Open Price (4)"
  end
  if value == "5" then
    return "Md Entry Type: Close Price (5)"
  end
  if value == "7" then
    return "Md Entry Type: High Trade Price (7)"
  end
  if value == "8" then
    return "Md Entry Type: Low Trade Price (8)"
  end
  if value == "9" then
    return "Md Entry Type: Vwap (9)"
  end
  if value == "E" then
    return "Md Entry Type: Implied Bid (E)"
  end
  if value == "F" then
    return "Md Entry Type: Implied Offer (F)"
  end
  if value == "J" then
    return "Md Entry Type: Book Reset (J)"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
cme_brokertec_ustreasury_sbe_v10_1.md_entry_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.md_entry_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_brokertec_ustreasury_sbe_v10_1.md_entry_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Md Price Level
cme_brokertec_ustreasury_sbe_v10_1.md_price_level = {}

-- Size: Md Price Level
cme_brokertec_ustreasury_sbe_v10_1.md_price_level.size = 1

-- Display: Md Price Level
cme_brokertec_ustreasury_sbe_v10_1.md_price_level.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Md Price Level: No Value"
  end

  return "Md Price Level: "..value
end

-- Dissect: Md Price Level
cme_brokertec_ustreasury_sbe_v10_1.md_price_level.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.md_price_level.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.md_price_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_price_level, range, value, display)

  return offset + length, value
end

-- Md Update Action
cme_brokertec_ustreasury_sbe_v10_1.md_update_action = {}

-- Size: Md Update Action
cme_brokertec_ustreasury_sbe_v10_1.md_update_action.size = 1

-- Display: Md Update Action
cme_brokertec_ustreasury_sbe_v10_1.md_update_action.labels = {
  [0] = "Md Update Action: New (0)",
  [1] = "Md Update Action: Update (1)",
  [2] = "Md Update Action: Delete (2)",
}

cme_brokertec_ustreasury_sbe_v10_1.md_update_action.display = function(value)
  return cme_brokertec_ustreasury_sbe_v10_1.md_update_action.labels[value] or "Md Update Action: Unknown("..value..")"
end

-- Dissect: Md Update Action
cme_brokertec_ustreasury_sbe_v10_1.md_update_action.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.md_update_action.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.md_update_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_update_action, range, value, display)

  return offset + length, value
end

-- Message Sequence Number
cme_brokertec_ustreasury_sbe_v10_1.message_sequence_number = {}

-- Size: Message Sequence Number
cme_brokertec_ustreasury_sbe_v10_1.message_sequence_number.size = 4

-- Display: Message Sequence Number
cme_brokertec_ustreasury_sbe_v10_1.message_sequence_number.display = function(value)
  return "Message Sequence Number: "..value
end

-- Dissect: Message Sequence Number
cme_brokertec_ustreasury_sbe_v10_1.message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.message_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Size
cme_brokertec_ustreasury_sbe_v10_1.message_size = {}

-- Size: Message Size
cme_brokertec_ustreasury_sbe_v10_1.message_size.size = 2

-- Display: Message Size
cme_brokertec_ustreasury_sbe_v10_1.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_brokertec_ustreasury_sbe_v10_1.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.message_size, range, value, display)

  return offset + length, value
end

-- Num In Group
cme_brokertec_ustreasury_sbe_v10_1.num_in_group = {}

-- Size: Num In Group
cme_brokertec_ustreasury_sbe_v10_1.num_in_group.size = 1

-- Display: Num In Group
cme_brokertec_ustreasury_sbe_v10_1.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
cme_brokertec_ustreasury_sbe_v10_1.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.num_in_group.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
cme_brokertec_ustreasury_sbe_v10_1.packet_sequence_number = {}

-- Size: Packet Sequence Number
cme_brokertec_ustreasury_sbe_v10_1.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
cme_brokertec_ustreasury_sbe_v10_1.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
cme_brokertec_ustreasury_sbe_v10_1.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Price Type
cme_brokertec_ustreasury_sbe_v10_1.price_type = {}

-- Size: Price Type
cme_brokertec_ustreasury_sbe_v10_1.price_type.size = 1

-- Display: Price Type
cme_brokertec_ustreasury_sbe_v10_1.price_type.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Price Type: No Value"
  end

  return "Price Type: "..value
end

-- Dissect: Price Type
cme_brokertec_ustreasury_sbe_v10_1.price_type.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.price_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.price_type, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_brokertec_ustreasury_sbe_v10_1.schema_id = {}

-- Size: Schema Id
cme_brokertec_ustreasury_sbe_v10_1.schema_id.size = 2

-- Display: Schema Id
cme_brokertec_ustreasury_sbe_v10_1.schema_id.display = function(value)
  if value == 10 then
    return "Schema Id: 10"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
cme_brokertec_ustreasury_sbe_v10_1.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Security Alt Id
cme_brokertec_ustreasury_sbe_v10_1.security_alt_id = {}

-- Size: Security Alt Id
cme_brokertec_ustreasury_sbe_v10_1.security_alt_id.size = 12

-- Display: Security Alt Id
cme_brokertec_ustreasury_sbe_v10_1.security_alt_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Alt Id: No Value"
  end

  return "Security Alt Id: "..value
end

-- Dissect: Security Alt Id
cme_brokertec_ustreasury_sbe_v10_1.security_alt_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.security_alt_id.size
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

  local display = cme_brokertec_ustreasury_sbe_v10_1.security_alt_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.security_alt_id, range, value, display)

  return offset + length, value
end

-- Security Alt Id Source
cme_brokertec_ustreasury_sbe_v10_1.security_alt_id_source = {}

-- Size: Security Alt Id Source
cme_brokertec_ustreasury_sbe_v10_1.security_alt_id_source.size = 1

-- Display: Security Alt Id Source
cme_brokertec_ustreasury_sbe_v10_1.security_alt_id_source.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Security Alt Id Source: No Value"
  end

  return "Security Alt Id Source: "..value
end

-- Dissect: Security Alt Id Source
cme_brokertec_ustreasury_sbe_v10_1.security_alt_id_source.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.security_alt_id_source.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_brokertec_ustreasury_sbe_v10_1.security_alt_id_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.security_alt_id_source, range, value, display)

  return offset + length, value
end

-- Sending Time
cme_brokertec_ustreasury_sbe_v10_1.sending_time = {}

-- Size: Sending Time
cme_brokertec_ustreasury_sbe_v10_1.sending_time.size = 8

-- Dissect: Sending Time
cme_brokertec_ustreasury_sbe_v10_1.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cme_brokertec_ustreasury_sbe_v10_1.fields.sending_time
  if cme_brokertec_ustreasury_sbe_v10_1.absolute_time_base == 1 then field = omi_cme_brokertec_ustreasury_sbe_v10_1.fields.sending_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Symbol
cme_brokertec_ustreasury_sbe_v10_1.symbol = {}

-- Size: Symbol
cme_brokertec_ustreasury_sbe_v10_1.symbol.size = 20

-- Display: Symbol
cme_brokertec_ustreasury_sbe_v10_1.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
cme_brokertec_ustreasury_sbe_v10_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.symbol.size
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

  local display = cme_brokertec_ustreasury_sbe_v10_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Tcp Sending Time
cme_brokertec_ustreasury_sbe_v10_1.tcp_sending_time = {}

-- Size: Tcp Sending Time
cme_brokertec_ustreasury_sbe_v10_1.tcp_sending_time.size = 8

-- Display: Tcp Sending Time
cme_brokertec_ustreasury_sbe_v10_1.tcp_sending_time.display = function(value)
  return "Tcp Sending Time: "..value
end

-- Dissect: Tcp Sending Time
cme_brokertec_ustreasury_sbe_v10_1.tcp_sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.tcp_sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_brokertec_ustreasury_sbe_v10_1.tcp_sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.tcp_sending_time, range, value, display)

  return offset + length, value
end

-- Template Id
cme_brokertec_ustreasury_sbe_v10_1.template_id = {}

-- Size: Template Id
cme_brokertec_ustreasury_sbe_v10_1.template_id.size = 2

-- Display: Template Id
cme_brokertec_ustreasury_sbe_v10_1.template_id.labels = {
  [405] = "Template Id: Md Incremental Refresh Btec (405)",
  [411] = "Template Id: Admin Heartbeat (411)",
}

cme_brokertec_ustreasury_sbe_v10_1.template_id.display = function(value)
  return cme_brokertec_ustreasury_sbe_v10_1.template_id.labels[value] or "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
cme_brokertec_ustreasury_sbe_v10_1.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Trade Condition
cme_brokertec_ustreasury_sbe_v10_1.trade_condition = {}

-- Size: Trade Condition
cme_brokertec_ustreasury_sbe_v10_1.trade_condition.size = 1

-- Display: Trade Condition
cme_brokertec_ustreasury_sbe_v10_1.trade_condition.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Trade Condition: No Value"
  end

  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
cme_brokertec_ustreasury_sbe_v10_1.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.trade_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = cme_brokertec_ustreasury_sbe_v10_1.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Date
cme_brokertec_ustreasury_sbe_v10_1.trade_date = {}

-- Size: Trade Date
cme_brokertec_ustreasury_sbe_v10_1.trade_date.size = 2

-- Display: Trade Date
cme_brokertec_ustreasury_sbe_v10_1.trade_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
cme_brokertec_ustreasury_sbe_v10_1.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Trade Volume
cme_brokertec_ustreasury_sbe_v10_1.trade_volume = {}

-- Size: Trade Volume
cme_brokertec_ustreasury_sbe_v10_1.trade_volume.size = 4

-- Display: Trade Volume
cme_brokertec_ustreasury_sbe_v10_1.trade_volume.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Trade Volume: No Value"
  end

  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
cme_brokertec_ustreasury_sbe_v10_1.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.trade_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Transact Time
cme_brokertec_ustreasury_sbe_v10_1.transact_time = {}

-- Size: Transact Time
cme_brokertec_ustreasury_sbe_v10_1.transact_time.size = 8

-- Dissect: Transact Time
cme_brokertec_ustreasury_sbe_v10_1.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_cme_brokertec_ustreasury_sbe_v10_1.fields.transact_time
  if cme_brokertec_ustreasury_sbe_v10_1.absolute_time_base == 1 then field = omi_cme_brokertec_ustreasury_sbe_v10_1.fields.transact_time_utc end

  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanos = (value % UInt64(1000000000)):tonumber()
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Version
cme_brokertec_ustreasury_sbe_v10_1.version = {}

-- Size: Version
cme_brokertec_ustreasury_sbe_v10_1.version.size = 2

-- Display: Version
cme_brokertec_ustreasury_sbe_v10_1.version.display = function(value)
  if value == 1 then
    return "Version: Version FIX5SP2"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
cme_brokertec_ustreasury_sbe_v10_1.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_brokertec_ustreasury_sbe_v10_1.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_brokertec_ustreasury_sbe_v10_1.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cme BrokerTec UsTreasury Sbe 10.1
-----------------------------------------------------------------------

-- Admin Heartbeat
cme_brokertec_ustreasury_sbe_v10_1.admin_heartbeat = {}

-- Display: Admin Heartbeat
cme_brokertec_ustreasury_sbe_v10_1.admin_heartbeat.display = function(packet, parent, length)
  return "Admin Heartbeat"
end


-- Dissect: Admin Heartbeat
cme_brokertec_ustreasury_sbe_v10_1.admin_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cme_brokertec_ustreasury_sbe_v10_1.admin_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Coupon Rate
cme_brokertec_ustreasury_sbe_v10_1.coupon_rate = {}

-- Size: Coupon Rate
cme_brokertec_ustreasury_sbe_v10_1.coupon_rate.size =
  cme_brokertec_ustreasury_sbe_v10_1.mantissa_32.size + 
  cme_brokertec_ustreasury_sbe_v10_1.exponent.size

-- Display: Coupon Rate
cme_brokertec_ustreasury_sbe_v10_1.coupon_rate.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return tostring(value)
end

-- Dissect Fields: Coupon Rate
cme_brokertec_ustreasury_sbe_v10_1.coupon_rate.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa 32: int32
  index, mantissa_32 = cme_brokertec_ustreasury_sbe_v10_1.mantissa_32.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = cme_brokertec_ustreasury_sbe_v10_1.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local coupon_rate = mantissa_32 * 10 ^ exponent

  -- Null check (composite is null when child is null sentinel)
  if mantissa_32 == 2147483647 then coupon_rate = nil end

  return index, coupon_rate
end

-- Dissect: Coupon Rate
cme_brokertec_ustreasury_sbe_v10_1.coupon_rate.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.coupon_rate, buffer(offset, 0))
    local index, value = cme_brokertec_ustreasury_sbe_v10_1.coupon_rate.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ustreasury_sbe_v10_1.coupon_rate.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ustreasury_sbe_v10_1.coupon_rate.fields(buffer, offset, packet, parent)
  end
end

-- Md Entry Px
cme_brokertec_ustreasury_sbe_v10_1.md_entry_px = {}

-- Size: Md Entry Px
cme_brokertec_ustreasury_sbe_v10_1.md_entry_px.size =
  cme_brokertec_ustreasury_sbe_v10_1.mantissa.size + 
  cme_brokertec_ustreasury_sbe_v10_1.exponent.size

-- Display: Md Entry Px
cme_brokertec_ustreasury_sbe_v10_1.md_entry_px.display = function(packet, parent, value, length)
  if value == nil then
    return "No Value"
  end

  return tostring(value)
end

-- Dissect Fields: Md Entry Px
cme_brokertec_ustreasury_sbe_v10_1.md_entry_px.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mantissa: int64
  index, mantissa = cme_brokertec_ustreasury_sbe_v10_1.mantissa.dissect(buffer, index, packet, parent)

  -- Exponent: int8
  index, exponent = cme_brokertec_ustreasury_sbe_v10_1.exponent.dissect(buffer, index, packet, parent)

  -- Composite value
  local md_entry_px = mantissa:tonumber() * 10 ^ exponent

  -- Null check (composite is null when child is null sentinel)
  if mantissa == Int64(0x00000000, 0x80000000) then md_entry_px = nil end

  return index, md_entry_px
end

-- Dissect: Md Entry Px
cme_brokertec_ustreasury_sbe_v10_1.md_entry_px.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_entry_px, buffer(offset, 0))
    local index, value = cme_brokertec_ustreasury_sbe_v10_1.md_entry_px.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ustreasury_sbe_v10_1.md_entry_px.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ustreasury_sbe_v10_1.md_entry_px.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Btec Group
cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_group = {}

-- Size: Incremental Refresh Btec Group
cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_group.size =
  cme_brokertec_ustreasury_sbe_v10_1.md_update_action.size + 
  cme_brokertec_ustreasury_sbe_v10_1.md_entry_type.size + 
  cme_brokertec_ustreasury_sbe_v10_1.md_entry_px.size + 
  cme_brokertec_ustreasury_sbe_v10_1.md_entry_size.size + 
  cme_brokertec_ustreasury_sbe_v10_1.md_price_level.size + 
  cme_brokertec_ustreasury_sbe_v10_1.trade_volume.size + 
  cme_brokertec_ustreasury_sbe_v10_1.symbol.size + 
  cme_brokertec_ustreasury_sbe_v10_1.maturity_date.size + 
  cme_brokertec_ustreasury_sbe_v10_1.security_alt_id.size + 
  cme_brokertec_ustreasury_sbe_v10_1.security_alt_id_source.size + 
  cme_brokertec_ustreasury_sbe_v10_1.coupon_rate.size + 
  cme_brokertec_ustreasury_sbe_v10_1.trade_condition.size + 
  cme_brokertec_ustreasury_sbe_v10_1.price_type.size

-- Display: Incremental Refresh Btec Group
cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Btec Group
cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_group.fields = function(buffer, offset, packet, parent, incremental_refresh_btec_group_index)
  local index = offset

  -- Implicit Incremental Refresh Btec Group Index
  if incremental_refresh_btec_group_index ~= nil and show.indexes then
    local iteration = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.incremental_refresh_btec_group_index, incremental_refresh_btec_group_index)
    iteration:set_generated()
  end

  -- Md Update Action: UpdateAction
  index, md_update_action = cme_brokertec_ustreasury_sbe_v10_1.md_update_action.dissect(buffer, index, packet, parent)

  -- Md Entry Type: MDEntryType
  index, md_entry_type = cme_brokertec_ustreasury_sbe_v10_1.md_entry_type.dissect(buffer, index, packet, parent)

  -- Md Entry Px: Struct of 2 fields
  index, md_entry_px = cme_brokertec_ustreasury_sbe_v10_1.md_entry_px.dissect(buffer, index, packet, parent)

  -- Md Entry Size: uInt32NULL
  index, md_entry_size = cme_brokertec_ustreasury_sbe_v10_1.md_entry_size.dissect(buffer, index, packet, parent)

  -- Md Price Level: uInt8NULL
  index, md_price_level = cme_brokertec_ustreasury_sbe_v10_1.md_price_level.dissect(buffer, index, packet, parent)

  -- Trade Volume: uInt32NULL
  index, trade_volume = cme_brokertec_ustreasury_sbe_v10_1.trade_volume.dissect(buffer, index, packet, parent)

  -- Symbol: Symbol
  index, symbol = cme_brokertec_ustreasury_sbe_v10_1.symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: LocalMktDate
  index, maturity_date = cme_brokertec_ustreasury_sbe_v10_1.maturity_date.dissect(buffer, index, packet, parent)

  -- Security Alt Id: String12
  index, security_alt_id = cme_brokertec_ustreasury_sbe_v10_1.security_alt_id.dissect(buffer, index, packet, parent)

  -- Security Alt Id Source: CHAR
  index, security_alt_id_source = cme_brokertec_ustreasury_sbe_v10_1.security_alt_id_source.dissect(buffer, index, packet, parent)

  -- Coupon Rate: Struct of 2 fields
  index, coupon_rate = cme_brokertec_ustreasury_sbe_v10_1.coupon_rate.dissect(buffer, index, packet, parent)

  -- Trade Condition: CHAR
  index, trade_condition = cme_brokertec_ustreasury_sbe_v10_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Price Type: uInt8NULL
  index, price_type = cme_brokertec_ustreasury_sbe_v10_1.price_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Incremental Refresh Btec Group
cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_group.dissect = function(buffer, offset, packet, parent, incremental_refresh_btec_group_index)
  if show.repeating_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.incremental_refresh_btec_group, buffer(offset, 0))
    local index = cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_group.fields(buffer, offset, packet, parent, incremental_refresh_btec_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_group.fields(buffer, offset, packet, parent, incremental_refresh_btec_group_index)
  end
end

-- Group Size
cme_brokertec_ustreasury_sbe_v10_1.group_size = {}

-- Size: Group Size
cme_brokertec_ustreasury_sbe_v10_1.group_size.size =
  cme_brokertec_ustreasury_sbe_v10_1.block_length.size + 
  cme_brokertec_ustreasury_sbe_v10_1.num_in_group.size

-- Display: Group Size
cme_brokertec_ustreasury_sbe_v10_1.group_size.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size
cme_brokertec_ustreasury_sbe_v10_1.group_size.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = cme_brokertec_ustreasury_sbe_v10_1.block_length.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = cme_brokertec_ustreasury_sbe_v10_1.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size
cme_brokertec_ustreasury_sbe_v10_1.group_size.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.group_size, buffer(offset, 0))
    local index = cme_brokertec_ustreasury_sbe_v10_1.group_size.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ustreasury_sbe_v10_1.group_size.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ustreasury_sbe_v10_1.group_size.fields(buffer, offset, packet, parent)
  end
end

-- Incremental Refresh Btec Groups
cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_groups = {}

-- Calculate size of: Incremental Refresh Btec Groups
cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_groups.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ustreasury_sbe_v10_1.group_size.size

  -- Calculate field size from count
  local incremental_refresh_btec_group_count = buffer(offset + index - 1, 1):uint()
  index = index + incremental_refresh_btec_group_count * 62

  return index
end

-- Display: Incremental Refresh Btec Groups
cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Incremental Refresh Btec Groups
cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index, group_size = cme_brokertec_ustreasury_sbe_v10_1.group_size.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):uint()

  -- Repeating: Incremental Refresh Btec Group
  for incremental_refresh_btec_group_index = 1, num_in_group do
    index, incremental_refresh_btec_group = cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_group.dissect(buffer, index, packet, parent, incremental_refresh_btec_group_index)
  end

  return index
end

-- Dissect: Incremental Refresh Btec Groups
cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_groups.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.incremental_refresh_btec_groups, buffer(offset, 0))
    local index = cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_groups.fields(buffer, offset, packet, parent)
  end
end

-- Md Incremental Refresh Btec
cme_brokertec_ustreasury_sbe_v10_1.md_incremental_refresh_btec = {}

-- Calculate size of: Md Incremental Refresh Btec
cme_brokertec_ustreasury_sbe_v10_1.md_incremental_refresh_btec.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ustreasury_sbe_v10_1.trade_date.size

  index = index + cme_brokertec_ustreasury_sbe_v10_1.transact_time.size

  index = index + cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_groups.size(buffer, offset + index)

  return index
end

-- Display: Md Incremental Refresh Btec
cme_brokertec_ustreasury_sbe_v10_1.md_incremental_refresh_btec.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Md Incremental Refresh Btec
cme_brokertec_ustreasury_sbe_v10_1.md_incremental_refresh_btec.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Date: LocalMktDate
  index, trade_date = cme_brokertec_ustreasury_sbe_v10_1.trade_date.dissect(buffer, index, packet, parent)

  -- Transact Time: uInt64
  index, transact_time = cme_brokertec_ustreasury_sbe_v10_1.transact_time.dissect(buffer, index, packet, parent)

  -- Incremental Refresh Btec Groups: Struct of 2 fields
  index, incremental_refresh_btec_groups = cme_brokertec_ustreasury_sbe_v10_1.incremental_refresh_btec_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Incremental Refresh Btec
cme_brokertec_ustreasury_sbe_v10_1.md_incremental_refresh_btec.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.md_incremental_refresh_btec, buffer(offset, 0))
    local index = cme_brokertec_ustreasury_sbe_v10_1.md_incremental_refresh_btec.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ustreasury_sbe_v10_1.md_incremental_refresh_btec.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ustreasury_sbe_v10_1.md_incremental_refresh_btec.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cme_brokertec_ustreasury_sbe_v10_1.payload = {}

-- Dispatch: Payload
cme_brokertec_ustreasury_sbe_v10_1.payload.dispatch = {
  [405] = cme_brokertec_ustreasury_sbe_v10_1.md_incremental_refresh_btec.dissect,
  [411] = cme_brokertec_ustreasury_sbe_v10_1.admin_heartbeat.dissect,
}

-- Dissect: Payload
cme_brokertec_ustreasury_sbe_v10_1.payload.dissect = function(buffer, offset, packet, parent, template_id)
  local dissect = cme_brokertec_ustreasury_sbe_v10_1.payload.dispatch[template_id]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Simple Binary Header
cme_brokertec_ustreasury_sbe_v10_1.simple_binary_header = {}

-- Size: Simple Binary Header
cme_brokertec_ustreasury_sbe_v10_1.simple_binary_header.size =
  cme_brokertec_ustreasury_sbe_v10_1.block_length.size + 
  cme_brokertec_ustreasury_sbe_v10_1.template_id.size + 
  cme_brokertec_ustreasury_sbe_v10_1.schema_id.size + 
  cme_brokertec_ustreasury_sbe_v10_1.version.size

-- Display: Simple Binary Header
cme_brokertec_ustreasury_sbe_v10_1.simple_binary_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Binary Header
cme_brokertec_ustreasury_sbe_v10_1.simple_binary_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = cme_brokertec_ustreasury_sbe_v10_1.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = cme_brokertec_ustreasury_sbe_v10_1.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = cme_brokertec_ustreasury_sbe_v10_1.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = cme_brokertec_ustreasury_sbe_v10_1.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Binary Header
cme_brokertec_ustreasury_sbe_v10_1.simple_binary_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.simple_binary_header, buffer(offset, 0))
    local index = cme_brokertec_ustreasury_sbe_v10_1.simple_binary_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ustreasury_sbe_v10_1.simple_binary_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ustreasury_sbe_v10_1.simple_binary_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Header
cme_brokertec_ustreasury_sbe_v10_1.message_header = {}

-- Size: Message Header
cme_brokertec_ustreasury_sbe_v10_1.message_header.size =
  cme_brokertec_ustreasury_sbe_v10_1.message_size.size + 
  cme_brokertec_ustreasury_sbe_v10_1.simple_binary_header.size

-- Display: Message Header
cme_brokertec_ustreasury_sbe_v10_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_brokertec_ustreasury_sbe_v10_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_brokertec_ustreasury_sbe_v10_1.message_size.dissect(buffer, index, packet, parent)

  -- Simple Binary Header: Struct of 4 fields
  index, simple_binary_header = cme_brokertec_ustreasury_sbe_v10_1.simple_binary_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_brokertec_ustreasury_sbe_v10_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.message_header, buffer(offset, 0))
    local index = cme_brokertec_ustreasury_sbe_v10_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ustreasury_sbe_v10_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ustreasury_sbe_v10_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Message
cme_brokertec_ustreasury_sbe_v10_1.tcp_message = {}

-- Calculate size of: Tcp Message
cme_brokertec_ustreasury_sbe_v10_1.tcp_message.size = function(buffer, offset)
  local index = 0

  index = index + cme_brokertec_ustreasury_sbe_v10_1.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + cme_brokertec_ustreasury_sbe_v10_1.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Tcp Message
cme_brokertec_ustreasury_sbe_v10_1.tcp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Message
cme_brokertec_ustreasury_sbe_v10_1.tcp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = cme_brokertec_ustreasury_sbe_v10_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 2 branches
  index = cme_brokertec_ustreasury_sbe_v10_1.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Tcp Message
cme_brokertec_ustreasury_sbe_v10_1.tcp_message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.tcp_message, buffer(offset, 0))
    local index = cme_brokertec_ustreasury_sbe_v10_1.tcp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ustreasury_sbe_v10_1.tcp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ustreasury_sbe_v10_1.tcp_message.fields(buffer, offset, packet, parent)
  end
end

-- Technical Header
cme_brokertec_ustreasury_sbe_v10_1.technical_header = {}

-- Size: Technical Header
cme_brokertec_ustreasury_sbe_v10_1.technical_header.size =
  cme_brokertec_ustreasury_sbe_v10_1.encoding_type.size + 
  cme_brokertec_ustreasury_sbe_v10_1.message_sequence_number.size + 
  cme_brokertec_ustreasury_sbe_v10_1.tcp_sending_time.size

-- Display: Technical Header
cme_brokertec_ustreasury_sbe_v10_1.technical_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Technical Header
cme_brokertec_ustreasury_sbe_v10_1.technical_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer Static
  index, encoding_type = cme_brokertec_ustreasury_sbe_v10_1.encoding_type.dissect(buffer, index, packet, parent)

  -- Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, message_sequence_number = cme_brokertec_ustreasury_sbe_v10_1.message_sequence_number.dissect(buffer, index, packet, parent)

  -- Tcp Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, tcp_sending_time = cme_brokertec_ustreasury_sbe_v10_1.tcp_sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Technical Header
cme_brokertec_ustreasury_sbe_v10_1.technical_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.technical_header, buffer(offset, 0))
    local index = cme_brokertec_ustreasury_sbe_v10_1.technical_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ustreasury_sbe_v10_1.technical_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ustreasury_sbe_v10_1.technical_header.fields(buffer, offset, packet, parent)
  end
end

-- Tcp Frame
cme_brokertec_ustreasury_sbe_v10_1.tcp_frame = {}

-- Display: Tcp Frame
cme_brokertec_ustreasury_sbe_v10_1.tcp_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Frame
cme_brokertec_ustreasury_sbe_v10_1.tcp_frame.fields = function(buffer, offset, packet, parent, size_of_tcp_frame)
  local index = offset

  -- Technical Header: Struct of 3 fields
  index, technical_header = cme_brokertec_ustreasury_sbe_v10_1.technical_header.dissect(buffer, index, packet, parent)

  -- Tcp Message: Struct of 2 fields
  index, tcp_message = cme_brokertec_ustreasury_sbe_v10_1.tcp_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tcp Frame
cme_brokertec_ustreasury_sbe_v10_1.tcp_frame.dissect = function(buffer, offset, packet, parent, size_of_tcp_frame)
  local index = offset + size_of_tcp_frame

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.tcp_frame, buffer(offset, 0))
    local current = cme_brokertec_ustreasury_sbe_v10_1.tcp_frame.fields(buffer, offset, packet, parent, size_of_tcp_frame)
    parent:set_len(size_of_tcp_frame)
    local display = cme_brokertec_ustreasury_sbe_v10_1.tcp_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_brokertec_ustreasury_sbe_v10_1.tcp_frame.fields(buffer, offset, packet, parent, size_of_tcp_frame)

    return index
  end
end

-- Remaining Bytes For: Tcp Frame
local tcp_frame_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < 14 + cme_brokertec_ustreasury_sbe_v10_1.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 14, 2):le_uint() + 14

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Tcp Packet
cme_brokertec_ustreasury_sbe_v10_1.tcp_packet = {}

-- Verify required size of Tcp packet
cme_brokertec_ustreasury_sbe_v10_1.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= cme_brokertec_ustreasury_sbe_v10_1.technical_header.size + cme_brokertec_ustreasury_sbe_v10_1.message_header.size
end

-- Dissect Tcp Packet
cme_brokertec_ustreasury_sbe_v10_1.tcp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Tcp Frame
  local end_of_payload = buffer:len()

  -- Tcp Frame: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_tcp_frame = tcp_frame_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      -- Dissect this message within a buffer bounded to its own frame
      local frame = buffer(0, index + size_of_tcp_frame):tvb()
      index = cme_brokertec_ustreasury_sbe_v10_1.tcp_frame.dissect(frame, index, packet, parent, size_of_tcp_frame)
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

-- Message
cme_brokertec_ustreasury_sbe_v10_1.message = {}

-- Display: Message
cme_brokertec_ustreasury_sbe_v10_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_brokertec_ustreasury_sbe_v10_1.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = cme_brokertec_ustreasury_sbe_v10_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 2 branches
  index = cme_brokertec_ustreasury_sbe_v10_1.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
cme_brokertec_ustreasury_sbe_v10_1.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.message, buffer(offset, 0))
    local current = cme_brokertec_ustreasury_sbe_v10_1.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = cme_brokertec_ustreasury_sbe_v10_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_brokertec_ustreasury_sbe_v10_1.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Binary Packet Header
cme_brokertec_ustreasury_sbe_v10_1.binary_packet_header = {}

-- Size: Binary Packet Header
cme_brokertec_ustreasury_sbe_v10_1.binary_packet_header.size =
  cme_brokertec_ustreasury_sbe_v10_1.packet_sequence_number.size + 
  cme_brokertec_ustreasury_sbe_v10_1.sending_time.size

-- Display: Binary Packet Header
cme_brokertec_ustreasury_sbe_v10_1.binary_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_brokertec_ustreasury_sbe_v10_1.binary_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = cme_brokertec_ustreasury_sbe_v10_1.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_brokertec_ustreasury_sbe_v10_1.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_brokertec_ustreasury_sbe_v10_1.binary_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_brokertec_ustreasury_sbe_v10_1.binary_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_brokertec_ustreasury_sbe_v10_1.binary_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_brokertec_ustreasury_sbe_v10_1.binary_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
cme_brokertec_ustreasury_sbe_v10_1.udp_packet = {}

-- Verify required size of Udp packet
cme_brokertec_ustreasury_sbe_v10_1.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= cme_brokertec_ustreasury_sbe_v10_1.binary_packet_header.size + cme_brokertec_ustreasury_sbe_v10_1.message_header.size
end

-- Dissect Udp Packet
cme_brokertec_ustreasury_sbe_v10_1.udp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_brokertec_ustreasury_sbe_v10_1.binary_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = cme_brokertec_ustreasury_sbe_v10_1.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_brokertec_ustreasury_sbe_v10_1.init()
end

-- Dissector for Cme BrokerTec UsTreasury Sbe 10.1
function omi_cme_brokertec_ustreasury_sbe_v10_1.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_cme_brokertec_ustreasury_sbe_v10_1.name

  if packet.port_type == 3 then
    -- Dissect protocol
    local protocol = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1, buffer(), omi_cme_brokertec_ustreasury_sbe_v10_1.description, "("..buffer:len().." Bytes)")
    return cme_brokertec_ustreasury_sbe_v10_1.udp_packet.dissect(buffer, packet, protocol)
  end

  if packet.port_type == 2 then
    -- Dissect protocol
    local protocol = parent:add(omi_cme_brokertec_ustreasury_sbe_v10_1, buffer(), omi_cme_brokertec_ustreasury_sbe_v10_1.description, "("..buffer:len().." Bytes)")
    return cme_brokertec_ustreasury_sbe_v10_1.tcp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Udp Packet: would its message dispatch accept this frame?
cme_brokertec_ustreasury_sbe_v10_1.udp_packet.fingerprint = function(buffer)
  if buffer:len() < 18 then
    return false
  end

  local template_id = buffer(16, 2):le_uint()

  -- Md Incremental Refresh Btec
  if template_id == 405 then
    return true
  end

  -- Admin Heartbeat
  if template_id == 411 then
    return true
  end

  return false
end

-- Fingerprint of Tcp Packet: would its message dispatch accept this frame?
cme_brokertec_ustreasury_sbe_v10_1.tcp_packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local template_id = buffer(18, 2):le_uint()

  -- Md Incremental Refresh Btec
  if template_id == 405 then
    return true
  end

  -- Admin Heartbeat
  if template_id == 411 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
cme_brokertec_ustreasury_sbe_v10_1.schema_id.udp_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 18 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(18, 2):le_uint()

  if value == 10 then
    return true
  end

  return false
end

-- Verify Version Field
cme_brokertec_ustreasury_sbe_v10_1.version.udp_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 20 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Verify Encoding Type Field
cme_brokertec_ustreasury_sbe_v10_1.encoding_type.tcp_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 0 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(0, 2):le_uint()

  if value == 51966 then
    return true
  end

  return false
end

-- Verify Schema Id Field
cme_brokertec_ustreasury_sbe_v10_1.schema_id.tcp_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 20 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(20, 2):le_uint()

  if value == 10 then
    return true
  end

  return false
end

-- Verify Version Field
cme_brokertec_ustreasury_sbe_v10_1.version.tcp_packet_verify = function(buffer)
  -- Too short to carry the field: not this protocol
  if buffer:len() < 22 + 2 then
    return false
  end

  -- Attempt to read field
  local value = buffer(22, 2):le_uint()

  if value == 1 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme BrokerTec UsTreasury Sbe 10.1 (Udp)
local function omi_cme_brokertec_ustreasury_sbe_v10_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_brokertec_ustreasury_sbe_v10_1.udp_packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not cme_brokertec_ustreasury_sbe_v10_1.schema_id.udp_packet_verify(buffer) then return false end

  -- Verify Version
  if not cme_brokertec_ustreasury_sbe_v10_1.version.udp_packet_verify(buffer) then return false end

  -- Verify the frame matches this udp udp packet message dispatch
  if not cme_brokertec_ustreasury_sbe_v10_1.udp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_brokertec_ustreasury_sbe_v10_1
  omi_cme_brokertec_ustreasury_sbe_v10_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Cme BrokerTec UsTreasury Sbe 10.1 (Tcp)
local function omi_cme_brokertec_ustreasury_sbe_v10_1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_brokertec_ustreasury_sbe_v10_1.tcp_packet.requiredsize(buffer) then return false end

  -- Verify Encoding Type
  if not cme_brokertec_ustreasury_sbe_v10_1.encoding_type.tcp_packet_verify(buffer) then return false end

  -- Verify Schema Id
  if not cme_brokertec_ustreasury_sbe_v10_1.schema_id.tcp_packet_verify(buffer) then return false end

  -- Verify Version
  if not cme_brokertec_ustreasury_sbe_v10_1.version.tcp_packet_verify(buffer) then return false end

  -- Verify the frame matches this tcp tcp packet message dispatch
  if not cme_brokertec_ustreasury_sbe_v10_1.tcp_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_brokertec_ustreasury_sbe_v10_1
  omi_cme_brokertec_ustreasury_sbe_v10_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Cme BrokerTec UsTreasury Sbe 10.1
omi_cme_brokertec_ustreasury_sbe_v10_1:register_heuristic("udp", omi_cme_brokertec_ustreasury_sbe_v10_1_udp_heuristic)
omi_cme_brokertec_ustreasury_sbe_v10_1:register_heuristic("tcp", omi_cme_brokertec_ustreasury_sbe_v10_1_tcp_acceptor_heuristic)

-- Register Cme BrokerTec UsTreasury Sbe 10.1 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cme_brokertec_ustreasury_sbe_v10_1)

-- Register Cme BrokerTec UsTreasury Sbe 10.1 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cme_brokertec_ustreasury_sbe_v10_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: CME Group
--   Version: 10.1
--   Date: Thursday, April 13, 2023
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
