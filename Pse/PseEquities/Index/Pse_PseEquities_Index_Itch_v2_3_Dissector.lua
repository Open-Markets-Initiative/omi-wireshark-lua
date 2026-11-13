-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Pse PseEquities Index Itch 2.3 Protocol
local omi_pse_pseequities_index_itch_v2_3 = Proto("Omi.Pse.PseEquities.Index.Itch.v2.3", "Pse PseEquities Index Itch 2.3")

-- Protocol table
local pse_pseequities_index_itch_v2_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Pse PseEquities Index Itch 2.3 Fields
omi_pse_pseequities_index_itch_v2_3.fields.currency = ProtoField.new("Currency", "pse.pseequities.index.itch.v2.3.currency", ftypes.STRING, nil, nil, nil, "Trading currency.")
omi_pse_pseequities_index_itch_v2_3.fields.delisting_date = ProtoField.new("Delisting Date", "pse.pseequities.index.itch.v2.3.delistingdate", ftypes.UINT32, nil, nil, nil, "YYYYMMDD.")
omi_pse_pseequities_index_itch_v2_3.fields.delisting_time = ProtoField.new("Delisting Time", "pse.pseequities.index.itch.v2.3.delistingtime", ftypes.UINT32, nil, nil, nil, "HHMMSS.")
omi_pse_pseequities_index_itch_v2_3.fields.event_code = ProtoField.new("Event Code", "pse.pseequities.index.itch.v2.3.eventcode", ftypes.STRING, nil, nil, nil, "Event Code.")
omi_pse_pseequities_index_itch_v2_3.fields.group = ProtoField.new("Group", "pse.pseequities.index.itch.v2.3.group", ftypes.STRING, nil, nil, nil, "Id for symbol grouping (Board level only).")
omi_pse_pseequities_index_itch_v2_3.fields.index_member_weight = ProtoField.new("Index Member Weight", "pse.pseequities.index.itch.v2.3.indexmemberweight", ftypes.UINT64, nil, nil, nil, "Weighting for the member component.")
omi_pse_pseequities_index_itch_v2_3.fields.index_orderbook = ProtoField.new("Index Orderbook", "pse.pseequities.index.itch.v2.3.indexorderbook", ftypes.UINT32, nil, nil, nil, "Unique orderbook identifier for the Index.")
omi_pse_pseequities_index_itch_v2_3.fields.instrument_type = ProtoField.new("Instrument Type", "pse.pseequities.index.itch.v2.3.instrumenttype", ftypes.STRING, nil, nil, nil, "Instrument Type.")
omi_pse_pseequities_index_itch_v2_3.fields.isin = ProtoField.new("Isin", "pse.pseequities.index.itch.v2.3.isin", ftypes.STRING, nil, nil, nil, "ISIN code.")
omi_pse_pseequities_index_itch_v2_3.fields.lot_size = ProtoField.new("Lot Size", "pse.pseequities.index.itch.v2.3.lotsize", ftypes.UINT64, nil, nil, nil, "Lot size for the orderbook.")
omi_pse_pseequities_index_itch_v2_3.fields.member_orderbook = ProtoField.new("Member Orderbook", "pse.pseequities.index.itch.v2.3.memberorderbook", ftypes.UINT32, nil, nil, nil, "The unique orderbook identifier for a component of the Index orderbook.")
omi_pse_pseequities_index_itch_v2_3.fields.message_count = ProtoField.new("Message Count", "pse.pseequities.index.itch.v2.3.messagecount", ftypes.UINT16, nil, nil, nil, "Number of messages to follow this header")
omi_pse_pseequities_index_itch_v2_3.fields.message_length = ProtoField.new("Message Length", "pse.pseequities.index.itch.v2.3.messagelength", ftypes.UINT16, nil, nil, nil, "Length of data message not including this field")
omi_pse_pseequities_index_itch_v2_3.fields.message_type = ProtoField.new("Message Type", "pse.pseequities.index.itch.v2.3.messagetype", ftypes.STRING, nil, nil, nil, "Code identifying this message type")
omi_pse_pseequities_index_itch_v2_3.fields.orderbook = ProtoField.new("Orderbook", "pse.pseequities.index.itch.v2.3.orderbook", ftypes.UINT32, nil, nil, nil, "Used to identify if the event applies to a single orderbook within the Group.")
omi_pse_pseequities_index_itch_v2_3.fields.price_decimals = ProtoField.new("Price Decimals", "pse.pseequities.index.itch.v2.3.pricedecimals", ftypes.UINT32, nil, nil, nil, "Decimals for price fields across all messages for this orderbook.")
omi_pse_pseequities_index_itch_v2_3.fields.price_tick_size_table_id = ProtoField.new("Price Tick Size Table Id", "pse.pseequities.index.itch.v2.3.priceticksizetableid", ftypes.UINT32, nil, nil, nil, "Price Tick Size Table Id.")
omi_pse_pseequities_index_itch_v2_3.fields.price_type = ProtoField.new("Price Type", "pse.pseequities.index.itch.v2.3.pricetype", ftypes.STRING, nil, nil, nil, "Indicates 'per unit' price type or price as percentage.")
omi_pse_pseequities_index_itch_v2_3.fields.product_code = ProtoField.new("Product Code", "pse.pseequities.index.itch.v2.3.productcode", ftypes.STRING, nil, nil, nil, "The product code for the orderbook.")
omi_pse_pseequities_index_itch_v2_3.fields.quantity_tick_size_table_id = ProtoField.new("Quantity Tick Size Table Id", "pse.pseequities.index.itch.v2.3.quantityticksizetableid", ftypes.UINT32, nil, nil, nil, "Quantity Tick Size Table.")
omi_pse_pseequities_index_itch_v2_3.fields.sec_code = ProtoField.new("Sec Code", "pse.pseequities.index.itch.v2.3.seccode", ftypes.STRING, nil, nil, nil, "Security code.")
omi_pse_pseequities_index_itch_v2_3.fields.second = ProtoField.new("Second", "pse.pseequities.index.itch.v2.3.second", ftypes.UINT32, nil, nil, nil, "Number of seconds since midnight.")
omi_pse_pseequities_index_itch_v2_3.fields.sequence_number = ProtoField.new("Sequence Number", "pse.pseequities.index.itch.v2.3.sequencenumber", ftypes.UINT64, nil, nil, nil, "Sequence number of the first message to follow this header")
omi_pse_pseequities_index_itch_v2_3.fields.session = ProtoField.new("Session", "pse.pseequities.index.itch.v2.3.session", ftypes.STRING, nil, nil, nil, "Identity of the multicast session")
omi_pse_pseequities_index_itch_v2_3.fields.shares = ProtoField.new("Shares", "pse.pseequities.index.itch.v2.3.shares", ftypes.UINT64, nil, nil, nil, "The number of shares outstanding.")
omi_pse_pseequities_index_itch_v2_3.fields.timestamp = ProtoField.new("Timestamp", "pse.pseequities.index.itch.v2.3.timestamp", ftypes.UINT32, nil, nil, nil, "Nanoseconds since last Time Stamp seconds message.")
omi_pse_pseequities_index_itch_v2_3.fields.value = ProtoField.new("Value", "pse.pseequities.index.itch.v2.3.value", ftypes.UINT64, nil, nil, nil, "Index Value.")

-- Pse PseEquities Index Itch 2.3 Framing
omi_pse_pseequities_index_itch_v2_3.fields.message = ProtoField.new("Message", "pse.pseequities.index.itch.v2.3.message", ftypes.STRING, nil, nil, nil, "Mold Udp64 Message")
omi_pse_pseequities_index_itch_v2_3.fields.message_header = ProtoField.new("Message Header", "pse.pseequities.index.itch.v2.3.messageheader", ftypes.STRING, nil, nil, nil, "Mold Udp 64 Message Header")
omi_pse_pseequities_index_itch_v2_3.fields.packet = ProtoField.new("Packet", "pse.pseequities.index.itch.v2.3.packet", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet")
omi_pse_pseequities_index_itch_v2_3.fields.packet_header = ProtoField.new("Packet Header", "pse.pseequities.index.itch.v2.3.packetheader", ftypes.STRING, nil, nil, nil, "Itch Mold Udp 64 Packet Header")

-- Pse PseEquities Index 2.3 Session Messages
omi_pse_pseequities_index_itch_v2_3.fields.end_of_session = ProtoField.new("End Of Session", "pse.pseequities.index.itch.v2.3.endofsession", ftypes.BYTES, nil, nil, nil, "Mold Udp64 end of session")
omi_pse_pseequities_index_itch_v2_3.fields.heartbeat = ProtoField.new("Heartbeat", "pse.pseequities.index.itch.v2.3.heartbeat", ftypes.BYTES, nil, nil, nil, "Mold Udp64 heartbeat")

-- Pse PseEquities Index 2.3 Application Messages
omi_pse_pseequities_index_itch_v2_3.fields.index_member_directory_message = ProtoField.new("Index Member Directory Message", "pse.pseequities.index.itch.v2.3.indexmemberdirectorymessage", ftypes.STRING, nil, nil, nil, "Index Member Directory Message.")
omi_pse_pseequities_index_itch_v2_3.fields.index_value_message = ProtoField.new("Index Value Message", "pse.pseequities.index.itch.v2.3.indexvaluemessage", ftypes.STRING, nil, nil, nil, "Index Value Message.")
omi_pse_pseequities_index_itch_v2_3.fields.orderbook_directory_message = ProtoField.new("Orderbook Directory Message", "pse.pseequities.index.itch.v2.3.orderbookdirectorymessage", ftypes.STRING, nil, nil, nil, "Orderbook Directory Message.")
omi_pse_pseequities_index_itch_v2_3.fields.system_event_message = ProtoField.new("System Event Message", "pse.pseequities.index.itch.v2.3.systemeventmessage", ftypes.STRING, nil, nil, nil, "System Event Message.")
omi_pse_pseequities_index_itch_v2_3.fields.time_stamp_seconds_message = ProtoField.new("Time Stamp Seconds Message", "pse.pseequities.index.itch.v2.3.timestampsecondsmessage", ftypes.STRING, nil, nil, nil, "Time Stamp - Seconds Message.")

-- Pse PseEquities Index Itch 2.3 Generated Fields
omi_pse_pseequities_index_itch_v2_3.fields.message_index = ProtoField.new("Message Index", "pse.pseequities.index.itch.v2.3.messageindex", ftypes.UINT16)
omi_pse_pseequities_index_itch_v2_3.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "pse.pseequities.index.itch.v2.3.messagesequencenumber", ftypes.UINT64)
omi_pse_pseequities_index_itch_v2_3.fields.event_time = ProtoField.new("Event Time", "pse.pseequities.index.itch.v2.3.eventtime", ftypes.UINT64)

-----------------------------------------------------------------------
-- Pse PseEquities Index Itch 2.3 Formatting
-----------------------------------------------------------------------

-- timestamp format
local timestamp_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime Local", 2 },
  { 4, "Full DateTime Utc", 3 }
}

-- 0=Raw, 1=Time of Day, 2=Full DateTime Local, 3=Full DateTime Utc
pse_pseequities_index_itch_v2_3.timestamp_format = 2


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Pse PseEquities Index Itch 2.3 Element Dissection Options
show.records = true
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true
show.sequences = true

-- Register Pse PseEquities Index Itch 2.3 Show Options
omi_pse_pseequities_index_itch_v2_3.prefs.resolve_records = Pref.bool("Orderbook Directory Message", show.records, "Cache records and resolve cross-packet lookups")
omi_pse_pseequities_index_itch_v2_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_pse_pseequities_index_itch_v2_3.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_pse_pseequities_index_itch_v2_3.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_pse_pseequities_index_itch_v2_3.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_pse_pseequities_index_itch_v2_3.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

omi_pse_pseequities_index_itch_v2_3.prefs.timestamp_format = Pref.enum("Timestamp Format", 2, "Display format for this protocol's timestamps", timestamp_format_enum, false)

-- Handle changed preferences
function omi_pse_pseequities_index_itch_v2_3.prefs_changed()

  -- Check if preferences have changed
  if show.records ~= omi_pse_pseequities_index_itch_v2_3.prefs.resolve_records then
    show.records = omi_pse_pseequities_index_itch_v2_3.prefs.resolve_records
  end
  if show.application_messages ~= omi_pse_pseequities_index_itch_v2_3.prefs.show_application_messages then
    show.application_messages = omi_pse_pseequities_index_itch_v2_3.prefs.show_application_messages
  end
  if show.headers ~= omi_pse_pseequities_index_itch_v2_3.prefs.show_headers then
    show.headers = omi_pse_pseequities_index_itch_v2_3.prefs.show_headers
  end
  if show.structs ~= omi_pse_pseequities_index_itch_v2_3.prefs.show_structs then
    show.structs = omi_pse_pseequities_index_itch_v2_3.prefs.show_structs
  end
  if show.indexes ~= omi_pse_pseequities_index_itch_v2_3.prefs.show_indexes then
    show.indexes = omi_pse_pseequities_index_itch_v2_3.prefs.show_indexes
  end
  if show.sequences ~= omi_pse_pseequities_index_itch_v2_3.prefs.show_sequences then
    show.sequences = omi_pse_pseequities_index_itch_v2_3.prefs.show_sequences
  end
  if pse_pseequities_index_itch_v2_3.timestamp_format ~= omi_pse_pseequities_index_itch_v2_3.prefs.timestamp_format then
    pse_pseequities_index_itch_v2_3.timestamp_format = omi_pse_pseequities_index_itch_v2_3.prefs.timestamp_format
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
pse_pseequities_index_itch_v2_3.conversation = {}
pse_pseequities_index_itch_v2_3.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
pse_pseequities_index_itch_v2_3.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
pse_pseequities_index_itch_v2_3.conversation.data = function(packet)
  local key = pse_pseequities_index_itch_v2_3.conversation.key(packet)
  local data = pse_pseequities_index_itch_v2_3.conversation.flows[key]
  if data == nil then
    data = { second = { last = nil, frames = {} }, orderbook_directory_message = {} }
    pse_pseequities_index_itch_v2_3.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
pse_pseequities_index_itch_v2_3.conversation.current = nil


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
-- Pse PseEquities Index Itch 2.3 Fields
-----------------------------------------------------------------------

-- Currency
pse_pseequities_index_itch_v2_3.currency = {}

-- Size: Currency
pse_pseequities_index_itch_v2_3.currency.size = 3

-- Display: Currency
pse_pseequities_index_itch_v2_3.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
pse_pseequities_index_itch_v2_3.currency.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_index_itch_v2_3.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.currency, range, value, display)

  return offset + length, value
end

-- Delisting Date
pse_pseequities_index_itch_v2_3.delisting_date = {}

-- Size: Delisting Date
pse_pseequities_index_itch_v2_3.delisting_date.size = 4

-- Display: Delisting Date
pse_pseequities_index_itch_v2_3.delisting_date.display = function(value)
  -- Check if field has value
  if value == 0 then
    return "Delisting Date: No Value"
  end

  local year = math.floor(value / 10000)
  local month = math.floor(value / 100) % 100
  local day = value % 100
  return string.format("Delisting Date: %04d-%02d-%02d", year, month, day)
end

-- Dissect: Delisting Date
pse_pseequities_index_itch_v2_3.delisting_date.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.delisting_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.delisting_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.delisting_date, range, value, display)

  return offset + length, value
end

-- Delisting Time
pse_pseequities_index_itch_v2_3.delisting_time = {}

-- Size: Delisting Time
pse_pseequities_index_itch_v2_3.delisting_time.size = 4

-- Display: Delisting Time
pse_pseequities_index_itch_v2_3.delisting_time.display = function(value)
  local hour = math.floor(value / 10000)
  local minute = math.floor(value / 100) % 100
  local second = value % 100

  return string.format("Delisting Time: %02d:%02d:%02d", hour, minute, second)
end

-- Dissect: Delisting Time
pse_pseequities_index_itch_v2_3.delisting_time.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.delisting_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.delisting_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.delisting_time, range, value, display)

  return offset + length, value
end

-- Event Code
pse_pseequities_index_itch_v2_3.event_code = {}

-- Size: Event Code
pse_pseequities_index_itch_v2_3.event_code.size = 1

-- Display: Event Code
pse_pseequities_index_itch_v2_3.event_code.labels = {
  ["O"] = "Event Code: Start Of Messages (O)",
  ["S"] = "Event Code: Start Of System Hours (S)",
  ["R"] = "Event Code: Pre Open No Cancellation Period (R)",
  ["Q"] = "Event Code: Start Of Market Hours (Q)",
  ["A"] = "Event Code: Scheduled Break Begins (A)",
  ["B"] = "Event Code: Scheduled Break Ends (B)",
  ["L"] = "Event Code: Pre Close Commences (L)",
  ["J"] = "Event Code: Pre Close No Cancellation Period (J)",
  ["P"] = "Event Code: Trading At Last (P)",
  ["M"] = "Event Code: End Of Market Hours (M)",
  ["E"] = "Event Code: End Of Trading (E)",
  ["C"] = "Event Code: End Of System Messages (C)",
}

pse_pseequities_index_itch_v2_3.event_code.display = function(value)
  return pse_pseequities_index_itch_v2_3.event_code.labels[value] or "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
pse_pseequities_index_itch_v2_3.event_code.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_index_itch_v2_3.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.event_code, range, value, display)

  return offset + length, value
end

-- Group
pse_pseequities_index_itch_v2_3.group = {}

-- Size: Group
pse_pseequities_index_itch_v2_3.group.size = 8

-- Display: Group
pse_pseequities_index_itch_v2_3.group.labels = {
  ["N"] = "Group: Normal (N)",
  ["O"] = "Group: Oddlot (O)",
  ["I"] = "Group: Index (I)",
}

pse_pseequities_index_itch_v2_3.group.display = function(value)
  return pse_pseequities_index_itch_v2_3.group.labels[value] or "Group: Unknown("..value..")"
end

-- Dissect: Group
pse_pseequities_index_itch_v2_3.group.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_index_itch_v2_3.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.group, range, value, display)

  return offset + length, value
end

-- Index Member Weight
pse_pseequities_index_itch_v2_3.index_member_weight = {}

-- Size: Index Member Weight
pse_pseequities_index_itch_v2_3.index_member_weight.size = 8

-- Display: Index Member Weight
pse_pseequities_index_itch_v2_3.index_member_weight.display = function(value)
  return "Index Member Weight: "..value
end

-- Dissect: Index Member Weight
pse_pseequities_index_itch_v2_3.index_member_weight.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.index_member_weight.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_index_itch_v2_3.index_member_weight.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.index_member_weight, range, value, display)

  return offset + length, value
end

-- Index Orderbook
pse_pseequities_index_itch_v2_3.index_orderbook = {}

-- Size: Index Orderbook
pse_pseequities_index_itch_v2_3.index_orderbook.size = 4

-- Display: Index Orderbook
pse_pseequities_index_itch_v2_3.index_orderbook.display = function(value)
  return "Index Orderbook: "..value
end

-- Dissect: Index Orderbook
pse_pseequities_index_itch_v2_3.index_orderbook.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.index_orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.index_orderbook.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.index_orderbook, range, value, display)

  return offset + length, value
end

-- Instrument Type
pse_pseequities_index_itch_v2_3.instrument_type = {}

-- Size: Instrument Type
pse_pseequities_index_itch_v2_3.instrument_type.size = 1

-- Display: Instrument Type
pse_pseequities_index_itch_v2_3.instrument_type.labels = {
  ["C"] = "Instrument Type: Common Stock (C)",
  ["P"] = "Instrument Type: Preferred Stock (P)",
  ["W"] = "Instrument Type: Warrant (W)",
  ["E"] = "Instrument Type: Etf (E)",
  ["D"] = "Instrument Type: Pdr (D)",
  ["I"] = "Instrument Type: Index (I)",
}

pse_pseequities_index_itch_v2_3.instrument_type.display = function(value)
  return pse_pseequities_index_itch_v2_3.instrument_type.labels[value] or "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
pse_pseequities_index_itch_v2_3.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_index_itch_v2_3.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Isin
pse_pseequities_index_itch_v2_3.isin = {}

-- Size: Isin
pse_pseequities_index_itch_v2_3.isin.size = 12

-- Display: Isin
pse_pseequities_index_itch_v2_3.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
pse_pseequities_index_itch_v2_3.isin.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_index_itch_v2_3.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.isin, range, value, display)

  return offset + length, value
end

-- Lot Size
pse_pseequities_index_itch_v2_3.lot_size = {}

-- Size: Lot Size
pse_pseequities_index_itch_v2_3.lot_size.size = 8

-- Display: Lot Size
pse_pseequities_index_itch_v2_3.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
pse_pseequities_index_itch_v2_3.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.lot_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_index_itch_v2_3.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Member Orderbook
pse_pseequities_index_itch_v2_3.member_orderbook = {}

-- Size: Member Orderbook
pse_pseequities_index_itch_v2_3.member_orderbook.size = 4

-- Display: Member Orderbook
pse_pseequities_index_itch_v2_3.member_orderbook.display = function(value)
  return "Member Orderbook: "..value
end

-- Dissect: Member Orderbook
pse_pseequities_index_itch_v2_3.member_orderbook.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.member_orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.member_orderbook.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.member_orderbook, range, value, display)

  return offset + length, value
end

-- Message Count
pse_pseequities_index_itch_v2_3.message_count = {}

-- Size: Message Count
pse_pseequities_index_itch_v2_3.message_count.size = 2

-- Display: Message Count
pse_pseequities_index_itch_v2_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
pse_pseequities_index_itch_v2_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
pse_pseequities_index_itch_v2_3.message_length = {}

-- Size: Message Length
pse_pseequities_index_itch_v2_3.message_length.size = 2

-- Display: Message Length
pse_pseequities_index_itch_v2_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
pse_pseequities_index_itch_v2_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
pse_pseequities_index_itch_v2_3.message_type = {}

-- Size: Message Type
pse_pseequities_index_itch_v2_3.message_type.size = 1

-- Display: Message Type
pse_pseequities_index_itch_v2_3.message_type.labels = {
  ["T"] = "Message Type: Time Stamp Seconds Message (T)",
  ["S"] = "Message Type: System Event Message (S)",
  ["R"] = "Message Type: Orderbook Directory Message (R)",
  ["Y"] = "Message Type: Index Member Directory Message (Y)",
  ["Z"] = "Message Type: Index Value Message (Z)",
}

pse_pseequities_index_itch_v2_3.message_type.display = function(value)
  return pse_pseequities_index_itch_v2_3.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
pse_pseequities_index_itch_v2_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_index_itch_v2_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Orderbook
pse_pseequities_index_itch_v2_3.orderbook = {}

-- Size: Orderbook
pse_pseequities_index_itch_v2_3.orderbook.size = 4

-- Display: Orderbook
pse_pseequities_index_itch_v2_3.orderbook.display = function(value)
  return "Orderbook: "..value
end

-- Dissect: Orderbook
pse_pseequities_index_itch_v2_3.orderbook.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.orderbook.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.orderbook.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.orderbook, range, value, display)

  return offset + length, value
end

-- Price Decimals
pse_pseequities_index_itch_v2_3.price_decimals = {}

-- Size: Price Decimals
pse_pseequities_index_itch_v2_3.price_decimals.size = 4

-- Display: Price Decimals
pse_pseequities_index_itch_v2_3.price_decimals.display = function(value)
  return "Price Decimals: "..value
end

-- Dissect: Price Decimals
pse_pseequities_index_itch_v2_3.price_decimals.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.price_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.price_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.price_decimals, range, value, display)

  return offset + length, value
end

-- Price Tick Size Table Id
pse_pseequities_index_itch_v2_3.price_tick_size_table_id = {}

-- Size: Price Tick Size Table Id
pse_pseequities_index_itch_v2_3.price_tick_size_table_id.size = 4

-- Display: Price Tick Size Table Id
pse_pseequities_index_itch_v2_3.price_tick_size_table_id.display = function(value)
  return "Price Tick Size Table Id: "..value
end

-- Dissect: Price Tick Size Table Id
pse_pseequities_index_itch_v2_3.price_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.price_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.price_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.price_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Price Type
pse_pseequities_index_itch_v2_3.price_type = {}

-- Size: Price Type
pse_pseequities_index_itch_v2_3.price_type.size = 1

-- Display: Price Type
pse_pseequities_index_itch_v2_3.price_type.labels = {
  ["U"] = "Price Type: Per Unit (U)",
  ["P"] = "Price Type: Percentage (P)",
}

pse_pseequities_index_itch_v2_3.price_type.display = function(value)
  return pse_pseequities_index_itch_v2_3.price_type.labels[value] or "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
pse_pseequities_index_itch_v2_3.price_type.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = pse_pseequities_index_itch_v2_3.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.price_type, range, value, display)

  return offset + length, value
end

-- Product Code
pse_pseequities_index_itch_v2_3.product_code = {}

-- Size: Product Code
pse_pseequities_index_itch_v2_3.product_code.size = 8

-- Display: Product Code
pse_pseequities_index_itch_v2_3.product_code.display = function(value)
  return "Product Code: "..value
end

-- Dissect: Product Code
pse_pseequities_index_itch_v2_3.product_code.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.product_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_index_itch_v2_3.product_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.product_code, range, value, display)

  return offset + length, value
end

-- Quantity Tick Size Table Id
pse_pseequities_index_itch_v2_3.quantity_tick_size_table_id = {}

-- Size: Quantity Tick Size Table Id
pse_pseequities_index_itch_v2_3.quantity_tick_size_table_id.size = 4

-- Display: Quantity Tick Size Table Id
pse_pseequities_index_itch_v2_3.quantity_tick_size_table_id.display = function(value)
  return "Quantity Tick Size Table Id: "..value
end

-- Dissect: Quantity Tick Size Table Id
pse_pseequities_index_itch_v2_3.quantity_tick_size_table_id.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.quantity_tick_size_table_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.quantity_tick_size_table_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.quantity_tick_size_table_id, range, value, display)

  return offset + length, value
end

-- Sec Code
pse_pseequities_index_itch_v2_3.sec_code = {}

-- Size: Sec Code
pse_pseequities_index_itch_v2_3.sec_code.size = 12

-- Display: Sec Code
pse_pseequities_index_itch_v2_3.sec_code.display = function(value)
  return "Sec Code: "..value
end

-- Dissect: Sec Code
pse_pseequities_index_itch_v2_3.sec_code.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.sec_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = pse_pseequities_index_itch_v2_3.sec_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.sec_code, range, value, display)

  return offset + length, value
end

-- Second
pse_pseequities_index_itch_v2_3.second = {}

-- Size: Second
pse_pseequities_index_itch_v2_3.second.size = 4

-- Store: Second
pse_pseequities_index_itch_v2_3.second.current = nil

-- Generated: Second
pse_pseequities_index_itch_v2_3.second.generated = function(value, range, packet, parent)
  local display = pse_pseequities_index_itch_v2_3.second.display(value)
  local second = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.second, range, value, display)
  second:set_generated()
end

-- Display: Second
pse_pseequities_index_itch_v2_3.second.display = function(value)
  return "Second: "..value
end

-- Dissect: Second
pse_pseequities_index_itch_v2_3.second.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.second.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.second.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.second, range, value, display)

  return offset + length, value
end

-- Sequence Number
pse_pseequities_index_itch_v2_3.sequence_number = {}

-- Size: Sequence Number
pse_pseequities_index_itch_v2_3.sequence_number.size = 8

-- Display: Sequence Number
pse_pseequities_index_itch_v2_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
pse_pseequities_index_itch_v2_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_index_itch_v2_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
pse_pseequities_index_itch_v2_3.session = {}

-- Size: Session
pse_pseequities_index_itch_v2_3.session.size = 10

-- Display: Session
pse_pseequities_index_itch_v2_3.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
pse_pseequities_index_itch_v2_3.session.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.session.size
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

  local display = pse_pseequities_index_itch_v2_3.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.session, range, value, display)

  return offset + length, value
end

-- Shares
pse_pseequities_index_itch_v2_3.shares = {}

-- Size: Shares
pse_pseequities_index_itch_v2_3.shares.size = 8

-- Display: Shares
pse_pseequities_index_itch_v2_3.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
pse_pseequities_index_itch_v2_3.shares.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.shares.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_index_itch_v2_3.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.shares, range, value, display)

  return offset + length, value
end

-- Timestamp
pse_pseequities_index_itch_v2_3.timestamp = {}

-- Size: Timestamp
pse_pseequities_index_itch_v2_3.timestamp.size = 4

-- Display: Timestamp
pse_pseequities_index_itch_v2_3.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
pse_pseequities_index_itch_v2_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = pse_pseequities_index_itch_v2_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Value
pse_pseequities_index_itch_v2_3.value = {}

-- Size: Value
pse_pseequities_index_itch_v2_3.value.size = 8

-- Display: Value
pse_pseequities_index_itch_v2_3.value.display = function(value)
  return "Value: "..value
end

-- Dissect: Value
pse_pseequities_index_itch_v2_3.value.dissect = function(buffer, offset, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = pse_pseequities_index_itch_v2_3.value.display(value, buffer, offset, packet, parent)

  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.value, range, value, display)

  return offset + length, value
end

-- Event Time
pse_pseequities_index_itch_v2_3.event_time = {}

-- Translate: Event Time
pse_pseequities_index_itch_v2_3.event_time.translate = function(timestamp, stored_second)
  return UInt64.new(stored_second) * 1000000000 + timestamp
end

-- Display: Event Time
pse_pseequities_index_itch_v2_3.event_time.display = function(timestamp, stored_second, packet)
  -- Raw display mode
  if pse_pseequities_index_itch_v2_3.timestamp_format == 0 then
    return "Event Time: "..(stored_second * 1000000000 + timestamp)
  end

  -- An offset the Field epoch leaves unbounded carries whole seconds of its own
  local seconds = stored_second + math.floor(timestamp / 1000000000)
  local fraction = timestamp % 1000000000

  -- Full datetime mode (the day the frame that carried it settled on)
  if pse_pseequities_index_itch_v2_3.timestamp_format >= 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

    -- A frame a file handler read states no instant and reads as the epoch
    if capture_time >= 86400 then
      -- The venue's midnight: the frame's instant less the time of day it states
      local settled = math.floor((capture_time - seconds) / 900 + 0.5) * 900

      local midnight = math.floor(settled / 86400 + 0.5) * 86400

      local format = pse_pseequities_index_itch_v2_3.timestamp_format == 3 and "!%Y-%m-%d %H:%M:%S." or "%Y-%m-%d %H:%M:%S."
      return "Event Time: "..os.date(format, midnight + seconds)..string.format("%09d", fraction)
    end
  end

  -- Time of day mode
  return "Event Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%09d", fraction)
end

-- Composite: Event Time
pse_pseequities_index_itch_v2_3.event_time.composite = function(buffer, offset, stored_second, packet, parent)
  local length = pse_pseequities_index_itch_v2_3.timestamp.size
  local range = buffer(offset, length)
  local timestamp = range:uint()
  local value = pse_pseequities_index_itch_v2_3.event_time.translate(timestamp, stored_second)
  local display = pse_pseequities_index_itch_v2_3.event_time.display(timestamp, stored_second, packet)
  parent = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.event_time, range, value, display)

  pse_pseequities_index_itch_v2_3.second.generated(stored_second, range, packet, parent)

  display = pse_pseequities_index_itch_v2_3.timestamp.display(timestamp)
  parent:add(omi_pse_pseequities_index_itch_v2_3.fields.timestamp, range, timestamp, display)

  return offset + length, value
end

-- Dissect: Event Time
pse_pseequities_index_itch_v2_3.event_time.dissect = function(buffer, offset, packet, parent)
  if pse_pseequities_index_itch_v2_3.timestamp_format ~= 0 then
    local stored_second = pse_pseequities_index_itch_v2_3.second.current

    if stored_second ~= nil then
      return pse_pseequities_index_itch_v2_3.event_time.composite(buffer, offset, stored_second, packet, parent)
    end
  end

  return pse_pseequities_index_itch_v2_3.timestamp.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Pse PseEquities Index Itch 2.3
-----------------------------------------------------------------------

-- Index Value Message
pse_pseequities_index_itch_v2_3.index_value_message = {}

-- Size: Index Value Message
pse_pseequities_index_itch_v2_3.index_value_message.size =
  pse_pseequities_index_itch_v2_3.timestamp.size + 
  pse_pseequities_index_itch_v2_3.index_orderbook.size + 
  pse_pseequities_index_itch_v2_3.value.size

-- Display: Index Value Message
pse_pseequities_index_itch_v2_3.index_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value Message
pse_pseequities_index_itch_v2_3.index_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_index_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Index Orderbook: Integer
  index, index_orderbook = pse_pseequities_index_itch_v2_3.index_orderbook.dissect(buffer, index, packet, parent)

  -- Value: Integer
  index, value = pse_pseequities_index_itch_v2_3.value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Value Message
pse_pseequities_index_itch_v2_3.index_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.index_value_message, buffer(offset, 0))
    local index = pse_pseequities_index_itch_v2_3.index_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_index_itch_v2_3.index_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_index_itch_v2_3.index_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Member Directory Message
pse_pseequities_index_itch_v2_3.index_member_directory_message = {}

-- Size: Index Member Directory Message
pse_pseequities_index_itch_v2_3.index_member_directory_message.size =
  pse_pseequities_index_itch_v2_3.timestamp.size + 
  pse_pseequities_index_itch_v2_3.index_orderbook.size + 
  pse_pseequities_index_itch_v2_3.member_orderbook.size + 
  pse_pseequities_index_itch_v2_3.index_member_weight.size

-- Display: Index Member Directory Message
pse_pseequities_index_itch_v2_3.index_member_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Member Directory Message
pse_pseequities_index_itch_v2_3.index_member_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_index_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Index Orderbook: Integer
  index, index_orderbook = pse_pseequities_index_itch_v2_3.index_orderbook.dissect(buffer, index, packet, parent)

  -- Member Orderbook: Integer
  index, member_orderbook = pse_pseequities_index_itch_v2_3.member_orderbook.dissect(buffer, index, packet, parent)

  -- Index Member Weight: Integer
  index, index_member_weight = pse_pseequities_index_itch_v2_3.index_member_weight.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Member Directory Message
pse_pseequities_index_itch_v2_3.index_member_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.index_member_directory_message, buffer(offset, 0))
    local index = pse_pseequities_index_itch_v2_3.index_member_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_index_itch_v2_3.index_member_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_index_itch_v2_3.index_member_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Orderbook Directory Message
pse_pseequities_index_itch_v2_3.orderbook_directory_message = {}

-- Size: Orderbook Directory Message
pse_pseequities_index_itch_v2_3.orderbook_directory_message.size =
  pse_pseequities_index_itch_v2_3.timestamp.size + 
  pse_pseequities_index_itch_v2_3.orderbook.size + 
  pse_pseequities_index_itch_v2_3.price_type.size + 
  pse_pseequities_index_itch_v2_3.isin.size + 
  pse_pseequities_index_itch_v2_3.sec_code.size + 
  pse_pseequities_index_itch_v2_3.currency.size + 
  pse_pseequities_index_itch_v2_3.group.size + 
  pse_pseequities_index_itch_v2_3.lot_size.size + 
  pse_pseequities_index_itch_v2_3.quantity_tick_size_table_id.size + 
  pse_pseequities_index_itch_v2_3.price_tick_size_table_id.size + 
  pse_pseequities_index_itch_v2_3.price_decimals.size + 
  pse_pseequities_index_itch_v2_3.delisting_date.size + 
  pse_pseequities_index_itch_v2_3.delisting_time.size + 
  pse_pseequities_index_itch_v2_3.instrument_type.size + 
  pse_pseequities_index_itch_v2_3.shares.size + 
  pse_pseequities_index_itch_v2_3.product_code.size

-- Display: Orderbook Directory Message
pse_pseequities_index_itch_v2_3.orderbook_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Orderbook Directory Message
pse_pseequities_index_itch_v2_3.orderbook_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_index_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer
  index, orderbook = pse_pseequities_index_itch_v2_3.orderbook.dissect(buffer, index, packet, parent)

  -- Price Type: Alpha
  index, price_type = pse_pseequities_index_itch_v2_3.price_type.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = pse_pseequities_index_itch_v2_3.isin.dissect(buffer, index, packet, parent)

  -- Sec Code: Alpha
  index, sec_code = pse_pseequities_index_itch_v2_3.sec_code.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = pse_pseequities_index_itch_v2_3.currency.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = pse_pseequities_index_itch_v2_3.group.dissect(buffer, index, packet, parent)

  -- Lot Size: Integer
  index, lot_size = pse_pseequities_index_itch_v2_3.lot_size.dissect(buffer, index, packet, parent)

  -- Quantity Tick Size Table Id: Integer
  index, quantity_tick_size_table_id = pse_pseequities_index_itch_v2_3.quantity_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Tick Size Table Id: Integer
  index, price_tick_size_table_id = pse_pseequities_index_itch_v2_3.price_tick_size_table_id.dissect(buffer, index, packet, parent)

  -- Price Decimals: Integer
  index, price_decimals = pse_pseequities_index_itch_v2_3.price_decimals.dissect(buffer, index, packet, parent)

  -- Delisting Date: Integer
  index, delisting_date = pse_pseequities_index_itch_v2_3.delisting_date.dissect(buffer, index, packet, parent)

  -- Delisting Time: Integer
  index, delisting_time = pse_pseequities_index_itch_v2_3.delisting_time.dissect(buffer, index, packet, parent)

  -- Instrument Type: Alpha
  index, instrument_type = pse_pseequities_index_itch_v2_3.instrument_type.dissect(buffer, index, packet, parent)

  -- Shares: Integer
  index, shares = pse_pseequities_index_itch_v2_3.shares.dissect(buffer, index, packet, parent)

  -- Product Code: Alpha
  index, product_code = pse_pseequities_index_itch_v2_3.product_code.dissect(buffer, index, packet, parent)

  -- Cache Orderbook Directory Message record by orderbook
  if show.records and not packet.visited then
    pse_pseequities_index_itch_v2_3.conversation.current.orderbook_directory_message[orderbook] = {
      record_frame = packet.number,
      record_previous = pse_pseequities_index_itch_v2_3.conversation.current.orderbook_directory_message[orderbook],
      orderbook = orderbook,
      sec_code = sec_code,
      price_decimals = price_decimals,
    }
  end

  return index
end

-- Dissect: Orderbook Directory Message
pse_pseequities_index_itch_v2_3.orderbook_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.orderbook_directory_message, buffer(offset, 0))
    local index = pse_pseequities_index_itch_v2_3.orderbook_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_index_itch_v2_3.orderbook_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_index_itch_v2_3.orderbook_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
pse_pseequities_index_itch_v2_3.system_event_message = {}

-- Size: System Event Message
pse_pseequities_index_itch_v2_3.system_event_message.size =
  pse_pseequities_index_itch_v2_3.timestamp.size + 
  pse_pseequities_index_itch_v2_3.group.size + 
  pse_pseequities_index_itch_v2_3.event_code.size + 
  pse_pseequities_index_itch_v2_3.orderbook.size

-- Display: System Event Message
pse_pseequities_index_itch_v2_3.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
pse_pseequities_index_itch_v2_3.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Integer
  index, timestamp = pse_pseequities_index_itch_v2_3.event_time.dissect(buffer, index, packet, parent)

  -- Group: Alpha
  index, group = pse_pseequities_index_itch_v2_3.group.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = pse_pseequities_index_itch_v2_3.event_code.dissect(buffer, index, packet, parent)

  -- Orderbook: Integer (record lookup)
  index, orderbook, orderbook_record = pse_pseequities_index_itch_v2_3.orderbook.lookup(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
pse_pseequities_index_itch_v2_3.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.system_event_message, buffer(offset, 0))
    local index = pse_pseequities_index_itch_v2_3.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_index_itch_v2_3.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_index_itch_v2_3.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Stamp Seconds Message
pse_pseequities_index_itch_v2_3.time_stamp_seconds_message = {}

-- Size: Time Stamp Seconds Message
pse_pseequities_index_itch_v2_3.time_stamp_seconds_message.size =
  pse_pseequities_index_itch_v2_3.second.size

-- Display: Time Stamp Seconds Message
pse_pseequities_index_itch_v2_3.time_stamp_seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Stamp Seconds Message
pse_pseequities_index_itch_v2_3.time_stamp_seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Second: Integer
  index, second = pse_pseequities_index_itch_v2_3.second.dissect(buffer, index, packet, parent)

  -- Store Second Value
  pse_pseequities_index_itch_v2_3.second.current = second

  if not packet.visited then
    pse_pseequities_index_itch_v2_3.conversation.current.second.last = second
  end

  return index
end

-- Dissect: Time Stamp Seconds Message
pse_pseequities_index_itch_v2_3.time_stamp_seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.time_stamp_seconds_message, buffer(offset, 0))
    local index = pse_pseequities_index_itch_v2_3.time_stamp_seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_index_itch_v2_3.time_stamp_seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_index_itch_v2_3.time_stamp_seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
pse_pseequities_index_itch_v2_3.payload = {}

-- Dispatch: Payload
pse_pseequities_index_itch_v2_3.payload.dispatch = {
  ["T"] = pse_pseequities_index_itch_v2_3.time_stamp_seconds_message.dissect,
  ["S"] = pse_pseequities_index_itch_v2_3.system_event_message.dissect,
  ["R"] = pse_pseequities_index_itch_v2_3.orderbook_directory_message.dissect,
  ["Y"] = pse_pseequities_index_itch_v2_3.index_member_directory_message.dissect,
  ["Z"] = pse_pseequities_index_itch_v2_3.index_value_message.dissect,
}

-- Dissect: Payload
pse_pseequities_index_itch_v2_3.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = pse_pseequities_index_itch_v2_3.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
pse_pseequities_index_itch_v2_3.message_header = {}

-- Size: Message Header
pse_pseequities_index_itch_v2_3.message_header.size =
  pse_pseequities_index_itch_v2_3.message_length.size + 
  pse_pseequities_index_itch_v2_3.message_type.size

-- Display: Message Header
pse_pseequities_index_itch_v2_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
pse_pseequities_index_itch_v2_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = pse_pseequities_index_itch_v2_3.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 5 values
  index, message_type = pse_pseequities_index_itch_v2_3.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
pse_pseequities_index_itch_v2_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.message_header, buffer(offset, 0))
    local index = pse_pseequities_index_itch_v2_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_index_itch_v2_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_index_itch_v2_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
pse_pseequities_index_itch_v2_3.message = {}

-- Read runtime size of: Message
pse_pseequities_index_itch_v2_3.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
pse_pseequities_index_itch_v2_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
pse_pseequities_index_itch_v2_3.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and pse_pseequities_index_itch_v2_3.packet_sequence ~= nil then
    local sequence = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.message_sequence_number, UInt64.new(pse_pseequities_index_itch_v2_3.packet_sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = pse_pseequities_index_itch_v2_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 5 branches
  index = pse_pseequities_index_itch_v2_3.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
pse_pseequities_index_itch_v2_3.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = pse_pseequities_index_itch_v2_3.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.message, buffer(offset, 0))
    local current = pse_pseequities_index_itch_v2_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = pse_pseequities_index_itch_v2_3.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    pse_pseequities_index_itch_v2_3.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- End Of Session
pse_pseequities_index_itch_v2_3.end_of_session = {}

-- Display: End Of Session
pse_pseequities_index_itch_v2_3.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
pse_pseequities_index_itch_v2_3.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = pse_pseequities_index_itch_v2_3.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
pse_pseequities_index_itch_v2_3.heartbeat = {}

-- Display: Heartbeat
pse_pseequities_index_itch_v2_3.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
pse_pseequities_index_itch_v2_3.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = pse_pseequities_index_itch_v2_3.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
pse_pseequities_index_itch_v2_3.messages = {}

-- Dispatch: Messages
pse_pseequities_index_itch_v2_3.messages.dispatch = {
  [0] = pse_pseequities_index_itch_v2_3.heartbeat.dissect,
  [65535] = pse_pseequities_index_itch_v2_3.end_of_session.dissect,
}

-- Dissect: Messages
pse_pseequities_index_itch_v2_3.messages.dissect = function(buffer, offset, packet, parent, message_count)
  local dissect = pse_pseequities_index_itch_v2_3.messages.dispatch[message_count]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = pse_pseequities_index_itch_v2_3.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end
end

-- Packet Header
pse_pseequities_index_itch_v2_3.packet_header = {}

-- Size: Packet Header
pse_pseequities_index_itch_v2_3.packet_header.size =
  pse_pseequities_index_itch_v2_3.session.size + 
  pse_pseequities_index_itch_v2_3.sequence_number.size + 
  pse_pseequities_index_itch_v2_3.message_count.size

-- Display: Packet Header
pse_pseequities_index_itch_v2_3.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
pse_pseequities_index_itch_v2_3.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = pse_pseequities_index_itch_v2_3.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = pse_pseequities_index_itch_v2_3.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = pse_pseequities_index_itch_v2_3.message_count.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  pse_pseequities_index_itch_v2_3.packet_sequence = sequence_number

  return index
end

-- Dissect: Packet Header
pse_pseequities_index_itch_v2_3.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_pse_pseequities_index_itch_v2_3.fields.packet_header, buffer(offset, 0))
    local index = pse_pseequities_index_itch_v2_3.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = pse_pseequities_index_itch_v2_3.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return pse_pseequities_index_itch_v2_3.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
pse_pseequities_index_itch_v2_3.packet = {}

-- Verify required size of Udp packet
pse_pseequities_index_itch_v2_3.packet.requiredsize = function(buffer)
  return buffer:len() >= pse_pseequities_index_itch_v2_3.packet_header.size
end

-- Dissect Packet
pse_pseequities_index_itch_v2_3.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = pse_pseequities_index_itch_v2_3.conversation.data(packet)
  if not packet.visited then
    data.second.frames[packet.number] = data.second.last
  end
  pse_pseequities_index_itch_v2_3.second.current = data.second.frames[packet.number]
  pse_pseequities_index_itch_v2_3.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = pse_pseequities_index_itch_v2_3.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = pse_pseequities_index_itch_v2_3.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_pse_pseequities_index_itch_v2_3.init()
  pse_pseequities_index_itch_v2_3.second.current = nil
  pse_pseequities_index_itch_v2_3.conversation.current = nil
  pse_pseequities_index_itch_v2_3.conversation.flows = {}
end

-- Dissector for Pse PseEquities Index Itch 2.3
function omi_pse_pseequities_index_itch_v2_3.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_pse_pseequities_index_itch_v2_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_pse_pseequities_index_itch_v2_3, buffer(), omi_pse_pseequities_index_itch_v2_3.description, "("..buffer:len().." Bytes)")
  return pse_pseequities_index_itch_v2_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Pse PseEquities Index Itch 2.3 (Udp)
local function omi_pse_pseequities_index_itch_v2_3_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not pse_pseequities_index_itch_v2_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_pse_pseequities_index_itch_v2_3
  omi_pse_pseequities_index_itch_v2_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Pse PseEquities Index Itch 2.3
omi_pse_pseequities_index_itch_v2_3:register_heuristic("udp", omi_pse_pseequities_index_itch_v2_3_udp_heuristic)

-- Register Pse PseEquities Index Itch 2.3 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_pse_pseequities_index_itch_v2_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Philippine Stock Exchange
--   Version: 2.3
--   Date: Friday, October 5, 2018
--   Specification: PSE_Equities_Feed_Specification_v2.3.pdf
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
