-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Tsx GlobalFx Gfx 1.0 Protocol
local omi_tmx_tsx_globalfx_gfx_v1_0 = Proto("Omi.Tmx.Tsx.GlobalFx.Gfx.v1.0", "Tmx Tsx GlobalFx Gfx 1.0")

-- Protocol table
local tmx_tsx_globalfx_gfx_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Tsx GlobalFx Gfx 1.0 Fields
omi_tmx_tsx_globalfx_gfx_v1_0.fields.bid_price = ProtoField.new("Bid Price", "tmx.tsx.globalfx.gfx.v1.0.bidprice", ftypes.STRING, nil, nil, nil, "Bid Price mantissa, which Bid Price Exponent scales. Zero for Tier Status Z")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.bid_price_exponent = ProtoField.new("Bid Price Exponent", "tmx.tsx.globalfx.gfx.v1.0.bidpriceexponent", ftypes.INT8, nil, nil, nil, "Power of ten the Bid Price mantissa is multiplied by, for example -5 for 0.00001")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.bid_price_mantissa = ProtoField.new("Bid Price Mantissa", "tmx.tsx.globalfx.gfx.v1.0.bidpricemantissa", ftypes.INT32, nil, nil, nil, "Bid Price mantissa, which Bid Price Exponent scales. Zero for Tier Status Z")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.currency_1 = ProtoField.new("Currency 1", "tmx.tsx.globalfx.gfx.v1.0.currency1", ftypes.STRING, nil, nil, nil, "Base currency")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.currency_2 = ProtoField.new("Currency 2", "tmx.tsx.globalfx.gfx.v1.0.currency2", ftypes.STRING, nil, nil, nil, "Counter currency")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.msg_type = ProtoField.new("Msg Type", "tmx.tsx.globalfx.gfx.v1.0.msgtype", ftypes.STRING, nil, nil, nil, "Identifies the datagram type")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.number_of_tiers = ProtoField.new("Number Of Tiers", "tmx.tsx.globalfx.gfx.v1.0.numberoftiers", ftypes.UINT8, nil, nil, nil, "Number of repeating groups following")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.offer_price = ProtoField.new("Offer Price", "tmx.tsx.globalfx.gfx.v1.0.offerprice", ftypes.STRING, nil, nil, nil, "Offer Price mantissa, which Offer Price Exponent scales. Zero for Tier Status Z")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.offer_price_exponent = ProtoField.new("Offer Price Exponent", "tmx.tsx.globalfx.gfx.v1.0.offerpriceexponent", ftypes.INT8, nil, nil, nil, "Power of ten the Offer Price mantissa is multiplied by")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.offer_price_mantissa = ProtoField.new("Offer Price Mantissa", "tmx.tsx.globalfx.gfx.v1.0.offerpricemantissa", ftypes.INT32, nil, nil, nil, "Offer Price mantissa, which Offer Price Exponent scales. Zero for Tier Status Z")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.price_terms = ProtoField.new("Price Terms", "tmx.tsx.globalfx.gfx.v1.0.priceterms", ftypes.STRING, nil, nil, nil, "Which currency the Tier Size is in and which way the prices are quoted. The section 3.3 example leaves it zero in every tier, though section 3 states only D and I")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "tmx.tsx.globalfx.gfx.v1.0.sequencenumber", ftypes.UINT32, nil, nil, nil, "Sequence Number within this Stream Id")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.size_tier = ProtoField.new("Size Tier", "tmx.tsx.globalfx.gfx.v1.0.sizetier", ftypes.STRING, nil, nil, nil, "Bid and offer reference prices at one pre-configured size tier")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.stream_id = ProtoField.new("Stream Id", "tmx.tsx.globalfx.gfx.v1.0.streamid", ftypes.UINT64, nil, nil, nil, "Stream Id, which changes when the sequence number resets")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.tier_size = ProtoField.new("Tier Size", "tmx.tsx.globalfx.gfx.v1.0.tiersize", ftypes.UINT32, nil, nil, nil, "Size Tier, not shifted")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.tier_status = ProtoField.new("Tier Status", "tmx.tsx.globalfx.gfx.v1.0.tierstatus", ftypes.STRING, nil, nil, nil, "Whether a reference price is available at this size tier")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.timestamp = ProtoField.new("Timestamp", "tmx.tsx.globalfx.gfx.v1.0.timestamp", ftypes.ABSOLUTE_TIME, nil, base.LOCAL, nil, "Time in microseconds since Jan 1, 1970")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.timestamp_utc = ProtoField.new("Timestamp", "tmx.tsx.globalfx.gfx.v1.0.timestamp.utc", ftypes.ABSOLUTE_TIME, nil, base.UTC, nil, "Time in microseconds since Jan 1, 1970")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.unused_1 = ProtoField.new("Unused 1", "tmx.tsx.globalfx.gfx.v1.0.unused1", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.unused_2 = ProtoField.new("Unused 2", "tmx.tsx.globalfx.gfx.v1.0.unused2", ftypes.BYTES, nil, nil, nil, "Reserved for future use")
omi_tmx_tsx_globalfx_gfx_v1_0.fields.valid_for_seconds = ProtoField.new("Valid For Seconds", "tmx.tsx.globalfx.gfx.v1.0.validforseconds", ftypes.UINT16, nil, nil, nil, "Time to live for the prices in this datagram, zero if periodic refresh is not enabled")

-- Tmx Tsx GlobalFx Gfx 1.0 Framing
omi_tmx_tsx_globalfx_gfx_v1_0.fields.packet = ProtoField.new("Packet", "tmx.tsx.globalfx.gfx.v1.0.packet", ftypes.STRING, nil, nil, nil, "Tmx Global Fx Udp packet")

-- Tmx Tsx GlobalFx 1.0 Application Messages
omi_tmx_tsx_globalfx_gfx_v1_0.fields.reference_price_fx_spot = ProtoField.new("Reference Price Fx Spot", "tmx.tsx.globalfx.gfx.v1.0.referencepricefxspot", ftypes.STRING, nil, nil, nil, "Reports a bid and offer reference price at each pre-configured size tier for a currency pair")

-- Tmx Tsx GlobalFx Gfx 1.0 Generated Fields
omi_tmx_tsx_globalfx_gfx_v1_0.fields.size_tier_index = ProtoField.new("Size Tier Index", "tmx.tsx.globalfx.gfx.v1.0.sizetierindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Tmx Tsx GlobalFx Gfx 1.0 Formatting
-----------------------------------------------------------------------

-- absolute time base
local absolute_time_base_enum = {
  { 1, "Local", 0 },
  { 2, "Utc", 1 }
}

-- 0=Local, 1=Utc
tmx_tsx_globalfx_gfx_v1_0.absolute_time_base = 0


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tmx Tsx GlobalFx Gfx 1.0 Element Dissection Options
show.structs = true
show.application_messages = true
show.indexes = true

-- Register Tmx Tsx GlobalFx Gfx 1.0 Show Options
omi_tmx_tsx_globalfx_gfx_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_tmx_tsx_globalfx_gfx_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_tmx_tsx_globalfx_gfx_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")

omi_tmx_tsx_globalfx_gfx_v1_0.prefs.absolute_time_base = Pref.enum("Absolute Time Base", 0, "Render absolute times in Utc or in the reader's local time", absolute_time_base_enum, false)

-- Handle changed preferences
function omi_tmx_tsx_globalfx_gfx_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_tmx_tsx_globalfx_gfx_v1_0.prefs.show_application_messages then
    show.application_messages = omi_tmx_tsx_globalfx_gfx_v1_0.prefs.show_application_messages
  end
  if show.structs ~= omi_tmx_tsx_globalfx_gfx_v1_0.prefs.show_structs then
    show.structs = omi_tmx_tsx_globalfx_gfx_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_tmx_tsx_globalfx_gfx_v1_0.prefs.show_indexes then
    show.indexes = omi_tmx_tsx_globalfx_gfx_v1_0.prefs.show_indexes
  end
  if tmx_tsx_globalfx_gfx_v1_0.absolute_time_base ~= omi_tmx_tsx_globalfx_gfx_v1_0.prefs.absolute_time_base then
    tmx_tsx_globalfx_gfx_v1_0.absolute_time_base = omi_tmx_tsx_globalfx_gfx_v1_0.prefs.absolute_time_base
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
-- Tmx Tsx GlobalFx Gfx 1.0 Fields
-----------------------------------------------------------------------

-- Bid Price Exponent
tmx_tsx_globalfx_gfx_v1_0.bid_price_exponent = {}

-- Size: Bid Price Exponent
tmx_tsx_globalfx_gfx_v1_0.bid_price_exponent.size = 1

-- Display: Bid Price Exponent
tmx_tsx_globalfx_gfx_v1_0.bid_price_exponent.display = function(value)
  return "Bid Price Exponent: "..value
end

-- Dissect: Bid Price Exponent
tmx_tsx_globalfx_gfx_v1_0.bid_price_exponent.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.bid_price_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_tsx_globalfx_gfx_v1_0.bid_price_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.bid_price_exponent, range, value, display)

  return offset + length, value
end

-- Bid Price Mantissa
tmx_tsx_globalfx_gfx_v1_0.bid_price_mantissa = {}

-- Size: Bid Price Mantissa
tmx_tsx_globalfx_gfx_v1_0.bid_price_mantissa.size = 4

-- Display: Bid Price Mantissa
tmx_tsx_globalfx_gfx_v1_0.bid_price_mantissa.display = function(value)
  return "Bid Price Mantissa: "..value
end

-- Dissect: Bid Price Mantissa
tmx_tsx_globalfx_gfx_v1_0.bid_price_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.bid_price_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_tsx_globalfx_gfx_v1_0.bid_price_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.bid_price_mantissa, range, value, display)

  return offset + length, value
end

-- Currency 1
tmx_tsx_globalfx_gfx_v1_0.currency_1 = {}

-- Size: Currency 1
tmx_tsx_globalfx_gfx_v1_0.currency_1.size = 3

-- Display: Currency 1
tmx_tsx_globalfx_gfx_v1_0.currency_1.labels = {
  ["AUD"] = "Currency 1: Aud (AUD)",
  ["CAD"] = "Currency 1: Cad (CAD)",
  ["CHF"] = "Currency 1: Chf (CHF)",
  ["CNH"] = "Currency 1: Cnh (CNH)",
  ["CZK"] = "Currency 1: Czk (CZK)",
  ["DKK"] = "Currency 1: Dkk (DKK)",
  ["EUR"] = "Currency 1: Eur (EUR)",
  ["GBP"] = "Currency 1: Gbp (GBP)",
  ["HKD"] = "Currency 1: Hkd (HKD)",
  ["HUF"] = "Currency 1: Huf (HUF)",
  ["ILS"] = "Currency 1: Ils (ILS)",
  ["JPY"] = "Currency 1: Jpy (JPY)",
  ["MXN"] = "Currency 1: Mxn (MXN)",
  ["NOK"] = "Currency 1: Nok (NOK)",
  ["NZD"] = "Currency 1: Nzd (NZD)",
  ["PLN"] = "Currency 1: Pln (PLN)",
  ["RON"] = "Currency 1: Ron (RON)",
  ["RUB"] = "Currency 1: Rub (RUB)",
  ["SEK"] = "Currency 1: Sek (SEK)",
  ["SGD"] = "Currency 1: Sgd (SGD)",
  ["THB"] = "Currency 1: Thb (THB)",
  ["TRY"] = "Currency 1: Try (TRY)",
  ["USD"] = "Currency 1: Usd (USD)",
  ["ZAR"] = "Currency 1: Zar (ZAR)",
}

tmx_tsx_globalfx_gfx_v1_0.currency_1.display = function(value)
  return tmx_tsx_globalfx_gfx_v1_0.currency_1.labels[value] or "Currency 1: Unknown("..value..")"
end

-- Dissect: Currency 1
tmx_tsx_globalfx_gfx_v1_0.currency_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.currency_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_globalfx_gfx_v1_0.currency_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.currency_1, range, value, display)

  return offset + length, value
end

-- Currency 2
tmx_tsx_globalfx_gfx_v1_0.currency_2 = {}

-- Size: Currency 2
tmx_tsx_globalfx_gfx_v1_0.currency_2.size = 3

-- Display: Currency 2
tmx_tsx_globalfx_gfx_v1_0.currency_2.labels = {
  ["AUD"] = "Currency 2: Aud (AUD)",
  ["CAD"] = "Currency 2: Cad (CAD)",
  ["CHF"] = "Currency 2: Chf (CHF)",
  ["CNH"] = "Currency 2: Cnh (CNH)",
  ["CZK"] = "Currency 2: Czk (CZK)",
  ["DKK"] = "Currency 2: Dkk (DKK)",
  ["EUR"] = "Currency 2: Eur (EUR)",
  ["GBP"] = "Currency 2: Gbp (GBP)",
  ["HKD"] = "Currency 2: Hkd (HKD)",
  ["HUF"] = "Currency 2: Huf (HUF)",
  ["ILS"] = "Currency 2: Ils (ILS)",
  ["JPY"] = "Currency 2: Jpy (JPY)",
  ["MXN"] = "Currency 2: Mxn (MXN)",
  ["NOK"] = "Currency 2: Nok (NOK)",
  ["NZD"] = "Currency 2: Nzd (NZD)",
  ["PLN"] = "Currency 2: Pln (PLN)",
  ["RON"] = "Currency 2: Ron (RON)",
  ["RUB"] = "Currency 2: Rub (RUB)",
  ["SEK"] = "Currency 2: Sek (SEK)",
  ["SGD"] = "Currency 2: Sgd (SGD)",
  ["THB"] = "Currency 2: Thb (THB)",
  ["TRY"] = "Currency 2: Try (TRY)",
  ["USD"] = "Currency 2: Usd (USD)",
  ["ZAR"] = "Currency 2: Zar (ZAR)",
}

tmx_tsx_globalfx_gfx_v1_0.currency_2.display = function(value)
  return tmx_tsx_globalfx_gfx_v1_0.currency_2.labels[value] or "Currency 2: Unknown("..value..")"
end

-- Dissect: Currency 2
tmx_tsx_globalfx_gfx_v1_0.currency_2.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.currency_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_tsx_globalfx_gfx_v1_0.currency_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.currency_2, range, value, display)

  return offset + length, value
end

-- Msg Type
tmx_tsx_globalfx_gfx_v1_0.msg_type = {}

-- Size: Msg Type
tmx_tsx_globalfx_gfx_v1_0.msg_type.size = 1

-- Display: Msg Type
tmx_tsx_globalfx_gfx_v1_0.msg_type.display = function(value)
  return "Msg Type: "..value
end

-- Dissect: Msg Type
tmx_tsx_globalfx_gfx_v1_0.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.msg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_globalfx_gfx_v1_0.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Number Of Tiers
tmx_tsx_globalfx_gfx_v1_0.number_of_tiers = {}

-- Size: Number Of Tiers
tmx_tsx_globalfx_gfx_v1_0.number_of_tiers.size = 1

-- Display: Number Of Tiers
tmx_tsx_globalfx_gfx_v1_0.number_of_tiers.display = function(value)
  return "Number Of Tiers: "..value
end

-- Dissect: Number Of Tiers
tmx_tsx_globalfx_gfx_v1_0.number_of_tiers.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.number_of_tiers.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_globalfx_gfx_v1_0.number_of_tiers.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.number_of_tiers, range, value, display)

  return offset + length, value
end

-- Offer Price Exponent
tmx_tsx_globalfx_gfx_v1_0.offer_price_exponent = {}

-- Size: Offer Price Exponent
tmx_tsx_globalfx_gfx_v1_0.offer_price_exponent.size = 1

-- Display: Offer Price Exponent
tmx_tsx_globalfx_gfx_v1_0.offer_price_exponent.display = function(value)
  return "Offer Price Exponent: "..value
end

-- Dissect: Offer Price Exponent
tmx_tsx_globalfx_gfx_v1_0.offer_price_exponent.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.offer_price_exponent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_tsx_globalfx_gfx_v1_0.offer_price_exponent.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.offer_price_exponent, range, value, display)

  return offset + length, value
end

-- Offer Price Mantissa
tmx_tsx_globalfx_gfx_v1_0.offer_price_mantissa = {}

-- Size: Offer Price Mantissa
tmx_tsx_globalfx_gfx_v1_0.offer_price_mantissa.size = 4

-- Display: Offer Price Mantissa
tmx_tsx_globalfx_gfx_v1_0.offer_price_mantissa.display = function(value)
  return "Offer Price Mantissa: "..value
end

-- Dissect: Offer Price Mantissa
tmx_tsx_globalfx_gfx_v1_0.offer_price_mantissa.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.offer_price_mantissa.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_tsx_globalfx_gfx_v1_0.offer_price_mantissa.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.offer_price_mantissa, range, value, display)

  return offset + length, value
end

-- Price Terms
tmx_tsx_globalfx_gfx_v1_0.price_terms = {}

-- Size: Price Terms
tmx_tsx_globalfx_gfx_v1_0.price_terms.size = 1

-- Display: Price Terms
tmx_tsx_globalfx_gfx_v1_0.price_terms.labels = {
  ["D"] = "Price Terms: Direct Terms (D)",
  ["I"] = "Price Terms: Inverted Terms (I)",
}

tmx_tsx_globalfx_gfx_v1_0.price_terms.display = function(value)
  return tmx_tsx_globalfx_gfx_v1_0.price_terms.labels[value] or "Price Terms: Unknown("..value..")"
end

-- Dissect: Price Terms
tmx_tsx_globalfx_gfx_v1_0.price_terms.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.price_terms.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_globalfx_gfx_v1_0.price_terms.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.price_terms, range, value, display)

  return offset + length, value
end

-- Sequence Number
tmx_tsx_globalfx_gfx_v1_0.sequence_number = {}

-- Size: Sequence Number
tmx_tsx_globalfx_gfx_v1_0.sequence_number.size = 4

-- Display: Sequence Number
tmx_tsx_globalfx_gfx_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tmx_tsx_globalfx_gfx_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_globalfx_gfx_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Id
tmx_tsx_globalfx_gfx_v1_0.stream_id = {}

-- Size: Stream Id
tmx_tsx_globalfx_gfx_v1_0.stream_id.size = 8

-- Display: Stream Id
tmx_tsx_globalfx_gfx_v1_0.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
tmx_tsx_globalfx_gfx_v1_0.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.stream_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = tmx_tsx_globalfx_gfx_v1_0.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Tier Size
tmx_tsx_globalfx_gfx_v1_0.tier_size = {}

-- Size: Tier Size
tmx_tsx_globalfx_gfx_v1_0.tier_size.size = 4

-- Display: Tier Size
tmx_tsx_globalfx_gfx_v1_0.tier_size.display = function(value)
  return "Tier Size: "..value
end

-- Dissect: Tier Size
tmx_tsx_globalfx_gfx_v1_0.tier_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.tier_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_globalfx_gfx_v1_0.tier_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.tier_size, range, value, display)

  return offset + length, value
end

-- Tier Status
tmx_tsx_globalfx_gfx_v1_0.tier_status = {}

-- Size: Tier Status
tmx_tsx_globalfx_gfx_v1_0.tier_status.size = 1

-- Display: Tier Status
tmx_tsx_globalfx_gfx_v1_0.tier_status.labels = {
  ["R"] = "Tier Status: Valid Reference Price (R)",
  ["Z"] = "Tier Status: Price Not Available (Z)",
}

tmx_tsx_globalfx_gfx_v1_0.tier_status.display = function(value)
  return tmx_tsx_globalfx_gfx_v1_0.tier_status.labels[value] or "Tier Status: Unknown("..value..")"
end

-- Dissect: Tier Status
tmx_tsx_globalfx_gfx_v1_0.tier_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.tier_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_tsx_globalfx_gfx_v1_0.tier_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.tier_status, range, value, display)

  return offset + length, value
end

-- Timestamp
tmx_tsx_globalfx_gfx_v1_0.timestamp = {}

-- Size: Timestamp
tmx_tsx_globalfx_gfx_v1_0.timestamp.size = 8

-- Dissect: Timestamp
tmx_tsx_globalfx_gfx_v1_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()

  -- A field's absolute time base is fixed when it is declared, so the
  -- protocol declares one per base and the preference picks between them
  local field = omi_tmx_tsx_globalfx_gfx_v1_0.fields.timestamp
  if tmx_tsx_globalfx_gfx_v1_0.absolute_time_base == 1 then field = omi_tmx_tsx_globalfx_gfx_v1_0.fields.timestamp_utc end

  local seconds = (value / UInt64(1000000)):tonumber()
  local nanos = (value % UInt64(1000000)):tonumber() * 1000
  parent:add(field, range, NSTime.new(seconds, nanos))

  return offset + length, value
end

-- Unused 1
tmx_tsx_globalfx_gfx_v1_0.unused_1 = {}

-- Size: Unused 1
tmx_tsx_globalfx_gfx_v1_0.unused_1.size = 1

-- Display: Unused 1
tmx_tsx_globalfx_gfx_v1_0.unused_1.display = function(value)
  return "Unused 1: "..value
end

-- Dissect: Unused 1
tmx_tsx_globalfx_gfx_v1_0.unused_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.unused_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_tsx_globalfx_gfx_v1_0.unused_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.unused_1, range, value, display)

  return offset + length, value
end

-- Unused 2
tmx_tsx_globalfx_gfx_v1_0.unused_2 = {}

-- Size: Unused 2
tmx_tsx_globalfx_gfx_v1_0.unused_2.size = 1

-- Display: Unused 2
tmx_tsx_globalfx_gfx_v1_0.unused_2.display = function(value)
  return "Unused 2: "..value
end

-- Dissect: Unused 2
tmx_tsx_globalfx_gfx_v1_0.unused_2.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.unused_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_tsx_globalfx_gfx_v1_0.unused_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.unused_2, range, value, display)

  return offset + length, value
end

-- Valid For Seconds
tmx_tsx_globalfx_gfx_v1_0.valid_for_seconds = {}

-- Size: Valid For Seconds
tmx_tsx_globalfx_gfx_v1_0.valid_for_seconds.size = 2

-- Display: Valid For Seconds
tmx_tsx_globalfx_gfx_v1_0.valid_for_seconds.display = function(value)
  return "Valid For Seconds: "..value
end

-- Dissect: Valid For Seconds
tmx_tsx_globalfx_gfx_v1_0.valid_for_seconds.dissect = function(buffer, offset, packet, parent)
  local length = tmx_tsx_globalfx_gfx_v1_0.valid_for_seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_tsx_globalfx_gfx_v1_0.valid_for_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.valid_for_seconds, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Tmx Tsx GlobalFx Gfx 1.0
-----------------------------------------------------------------------

-- Offer Price
tmx_tsx_globalfx_gfx_v1_0.offer_price = {}

-- Size: Offer Price
tmx_tsx_globalfx_gfx_v1_0.offer_price.size =
  tmx_tsx_globalfx_gfx_v1_0.offer_price_mantissa.size + 
  tmx_tsx_globalfx_gfx_v1_0.offer_price_exponent.size

-- Display: Offer Price
tmx_tsx_globalfx_gfx_v1_0.offer_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Offer Price
tmx_tsx_globalfx_gfx_v1_0.offer_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Offer Price Mantissa: INT32
  index, offer_price_mantissa = tmx_tsx_globalfx_gfx_v1_0.offer_price_mantissa.dissect(buffer, index, packet, parent)

  -- Offer Price Exponent: INT8
  index, offer_price_exponent = tmx_tsx_globalfx_gfx_v1_0.offer_price_exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Offer Price
tmx_tsx_globalfx_gfx_v1_0.offer_price.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.offer_price, buffer(offset, 0))
    local index = tmx_tsx_globalfx_gfx_v1_0.offer_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_globalfx_gfx_v1_0.offer_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_globalfx_gfx_v1_0.offer_price.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price
tmx_tsx_globalfx_gfx_v1_0.bid_price = {}

-- Size: Bid Price
tmx_tsx_globalfx_gfx_v1_0.bid_price.size =
  tmx_tsx_globalfx_gfx_v1_0.bid_price_mantissa.size + 
  tmx_tsx_globalfx_gfx_v1_0.bid_price_exponent.size

-- Display: Bid Price
tmx_tsx_globalfx_gfx_v1_0.bid_price.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid Price
tmx_tsx_globalfx_gfx_v1_0.bid_price.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Price Mantissa: INT32
  index, bid_price_mantissa = tmx_tsx_globalfx_gfx_v1_0.bid_price_mantissa.dissect(buffer, index, packet, parent)

  -- Bid Price Exponent: INT8
  index, bid_price_exponent = tmx_tsx_globalfx_gfx_v1_0.bid_price_exponent.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid Price
tmx_tsx_globalfx_gfx_v1_0.bid_price.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.bid_price, buffer(offset, 0))
    local index = tmx_tsx_globalfx_gfx_v1_0.bid_price.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_globalfx_gfx_v1_0.bid_price.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_globalfx_gfx_v1_0.bid_price.fields(buffer, offset, packet, parent)
  end
end

-- Size Tier
tmx_tsx_globalfx_gfx_v1_0.size_tier = {}

-- Size: Size Tier
tmx_tsx_globalfx_gfx_v1_0.size_tier.size =
  tmx_tsx_globalfx_gfx_v1_0.tier_status.size + 
  tmx_tsx_globalfx_gfx_v1_0.tier_size.size + 
  tmx_tsx_globalfx_gfx_v1_0.price_terms.size + 
  tmx_tsx_globalfx_gfx_v1_0.bid_price.size + 
  tmx_tsx_globalfx_gfx_v1_0.offer_price.size

-- Display: Size Tier
tmx_tsx_globalfx_gfx_v1_0.size_tier.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Size Tier
tmx_tsx_globalfx_gfx_v1_0.size_tier.fields = function(buffer, offset, packet, parent, size_tier_index)
  local index = offset

  -- Implicit Size Tier Index
  if size_tier_index ~= nil and show.indexes then
    local iteration = parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.size_tier_index, size_tier_index)
    iteration:set_generated()
  end

  -- Tier Status: CHAR1
  index, tier_status = tmx_tsx_globalfx_gfx_v1_0.tier_status.dissect(buffer, index, packet, parent)

  -- Tier Size: UINT32
  index, tier_size = tmx_tsx_globalfx_gfx_v1_0.tier_size.dissect(buffer, index, packet, parent)

  -- Price Terms: CHAR1
  index, price_terms = tmx_tsx_globalfx_gfx_v1_0.price_terms.dissect(buffer, index, packet, parent)

  -- Bid Price: Struct of 2 fields
  index, bid_price = tmx_tsx_globalfx_gfx_v1_0.bid_price.dissect(buffer, index, packet, parent)

  -- Offer Price: Struct of 2 fields
  index, offer_price = tmx_tsx_globalfx_gfx_v1_0.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Size Tier
tmx_tsx_globalfx_gfx_v1_0.size_tier.dissect = function(buffer, offset, packet, parent, size_tier_index)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.size_tier, buffer(offset, 0))
    local index = tmx_tsx_globalfx_gfx_v1_0.size_tier.fields(buffer, offset, packet, parent, size_tier_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_globalfx_gfx_v1_0.size_tier.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_globalfx_gfx_v1_0.size_tier.fields(buffer, offset, packet, parent, size_tier_index)
  end
end

-- Reference Price Fx Spot
tmx_tsx_globalfx_gfx_v1_0.reference_price_fx_spot = {}

-- Calculate size of: Reference Price Fx Spot
tmx_tsx_globalfx_gfx_v1_0.reference_price_fx_spot.size = function(buffer, offset)
  local index = 0

  index = index + tmx_tsx_globalfx_gfx_v1_0.unused_1.size

  index = index + tmx_tsx_globalfx_gfx_v1_0.currency_1.size

  index = index + tmx_tsx_globalfx_gfx_v1_0.currency_2.size

  index = index + tmx_tsx_globalfx_gfx_v1_0.timestamp.size

  index = index + tmx_tsx_globalfx_gfx_v1_0.stream_id.size

  index = index + tmx_tsx_globalfx_gfx_v1_0.sequence_number.size

  index = index + tmx_tsx_globalfx_gfx_v1_0.valid_for_seconds.size

  index = index + tmx_tsx_globalfx_gfx_v1_0.unused_2.size

  index = index + tmx_tsx_globalfx_gfx_v1_0.number_of_tiers.size

  -- Calculate field size from count
  local size_tier_count = buffer(offset + index - 1, 1):uint()
  index = index + size_tier_count * 16

  return index
end

-- Display: Reference Price Fx Spot
tmx_tsx_globalfx_gfx_v1_0.reference_price_fx_spot.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reference Price Fx Spot
tmx_tsx_globalfx_gfx_v1_0.reference_price_fx_spot.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unused 1: 1 Byte
  index, unused_1 = tmx_tsx_globalfx_gfx_v1_0.unused_1.dissect(buffer, index, packet, parent)

  -- Currency 1: CHAR3
  index, currency_1 = tmx_tsx_globalfx_gfx_v1_0.currency_1.dissect(buffer, index, packet, parent)

  -- Currency 2: CHAR3
  index, currency_2 = tmx_tsx_globalfx_gfx_v1_0.currency_2.dissect(buffer, index, packet, parent)

  -- Timestamp: UINT64
  index, timestamp = tmx_tsx_globalfx_gfx_v1_0.timestamp.dissect(buffer, index, packet, parent)

  -- Stream Id: UINT64
  index, stream_id = tmx_tsx_globalfx_gfx_v1_0.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: UINT32
  index, sequence_number = tmx_tsx_globalfx_gfx_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Valid For Seconds: UINT16
  index, valid_for_seconds = tmx_tsx_globalfx_gfx_v1_0.valid_for_seconds.dissect(buffer, index, packet, parent)

  -- Unused 2: 1 Byte
  index, unused_2 = tmx_tsx_globalfx_gfx_v1_0.unused_2.dissect(buffer, index, packet, parent)

  -- Number Of Tiers: UINT8
  index, number_of_tiers = tmx_tsx_globalfx_gfx_v1_0.number_of_tiers.dissect(buffer, index, packet, parent)

  -- Repeating: Size Tier
  for size_tier_index = 1, number_of_tiers do
    index, size_tier = tmx_tsx_globalfx_gfx_v1_0.size_tier.dissect(buffer, index, packet, parent, size_tier_index)
  end

  return index
end

-- Dissect: Reference Price Fx Spot
tmx_tsx_globalfx_gfx_v1_0.reference_price_fx_spot.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_tsx_globalfx_gfx_v1_0.fields.reference_price_fx_spot, buffer(offset, 0))
    local index = tmx_tsx_globalfx_gfx_v1_0.reference_price_fx_spot.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_tsx_globalfx_gfx_v1_0.reference_price_fx_spot.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_tsx_globalfx_gfx_v1_0.reference_price_fx_spot.fields(buffer, offset, packet, parent)
  end
end

-- Datagram Body
tmx_tsx_globalfx_gfx_v1_0.datagram_body = {}

-- Dissect: Datagram Body
tmx_tsx_globalfx_gfx_v1_0.datagram_body.dispatch = {
  ["#"] = tmx_tsx_globalfx_gfx_v1_0.reference_price_fx_spot.dissect,
}

tmx_tsx_globalfx_gfx_v1_0.datagram_body.dissect = function(buffer, offset, packet, parent, msg_type)
  local dissect = tmx_tsx_globalfx_gfx_v1_0.datagram_body.dispatch[msg_type]
  if dissect then
    return dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
tmx_tsx_globalfx_gfx_v1_0.packet = {}

-- Verify required size of Udp packet
tmx_tsx_globalfx_gfx_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= tmx_tsx_globalfx_gfx_v1_0.msg_type.size
end

-- Dissect Packet
tmx_tsx_globalfx_gfx_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Msg Type: CHAR1
  index, msg_type = tmx_tsx_globalfx_gfx_v1_0.msg_type.dissect(buffer, index, packet, parent)

  -- Datagram Body: Runtime Type with 1 branches
  index = tmx_tsx_globalfx_gfx_v1_0.datagram_body.dissect(buffer, index, packet, parent, msg_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_tsx_globalfx_gfx_v1_0.init()
end

-- Dissector for Tmx Tsx GlobalFx Gfx 1.0
function omi_tmx_tsx_globalfx_gfx_v1_0.dissector(buffer, packet, parent)
  -- Set protocol name
  packet.cols.protocol = omi_tmx_tsx_globalfx_gfx_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_tsx_globalfx_gfx_v1_0, buffer(), omi_tmx_tsx_globalfx_gfx_v1_0.description, "("..buffer:len().." Bytes)")
  return tmx_tsx_globalfx_gfx_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Packet: would its message dispatch accept this frame?
tmx_tsx_globalfx_gfx_v1_0.packet.fingerprint = function(buffer)
  if buffer:len() < 1 then
    return false
  end

  local msg_type = buffer(0, 1):string()

  -- Reference Price Fx Spot
  if msg_type == "#" then
    return true
  end

  return false
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Tmx Tsx GlobalFx Gfx 1.0 (Udp)
local function omi_tmx_tsx_globalfx_gfx_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_tsx_globalfx_gfx_v1_0.packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this udp packet message dispatch
  if not tmx_tsx_globalfx_gfx_v1_0.packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_tsx_globalfx_gfx_v1_0
  omi_tmx_tsx_globalfx_gfx_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx Tsx GlobalFx Gfx 1.0
omi_tmx_tsx_globalfx_gfx_v1_0:register_heuristic("udp", omi_tmx_tsx_globalfx_gfx_v1_0_udp_heuristic)

-- Register Tmx Tsx GlobalFx Gfx 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_tmx_tsx_globalfx_gfx_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: TMX Group
--   Version: 1.0
--   Date: Friday, May 20, 2016
--   Specification: TMX Global FX (1).pdf
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
