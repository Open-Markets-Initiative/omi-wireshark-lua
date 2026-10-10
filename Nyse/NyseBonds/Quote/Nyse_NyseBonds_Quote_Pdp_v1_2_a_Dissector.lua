-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NyseBonds Quote Pdp 1.2.a Protocol
local omi_nyse_nysebonds_quote_pdp_v1_2_a = Proto("Omi.Nyse.NyseBonds.Quote.Pdp.v1.2.a", "Nyse NyseBonds Quote Pdp 1.2.a")

-- Protocol table
local nyse_nysebonds_quote_pdp_v1_2_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NyseBonds Quote Pdp 1.2.a Fields
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.ask_price_numerator = ProtoField.new("Ask Price Numerator", "nyse.nysebonds.quote.pdp.v1.2.a.askpricenumerator", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.ask_size = ProtoField.new("Ask Size", "nyse.nysebonds.quote.pdp.v1.2.a.asksize", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.nysebonds.quote.pdp.v1.2.a.beginseqnum", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.bid_price_numerator = ProtoField.new("Bid Price Numerator", "nyse.nysebonds.quote.pdp.v1.2.a.bidpricenumerator", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.bid_size = ProtoField.new("Bid Size", "nyse.nysebonds.quote.pdp.v1.2.a.bidsize", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.cusip = ProtoField.new("Cusip", "nyse.nysebonds.quote.pdp.v1.2.a.cusip", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.nysebonds.quote.pdp.v1.2.a.endseqnum", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.exchange_id = ProtoField.new("Exchange Id", "nyse.nysebonds.quote.pdp.v1.2.a.exchangeid", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.filler = ProtoField.new("Filler", "nyse.nysebonds.quote.pdp.v1.2.a.filler", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.filler_ascii_2 = ProtoField.new("Filler Ascii 2", "nyse.nysebonds.quote.pdp.v1.2.a.fillerascii2", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.filler_ascii_4 = ProtoField.new("Filler Ascii 4", "nyse.nysebonds.quote.pdp.v1.2.a.fillerascii4", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.flat_pricing = ProtoField.new("Flat Pricing", "nyse.nysebonds.quote.pdp.v1.2.a.flatpricing", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "nyse.nysebonds.quote.pdp.v1.2.a.msgseqnum", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.msg_size = ProtoField.new("Msg Size", "nyse.nysebonds.quote.pdp.v1.2.a.msgsize", ftypes.UINT16)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.msg_type = ProtoField.new("Msg Type", "nyse.nysebonds.quote.pdp.v1.2.a.msgtype", ftypes.UINT16)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.next_seq_number = ProtoField.new("Next Seq Number", "nyse.nysebonds.quote.pdp.v1.2.a.nextseqnumber", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.num_body_entries = ProtoField.new("Num Body Entries", "nyse.nysebonds.quote.pdp.v1.2.a.numbodyentries", ftypes.UINT8)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.nysebonds.quote.pdp.v1.2.a.pricescalecode", ftypes.UINT8)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.product_id = ProtoField.new("Product Id", "nyse.nysebonds.quote.pdp.v1.2.a.productid", ftypes.UINT8)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.nysebonds.quote.pdp.v1.2.a.quotecondition", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.quote_link_id = ProtoField.new("Quote Link Id", "nyse.nysebonds.quote.pdp.v1.2.a.quotelinkid", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.retrans_flag = ProtoField.new("Retrans Flag", "nyse.nysebonds.quote.pdp.v1.2.a.retransflag", ftypes.UINT8)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.security_type = ProtoField.new("Security Type", "nyse.nysebonds.quote.pdp.v1.2.a.securitytype", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.send_time = ProtoField.new("Send Time", "nyse.nysebonds.quote.pdp.v1.2.a.sendtime", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.source_time = ProtoField.new("Source Time", "nyse.nysebonds.quote.pdp.v1.2.a.sourcetime", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.symbol = ProtoField.new("Symbol", "nyse.nysebonds.quote.pdp.v1.2.a.symbol", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.nysebonds.quote.pdp.v1.2.a.symbolindex", ftypes.UINT32)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.trading_action = ProtoField.new("Trading Action", "nyse.nysebonds.quote.pdp.v1.2.a.tradingaction", ftypes.UINT8)

-- Nyse NyseBonds Quote Pdp 1.2.a Framing
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.message = ProtoField.new("Message", "nyse.nysebonds.quote.pdp.v1.2.a.message", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.message_header = ProtoField.new("Message Header", "nyse.nysebonds.quote.pdp.v1.2.a.messageheader", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.packet = ProtoField.new("Packet", "nyse.nysebonds.quote.pdp.v1.2.a.packet", ftypes.STRING)

-- Nyse NyseBonds Quote 1.2.a Application Messages
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nyse.nysebonds.quote.pdp.v1.2.a.heartbeatmessage", ftypes.BYTES)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.nysebonds.quote.pdp.v1.2.a.messageunavailablemessage", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.quote_message = ProtoField.new("Quote Message", "nyse.nysebonds.quote.pdp.v1.2.a.quotemessage", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.refresh_quote_message = ProtoField.new("Refresh Quote Message", "nyse.nysebonds.quote.pdp.v1.2.a.refreshquotemessage", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.nysebonds.quote.pdp.v1.2.a.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.nysebonds.quote.pdp.v1.2.a.symbolindexmappingmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse NyseBonds Quote Pdp 1.2.a Element Dissection Options
show.structs = true
show.headers = true
show.application_messages = true

-- Register Nyse NyseBonds Quote Pdp 1.2.a Show Options
omi_nyse_nysebonds_quote_pdp_v1_2_a.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_nysebonds_quote_pdp_v1_2_a.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_nyse_nysebonds_quote_pdp_v1_2_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")

-- Handle changed preferences
function omi_nyse_nysebonds_quote_pdp_v1_2_a.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nyse_nysebonds_quote_pdp_v1_2_a.prefs.show_application_messages then
    show.application_messages = omi_nyse_nysebonds_quote_pdp_v1_2_a.prefs.show_application_messages
  end
  if show.headers ~= omi_nyse_nysebonds_quote_pdp_v1_2_a.prefs.show_headers then
    show.headers = omi_nyse_nysebonds_quote_pdp_v1_2_a.prefs.show_headers
  end
  if show.structs ~= omi_nyse_nysebonds_quote_pdp_v1_2_a.prefs.show_structs then
    show.structs = omi_nyse_nysebonds_quote_pdp_v1_2_a.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Nyse NyseBonds Quote Pdp 1.2.a Fields
-----------------------------------------------------------------------

-- Ask Price Numerator
nyse_nysebonds_quote_pdp_v1_2_a.ask_price_numerator = {}

-- Size: Ask Price Numerator
nyse_nysebonds_quote_pdp_v1_2_a.ask_price_numerator.size = 4

-- Display: Ask Price Numerator
nyse_nysebonds_quote_pdp_v1_2_a.ask_price_numerator.display = function(value)
  return "Ask Price Numerator: "..value
end

-- Dissect: Ask Price Numerator
nyse_nysebonds_quote_pdp_v1_2_a.ask_price_numerator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.ask_price_numerator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.ask_price_numerator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.ask_price_numerator, range, value, display)

  return offset + length, value
end

-- Ask Size
nyse_nysebonds_quote_pdp_v1_2_a.ask_size = {}

-- Size: Ask Size
nyse_nysebonds_quote_pdp_v1_2_a.ask_size.size = 4

-- Display: Ask Size
nyse_nysebonds_quote_pdp_v1_2_a.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nyse_nysebonds_quote_pdp_v1_2_a.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.ask_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Bid Price Numerator
nyse_nysebonds_quote_pdp_v1_2_a.bid_price_numerator = {}

-- Size: Bid Price Numerator
nyse_nysebonds_quote_pdp_v1_2_a.bid_price_numerator.size = 4

-- Display: Bid Price Numerator
nyse_nysebonds_quote_pdp_v1_2_a.bid_price_numerator.display = function(value)
  return "Bid Price Numerator: "..value
end

-- Dissect: Bid Price Numerator
nyse_nysebonds_quote_pdp_v1_2_a.bid_price_numerator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.bid_price_numerator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.bid_price_numerator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.bid_price_numerator, range, value, display)

  return offset + length, value
end

-- Bid Size
nyse_nysebonds_quote_pdp_v1_2_a.bid_size = {}

-- Size: Bid Size
nyse_nysebonds_quote_pdp_v1_2_a.bid_size.size = 4

-- Display: Bid Size
nyse_nysebonds_quote_pdp_v1_2_a.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nyse_nysebonds_quote_pdp_v1_2_a.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Cusip
nyse_nysebonds_quote_pdp_v1_2_a.cusip = {}

-- Size: Cusip
nyse_nysebonds_quote_pdp_v1_2_a.cusip.size = 14

-- Display: Cusip
nyse_nysebonds_quote_pdp_v1_2_a.cusip.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cusip: No Value"
  end

  return "Cusip: "..value
end

-- Dissect: Cusip
nyse_nysebonds_quote_pdp_v1_2_a.cusip.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.cusip.size
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

  local display = nyse_nysebonds_quote_pdp_v1_2_a.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.cusip, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.end_seq_num = {}

-- Size: End Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.end_seq_num.size = 4

-- Display: End Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Id
nyse_nysebonds_quote_pdp_v1_2_a.exchange_id = {}

-- Size: Exchange Id
nyse_nysebonds_quote_pdp_v1_2_a.exchange_id.size = 1

-- Display: Exchange Id
nyse_nysebonds_quote_pdp_v1_2_a.exchange_id.display = function(value)
  if value == "N" then
    return "Exchange Id: Nyse (N)"
  end
  if value == "P" then
    return "Exchange Id: Nyse Arca (P)"
  end

  return "Exchange Id: Unknown("..value..")"
end

-- Dissect: Exchange Id
nyse_nysebonds_quote_pdp_v1_2_a.exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Filler
nyse_nysebonds_quote_pdp_v1_2_a.filler = {}

-- Size: Filler
nyse_nysebonds_quote_pdp_v1_2_a.filler.size = 1

-- Display: Filler
nyse_nysebonds_quote_pdp_v1_2_a.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nyse_nysebonds_quote_pdp_v1_2_a.filler.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler Ascii 2
nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_2 = {}

-- Size: Filler Ascii 2
nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_2.size = 2

-- Display: Filler Ascii 2
nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Filler Ascii 2: No Value"
  end

  return "Filler Ascii 2: "..value
end

-- Dissect: Filler Ascii 2
nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_2.size
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

  local display = nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.filler_ascii_2, range, value, display)

  return offset + length, value
end

-- Filler Ascii 4
nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_4 = {}

-- Size: Filler Ascii 4
nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_4.size = 4

-- Display: Filler Ascii 4
nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_4.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Filler Ascii 4: No Value"
  end

  return "Filler Ascii 4: "..value
end

-- Dissect: Filler Ascii 4
nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_4.size
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

  local display = nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.filler_ascii_4, range, value, display)

  return offset + length, value
end

-- Flat Pricing
nyse_nysebonds_quote_pdp_v1_2_a.flat_pricing = {}

-- Size: Flat Pricing
nyse_nysebonds_quote_pdp_v1_2_a.flat_pricing.size = 1

-- Display: Flat Pricing
nyse_nysebonds_quote_pdp_v1_2_a.flat_pricing.display = function(value)
  if value == "F" then
    return "Flat Pricing: Flat Pricing Is In Effect (F)"
  end

  return "Flat Pricing: Unknown("..value..")"
end

-- Dissect: Flat Pricing
nyse_nysebonds_quote_pdp_v1_2_a.flat_pricing.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.flat_pricing.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.flat_pricing.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.flat_pricing, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.msg_seq_num = {}

-- Size: Msg Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.msg_seq_num.size = 4

-- Display: Msg Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
nyse_nysebonds_quote_pdp_v1_2_a.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Msg Size
nyse_nysebonds_quote_pdp_v1_2_a.msg_size = {}

-- Size: Msg Size
nyse_nysebonds_quote_pdp_v1_2_a.msg_size.size = 2

-- Display: Msg Size
nyse_nysebonds_quote_pdp_v1_2_a.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
nyse_nysebonds_quote_pdp_v1_2_a.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.msg_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
nyse_nysebonds_quote_pdp_v1_2_a.msg_type = {}

-- Size: Msg Type
nyse_nysebonds_quote_pdp_v1_2_a.msg_type.size = 2

-- Display: Msg Type
nyse_nysebonds_quote_pdp_v1_2_a.msg_type.display = function(value)
  if value == 1 then
    return "Msg Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Msg Type: Heartbeat Message (2)"
  end
  if value == 5 then
    return "Msg Type: Message Unavailable Message (5)"
  end
  if value == 23 then
    return "Msg Type: Refresh Quote Message (23)"
  end
  if value == 26 then
    return "Msg Type: Symbol Index Mapping Message (26)"
  end
  if value == 141 then
    return "Msg Type: Quote Message (141)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
nyse_nysebonds_quote_pdp_v1_2_a.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Next Seq Number
nyse_nysebonds_quote_pdp_v1_2_a.next_seq_number = {}

-- Size: Next Seq Number
nyse_nysebonds_quote_pdp_v1_2_a.next_seq_number.size = 4

-- Display: Next Seq Number
nyse_nysebonds_quote_pdp_v1_2_a.next_seq_number.display = function(value)
  return "Next Seq Number: "..value
end

-- Dissect: Next Seq Number
nyse_nysebonds_quote_pdp_v1_2_a.next_seq_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.next_seq_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.next_seq_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.next_seq_number, range, value, display)

  return offset + length, value
end

-- Num Body Entries
nyse_nysebonds_quote_pdp_v1_2_a.num_body_entries = {}

-- Size: Num Body Entries
nyse_nysebonds_quote_pdp_v1_2_a.num_body_entries.size = 1

-- Display: Num Body Entries
nyse_nysebonds_quote_pdp_v1_2_a.num_body_entries.display = function(value)
  return "Num Body Entries: "..value
end

-- Dissect: Num Body Entries
nyse_nysebonds_quote_pdp_v1_2_a.num_body_entries.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.num_body_entries.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.num_body_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.num_body_entries, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_nysebonds_quote_pdp_v1_2_a.price_scale_code = {}

-- Size: Price Scale Code
nyse_nysebonds_quote_pdp_v1_2_a.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_nysebonds_quote_pdp_v1_2_a.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_nysebonds_quote_pdp_v1_2_a.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_nysebonds_quote_pdp_v1_2_a.product_id = {}

-- Size: Product Id
nyse_nysebonds_quote_pdp_v1_2_a.product_id.size = 1

-- Display: Product Id
nyse_nysebonds_quote_pdp_v1_2_a.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_nysebonds_quote_pdp_v1_2_a.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.product_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_nysebonds_quote_pdp_v1_2_a.quote_condition = {}

-- Size: Quote Condition
nyse_nysebonds_quote_pdp_v1_2_a.quote_condition.size = 1

-- Display: Quote Condition
nyse_nysebonds_quote_pdp_v1_2_a.quote_condition.display = function(value)
  if value == "A" then
    return "Quote Condition: Slow On Ask Side (A)"
  end
  if value == "B" then
    return "Quote Condition: Slow On Bid Side (B)"
  end
  if value == "C" then
    return "Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "Quote Condition: Slow On The Bid Due To An Lrp Or Gap Quote (E)"
  end
  if value == "F" then
    return "Quote Condition: Slow On The Ask Due To An Lrp Or Gap Quote (F)"
  end
  if value == "H" then
    return "Quote Condition: Slow On Both Ask And Bid (H)"
  end
  if value == "N" then
    return "Quote Condition: Nonfirm Quote (N)"
  end
  if value == "O" then
    return "Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Quote (R)"
  end
  if value == "U" then
    return "Quote Condition: Slow On The Bid And Ask Due To An Lrp Or Gap Quote (U)"
  end
  if value == "W" then
    return "Quote Condition: Slow On The Bid And Ask Due To A Set Slow List (W)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_nysebonds_quote_pdp_v1_2_a.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Quote Link Id
nyse_nysebonds_quote_pdp_v1_2_a.quote_link_id = {}

-- Size: Quote Link Id
nyse_nysebonds_quote_pdp_v1_2_a.quote_link_id.size = 4

-- Display: Quote Link Id
nyse_nysebonds_quote_pdp_v1_2_a.quote_link_id.display = function(value)
  return "Quote Link Id: "..value
end

-- Dissect: Quote Link Id
nyse_nysebonds_quote_pdp_v1_2_a.quote_link_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.quote_link_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.quote_link_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.quote_link_id, range, value, display)

  return offset + length, value
end

-- Retrans Flag
nyse_nysebonds_quote_pdp_v1_2_a.retrans_flag = {}

-- Size: Retrans Flag
nyse_nysebonds_quote_pdp_v1_2_a.retrans_flag.size = 1

-- Display: Retrans Flag
nyse_nysebonds_quote_pdp_v1_2_a.retrans_flag.display = function(value)
  return "Retrans Flag: "..value
end

-- Dissect: Retrans Flag
nyse_nysebonds_quote_pdp_v1_2_a.retrans_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.retrans_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.retrans_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.retrans_flag, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_nysebonds_quote_pdp_v1_2_a.security_type = {}

-- Size: Security Type
nyse_nysebonds_quote_pdp_v1_2_a.security_type.size = 1

-- Display: Security Type
nyse_nysebonds_quote_pdp_v1_2_a.security_type.display = function(value)
  if value == "F" then
    return "Security Type: Fixed Income Bonds (F)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_nysebonds_quote_pdp_v1_2_a.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.security_type, range, value, display)

  return offset + length, value
end

-- Send Time
nyse_nysebonds_quote_pdp_v1_2_a.send_time = {}

-- Size: Send Time
nyse_nysebonds_quote_pdp_v1_2_a.send_time.size = 4

-- Display: Send Time
nyse_nysebonds_quote_pdp_v1_2_a.send_time.display = function(value, buffer, offset, packet, parent)
  -- Raw display mode
  if nyse_nysebonds_quote_pdp_v1_2_a.timestamp_format == 0 then
    return "Send Time: "..value
  end

  -- Parse milliseconds since midnight
  local seconds = math.floor(value / 1000)
  local milliseconds = value % 1000

  -- Full datetime mode (calculate from capture date + UTC offset)
  if nyse_nysebonds_quote_pdp_v1_2_a.timestamp_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = nyse_nysebonds_quote_pdp_v1_2_a.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400 + utc_offset_seconds
    local full_seconds = local_midnight + seconds

    return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%03d", milliseconds)
  end

  -- Time of day mode
  return "Send Time: "..os.date("%H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Send Time
nyse_nysebonds_quote_pdp_v1_2_a.send_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.send_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.send_time, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_nysebonds_quote_pdp_v1_2_a.source_time = {}

-- Size: Source Time
nyse_nysebonds_quote_pdp_v1_2_a.source_time.size = 4

-- Display: Source Time
nyse_nysebonds_quote_pdp_v1_2_a.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_nysebonds_quote_pdp_v1_2_a.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_nysebonds_quote_pdp_v1_2_a.symbol = {}

-- Size: Symbol
nyse_nysebonds_quote_pdp_v1_2_a.symbol.size = 22

-- Display: Symbol
nyse_nysebonds_quote_pdp_v1_2_a.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_nysebonds_quote_pdp_v1_2_a.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.symbol.size
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

  local display = nyse_nysebonds_quote_pdp_v1_2_a.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_nysebonds_quote_pdp_v1_2_a.symbol_index = {}

-- Size: Symbol Index
nyse_nysebonds_quote_pdp_v1_2_a.symbol_index.size = 4

-- Display: Symbol Index
nyse_nysebonds_quote_pdp_v1_2_a.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_nysebonds_quote_pdp_v1_2_a.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Trading Action
nyse_nysebonds_quote_pdp_v1_2_a.trading_action = {}

-- Size: Trading Action
nyse_nysebonds_quote_pdp_v1_2_a.trading_action.size = 1

-- Display: Trading Action
nyse_nysebonds_quote_pdp_v1_2_a.trading_action.display = function(value)
  if value == 1 then
    return "Trading Action: Called (1)"
  end
  if value == 2 then
    return "Trading Action: Delisted (2)"
  end
  if value == 3 then
    return "Trading Action: Exinterest (3)"
  end
  if value == 4 then
    return "Trading Action: Missed An Interest Payment (4)"
  end
  if value == 5 then
    return "Trading Action: Bankrupt (5)"
  end
  if value == 6 then
    return "Trading Action: Late Filing (6)"
  end
  if value == 7 then
    return "Trading Action: Below Listing Standards (7)"
  end
  if value == 8 then
    return "Trading Action: Late Filing And Below Listing Standards (8)"
  end
  if value == 9 then
    return "Trading Action: Bankrupt And Late Filing (9)"
  end
  if value == 10 then
    return "Trading Action: Bankrupt And Below Listing Standards (10)"
  end
  if value == 11 then
    return "Trading Action: Bankrupt Below Listing Standards And Late Filing (11)"
  end

  return "Trading Action: Unknown("..value..")"
end

-- Dissect: Trading Action
nyse_nysebonds_quote_pdp_v1_2_a.trading_action.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nysebonds_quote_pdp_v1_2_a.trading_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nysebonds_quote_pdp_v1_2_a.trading_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.trading_action, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse NyseBonds Quote Pdp 1.2.a
-----------------------------------------------------------------------

-- Quote Message
nyse_nysebonds_quote_pdp_v1_2_a.quote_message = {}

-- Size: Quote Message
nyse_nysebonds_quote_pdp_v1_2_a.quote_message.size =
  nyse_nysebonds_quote_pdp_v1_2_a.symbol_index.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.source_time.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.quote_link_id.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.ask_price_numerator.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.ask_size.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.bid_price_numerator.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.bid_size.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.price_scale_code.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.exchange_id.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.security_type.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.quote_condition.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.flat_pricing.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.trading_action.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_2.size

-- Display: Quote Message
nyse_nysebonds_quote_pdp_v1_2_a.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
nyse_nysebonds_quote_pdp_v1_2_a.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nysebonds_quote_pdp_v1_2_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_nysebonds_quote_pdp_v1_2_a.source_time.dissect(buffer, index, packet, parent)

  -- Quote Link Id: Binary
  index, quote_link_id = nyse_nysebonds_quote_pdp_v1_2_a.quote_link_id.dissect(buffer, index, packet, parent)

  -- Ask Price Numerator: Binary
  index, ask_price_numerator = nyse_nysebonds_quote_pdp_v1_2_a.ask_price_numerator.dissect(buffer, index, packet, parent)

  -- Ask Size: Binary
  index, ask_size = nyse_nysebonds_quote_pdp_v1_2_a.ask_size.dissect(buffer, index, packet, parent)

  -- Bid Price Numerator: Binary
  index, bid_price_numerator = nyse_nysebonds_quote_pdp_v1_2_a.bid_price_numerator.dissect(buffer, index, packet, parent)

  -- Bid Size: Binary
  index, bid_size = nyse_nysebonds_quote_pdp_v1_2_a.bid_size.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_nysebonds_quote_pdp_v1_2_a.price_scale_code.dissect(buffer, index, packet, parent)

  -- Exchange Id: ASCII
  index, exchange_id = nyse_nysebonds_quote_pdp_v1_2_a.exchange_id.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_nysebonds_quote_pdp_v1_2_a.security_type.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_nysebonds_quote_pdp_v1_2_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Flat Pricing: ASCII
  index, flat_pricing = nyse_nysebonds_quote_pdp_v1_2_a.flat_pricing.dissect(buffer, index, packet, parent)

  -- Trading Action: Binary
  index, trading_action = nyse_nysebonds_quote_pdp_v1_2_a.trading_action.dissect(buffer, index, packet, parent)

  -- Filler Ascii 2: ASCII
  index, filler_ascii_2 = nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
nyse_nysebonds_quote_pdp_v1_2_a.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.quote_message, buffer(offset, 0))
    local index = nyse_nysebonds_quote_pdp_v1_2_a.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_quote_pdp_v1_2_a.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_quote_pdp_v1_2_a.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_nysebonds_quote_pdp_v1_2_a.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_nysebonds_quote_pdp_v1_2_a.symbol_index_mapping_message.size =
  nyse_nysebonds_quote_pdp_v1_2_a.symbol_index.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.symbol.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.cusip.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_4.size

-- Display: Symbol Index Mapping Message
nyse_nysebonds_quote_pdp_v1_2_a.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_nysebonds_quote_pdp_v1_2_a.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nysebonds_quote_pdp_v1_2_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_nysebonds_quote_pdp_v1_2_a.symbol.dissect(buffer, index, packet, parent)

  -- Cusip: ASCII
  index, cusip = nyse_nysebonds_quote_pdp_v1_2_a.cusip.dissect(buffer, index, packet, parent)

  -- Filler Ascii 4: ASCII
  index, filler_ascii_4 = nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_nysebonds_quote_pdp_v1_2_a.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_nysebonds_quote_pdp_v1_2_a.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_quote_pdp_v1_2_a.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_quote_pdp_v1_2_a.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Quote Message
nyse_nysebonds_quote_pdp_v1_2_a.refresh_quote_message = {}

-- Size: Refresh Quote Message
nyse_nysebonds_quote_pdp_v1_2_a.refresh_quote_message.size =
  nyse_nysebonds_quote_pdp_v1_2_a.symbol_index.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.source_time.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.quote_link_id.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.ask_price_numerator.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.ask_size.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.bid_price_numerator.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.bid_size.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.price_scale_code.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.exchange_id.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.security_type.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.quote_condition.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.flat_pricing.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.trading_action.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_2.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.symbol.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.cusip.size

-- Display: Refresh Quote Message
nyse_nysebonds_quote_pdp_v1_2_a.refresh_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Quote Message
nyse_nysebonds_quote_pdp_v1_2_a.refresh_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nysebonds_quote_pdp_v1_2_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_nysebonds_quote_pdp_v1_2_a.source_time.dissect(buffer, index, packet, parent)

  -- Quote Link Id: Binary
  index, quote_link_id = nyse_nysebonds_quote_pdp_v1_2_a.quote_link_id.dissect(buffer, index, packet, parent)

  -- Ask Price Numerator: Binary
  index, ask_price_numerator = nyse_nysebonds_quote_pdp_v1_2_a.ask_price_numerator.dissect(buffer, index, packet, parent)

  -- Ask Size: Binary
  index, ask_size = nyse_nysebonds_quote_pdp_v1_2_a.ask_size.dissect(buffer, index, packet, parent)

  -- Bid Price Numerator: Binary
  index, bid_price_numerator = nyse_nysebonds_quote_pdp_v1_2_a.bid_price_numerator.dissect(buffer, index, packet, parent)

  -- Bid Size: Binary
  index, bid_size = nyse_nysebonds_quote_pdp_v1_2_a.bid_size.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_nysebonds_quote_pdp_v1_2_a.price_scale_code.dissect(buffer, index, packet, parent)

  -- Exchange Id: ASCII
  index, exchange_id = nyse_nysebonds_quote_pdp_v1_2_a.exchange_id.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_nysebonds_quote_pdp_v1_2_a.security_type.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_nysebonds_quote_pdp_v1_2_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Flat Pricing: ASCII
  index, flat_pricing = nyse_nysebonds_quote_pdp_v1_2_a.flat_pricing.dissect(buffer, index, packet, parent)

  -- Trading Action: Binary
  index, trading_action = nyse_nysebonds_quote_pdp_v1_2_a.trading_action.dissect(buffer, index, packet, parent)

  -- Filler Ascii 2: ASCII
  index, filler_ascii_2 = nyse_nysebonds_quote_pdp_v1_2_a.filler_ascii_2.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_nysebonds_quote_pdp_v1_2_a.symbol.dissect(buffer, index, packet, parent)

  -- Cusip: ASCII
  index, cusip = nyse_nysebonds_quote_pdp_v1_2_a.cusip.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Quote Message
nyse_nysebonds_quote_pdp_v1_2_a.refresh_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.refresh_quote_message, buffer(offset, 0))
    local index = nyse_nysebonds_quote_pdp_v1_2_a.refresh_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_quote_pdp_v1_2_a.refresh_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_quote_pdp_v1_2_a.refresh_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_nysebonds_quote_pdp_v1_2_a.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_nysebonds_quote_pdp_v1_2_a.message_unavailable_message.size =
  nyse_nysebonds_quote_pdp_v1_2_a.begin_seq_num.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.end_seq_num.size

-- Display: Message Unavailable Message
nyse_nysebonds_quote_pdp_v1_2_a.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_nysebonds_quote_pdp_v1_2_a.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nysebonds_quote_pdp_v1_2_a.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nysebonds_quote_pdp_v1_2_a.end_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_nysebonds_quote_pdp_v1_2_a.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_nysebonds_quote_pdp_v1_2_a.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_quote_pdp_v1_2_a.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_quote_pdp_v1_2_a.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
nyse_nysebonds_quote_pdp_v1_2_a.heartbeat_message = {}

-- Display: Heartbeat Message
nyse_nysebonds_quote_pdp_v1_2_a.heartbeat_message.display = function(packet, parent, length)
  return "Heartbeat Message"
end


-- Dissect: Heartbeat Message
nyse_nysebonds_quote_pdp_v1_2_a.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  local display = nyse_nysebonds_quote_pdp_v1_2_a.heartbeat_message.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Sequence Number Reset Message
nyse_nysebonds_quote_pdp_v1_2_a.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_nysebonds_quote_pdp_v1_2_a.sequence_number_reset_message.size =
  nyse_nysebonds_quote_pdp_v1_2_a.next_seq_number.size

-- Display: Sequence Number Reset Message
nyse_nysebonds_quote_pdp_v1_2_a.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_nysebonds_quote_pdp_v1_2_a.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Next Seq Number: Binary
  index, next_seq_number = nyse_nysebonds_quote_pdp_v1_2_a.next_seq_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_nysebonds_quote_pdp_v1_2_a.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_nysebonds_quote_pdp_v1_2_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_quote_pdp_v1_2_a.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_quote_pdp_v1_2_a.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_nysebonds_quote_pdp_v1_2_a.payload = {}

-- Dissect: Payload
nyse_nysebonds_quote_pdp_v1_2_a.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Sequence Number Reset Message
  if msg_type == 1 then
    return nyse_nysebonds_quote_pdp_v1_2_a.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if msg_type == 2 then
    return nyse_nysebonds_quote_pdp_v1_2_a.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if msg_type == 5 then
    return nyse_nysebonds_quote_pdp_v1_2_a.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Quote Message
  if msg_type == 23 then
    return nyse_nysebonds_quote_pdp_v1_2_a.refresh_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if msg_type == 26 then
    return nyse_nysebonds_quote_pdp_v1_2_a.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if msg_type == 141 then
    return nyse_nysebonds_quote_pdp_v1_2_a.quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_nysebonds_quote_pdp_v1_2_a.message_header = {}

-- Size: Message Header
nyse_nysebonds_quote_pdp_v1_2_a.message_header.size =
  nyse_nysebonds_quote_pdp_v1_2_a.msg_size.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.msg_type.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.msg_seq_num.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.send_time.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.product_id.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.retrans_flag.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.num_body_entries.size + 
  nyse_nysebonds_quote_pdp_v1_2_a.filler.size

-- Display: Message Header
nyse_nysebonds_quote_pdp_v1_2_a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_nysebonds_quote_pdp_v1_2_a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = nyse_nysebonds_quote_pdp_v1_2_a.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, msg_type = nyse_nysebonds_quote_pdp_v1_2_a.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = nyse_nysebonds_quote_pdp_v1_2_a.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 4 Byte Unsigned Fixed Width Integer
  index, send_time = nyse_nysebonds_quote_pdp_v1_2_a.send_time.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_nysebonds_quote_pdp_v1_2_a.product_id.dissect(buffer, index, packet, parent)

  -- Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index, retrans_flag = nyse_nysebonds_quote_pdp_v1_2_a.retrans_flag.dissect(buffer, index, packet, parent)

  -- Num Body Entries: 1 Byte Unsigned Fixed Width Integer
  index, num_body_entries = nyse_nysebonds_quote_pdp_v1_2_a.num_body_entries.dissect(buffer, index, packet, parent)

  -- Filler: 1 Byte Ascii String
  index, filler = nyse_nysebonds_quote_pdp_v1_2_a.filler.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_nysebonds_quote_pdp_v1_2_a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.message_header, buffer(offset, 0))
    local index = nyse_nysebonds_quote_pdp_v1_2_a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nysebonds_quote_pdp_v1_2_a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nysebonds_quote_pdp_v1_2_a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_nysebonds_quote_pdp_v1_2_a.message = {}

-- Display: Message
nyse_nysebonds_quote_pdp_v1_2_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_nysebonds_quote_pdp_v1_2_a.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 8 fields
  index, message_header = nyse_nysebonds_quote_pdp_v1_2_a.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 14, 2):uint()

  -- Payload: Runtime Type with 6 branches
  index = nyse_nysebonds_quote_pdp_v1_2_a.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
nyse_nysebonds_quote_pdp_v1_2_a.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a.fields.message, buffer(offset, 0))
    local current = nyse_nysebonds_quote_pdp_v1_2_a.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = nyse_nysebonds_quote_pdp_v1_2_a.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nysebonds_quote_pdp_v1_2_a.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Packet
nyse_nysebonds_quote_pdp_v1_2_a.packet = {}

-- Verify required size of Udp packet
nyse_nysebonds_quote_pdp_v1_2_a.packet.requiredsize = function(buffer)
  return buffer:len() >= nyse_nysebonds_quote_pdp_v1_2_a.message_header.size
end

-- Dissect Packet
nyse_nysebonds_quote_pdp_v1_2_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = msg_size + 2

    -- Message: Struct of 2 fields
    index, message = nyse_nysebonds_quote_pdp_v1_2_a.message.dissect(buffer, index, packet, parent, size_of_message)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_nysebonds_quote_pdp_v1_2_a.init()
end

-- Dissector for Nyse NyseBonds Quote Pdp 1.2.a
function omi_nyse_nysebonds_quote_pdp_v1_2_a.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_nyse_nysebonds_quote_pdp_v1_2_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_nysebonds_quote_pdp_v1_2_a, buffer(), omi_nyse_nysebonds_quote_pdp_v1_2_a.description, "("..buffer:len().." Bytes)")
  return nyse_nysebonds_quote_pdp_v1_2_a.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
nyse_nysebonds_quote_pdp_v1_2_a.packet.fingerprint = function(buffer)
  if buffer:len() < 4 then
    return false
  end

  local msg_type = buffer(2, 2):uint()

  -- Sequence Number Reset Message
  if msg_type == 1 then
    return true
  end

  -- Heartbeat Message
  if msg_type == 2 then
    return true
  end

  -- Message Unavailable Message
  if msg_type == 5 then
    return true
  end

  -- Refresh Quote Message
  if msg_type == 23 then
    return true
  end

  -- Symbol Index Mapping Message
  if msg_type == 26 then
    return true
  end

  -- Quote Message
  if msg_type == 141 then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse NyseBonds Quote Pdp 1.2.a (Udp)
local function omi_nyse_nysebonds_quote_pdp_v1_2_a_udp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nysebonds_quote_pdp_v1_2_a.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nyse_nysebonds_quote_pdp_v1_2_a.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nysebonds_quote_pdp_v1_2_a
  omi_nyse_nysebonds_quote_pdp_v1_2_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse NyseBonds Quote Pdp 1.2.a
omi_nyse_nysebonds_quote_pdp_v1_2_a:register_heuristic("udp", omi_nyse_nysebonds_quote_pdp_v1_2_a_udp_acceptor_heuristic)

-- Register Nyse NyseBonds Quote Pdp 1.2.a for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_nyse_nysebonds_quote_pdp_v1_2_a)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.2.a
--   Date: Thursday, March 12, 2015
--   Specification: NYSE_Bonds_Quote_Client_Spec.pdf
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
