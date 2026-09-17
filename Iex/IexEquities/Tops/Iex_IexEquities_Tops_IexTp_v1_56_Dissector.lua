-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Iex IexEquities Tops IexTp 1.56 Protocol
local omi_iex_iexequities_tops_iextp_v1_56 = Proto("Omi.Iex.IexEquities.Tops.IexTp.v1.56", "Iex IexEquities Tops IexTp 1.56")

-- Protocol table
local iex_iexequities_tops_iextp_v1_56 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Iex IexEquities Tops IexTp 1.56 Fields
omi_iex_iexequities_tops_iextp_v1_56.fields.ask_price = ProtoField.new("Ask Price", "iex.iexequities.tops.iextp.v1.56.askprice", ftypes.DOUBLE)
omi_iex_iexequities_tops_iextp_v1_56.fields.ask_size = ProtoField.new("Ask Size", "iex.iexequities.tops.iextp.v1.56.asksize", ftypes.UINT32)
omi_iex_iexequities_tops_iextp_v1_56.fields.bid_price = ProtoField.new("Bid Price", "iex.iexequities.tops.iextp.v1.56.bidprice", ftypes.DOUBLE)
omi_iex_iexequities_tops_iextp_v1_56.fields.bid_size = ProtoField.new("Bid Size", "iex.iexequities.tops.iextp.v1.56.bidsize", ftypes.UINT32)
omi_iex_iexequities_tops_iextp_v1_56.fields.channel_id = ProtoField.new("Channel Id", "iex.iexequities.tops.iextp.v1.56.channelid", ftypes.UINT32)
omi_iex_iexequities_tops_iextp_v1_56.fields.extended_hours = ProtoField.new("Extended Hours", "iex.iexequities.tops.iextp.v1.56.extendedhours", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_iex_iexequities_tops_iextp_v1_56.fields.first_message_sequence_number = ProtoField.new("First Message Sequence Number", "iex.iexequities.tops.iextp.v1.56.firstmessagesequencenumber", ftypes.UINT64)
omi_iex_iexequities_tops_iextp_v1_56.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "iex.iexequities.tops.iextp.v1.56.intermarketsweep", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_iex_iexequities_tops_iextp_v1_56.fields.market_session = ProtoField.new("Market Session", "iex.iexequities.tops.iextp.v1.56.marketsession", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_iex_iexequities_tops_iextp_v1_56.fields.message_count = ProtoField.new("Message Count", "iex.iexequities.tops.iextp.v1.56.messagecount", ftypes.UINT16)
omi_iex_iexequities_tops_iextp_v1_56.fields.message_length = ProtoField.new("Message Length", "iex.iexequities.tops.iextp.v1.56.messagelength", ftypes.UINT16)
omi_iex_iexequities_tops_iextp_v1_56.fields.message_protocol_id = ProtoField.new("Message Protocol Id", "iex.iexequities.tops.iextp.v1.56.messageprotocolid", ftypes.UINT16)
omi_iex_iexequities_tops_iextp_v1_56.fields.message_type = ProtoField.new("Message Type", "iex.iexequities.tops.iextp.v1.56.messagetype", ftypes.STRING)
omi_iex_iexequities_tops_iextp_v1_56.fields.odd_lot = ProtoField.new("Odd Lot", "iex.iexequities.tops.iextp.v1.56.oddlot", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_iex_iexequities_tops_iextp_v1_56.fields.payload_length = ProtoField.new("Payload Length", "iex.iexequities.tops.iextp.v1.56.payloadlength", ftypes.UINT16)
omi_iex_iexequities_tops_iextp_v1_56.fields.price = ProtoField.new("Price", "iex.iexequities.tops.iextp.v1.56.price", ftypes.DOUBLE)
omi_iex_iexequities_tops_iextp_v1_56.fields.quote_update_flags = ProtoField.new("Quote Update Flags", "iex.iexequities.tops.iextp.v1.56.quoteupdateflags", ftypes.STRING)
omi_iex_iexequities_tops_iextp_v1_56.fields.reserved = ProtoField.new("Reserved", "iex.iexequities.tops.iextp.v1.56.reserved", ftypes.BYTES)
omi_iex_iexequities_tops_iextp_v1_56.fields.reserved_4 = ProtoField.new("Reserved 4", "iex.iexequities.tops.iextp.v1.56.reserved4", ftypes.UINT32)
omi_iex_iexequities_tops_iextp_v1_56.fields.sale_condition_flags = ProtoField.new("Sale Condition Flags", "iex.iexequities.tops.iextp.v1.56.saleconditionflags", ftypes.STRING)
omi_iex_iexequities_tops_iextp_v1_56.fields.send_time = ProtoField.new("Send Time", "iex.iexequities.tops.iextp.v1.56.sendtime", ftypes.UINT64)
omi_iex_iexequities_tops_iextp_v1_56.fields.session_id = ProtoField.new("Session Id", "iex.iexequities.tops.iextp.v1.56.sessionid", ftypes.UINT32)
omi_iex_iexequities_tops_iextp_v1_56.fields.size = ProtoField.new("Size", "iex.iexequities.tops.iextp.v1.56.size", ftypes.UINT32)
omi_iex_iexequities_tops_iextp_v1_56.fields.stream_offset = ProtoField.new("Stream Offset", "iex.iexequities.tops.iextp.v1.56.streamoffset", ftypes.UINT64)
omi_iex_iexequities_tops_iextp_v1_56.fields.symbol = ProtoField.new("Symbol", "iex.iexequities.tops.iextp.v1.56.symbol", ftypes.STRING)
omi_iex_iexequities_tops_iextp_v1_56.fields.symbol_availability = ProtoField.new("Symbol Availability", "iex.iexequities.tops.iextp.v1.56.symbolavailability", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_iex_iexequities_tops_iextp_v1_56.fields.timestamp = ProtoField.new("Timestamp", "iex.iexequities.tops.iextp.v1.56.timestamp", ftypes.INT64)
omi_iex_iexequities_tops_iextp_v1_56.fields.trade_id = ProtoField.new("Trade Id", "iex.iexequities.tops.iextp.v1.56.tradeid", ftypes.UINT64)
omi_iex_iexequities_tops_iextp_v1_56.fields.trade_through_exempt = ProtoField.new("Trade Through Exempt", "iex.iexequities.tops.iextp.v1.56.tradethroughexempt", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_iex_iexequities_tops_iextp_v1_56.fields.unused_4 = ProtoField.new("Unused 4", "iex.iexequities.tops.iextp.v1.56.unused4", ftypes.UINT8, nil, base.DEC, 0x0F)
omi_iex_iexequities_tops_iextp_v1_56.fields.unused_6 = ProtoField.new("Unused 6", "iex.iexequities.tops.iextp.v1.56.unused6", ftypes.UINT8, nil, base.DEC, 0x3F)
omi_iex_iexequities_tops_iextp_v1_56.fields.version = ProtoField.new("Version", "iex.iexequities.tops.iextp.v1.56.version", ftypes.UINT8)

-- Iex IexEquities Tops IexTp 1.56 Framing
omi_iex_iexequities_tops_iextp_v1_56.fields.iextp_header = ProtoField.new("Iextp Header", "iex.iexequities.tops.iextp.v1.56.iextpheader", ftypes.STRING)
omi_iex_iexequities_tops_iextp_v1_56.fields.message = ProtoField.new("Message", "iex.iexequities.tops.iextp.v1.56.message", ftypes.STRING)
omi_iex_iexequities_tops_iextp_v1_56.fields.message_header = ProtoField.new("Message Header", "iex.iexequities.tops.iextp.v1.56.messageheader", ftypes.STRING)
omi_iex_iexequities_tops_iextp_v1_56.fields.packet = ProtoField.new("Packet", "iex.iexequities.tops.iextp.v1.56.packet", ftypes.STRING)

-- Iex IexEquities Tops 1.56 Application Messages
omi_iex_iexequities_tops_iextp_v1_56.fields.quote_update_message = ProtoField.new("Quote Update Message", "iex.iexequities.tops.iextp.v1.56.quoteupdatemessage", ftypes.STRING)
omi_iex_iexequities_tops_iextp_v1_56.fields.trade_break_message = ProtoField.new("Trade Break Message", "iex.iexequities.tops.iextp.v1.56.tradebreakmessage", ftypes.STRING)
omi_iex_iexequities_tops_iextp_v1_56.fields.trade_report_message = ProtoField.new("Trade Report Message", "iex.iexequities.tops.iextp.v1.56.tradereportmessage", ftypes.STRING)

-- Iex IexEquities Tops IexTp 1.56 generated fields
omi_iex_iexequities_tops_iextp_v1_56.fields.message_index = ProtoField.new("Message Index", "iex.iexequities.tops.iextp.v1.56.messageindex", ftypes.UINT16)
omi_iex_iexequities_tops_iextp_v1_56.fields.message_sequence_number = ProtoField.new("Message Sequence Number", "iex.iexequities.tops.iextp.v1.56.messagesequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Iex IexEquities Tops IexTp 1.56 Element Dissection Options
show.headers = true
show.structs = true
show.application_messages = true
show.indexes = true
show.sequences = true

-- Register Iex IexEquities Tops IexTp 1.56 Show Options
omi_iex_iexequities_tops_iextp_v1_56.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_iex_iexequities_tops_iextp_v1_56.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_iex_iexequities_tops_iextp_v1_56.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_iex_iexequities_tops_iextp_v1_56.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")
omi_iex_iexequities_tops_iextp_v1_56.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

-- Handle changed preferences
function omi_iex_iexequities_tops_iextp_v1_56.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_iex_iexequities_tops_iextp_v1_56.prefs.show_application_messages then
    show.application_messages = omi_iex_iexequities_tops_iextp_v1_56.prefs.show_application_messages
  end
  if show.headers ~= omi_iex_iexequities_tops_iextp_v1_56.prefs.show_headers then
    show.headers = omi_iex_iexequities_tops_iextp_v1_56.prefs.show_headers
  end
  if show.structs ~= omi_iex_iexequities_tops_iextp_v1_56.prefs.show_structs then
    show.structs = omi_iex_iexequities_tops_iextp_v1_56.prefs.show_structs
  end
  if show.indexes ~= omi_iex_iexequities_tops_iextp_v1_56.prefs.show_indexes then
    show.indexes = omi_iex_iexequities_tops_iextp_v1_56.prefs.show_indexes
  end
  if show.sequences ~= omi_iex_iexequities_tops_iextp_v1_56.prefs.show_sequences then
    show.sequences = omi_iex_iexequities_tops_iextp_v1_56.prefs.show_sequences
  end
end


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
-- Iex IexEquities Tops IexTp 1.56 Fields
-----------------------------------------------------------------------

-- Ask Price
iex_iexequities_tops_iextp_v1_56.ask_price = {}

-- Size: Ask Price
iex_iexequities_tops_iextp_v1_56.ask_price.size = 8

-- Display: Ask Price
iex_iexequities_tops_iextp_v1_56.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
iex_iexequities_tops_iextp_v1_56.ask_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Ask Price
iex_iexequities_tops_iextp_v1_56.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_tops_iextp_v1_56.ask_price.translate(raw)
  local display = iex_iexequities_tops_iextp_v1_56.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
iex_iexequities_tops_iextp_v1_56.ask_size = {}

-- Size: Ask Size
iex_iexequities_tops_iextp_v1_56.ask_size.size = 4

-- Display: Ask Size
iex_iexequities_tops_iextp_v1_56.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
iex_iexequities_tops_iextp_v1_56.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.ask_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Bid Price
iex_iexequities_tops_iextp_v1_56.bid_price = {}

-- Size: Bid Price
iex_iexequities_tops_iextp_v1_56.bid_price.size = 8

-- Display: Bid Price
iex_iexequities_tops_iextp_v1_56.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
iex_iexequities_tops_iextp_v1_56.bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Bid Price
iex_iexequities_tops_iextp_v1_56.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_tops_iextp_v1_56.bid_price.translate(raw)
  local display = iex_iexequities_tops_iextp_v1_56.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
iex_iexequities_tops_iextp_v1_56.bid_size = {}

-- Size: Bid Size
iex_iexequities_tops_iextp_v1_56.bid_size.size = 4

-- Display: Bid Size
iex_iexequities_tops_iextp_v1_56.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
iex_iexequities_tops_iextp_v1_56.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Channel Id
iex_iexequities_tops_iextp_v1_56.channel_id = {}

-- Size: Channel Id
iex_iexequities_tops_iextp_v1_56.channel_id.size = 4

-- Display: Channel Id
iex_iexequities_tops_iextp_v1_56.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
iex_iexequities_tops_iextp_v1_56.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.channel_id, range, value, display)

  return offset + length, value
end

-- First Message Sequence Number
iex_iexequities_tops_iextp_v1_56.first_message_sequence_number = {}

-- Size: First Message Sequence Number
iex_iexequities_tops_iextp_v1_56.first_message_sequence_number.size = 8

-- Display: First Message Sequence Number
iex_iexequities_tops_iextp_v1_56.first_message_sequence_number.display = function(value)
  return "First Message Sequence Number: "..value
end

-- Dissect: First Message Sequence Number
iex_iexequities_tops_iextp_v1_56.first_message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.first_message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_tops_iextp_v1_56.first_message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.first_message_sequence_number, range, value, display)

  return offset + length, value
end

-- Message Count
iex_iexequities_tops_iextp_v1_56.message_count = {}

-- Size: Message Count
iex_iexequities_tops_iextp_v1_56.message_count.size = 2

-- Display: Message Count
iex_iexequities_tops_iextp_v1_56.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
iex_iexequities_tops_iextp_v1_56.message_count.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
iex_iexequities_tops_iextp_v1_56.message_length = {}

-- Size: Message Length
iex_iexequities_tops_iextp_v1_56.message_length.size = 2

-- Display: Message Length
iex_iexequities_tops_iextp_v1_56.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
iex_iexequities_tops_iextp_v1_56.message_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Protocol Id
iex_iexequities_tops_iextp_v1_56.message_protocol_id = {}

-- Size: Message Protocol Id
iex_iexequities_tops_iextp_v1_56.message_protocol_id.size = 2

-- Display: Message Protocol Id
iex_iexequities_tops_iextp_v1_56.message_protocol_id.display = function(value)
  if value == 32770 then
    return "Message Protocol Id: Iex Tops"
  end

  return "Message Protocol Id: Unknown("..value..")"
end

-- Dissect: Message Protocol Id
iex_iexequities_tops_iextp_v1_56.message_protocol_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.message_protocol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.message_protocol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.message_protocol_id, range, value, display)

  return offset + length, value
end

-- Message Type
iex_iexequities_tops_iextp_v1_56.message_type = {}

-- Size: Message Type
iex_iexequities_tops_iextp_v1_56.message_type.size = 1

-- Display: Message Type
iex_iexequities_tops_iextp_v1_56.message_type.display = function(value)
  if value == "Q" then
    return "Message Type: Quote Update Message (Q)"
  end
  if value == "T" then
    return "Message Type: Trade Report Message (T)"
  end
  if value == "B" then
    return "Message Type: Trade Break Message (B)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
iex_iexequities_tops_iextp_v1_56.message_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_tops_iextp_v1_56.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.message_type, range, value, display)

  return offset + length, value
end

-- Payload Length
iex_iexequities_tops_iextp_v1_56.payload_length = {}

-- Size: Payload Length
iex_iexequities_tops_iextp_v1_56.payload_length.size = 2

-- Display: Payload Length
iex_iexequities_tops_iextp_v1_56.payload_length.display = function(value)
  return "Payload Length: "..value
end

-- Dissect: Payload Length
iex_iexequities_tops_iextp_v1_56.payload_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.payload_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.payload_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.payload_length, range, value, display)

  return offset + length, value
end

-- Price
iex_iexequities_tops_iextp_v1_56.price = {}

-- Size: Price
iex_iexequities_tops_iextp_v1_56.price.size = 8

-- Display: Price
iex_iexequities_tops_iextp_v1_56.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
iex_iexequities_tops_iextp_v1_56.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
iex_iexequities_tops_iextp_v1_56.price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_tops_iextp_v1_56.price.translate(raw)
  local display = iex_iexequities_tops_iextp_v1_56.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.price, range, value, display)

  return offset + length, value
end

-- Reserved
iex_iexequities_tops_iextp_v1_56.reserved = {}

-- Size: Reserved
iex_iexequities_tops_iextp_v1_56.reserved.size = 1

-- Display: Reserved
iex_iexequities_tops_iextp_v1_56.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
iex_iexequities_tops_iextp_v1_56.reserved.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = iex_iexequities_tops_iextp_v1_56.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reserved 4
iex_iexequities_tops_iextp_v1_56.reserved_4 = {}

-- Size: Reserved 4
iex_iexequities_tops_iextp_v1_56.reserved_4.size = 4

-- Display: Reserved 4
iex_iexequities_tops_iextp_v1_56.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
iex_iexequities_tops_iextp_v1_56.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Send Time
iex_iexequities_tops_iextp_v1_56.send_time = {}

-- Size: Send Time
iex_iexequities_tops_iextp_v1_56.send_time.size = 8

-- Display: Send Time
iex_iexequities_tops_iextp_v1_56.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
iex_iexequities_tops_iextp_v1_56.send_time.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_tops_iextp_v1_56.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.send_time, range, value, display)

  return offset + length, value
end

-- Session Id
iex_iexequities_tops_iextp_v1_56.session_id = {}

-- Size: Session Id
iex_iexequities_tops_iextp_v1_56.session_id.size = 4

-- Display: Session Id
iex_iexequities_tops_iextp_v1_56.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
iex_iexequities_tops_iextp_v1_56.session_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size
iex_iexequities_tops_iextp_v1_56.size = {}

-- Size: Size
iex_iexequities_tops_iextp_v1_56.size.size = 4

-- Display: Size
iex_iexequities_tops_iextp_v1_56.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
iex_iexequities_tops_iextp_v1_56.size.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.size, range, value, display)

  return offset + length, value
end

-- Stream Offset
iex_iexequities_tops_iextp_v1_56.stream_offset = {}

-- Size: Stream Offset
iex_iexequities_tops_iextp_v1_56.stream_offset.size = 8

-- Display: Stream Offset
iex_iexequities_tops_iextp_v1_56.stream_offset.display = function(value)
  return "Stream Offset: "..value
end

-- Dissect: Stream Offset
iex_iexequities_tops_iextp_v1_56.stream_offset.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.stream_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_tops_iextp_v1_56.stream_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.stream_offset, range, value, display)

  return offset + length, value
end

-- Symbol
iex_iexequities_tops_iextp_v1_56.symbol = {}

-- Size: Symbol
iex_iexequities_tops_iextp_v1_56.symbol.size = 8

-- Display: Symbol
iex_iexequities_tops_iextp_v1_56.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
iex_iexequities_tops_iextp_v1_56.symbol.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_iexequities_tops_iextp_v1_56.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
iex_iexequities_tops_iextp_v1_56.timestamp = {}

-- Size: Timestamp
iex_iexequities_tops_iextp_v1_56.timestamp.size = 8

-- Display: Timestamp
iex_iexequities_tops_iextp_v1_56.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
iex_iexequities_tops_iextp_v1_56.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = iex_iexequities_tops_iextp_v1_56.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Id
iex_iexequities_tops_iextp_v1_56.trade_id = {}

-- Size: Trade Id
iex_iexequities_tops_iextp_v1_56.trade_id.size = 8

-- Display: Trade Id
iex_iexequities_tops_iextp_v1_56.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
iex_iexequities_tops_iextp_v1_56.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_tops_iextp_v1_56.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Version
iex_iexequities_tops_iextp_v1_56.version = {}

-- Size: Version
iex_iexequities_tops_iextp_v1_56.version.size = 1

-- Display: Version
iex_iexequities_tops_iextp_v1_56.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
iex_iexequities_tops_iextp_v1_56.version.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_tops_iextp_v1_56.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Iex IexEquities Tops IexTp 1.56
-----------------------------------------------------------------------

-- Sale Condition Flags
iex_iexequities_tops_iextp_v1_56.sale_condition_flags = {}

-- Size: Sale Condition Flags
iex_iexequities_tops_iextp_v1_56.sale_condition_flags.size = 1

-- Display: Sale Condition Flags
iex_iexequities_tops_iextp_v1_56.sale_condition_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Trade Through Exempt flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Trade Through Exempt"
  end
  -- Is Odd Lot flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Odd Lot"
  end
  -- Is Extended Hours flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Extended Hours"
  end
  -- Is Intermarket Sweep flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Intermarket Sweep"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Sale Condition Flags
iex_iexequities_tops_iextp_v1_56.sale_condition_flags.bits = function(range, value, packet, parent)

  -- Unused 4: 4 Bit
  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.unused_4, range, value)

  -- Trade Through Exempt: 1 Bit
  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.trade_through_exempt, range, value)

  -- Odd Lot: 1 Bit
  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.odd_lot, range, value)

  -- Extended Hours: 1 Bit
  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.extended_hours, range, value)

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.intermarket_sweep, range, value)
end

-- Dissect: Sale Condition Flags
iex_iexequities_tops_iextp_v1_56.sale_condition_flags.dissect = function(buffer, offset, packet, parent)
  local size = iex_iexequities_tops_iextp_v1_56.sale_condition_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.sale_condition_flags.display(range, value, packet, parent)
  local element = parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.sale_condition_flags, range, display)

  if show.structs then
    iex_iexequities_tops_iextp_v1_56.sale_condition_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Break Message
iex_iexequities_tops_iextp_v1_56.trade_break_message = {}

-- Size: Trade Break Message
iex_iexequities_tops_iextp_v1_56.trade_break_message.size =
  iex_iexequities_tops_iextp_v1_56.sale_condition_flags.size + 
  iex_iexequities_tops_iextp_v1_56.timestamp.size + 
  iex_iexequities_tops_iextp_v1_56.symbol.size + 
  iex_iexequities_tops_iextp_v1_56.size.size + 
  iex_iexequities_tops_iextp_v1_56.price.size + 
  iex_iexequities_tops_iextp_v1_56.trade_id.size + 
  iex_iexequities_tops_iextp_v1_56.reserved_4.size

-- Display: Trade Break Message
iex_iexequities_tops_iextp_v1_56.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
iex_iexequities_tops_iextp_v1_56.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 5 fields
  index, sale_condition_flags = iex_iexequities_tops_iextp_v1_56.sale_condition_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_tops_iextp_v1_56.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_tops_iextp_v1_56.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_iexequities_tops_iextp_v1_56.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_iexequities_tops_iextp_v1_56.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_iexequities_tops_iextp_v1_56.trade_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: Integer
  index, reserved_4 = iex_iexequities_tops_iextp_v1_56.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
iex_iexequities_tops_iextp_v1_56.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.trade_break_message, buffer(offset, 0))
    local index = iex_iexequities_tops_iextp_v1_56.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_tops_iextp_v1_56.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_tops_iextp_v1_56.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
iex_iexequities_tops_iextp_v1_56.trade_report_message = {}

-- Size: Trade Report Message
iex_iexequities_tops_iextp_v1_56.trade_report_message.size =
  iex_iexequities_tops_iextp_v1_56.sale_condition_flags.size + 
  iex_iexequities_tops_iextp_v1_56.timestamp.size + 
  iex_iexequities_tops_iextp_v1_56.symbol.size + 
  iex_iexequities_tops_iextp_v1_56.size.size + 
  iex_iexequities_tops_iextp_v1_56.price.size + 
  iex_iexequities_tops_iextp_v1_56.trade_id.size + 
  iex_iexequities_tops_iextp_v1_56.reserved_4.size

-- Display: Trade Report Message
iex_iexequities_tops_iextp_v1_56.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
iex_iexequities_tops_iextp_v1_56.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 5 fields
  index, sale_condition_flags = iex_iexequities_tops_iextp_v1_56.sale_condition_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_tops_iextp_v1_56.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_tops_iextp_v1_56.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_iexequities_tops_iextp_v1_56.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_iexequities_tops_iextp_v1_56.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_iexequities_tops_iextp_v1_56.trade_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: Integer
  index, reserved_4 = iex_iexequities_tops_iextp_v1_56.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
iex_iexequities_tops_iextp_v1_56.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.trade_report_message, buffer(offset, 0))
    local index = iex_iexequities_tops_iextp_v1_56.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_tops_iextp_v1_56.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_tops_iextp_v1_56.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Update Flags
iex_iexequities_tops_iextp_v1_56.quote_update_flags = {}

-- Size: Quote Update Flags
iex_iexequities_tops_iextp_v1_56.quote_update_flags.size = 1

-- Display: Quote Update Flags
iex_iexequities_tops_iextp_v1_56.quote_update_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Market Session flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Market Session"
  end
  -- Is Symbol Availability flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Symbol Availability"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Quote Update Flags
iex_iexequities_tops_iextp_v1_56.quote_update_flags.bits = function(range, value, packet, parent)

  -- Unused 6: 6 Bit
  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.unused_6, range, value)

  -- Market Session: 1 Bit
  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.market_session, range, value)

  -- Symbol Availability: 1 Bit
  parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.symbol_availability, range, value)
end

-- Dissect: Quote Update Flags
iex_iexequities_tops_iextp_v1_56.quote_update_flags.dissect = function(buffer, offset, packet, parent)
  local size = iex_iexequities_tops_iextp_v1_56.quote_update_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = iex_iexequities_tops_iextp_v1_56.quote_update_flags.display(range, value, packet, parent)
  local element = parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.quote_update_flags, range, display)

  if show.structs then
    iex_iexequities_tops_iextp_v1_56.quote_update_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Quote Update Message
iex_iexequities_tops_iextp_v1_56.quote_update_message = {}

-- Size: Quote Update Message
iex_iexequities_tops_iextp_v1_56.quote_update_message.size =
  iex_iexequities_tops_iextp_v1_56.quote_update_flags.size + 
  iex_iexequities_tops_iextp_v1_56.timestamp.size + 
  iex_iexequities_tops_iextp_v1_56.symbol.size + 
  iex_iexequities_tops_iextp_v1_56.bid_size.size + 
  iex_iexequities_tops_iextp_v1_56.bid_price.size + 
  iex_iexequities_tops_iextp_v1_56.ask_price.size + 
  iex_iexequities_tops_iextp_v1_56.ask_size.size

-- Display: Quote Update Message
iex_iexequities_tops_iextp_v1_56.quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Message
iex_iexequities_tops_iextp_v1_56.quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Flags: Struct of 3 fields
  index, quote_update_flags = iex_iexequities_tops_iextp_v1_56.quote_update_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_tops_iextp_v1_56.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_tops_iextp_v1_56.symbol.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = iex_iexequities_tops_iextp_v1_56.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Price: Price
  index, bid_price = iex_iexequities_tops_iextp_v1_56.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Price: Price
  index, ask_price = iex_iexequities_tops_iextp_v1_56.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Integer
  index, ask_size = iex_iexequities_tops_iextp_v1_56.ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Message
iex_iexequities_tops_iextp_v1_56.quote_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.quote_update_message, buffer(offset, 0))
    local index = iex_iexequities_tops_iextp_v1_56.quote_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_tops_iextp_v1_56.quote_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_tops_iextp_v1_56.quote_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Data
iex_iexequities_tops_iextp_v1_56.message_data = {}

-- Dissect: Message Data
iex_iexequities_tops_iextp_v1_56.message_data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Quote Update Message
  if message_type == "Q" then
    return iex_iexequities_tops_iextp_v1_56.quote_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if message_type == "T" then
    return iex_iexequities_tops_iextp_v1_56.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == "B" then
    return iex_iexequities_tops_iextp_v1_56.trade_break_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
iex_iexequities_tops_iextp_v1_56.message_header = {}

-- Size: Message Header
iex_iexequities_tops_iextp_v1_56.message_header.size =
  iex_iexequities_tops_iextp_v1_56.message_length.size + 
  iex_iexequities_tops_iextp_v1_56.message_type.size

-- Display: Message Header
iex_iexequities_tops_iextp_v1_56.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
iex_iexequities_tops_iextp_v1_56.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = iex_iexequities_tops_iextp_v1_56.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 3 values
  index, message_type = iex_iexequities_tops_iextp_v1_56.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
iex_iexequities_tops_iextp_v1_56.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.message_header, buffer(offset, 0))
    local index = iex_iexequities_tops_iextp_v1_56.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_tops_iextp_v1_56.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_tops_iextp_v1_56.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
iex_iexequities_tops_iextp_v1_56.message = {}

-- Read runtime size of: Message
iex_iexequities_tops_iextp_v1_56.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):le_uint()

  return message_length + 2
end

-- Display: Message
iex_iexequities_tops_iextp_v1_56.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
iex_iexequities_tops_iextp_v1_56.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Implicit Message Sequence Number
  if message_index ~= nil and show.sequences and iex_iexequities_tops_iextp_v1_56.sequence ~= nil then
    local sequence = parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.message_sequence_number, UInt64.new(iex_iexequities_tops_iextp_v1_56.sequence + message_index - 1))
    sequence:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = iex_iexequities_tops_iextp_v1_56.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Message Data: Runtime Type with 3 branches
  index = iex_iexequities_tops_iextp_v1_56.message_data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
iex_iexequities_tops_iextp_v1_56.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = iex_iexequities_tops_iextp_v1_56.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.message, buffer(offset, 0))
    local current = iex_iexequities_tops_iextp_v1_56.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = iex_iexequities_tops_iextp_v1_56.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    iex_iexequities_tops_iextp_v1_56.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
iex_iexequities_tops_iextp_v1_56.heartbeat = {}

-- Display: Heartbeat
iex_iexequities_tops_iextp_v1_56.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
iex_iexequities_tops_iextp_v1_56.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = iex_iexequities_tops_iextp_v1_56.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
iex_iexequities_tops_iextp_v1_56.messages = {}

-- Dissect: Messages
iex_iexequities_tops_iextp_v1_56.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return iex_iexequities_tops_iextp_v1_56.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):le_uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = iex_iexequities_tops_iextp_v1_56.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Iextp Header
iex_iexequities_tops_iextp_v1_56.iextp_header = {}

-- Size: Iextp Header
iex_iexequities_tops_iextp_v1_56.iextp_header.size =
  iex_iexequities_tops_iextp_v1_56.version.size + 
  iex_iexequities_tops_iextp_v1_56.reserved.size + 
  iex_iexequities_tops_iextp_v1_56.message_protocol_id.size + 
  iex_iexequities_tops_iextp_v1_56.channel_id.size + 
  iex_iexequities_tops_iextp_v1_56.session_id.size + 
  iex_iexequities_tops_iextp_v1_56.payload_length.size + 
  iex_iexequities_tops_iextp_v1_56.message_count.size + 
  iex_iexequities_tops_iextp_v1_56.stream_offset.size + 
  iex_iexequities_tops_iextp_v1_56.first_message_sequence_number.size + 
  iex_iexequities_tops_iextp_v1_56.send_time.size

-- Display: Iextp Header
iex_iexequities_tops_iextp_v1_56.iextp_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Iextp Header
iex_iexequities_tops_iextp_v1_56.iextp_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = iex_iexequities_tops_iextp_v1_56.version.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = iex_iexequities_tops_iextp_v1_56.reserved.dissect(buffer, index, packet, parent)

  -- Message Protocol Id: 2 Byte Unsigned Fixed Width Integer Static
  index, message_protocol_id = iex_iexequities_tops_iextp_v1_56.message_protocol_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 4 Byte Unsigned Fixed Width Integer
  index, channel_id = iex_iexequities_tops_iextp_v1_56.channel_id.dissect(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = iex_iexequities_tops_iextp_v1_56.session_id.dissect(buffer, index, packet, parent)

  -- Payload Length: 2 Byte Unsigned Fixed Width Integer
  index, payload_length = iex_iexequities_tops_iextp_v1_56.payload_length.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = iex_iexequities_tops_iextp_v1_56.message_count.dissect(buffer, index, packet, parent)

  -- Stream Offset: 8 Byte Unsigned Fixed Width Integer
  index, stream_offset = iex_iexequities_tops_iextp_v1_56.stream_offset.dissect(buffer, index, packet, parent)

  -- First Message Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, first_message_sequence_number = iex_iexequities_tops_iextp_v1_56.first_message_sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = iex_iexequities_tops_iextp_v1_56.send_time.dissect(buffer, index, packet, parent)

  -- Sequence base for the packet's messages
  iex_iexequities_tops_iextp_v1_56.sequence = first_message_sequence_number

  return index
end

-- Dissect: Iextp Header
iex_iexequities_tops_iextp_v1_56.iextp_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_tops_iextp_v1_56.fields.iextp_header, buffer(offset, 0))
    local index = iex_iexequities_tops_iextp_v1_56.iextp_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_tops_iextp_v1_56.iextp_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_tops_iextp_v1_56.iextp_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
iex_iexequities_tops_iextp_v1_56.packet = {}

-- Verify required size of Udp packet
iex_iexequities_tops_iextp_v1_56.packet.requiredsize = function(buffer)
  return buffer:len() >= iex_iexequities_tops_iextp_v1_56.iextp_header.size
end

-- Dissect Packet
iex_iexequities_tops_iextp_v1_56.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Iextp Header: Struct of 10 fields
  index, iextp_header = iex_iexequities_tops_iextp_v1_56.iextp_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 26, 2):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = iex_iexequities_tops_iextp_v1_56.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_iex_iexequities_tops_iextp_v1_56.init()
end

-- Dissector for Iex IexEquities Tops IexTp 1.56
function omi_iex_iexequities_tops_iextp_v1_56.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_iex_iexequities_tops_iextp_v1_56.name

  -- Dissect protocol
  local protocol = parent:add(omi_iex_iexequities_tops_iextp_v1_56, buffer(), omi_iex_iexequities_tops_iextp_v1_56.description, "("..buffer:len().." Bytes)")
  return iex_iexequities_tops_iextp_v1_56.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Message Protocol Id Field
iex_iexequities_tops_iextp_v1_56.message_protocol_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(2, 2):le_uint()

  if value == 32770 then
    return true
  end

  return false
end

-- Dissector Heuristic for Iex IexEquities Tops IexTp 1.56 (Udp)
local function omi_iex_iexequities_tops_iextp_v1_56_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not iex_iexequities_tops_iextp_v1_56.packet.requiredsize(buffer) then return false end

  -- Verify Message Protocol Id
  if not iex_iexequities_tops_iextp_v1_56.message_protocol_id.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_iex_iexequities_tops_iextp_v1_56
  omi_iex_iexequities_tops_iextp_v1_56.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Iex IexEquities Tops IexTp 1.56
omi_iex_iexequities_tops_iextp_v1_56:register_heuristic("udp", omi_iex_iexequities_tops_iextp_v1_56_udp_heuristic)

-- Register Iex IexEquities Tops IexTp 1.56 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_iex_iexequities_tops_iextp_v1_56)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Investors Exchange
--   Version: 1.56
--   Date: Friday, September 23, 2016
--   Specification: IEX TOPS Specification.pdf
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
