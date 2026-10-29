-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Gpw Wse Quotes Xdp 6.8 Protocol
local omi_gpw_wse_quotes_xdp_v6_8 = Proto("Omi.Gpw.Wse.Quotes.Xdp.v6.8", "Gpw Wse Quotes Xdp 6.8")

-- Protocol table
local gpw_wse_quotes_xdp_v6_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Gpw Wse Quotes Xdp 6.8 Fields
omi_gpw_wse_quotes_xdp_v6_8.fields.ask_price = ProtoField.new("Ask Price", "gpw.wse.quotes.xdp.v6.8.askprice", ftypes.UINT32, nil, nil, nil, "Ask Price for Quote or BBO (To be calculated with the ScaleCode) Specific values: '0' - Limit Deletion 'FF FF FF FE ' - Market Order or Market To Limit Order")
omi_gpw_wse_quotes_xdp_v6_8.fields.ask_size = ProtoField.new("Ask Size", "gpw.wse.quotes.xdp.v6.8.asksize", ftypes.UINT32, nil, nil, nil, "Total number of shares requested in sell orders at the ask price")
omi_gpw_wse_quotes_xdp_v6_8.fields.bid_price = ProtoField.new("Bid Price", "gpw.wse.quotes.xdp.v6.8.bidprice", ftypes.UINT32, nil, nil, nil, "Bid Price for Quote or BBO (To be calculated with the ScaleCode) Specific values: '0' - Limit Deletion 'FF FF FF FE ' - Market Order or Market To Limit Order")
omi_gpw_wse_quotes_xdp_v6_8.fields.bid_size = ProtoField.new("Bid Size", "gpw.wse.quotes.xdp.v6.8.bidsize", ftypes.UINT32, nil, nil, nil, "Total number of securities requested in buy orders at the bid price")
omi_gpw_wse_quotes_xdp_v6_8.fields.delivery_flag = ProtoField.new("Delivery Flag", "gpw.wse.quotes.xdp.v6.8.deliveryflag", ftypes.UINT8, nil, nil, nil, "Indicates delivery method, and a client reads it to determine whether the packet is ZliB compressed")
omi_gpw_wse_quotes_xdp_v6_8.fields.firm_id = ProtoField.new("Firm Id", "gpw.wse.quotes.xdp.v6.8.firmid", ftypes.STRING, nil, nil, nil, "Indicates the Firm ID who issued the indication of interest if the IOI is not anonymous")
omi_gpw_wse_quotes_xdp_v6_8.fields.ioi_qty = ProtoField.new("Ioi Qty", "gpw.wse.quotes.xdp.v6.8.ioiqty", ftypes.UINT32, nil, nil, nil, "Optional, IOI quantity")
omi_gpw_wse_quotes_xdp_v6_8.fields.ioi_trans_type = ProtoField.new("Ioi Trans Type", "gpw.wse.quotes.xdp.v6.8.ioitranstype", ftypes.STRING, nil, nil, nil, "Indicates the IOI type")
omi_gpw_wse_quotes_xdp_v6_8.fields.ioiutpid = ProtoField.new("Ioiutpid", "gpw.wse.quotes.xdp.v6.8.ioiutpid", ftypes.UINT32, nil, nil, nil, "IOI identifier: uniqueness is guaranteed for the day for all instruments")
omi_gpw_wse_quotes_xdp_v6_8.fields.message_size = ProtoField.new("Message Size", "gpw.wse.quotes.xdp.v6.8.messagesize", ftypes.UINT16, nil, nil, nil, "Length of the message body, excluding the 2 byte MsgSize field")
omi_gpw_wse_quotes_xdp_v6_8.fields.message_type = ProtoField.new("Message Type", "gpw.wse.quotes.xdp.v6.8.messagetype", ftypes.UINT16, nil, nil, nil, "The type of this message")
omi_gpw_wse_quotes_xdp_v6_8.fields.number_ask_orders = ProtoField.new("Number Ask Orders", "gpw.wse.quotes.xdp.v6.8.numberaskorders", ftypes.UINT16, nil, nil, nil, "Number of sell orders at the ask price")
omi_gpw_wse_quotes_xdp_v6_8.fields.number_bid_orders = ProtoField.new("Number Bid Orders", "gpw.wse.quotes.xdp.v6.8.numberbidorders", ftypes.UINT16, nil, nil, nil, "Number of buy orders at the bid price Set to 1 when QuoteNumber is equal to 0 (Market Summary)")
omi_gpw_wse_quotes_xdp_v6_8.fields.number_msg_entries = ProtoField.new("Number Msg Entries", "gpw.wse.quotes.xdp.v6.8.numbermsgentries", ftypes.UINT8, nil, nil, nil, "The number of messages that are contained within the packet")
omi_gpw_wse_quotes_xdp_v6_8.fields.packet_length = ProtoField.new("Packet Length", "gpw.wse.quotes.xdp.v6.8.packetlength", ftypes.UINT16, nil, nil, nil, "Length of the packet including the 16 byte packet header")
omi_gpw_wse_quotes_xdp_v6_8.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "gpw.wse.quotes.xdp.v6.8.packetsequencenumber", ftypes.UINT32, nil, nil, nil, "The packet sequence number, unique for each broadcast stream and used for gap detection. It increases serially and monotonically and is reset to 1 at the beginning of each trading day. It is unique for packets containing market data only, and heartbeats inherit it from the last market data packet or packet sequence number reset packet")
omi_gpw_wse_quotes_xdp_v6_8.fields.packet_type = ProtoField.new("Packet Type", "gpw.wse.quotes.xdp.v6.8.packettype", ftypes.UINT16, nil, nil, nil, "Identifier for the type of data contained in the packet. Section 1.1 states one value, 501 for Market Data messages, for every feed the document specifies")
omi_gpw_wse_quotes_xdp_v6_8.fields.price = ProtoField.new("Price", "gpw.wse.quotes.xdp.v6.8.price", ftypes.UINT32, nil, nil, nil, "Optional, IOI price, to be calculated with PriceScaleCode")
omi_gpw_wse_quotes_xdp_v6_8.fields.price_scale_code = ProtoField.new("Price Scale Code", "gpw.wse.quotes.xdp.v6.8.pricescalecode", ftypes.UINT8, nil, nil, nil, "Applicable to all prices in the message")
omi_gpw_wse_quotes_xdp_v6_8.fields.quote_condition = ProtoField.new("Quote Condition", "gpw.wse.quotes.xdp.v6.8.quotecondition", ftypes.STRING, nil, nil, nil, "Liquidity provider presence indicator, only provided for instruments traded on a LP quote driven book")
omi_gpw_wse_quotes_xdp_v6_8.fields.quote_link_id = ProtoField.new("Quote Link Id", "gpw.wse.quotes.xdp.v6.8.quotelinkid", ftypes.UINT32, nil, nil, nil, "Not used")
omi_gpw_wse_quotes_xdp_v6_8.fields.quote_number = ProtoField.new("Quote Number", "gpw.wse.quotes.xdp.v6.8.quotenumber", ftypes.UINT8, nil, nil, nil, "Indicates the level in the order book for the given aggregate quote, derived from it's price value")
omi_gpw_wse_quotes_xdp_v6_8.fields.reserved_1 = ProtoField.new("Reserved 1", "gpw.wse.quotes.xdp.v6.8.reserved1", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_quotes_xdp_v6_8.fields.reserved_3 = ProtoField.new("Reserved 3", "gpw.wse.quotes.xdp.v6.8.reserved3", ftypes.BYTES, nil, nil, nil, "For future use")
omi_gpw_wse_quotes_xdp_v6_8.fields.send_time = ProtoField.new("Send Time", "gpw.wse.quotes.xdp.v6.8.sendtime", ftypes.UINT32, nil, nil, nil, "Timestamp in millisecond indicating the packet broadcast time. The number represents the number of milliseconds since midnight of the last Sunday 00:00 UTC, a weekly epoch no Epoch trait represents, so the field carries no epoch and a reader resolves the absolute time against the Sunday preceding the capture")
omi_gpw_wse_quotes_xdp_v6_8.fields.service_id = ProtoField.new("Service Id", "gpw.wse.quotes.xdp.v6.8.serviceid", ftypes.UINT16, nil, nil, nil, "Numeric value identifying the broadcast stream. Section 1.1 states that the possible values are described in the XDP CDE Configuration document, a companion this specification does not reproduce, so no value set is declared here")
omi_gpw_wse_quotes_xdp_v6_8.fields.settlement_date = ProtoField.new("Settlement Date", "gpw.wse.quotes.xdp.v6.8.settlementdate", ftypes.STRING, nil, nil, nil, "Optional, settlement date (YYYYMMDD)")
omi_gpw_wse_quotes_xdp_v6_8.fields.side = ProtoField.new("Side", "gpw.wse.quotes.xdp.v6.8.side", ftypes.STRING, nil, nil, nil, "Indicates the side of the IOI")
omi_gpw_wse_quotes_xdp_v6_8.fields.source_seq_num = ProtoField.new("Source Seq Num", "gpw.wse.quotes.xdp.v6.8.sourceseqnum", ftypes.UINT32, nil, nil, nil, "This field specifies the sequence number assigned by the source system to this message")
omi_gpw_wse_quotes_xdp_v6_8.fields.source_time = ProtoField.new("Source Time", "gpw.wse.quotes.xdp.v6.8.sourcetime", ftypes.UINT32, nil, nil, nil, "This field specifies the message generation time")
omi_gpw_wse_quotes_xdp_v6_8.fields.source_time_micro_secs = ProtoField.new("Source Time Micro Secs", "gpw.wse.quotes.xdp.v6.8.sourcetimemicrosecs", ftypes.UINT16, nil, nil, nil, "Number of micro seconds")
omi_gpw_wse_quotes_xdp_v6_8.fields.symbol_index = ProtoField.new("Symbol Index", "gpw.wse.quotes.xdp.v6.8.symbolindex", ftypes.UINT32, nil, nil, nil, "UTP-MD proprietary identification of the instrument")
omi_gpw_wse_quotes_xdp_v6_8.fields.system_id = ProtoField.new("System Id", "gpw.wse.quotes.xdp.v6.8.systemid", ftypes.UINT32, nil, nil, nil, "The ID of the originating Exchange/System of the message")
omi_gpw_wse_quotes_xdp_v6_8.fields.text = ProtoField.new("Text", "gpw.wse.quotes.xdp.v6.8.text", ftypes.STRING, nil, nil, nil, "Free text")
omi_gpw_wse_quotes_xdp_v6_8.fields.trade_type = ProtoField.new("Trade Type", "gpw.wse.quotes.xdp.v6.8.tradetype", ftypes.STRING, nil, nil, nil, "IOI trade type")
omi_gpw_wse_quotes_xdp_v6_8.fields.type_of_ask_price = ProtoField.new("Type Of Ask Price", "gpw.wse.quotes.xdp.v6.8.typeofaskprice", ftypes.UINT8)
omi_gpw_wse_quotes_xdp_v6_8.fields.type_of_bid_price = ProtoField.new("Type Of Bid Price", "gpw.wse.quotes.xdp.v6.8.typeofbidprice", ftypes.UINT8)
omi_gpw_wse_quotes_xdp_v6_8.fields.validity_time = ProtoField.new("Validity Time", "gpw.wse.quotes.xdp.v6.8.validitytime", ftypes.UINT32, nil, nil, nil, "Optional, indicates the IOI end of validity time (HHMMSS)")

-- Gpw Wse Quotes Xdp 6.8 Framing
omi_gpw_wse_quotes_xdp_v6_8.fields.message = ProtoField.new("Message", "gpw.wse.quotes.xdp.v6.8.message", ftypes.STRING)
omi_gpw_wse_quotes_xdp_v6_8.fields.message_header = ProtoField.new("Message Header", "gpw.wse.quotes.xdp.v6.8.messageheader", ftypes.STRING)
omi_gpw_wse_quotes_xdp_v6_8.fields.packet = ProtoField.new("Packet", "gpw.wse.quotes.xdp.v6.8.packet", ftypes.STRING, nil, nil, nil, "Gpw Xdp Udp Packet")
omi_gpw_wse_quotes_xdp_v6_8.fields.packet_header = ProtoField.new("Packet Header", "gpw.wse.quotes.xdp.v6.8.packetheader", ftypes.STRING, nil, nil, nil, "All messages are preceded by a common packet header format, which section 1.1 states for every Market Information message")

-- Gpw Wse Quotes 6.8 Application Messages
omi_gpw_wse_quotes_xdp_v6_8.fields.indication_of_interest_message = ProtoField.new("Indication Of Interest Message", "gpw.wse.quotes.xdp.v6.8.indicationofinterestmessage", ftypes.STRING, nil, nil, nil, "The Indication of Interest message disseminates an indication of interest for a given instrument to all participants")
omi_gpw_wse_quotes_xdp_v6_8.fields.quotes_and_bbo_5_message = ProtoField.new("Quotes And Bbo 5 Message", "gpw.wse.quotes.xdp.v6.8.quotesandbbo5message", ftypes.STRING, nil, nil, nil, "A Quotes & BBO5 message indicates the modification of one or more of the N best limits (N being the number of limits disseminated for the given exchange 1 ) for an instrument and, during the Pre-Opening phase, the modification of the \"market summary\" for the instrument")

-- Gpw Wse Quotes Xdp 6.8 Generated Fields
omi_gpw_wse_quotes_xdp_v6_8.fields.message_index = ProtoField.new("Message Index", "gpw.wse.quotes.xdp.v6.8.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Gpw Wse Quotes Xdp 6.8 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true
show.indexes = true

-- Register Gpw Wse Quotes Xdp 6.8 Show Options
omi_gpw_wse_quotes_xdp_v6_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_gpw_wse_quotes_xdp_v6_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_gpw_wse_quotes_xdp_v6_8.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_gpw_wse_quotes_xdp_v6_8.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

-- Handle changed preferences
function omi_gpw_wse_quotes_xdp_v6_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_gpw_wse_quotes_xdp_v6_8.prefs.show_application_messages then
    show.application_messages = omi_gpw_wse_quotes_xdp_v6_8.prefs.show_application_messages
  end
  if show.headers ~= omi_gpw_wse_quotes_xdp_v6_8.prefs.show_headers then
    show.headers = omi_gpw_wse_quotes_xdp_v6_8.prefs.show_headers
  end
  if show.structs ~= omi_gpw_wse_quotes_xdp_v6_8.prefs.show_structs then
    show.structs = omi_gpw_wse_quotes_xdp_v6_8.prefs.show_structs
  end
  if show.indexes ~= omi_gpw_wse_quotes_xdp_v6_8.prefs.show_indexes then
    show.indexes = omi_gpw_wse_quotes_xdp_v6_8.prefs.show_indexes
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

-- the midnight a frame's time of day is counted from, as a utc instant; none for a frame stating no instant
venue_midnight = function(packet, utc_offset_seconds)
  local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()

  -- no capture date: a frame with no instant of its own reads as the epoch
  if capture_time < 86400 then
    return nil
  end

  return math.floor((capture_time + utc_offset_seconds) / 86400) * 86400
end


-- Zlib decompression: wireshark built in inflate (uncompress_zlib from 4.4, uncompress before)
local function zlib_decompress(range)
  local ok, decompressed = pcall(function() return range:uncompress_zlib("Decompressed") end)

  if ok then
    return decompressed
  end

  return range:uncompress("Decompressed")
end
-----------------------------------------------------------------------
-- Gpw Wse Quotes Xdp 6.8 Fields
-----------------------------------------------------------------------

-- Ask Price
gpw_wse_quotes_xdp_v6_8.ask_price = {}

-- Size: Ask Price
gpw_wse_quotes_xdp_v6_8.ask_price.size = 4

-- Display: Ask Price
gpw_wse_quotes_xdp_v6_8.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
gpw_wse_quotes_xdp_v6_8.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.ask_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
gpw_wse_quotes_xdp_v6_8.ask_size = {}

-- Size: Ask Size
gpw_wse_quotes_xdp_v6_8.ask_size.size = 4

-- Display: Ask Size
gpw_wse_quotes_xdp_v6_8.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
gpw_wse_quotes_xdp_v6_8.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.ask_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Bid Price
gpw_wse_quotes_xdp_v6_8.bid_price = {}

-- Size: Bid Price
gpw_wse_quotes_xdp_v6_8.bid_price.size = 4

-- Display: Bid Price
gpw_wse_quotes_xdp_v6_8.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
gpw_wse_quotes_xdp_v6_8.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.bid_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
gpw_wse_quotes_xdp_v6_8.bid_size = {}

-- Size: Bid Size
gpw_wse_quotes_xdp_v6_8.bid_size.size = 4

-- Display: Bid Size
gpw_wse_quotes_xdp_v6_8.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
gpw_wse_quotes_xdp_v6_8.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Delivery Flag
gpw_wse_quotes_xdp_v6_8.delivery_flag = {}

-- Size: Delivery Flag
gpw_wse_quotes_xdp_v6_8.delivery_flag.size = 1

-- Display: Delivery Flag
gpw_wse_quotes_xdp_v6_8.delivery_flag.labels = {
  [0] = "Delivery Flag: Real Time Message Uncompressed (0)",
  [2] = "Delivery Flag: Retransmission Message Uncompressed (2)",
  [16] = "Delivery Flag: Real Time Message Zlib Compressed (16)",
  [17] = "Delivery Flag: Refresh Message Zlib Compressed (17)",
  [18] = "Delivery Flag: Retransmission Message Compressed (18)",
}

gpw_wse_quotes_xdp_v6_8.delivery_flag.display = function(value)
  return gpw_wse_quotes_xdp_v6_8.delivery_flag.labels[value] or "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
gpw_wse_quotes_xdp_v6_8.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Firm Id
gpw_wse_quotes_xdp_v6_8.firm_id = {}

-- Size: Firm Id
gpw_wse_quotes_xdp_v6_8.firm_id.size = 11

-- Display: Firm Id
gpw_wse_quotes_xdp_v6_8.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
gpw_wse_quotes_xdp_v6_8.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.firm_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_quotes_xdp_v6_8.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Ioi Qty
gpw_wse_quotes_xdp_v6_8.ioi_qty = {}

-- Size: Ioi Qty
gpw_wse_quotes_xdp_v6_8.ioi_qty.size = 4

-- Display: Ioi Qty
gpw_wse_quotes_xdp_v6_8.ioi_qty.display = function(value)
  return "Ioi Qty: "..value
end

-- Dissect: Ioi Qty
gpw_wse_quotes_xdp_v6_8.ioi_qty.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.ioi_qty.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.ioi_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.ioi_qty, range, value, display)

  return offset + length, value
end

-- Ioi Trans Type
gpw_wse_quotes_xdp_v6_8.ioi_trans_type = {}

-- Size: Ioi Trans Type
gpw_wse_quotes_xdp_v6_8.ioi_trans_type.size = 1

-- Display: Ioi Trans Type
gpw_wse_quotes_xdp_v6_8.ioi_trans_type.labels = {
  ["N"] = "Ioi Trans Type: New (N)",
  ["C"] = "Ioi Trans Type: Cancel (C)",
  ["E"] = "Ioi Trans Type: Expire (E)",
}

gpw_wse_quotes_xdp_v6_8.ioi_trans_type.display = function(value)
  return gpw_wse_quotes_xdp_v6_8.ioi_trans_type.labels[value] or "Ioi Trans Type: Unknown("..value..")"
end

-- Dissect: Ioi Trans Type
gpw_wse_quotes_xdp_v6_8.ioi_trans_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.ioi_trans_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_quotes_xdp_v6_8.ioi_trans_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.ioi_trans_type, range, value, display)

  return offset + length, value
end

-- Ioiutpid
gpw_wse_quotes_xdp_v6_8.ioiutpid = {}

-- Size: Ioiutpid
gpw_wse_quotes_xdp_v6_8.ioiutpid.size = 4

-- Display: Ioiutpid
gpw_wse_quotes_xdp_v6_8.ioiutpid.display = function(value)
  return "Ioiutpid: "..value
end

-- Dissect: Ioiutpid
gpw_wse_quotes_xdp_v6_8.ioiutpid.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.ioiutpid.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.ioiutpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.ioiutpid, range, value, display)

  return offset + length, value
end

-- Message Size
gpw_wse_quotes_xdp_v6_8.message_size = {}

-- Size: Message Size
gpw_wse_quotes_xdp_v6_8.message_size.size = 2

-- Display: Message Size
gpw_wse_quotes_xdp_v6_8.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
gpw_wse_quotes_xdp_v6_8.message_size.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
gpw_wse_quotes_xdp_v6_8.message_type = {}

-- Size: Message Type
gpw_wse_quotes_xdp_v6_8.message_type.size = 2

-- Display: Message Type
gpw_wse_quotes_xdp_v6_8.message_type.labels = {
  [140] = "Message Type: Quotes And Bbo 5 Message (140)",
  [142] = "Message Type: Indication Of Interest Message (142)",
}

gpw_wse_quotes_xdp_v6_8.message_type.display = function(value)
  return gpw_wse_quotes_xdp_v6_8.message_type.labels[value] or "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
gpw_wse_quotes_xdp_v6_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Number Ask Orders
gpw_wse_quotes_xdp_v6_8.number_ask_orders = {}

-- Size: Number Ask Orders
gpw_wse_quotes_xdp_v6_8.number_ask_orders.size = 2

-- Display: Number Ask Orders
gpw_wse_quotes_xdp_v6_8.number_ask_orders.display = function(value)
  return "Number Ask Orders: "..value
end

-- Dissect: Number Ask Orders
gpw_wse_quotes_xdp_v6_8.number_ask_orders.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.number_ask_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.number_ask_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.number_ask_orders, range, value, display)

  return offset + length, value
end

-- Number Bid Orders
gpw_wse_quotes_xdp_v6_8.number_bid_orders = {}

-- Size: Number Bid Orders
gpw_wse_quotes_xdp_v6_8.number_bid_orders.size = 2

-- Display: Number Bid Orders
gpw_wse_quotes_xdp_v6_8.number_bid_orders.display = function(value)
  return "Number Bid Orders: "..value
end

-- Dissect: Number Bid Orders
gpw_wse_quotes_xdp_v6_8.number_bid_orders.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.number_bid_orders.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.number_bid_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.number_bid_orders, range, value, display)

  return offset + length, value
end

-- Number Msg Entries
gpw_wse_quotes_xdp_v6_8.number_msg_entries = {}

-- Size: Number Msg Entries
gpw_wse_quotes_xdp_v6_8.number_msg_entries.size = 1

-- Display: Number Msg Entries
gpw_wse_quotes_xdp_v6_8.number_msg_entries.display = function(value)
  return "Number Msg Entries: "..value
end

-- Dissect: Number Msg Entries
gpw_wse_quotes_xdp_v6_8.number_msg_entries.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.number_msg_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.number_msg_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.number_msg_entries, range, value, display)

  return offset + length, value
end

-- Packet Length
gpw_wse_quotes_xdp_v6_8.packet_length = {}

-- Size: Packet Length
gpw_wse_quotes_xdp_v6_8.packet_length.size = 2

-- Display: Packet Length
gpw_wse_quotes_xdp_v6_8.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
gpw_wse_quotes_xdp_v6_8.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
gpw_wse_quotes_xdp_v6_8.packet_sequence_number = {}

-- Size: Packet Sequence Number
gpw_wse_quotes_xdp_v6_8.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
gpw_wse_quotes_xdp_v6_8.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
gpw_wse_quotes_xdp_v6_8.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Packet Type
gpw_wse_quotes_xdp_v6_8.packet_type = {}

-- Size: Packet Type
gpw_wse_quotes_xdp_v6_8.packet_type.size = 2

-- Display: Packet Type
gpw_wse_quotes_xdp_v6_8.packet_type.labels = {
  [501] = "Packet Type: Market Data Messages (501)",
}

gpw_wse_quotes_xdp_v6_8.packet_type.display = function(value)
  return gpw_wse_quotes_xdp_v6_8.packet_type.labels[value] or "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
gpw_wse_quotes_xdp_v6_8.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Price
gpw_wse_quotes_xdp_v6_8.price = {}

-- Size: Price
gpw_wse_quotes_xdp_v6_8.price.size = 4

-- Display: Price
gpw_wse_quotes_xdp_v6_8.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
gpw_wse_quotes_xdp_v6_8.price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.price, range, value, display)

  return offset + length, value
end

-- Price Scale Code
gpw_wse_quotes_xdp_v6_8.price_scale_code = {}

-- Size: Price Scale Code
gpw_wse_quotes_xdp_v6_8.price_scale_code.size = 1

-- Display: Price Scale Code
gpw_wse_quotes_xdp_v6_8.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
gpw_wse_quotes_xdp_v6_8.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Quote Condition
gpw_wse_quotes_xdp_v6_8.quote_condition = {}

-- Size: Quote Condition
gpw_wse_quotes_xdp_v6_8.quote_condition.size = 1

-- Display: Quote Condition
gpw_wse_quotes_xdp_v6_8.quote_condition.display = function(value)
  if value == "0" then
    return "Quote Condition: No Liquidity Provider Lp (0)"
  end
  if value == "1" then
    return "Quote Condition: Lp Only On Ask Side (1)"
  end
  if value == "2" then
    return "Quote Condition: Lp Only On Bid Side (2)"
  end
  if value == "3" then
    return "Quote Condition: Lp On Ask And Bid Sides (3)"
  end
  if value == 0 then
    return "Quote Condition: Not Provided Not Applicable"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
gpw_wse_quotes_xdp_v6_8.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.quote_condition.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = gpw_wse_quotes_xdp_v6_8.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Quote Link Id
gpw_wse_quotes_xdp_v6_8.quote_link_id = {}

-- Size: Quote Link Id
gpw_wse_quotes_xdp_v6_8.quote_link_id.size = 4

-- Display: Quote Link Id
gpw_wse_quotes_xdp_v6_8.quote_link_id.display = function(value)
  return "Quote Link Id: "..value
end

-- Dissect: Quote Link Id
gpw_wse_quotes_xdp_v6_8.quote_link_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.quote_link_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.quote_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.quote_link_id, range, value, display)

  return offset + length, value
end

-- Quote Number
gpw_wse_quotes_xdp_v6_8.quote_number = {}

-- Size: Quote Number
gpw_wse_quotes_xdp_v6_8.quote_number.size = 1

-- Display: Quote Number
gpw_wse_quotes_xdp_v6_8.quote_number.display = function(value)
  return "Quote Number: "..value
end

-- Dissect: Quote Number
gpw_wse_quotes_xdp_v6_8.quote_number.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.quote_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.quote_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.quote_number, range, value, display)

  return offset + length, value
end

-- Reserved 1
gpw_wse_quotes_xdp_v6_8.reserved_1 = {}

-- Size: Reserved 1
gpw_wse_quotes_xdp_v6_8.reserved_1.size = 1

-- Display: Reserved 1
gpw_wse_quotes_xdp_v6_8.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
gpw_wse_quotes_xdp_v6_8.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_quotes_xdp_v6_8.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 3
gpw_wse_quotes_xdp_v6_8.reserved_3 = {}

-- Size: Reserved 3
gpw_wse_quotes_xdp_v6_8.reserved_3.size = 3

-- Display: Reserved 3
gpw_wse_quotes_xdp_v6_8.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
gpw_wse_quotes_xdp_v6_8.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = gpw_wse_quotes_xdp_v6_8.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Send Time
gpw_wse_quotes_xdp_v6_8.send_time = {}

-- Size: Send Time
gpw_wse_quotes_xdp_v6_8.send_time.size = 4

-- Display: Send Time
gpw_wse_quotes_xdp_v6_8.send_time.display = function(value)
  return "Send Time: "..value
end

-- Dissect: Send Time
gpw_wse_quotes_xdp_v6_8.send_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.send_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.send_time, range, value, display)

  return offset + length, value
end

-- Service Id
gpw_wse_quotes_xdp_v6_8.service_id = {}

-- Size: Service Id
gpw_wse_quotes_xdp_v6_8.service_id.size = 2

-- Display: Service Id
gpw_wse_quotes_xdp_v6_8.service_id.display = function(value)
  return "Service Id: "..value
end

-- Dissect: Service Id
gpw_wse_quotes_xdp_v6_8.service_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.service_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.service_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.service_id, range, value, display)

  return offset + length, value
end

-- Settlement Date
gpw_wse_quotes_xdp_v6_8.settlement_date = {}

-- Size: Settlement Date
gpw_wse_quotes_xdp_v6_8.settlement_date.size = 8

-- Display: Settlement Date
gpw_wse_quotes_xdp_v6_8.settlement_date.display = function(value)
  if #value < 8 then
    return "Settlement Date: "..value
  end

  return "Settlement Date: "..value:sub(1, 4).."-"..value:sub(5, 6).."-"..value:sub(7, 8)
end

-- Dissect: Settlement Date
gpw_wse_quotes_xdp_v6_8.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.settlement_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_quotes_xdp_v6_8.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Side
gpw_wse_quotes_xdp_v6_8.side = {}

-- Size: Side
gpw_wse_quotes_xdp_v6_8.side.size = 1

-- Display: Side
gpw_wse_quotes_xdp_v6_8.side.labels = {
  ["1"] = "Side: Buy (1)",
  ["2"] = "Side: Sell (2)",
  ["5"] = "Side: Sell Short Equivalent To Value 2 Sell Optional For Exchange Members And Not Monitored By The Wse (5)",
}

gpw_wse_quotes_xdp_v6_8.side.display = function(value)
  return gpw_wse_quotes_xdp_v6_8.side.labels[value] or "Side: Unknown("..value..")"
end

-- Dissect: Side
gpw_wse_quotes_xdp_v6_8.side.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_quotes_xdp_v6_8.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.side, range, value, display)

  return offset + length, value
end

-- Source Seq Num
gpw_wse_quotes_xdp_v6_8.source_seq_num = {}

-- Size: Source Seq Num
gpw_wse_quotes_xdp_v6_8.source_seq_num.size = 4

-- Display: Source Seq Num
gpw_wse_quotes_xdp_v6_8.source_seq_num.display = function(value)
  return "Source Seq Num: "..value
end

-- Dissect: Source Seq Num
gpw_wse_quotes_xdp_v6_8.source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.source_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.source_seq_num, range, value, display)

  return offset + length, value
end

-- Source Time
gpw_wse_quotes_xdp_v6_8.source_time = {}

-- Size: Source Time
gpw_wse_quotes_xdp_v6_8.source_time.size = 4

-- Display: Source Time
gpw_wse_quotes_xdp_v6_8.source_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if gpw_wse_quotes_xdp_v6_8.timestamp_format == 0 then
    return "Source Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if gpw_wse_quotes_xdp_v6_8.timestamp_format == 2 and packet then
    local midnight = venue_midnight(packet, -gpw_wse_quotes_xdp_v6_8.utc_offset_hours * 3600)

    if midnight then
      return "Source Time: "..os.date("!%Y-%m-%d %H:%M:%S.", midnight + seconds)..string.format("%03d", milliseconds)
    end
  end

  -- Time of day mode
  return "Source Time: "..os.date("!%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Source Time
gpw_wse_quotes_xdp_v6_8.source_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.source_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Micro Secs
gpw_wse_quotes_xdp_v6_8.source_time_micro_secs = {}

-- Size: Source Time Micro Secs
gpw_wse_quotes_xdp_v6_8.source_time_micro_secs.size = 2

-- Display: Source Time Micro Secs
gpw_wse_quotes_xdp_v6_8.source_time_micro_secs.display = function(value)
  return "Source Time Micro Secs: "..value
end

-- Dissect: Source Time Micro Secs
gpw_wse_quotes_xdp_v6_8.source_time_micro_secs.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.source_time_micro_secs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.source_time_micro_secs.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.source_time_micro_secs, range, value, display)

  return offset + length, value
end

-- Symbol Index
gpw_wse_quotes_xdp_v6_8.symbol_index = {}

-- Size: Symbol Index
gpw_wse_quotes_xdp_v6_8.symbol_index.size = 4

-- Display: Symbol Index
gpw_wse_quotes_xdp_v6_8.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
gpw_wse_quotes_xdp_v6_8.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.symbol_index.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- System Id
gpw_wse_quotes_xdp_v6_8.system_id = {}

-- Size: System Id
gpw_wse_quotes_xdp_v6_8.system_id.size = 4

-- Display: System Id
gpw_wse_quotes_xdp_v6_8.system_id.labels = {
  [1] = "System Id: All Non Utp Systems (1)",
  [11] = "System Id: Utp Trading Unit 1 (11)",
  [12] = "System Id: Utp Trading Unit 2 (12)",
}

gpw_wse_quotes_xdp_v6_8.system_id.display = function(value)
  return gpw_wse_quotes_xdp_v6_8.system_id.labels[value] or "System Id: Unknown("..value..")"
end

-- Dissect: System Id
gpw_wse_quotes_xdp_v6_8.system_id.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.system_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.system_id, range, value, display)

  return offset + length, value
end

-- Text
gpw_wse_quotes_xdp_v6_8.text = {}

-- Size: Text
gpw_wse_quotes_xdp_v6_8.text.size = 100

-- Display: Text
gpw_wse_quotes_xdp_v6_8.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
gpw_wse_quotes_xdp_v6_8.text.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = gpw_wse_quotes_xdp_v6_8.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.text, range, value, display)

  return offset + length, value
end

-- Trade Type
gpw_wse_quotes_xdp_v6_8.trade_type = {}

-- Size: Trade Type
gpw_wse_quotes_xdp_v6_8.trade_type.size = 1

-- Display: Trade Type
gpw_wse_quotes_xdp_v6_8.trade_type.labels = {
  ["O"] = "Trade Type: Block Trade (O)",
  ["S"] = "Trade Type: Biso Trade (S)",
}

gpw_wse_quotes_xdp_v6_8.trade_type.display = function(value)
  return gpw_wse_quotes_xdp_v6_8.trade_type.labels[value] or "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
gpw_wse_quotes_xdp_v6_8.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = gpw_wse_quotes_xdp_v6_8.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Type Of Ask Price
gpw_wse_quotes_xdp_v6_8.type_of_ask_price = {}

-- Size: Type Of Ask Price
gpw_wse_quotes_xdp_v6_8.type_of_ask_price.size = 1

-- Display: Type Of Ask Price
gpw_wse_quotes_xdp_v6_8.type_of_ask_price.labels = {
  [0] = "Type Of Ask Price: Limit Order And Peg Order (0)",
  [1] = "Type Of Ask Price: Market Order And Market To Limit Order (1)",
}

gpw_wse_quotes_xdp_v6_8.type_of_ask_price.display = function(value)
  return gpw_wse_quotes_xdp_v6_8.type_of_ask_price.labels[value] or "Type Of Ask Price: Unknown("..value..")"
end

-- Dissect: Type Of Ask Price
gpw_wse_quotes_xdp_v6_8.type_of_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.type_of_ask_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.type_of_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.type_of_ask_price, range, value, display)

  return offset + length, value
end

-- Type Of Bid Price
gpw_wse_quotes_xdp_v6_8.type_of_bid_price = {}

-- Size: Type Of Bid Price
gpw_wse_quotes_xdp_v6_8.type_of_bid_price.size = 1

-- Display: Type Of Bid Price
gpw_wse_quotes_xdp_v6_8.type_of_bid_price.labels = {
  [0] = "Type Of Bid Price: Limit Order And Peg Order (0)",
  [1] = "Type Of Bid Price: Market Order And Market To Limit Order (1)",
}

gpw_wse_quotes_xdp_v6_8.type_of_bid_price.display = function(value)
  return gpw_wse_quotes_xdp_v6_8.type_of_bid_price.labels[value] or "Type Of Bid Price: Unknown("..value..")"
end

-- Dissect: Type Of Bid Price
gpw_wse_quotes_xdp_v6_8.type_of_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.type_of_bid_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.type_of_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.type_of_bid_price, range, value, display)

  return offset + length, value
end

-- Validity Time
gpw_wse_quotes_xdp_v6_8.validity_time = {}

-- Size: Validity Time
gpw_wse_quotes_xdp_v6_8.validity_time.size = 4

-- Display: Validity Time
gpw_wse_quotes_xdp_v6_8.validity_time.display = function(value)
  local hour = math.floor(value / 10000)
  local minute = math.floor(value / 100) % 100
  local second = value % 100

  return string.format("Validity Time: %02d:%02d:%02d", hour, minute, second)
end

-- Dissect: Validity Time
gpw_wse_quotes_xdp_v6_8.validity_time.dissect = function(buffer, offset, packet, parent)
  local length = gpw_wse_quotes_xdp_v6_8.validity_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = gpw_wse_quotes_xdp_v6_8.validity_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.validity_time, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Gpw Wse Quotes Xdp 6.8
-----------------------------------------------------------------------

-- Indication Of Interest Message
gpw_wse_quotes_xdp_v6_8.indication_of_interest_message = {}

-- Size: Indication Of Interest Message
gpw_wse_quotes_xdp_v6_8.indication_of_interest_message.size =
  gpw_wse_quotes_xdp_v6_8.symbol_index.size + 
  gpw_wse_quotes_xdp_v6_8.source_seq_num.size + 
  gpw_wse_quotes_xdp_v6_8.source_time.size + 
  gpw_wse_quotes_xdp_v6_8.ioiutpid.size + 
  gpw_wse_quotes_xdp_v6_8.ioi_qty.size + 
  gpw_wse_quotes_xdp_v6_8.price.size + 
  gpw_wse_quotes_xdp_v6_8.validity_time.size + 
  gpw_wse_quotes_xdp_v6_8.system_id.size + 
  gpw_wse_quotes_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_quotes_xdp_v6_8.price_scale_code.size + 
  gpw_wse_quotes_xdp_v6_8.ioi_trans_type.size + 
  gpw_wse_quotes_xdp_v6_8.firm_id.size + 
  gpw_wse_quotes_xdp_v6_8.side.size + 
  gpw_wse_quotes_xdp_v6_8.settlement_date.size + 
  gpw_wse_quotes_xdp_v6_8.text.size + 
  gpw_wse_quotes_xdp_v6_8.trade_type.size + 
  gpw_wse_quotes_xdp_v6_8.reserved_3.size

-- Display: Indication Of Interest Message
gpw_wse_quotes_xdp_v6_8.indication_of_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Indication Of Interest Message
gpw_wse_quotes_xdp_v6_8.indication_of_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_quotes_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_quotes_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_quotes_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Ioiutpid: Binary Int.
  index, ioiutpid = gpw_wse_quotes_xdp_v6_8.ioiutpid.dissect(buffer, index, packet, parent)

  -- Ioi Qty: Binary Int.
  index, ioi_qty = gpw_wse_quotes_xdp_v6_8.ioi_qty.dissect(buffer, index, packet, parent)

  -- Price: Binary Int.
  index, price = gpw_wse_quotes_xdp_v6_8.price.dissect(buffer, index, packet, parent)

  -- Validity Time: Binary Int.
  index, validity_time = gpw_wse_quotes_xdp_v6_8.validity_time.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_quotes_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_quotes_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = gpw_wse_quotes_xdp_v6_8.price_scale_code.dissect(buffer, index, packet, parent)

  -- Ioi Trans Type: ASCII Ch.
  index, ioi_trans_type = gpw_wse_quotes_xdp_v6_8.ioi_trans_type.dissect(buffer, index, packet, parent)

  -- Firm Id: ASCII Ch.
  index, firm_id = gpw_wse_quotes_xdp_v6_8.firm_id.dissect(buffer, index, packet, parent)

  -- Side: ASCII Ch.
  index, side = gpw_wse_quotes_xdp_v6_8.side.dissect(buffer, index, packet, parent)

  -- Settlement Date: ASCII Ch.
  index, settlement_date = gpw_wse_quotes_xdp_v6_8.settlement_date.dissect(buffer, index, packet, parent)

  -- Text: ASCII Ch.
  index, text = gpw_wse_quotes_xdp_v6_8.text.dissect(buffer, index, packet, parent)

  -- Trade Type: ASCII Ch.
  index, trade_type = gpw_wse_quotes_xdp_v6_8.trade_type.dissect(buffer, index, packet, parent)

  -- Reserved 3: Binary Int.
  index, reserved_3 = gpw_wse_quotes_xdp_v6_8.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Indication Of Interest Message
gpw_wse_quotes_xdp_v6_8.indication_of_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.indication_of_interest_message, buffer(offset, 0))
    local index = gpw_wse_quotes_xdp_v6_8.indication_of_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_quotes_xdp_v6_8.indication_of_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_quotes_xdp_v6_8.indication_of_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Quotes And Bbo 5 Message
gpw_wse_quotes_xdp_v6_8.quotes_and_bbo_5_message = {}

-- Size: Quotes And Bbo 5 Message
gpw_wse_quotes_xdp_v6_8.quotes_and_bbo_5_message.size =
  gpw_wse_quotes_xdp_v6_8.symbol_index.size + 
  gpw_wse_quotes_xdp_v6_8.source_seq_num.size + 
  gpw_wse_quotes_xdp_v6_8.source_time.size + 
  gpw_wse_quotes_xdp_v6_8.quote_link_id.size + 
  gpw_wse_quotes_xdp_v6_8.ask_price.size + 
  gpw_wse_quotes_xdp_v6_8.ask_size.size + 
  gpw_wse_quotes_xdp_v6_8.bid_price.size + 
  gpw_wse_quotes_xdp_v6_8.bid_size.size + 
  gpw_wse_quotes_xdp_v6_8.system_id.size + 
  gpw_wse_quotes_xdp_v6_8.number_ask_orders.size + 
  gpw_wse_quotes_xdp_v6_8.number_bid_orders.size + 
  gpw_wse_quotes_xdp_v6_8.source_time_micro_secs.size + 
  gpw_wse_quotes_xdp_v6_8.type_of_ask_price.size + 
  gpw_wse_quotes_xdp_v6_8.type_of_bid_price.size + 
  gpw_wse_quotes_xdp_v6_8.quote_condition.size + 
  gpw_wse_quotes_xdp_v6_8.quote_number.size + 
  gpw_wse_quotes_xdp_v6_8.price_scale_code.size + 
  gpw_wse_quotes_xdp_v6_8.reserved_1.size

-- Display: Quotes And Bbo 5 Message
gpw_wse_quotes_xdp_v6_8.quotes_and_bbo_5_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes And Bbo 5 Message
gpw_wse_quotes_xdp_v6_8.quotes_and_bbo_5_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary Int.
  index, symbol_index = gpw_wse_quotes_xdp_v6_8.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Seq Num: Binary Int.
  index, source_seq_num = gpw_wse_quotes_xdp_v6_8.source_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary Int.
  index, source_time = gpw_wse_quotes_xdp_v6_8.source_time.dissect(buffer, index, packet, parent)

  -- Quote Link Id: Binary Int.
  index, quote_link_id = gpw_wse_quotes_xdp_v6_8.quote_link_id.dissect(buffer, index, packet, parent)

  -- Ask Price: Binary Int.
  index, ask_price = gpw_wse_quotes_xdp_v6_8.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: Binary Int.
  index, ask_size = gpw_wse_quotes_xdp_v6_8.ask_size.dissect(buffer, index, packet, parent)

  -- Bid Price: Binary Int.
  index, bid_price = gpw_wse_quotes_xdp_v6_8.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Binary Int.
  index, bid_size = gpw_wse_quotes_xdp_v6_8.bid_size.dissect(buffer, index, packet, parent)

  -- System Id: Binary Int.
  index, system_id = gpw_wse_quotes_xdp_v6_8.system_id.dissect(buffer, index, packet, parent)

  -- Number Ask Orders: Binary Int.
  index, number_ask_orders = gpw_wse_quotes_xdp_v6_8.number_ask_orders.dissect(buffer, index, packet, parent)

  -- Number Bid Orders: Binary Int.
  index, number_bid_orders = gpw_wse_quotes_xdp_v6_8.number_bid_orders.dissect(buffer, index, packet, parent)

  -- Source Time Micro Secs: Binary Int.
  index, source_time_micro_secs = gpw_wse_quotes_xdp_v6_8.source_time_micro_secs.dissect(buffer, index, packet, parent)

  -- Type Of Ask Price: Binary Int.
  index, type_of_ask_price = gpw_wse_quotes_xdp_v6_8.type_of_ask_price.dissect(buffer, index, packet, parent)

  -- Type Of Bid Price: Binary Int.
  index, type_of_bid_price = gpw_wse_quotes_xdp_v6_8.type_of_bid_price.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII Ch.
  index, quote_condition = gpw_wse_quotes_xdp_v6_8.quote_condition.dissect(buffer, index, packet, parent)

  -- Quote Number: Binary Int.
  index, quote_number = gpw_wse_quotes_xdp_v6_8.quote_number.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary Int.
  index, price_scale_code = gpw_wse_quotes_xdp_v6_8.price_scale_code.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary Int.
  index, reserved_1 = gpw_wse_quotes_xdp_v6_8.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes And Bbo 5 Message
gpw_wse_quotes_xdp_v6_8.quotes_and_bbo_5_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.quotes_and_bbo_5_message, buffer(offset, 0))
    local index = gpw_wse_quotes_xdp_v6_8.quotes_and_bbo_5_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_quotes_xdp_v6_8.quotes_and_bbo_5_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_quotes_xdp_v6_8.quotes_and_bbo_5_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
gpw_wse_quotes_xdp_v6_8.payload = {}

-- Dispatch: Payload
gpw_wse_quotes_xdp_v6_8.payload.dispatch = {
  [140] = gpw_wse_quotes_xdp_v6_8.quotes_and_bbo_5_message.dissect,
  [142] = gpw_wse_quotes_xdp_v6_8.indication_of_interest_message.dissect,
}

-- Dissect: Payload
gpw_wse_quotes_xdp_v6_8.payload.dissect = function(buffer, offset, packet, parent, message_type)
  local dissect = gpw_wse_quotes_xdp_v6_8.payload.dispatch[message_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
gpw_wse_quotes_xdp_v6_8.message_header = {}

-- Size: Message Header
gpw_wse_quotes_xdp_v6_8.message_header.size =
  gpw_wse_quotes_xdp_v6_8.message_size.size + 
  gpw_wse_quotes_xdp_v6_8.message_type.size

-- Display: Message Header
gpw_wse_quotes_xdp_v6_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
gpw_wse_quotes_xdp_v6_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: Binary Int.
  index, message_size = gpw_wse_quotes_xdp_v6_8.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: Binary Int.
  index, message_type = gpw_wse_quotes_xdp_v6_8.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
gpw_wse_quotes_xdp_v6_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.message_header, buffer(offset, 0))
    local index = gpw_wse_quotes_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_quotes_xdp_v6_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_quotes_xdp_v6_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
gpw_wse_quotes_xdp_v6_8.message = {}

-- Display: Message
gpw_wse_quotes_xdp_v6_8.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
gpw_wse_quotes_xdp_v6_8.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = gpw_wse_quotes_xdp_v6_8.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):uint()

  -- Payload: Runtime Type with 2 branches
  index = gpw_wse_quotes_xdp_v6_8.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
gpw_wse_quotes_xdp_v6_8.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.message, buffer(offset, 0))
    local current = gpw_wse_quotes_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = gpw_wse_quotes_xdp_v6_8.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    gpw_wse_quotes_xdp_v6_8.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
gpw_wse_quotes_xdp_v6_8.packet_header = {}

-- Size: Packet Header
gpw_wse_quotes_xdp_v6_8.packet_header.size =
  gpw_wse_quotes_xdp_v6_8.packet_length.size + 
  gpw_wse_quotes_xdp_v6_8.packet_type.size + 
  gpw_wse_quotes_xdp_v6_8.packet_sequence_number.size + 
  gpw_wse_quotes_xdp_v6_8.send_time.size + 
  gpw_wse_quotes_xdp_v6_8.service_id.size + 
  gpw_wse_quotes_xdp_v6_8.delivery_flag.size + 
  gpw_wse_quotes_xdp_v6_8.number_msg_entries.size

-- Display: Packet Header
gpw_wse_quotes_xdp_v6_8.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
gpw_wse_quotes_xdp_v6_8.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: Binary Int.
  index, packet_length = gpw_wse_quotes_xdp_v6_8.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: Binary Int.
  index, packet_type = gpw_wse_quotes_xdp_v6_8.packet_type.dissect(buffer, index, packet, parent)

  -- Packet Sequence Number: Binary Int.
  index, packet_sequence_number = gpw_wse_quotes_xdp_v6_8.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: Binary Int.
  index, send_time = gpw_wse_quotes_xdp_v6_8.send_time.dissect(buffer, index, packet, parent)

  -- Service Id: Binary Int.
  index, service_id = gpw_wse_quotes_xdp_v6_8.service_id.dissect(buffer, index, packet, parent)

  -- Delivery Flag: Binary Int.
  index, delivery_flag = gpw_wse_quotes_xdp_v6_8.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msg Entries: Binary Int.
  index, number_msg_entries = gpw_wse_quotes_xdp_v6_8.number_msg_entries.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
gpw_wse_quotes_xdp_v6_8.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_gpw_wse_quotes_xdp_v6_8.fields.packet_header, buffer(offset, 0))
    local index = gpw_wse_quotes_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = gpw_wse_quotes_xdp_v6_8.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return gpw_wse_quotes_xdp_v6_8.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
gpw_wse_quotes_xdp_v6_8.packet = {}

-- Verify required size of Udp packet
gpw_wse_quotes_xdp_v6_8.packet.requiredsize = function(buffer)
  return buffer:len() >= gpw_wse_quotes_xdp_v6_8.packet_header.size
end

-- Dissect Packet
gpw_wse_quotes_xdp_v6_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 7 fields
  index, packet_header = gpw_wse_quotes_xdp_v6_8.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Delivery Flag
  local delivery_flag = buffer(index - 2, 1):uint()

  local message_conversion = delivery_flag > 15

  if message_conversion then
    buffer = zlib_decompress(buffer(index, buffer:len() - index))
    index = 0
  end

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_size + 2

    -- Message: Struct of 2 fields
    index, message = gpw_wse_quotes_xdp_v6_8.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_gpw_wse_quotes_xdp_v6_8.init()
end

-- Dissector for Gpw Wse Quotes Xdp 6.8
function omi_gpw_wse_quotes_xdp_v6_8.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_gpw_wse_quotes_xdp_v6_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_gpw_wse_quotes_xdp_v6_8, buffer(), omi_gpw_wse_quotes_xdp_v6_8.description, "("..buffer:len().." Bytes)")
  return gpw_wse_quotes_xdp_v6_8.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
gpw_wse_quotes_xdp_v6_8.packet.fingerprint = function(buffer)
  if buffer:len() < 20 then
    return false
  end

  local message_type = buffer(18, 2):uint()

  -- Quotes And Bbo 5 Message
  if message_type == 140 then
    return true
  end

  -- Indication Of Interest Message
  if message_type == 142 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Gpw Wse Quotes Xdp 6.8 (Udp)
local function omi_gpw_wse_quotes_xdp_v6_8_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not gpw_wse_quotes_xdp_v6_8.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not gpw_wse_quotes_xdp_v6_8.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_gpw_wse_quotes_xdp_v6_8
  omi_gpw_wse_quotes_xdp_v6_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Gpw Wse Quotes Xdp 6.8
omi_gpw_wse_quotes_xdp_v6_8:register_heuristic("udp", omi_gpw_wse_quotes_xdp_v6_8_udp_heuristic)

-- Register Gpw Wse Quotes Xdp 6.8 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_gpw_wse_quotes_xdp_v6_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Giełda Papierów Wartościowych w Warszawie
--   Version: 6.8
--   Date: Tuesday, February 11, 2020
--   Specification: WSE_CDE_XDP_Message_Specifications_v_68.pdf
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
